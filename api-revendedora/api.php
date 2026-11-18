<?php
header('Access-Control-Allow-Origin: http://localhost:4200');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Headers: Content-Type');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Content-Type: application/json; charset=utf-8');
ini_set('display_errors', '0');
date_default_timezone_set('America/Sao_Paulo');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    exit;
}
session_start();
$pdo = null;

// Fecha a transação junto com a resposta, para não salvar uma ação sem seu log.
function responder($sucesso, $mensagem = '', $dados = null, $status = 200, $extras = []) {
    global $pdo;
    if ($pdo && $pdo->inTransaction()) {
        if ($sucesso) {
            $pdo->commit();
        } else {
            $pdo->rollBack();
        }
    }
    http_response_code($status);
    echo json_encode(array_merge(['sucesso' => $sucesso, 'mensagem' => $mensagem, 'dados' => $dados], $extras), JSON_UNESCAPED_UNICODE);
    exit;
}

function consultar($sql, $parametros = []) {
    global $pdo;
    $st = $pdo->prepare($sql);
    $st->execute($parametros);
    return $st->fetchAll(PDO::FETCH_ASSOC);
}

// Não guarda senhas nem hashes nos logs.
function registrarLog($categoria, $acao, $resumo, $detalhes = [], $usuario = null) {
    global $pdo;
    $st = $pdo->prepare('INSERT INTO tb_log_atividade (usuario, categoria, acao, resumo, detalhes, ip, navegador) VALUES (?, ?, ?, ?, ?, ?, ?)');
    $st->execute([
        $usuario ?? ($_SESSION['usuario'] ?? 'visitante'), $categoria, $acao, $resumo,
        json_encode($detalhes, JSON_UNESCAPED_UNICODE),
        $_SERVER['REMOTE_ADDR'] ?? '', mb_substr($_SERVER['HTTP_USER_AGENT'] ?? '', 0, 255)
    ]);
}

// Guarda também o que será apagado pela cascata.
function dependencias($tipo, $id) {
    $filtros = [
        'marca' => ['m.id_marca = ?', [$id]],
        'modelo' => ['m.id_modelo = ?', [$id]],
        'carro' => ['c.id_carro = ?', [$id]],
        'usuario' => ['m.login = ?', [$id]]
    ];
    [$filtro, $parametros] = $filtros[$tipo];
    $modelos = $tipo === 'carro' ? [] : consultar("SELECT m.* FROM tb_modelo m WHERE $filtro", $parametros);
    $carros = consultar("SELECT c.*, m.login AS proprietario FROM tb_carro c JOIN tb_modelo m ON m.id_modelo = c.id_modelo WHERE $filtro", $parametros);
    $vinculos = consultar("SELECT ca.*, c.placa, a.nome AS acessorio FROM tb_carro_acessorio ca JOIN tb_carro c ON c.id_carro = ca.id_carro JOIN tb_modelo m ON m.id_modelo = c.id_modelo JOIN tb_acessorio a ON a.id_acessorio = ca.id_acessorio WHERE $filtro", $parametros);
    return ['modelos' => $modelos, 'carros' => $carros, 'vinculos' => $vinculos];
}

$acao = $_GET['acao'] ?? '';
$dados = json_decode(file_get_contents('php://input'), true);
if (!is_array($dados)) {
    $dados = [];
}
$publicas = ['sessao', 'login', 'logout', 'cadastro', 'candidato'];
$leituras = ['sessao', 'marcas', 'modelos', 'carros', 'acessorios', 'carros_acessorios', 'historico', 'logs', 'usuarios', 'candidaturas'];
$escritas = ['login', 'cadastro', 'candidato', 'marca', 'modelo', 'acessorio', 'carro', 'vincular', 'alterar_senha', 'excluir_marca', 'excluir_modelo', 'excluir_carro', 'excluir_acessorio', 'excluir_vinculo', 'excluir_usuario', 'excluir_candidatura'];
if (!in_array($acao, array_merge($leituras, $escritas, ['logout']), true)) {
    responder(false, 'Ação inválida.', null, 400);
}
if (in_array($acao, $escritas, true) && $_SERVER['REQUEST_METHOD'] !== 'POST') {
    responder(false, 'Use POST para esta ação.', null, 405);
}

