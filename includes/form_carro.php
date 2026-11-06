<?php
// Formulário do carro, usado na tela do usuário e na tela do admin.
// Precisa de: $marcas (lista), $d (dados já preenchidos), $classeForm e $textoBotao.
?>
<form method="post" class="<?= e($classeForm) ?>">
  <?= csrf_campo() ?>
  <label>Marca
    <select name="id_marca" id="marca" required>
      <option value="">Selecione a marca</option>
      <?php foreach ($marcas as $m): ?>
        <option value="<?= (int) $m['id_marca'] ?>" <?= $d['marca'] === (int) $m['id_marca'] ? 'selected' : '' ?>><?= e($m['nome']) ?></option>
      <?php endforeach; ?>
    </select>
  </label>
  <label>Modelo
    <select name="id_modelo" id="modelo" data-escolhido="<?= (int) $d['modelo'] ?>" required>
      <option value="">Selecione a marca primeiro</option>
    </select>
  </label>
  <label>Versão
    <select name="id_versao" id="versao" data-escolhido="<?= (int) $d['versao'] ?>" required>
      <option value="">Selecione o modelo primeiro</option>
    </select>
  </label>
  <label>Quilometragem (km)
    <input type="number" name="quilometragem" min="0" max="9999999" step="1" value="<?= e($d['km']) ?>" required>
  </label>
  <button type="submit" class="btn btn-primario"><?= e($textoBotao) ?></button>
</form>
<script src="assets/js/selects_carro.js"></script>
