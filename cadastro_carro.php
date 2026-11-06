<?php
require_once __DIR__ . '/includes/funcoes.php';
require_once __DIR__ . '/includes/carro.php';
exigir_login();
if (usuario_admin()) {
    redirecionar('usuarios.php');
}
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
        flash('ok', 'Carro cadastrado com sucesso.');
        redirecionar('cadastro_carro.php');
    }
}

$marcas = $pdo->query('SELECT id_marca, nome FROM tb_marca ORDER BY nome')->fetchAll();

// carros que o usuário já cadastrou
$st = $pdo->prepare(
    'SELECT ma.nome AS marca, mo.nome AS modelo, v.nome AS versao, c.quilometragem
       FROM tb_cadastro_carro c
       JOIN tb_versao v ON v.id_versao = c.id_versao
       JOIN tb_modelo mo ON mo.id_modelo = v.id_modelo
       JOIN tb_marca ma ON ma.id_marca = mo.id_marca
      WHERE c.login = :login
   ORDER BY c.id_cadastro DESC'
);
$st->execute([':login' => $login]);
$meus = $st->fetchAll();

$titulo = 'Cadastro de carro';
require __DIR__ . '/includes/topo.php';
?>
<section class="cartao-auth">
  <h1>Cadastro de carro</h1>
  <p class="sub">Escolha a marca, o modelo e a versão, e informe a quilometragem.</p>

  <?php if (!$marcas): ?>
    <p class="vazio">Ainda não há marcas cadastradas no sistema.</p>
  <?php else:
      $classeForm = '';
      $textoBotao = 'Cadastrar';
      require __DIR__ . '/includes/form_carro.php';
  endif; ?>
</section>

<?php if ($meus): ?>
<section class="cartao-auth">
  <h2>Seus cadastros</h2>
  <table>
    <thead><tr><th>Marca</th><th>Modelo</th><th>Versão</th><th>Km</th></tr></thead>
    <tbody>
      <?php foreach ($meus as $c): ?>
        <tr>
          <td><?= e($c['marca']) ?></td>
          <td><?= e($c['modelo']) ?></td>
          <td><?= e($c['versao']) ?></td>
          <td><?= number_format((int) $c['quilometragem'], 0, ',', '.') ?></td>
        </tr>
      <?php endforeach; ?>
    </tbody>
  </table>
</section>
<?php endif; ?>
<?php require __DIR__ . '/includes/rodape.php'; ?>
