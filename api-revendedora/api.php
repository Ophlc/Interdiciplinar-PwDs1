<?php
// Em produção o Angular usa o proxy da Vercel no mesmo domínio.
// Para acesso direto no desenvolvimento, permita apenas a origem configurada.
$origemPermitida = getenv('APP_ORIGIN') ?: 'http://localhost:4200';
if (($_SERVER['HTTP_ORIGIN'] ?? '') === $origemPermitida) {
    header('Access-Control-Allow-Origin: ' . $origemPermitida);
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Allow-Headers: Content-Type');
    header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
    header('Vary: Origin');
}
header('Content-Type: application/json; charset=utf-8');
header('Cache-Control: private, no-store');

// Antes do POST o navegador manda um OPTIONS
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    exit;
}

session_start(['cookie_httponly' => true, 'cookie_samesite' => 'Lax', 'use_strict_mode' => true]);

// Pega aquele json que o Angular mandou
$dados = json_decode(file_get_contents('php://input'), true);
if (!is_array($dados)) {
    $dados = [];
}

$acao = $_GET['acao'] ?? '';

// Essas ações só vai funcionar se o usuário estiver já logado
$precisaLogin = ['marcas', 'marca', 'modelos', 'modelo', 'excluir_marca', 'excluir_modelo', 'alterar_senha', 'historico',
    'acessorios', 'acessorio', 'excluir_acessorio', 'carros', 'carro', 'excluir_carro', 'carros_acessorios', 'vincular', 'excluir_vinculo'];
if (in_array($acao, $precisaLogin) && !isset($_SESSION['usuario'])) {
    http_response_code(401);
    echo json_encode(['sucesso' => false, 'mensagem' => 'Faça o login.']);
    exit;
}

