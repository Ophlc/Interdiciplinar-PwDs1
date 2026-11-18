<?php
$host = '127.0.0.1';
$porta = '3306';
$banco = 'bd_revendedoracarros';
$usuario = 'root';
$senha = ''; // mantenha a senha do seu conexao.php local

$pdo = new PDO("mysql:host=$host;port=$porta;dbname=$banco;charset=utf8mb4", $usuario, $senha);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
