<?php
// Devolve em JSON os modelos de uma marca (usado nos selects do formulário do carro)
require_once __DIR__ . '/includes/funcoes.php';

if (!usuario_logado()) {
    http_response_code(401);
    exit;
}

header('Content-Type: application/json; charset=utf-8');

$st = db()->prepare('SELECT id_modelo AS id, nome FROM tb_modelo WHERE id_marca = :marca ORDER BY nome');
$st->execute([':marca' => (int) ($_GET['id_marca'] ?? 0)]);
echo json_encode($st->fetchAll(), JSON_UNESCAPED_UNICODE);