try {
    require 'conexao.php';

    // Ve se tem alguém logado
    if ($acao == 'sessao') {
        echo json_encode(['sucesso' => true, 'usuario' => $_SESSION['usuario'] ?? null]);
    }

    // O login
    elseif ($acao == 'login') {
        $login = $dados['login'] ?? '';
        $senha = $dados['senha'] ?? '';

        $st = $pdo->prepare('SELECT * FROM tb_usuario WHERE login = ?');
        $st->execute([$login]);
        $usuarioBanco = $st->fetch();

        // password_verify compara a senha
        if ($usuarioBanco && password_verify($senha, $usuarioBanco['senha'])) {
            session_regenerate_id(true);
            $_SESSION['usuario'] = $usuarioBanco['login'];

            // guarda no log a data e a hora desse login
            $st = $pdo->prepare('INSERT INTO tb_log_login (login) VALUES (?)');
            $st->execute([$usuarioBanco['login']]);

            echo json_encode(['sucesso' => true, 'usuario' => $usuarioBanco['login']]);
        } else {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Login ou senha incorretos.']);
        }
    }

    // Meter o pé
    elseif ($acao == 'logout') {
        $_SESSION = [];
        setcookie(session_name(), '', ['expires' => time() - 3600, 'path' => '/', 'httponly' => true, 'samesite' => 'Lax']);
        session_destroy();
        echo json_encode(['sucesso' => true]);
    }

    // Cadastrar o usuário
    elseif ($acao == 'cadastro') {
        $login = trim($dados['login'] ?? '');
        $senha = $dados['senha'] ?? '';

        // Vê se ja tem login
        $st = $pdo->prepare('SELECT * FROM tb_usuario WHERE login = ?');
        $st->execute([$login]);

        if ($login == '' || $senha == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Preencha o login e a senha.']);
        } elseif ($st->fetch()) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Esse login já existe.']);
        } else {
            $senhaCriptografada = password_hash($senha, PASSWORD_DEFAULT);

            $st = $pdo->prepare('INSERT INTO tb_usuario (login, senha) VALUES (?, ?)');
            $st->execute([$login, $senhaCriptografada]);
            echo json_encode(['sucesso' => true, 'mensagem' => 'Usuário cadastrado! Faça login.']);
        }
    }

    //Marcas do SELECT
    elseif ($acao == 'marcas') {
        $marcas = $pdo->query('SELECT * FROM tb_marca ORDER BY nome')->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode(['sucesso' => true, 'dados' => $marcas]);
    }

    //Cadastrar marca
    elseif ($acao == 'marca') {
        $nome = trim($dados['nome'] ?? '');

        if ($nome == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite o nome da marca.']);
        } elseif (mb_strlen($nome) > 50) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'O nome da marca pode ter no máximo 50 letras.']);
        } else {
            //LOWER deixa tudo minúsculo, então Fiat é fiat
            $st = $pdo->prepare('SELECT * FROM tb_marca WHERE LOWER(nome) = LOWER(?)');
            $st->execute([$nome]);

            if ($st->fetch()) {
                echo json_encode(['sucesso' => false, 'mensagem' => 'Essa marca já existe.']);
            } else {
                $st = $pdo->prepare('INSERT INTO tb_marca (nome) VALUES (?)');
                $st->execute([$nome]);
                echo json_encode(['sucesso' => true, 'mensagem' => 'Marca cadastrada!']);
            }
        }
    }

    // Tabela que fica em baixo
    elseif ($acao == 'modelos') {
        $st = $pdo->prepare(
            'SELECT tb_modelo.id_modelo, tb_modelo.nome AS modelo, tb_marca.nome AS marca
             FROM tb_modelo
             JOIN tb_marca ON tb_marca.id_marca = tb_modelo.id_marca
             WHERE tb_modelo.login = ?
             ORDER BY tb_modelo.id_modelo DESC'
        );
        $st->execute([$_SESSION['usuario']]);
        echo json_encode(['sucesso' => true, 'dados' => $st->fetchAll(PDO::FETCH_ASSOC)]);
    }

    //Salva modelo login
    elseif ($acao == 'modelo') {
        $modelo = trim($dados['modelo'] ?? '');
        $id_marca = $dados['id_marca'] ?? '';

        if ($modelo == '' || $id_marca == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite o modelo e escolha a marca.']);
        } else {
            //VÊ se o cara já colocou o carro e deixa td minúsculo
            $st = $pdo->prepare('SELECT * FROM tb_modelo WHERE LOWER(nome) = LOWER(?) AND id_marca = ? AND login = ?');
            $st->execute([$modelo, $id_marca, $_SESSION['usuario']]);

            if ($st->fetch()) {
                echo json_encode(['sucesso' => false, 'mensagem' => 'Você já cadastrou esse modelo nessa marca.']);
            } else {
                $st = $pdo->prepare('INSERT INTO tb_modelo (nome, id_marca, login) VALUES (?, ?, ?)');
                $st->execute([$modelo, $id_marca, $_SESSION['usuario']]);
                echo json_encode(['sucesso' => true, 'mensagem' => 'Modelo cadastrado!']);
            }
        }
    }

    // Apaga uma marca por causa do CASCADE
    elseif ($acao == 'excluir_marca') {
        $id_marca = $dados['id_marca'] ?? '';
        $login = $dados['login'] ?? '';
        $senha = $dados['senha'] ?? '';

        $st = $pdo->prepare('SELECT senha FROM tb_usuario WHERE login = ?');
        $st->execute([$_SESSION['usuario']]);
        $usuarioBanco = $st->fetch();

        // o login digitado tem que ser o de quem está logado
        if (mb_strtolower($login) != mb_strtolower($_SESSION['usuario']) || !$usuarioBanco || !password_verify($senha, $usuarioBanco['senha'])) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Login ou senha incorretos.']);
        } else {
            $st = $pdo->prepare('DELETE FROM tb_marca WHERE id_marca = ?');
            $st->execute([$id_marca]);
            echo json_encode(['sucesso' => true, 'mensagem' => 'Marca apagada!']);
        }
    }

    //Apagar modelo
    elseif ($acao == 'excluir_modelo') {
        $id_modelo = $dados['id_modelo'] ?? '';

        $st = $pdo->prepare('DELETE FROM tb_modelo WHERE id_modelo = ? AND login = ?');
        $st->execute([$id_modelo, $_SESSION['usuario']]);
        echo json_encode(['sucesso' => true, 'mensagem' => 'Modelo apagado!']);
    }

    //Trocar senha
    elseif ($acao == 'alterar_senha') {
        $senhaAtual = $dados['senha_atual'] ?? '';
        $novaSenha = $dados['nova_senha'] ?? '';
        $confirmacao = $dados['confirmacao'] ?? '';

        $st = $pdo->prepare('SELECT senha FROM tb_usuario WHERE login = ?');
        $st->execute([$_SESSION['usuario']]);
        $usuarioBanco = $st->fetch();

        if (!$usuarioBanco) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Usuário não encontrado.']);
        } elseif (!password_verify($senhaAtual, $usuarioBanco['senha'])) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'A senha atual está incorreta.']);
        } elseif ($novaSenha == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Informe a nova senha.']);
        } elseif (strlen($novaSenha) > 10) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'A nova senha deve ter no máximo 10 caracteres.']);
        } elseif ($novaSenha != $confirmacao) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'A confirmação da nova senha não confere.']);
        } else {
            $novoHash = password_hash($novaSenha, PASSWORD_DEFAULT);

            $st = $pdo->prepare('UPDATE tb_usuario SET senha = ? WHERE login = ?');
            $st->execute([$novoHash, $_SESSION['usuario']]);
            echo json_encode(['sucesso' => true, 'mensagem' => 'Senha alterada com sucesso.']);
        }
    }

    // Histórico de logins de quem está logado
    elseif ($acao == 'historico') {
        $st = $pdo->prepare(
            'SELECT data_hora_login
             FROM tb_log_login
             WHERE login = ?
             ORDER BY data_hora_login DESC, id_log DESC'
        );
        $st->execute([$_SESSION['usuario']]);

        $historico = [];
        foreach ($st->fetchAll(PDO::FETCH_ASSOC) as $registro) {
            $dataHora = strtotime($registro['data_hora_login']);
            $historico[] = [
                'data' => date('d/m/Y', $dataHora),
                'hora' => date('H:i:s', $dataHora)
            ];
        }
        echo json_encode(['sucesso' => true, 'dados' => $historico]);
    }

    // Formulário Trabalhe conosco
    elseif ($acao == 'candidato') {
        $nome = trim($dados['nome'] ?? '');
        $email = trim($dados['email'] ?? '');
        $celular = trim($dados['celular'] ?? '');
        $cidade = trim($dados['cidade'] ?? '');
        $estado = $dados['estado'] ?? '';
        $cargo = $dados['cargo'] ?? '';
        $linkedin = trim($dados['linkedin'] ?? '');

        $estados = ['AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'];
        $cargos = ['Vendedor de resenha', 'Gerente da resenha', 'Atendente de resenha', 'Mecânico da resenha', 'Lavador de resenha', 'Administrativo da resenha', 'Outra resenha'];

        // Vai conferindo campo por campo, o primeiro que estiver errado mostra a mensagem
        if (mb_strlen($nome) < 3 || mb_strlen($nome) > 50 || !preg_match('/^[\p{L} \'-]+$/u', $nome)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite seu nome completo (só letras, até 50 caracteres).']);
        } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL) || strlen($email) > 50) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite um e-mail válido (até 50 caracteres).']);
        } elseif (!preg_match('/^[1-9][0-9]9[0-9]{8}$/', $celular)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite o celular com DDD, só números (11 dígitos).']);
        } elseif (mb_strlen($cidade) < 2 || mb_strlen($cidade) > 20 || !preg_match('/^[\p{L} \'-]+$/u', $cidade)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite a cidade (só letras, até 20 caracteres).']);
        } elseif (!in_array($estado, $estados)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Escolha o estado.']);
        } elseif (!in_array($cargo, $cargos)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Escolha o cargo pretendido.']);
        } elseif ($linkedin != '' && (strlen($linkedin) > 30 || stripos($linkedin, 'linkedin.com/') === false)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'O link do LinkedIn precisa ser do linkedin.com e ter até 30 caracteres.']);
        } else {
            // vê se já tem uma inscrição já com esse e-mail
            $st = $pdo->prepare('SELECT * FROM tb_trabalheconosco WHERE LOWER(email) = LOWER(?)');
            $st->execute([$email]);

            if ($st->fetch()) {
                echo json_encode(['sucesso' => false, 'mensagem' => 'Já recebemos uma candidatura com esse e-mail.']);
            } else {
                // o link é opcional
                if ($linkedin == '') {
                    $linkedin = null;
                }

                $st = $pdo->prepare(
                    'INSERT INTO tb_trabalheconosco (nome, email, celular, cidade, estado, cargo_pretendido, link_linkdin)
                     VALUES (?, ?, ?, ?, ?, ?, ?)'
                );
                $st->execute([$nome, $email, $celular, $cidade, $estado, $cargo, $linkedin]);
                echo json_encode(['sucesso' => true, 'mensagem' => 'Candidatura enviada! Obrigado, entraremos em contato.']);
            }
        }
    }

    // Acessórios do SELECT e da tabela (ordem alfabética)
    elseif ($acao == 'acessorios') {
        $acessorios = $pdo->query('SELECT * FROM tb_acessorio ORDER BY nome')->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode(['sucesso' => true, 'dados' => $acessorios]);
    }

    // Cadastrar acessório
    elseif ($acao == 'acessorio') {
        $nome = trim($dados['nome'] ?? '');

        if ($nome == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite o nome do acessório.']);
        } elseif (mb_strlen($nome) > 50) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'O nome do acessório pode ter no máximo 50 letras.']);
        } else {
            // LOWER deixa tudo minúsculo
            $st = $pdo->prepare('SELECT * FROM tb_acessorio WHERE LOWER(nome) = LOWER(?)');
            $st->execute([$nome]);

            if ($st->fetch()) {
                echo json_encode(['sucesso' => false, 'mensagem' => 'Esse acessório já existe.']);
            } else {
                $st = $pdo->prepare('INSERT INTO tb_acessorio (nome) VALUES (?)');
                $st->execute([$nome]);
                echo json_encode(['sucesso' => true, 'mensagem' => 'Acessório cadastrado!']);
            }
        }
    }

    // Apagar acessório (ele sai dos carros por causa do CASCADE)
    elseif ($acao == 'excluir_acessorio') {
        $id_acessorio = $dados['id_acessorio'] ?? '';

        $st = $pdo->prepare('DELETE FROM tb_acessorio WHERE id_acessorio = ?');
        $st->execute([$id_acessorio]);
        echo json_encode(['sucesso' => true, 'mensagem' => 'Acessório apagado!']);
    }

    // Tabela dos carros (só os carros dos modelos de quem ja ta logado)
    elseif ($acao == 'carros') {
        $st = $pdo->prepare(
            'SELECT tb_carro.id_carro, tb_carro.placa, tb_carro.chassi, tb_carro.cor, tb_carro.ano,
                    tb_carro.valor, tb_carro.quilometragem, tb_carro.situacao,
                    tb_modelo.nome AS modelo, tb_marca.nome AS marca
             FROM tb_carro
             JOIN tb_modelo ON tb_modelo.id_modelo = tb_carro.id_modelo
             JOIN tb_marca ON tb_marca.id_marca = tb_modelo.id_marca
             WHERE tb_modelo.login = ?
             ORDER BY tb_carro.id_carro DESC'
        );
        $st->execute([$_SESSION['usuario']]);
        $carros = $st->fetchAll(PDO::FETCH_ASSOC);

        // deixa o valor do nosso jeito (35.000,50)
        foreach ($carros as $i => $carro) {
            $carros[$i]['valor'] = number_format($carro['valor'], 2, ',', '.');
        }
        echo json_encode(['sucesso' => true, 'dados' => $carros]);
    }

    // Cadastrar carro
    elseif ($acao == 'carro') {
        $placa = strtoupper(trim($dados['placa'] ?? ''));
        $chassi = strtoupper(trim($dados['chassi'] ?? ''));
        $cor = trim($dados['cor'] ?? '');
        $ano = trim($dados['ano'] ?? '');
        $valor = str_replace(',', '.', trim($dados['valor'] ?? ''));
        $km = trim($dados['quilometragem'] ?? '');
        $situacao = $dados['situacao'] ?? '';
        $id_modelo = $dados['id_modelo'] ?? '';

        $anoMaximo = date('Y') + 1;

        // Vai conferindo campo por campo, o primeiro que estiver errado mostra a mensagem
        if (!preg_match('/^[A-Z0-9]{7}$/', $placa)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'A placa precisa ter 7 letras ou números (ex: ABC1234).']);
        } elseif (!preg_match('/^[A-Z0-9]{5,30}$/', $chassi)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'O chassi precisa ter de 5 a 30 letras ou números.']);
        } elseif ($id_modelo == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Escolha o modelo.']);
        } elseif (mb_strlen($cor) < 2 || mb_strlen($cor) > 30 || !preg_match('/^[\p{L} ]+$/u', $cor)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite a cor (só letras, até 30 caracteres).']);
        } elseif (!preg_match('/^[0-9]{4}$/', $ano) || $ano < 1900 || $ano > $anoMaximo) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite um ano válido, com 4 números (de 1900 até ' . $anoMaximo . ').']);
        } elseif (!preg_match('/^[0-9]+(\.[0-9]{1,2})?$/', $valor) || $valor <= 0 || $valor > 99999999) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite um valor maior que zero (ex: 35000 ou 35000,50).']);
        } elseif (!preg_match('/^[0-9]{1,7}$/', $km)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite a quilometragem só com números inteiros (0 ou mais).']);
        } elseif (!in_array($situacao, ['D', 'V'])) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Escolha a situação do carro.']);
        } else {
            // o modelo tem que ser de quem está logado
            $st = $pdo->prepare('SELECT * FROM tb_modelo WHERE id_modelo = ? AND login = ?');
            $st->execute([$id_modelo, $_SESSION['usuario']]);

            if (!$st->fetch()) {
                echo json_encode(['sucesso' => false, 'mensagem' => 'Modelo não encontrado.']);
            } else {
                // placa e chassi não pd repetir
                $st = $pdo->prepare('SELECT * FROM tb_carro WHERE placa = ?');
                $st->execute([$placa]);
                $placaRepetida = $st->fetch();

                $st = $pdo->prepare('SELECT * FROM tb_carro WHERE chassi = ?');
                $st->execute([$chassi]);
                $chassiRepetido = $st->fetch();

                if ($placaRepetida) {
                    echo json_encode(['sucesso' => false, 'mensagem' => 'Já existe um carro com essa placa.']);
                } elseif ($chassiRepetido) {
                    echo json_encode(['sucesso' => false, 'mensagem' => 'Já existe um carro com esse chassi.']);
                } else {
                    $st = $pdo->prepare(
                        'INSERT INTO tb_carro (placa, chassi, cor, ano, valor, quilometragem, situacao, id_modelo)
                         VALUES (?, ?, ?, ?, ?, ?, ?, ?)'
                    );
                    $st->execute([$placa, $chassi, $cor, $ano, $valor, $km, $situacao, $id_modelo]);
                    echo json_encode(['sucesso' => true, 'mensagem' => 'Carro cadastrado!']);
                }
            }
        }
    }

    // Apagar carro (só se for de um modelo de quem está logado)
    elseif ($acao == 'excluir_carro') {
        $id_carro = $dados['id_carro'] ?? '';

        $st = $pdo->prepare(
            'DELETE FROM tb_carro
             WHERE id_carro = ?
             AND id_modelo IN (SELECT id_modelo FROM tb_modelo WHERE login = ?)'
        );
        $st->execute([$id_carro, $_SESSION['usuario']]);
        echo json_encode(['sucesso' => true, 'mensagem' => 'Carro apagado!']);
    }

    // Tabela dos acessórios de cada carro (INNER JOIN)
    elseif ($acao == 'carros_acessorios') {
        $st = $pdo->prepare(
            'SELECT tb_carro.id_carro, tb_carro.placa, tb_acessorio.id_acessorio, tb_acessorio.nome AS acessorio
             FROM tb_carro_acessorio
             INNER JOIN tb_carro ON tb_carro_acessorio.id_carro = tb_carro.id_carro
             INNER JOIN tb_acessorio ON tb_carro_acessorio.id_acessorio = tb_acessorio.id_acessorio
             INNER JOIN tb_modelo ON tb_modelo.id_modelo = tb_carro.id_modelo
             WHERE tb_modelo.login = ?
             ORDER BY tb_carro.placa, tb_acessorio.nome'
        );
        $st->execute([$_SESSION['usuario']]);
        echo json_encode(['sucesso' => true, 'dados' => $st->fetchAll(PDO::FETCH_ASSOC)]);
    }

    // Coloca um acessório em um carro
    elseif ($acao == 'vincular') {
        $id_carro = $dados['id_carro'] ?? '';
        $id_acessorio = $dados['id_acessorio'] ?? '';

        if ($id_carro == '' || $id_acessorio == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Escolha o carro e o acessório.']);
        } else {
            // o carro tem que ser de um modelo de quem está logado
            $st = $pdo->prepare(
                'SELECT tb_carro.id_carro
                 FROM tb_carro
                 JOIN tb_modelo ON tb_modelo.id_modelo = tb_carro.id_modelo
                 WHERE tb_carro.id_carro = ? AND tb_modelo.login = ?'
            );
            $st->execute([$id_carro, $_SESSION['usuario']]);

            if (!$st->fetch()) {
                echo json_encode(['sucesso' => false, 'mensagem' => 'Carro não encontrado.']);
            } else {
                // vê se o carro já tem esse acessório
                $st = $pdo->prepare('SELECT * FROM tb_carro_acessorio WHERE id_carro = ? AND id_acessorio = ?');
                $st->execute([$id_carro, $id_acessorio]);

                if ($st->fetch()) {
                    echo json_encode(['sucesso' => false, 'mensagem' => 'Esse carro já tem esse acessório.']);
                } else {
                    $st = $pdo->prepare('INSERT INTO tb_carro_acessorio (id_carro, id_acessorio) VALUES (?, ?)');
                    $st->execute([$id_carro, $id_acessorio]);
                    echo json_encode(['sucesso' => true, 'mensagem' => 'Acessório colocado no carro!']);
                }
            }
        }
    }

    // Tira um acessório de um carro (só se o carro for de quem está logado)
    elseif ($acao == 'excluir_vinculo') {
        $id_carro = $dados['id_carro'] ?? '';
        $id_acessorio = $dados['id_acessorio'] ?? '';

        $st = $pdo->prepare(
            'DELETE FROM tb_carro_acessorio
             WHERE id_carro = ? AND id_acessorio = ?
             AND id_carro IN (
                 SELECT tb_carro.id_carro
                 FROM tb_carro
                 JOIN tb_modelo ON tb_modelo.id_modelo = tb_carro.id_modelo
                 WHERE tb_modelo.login = ?
             )'
        );
        $st->execute([$id_carro, $id_acessorio, $_SESSION['usuario']]);
        echo json_encode(['sucesso' => true, 'mensagem' => 'Acessório tirado do carro!']);
    }

    else {
        http_response_code(400);
        echo json_encode(['sucesso' => false, 'mensagem' => 'Ação inválida.']);
    }

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['sucesso' => false, 'mensagem' => 'Erro ao acessar o banco de dados.']);
}
