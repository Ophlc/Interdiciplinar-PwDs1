<?php
$config = is_file(__DIR__ . '/config.local.php') ? require __DIR__ . '/config.local.php' : [];
$host = getenv('DB_HOST') ?: ($config['DB_HOST'] ?? '127.0.0.1');
$porta = getenv('DB_PORT') ?: ($config['DB_PORT'] ?? '3306');
$banco = getenv('DB_NAME') ?: ($config['DB_NAME'] ?? 'bd_revendedoracarros');
$usuario = getenv('DB_USER') ?: ($config['DB_USER'] ?? 'root');
$senha = getenv('DB_PASSWORD') ?: ($config['DB_PASSWORD'] ?? '');

$pdo = new PDO("mysql:host=$host;port=$porta;dbname=$banco;charset=utf8mb4", $usuario, $senha);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
