<?php
/**
 * A API FIPE entrega modelo e versão juntos, num texto só (ex.: "Argo Drive 1.0 6V Flex").
 * Essa função separa em modelo ("Argo") e versão ("Drive 1.0 6V Flex"), olhando todos os
 * nomes de UMA marca de uma vez. Não é perfeita, porque a FIPE não segue um padrão único.
 */

const PALAVRAS_QUE_SE_JUNTAM = ['new', 'novo', 'nova', 'grand', 'gran', 'santa', 'range', 'land', 'great'];

function so_letras(string $texto): bool
{
    return (bool) preg_match('/^\p{L}+$/u', $texto);
}

/** Parte do texto antes de / . , ; (a FIPE usa isso pra abreviar). */
function corte_texto(string $texto): string
{
    $parte = trim(preg_split('/[\/.,;]/u', $texto)[0]);
    return $parte !== '' ? $parte : trim($texto, '/.,; ');
}

/** AMAROK -> Amarok. Siglas de até 3 letras e códigos com número ficam como estão. */
function embelezar_palavra(string $palavra): string
{
    if (so_letras($palavra) && mb_strtoupper($palavra) === $palavra && mb_strlen($palavra) > 3) {
        return mb_strtoupper(mb_substr($palavra, 0, 1)) . mb_strtolower(mb_substr($palavra, 1));
    }
    return $palavra;
}

function separar_modelos_versoes(array $nomes): array
{
    // Quebra cada nome em palavras
    $itens = [];
    foreach ($nomes as $nome) {
        $nome = trim((string) preg_replace('/\s+/u', ' ', (string) $nome));
        if ($nome === '') {
            continue;
        }
        $palavras = explode(' ', $nome);
        if (corte_texto($palavras[0]) === '') {
            continue;
        }
        $itens[] = [$nome, $palavras];
    }

    // Agrupa pela primeira palavra e descobre quais modelos têm duas palavras
    $grupos = [];
    foreach ($itens as [$nome, $palavras]) {
        $grupos[mb_strtolower(corte_texto($palavras[0]))][] = $palavras;
    }

    $duasPalavras = [];
    foreach ($grupos as $primeira => $lista) {
        if (count($lista) < 3) {
            continue;
        }
        $segundas = [];
        foreach ($lista as $palavras) {
            if (count($palavras) > 1 && so_letras($palavras[1]) && mb_strlen($palavras[1]) > 1) {
                $chave = mb_strtolower($palavras[1]);
                $segundas[$chave] = ($segundas[$chave] ?? 0) + 1;
            }
        }
        $melhor = null;
        $max = 0;
        foreach ($segundas as $palavra => $qtd) {
            if ($qtd > $max) {
                $melhor = (string) $palavra;
                $max = $qtd;
            }
        }
        if ($melhor !== null && $max / count($lista) >= 0.95) {
            $duasPalavras[$primeira] = $melhor;
        }
    }

    // Separa modelo e versão de cada nome
    $resultado = [];
    foreach ($itens as [$nome, $palavras]) {
        $primeira = mb_strtolower(corte_texto($palavras[0]));
        $qtd = 1;
        if (count($palavras) > 1) {
            if (in_array($primeira, PALAVRAS_QUE_SE_JUNTAM, true) && so_letras($palavras[1]) && mb_strlen($palavras[1]) >= 2) {
                $qtd = 2;
            } elseif (isset($duasPalavras[$primeira]) && mb_strtolower($palavras[1]) === $duasPalavras[$primeira]) {
                $qtd = 2;
            }
        }
        $modelo = corte_texto(implode(' ', array_slice($palavras, 0, $qtd)));
        $versao = ltrim(mb_substr($nome, mb_strlen($modelo)), ' ./,;-');
        $resultado[] = [$modelo, $versao !== '' ? $versao : 'Padrão'];
    }

    // Escolhe a grafia mais comum de cada modelo
    $contagem = [];
    foreach ($resultado as [$modelo]) {
        $chave = mb_strtolower($modelo);
        $contagem[$chave][$modelo] = ($contagem[$chave][$modelo] ?? 0) + 1;
    }
    $grafia = [];
    foreach ($contagem as $chave => $variantes) {
        $melhor = '';
        $max = -1;
        foreach ($variantes as $variante => $qtd) {
            if ($qtd > $max) {
                $melhor = (string) $variante;
                $max = $qtd;
            }
        }
        $grafia[$chave] = implode(' ', array_map('embelezar_palavra', explode(' ', $melhor)));
    }

    // Monta o resultado final, sem versões repetidas
    $saida = [];
    $vistos = [];
    foreach ($resultado as [$modelo, $versao]) {
        $nomeModelo = mb_substr($grafia[mb_strtolower($modelo)], 0, 50);
        $chaveModelo = mb_strtolower($nomeModelo);
        $chaveVersao = mb_strtolower($versao);
        if (isset($vistos[$chaveModelo][$chaveVersao])) {
            continue;
        }
        $vistos[$chaveModelo][$chaveVersao] = true;
        $saida[$nomeModelo][] = mb_substr($versao, 0, 100);
    }
    return $saida;
}
