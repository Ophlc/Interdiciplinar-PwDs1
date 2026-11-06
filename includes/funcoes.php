<?php
require_once __DIR__ . '/../config/conexao.php';

session_start();

function e($valor): string
{
    return htmlspecialchars((string) $valor, ENT_QUOTES, 'UTF-8');
}

function redirecionar(string $url)
{
    header('Location: ' . $url);
    exit;
}

function post(string $campo): string
{
    return trim((string) ($_POST[$campo] ?? ''));
}

/* Mensagens de sucesso e erro */
function flash(string $tipo, string $mensagem): void
{
    $_SESSION['flash'][] = ['tipo' => $tipo, 'msg' => $mensagem];
}

function pegar_flash(): array
{
    $f = $_SESSION['flash'] ?? [];
    unset($_SESSION['flash']);
    return $f;
}

/* Proteção dos formulários (CSRF) */
function csrf_campo(): string
{
    if (empty($_SESSION['csrf'])) {
        $_SESSION['csrf'] = bin2hex(random_bytes(32));
    }
    return '<input type="hidden" name="csrf" value="' . e($_SESSION['csrf']) . '">';
}

function csrf_validar(): void
{
    if (!hash_equals($_SESSION['csrf'] ?? '', $_POST['csrf'] ?? '')) {
        die('Sessão expirada. Volte e tente novamente.');
    }
}

/* Autenticação!!! */
function usuario_logado(): bool
{
    return !empty($_SESSION['usuario']);
}

function usuario_admin(): bool
{
    return usuario_logado() && mb_strtolower($_SESSION['usuario']) === 'admin';
}

/* Primeira tela depois do login*/
function pagina_inicial(): string
{
    return usuario_admin() ? 'usuarios.php' : 'cadastro_carro.php';
}

function exigir_login(): void
{
    if (!usuario_logado()) {
        redirecionar('login.php');
    }
    // Se o admin excluiu este usuário enquanto ele estava logado, encerra a sessão
    $st = db()->prepare('SELECT 1 FROM tb_usuario WHERE login = :login');
    $st->execute([':login' => $_SESSION['usuario']]);
    if (!$st->fetchColumn()) {
        unset($_SESSION['usuario']);
        flash('erro', 'Esse usuário não existe mais.');
        redirecionar('login.php');
    }
}

function exigir_admin(): void
{
    exigir_login();
    if (!usuario_admin()) {
        flash('erro', 'Essa área é só para o administrador.');
        redirecionar('cadastro_carro.php');
    }
}
