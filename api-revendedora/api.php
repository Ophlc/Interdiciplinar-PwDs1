<?php
// Libera o Angular (porta 4200) pra conversar com o PHP.
// O Allow-Credentials é oq faz o login funcionar.
header('Access-Control-Allow-Origin: http://localhost:4200');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Headers: Content-Type');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Content-Type: application/json; charset=utf-8');

// Antes do POST o navegador manda um OPTIONS
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    exit;
}

session_start();

// Pega aquele json que o Angular mandou
$dados = json_decode(file_get_contents('php://input'), true);
if (!is_array($dados)) {
    $dados = [];
}

$acao = $_GET['acao'] ?? '';

// Essas ações só vai funcionar se o usuário estiver logado
$precisaLogin = ['marcas', 'marca', 'modelos', 'modelo', 'excluir_marca', 'excluir_modelo'];
if (in_array($acao, $precisaLogin) && !isset($_SESSION['usuario'])) {
    http_response_code(401);
    echo json_encode(['sucesso' => false, 'mensagem' => 'Faça o login.']);
    exit;
}

try {
    require 'conexao.php';

    // Ve se tem alguém logado
    if ($acao == 'sessao') {
        echo json_encode(['sucesso' => true, 'usuario' => $_SESSION['usuario'] ?? null]);
    }

    // O login
    elseif ($acao == 'login') {
        $login = $dados['login'] ?? '';
        $senha = $dados['senha'] ?? '';

        $st = $pdo->prepare('SELECT * FROM tb_usuario WHERE login = ? AND senha = ?');
        $st->execute([$login, $senha]);

        if ($st->fetch()) {
            $_SESSION['usuario'] = $login;
            echo json_encode(['sucesso' => true, 'usuario' => $login]);
        } else {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Login ou senha incorretos.']);
        }
    }

    // Meter o pé (sair)
    elseif ($acao == 'logout') {
        session_destroy();
        echo json_encode(['sucesso' => true]);
    }

    // Cadastrar o usuário
    elseif ($acao == 'cadastro') {
        $login = trim($dados['login'] ?? '');
        $senha = $dados['senha'] ?? '';

        // Vê se ja tem login
        $st = $pdo->prepare('SELECT * FROM tb_usuario WHERE login = ?');
        $st->execute([$login]);

        if ($login == '' || $senha == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Preencha o login e a senha.']);
        } elseif ($st->fetch()) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Esse login já existe.']);
        } else {
            $st = $pdo->prepare('INSERT INTO tb_usuario (login, senha) VALUES (?, ?)');
            $st->execute([$login, $senha]);
            echo json_encode(['sucesso' => true, 'mensagem' => 'Usuário cadastrado! Faça login.']);
        }
    }

    // As marcas que aparecem no select e na aba de marcas (em ordem alfabética)
    elseif ($acao == 'marcas') {
        $marcas = $pdo->query('SELECT * FROM tb_marca ORDER BY nome')->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode(['sucesso' => true, 'dados' => $marcas]);
    }

    // Cadastrar uma marca nova
    elseif ($acao == 'marca') {
        $nome = trim($dados['nome'] ?? '');

        if ($nome == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite o nome da marca.']);
        } elseif (mb_strlen($nome) > 50) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'O nome da marca pode ter no máximo 50 letras.']);
        } else {
            // Vê se já tem a marca (LOWER deixa tudo minúsculo, então Fiat e fiat são iguais)
            $st = $pdo->prepare('SELECT * FROM tb_marca WHERE LOWER(nome) = LOWER(?)');
            $st->execute([$nome]);

            if ($st->fetch()) {
                echo json_encode(['sucesso' => false, 'mensagem' => 'Essa marca já existe.']);
            } else {
                $st = $pdo->prepare('INSERT INTO tb_marca (nome) VALUES (?)');
                $st->execute([$nome]);
                echo json_encode(['sucesso' => true, 'mensagem' => 'Marca cadastrada!']);
            }
        }
    }

    // Tabela que fica em baixo, tipo só os modelos de quem está logado
    elseif ($acao == 'modelos') {
        $st = $pdo->prepare(
            'SELECT tb_modelo.id_modelo, tb_modelo.nome AS modelo, tb_marca.nome AS marca
             FROM tb_modelo
             JOIN tb_marca ON tb_marca.id_marca = tb_modelo.id_marca
             WHERE tb_modelo.login = ?
             ORDER BY tb_modelo.id_modelo DESC'
        );
        $st->execute([$_SESSION['usuario']]);
        echo json_encode(['sucesso' => true, 'dados' => $st->fetchAll(PDO::FETCH_ASSOC)]);
    }

    // Aqui salva o modelo com o login de quem está logado
    elseif ($acao == 'modelo') {
        $modelo = trim($dados['modelo'] ?? '');
        $id_marca = $dados['id_marca'] ?? '';

        if ($modelo == '' || $id_marca == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite o modelo e escolha a marca.']);
        } else {
            $st = $pdo->prepare('INSERT INTO tb_modelo (nome, id_marca, login) VALUES (?, ?, ?)');
            $st->execute([$modelo, $id_marca, $_SESSION['usuario']]);
            echo json_encode(['sucesso' => true, 'mensagem' => 'Modelo cadastrado!']);
        }
    }

    // Apaga uma marca (os modelos dela são apagados junto, por causa do CASCADE do banco)
    elseif ($acao == 'excluir_marca') {
        $id_marca = $dados['id_marca'] ?? '';

        $st = $pdo->prepare('DELETE FROM tb_marca WHERE id_marca = ?');
        $st->execute([$id_marca]);
        echo json_encode(['sucesso' => true, 'mensagem' => 'Marca apagada!']);
    }

    // Apaga um modelo (só se for de quem está logado)
    elseif ($acao == 'excluir_modelo') {
        $id_modelo = $dados['id_modelo'] ?? '';

        $st = $pdo->prepare('DELETE FROM tb_modelo WHERE id_modelo = ? AND login = ?');
        $st->execute([$id_modelo, $_SESSION['usuario']]);
        echo json_encode(['sucesso' => true, 'mensagem' => 'Modelo apagado!']);
    }

    else {
        http_response_code(400);
        echo json_encode(['sucesso' => false, 'mensagem' => 'Ação inválida.']);
    }

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['sucesso' => false, 'mensagem' => 'Erro ao acessar o banco de dados.']);
}
