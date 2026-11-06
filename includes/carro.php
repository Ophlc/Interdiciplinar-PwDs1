<?php
/** Serve pra ler os dados do formulário os dados do carro*/
function ler_formulario_carro(): array
{
    return [
        'marca'  => (int) ($_POST['id_marca'] ?? 0),
        'modelo' => (int) ($_POST['id_modelo'] ?? 0),
        'versao' => (int) ($_POST['id_versao'] ?? 0),
        'km'     => post('quilometragem'),
    ];
}

/** Valida e grava o carro. Devolve null se deu certo, ou o texto do erro. */
function registrar_carro(PDO $pdo, string $login, array $d): ?string
{
    // Para versão existir, precisa ser de um modelo e o modelo de alguma marca, obviamente
    $st = $pdo->prepare(
        'SELECT 1
           FROM tb_versao v
           JOIN tb_modelo mo ON mo.id_modelo = v.id_modelo
          WHERE v.id_versao = :versao AND mo.id_modelo = :modelo AND mo.id_marca = :marca'
    );
    $st->execute([':versao' => $d['versao'], ':modelo' => $d['modelo'], ':marca' => $d['marca']]);
    if (!$st->fetchColumn()) {
        return 'Selecione a marca, o modelo e a versão do carro.';
    }

    $km = filter_var($d['km'], FILTER_VALIDATE_INT, ['options' => ['min_range' => 0, 'max_range' => 9999999]]);
    if ($km === false) {
        return 'Informe a quilometragem: um número inteiro de 0 a 9.999.999.';
    }

    $pdo->prepare('INSERT INTO tb_cadastro_carro (login, id_versao, quilometragem) VALUES (:login, :versao, :km)')
        ->execute([':login' => $login, ':versao' => $d['versao'], ':km' => $km]);
    return null;
}
