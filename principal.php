<?php
session_start();
require 'conexao.php';

// só entra quem fezer o login
if (!isset($_SESSION['usuario'])) {
    header('Location: login.php');
    exit;
}

$msg = '';
$erro = '';

// quando o formulário é enviado, grava o modelo
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $modelo = trim($_POST['modelo']);
    $id_marca = $_POST['id_marca'];

    if ($modelo == '' || $id_marca == '') {
        $erro = 'Digite o modelo e escolha a marca.';
    } else {
        // grava o modelo com o login de quem está logado
        $st = $pdo->prepare('INSERT INTO tb_modelo (nome, id_marca, login) VALUES (?, ?, ?)');
        $st->execute([$modelo, $id_marca, $_SESSION['usuario']]);
        $msg = 'Modelo cadastrado!';
    }
}

// marcas para o select 
$marcas = $pdo->query('SELECT * FROM tb_marca ORDER BY nome')->fetchAll();

// tabela de baixo: só os modelos do usuário logado
$st = $pdo->prepare(
    'SELECT tb_modelo.nome AS modelo, tb_marca.nome AS marca
     FROM tb_modelo
     JOIN tb_marca ON tb_marca.id_marca = tb_modelo.id_marca
     WHERE tb_modelo.login = ?
     ORDER BY tb_modelo.id_modelo DESC'
);
$st->execute([$_SESSION['usuario']]);
$lista = $st->fetchAll();
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Cadastro</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="topo">
    <span>Revendedora de Carros</span>
    <span>Usuário: <b><?= htmlspecialchars($_SESSION['usuario']) ?></b> | <a href="logout.php">Sair</a></span>
  </div>

  <div class="caixa">
    <h1>Cadastro</h1>

    <?php if ($msg != '') { ?>
      <div class="aviso ok"><?= $msg ?></div>
    <?php } ?>
    <?php if ($erro != '') { ?>
      <div class="aviso erro"><?= $erro ?></div>
    <?php } ?>

    <form method="post">
      <label>Modelo
        <input type="text" name="modelo" maxlength="50" required>
      </label>
      <label>Marca
        <select name="id_marca" required>
          <option value="">Selecione a marca</option>
          <?php foreach ($marcas as $m) { ?>
            <option value="<?= $m['id_marca'] ?>"><?= htmlspecialchars($m['nome']) ?></option>
          <?php } ?>
        </select>
      </label>
      <button type="submit">Cadastrar</button>
    </form>
  </div>

  <div class="caixa">
    <h2>Seus modelos cadastrados</h2>
    <?php if (count($lista) == 0) { ?>
      <p>Você ainda não cadastrou nenhum modelo.</p>
    <?php } else { ?>
      <table>
        <tr><th>Modelo</th><th>Marca</th></tr>
        <?php foreach ($lista as $l) { ?>
          <tr>
            <td><?= htmlspecialchars($l['modelo']) ?></td>
            <td><?= htmlspecialchars($l['marca']) ?></td>
          </tr>
        <?php } ?>
      </table>
    <?php } ?>
  </div>
</body>
</html>
