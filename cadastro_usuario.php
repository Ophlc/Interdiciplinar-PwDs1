<?php
require_once __DIR__ . '/includes/funcoes.php';

if (usuario_logado()) {
    redirecionar(pagina_inicial());
}

$login = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    csrf_validar();
    $login     = post('login');
    $senha     = (string) ($_POST['senha'] ?? '');
    $confirmar = (string) ($_POST['confirmar'] ?? '');

    if ($login === '' || mb_strlen($login) > 50) {
        flash('erro', 'Informe o login (até 50 caracteres).');
    } elseif (mb_strlen($senha) < 4 || mb_strlen($senha) > 10) {
        flash('erro', 'A senha deve ter entre 4 e 10 caracteres.');
    } elseif ($senha !== $confirmar) {
        flash('erro', 'A confirmação da senha não confere.');
    } else {
        try {
            $st = db()->prepare('INSERT INTO tb_usuario (login, senha) VALUES (:login, :senha)');
            $st->execute([':login' => $login, ':senha' => $senha]);
            flash('ok', 'Usuário cadastrado. Faça login para entrar.');
            redirecionar('login.php');
        } catch (PDOException $ex) {
            if ($ex->getCode() === '23000') {
                flash('erro', 'Já existe um usuário com esse login.');
            } else {
                throw $ex;
            }
        }
    }
}

$titulo = 'Cadastro de usuário';
$layout = 'publico';
require __DIR__ . '/includes/topo.php';
?>
<section class="cartao-auth">
  <h1>Cadastro de usuário</h1>
  <p class="sub">A senha deve ter de 4 a 10 caracteres.</p>

  <form method="post">
    <?= csrf_campo() ?>
    <label>Login
      <input type="text" name="login" maxlength="50" value="<?= e($login) ?>" required autofocus>
    </label>
    <label>Senha
      <input type="password" name="senha" minlength="4" maxlength="10" required>
    </label>
    <label>Confirmar senha
      <input type="password" name="confirmar" minlength="4" maxlength="10" required>
    </label>
    <button type="submit" class="btn btn-primario">Cadastrar</button>
    <a class="btn" href="login.php">Voltar</a>
  </form>
</section>
<?php require __DIR__ . '/includes/rodape.php'; ?>
