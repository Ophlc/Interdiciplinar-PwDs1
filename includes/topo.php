<?php
$titulo      = $titulo ?? 'Revendedora de Carros';
$paginaAtual = $paginaAtual ?? '';
// publico = login/cadastro | admin = menu lateral | usuario = tela simples do usuário comum
$layout      = $layout ?? (usuario_admin() ? 'admin' : 'usuario');

function item_menu(string $arquivo, string $texto, string $atual): string
{
    $classe = $arquivo === $atual ? ' class="ativo"' : '';
    return '<li><a href="' . e($arquivo) . '.php"' . $classe . '>' . e($texto) . '</a></li>';
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?= e($titulo) ?> - Revendedora de Carros</title>
  <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<?php if ($layout === 'admin'): ?>
  <div class="layout">
    <aside class="lateral">
      <div class="marca-sistema">Revendedora de Carros</div>
      <ul>
        <?= item_menu('marcas', 'Marcas', $paginaAtual) ?>
        <?= item_menu('modelos', 'Modelos', $paginaAtual) ?>
        <?= item_menu('usuarios', 'Usuários', $paginaAtual) ?>
      </ul>
      <div class="usuario-box">
        Usuário: <strong><?= e($_SESSION['usuario']) ?></strong><br>
        <a href="logout.php">Sair</a>
      </div>
    </aside>
    <main class="conteudo">
<?php elseif ($layout === 'usuario'): ?>
  <header class="barra">
    <span>Revendedora de Carros</span>
    <span>Usuário: <strong><?= e($_SESSION['usuario']) ?></strong> | <a href="logout.php">Sair</a></span>
  </header>
  <main class="conteudo-usuario">
<?php else: ?>
  <main class="conteudo-publico">
<?php endif; ?>
      <?php foreach (pegar_flash() as $f): ?>
        <div class="aviso aviso-<?= e($f['tipo']) ?>"><?= e($f['msg']) ?></div>
      <?php endforeach; ?>
