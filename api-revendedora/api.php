<?php
header('Access-Control-Allow-Origin: http://localhost:4200');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Headers: Content-Type');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Content-Type: application/json; charset=utf-8');
ini_set('display_errors', '0');
date_default_timezone_set('America/Sao_Paulo');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    exit;
}
session_start();
$pdo = null;

// Fecha a transação junto com a resposta, para não salvar uma ação sem seu log.
function responder($sucesso, $mensagem = '', $dados = null, $status = 200, $extras = []) {
    global $pdo, $admin;
    if (!$sucesso && !empty($admin)) {
        $nomes=['login'=>'Entrada no sistema','carro'=>'Cadastro de veículo','editar_carro'=>'Edição de veículo','modelo'=>'Cadastro de modelo'];
        $extras['operacao']=$nomes[$_GET['acao'] ?? ''] ?? 'Gerenciamento de cadastros';
    }
    if ($pdo && $pdo->inTransaction()) {
        if ($sucesso) {
            $pdo->commit();
        } else {
            $pdo->rollBack();
        }
    }
    http_response_code($status);
    echo json_encode(array_merge(['sucesso' => $sucesso, 'mensagem' => $mensagem, 'dados' => $dados, 'codigo' => $sucesso ? null : 'REV-' . strtoupper($_GET['acao'] ?? 'API') . '-' . ($status === 200 ? 'VALIDACAO' : $status)], $extras), JSON_UNESCAPED_UNICODE);
    exit;
}

function consultar($sql, $parametros = []) {
    global $pdo;
    $st = $pdo->prepare($sql);
    $st->execute($parametros);
    return $st->fetchAll(PDO::FETCH_ASSOC);
}

// Não guarda senhas nem hashes nos logs.
function registrarLog($categoria, $acao, $resumo, $detalhes = [], $usuario = null) {
    global $pdo;
    $st = $pdo->prepare('INSERT INTO tb_log_atividade (usuario, categoria, acao, resumo, detalhes, ip, navegador) VALUES (?, ?, ?, ?, ?, ?, ?)');
    $st->execute([
        $usuario ?? ($_SESSION['usuario'] ?? 'visitante'), $categoria, $acao, $resumo,
        json_encode($detalhes, JSON_UNESCAPED_UNICODE),
        $_SERVER['REMOTE_ADDR'] ?? '', mb_substr($_SERVER['HTTP_USER_AGENT'] ?? '', 0, 255)
    ]);
}

