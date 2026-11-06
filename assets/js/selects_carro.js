// Selects: marca -> modelo -> versão
(function () {
  var marca = document.getElementById('marca');
  var modelo = document.getElementById('modelo');
  var versao = document.getElementById('versao');
  if (!marca || !modelo || !versao) return;

  var modeloEscolhido = modelo.getAttribute('data-escolhido') || '';
  var versaoEscolhida = versao.getAttribute('data-escolhido') || '';

  function opcao(valor, texto) {
    var op = document.createElement('option');
    op.value = valor;
    op.textContent = texto;
    return op;
  }

  // Preenche um select com a lista que vem do servidor
  function carregar(select, url, escolhido, textoAntes, textoEscolha, depois) {
    select._pedido = (select._pedido || 0) + 1;
    var meuPedido = select._pedido;

    select.innerHTML = '';
    if (!url) {
      select.appendChild(opcao('', textoAntes));
      if (depois) depois();
      return;
    }

    select.appendChild(opcao('', 'Carregando...'));
    fetch(url)
      .then(function (resposta) { return resposta.json(); })
      .then(function (lista) {
        if (meuPedido !== select._pedido) return;   // Quando o usuário ja escolheu
        select.innerHTML = '';
        select.appendChild(opcao('', lista.length ? textoEscolha : 'Nenhum item cadastrado'));
        lista.forEach(function (item) {
          var op = opcao(item.id, item.nome);
          if (String(item.id) === escolhido) op.selected = true;
          select.appendChild(op);
        });
        if (depois) depois();
      })
      .catch(function () {
        if (meuPedido !== select._pedido) return;
        select.innerHTML = '';
        select.appendChild(opcao('', 'Erro ao carregar'));
      });
  }

  function carregarVersoes() {
    carregar(
      versao,
      modelo.value ? 'versoes_json.php?id_modelo=' + encodeURIComponent(modelo.value) : '',
      versaoEscolhida,
      'Selecione o modelo primeiro',
      'Selecione a versão'
    );
  }

  function carregarModelos() {
    carregar(
      modelo,
      marca.value ? 'modelos_json.php?id_marca=' + encodeURIComponent(marca.value) : '',
      modeloEscolhido,
      'Selecione a marca primeiro',
      'Selecione o modelo',
      carregarVersoes
    );
  }

  marca.addEventListener('change', function () {
    modeloEscolhido = '';
    versaoEscolhida = '';
    carregarModelos();
  });

  modelo.addEventListener('change', function () {
    versaoEscolhida = '';
    carregarVersoes();
  });

  carregarModelos();
})();
