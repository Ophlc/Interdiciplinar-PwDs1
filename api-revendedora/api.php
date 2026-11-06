<?php
// Libera o Angular (porta 4200) pra falar com o PHP.
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

// Essas ações só vai funcionar se o usuário estiver já logado
$precisaLogin = ['marcas', 'marca', 'modelos', 'modelo', 'excluir_marca', 'excluir_modelo', 'alterar_senha', 'historico'];
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

        $st = $pdo->prepare('SELECT * FROM tb_usuario WHERE login = ?');
        $st->execute([$login]);
        $usuarioBanco = $st->fetch();

        // password_verify compara a senha
        if ($usuarioBanco && password_verify($senha, $usuarioBanco['senha'])) {
            $_SESSION['usuario'] = $usuarioBanco['login'];

            // guarda no log a data e a hora desse login
            $st = $pdo->prepare('INSERT INTO tb_log_login (login) VALUES (?)');
            $st->execute([$usuarioBanco['login']]);

            echo json_encode(['sucesso' => true, 'usuario' => $usuarioBanco['login']]);
        } else {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Login ou senha incorretos.']);
        }
    }

    // Meter o pé
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
            $senhaCriptografada = password_hash($senha, PASSWORD_DEFAULT);

            $st = $pdo->prepare('INSERT INTO tb_usuario (login, senha) VALUES (?, ?)');
            $st->execute([$login, $senhaCriptografada]);
            echo json_encode(['sucesso' => true, 'mensagem' => 'Usuário cadastrado! Faça login.']);
        }
    }

    //Marcas do SELECT
    elseif ($acao == 'marcas') {
        $marcas = $pdo->query('SELECT * FROM tb_marca ORDER BY nome')->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode(['sucesso' => true, 'dados' => $marcas]);
    }

    //Cadastrar marca
    elseif ($acao == 'marca') {
        $nome = trim($dados['nome'] ?? '');

        if ($nome == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite o nome da marca.']);
        } elseif (mb_strlen($nome) > 50) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'O nome da marca pode ter no máximo 50 letras.']);
        } else {
            //LOWER deixa tudo minúsculo, então Fiat é fiat
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

    // Tabela que fica em baixo
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

    //Salva modelo login
    elseif ($acao == 'modelo') {
        $modelo = trim($dados['modelo'] ?? '');
        $id_marca = $dados['id_marca'] ?? '';

        if ($modelo == '' || $id_marca == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite o modelo e escolha a marca.']);
        } else {
            //VÊ se o cara já colocou o carro e deixa td minúsculo
            $st = $pdo->prepare('SELECT * FROM tb_modelo WHERE LOWER(nome) = LOWER(?) AND id_marca = ? AND login = ?');
            $st->execute([$modelo, $id_marca, $_SESSION['usuario']]);

            if ($st->fetch()) {
                echo json_encode(['sucesso' => false, 'mensagem' => 'Você já cadastrou esse modelo nessa marca.']);
            } else {
                $st = $pdo->prepare('INSERT INTO tb_modelo (nome, id_marca, login) VALUES (?, ?, ?)');
                $st->execute([$modelo, $id_marca, $_SESSION['usuario']]);
                echo json_encode(['sucesso' => true, 'mensagem' => 'Modelo cadastrado!']);
            }
        }
    }

    // Apaga uma marca por causa do CASCADE
    elseif ($acao == 'excluir_marca') {
        $id_marca = $dados['id_marca'] ?? '';
        $login = $dados['login'] ?? '';
        $senha = $dados['senha'] ?? '';

        $st = $pdo->prepare('SELECT senha FROM tb_usuario WHERE login = ?');
        $st->execute([$_SESSION['usuario']]);
        $usuarioBanco = $st->fetch();

        // o login digitado tem que ser o de quem está logado
        if (mb_strtolower($login) != mb_strtolower($_SESSION['usuario']) || !$usuarioBanco || !password_verify($senha, $usuarioBanco['senha'])) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Login ou senha incorretos.']);
        } else {
            $st = $pdo->prepare('DELETE FROM tb_marca WHERE id_marca = ?');
            $st->execute([$id_marca]);
            echo json_encode(['sucesso' => true, 'mensagem' => 'Marca apagada!']);
        }
    }

    //Apagar modelo
    elseif ($acao == 'excluir_modelo') {
        $id_modelo = $dados['id_modelo'] ?? '';

        $st = $pdo->prepare('DELETE FROM tb_modelo WHERE id_modelo = ? AND login = ?');
        $st->execute([$id_modelo, $_SESSION['usuario']]);
        echo json_encode(['sucesso' => true, 'mensagem' => 'Modelo apagado!']);
    }

    //Trocar senha
    elseif ($acao == 'alterar_senha') {
        $senhaAtual = $dados['senha_atual'] ?? '';
        $novaSenha = $dados['nova_senha'] ?? '';
        $confirmacao = $dados['confirmacao'] ?? '';

        $st = $pdo->prepare('SELECT senha FROM tb_usuario WHERE login = ?');
        $st->execute([$_SESSION['usuario']]);
        $usuarioBanco = $st->fetch();

        if (!$usuarioBanco) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Usuário não encontrado.']);
        } elseif (!password_verify($senhaAtual, $usuarioBanco['senha'])) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'A senha atual está incorreta.']);
        } elseif ($novaSenha == '') {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Informe a nova senha.']);
        } elseif (strlen($novaSenha) > 10) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'A nova senha deve ter no máximo 10 caracteres.']);
        } elseif ($novaSenha != $confirmacao) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'A confirmação da nova senha não confere.']);
        } else {
            $novoHash = password_hash($novaSenha, PASSWORD_DEFAULT);

            $st = $pdo->prepare('UPDATE tb_usuario SET senha = ? WHERE login = ?');
            $st->execute([$novoHash, $_SESSION['usuario']]);
            echo json_encode(['sucesso' => true, 'mensagem' => 'Senha alterada com sucesso.']);
        }
    }

    // Histórico de logins de quem está logado
    elseif ($acao == 'historico') {
        $st = $pdo->prepare(
            'SELECT data_hora_login
             FROM tb_log_login
             WHERE login = ?
             ORDER BY data_hora_login DESC, id_log DESC'
        );
        $st->execute([$_SESSION['usuario']]);

        $historico = [];
        foreach ($st->fetchAll(PDO::FETCH_ASSOC) as $registro) {
            $dataHora = strtotime($registro['data_hora_login']);
            $historico[] = [
                'data' => date('d/m/Y', $dataHora),
                'hora' => date('H:i:s', $dataHora)
            ];
        }
        echo json_encode(['sucesso' => true, 'dados' => $historico]);
    }

    // Formulário Trabalhe conosco
    elseif ($acao == 'candidato') {
        $nome = trim($dados['nome'] ?? '');
        $email = trim($dados['email'] ?? '');
        $celular = trim($dados['celular'] ?? '');
        $cidade = trim($dados['cidade'] ?? '');
        $estado = $dados['estado'] ?? '';
        $cargo = $dados['cargo'] ?? '';
        $linkedin = trim($dados['linkedin'] ?? '');

        $estados = ['AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'];
        $cargos = ['Vendedor de resenha', 'Gerente da resenha', 'Atendente de resenha', 'Mecânico da resenha', 'Lavador de resenha', 'Administrativo da resenha', 'Outra resenha'];

        // Vai conferindo campo por campo, o primeiro que estiver errado mostra a mensagem
        if (mb_strlen($nome) < 3 || mb_strlen($nome) > 50 || !preg_match('/^[\p{L} \'-]+$/u', $nome)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite seu nome completo (só letras, até 50 caracteres).']);
        } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL) || strlen($email) > 50) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite um e-mail válido (até 50 caracteres).']);
        } elseif (!preg_match('/^[1-9][0-9]9[0-9]{8}$/', $celular)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite o celular com DDD, só números (11 dígitos).']);
        } elseif (mb_strlen($cidade) < 2 || mb_strlen($cidade) > 20 || !preg_match('/^[\p{L} \'-]+$/u', $cidade)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Digite a cidade (só letras, até 20 caracteres).']);
        } elseif (!in_array($estado, $estados)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Escolha o estado.']);
        } elseif (!in_array($cargo, $cargos)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'Escolha o cargo pretendido.']);
        } elseif ($linkedin != '' && (strlen($linkedin) > 30 || stripos($linkedin, 'linkedin.com/') === false)) {
            echo json_encode(['sucesso' => false, 'mensagem' => 'O link do LinkedIn precisa ser do linkedin.com e ter até 30 caracteres.']);
        } else {
            // vê se já tem uma inscrição já com esse e-mail
            $st = $pdo->prepare('SELECT * FROM tb_trabalheconosco WHERE LOWER(email) = LOWER(?)');
            $st->execute([$email]);

            if ($st->fetch()) {
                echo json_encode(['sucesso' => false, 'mensagem' => 'Já recebemos uma candidatura com esse e-mail.']);
            } else {
                // o link é opcional
                if ($linkedin == '') {
                    $linkedin = null;
                }

                $st = $pdo->prepare(
                    'INSERT INTO tb_trabalheconosco (nome, email, celular, cidade, estado, cargo_pretendido, link_linkdin)
                     VALUES (?, ?, ?, ?, ?, ?, ?)'
                );
                $st->execute([$nome, $email, $celular, $cidade, $estado, $cargo, $linkedin]);
                echo json_encode(['sucesso' => true, 'mensagem' => 'Candidatura enviada! Obrigado, entraremos em contato.']);
            }
        }
    }

    else {
        http_response_code(400);
        echo json_encode(['sucesso' => false, 'mensagem' => 'Ação inválida.']);
    }

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['sucesso' => false, 'mensagem' => 'Erro ao acessar o banco de dados.']);
}