<?php
// ============================================
// API da Revendedora de Carros
// Recebe as chamadas do Angular (HttpClient) e responde em JSON.
// Faz o papel que antes era dividido entre:
//   login.php, logout.php, cadastro_usuario.php e principal.php
// ============================================

// --------------------------------------------
// CORS: libera o Angular (localhost:4200)
// Allow-Credentials é necessário para o cookie da SESSÃO funcionar
// --------------------------------------------
$origem = $_SERVER['HTTP_ORIGIN'] ?? '';
if (preg_match('#^http://(localhost|127\.0\.0\.1)(:[0-9]+)?$#', $origem)) {
    header('Access-Control-Allow-Origin: ' . $origem);
    header('Access-Control-Allow-Credentials: true');
    header('Vary: Origin');
}
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');
header('Content-Type: application/json; charset=utf-8');

// Trata o preflight CORS
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

session_start();

// Função auxiliar: devolve o JSON e encerra
function responder($dados, $codigo = 200)
{
    http_response_code($codigo);
    echo json_encode($dados, JSON_UNESCAPED_UNICODE);
    exit;
}

// Função auxiliar: só deixa passar quem fez o login
function exigirLogin()
{
    if (!isset($_SESSION['usuario'])) {
        responder(['sucesso' => false, 'mensagem' => 'Faça o login.'], 401);
    }
}

// Lê o JSON enviado pelo Angular (nos POST)
$dados = json_decode(file_get_contents('php://input'), true);
if (!is_array($dados)) {
    $dados = [];
}

$acao = $_GET['acao'] ?? '';

try {
    require 'conexao.php';

    switch ($acao) {

        // ------------------------------------
        // Quem está logado? (equivale ao antigo "se já tem sessão, vai pra principal")
        // ------------------------------------
        case 'sessao':
            responder([
                'sucesso' => true,
                'usuario' => $_SESSION['usuario'] ?? null
            ]);
            break;

        // ------------------------------------
        // LOGIN (antigo login.php)
        // ------------------------------------
        case 'login':
            $login = (string) ($dados['login'] ?? '');
            $senha = (string) ($dados['senha'] ?? '');

            $st = $pdo->prepare('SELECT * FROM tb_usuario WHERE login = ? AND senha = ?');
            $st->execute([$login, $senha]);

            if ($st->fetch()) {
                $_SESSION['usuario'] = $login;
                responder(['sucesso' => true, 'usuario' => $login]);
            }
            responder(['sucesso' => false, 'mensagem' => 'Login ou senha incorretos.']);
            break;

        // ------------------------------------
        // LOGOUT (antigo logout.php)
        // ------------------------------------
        case 'logout':
            session_destroy();
            responder(['sucesso' => true]);
            break;

        // ------------------------------------
        // CADASTRO DE USUÁRIO (antigo cadastro_usuario.php)
        // ------------------------------------
        case 'cadastro':
            $login = trim((string) ($dados['login'] ?? ''));
            $senha = (string) ($dados['senha'] ?? '');

            // Analisa se o login existe
            $st = $pdo->prepare('SELECT * FROM tb_usuario WHERE login = ?');
            $st->execute([$login]);

            if ($login == '' || strlen($senha) < 1) {
                responder(['sucesso' => false, 'mensagem' => 'Preencha o login e a senha.']);
            } elseif ($st->fetch()) {
                responder(['sucesso' => false, 'mensagem' => 'Esse login já existe.']);
            }

            $st = $pdo->prepare('INSERT INTO tb_usuario (login, senha) VALUES (?, ?)');
            $st->execute([$login, $senha]);
            responder(['sucesso' => true, 'mensagem' => 'Usuário cadastrado! Faça login.']);
            break;

        // ------------------------------------
        // MARCAS para o select (antigo principal.php)
        // ------------------------------------
        case 'marcas':
            exigirLogin();
            $marcas = $pdo->query('SELECT * FROM tb_marca ORDER BY nome')->fetchAll(PDO::FETCH_ASSOC);
            responder(['sucesso' => true, 'dados' => $marcas]);
            break;

        // ------------------------------------
        // Tabela de baixo: só os modelos do usuário logado
        // ------------------------------------
        case 'modelos':
            exigirLogin();
            $st = $pdo->prepare(
                'SELECT tb_modelo.nome AS modelo, tb_marca.nome AS marca
                 FROM tb_modelo
                 JOIN tb_marca ON tb_marca.id_marca = tb_modelo.id_marca
                 WHERE tb_modelo.login = ?
                 ORDER BY tb_modelo.id_modelo DESC'
            );
            $st->execute([$_SESSION['usuario']]);
            responder(['sucesso' => true, 'dados' => $st->fetchAll(PDO::FETCH_ASSOC)]);
            break;

        // ------------------------------------
        // Grava o modelo com o login de quem está logado
        // ------------------------------------
        case 'modelo':
            exigirLogin();
            $modelo   = trim((string) ($dados['modelo'] ?? ''));
            $id_marca = (string) ($dados['id_marca'] ?? '');

            if ($modelo == '' || $id_marca == '') {
                responder(['sucesso' => false, 'mensagem' => 'Digite o modelo e escolha a marca.']);
            }

            $st = $pdo->prepare('INSERT INTO tb_modelo (nome, id_marca, login) VALUES (?, ?, ?)');
            $st->execute([$modelo, $id_marca, $_SESSION['usuario']]);
            responder(['sucesso' => true, 'mensagem' => 'Modelo cadastrado!']);
            break;

        default:
            responder(['sucesso' => false, 'mensagem' => 'Ação inválida.'], 400);
    }

} catch (PDOException $e) {
    responder(['sucesso' => false, 'mensagem' => 'Erro ao acessar o banco de dados.'], 500);
}
