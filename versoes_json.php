<?php
// Devolve em JSON as versões de um modelo (usado nos selects do formulário do carro)
require_once __DIR__ . '/includes/funcoes.php';

if (!usuario_logado()) {
    http_response_code(401);
    exit;
}

header('Content-Type: application/json; charset=utf-8');

$st = db()->prepare('SELECT id_versao AS id, nome FROM tb_versao WHERE id_modelo = :modelo ORDER BY nome');
$st->execute([':modelo' => (int) ($_GET['id_modelo'] ?? 0)]);
echo json_encode($st->fetchAll(), JSON_UNESCAPED_UNICODE);
