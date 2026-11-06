<?php
/**
 * Carga única da API FIPE: Baixa TODAS as marcas, modelos e versões de carros e grava no banco.
 * (A FIPE entrega modelo e versão juntos; aqui eles são separados.)
 */
if (PHP_SAPI !== 'cli') {
    http_response_code(403);
    exit('Execute este arquivo pelo terminal.');
}

require __DIR__ . '/../config/conexao.php';
require __DIR__ . '/../config/api.php';
require __DIR__ . '/separar_modelo.php';

set_time_limit(0);

class LimiteDaApi extends RuntimeException
{
}

/** Consulta a API FIPE e devolve o JSON como array (3 tentativas em caso de falha de rede). */
function fipe_get(string $caminho): array
{
    if (!function_exists('curl_init')) {
        throw new RuntimeException('A extensão cURL do PHP está desligada (php.ini: extension=curl).');
    }

    $cabecalhos = ['Accept: application/json'];
    if (FIPE_TOKEN !== '') {
        $cabecalhos[] = 'X-Subscription-Token: ' . FIPE_TOKEN;
    }

    for ($tentativa = 1; $tentativa <= 3; $tentativa++) {
        $ch = curl_init(FIPE_URL . $caminho);
        curl_setopt_array($ch, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_TIMEOUT        => 30,
            CURLOPT_HTTPHEADER     => $cabecalhos,
        ]);

        // XAMPP no Windows costuma não ter o certificado HTTPS configurado
        if (!ini_get('curl.cainfo')) {
            foreach (['C:/xampp/apache/bin/curl-ca-bundle.crt', 'C:/xampp/php/extras/ssl/cacert.pem'] as $arquivo) {
                if (is_file($arquivo)) {
                    curl_setopt($ch, CURLOPT_CAINFO, $arquivo);
                    break;
                }
            }
        }

        $corpo  = curl_exec($ch);
        $erro   = curl_error($ch);
        $codigo = (int) curl_getinfo($ch, CURLINFO_HTTP_CODE);

        if ($codigo === 429) {
            throw new LimiteDaApi('Limite diário de consultas da API FIPE atingido.');
        }
        if ($corpo === false || $codigo >= 500) {
            if ($tentativa < 3) {
                sleep(2);
                continue;
            }
            throw new RuntimeException($corpo === false ? 'Falha ao acessar a API: ' . $erro : 'Erro HTTP ' . $codigo);
        }
        if ($codigo !== 200) {
            throw new RuntimeException('A API respondeu com erro HTTP ' . $codigo . '.');
        }

        $dados = json_decode($corpo, true);
        if (!is_array($dados)) {
            throw new RuntimeException('Resposta da API fora do formato esperado.');
        }
        return $dados;
    }
    throw new RuntimeException('Falha ao acessar a API.');
}

/** A FIPE escreve "GM - Chevrolet" e "VW - VolksWagen"; ficamos só com o nome da marca. */
function nome_marca(string $nome): string
{
    $partes = explode(' - ', $nome);
    return mb_substr(trim(end($partes)), 0, 50);
}

function sql_texto(string $texto): string
{
    return "'" . str_replace(['\\', "'"], ['\\\\', "\\'"], $texto) . "'";
}

$arquivoSql       = __DIR__ . '/fipe_marcas_modelos_versoes.sql';
$arquivoProgresso = __DIR__ . '/fipe_progresso_v2.json';

// marcas já concluídas em execuções anteriores
$concluidas = [];
if (is_file($arquivoProgresso)) {
    $lido = json_decode((string) file_get_contents($arquivoProgresso), true);
    if (is_array($lido)) {
        $concluidas = $lido;
    }
}
$retomando = $concluidas !== [] && is_file($arquivoSql);
if (!$retomando) {
    $concluidas = [];
}

echo "Buscando as marcas na API FIPE...\n";
try {
    $itens = fipe_get('/cars/brands');
} catch (RuntimeException $ex) {
    exit("ERRO: " . $ex->getMessage() . "\n");
}

$marcas = [];
foreach ($itens as $item) {
    if (isset($item['code'], $item['name'])) {
        $marcas[] = ['code' => (string) $item['code'], 'nome' => nome_marca($item['name'])];
    }
}
if (!$marcas) {
    exit("ERRO: a API não devolveu nenhuma marca.\n");
}

$pdo = db();

// marcas no banco
$insMarca = $pdo->prepare('INSERT IGNORE INTO tb_marca (nome) VALUES (:nome)');
foreach ($marcas as $m) {
    $insMarca->execute([':nome' => $m['nome']]);
}

