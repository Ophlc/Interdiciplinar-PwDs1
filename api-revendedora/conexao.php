<?php
$pdo = new PDO(
    'mysql:host=127.0.0.1;port=3306;
    dbname=bd_revendedoracarros;
    charset=utf8mb4', 
    'root', 
    'Phlc02042009@'
    );
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
