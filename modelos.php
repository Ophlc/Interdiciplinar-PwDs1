<?php
require_once __DIR__ . '/includes/funcoes.php';
require_once __DIR__ . '/includes/carro.php';
exigir_admin();
$pdo = db();
$login = $_SESSION['usuario'];

$d = ['marca' => 0, 'modelo' => 0, 'versao' => 0, 'km' => ''];
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    csrf_validar();
    $d = ler_formulario_carro();
    $erro = registrar_carro($pdo, $login, $d);

    if ($erro) {
        flash('erro', $erro);
    } else {
        flash('ok', 'Veículo adicionado ao banco de dados.');
        redirecionar('modelos.php');
    }
}

$marcas = $pdo->query('SELECT id_marca, nome FROM tb_marca ORDER BY nome')->fetchAll();

$titulo = 'Modelos';
$paginaAtual = 'modelos';
require __DIR__ . '/includes/topo.php';
?>
<h1>Cadastro de modelo</h1>

<section class="painel">
  <?php if (!$marcas): ?>
    <p class="vazio">Cadastre uma <a href="marcas.php">marca</a> antes de cadastrar modelos.</p>
  <?php else:
      $classeForm = 'linha-form';
      $textoBotao = 'Cadastrar';
      require __DIR__ . '/includes/form_carro.php';
  endif; ?>
</section>
<?php require __DIR__ . '/includes/rodape.php'; ?>
