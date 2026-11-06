<?php
// Literal a conexão com o banco
$pdo = new PDO('mysql:host=127.0.0.1;port=3307;dbname=bd_revendedoracarros;charset=utf8mb4', 'root', 'root');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