function gravar($sql, $parametros = []) {
 global $pdo;
 $st = $pdo->prepare($sql); $st->execute($parametros);
}
function carroAutorizado($id) {
 global $admin, $conta;
 $carro = consultar('SELECT * FROM tb_carro WHERE id_carro = ? FOR UPDATE', [$id])[0] ?? null;
 if (!$carro || (!$admin && $carro['responsavel'] !== $conta['login'])) responder(false, 'Veículo não encontrado ou sem acesso.', null, 403);
 return $carro;
}
function protegerVendidos($filtro, $parametros) {
 if (consultar("SELECT c.id_carro FROM tb_carro c JOIN tb_modelo m ON m.id_modelo=c.id_modelo WHERE c.situacao='V' AND ($filtro) FOR UPDATE", $parametros)) responder(false, 'Esta operação afetaria um veículo vendido. O histórico deve ser preservado.', null, 409);
}
function executarCadastros($acao, $dados) {
 global $pdo, $admin, $conta;
 if ($acao === 'marcas' || $acao === 'acessorios') {
  $marca=$acao==='marcas';$tabela=$marca?'tb_marca':'tb_acessorio';$coluna=$marca?'id_marca':'id_acessorio';
  $itens=consultar("SELECT * FROM $tabela ORDER BY nome");
  responder(true,'',$itens);
 }
 if ($acao==='modelos') {
  $itens=consultar('SELECT m.id_modelo,m.nome AS modelo,m.id_marca,m.login,ma.nome AS marca,m.login AS proprietario FROM tb_modelo m JOIN tb_marca ma ON ma.id_marca=m.id_marca ORDER BY m.nome');
  responder(true,'',$itens);
 }
 if ($acao==='modelo' || $acao==='editar_modelo') {
  $id=$dados['id_modelo'] ?? null;
  $modelo=trim($dados['modelo'] ?? '');$marca=$dados['id_marca'] ?? '';
  if (!$modelo || mb_strlen($modelo)>50 || !consultar('SELECT id_marca FROM tb_marca WHERE id_marca=?',[$marca])) responder(false,'Informe o modelo e uma marca válida.');
  if ($id) {
   $antigo=consultar('SELECT * FROM tb_modelo WHERE id_modelo=? FOR UPDATE',[$id])[0] ?? null;
   if(!$antigo || (!$admin && $antigo['login']!==$conta['login'])) responder(false,'Modelo não encontrado ou sem permissão.',null,403);
   protegerVendidos('m.id_modelo=?',[$id]);
  }
  if(consultar('SELECT id_modelo FROM tb_modelo WHERE nome=? AND id_marca=? AND login=? AND id_modelo<>?',[$modelo,$marca,$conta['login'],$id ?? 0])) responder(false,'Esse modelo já foi cadastrado por você nesta marca.');
  if($id) gravar('UPDATE tb_modelo SET nome=?,id_marca=? WHERE id_modelo=?',[$modelo,$marca,$id]);
  else gravar('INSERT INTO tb_modelo (nome,id_marca,login) VALUES (?,?,?)',[$modelo,$marca,$conta['login']]);
  registrarLog('modelos',$acao,'Modelo salvo: '.$modelo,['Modelo'=>$modelo]);responder(true,'Modelo salvo!');
 }
 if ($acao==='carros' || $acao==='carros_acessorios') {
  $itens=consultar('SELECT c.id_carro,c.placa,c.chassi,c.cor,c.ano,c.ano_modelo,c.valor,c.quilometragem,c.situacao,c.id_modelo,c.responsavel,c.vendido_em,m.nome AS modelo,ma.nome AS marca,c.responsavel AS proprietario FROM tb_carro c JOIN tb_modelo m ON m.id_modelo=c.id_modelo JOIN tb_marca ma ON ma.id_marca=m.id_marca ORDER BY c.id_carro DESC');
  $itens=array_values(array_filter($itens,function($c) use($admin) {
   $q=mb_strtolower(trim($_GET['busca'] ?? ''));return !$q || str_contains(mb_strtolower($c['id_carro'].' '.$c['placa'].' '.$c['marca'].' '.$c['modelo']),$q);
  }));
  foreach($itens as &$c) { $c['pode_editar']=($admin || $c['responsavel']===$conta['login']) && $c['situacao']==='D'; $c['ano_modelo_texto']=$c['ano'].'/'.($c['ano_modelo'] ?? 'Não informado'); $c['acessorios']=consultar('SELECT a.id_acessorio,a.nome FROM tb_carro_acessorio ca JOIN tb_acessorio a ON a.id_acessorio=ca.id_acessorio WHERE ca.id_carro=? ORDER BY a.nome',[$c['id_carro']]); $c['valor_numerico']=$c['valor'];$c['valor']=number_format($c['valor'],2,',','.'); }
  responder(true,'',$itens);
 }
 if ($acao==='carro' || $acao==='editar_carro') {
  $id=$dados['id_carro'] ?? null;if($acao==='editar_carro' && !$id) responder(false,'Selecione um veículo para editar.');$anterior=$id ? carroAutorizado($id) : null;
  if ($anterior && $anterior['situacao']==='V') responder(false,'Veículo vendido é somente leitura e não pode ser vendido novamente.',null,409);

  $modelo=consultar('SELECT * FROM tb_modelo WHERE id_modelo=?',[$dados['id_modelo'] ?? ''])[0] ?? null;
  if (!$modelo) responder(false,'Escolha um modelo válido.');
  $placa=strtoupper(trim($dados['placa'] ?? ''));$chassi=strtoupper(trim($dados['chassi'] ?? ''));$cor=trim($dados['cor'] ?? '');
  if(!preg_match('/^([0-9]{4})\/([0-9]{4})$/',trim($dados['ano_modelo_texto'] ?? ''),$anos)) responder(false,'Informe Ano/Modelo no formato 2026/2027.');
  $ano=$anos[1];$anoModelo=$anos[2];$valor=str_replace(',','.',(string)($dados['valor'] ?? ''));$km=(string)($dados['quilometragem'] ?? '');
  $situacao=$id ? ($dados['situacao'] ?? 'D') : 'D';
  if (!preg_match('/^[A-Z0-9]{7}$/',$placa) || !preg_match('/^[A-Z0-9]{5,30}$/',$chassi)) responder(false,'Confira a placa (7 caracteres) e o chassi (5 a 30).');
  if (mb_strlen($cor)<2 || mb_strlen($cor)>30 || !preg_match('/^[\p{L} ]+$/u',$cor)) responder(false,'Informe a cor com 2 a 30 letras.');
  foreach([$ano,$anoModelo] as $a) if (!preg_match('/^[0-9]{4}$/',$a) || $a<1900 || $a>date('Y')+1) responder(false,'Os anos devem ter quatro números, entre 1900 e o ano que vem.');
  if (!preg_match('/^[0-9]+(\.[0-9]{1,2})?$/',$valor) || $valor<=0 || $valor>99999999 || !preg_match('/^[0-9]{1,7}$/',$km)) responder(false,'Informe valor positivo e quilometragem inteira de 0 a 9999999.');
  if (!in_array($situacao,['D','V'],true)) responder(false,'Situação inválida.');
  if (consultar('SELECT id_carro FROM tb_carro WHERE (placa=? OR chassi=?) AND id_carro<>?',[$placa,$chassi,$id ?? 0])) responder(false,'Já existe um veículo com esta placa ou chassi.');
  $valores=[$placa,$chassi,$cor,$ano,$anoModelo,$valor,$km,$situacao,$modelo['id_modelo']];
  if ($id) gravar("UPDATE tb_carro SET placa=?,chassi=?,cor=?,ano=?,ano_modelo=?,valor=?,quilometragem=?,situacao=?,id_modelo=?,vendido_em=IF(?='V',CURRENT_TIMESTAMP,NULL) WHERE id_carro=?",array_merge($valores,[$situacao,$id]));
  else { gravar('INSERT INTO tb_carro (placa,chassi,cor,ano,ano_modelo,valor,quilometragem,situacao,id_modelo,responsavel) VALUES (?,?,?,?,?,?,?,?,?,?)',array_merge($valores,[$conta['login']]));$id=$pdo->lastInsertId(); }
  $detalhes=['Placa'=>$placa,'Situação'=>$situacao==='V'?'Vendido':'Disponível','Fabricação'=>$ano,'Ano-modelo'=>$anoModelo,'Cor'=>$cor,'Valor'=>$valor,'Quilometragem'=>$km];
  if($anterior) { $detalhes['Situação anterior']=$anterior['situacao']==='V'?'Vendido':'Disponível'; $detalhes['Cor anterior']=$anterior['cor']; $detalhes['Valor anterior']=$anterior['valor']; $detalhes['Quilometragem anterior']=$anterior['quilometragem']; $detalhes['Placa anterior']=$anterior['placa']; $detalhes['Chassi']=$chassi; }
  registrarLog('carros',$acao,'Veículo '.($anterior?'atualizado':'cadastrado').': '.$placa,$detalhes,null);responder(true,'Veículo salvo!');
 }
 if ($acao==='vincular' || $acao==='excluir_vinculo') {
  $c=carroAutorizado($dados['id_carro'] ?? '');if($c['situacao']==='V') responder(false,'Não é permitido alterar acessórios de um veículo vendido.',null,409);
  $id=$dados['id_acessorio'] ?? ''; $a=consultar('SELECT nome FROM tb_acessorio WHERE id_acessorio=?',[$id])[0] ?? null;
  if(!$a) responder(false,'Acessório não encontrado.');
  $existe=consultar('SELECT id_carro FROM tb_carro_acessorio WHERE id_carro=? AND id_acessorio=?',[$c['id_carro'],$id]);
  if (($acao==='vincular' && $existe) || ($acao==='excluir_vinculo' && !$existe)) responder(false,'O vínculo já existe ou já foi removido. Atualize a lista.');
  gravar($acao==='vincular'?'INSERT INTO tb_carro_acessorio VALUES (?,?)':'DELETE FROM tb_carro_acessorio WHERE id_carro=? AND id_acessorio=?',[$c['id_carro'],$id]);
  registrarLog('carros',$acao,'Acessórios do veículo atualizados.',['Placa'=>$c['placa'],'Acessório'=>$a['nome']]);responder(true,'Vínculo atualizado!');
 }
 if ($acao==='excluir_carro') {
  $c=carroAutorizado($dados['id_carro'] ?? '');protegerVendidos('c.id_carro=?',[$c['id_carro']]);
  gravar('DELETE FROM tb_carro_acessorio WHERE id_carro=?',[$c['id_carro']]);gravar('DELETE FROM tb_carro WHERE id_carro=?',[$c['id_carro']]);
  registrarLog('carros',$acao,'Veículo excluído: '.$c['placa'],['Placa'=>$c['placa']]);responder(true,'Veículo excluído!');
 }
 if ($acao==='excluir_modelo') {
  $m=consultar('SELECT * FROM tb_modelo WHERE id_modelo=? FOR UPDATE',[$dados['id_modelo'] ?? ''])[0] ?? null;
  if (!$m || (!$admin && $m['login']!==$conta['login'])) responder(false,'Modelo não encontrado ou sem acesso.',null,403);
  protegerVendidos('m.id_modelo=?',[$m['id_modelo']]);
  if(!$admin && consultar('SELECT id_carro FROM tb_carro WHERE id_modelo=? AND responsavel<>?',[$m['id_modelo'],$conta['login']])) responder(false,'Este modelo possui veículo de outro usuário. Peça a exclusão ao administrador.',null,403);
  gravar('DELETE FROM tb_carro_acessorio WHERE id_carro IN (SELECT id_carro FROM tb_carro WHERE id_modelo=?)',[$m['id_modelo']]);
  gravar('DELETE FROM tb_carro WHERE id_modelo=?',[$m['id_modelo']]);
  gravar('DELETE FROM tb_modelo WHERE id_modelo=?',[$m['id_modelo']]);registrarLog('modelos',$acao,'Modelo excluído: '.$m['nome'],['Modelo'=>$m['nome']]);responder(true,'Modelo excluído!');
 }
 if ($acao==='excluir_marca' || $acao==='excluir_acessorio' || $acao==='editar_marca' || $acao==='editar_acessorio') {
  $marca=str_ends_with($acao,'marca');$tabela=$marca?'tb_marca':'tb_acessorio';$coluna=$marca?'id_marca':'id_acessorio';$id=$dados[$coluna] ?? '';
  $item=consultar("SELECT * FROM $tabela WHERE $coluna=? FOR UPDATE",[$id])[0] ?? null;if(!$item) responder(false,'Cadastro não encontrado.');
  if(str_starts_with($acao,'excluir')) {
   if($marca) {
    protegerVendidos('m.id_marca=?',[$id]);
    if(!$admin && consultar('SELECT c.id_carro FROM tb_carro c JOIN tb_modelo m ON m.id_modelo=c.id_modelo WHERE m.id_marca=? AND c.responsavel<>?',[$id,$conta['login']])) responder(false,'Esta marca possui veículo de outro usuário. Peça a exclusão ao administrador.',null,403);
    $modelos=consultar('SELECT login FROM tb_modelo WHERE id_marca=?',[$id]);
    if(!$admin) foreach($modelos as $modelo) if($modelo['login']!==$conta['login']) responder(false,'Esta marca possui cadastros de outro usuário. Peça a exclusão ao administrador.',null,403);
    gravar('DELETE FROM tb_carro_acessorio WHERE id_carro IN (SELECT c.id_carro FROM tb_carro c JOIN tb_modelo m ON m.id_modelo=c.id_modelo WHERE m.id_marca=?)',[$id]);
    gravar('DELETE FROM tb_carro WHERE id_modelo IN (SELECT id_modelo FROM tb_modelo WHERE id_marca=?)',[$id]);
    gravar('DELETE FROM tb_modelo WHERE id_marca=?',[$id]);
   } else {
    $carros=consultar('SELECT c.* FROM tb_carro c JOIN tb_carro_acessorio ca ON ca.id_carro=c.id_carro WHERE ca.id_acessorio=? FOR UPDATE',[$id]);
    foreach($carros as $c) { if($c['situacao']==='V') responder(false,'O acessório faz parte do histórico de um veículo vendido.',null,409); if(!$admin && $c['responsavel']!==$conta['login']) responder(false,'Acessório utilizado por outro usuário. Peça a exclusão ao administrador.',null,403); }
    gravar('DELETE FROM tb_carro_acessorio WHERE id_acessorio=?',[$id]);
   }
  } else {
   if($marca) protegerVendidos('m.id_marca=?',[$id]);
   elseif(consultar("SELECT c.id_carro FROM tb_carro c JOIN tb_carro_acessorio ca ON ca.id_carro=c.id_carro WHERE ca.id_acessorio=? AND c.situacao='V'",[$id])) responder(false,'Cadastro associado a um veículo vendido.',null,409);
  }
  if(str_starts_with($acao,'excluir')) gravar("DELETE FROM $tabela WHERE $coluna=?",[$id]);
  else { $nome=trim($dados['nome'] ?? '');if(!$nome || mb_strlen($nome)>50) responder(false,'Informe um nome com até 50 caracteres.');gravar("UPDATE $tabela SET nome=? WHERE $coluna=?",[$nome,$id]); }
  registrarLog($marca?'marcas':'carros',$acao,'Catálogo atualizado: '.$item['nome'],['Nome'=>$item['nome']]);responder(true,'Catálogo atualizado!');
 }
 if ($acao==='excluir_usuario') {
  $alvo=consultar('SELECT login,perfil FROM tb_usuario WHERE login=? FOR UPDATE',[$dados['usuario'] ?? ''])[0] ?? null;
  if(!$alvo || $alvo['perfil']==='admin' || $alvo['login']===$conta['login']) responder(false,'Conta não encontrada ou protegida.');
  protegerVendidos('c.responsavel=? OR m.login=?',[$alvo['login'],$alvo['login']]);
  gravar('DELETE FROM tb_carro_acessorio WHERE id_carro IN (SELECT c.id_carro FROM tb_carro c JOIN tb_modelo m ON m.id_modelo=c.id_modelo WHERE c.responsavel=? OR m.login=?)',[$alvo['login'],$alvo['login']]);
  gravar('DELETE FROM tb_carro WHERE responsavel=? OR id_modelo IN (SELECT id_modelo FROM tb_modelo WHERE login=?)',[$alvo['login'],$alvo['login']]);
  gravar('DELETE FROM tb_modelo WHERE login=?',[$alvo['login']]);
  gravar('DELETE FROM tb_log_login WHERE login=?',[$alvo['login']]);gravar('DELETE FROM tb_usuario WHERE login=?',[$alvo['login']]);registrarLog('conta',$acao,'Conta excluída.',['Usuário'=>$alvo['login']]);responder(true,'Conta excluída!');
 }
 if ($acao==='logs') {
  $categoria=$_GET['categoria'] ?? '';if(!in_array($categoria,['modelos','marcas','carros','geral'],true)) responder(false,'Log inválido.');
  if($categoria==='geral' && !$admin) responder(false,'O log geral é exclusivo do administrador.',null,403);
  $itens=consultar("SELECT id_log,usuario,categoria,acao,resumo,data_hora,detalhes FROM tb_log_atividade WHERE (?='geral' OR categoria=?) AND (?=1 OR usuario=?) ORDER BY id_log DESC",[$categoria,$categoria,$admin ? 1 : 0,$conta['login']]);
  // Só campos compreensíveis e previamente conhecidos saem da API.
  $permitidos=['Usuário','Modelo','Placa','Situação','Situação anterior','Fabricação','Ano-modelo','Cor','Valor','Quilometragem','Acessório','Nome','Cor anterior','Valor anterior','Quilometragem anterior','Placa anterior','Chassi'];
  foreach($itens as &$l) { $original=json_decode($l['detalhes'],true) ?? []; $limpo=[];foreach(($admin ? $permitidos : ['Placa','Situação','Nome']) as $campo)if(isset($original[$campo]) && is_scalar($original[$campo]))$limpo[$campo]=$original[$campo]; if(!$limpo)$limpo=['Operação'=>$l['resumo']];$l['detalhes']=json_encode($limpo,JSON_UNESCAPED_UNICODE); }
  responder(true,'',$itens);
 }
}

