<?php
require_once __DIR__ . '/includes/funcoes.php';
$_SESSION = [];
session_destroy();
session_start();
flash('ok', 'Você saiu do sistema.');
redirecionar('login.php');