try {
    require __DIR__ . '/conexao.php';
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    $pdo->exec("SET time_zone = '-03:00'");

    // Confere a conta no banco a cada pedido. Uma conta excluída perde o acesso.
    $conta = null;
    if (isset($_SESSION['usuario'])) {
        $conta = consultar('SELECT login, perfil FROM tb_usuario WHERE login = ?', [$_SESSION['usuario']])[0] ?? null;
        if (!$conta) {
            $_SESSION = [];
        }
    }
    $admin = $conta && $conta['perfil'] === 'admin';
    if (!in_array($acao, $publicas, true) && !$conta) {
        responder(false, 'Sua sessão terminou. Faça login novamente.', null, 401);
    }
    if (in_array($acao, ['usuarios', 'excluir_usuario', 'candidaturas', 'excluir_candidatura'], true) && !$admin) {
        responder(false, 'Esta função é exclusiva do administrador.', null, 403);
    }

    // Toda exclusão exige as credenciais de quem está logado.
    if (str_starts_with($acao, 'excluir_')) {
        $loginConfirma = trim($dados['login_confirmacao'] ?? $dados['login'] ?? '');
        $senhaConfirma = $dados['senha_confirmacao'] ?? $dados['senha'] ?? '';
        $hash = consultar('SELECT senha FROM tb_usuario WHERE login = ?', [$conta['login']])[0]['senha'];
        if (mb_strtolower($loginConfirma) !== mb_strtolower($conta['login']) || !password_verify($senhaConfirma, $hash)) {
            responder(false, 'Login ou senha incorretos. Nada foi apagado.');
        }
    }
    if (in_array($acao, $escritas, true) || $acao === 'logout') {
        $pdo->beginTransaction();
    }

    if ($acao === 'sessao') {
        responder(true, '', null, 200, ['usuario' => $conta['login'] ?? null, 'admin' => (bool) $admin]);
    }
    elseif ($acao === 'login') {
        $login = trim($dados['login'] ?? '');
        $senha = $dados['senha'] ?? '';
        $usuarioBanco = consultar('SELECT * FROM tb_usuario WHERE login = ?', [$login])[0] ?? null;
        if (!$usuarioBanco || !password_verify($senha, $usuarioBanco['senha'])) {
            registrarLog('conta', 'login_recusado', 'Tentativa de login recusada.', ['login_informado' => mb_substr($login, 0, 50)], 'visitante');
            $pdo->commit();
            responder(false, 'Login ou senha incorretos.');
        }
        $st = $pdo->prepare('INSERT INTO tb_log_login (login) VALUES (?)');
        $st->execute([$usuarioBanco['login']]);
        registrarLog('conta', 'login', 'Entrada no sistema.', [], $usuarioBanco['login']);
        $pdo->commit();
        session_regenerate_id(true);
        $_SESSION['usuario'] = $usuarioBanco['login'];
        responder(true, '', null, 200, ['usuario' => $usuarioBanco['login'], 'admin' => $usuarioBanco['perfil'] === 'admin']);
    }
    elseif ($acao === 'logout') {
        if ($conta) {
            registrarLog('conta', 'logout', 'Saída do sistema.');
        }
        $pdo->commit();
        $_SESSION = [];
        session_destroy();
        responder(true);
    }
    elseif ($acao === 'cadastro') {
        $login = trim($dados['login'] ?? '');
        $senha = $dados['senha'] ?? '';
        if ($login === '' || $senha === '') responder(false, 'Preencha o login e a senha.');
        if (mb_strlen($login) > 50 || strlen($senha) > 10) responder(false, 'Use até 50 caracteres no login e até 10 na senha.');
        if (mb_strtolower($login) === 'admin') responder(false, 'Este login é reservado ao administrador.');
        if (consultar('SELECT login FROM tb_usuario WHERE login = ?', [$login])) responder(false, 'Esse login já existe.');
        $st = $pdo->prepare('INSERT INTO tb_usuario (login, senha) VALUES (?, ?)');
        $st->execute([$login, password_hash($senha, PASSWORD_DEFAULT)]);
        registrarLog('conta', 'cadastro', 'Conta cadastrada.', ['login' => $login], $login);
        responder(true, 'Usuário cadastrado! Faça login.');
    }
    elseif ($acao === 'marcas') {
        responder(true, '', consultar('SELECT * FROM tb_marca ORDER BY nome'));
    }
    elseif ($acao === 'marca' || $acao === 'acessorio') {
        $nome = trim($dados['nome'] ?? '');
        $marca = $acao === 'marca';
        $tabela = $marca ? 'tb_marca' : 'tb_acessorio';
        $categoria = $marca ? 'marcas' : 'carros';
        if ($nome === '' || mb_strlen($nome) > 50) responder(false, 'Digite um nome com até 50 caracteres.');
        if (consultar("SELECT nome FROM $tabela WHERE nome = ?", [$nome])) responder(false, 'Esse nome já está cadastrado.');
        $st = $pdo->prepare("INSERT INTO $tabela (nome) VALUES (?)");
        $st->execute([$nome]);
        registrarLog($categoria, 'cadastro_' . $acao, ($marca ? 'Marca cadastrada: ' : 'Acessório cadastrado: ') . $nome, ['id' => $pdo->lastInsertId(), 'nome' => $nome]);
        responder(true, $marca ? 'Marca cadastrada!' : 'Acessório cadastrado!');
    }
    elseif ($acao === 'modelos') {
        $sql = 'SELECT m.id_modelo, m.nome AS modelo, ma.nome AS marca, m.login AS proprietario FROM tb_modelo m JOIN tb_marca ma ON ma.id_marca = m.id_marca';
        $parametros = [];
        if (!$admin) {
            $sql .= ' WHERE m.login = ?';
            $parametros[] = $conta['login'];
        }
        responder(true, '', consultar($sql . ' ORDER BY m.id_modelo DESC', $parametros));
    }
    elseif ($acao === 'modelo') {
        $modelo = trim($dados['modelo'] ?? '');
        $idMarca = $dados['id_marca'] ?? '';
        if ($modelo === '' || mb_strlen($modelo) > 50 || $idMarca === '') responder(false, 'Digite o modelo (até 50 caracteres) e escolha a marca.');
        if (!consultar('SELECT id_marca FROM tb_marca WHERE id_marca = ?', [$idMarca])) responder(false, 'Marca não encontrada.');
        if (consultar('SELECT id_modelo FROM tb_modelo WHERE nome = ? AND id_marca = ? AND login = ?', [$modelo, $idMarca, $conta['login']])) responder(false, 'Você já cadastrou esse modelo nessa marca.');
        $st = $pdo->prepare('INSERT INTO tb_modelo (nome, id_marca, login) VALUES (?, ?, ?)');
        $st->execute([$modelo, $idMarca, $conta['login']]);
        registrarLog('modelos', 'cadastro_modelo', 'Modelo cadastrado: ' . $modelo, ['id_modelo' => $pdo->lastInsertId(), 'nome' => $modelo, 'id_marca' => $idMarca, 'proprietario' => $conta['login']]);
        responder(true, 'Modelo cadastrado!');
    }
    elseif ($acao === 'excluir_marca' || $acao === 'excluir_modelo' || $acao === 'excluir_carro') {
        $tipo = substr($acao, 8);
        $tabela = 'tb_' . $tipo;
        $coluna = 'id_' . $tipo;
        $id = $dados[$coluna] ?? '';
        $registro = consultar("SELECT * FROM $tabela WHERE $coluna = ? FOR UPDATE", [$id])[0] ?? null;
        if (!$registro) responder(false, 'Cadastro não encontrado.');
        if ($tipo === 'modelo' && !$admin && $registro['login'] !== $conta['login']) responder(false, 'Você não pode excluir este modelo.', null, 403);
        if ($tipo === 'carro' && !$admin && !consultar('SELECT id_modelo FROM tb_modelo WHERE id_modelo = ? AND login = ?', [$registro['id_modelo'], $conta['login']])) responder(false, 'Você não pode excluir este carro.', null, 403);
        $detalhes = ['registro' => $registro, 'cascata' => dependencias($tipo, $id)];
        $st = $pdo->prepare("DELETE FROM $tabela WHERE $coluna = ?");
        $st->execute([$id]);
        $categoria = ['marca' => 'marcas', 'modelo' => 'modelos', 'carro' => 'carros'][$tipo];
        $nome = $registro['nome'] ?? $registro['placa'];
        registrarLog($categoria, $acao, ucfirst($tipo) . ' excluído(a): ' . $nome, $detalhes);
        if ($categoria !== 'modelos' && count($detalhes['cascata']['modelos']) > 0) {
            registrarLog('modelos', 'exclusao_em_cascata', 'Modelos removidos por exclusão de ' . $tipo . '.', $detalhes);
        }
        if ($categoria !== 'carros' && count($detalhes['cascata']['carros']) > 0) {
            registrarLog('carros', 'exclusao_em_cascata', 'Carros e vínculos removidos por exclusão de ' . $tipo . '.', $detalhes);
        }
        responder(true, 'Cadastro apagado!');
    }
    elseif ($acao === 'alterar_senha') {
        $atual = $dados['senha_atual'] ?? '';
        $nova = $dados['nova_senha'] ?? '';
        $hash = consultar('SELECT senha FROM tb_usuario WHERE login = ?', [$conta['login']])[0]['senha'];
        if (!password_verify($atual, $hash)) responder(false, 'A senha atual está incorreta.');
        if ($nova === '' || strlen($nova) > 10) responder(false, 'A nova senha deve ter de 1 a 10 caracteres.');
        if ($nova !== ($dados['confirmacao'] ?? '')) responder(false, 'A confirmação da nova senha não confere.');
        $st = $pdo->prepare('UPDATE tb_usuario SET senha = ? WHERE login = ?');
        $st->execute([password_hash($nova, PASSWORD_DEFAULT), $conta['login']]);
        registrarLog('conta', 'alterar_senha', 'Senha alterada.');
        responder(true, 'Senha alterada com sucesso.');
    }
    elseif ($acao === 'historico') {
        $sql = "SELECT login AS usuario, DATE_FORMAT(data_hora_login, '%d/%m/%Y') AS data, DATE_FORMAT(data_hora_login, '%H:%i:%s') AS hora FROM tb_log_login";
        $parametros = [];
        if (!$admin) { $sql .= ' WHERE login = ?'; $parametros[] = $conta['login']; }
        responder(true, '', consultar($sql . ' ORDER BY data_hora_login DESC, id_log DESC', $parametros));
    }
    elseif ($acao === 'candidato') {
        $nome = trim($dados['nome'] ?? '');
        $email = trim($dados['email'] ?? '');
        $celular = trim($dados['celular'] ?? '');
        $cidade = trim($dados['cidade'] ?? '');
        $estado = $dados['estado'] ?? '';
        $cargo = $dados['cargo'] ?? '';
        $linkedin = trim($dados['linkedin'] ?? '');
        $estados = ['AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO'];
        $cargos = ['Vendedor de resenha','Gerente da resenha','Atendente de resenha','Mecânico da resenha','Lavador de resenha','Administrativo da resenha','Outra resenha'];
        if (mb_strlen($nome) < 3 || mb_strlen($nome) > 50 || !preg_match('/^[\p{L} \'-]+$/u', $nome)) responder(false, 'Digite seu nome completo (só letras, até 50 caracteres).');
        if (!filter_var($email, FILTER_VALIDATE_EMAIL) || strlen($email) > 50) responder(false, 'Digite um e-mail válido (até 50 caracteres).');
        if (!preg_match('/^[1-9][0-9]9[0-9]{8}$/', $celular)) responder(false, 'Digite o celular com DDD, só números (11 dígitos).');
        if (mb_strlen($cidade) < 2 || mb_strlen($cidade) > 20 || !preg_match('/^[\p{L} \'-]+$/u', $cidade)) responder(false, 'Digite a cidade (só letras, até 20 caracteres).');
        if (!in_array($estado, $estados, true)) responder(false, 'Escolha o estado.');
        if (!in_array($cargo, $cargos, true)) responder(false, 'Escolha o cargo pretendido.');
        if ($linkedin !== '' && (strlen($linkedin) > 30 || stripos($linkedin, 'linkedin.com/') === false)) responder(false, 'O link do LinkedIn precisa ser do linkedin.com e ter até 30 caracteres.');
        if (consultar('SELECT id_candidato FROM tb_trabalheconosco WHERE email = ?', [$email])) responder(false, 'Já recebemos uma candidatura com esse e-mail.');
        $st = $pdo->prepare('INSERT INTO tb_trabalheconosco (nome, email, celular, cidade, estado, cargo_pretendido, link_linkdin) VALUES (?, ?, ?, ?, ?, ?, ?)');
        $st->execute([$nome, $email, $celular, $cidade, $estado, $cargo, $linkedin ?: null]);
        registrarLog('candidaturas', 'candidatura', 'Candidatura recebida.', ['id_candidato' => $pdo->lastInsertId(), 'nome' => $nome, 'email' => $email, 'cargo' => $cargo], 'visitante');
        responder(true, 'Candidatura enviada! Obrigado, entraremos em contato.');
    }
    elseif ($acao === 'acessorios') {
        responder(true, '', consultar('SELECT * FROM tb_acessorio ORDER BY nome'));
    }
    elseif ($acao === 'excluir_acessorio') {
        $id = $dados['id_acessorio'] ?? '';
        $registro = consultar('SELECT * FROM tb_acessorio WHERE id_acessorio = ? FOR UPDATE', [$id])[0] ?? null;
        if (!$registro) responder(false, 'Acessório não encontrado.');
        $vinculos = consultar('SELECT * FROM tb_carro_acessorio WHERE id_acessorio = ?', [$id]);
        $st = $pdo->prepare('DELETE FROM tb_acessorio WHERE id_acessorio = ?');
        $st->execute([$id]);
        registrarLog('carros', $acao, 'Acessório excluído: ' . $registro['nome'], ['registro' => $registro, 'vinculos_removidos' => $vinculos]);
        responder(true, 'Acessório apagado!');
    }
    elseif ($acao === 'carros') {
        $sql = 'SELECT c.*, m.nome AS modelo, ma.nome AS marca, m.login AS proprietario FROM tb_carro c JOIN tb_modelo m ON m.id_modelo = c.id_modelo JOIN tb_marca ma ON ma.id_marca = m.id_marca';
        $parametros = [];
        if (!$admin) { $sql .= ' WHERE m.login = ?'; $parametros[] = $conta['login']; }
        $carros = consultar($sql . ' ORDER BY c.id_carro DESC', $parametros);
        foreach ($carros as &$carro) { $carro['valor'] = number_format($carro['valor'], 2, ',', '.'); }
        responder(true, '', $carros);
    }
    elseif ($acao === 'carro') {
        $placa = strtoupper(trim($dados['placa'] ?? ''));
        $chassi = strtoupper(trim($dados['chassi'] ?? ''));
        $cor = trim($dados['cor'] ?? '');
        $ano = trim($dados['ano'] ?? '');
        $valor = str_replace(',', '.', trim($dados['valor'] ?? ''));
        $km = trim($dados['quilometragem'] ?? '');
        $situacao = $dados['situacao'] ?? '';
        $idModelo = $dados['id_modelo'] ?? '';
        if (!preg_match('/^[A-Z0-9]{7}$/', $placa)) responder(false, 'A placa precisa ter 7 letras ou números.');
        if (!preg_match('/^[A-Z0-9]{5,30}$/', $chassi)) responder(false, 'O chassi precisa ter de 5 a 30 letras ou números.');
        if ($idModelo === '') responder(false, 'Escolha o modelo.');
        if (mb_strlen($cor) < 2 || mb_strlen($cor) > 30 || !preg_match('/^[\p{L} ]+$/u', $cor)) responder(false, 'Digite a cor (só letras, até 30 caracteres).');
        if (!preg_match('/^[0-9]{4}$/', $ano) || $ano < 1900 || $ano > date('Y') + 1) responder(false, 'Digite um ano válido, de 1900 até ' . (date('Y') + 1) . '.');
        if (!preg_match('/^[0-9]+(\.[0-9]{1,2})?$/', $valor) || $valor <= 0 || $valor > 99999999) responder(false, 'Digite um valor maior que zero (ex: 35000,50).');
        if (!preg_match('/^[0-9]{1,7}$/', $km)) responder(false, 'Digite a quilometragem com até 7 números inteiros (0 ou mais).');
        if (!in_array($situacao, ['D', 'V'], true)) responder(false, 'Escolha a situação do carro.');
        $modelo = consultar('SELECT * FROM tb_modelo WHERE id_modelo = ?', [$idModelo])[0] ?? null;
        if (!$modelo || (!$admin && $modelo['login'] !== $conta['login'])) responder(false, 'Modelo não encontrado.');
        if (consultar('SELECT id_carro FROM tb_carro WHERE placa = ?', [$placa])) responder(false, 'Já existe um carro com essa placa.');
        if (consultar('SELECT id_carro FROM tb_carro WHERE chassi = ?', [$chassi])) responder(false, 'Já existe um carro com esse chassi.');
        $st = $pdo->prepare('INSERT INTO tb_carro (placa, chassi, cor, ano, valor, quilometragem, situacao, id_modelo) VALUES (?, ?, ?, ?, ?, ?, ?, ?)');
        $st->execute([$placa, $chassi, $cor, $ano, $valor, $km, $situacao, $idModelo]);
        $registro = consultar('SELECT * FROM tb_carro WHERE id_carro = ?', [$pdo->lastInsertId()])[0];
        registrarLog('carros', 'cadastro_carro', 'Carro cadastrado: ' . $placa, ['registro' => $registro, 'proprietario' => $modelo['login']]);
        responder(true, 'Carro cadastrado!');
    }
    elseif ($acao === 'carros_acessorios') {
        $sql = 'SELECT c.id_carro, c.placa, a.id_acessorio, a.nome AS acessorio FROM tb_carro_acessorio ca INNER JOIN tb_carro c ON c.id_carro = ca.id_carro INNER JOIN tb_acessorio a ON a.id_acessorio = ca.id_acessorio INNER JOIN tb_modelo m ON m.id_modelo = c.id_modelo';
        $parametros = [];
        if (!$admin) { $sql .= ' WHERE m.login = ?'; $parametros[] = $conta['login']; }
        responder(true, '', consultar($sql . ' ORDER BY c.placa, a.nome', $parametros));
    }
    elseif ($acao === 'vincular' || $acao === 'excluir_vinculo') {
        $idCarro = $dados['id_carro'] ?? '';
        $idAcessorio = $dados['id_acessorio'] ?? '';
        $carro = consultar('SELECT c.placa, m.login FROM tb_carro c JOIN tb_modelo m ON m.id_modelo = c.id_modelo WHERE c.id_carro = ?', [$idCarro])[0] ?? null;
        if (!$carro || (!$admin && $carro['login'] !== $conta['login'])) responder(false, 'Carro não encontrado.');
        $acessorio = consultar('SELECT nome FROM tb_acessorio WHERE id_acessorio = ?', [$idAcessorio])[0] ?? null;
        if (!$acessorio) responder(false, 'Acessório não encontrado.');
        $existe = consultar('SELECT * FROM tb_carro_acessorio WHERE id_carro = ? AND id_acessorio = ?', [$idCarro, $idAcessorio]);
        if ($acao === 'vincular' && $existe) responder(false, 'Esse carro já tem esse acessório.');
        if ($acao === 'excluir_vinculo' && !$existe) responder(false, 'Vínculo não encontrado.');
        $sql = $acao === 'vincular' ? 'INSERT INTO tb_carro_acessorio (id_carro, id_acessorio) VALUES (?, ?)' : 'DELETE FROM tb_carro_acessorio WHERE id_carro = ? AND id_acessorio = ?';
        $st = $pdo->prepare($sql);
        $st->execute([$idCarro, $idAcessorio]);
        $resumo = ($acao === 'vincular' ? 'Acessório colocado no carro: ' : 'Acessório retirado do carro: ') . $carro['placa'];
        registrarLog('carros', $acao, $resumo, ['id_carro' => $idCarro, 'id_acessorio' => $idAcessorio, 'acessorio' => $acessorio['nome'], 'proprietario' => $carro['login']]);
        responder(true, $acao === 'vincular' ? 'Acessório colocado no carro!' : 'Acessório retirado do carro!');
    }
    elseif ($acao === 'logs') {
        $categoria = $_GET['categoria'] ?? '';
        if (!in_array($categoria, ['modelos', 'marcas', 'carros', 'geral'], true)) responder(false, 'Log inválido.', null, 400);
        if ($categoria === 'geral' && !$admin) responder(false, 'O log geral é exclusivo do administrador.', null, 403);
        $colunas = 'id_log, usuario, categoria, acao, resumo, data_hora';
        if ($admin) $colunas .= ', detalhes, ip, navegador';
        $sql = "SELECT $colunas FROM tb_log_atividade WHERE 1 = 1";
        $parametros = [];
        if ($categoria !== 'geral') { $sql .= ' AND categoria = ?'; $parametros[] = $categoria; }
        if (!$admin) { $sql .= ' AND usuario = ?'; $parametros[] = $conta['login']; }
        responder(true, '', consultar($sql . ' ORDER BY id_log DESC', $parametros));
    }
    elseif ($acao === 'usuarios') {
        responder(true, '', consultar('SELECT login, senha AS senha_hash, perfil FROM tb_usuario ORDER BY login'));
    }
    elseif ($acao === 'excluir_usuario') {
        $login = trim($dados['usuario'] ?? '');
        $alvo = consultar('SELECT login, perfil FROM tb_usuario WHERE login = ? FOR UPDATE', [$login])[0] ?? null;
        if (!$alvo) responder(false, 'Usuário não encontrado.');
        if ($alvo['login'] === $conta['login'] || $alvo['perfil'] === 'admin') responder(false, 'A conta do administrador não pode ser excluída.');
        $detalhes = ['usuario' => $alvo, 'cascata' => dependencias('usuario', $alvo['login']), 'acessos_anteriores' => consultar('SELECT id_log, login, data_hora_login FROM tb_log_login WHERE login = ?', [$alvo['login']])];
        $st = $pdo->prepare('DELETE FROM tb_modelo WHERE login = ?');
        $st->execute([$alvo['login']]);
        $st = $pdo->prepare('DELETE FROM tb_log_login WHERE login = ?');
        $st->execute([$alvo['login']]);
        $st = $pdo->prepare('DELETE FROM tb_usuario WHERE login = ?');
        $st->execute([$alvo['login']]);
        registrarLog('conta', $acao, 'Usuário excluído: ' . $alvo['login'], $detalhes);
        if (count($detalhes['cascata']['modelos']) > 0) {
            registrarLog('modelos', 'exclusao_em_cascata', 'Modelos removidos por exclusão de usuário.', $detalhes);
        }
        if (count($detalhes['cascata']['carros']) > 0) {
            registrarLog('carros', 'exclusao_em_cascata', 'Carros e vínculos removidos por exclusão de usuário.', $detalhes);
        }
        responder(true, 'Usuário excluído. Os modelos, carros e vínculos dele também foram apagados.');
    }
    elseif ($acao === 'candidaturas') {
        responder(true, '', consultar('SELECT * FROM tb_trabalheconosco ORDER BY id_candidato DESC'));
    }
    elseif ($acao === 'excluir_candidatura') {
        $id = $dados['id_candidato'] ?? '';
        $registro = consultar('SELECT * FROM tb_trabalheconosco WHERE id_candidato = ? FOR UPDATE', [$id])[0] ?? null;
        if (!$registro) responder(false, 'Candidatura não encontrada.');
        $st = $pdo->prepare('DELETE FROM tb_trabalheconosco WHERE id_candidato = ?');
        $st->execute([$id]);
        registrarLog('candidaturas', $acao, 'Candidatura excluída.', ['registro' => $registro]);
        responder(true, 'Candidatura apagada!');
    }
} catch (Throwable $e) {
    error_log('Revendedora [' . $acao . ']: ' . $e->getMessage());
    $codigo = $e instanceof PDOException ? ($e->errorInfo[1] ?? 0) : 0;
    $mensagem = 'Erro interno na API. Consulte o log de erros do Apache.';
    if ($e instanceof PDOException) {
        $mensagem = 'Não foi possível acessar o banco. Confira se o MySQL está ligado e revise o conexao.php (casa: 3306; Etec: 3307).';
        if (in_array($codigo, [1054, 1146, 1406], true)) $mensagem = 'O banco precisa ser atualizado. Execute atualizar_banco.sql no MySQL Workbench, sem apagar os dados.';
        if ($codigo === 1062) $mensagem = 'Já existe um cadastro com esses dados.';
        if ($codigo === 1452) $mensagem = 'O cadastro relacionado não existe mais. Atualize a página.';
    }
    responder(false, $mensagem, null, 500);
}
