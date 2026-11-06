<?php
session_start();
require 'conexao.php';

// Dps de logar vai pra tela principal
if (isset($_SESSION['usuario'])) {
    header('Location: principal.php');
    exit;
}

$erro = '';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $login = $_POST['login'];
    $senha = $_POST['senha'];

    $st = $pdo->prepare('SELECT * FROM tb_usuario WHERE login = ? AND senha = ?');
    $st->execute([$login, $senha]);

    if ($st->fetch()) {
        $_SESSION['usuario'] = $login;
        header('Location: principal.php');
        exit;
    }
    $erro = 'Login ou senha incorretos.';
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Entrar</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="caixa">
    <h1>Entrar</h1>

    <?php if ($erro != '') { ?>
      <div class="aviso erro"><?= htmlspecialchars($erro) ?></div>
    <?php } ?>
    <?php if (isset($_GET['ok'])) { ?>
      <div class="aviso ok">Usuário cadastrado! Faça login.</div>
    <?php } ?>

    <form method="post">
      <label>Login
        <input type="text" name="login" maxlength="50" required>
      </label>
      <label>Senha
        <input type="password" name="senha" maxlength="10" required>
      </label>
      <button type="submit">Entrar</button>
    </form>

    <p>Não tem usuário? <a href="cadastro_usuario.php">Cadastre-se</a></p>
  </div>
</body>
</html>
