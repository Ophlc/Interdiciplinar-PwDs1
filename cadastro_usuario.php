<?php
require 'conexao.php';

$erro = '';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $login = trim($_POST['login']);
    $senha = $_POST['senha'];

    // Analisa se o login existe
    $st = $pdo->prepare('SELECT * FROM tb_usuario WHERE login = ?');
    $st->execute([$login]);

    if ($login == '' || strlen($senha) < 1) {
        $erro = 'Preencha o login e a senha.';
    } elseif ($st->fetch()) {
        $erro = 'Esse login já existe.';
    } else {
        $st = $pdo->prepare('INSERT INTO tb_usuario (login, senha) VALUES (?, ?)');
        $st->execute([$login, $senha]);
        header('Location: login.php?ok=1');
        exit;
    }
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Cadastro de usuário</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="caixa">
    <h1>Cadastro de usuário</h1>

    <?php if ($erro != '') { ?>
      <div class="aviso erro"><?= htmlspecialchars($erro) ?></div>
    <?php } ?>

    <form method="post">
      <label>Login
        <input type="text" name="login" maxlength="50" required>
      </label>
      <label>Senha (até 10 caracteres)
        <input type="password" name="senha" maxlength="10" required>
      </label>
      <button type="submit">Cadastrar</button>
      <a href="login.php">Voltar</a>
    </form>
  </div>
</body>
</html>