$acao = $_GET['acao'] ?? '';
$dados = json_decode(file_get_contents('php://input'), true);
if (!is_array($dados)) {
    $dados = [];
}
$publicas = ['sessao', 'login', 'logout', 'cadastro', 'candidato'];
$leituras = ['sessao', 'marcas', 'modelos', 'carros', 'acessorios', 'carros_acessorios', 'historico', 'logs', 'usuarios', 'candidaturas'];
$escritas = ['editar_carro','editar_modelo','editar_marca','editar_acessorio','login', 'cadastro', 'candidato', 'marca', 'modelo', 'acessorio', 'carro', 'vincular', 'alterar_senha', 'excluir_marca', 'excluir_modelo', 'excluir_carro', 'excluir_acessorio', 'excluir_vinculo', 'excluir_usuario', 'excluir_candidatura'];
if (!in_array($acao, array_merge($leituras, $escritas, ['logout']), true)) {
    responder(false, 'Ação inválida.', null, 400);
}
if (in_array($acao, $escritas, true) && $_SERVER['REQUEST_METHOD'] !== 'POST') {
    responder(false, 'Use POST para esta ação.', null, 405);
}

try {
    require __DIR__ . '/conexao.php';
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    $pdo->exec("SET time_zone = '-03:00'");

    // Confere a conta no banco a cada pedido. Uma conta excluída perde o acesso.
    $conta = null;
    if (isset($_SESSION['usuario'])) {
        $conta = consultar('SELECT login, perfil FROM tb_usuario WHERE login = ?', [$_SESSION['usuario']])[0] ?? null;
        if (!$conta) {
            $_SESSION = [];
        }
    }
    $admin = $conta && $conta['perfil'] === 'admin';
    if (!in_array($acao, $publicas, true) && !$conta) {
        responder(false, 'Sua sessão terminou. Faça login novamente.', null, 401);
    }
    if (in_array($acao, ['usuarios', 'excluir_usuario', 'candidaturas', 'excluir_candidatura'], true) && !$admin) {
        responder(false, 'Esta função é exclusiva do administrador.', null, 403);
    }

    // Toda exclusão exige as credenciais de quem está logado.
    if (str_starts_with($acao, 'excluir_')) {
        $loginConfirma = trim($dados['login_confirmacao'] ?? $dados['login'] ?? '');
        $senhaConfirma = $dados['senha_confirmacao'] ?? $dados['senha'] ?? '';
        $hash = consultar('SELECT senha FROM tb_usuario WHERE login = ?', [$conta['login']])[0]['senha'];
        if (mb_strtolower($loginConfirma) !== mb_strtolower($conta['login']) || !password_verify($senhaConfirma, $hash)) {
            responder(false, 'Login ou senha incorretos. Nada foi apagado.');
        }
    }
    if (in_array($acao, $escritas, true) || $acao === 'logout') {
        $pdo->beginTransaction();
    }

    executarCadastros($acao, $dados);

    if ($acao === 'sessao') {
        responder(true, '', null, 200, ['usuario' => $conta['login'] ?? null, 'admin' => (bool) $admin]);
    }
    elseif ($acao === 'login') {
        $login = trim($dados['login'] ?? '');
        $senha = $dados['senha'] ?? '';
        $usuarioBanco = consultar('SELECT * FROM tb_usuario WHERE login = ?', [$login])[0] ?? null;
        if (!$usuarioBanco || !password_verify($senha, $usuarioBanco['senha'])) {
            registrarLog('conta', 'login_recusado', 'Tentativa de login recusada.', ['login_informado' => mb_substr($login, 0, 50)], 'visitante');
            $pdo->commit();
            responder(false, 'Login ou senha incorretos.');
        }
        $st = $pdo->prepare('INSERT INTO tb_log_login (login) VALUES (?)');
        $st->execute([$usuarioBanco['login']]);
        registrarLog('conta', 'login', 'Entrada no sistema.', [], $usuarioBanco['login']);
        $pdo->commit();
        session_regenerate_id(true);
        $_SESSION['usuario'] = $usuarioBanco['login'];
        responder(true, '', null, 200, ['usuario' => $usuarioBanco['login'], 'admin' => $usuarioBanco['perfil'] === 'admin']);
    }
    elseif ($acao === 'logout') {
        if ($conta) {
            registrarLog('conta', 'logout', 'Saída do sistema.');
        }
        $pdo->commit();
        $_SESSION = [];
        session_destroy();
        responder(true);
    }
    elseif ($acao === 'cadastro') {
        $login = trim($dados['login'] ?? '');
        $senha = $dados['senha'] ?? '';
        if ($login === '' || $senha === '') responder(false, 'Preencha o login e a senha.');
        if (mb_strlen($login) > 50 || strlen($senha) > 10) responder(false, 'Use até 50 caracteres no login e até 10 na senha.');
        if (mb_strtolower($login) === 'admin') responder(false, 'Este login é reservado ao administrador.');
        if (consultar('SELECT login FROM tb_usuario WHERE login = ?', [$login])) responder(false, 'Esse login já existe.');
        $st = $pdo->prepare('INSERT INTO tb_usuario (login, senha) VALUES (?, ?)');
        $st->execute([$login, password_hash($senha, PASSWORD_DEFAULT)]);
        registrarLog('conta', 'cadastro', 'Conta cadastrada.', ['login' => $login], $login);
        responder(true, 'Usuário cadastrado! Faça login.');
    }
    elseif ($acao === 'marcas') {
        responder(true, '', consultar('SELECT * FROM tb_marca ORDER BY nome'));
    }
    elseif ($acao === 'marca' || $acao === 'acessorio') {
        $nome = trim($dados['nome'] ?? '');
        $marca = $acao === 'marca';
        $tabela = $marca ? 'tb_marca' : 'tb_acessorio';
        $categoria = $marca ? 'marcas' : 'carros';
        if ($nome === '' || mb_strlen($nome) > 50) responder(false, 'Digite um nome com até 50 caracteres.');
        if (consultar("SELECT nome FROM $tabela WHERE nome = ?", [$nome])) responder(false, 'Esse nome já está cadastrado.');
        $st = $pdo->prepare("INSERT INTO $tabela (nome) VALUES (?)");
        $st->execute([$nome]);
        $pdo->prepare("UPDATE $tabela SET responsavel=? WHERE id_" . $acao . "=?")->execute([$conta['login'],$pdo->lastInsertId()]);
        registrarLog($categoria, 'cadastro_' . $acao, ($marca ? 'Marca cadastrada: ' : 'Acessório cadastrado: ') . $nome, ['Nome' => $nome]);
        responder(true, $marca ? 'Marca cadastrada!' : 'Acessório cadastrado!');
    }
    elseif ($acao === 'alterar_senha') {
        $atual = $dados['senha_atual'] ?? '';
        $nova = $dados['nova_senha'] ?? '';
        $hash = consultar('SELECT senha FROM tb_usuario WHERE login = ?', [$conta['login']])[0]['senha'];
        if (!password_verify($atual, $hash)) responder(false, 'A senha atual está incorreta.');
        if ($nova === '' || strlen($nova) > 10) responder(false, 'A nova senha deve ter de 1 a 10 caracteres.');
        if ($nova !== ($dados['confirmacao'] ?? '')) responder(false, 'A confirmação da nova senha não confere.');
        $st = $pdo->prepare('UPDATE tb_usuario SET senha = ? WHERE login = ?');
        $st->execute([password_hash($nova, PASSWORD_DEFAULT), $conta['login']]);
        registrarLog('conta', 'alterar_senha', 'Senha alterada.');
        responder(true, 'Senha alterada com sucesso.');
    }
    elseif ($acao === 'historico') {
        $sql = "SELECT login AS usuario, DATE_FORMAT(data_hora_login, '%d/%m/%Y') AS data, DATE_FORMAT(data_hora_login, '%H:%i:%s') AS hora FROM tb_log_login";
        $parametros = [];
        if (!$admin) { $sql .= ' WHERE login = ?'; $parametros[] = $conta['login']; }
        responder(true, '', consultar($sql . ' ORDER BY data_hora_login DESC, id_log DESC', $parametros));
    }
    elseif ($acao === 'candidato') {
        $nome = trim($dados['nome'] ?? '');
        $email = trim($dados['email'] ?? '');
        $celular = trim($dados['celular'] ?? '');
        $cidade = trim($dados['cidade'] ?? '');
        $estado = $dados['estado'] ?? '';
        $cargo = $dados['cargo'] ?? '';
        $linkedin = trim($dados['linkedin'] ?? '');
        $estados = ['AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO'];
        $cargos = ['Vendedor de resenha','Gerente da resenha','Atendente de resenha','Mecânico da resenha','Lavador de resenha','Administrativo da resenha','Outra resenha'];
        if (mb_strlen($nome) < 3 || mb_strlen($nome) > 50 || !preg_match('/^[\p{L} \'-]+$/u', $nome)) responder(false, 'Digite seu nome completo (só letras, até 50 caracteres).');
        if (!filter_var($email, FILTER_VALIDATE_EMAIL) || strlen($email) > 50) responder(false, 'Digite um e-mail válido (até 50 caracteres).');
        if (!preg_match('/^[1-9][0-9]9[0-9]{8}$/', $celular)) responder(false, 'Digite o celular com DDD, só números (11 dígitos).');
        if (mb_strlen($cidade) < 2 || mb_strlen($cidade) > 20 || !preg_match('/^[\p{L} \'-]+$/u', $cidade)) responder(false, 'Digite a cidade (só letras, até 20 caracteres).');
        if (!in_array($estado, $estados, true)) responder(false, 'Escolha o estado.');
        if (!in_array($cargo, $cargos, true)) responder(false, 'Escolha o cargo pretendido.');
        if ($linkedin !== '' && (strlen($linkedin) > 30 || stripos($linkedin, 'linkedin.com/') === false)) responder(false, 'O link do LinkedIn precisa ser do linkedin.com e ter até 30 caracteres.');
        if (consultar('SELECT id_candidato FROM tb_trabalheconosco WHERE email = ?', [$email])) responder(false, 'Já recebemos uma candidatura com esse e-mail.');
        $st = $pdo->prepare('INSERT INTO tb_trabalheconosco (nome, email, celular, cidade, estado, cargo_pretendido, link_linkdin) VALUES (?, ?, ?, ?, ?, ?, ?)');
        $st->execute([$nome, $email, $celular, $cidade, $estado, $cargo, $linkedin ?: null]);
        registrarLog('candidaturas', 'candidatura', 'Candidatura recebida.', ['id_candidato' => $pdo->lastInsertId(), 'nome' => $nome, 'email' => $email, 'cargo' => $cargo], 'visitante');
        responder(true, 'Candidatura enviada! Obrigado, entraremos em contato.');
    }
    elseif ($acao === 'acessorios') {
        responder(true, '', consultar('SELECT * FROM tb_acessorio ORDER BY nome'));
    }
    elseif ($acao === 'usuarios') {
        responder(true, '', consultar('SELECT login, senha AS senha_hash, perfil FROM tb_usuario ORDER BY login'));
    }
    elseif ($acao === 'candidaturas') {
        responder(true, '', consultar('SELECT * FROM tb_trabalheconosco ORDER BY id_candidato DESC'));
    }
    elseif ($acao === 'excluir_candidatura') {
        $id = $dados['id_candidato'] ?? '';
        $registro = consultar('SELECT * FROM tb_trabalheconosco WHERE id_candidato = ? FOR UPDATE', [$id])[0] ?? null;
        if (!$registro) responder(false, 'Candidatura não encontrada.');
        $st = $pdo->prepare('DELETE FROM tb_trabalheconosco WHERE id_candidato = ?');
        $st->execute([$id]);
        registrarLog('candidaturas', $acao, 'Candidatura excluída.', ['registro' => $registro]);
        responder(true, 'Candidatura apagada!');
    }
} catch (Throwable $e) {
    error_log('Revendedora [' . $acao . ']: ' . $e->getMessage());
    $codigo = $e instanceof PDOException ? ($e->errorInfo[1] ?? 0) : 0;
    $mensagem = 'Não foi possível concluir a operação. Tente novamente ou informe o código ao responsável.';
    if ($e instanceof PDOException) {
        $mensagem = 'O serviço está temporariamente indisponível. Tente novamente ou procure o responsável.';
        if (in_array($codigo, [1054, 1146, 1406], true)) $mensagem = 'A atualização do sistema precisa ser concluída pelo responsável.';
        if ($codigo === 1062) $mensagem = 'Já existe um cadastro com esses dados.';
        if ($codigo === 1452) $mensagem = 'O cadastro relacionado não existe mais. Atualize a página.';
    }
    if ($codigo === 1451 || $codigo === 1644) $mensagem = 'Operação bloqueada para preservar cadastros relacionados e histórico de vendidos.';
    responder(false, $mensagem, null, 500);
}
