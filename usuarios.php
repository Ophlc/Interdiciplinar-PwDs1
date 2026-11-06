<?php
require_once __DIR__ . '/includes/funcoes.php';
exigir_admin();
$pdo = db();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    csrf_validar();
    $login = post('login');

    if (mb_strtolower($login) === 'admin') {
        flash('erro', 'O usuário admin não pode ser excluído.');
    } else {
        $st = $pdo->prepare("DELETE FROM tb_usuario WHERE login = :login AND login <> 'admin'");
        $st->execute([':login' => $login]);
        if ($st->rowCount()) {
            flash('ok', 'Usuário excluído.');
        } else {
            flash('erro', 'Usuário não encontrado.');
        }
    }
    redirecionar('usuarios.php');
}

$usuarios = $pdo->query("SELECT login, senha FROM tb_usuario ORDER BY (login = 'admin') DESC, login")->fetchAll();

$titulo = 'Usuários';
$paginaAtual = 'usuarios';
require __DIR__ . '/includes/topo.php';
?>
<h1>Usuários</h1>

<section class="painel">
  <p><strong>Total de usuários cadastrados: <?= count($usuarios) ?></strong></p>

  <table>
    <thead><tr><th>Login</th><th>Senha</th><th></th></tr></thead>
    <tbody>
      <?php foreach ($usuarios as $u): ?>
        <tr>
          <td><?= e($u['login']) ?></td>
          <td><?= e($u['senha']) ?></td>
          <td>
            <?php if (mb_strtolower($u['login']) !== 'admin'): ?>
              <form method="post" onsubmit="return confirm('Excluir este usuário?')">
                <?= csrf_campo() ?>
                <input type="hidden" name="login" value="<?= e($u['login']) ?>">
                <button type="submit" class="btn">Excluir</button>
              </form>
            <?php endif; ?>
          </td>
        </tr>
      <?php endforeach; ?>
    </tbody>
  </table>
</section>
<?php require __DIR__ . '/includes/rodape.php'; ?>
