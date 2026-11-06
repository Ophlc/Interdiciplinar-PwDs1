<?php
require_once __DIR__ . '/includes/funcoes.php';

if (usuario_logado()) {
    redirecionar(pagina_inicial());
}

$login = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    csrf_validar();
    $login = post('login');
    $senha = (string) ($_POST['senha'] ?? '');

    $st = db()->prepare('SELECT login, senha FROM tb_usuario WHERE login = :login');
    $st->execute([':login' => $login]);
    $usuario = $st->fetch();

    if ($usuario && hash_equals($usuario['senha'], $senha)) {
        session_regenerate_id(true);
        $_SESSION['usuario'] = $usuario['login'];
        redirecionar(pagina_inicial());
    }
    flash('erro', 'Login ou senha incorretos.');
}

$titulo = 'Entrar';
$layout = 'publico';
require __DIR__ . '/includes/topo.php';
?>
<section class="cartao-auth">
  <h1>Entrar</h1>

  <form method="post">
    <?= csrf_campo() ?>
    <label>Login
      <input type="text" name="login" maxlength="50" value="<?= e($login) ?>" required autofocus>
    </label>
    <label>Senha
      <input type="password" name="senha" maxlength="10" required>
    </label>
    <button type="submit" class="btn btn-primario">Entrar</button>
  </form>

  <p class="rodape-auth">Não tem usuário? <a href="cadastro_usuario.php">Cadastre-se</a></p>
</section>
<?php require __DIR__ . '/includes/rodape.php'; ?>
