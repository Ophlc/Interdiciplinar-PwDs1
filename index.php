<?php
require_once __DIR__ . '/includes/funcoes.php';
redirecionar(usuario_logado() ? pagina_inicial() : 'login.php');
