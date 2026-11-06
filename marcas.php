<?php
require_once __DIR__ . '/includes/funcoes.php';
exigir_admin();
$pdo = db();

$nome = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    csrf_validar();
    $nome = post('nome');

    if ($nome === '' || mb_strlen($nome) > 50) {
        flash('erro', 'Informe o nome da marca (até 50 caracteres).');
    } else {
        try {
            $pdo->prepare('INSERT INTO tb_marca (nome) VALUES (:nome)')->execute([':nome' => $nome]);
            flash('ok', 'Marca cadastrada.');
            redirecionar('marcas.php');
        } catch (PDOException $ex) {
            if ($ex->getCode() === '23000') {
                flash('erro', 'Essa marca já está cadastrada.');
            } else {
                throw $ex;
            }
        }
    }
}

$titulo = 'Marcas';
$paginaAtual = 'marcas';
require __DIR__ . '/includes/topo.php';
?>
<h1>Cadastro de marca</h1>

<section class="painel">
  <form method="post" class="linha-form">
    <?= csrf_campo() ?>
    <label>Nome da marca
      <input type="text" name="nome" maxlength="50" value="<?= e($nome) ?>" required>
    </label>
    <button type="submit" class="btn btn-primario">Cadastrar</button>
  </form>
</section>
<?php require __DIR__ . '/includes/rodape.php'; ?>