// arquivo SQL
$sql = fopen($arquivoSql, $retomando ? 'ab' : 'wb');
if (!$retomando) {
    $unicas = [];
    foreach ($marcas as $m) {
        $unicas[mb_strtolower($m['nome'])] = sql_texto($m['nome']);
    }
    fwrite($sql, "-- Marcas e modelos de carros da API FIPE (gerado por importar_fipe.php)\n"
        . "USE bd_revendedoracarros;\nSET NAMES utf8mb4;\n\n"
        . "INSERT IGNORE INTO tb_marca (nome) VALUES\n  " . implode(",\n  ", array_map(fn($v) => "($v)", array_values($unicas))) . ";\n\n");
}

$selMarca   = $pdo->prepare('SELECT id_marca FROM tb_marca WHERE nome = :nome');
$insModelo  = $pdo->prepare('INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES (:nome, :marca)');
$selModelo  = $pdo->prepare('SELECT id_modelo FROM tb_modelo WHERE nome = :nome AND id_marca = :marca');
$insVersao  = $pdo->prepare('INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES (:nome, :modelo)');

$total = count($marcas);
$posicao = 0;
$parou = false;

foreach ($marcas as $m) {
    $posicao++;
    $rotulo = '[' . $posicao . '/' . $total . '] ' . $m['nome'];

    if (in_array($m['code'], $concluidas, true)) {
        echo $rotulo . ": já importada antes\n";
        continue;
    }

    try {
        $lista = fipe_get('/cars/brands/' . rawurlencode($m['code']) . '/models');
    } catch (LimiteDaApi $ex) {
        echo "\n" . $ex->getMessage() . " O progresso foi salvo: rode o comando de novo amanhã.\n";
        $parou = true;
        break;
    } catch (RuntimeException $ex) {
        echo $rotulo . ': ERRO - ' . $ex->getMessage() . "\n";
        continue;
    }

    if (isset($lista['modelos'])) {          // formato da versão antiga da API
        $lista = $lista['modelos'];
    }

    $brutos = [];
    foreach ($lista as $item) {
        if (isset($item['name'])) {
            $brutos[] = $item['name'];
        }
    }
    $porModelo = separar_modelos_versoes($brutos);

    $selMarca->execute([':nome' => $m['nome']]);
    $idMarca = (int) $selMarca->fetchColumn();

    $novosModelos = 0;
    $novasVersoes = 0;
    $qtdVersoes   = 0;
    $pdo->beginTransaction();
    foreach ($porModelo as $nomeModelo => $versoes) {
        $nomeModelo = (string) $nomeModelo;
        $insModelo->execute([':nome' => $nomeModelo, ':marca' => $idMarca]);
        $novosModelos += $insModelo->rowCount();

        $selModelo->execute([':nome' => $nomeModelo, ':marca' => $idMarca]);
        $idModelo = (int) $selModelo->fetchColumn();

        foreach ($versoes as $versao) {
            $insVersao->execute([':nome' => $versao, ':modelo' => $idModelo]);
            $novasVersoes += $insVersao->rowCount();
            $qtdVersoes++;
        }
    }
    $pdo->commit();

    // mesmo conteúdo no arquivo .sql
    if ($porModelo) {
        fwrite($sql, '-- ' . $m['nome'] . "\nSET @m = (SELECT id_marca FROM tb_marca WHERE nome = " . sql_texto($m['nome']) . ");\n");
        $linhasModelos = array_map(fn($n) => '(' . sql_texto((string) $n) . ', @m)', array_keys($porModelo));
        foreach (array_chunk($linhasModelos, 200) as $bloco) {
            fwrite($sql, "INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES\n  " . implode(",\n  ", $bloco) . ";\n");
        }
        foreach ($porModelo as $nomeModelo => $versoes) {
            fwrite($sql, 'SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = ' . sql_texto((string) $nomeModelo) . ");\n");
            foreach (array_chunk($versoes, 200) as $bloco) {
                $linhas = array_map(fn($v) => '(' . sql_texto($v) . ', @mo)', $bloco);
                fwrite($sql, "INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES\n  " . implode(",\n  ", $linhas) . ";\n");
            }
        }
        fwrite($sql, "\n");
    }

    $concluidas[] = $m['code'];
    file_put_contents($arquivoProgresso, json_encode($concluidas));

    echo $rotulo . ': ' . count($porModelo) . ' modelos e ' . $qtdVersoes . ' versões (novos: ' . $novosModelos . ' modelos, ' . $novasVersoes . " versões)\n";
    usleep(250000);
}
fclose($sql);

$qtdMarcas  = (int) $pdo->query('SELECT COUNT(*) FROM tb_marca')->fetchColumn();
$qtdModelos = (int) $pdo->query('SELECT COUNT(*) FROM tb_modelo')->fetchColumn();
$qtdVersoes = (int) $pdo->query('SELECT COUNT(*) FROM tb_versao')->fetchColumn();
echo "\n" . ($parou ? 'Importação INCOMPLETA.' : 'Importação concluída.') . " O banco tem agora $qtdMarcas marcas, $qtdModelos modelos e $qtdVersoes versões.\n";
echo "Arquivo para outros computadores: database/fipe_marcas_modelos_versoes.sql\n";
