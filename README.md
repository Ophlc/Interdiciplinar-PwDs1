# Interdisciplinar Angular versão 9 — Revendedora de Carros

## Sobre o projeto

Este projeto foi desenvolvido como parte de uma atividade interdisciplinar das disciplinas de Banco de Dados, Programação Web e Desenvolvimento de Sistemas, com a proposta de criar um sistema interno para uma revendedora de carros.

A aplicação permite cadastrar marcas, modelos, veículos e acessórios, consultar os carros disponíveis e vendidos e acompanhar as atividades realizadas pelos usuários.

A versão 9 renova a apresentação do sistema com preto, branco, grafite e detalhes em roxo. O foco desta entrega está no CSS: cores, tipografia, espaçamento, formulários, botões e tabelas receberam um novo acabamento, preservando as funcionalidades da versão 8.

O ZIP `InterdiciplinarAngular9.zip` é a referência desta versão. Nele, `revendedora.html`, `revendedora.ts`, a API PHP e `banco.sql` permanecem iguais aos da versão 8. Não há novas regras de negócio ou migração de banco para aplicar o tema.

## O que mudou da versão 8 para a versão 9

| Elemento | Versão 8 — v10.0.0 | Versão 9 — v11.0.0 |
|---|---|---|
| Identidade visual | Predomínio de preto, branco e cinza. | Base preservada, com destaques em roxo `#7d18cf` e roxo escuro `#470f75`. |
| Tipografia | Títulos em Impact e textos em Arial. | Fonte Segoe UI, com alternativas locais, e nova hierarquia de tamanhos e pesos. |
| Cartões | Caixas com cantos retos e borda superior marcada. | Cantos arredondados, bordas suaves, sombras discretas e mais espaço interno. |
| Formulários | Campos com acabamento simples. | Campos arredondados, espaçamento maior e foco destacado em roxo. |
| Botões | Botões escuros com texto em maiúsculas. | Acabamento arredondado, estados de interação e ações de exclusão com tratamento vermelho próprio. |
| Barra lateral | Menu preto com seleção em cinza. | Menu em grafite, seleção em roxo e melhor espaçamento entre opções. |
| Tabelas | Grade com bordas em todas as células. | Contorno arredondado, linhas mais leves e destaque suave ao passar o mouse. |
| Acesso ao sistema | Logo acima do formulário. | Logo original preservada, com formulário mais amplo e cartão sobreposto à base do cabeçalho. |
| Celular e acessibilidade | Menu expansível e adaptação básica. | Ajustes de espaçamento, foco visível para teclado e respeito à preferência por movimento reduzido. |

A barra lateral continua à esquerda e acompanha a altura completa da página. A ordem dos menus, as permissões, a confirmação de exclusões, a separação entre disponíveis e vendidos e a exportação dos logs continuam funcionando como antes.

## Como aplicar apenas a atualização visual

Se a versão 8 já está funcionando, substitua somente:

```text
src/app/revendedora/revendedora.css
```

Salve e recarregue a página; se necessário, use **Ctrl+F5**. Não é necessário executar SQL, reinstalar dependências nem alterar a API ou a configuração local de conexão.

As cores principais ficam no início do CSS:

```css
--cobre: #7d18cf;
--cobre-escuro: #470f75;
```

Os nomes das variáveis foram mantidos por compatibilidade com o tema anterior; seus valores agora são roxos. A logo original continua sendo utilizada, sem fontes ou bibliotecas visuais externas.

## Tecnologias utilizadas

| Tecnologia | Utilização |
|---|---|
| Angular e TypeScript | Telas, formulários e comunicação com a API. |
| HTML5 e CSS3 | Estrutura das páginas, aparência e adaptação para celular. |
| PHP 8 ou superior | API, autenticação, sessões, validações e permissões. |
| PDO | Comunicação com o banco por consultas preparadas. |
| MySQL 8 | Armazenamento dos cadastros e históricos. |
| XAMPP | Execução do Apache e do PHP no ambiente local. |
| MySQL Workbench | Criação, consulta e administração do banco. |

## Funcionalidades

- Cadastro de usuários e autenticação com login e senha.
- Cadastro, consulta e exclusão de marcas, modelos e acessórios.
- Cadastro e edição de veículos, com placa, chassi, modelo, ano/modelo, cor, valor e quilometragem.
- Consulta dos veículos disponíveis e dos veículos vendidos em telas separadas.
- Visualização dos dados completos do veículo e dos acessórios associados.
- Associação e remoção individual de acessórios dos veículos.
- Pesquisas por ID, placa, marca/modelo e outras informações adequadas a cada cadastro.
- Confirmação de exclusões com login e senha da conta logada.
- Alteração de senha e histórico de acessos.
- Formulário público Trabalhe conosco e consulta administrativa das candidaturas.
- Administração de usuários, com consulta aos perfis e hashes das senhas.
- Logs de atividades com exportação CSV e cópia para a área de transferência.

## Navegação

A barra lateral fica no canto esquerdo e acompanha a altura completa da página, incluindo a área ao lado do rodapé. As categorias podem ser abertas e recolhidas. No celular, o botão **Menu** controla a exibição das opções.

### Carros

As opções aparecem nesta ordem:

1. **Cadastrar veículos.**
2. **Veículo/Acessórios.**
3. **Veículos cadastrados.**
4. **Veículos vendidos.**

### Cadastros

- Marcas.
- Modelos.
- Acessórios.

### Administração — somente para o admin

- Usuários.
- Senha e histórico.
- Candidaturas.
- Logs gerais.

Para o usuário comum, **Senha e histórico** continua dentro de **Minha conta**. Para o admin, essa mesma tela fica em **Administração**, logo abaixo de **Usuários**.

## Cadastro e edição de veículos

Todo veículo novo é cadastrado como **Disponível**. O campo **Situação** aparece somente na edição.

O formulário possui uma única caixa **Ano/Modelo**, ao lado do campo Modelo, preenchida no formato:

```text
2026/2027
```

O primeiro ano indica a fabricação e o segundo indica o ano-modelo. Embora sejam digitados na mesma caixa, os valores continuam armazenados separadamente no banco.

Cor, valor e quilometragem ficam na mesma linha quando houver espaço na tela.

A placa e o chassi são obrigatórios e únicos. O sistema também valida os anos, o valor positivo e a quilometragem inteira, que pode ser zero.

### Veículos cadastrados e vendidos

**Veículos cadastrados** mostra somente os disponíveis. A listagem apresenta o ID, a marca/modelo e os botões com ícones:

- **Olho:** abre os detalhes completos, incluindo os acessórios.
- **Lápis:** abre a edição quando o usuário possui permissão.

Ao editar um veículo disponível e salvar a situação como **Vendido**, ele sai da lista de cadastrados e aparece em **Veículos vendidos**. O sistema abre a tela de vendidos após confirmar a alteração.

Veículos vendidos permanecem disponíveis para consulta histórica. Não podem ser vendidos novamente, editados, excluídos ou ter seus acessórios alterados. Essa proteção também se aplica às exclusões indiretas de outros cadastros.

## Veículo/Acessórios

O usuário seleciona o veículo e escolhe os acessórios do catálogo para associar a ele, quando possui permissão.

Na tabela **Veículos e seus acessórios**, cada carro aparece uma única vez. Dentro da linha do veículo, os acessórios são organizados em linhas próprias, com duas colunas: **ID** e **Acessório**.

Exemplo:

| Veículo | ID do acessório | Acessório |
|---|---|---|
| Toyota Corolla | 1 | Ar condicionado |
| Mesmo veículo | 2 | Roda de liga leve |

Para remover um item, selecione o veículo e utilize **Remover somente este acessório** no item desejado. A operação exige confirmação com login e senha e preserva as outras associações.

Remover a associação de um carro não exclui o acessório do catálogo. A tela também permite consultar os acessórios dos veículos vendidos, mantendo seu histórico protegido.

## Perfis e permissões

### Usuário comum

Todos os usuários logados podem consultar os veículos na mesma listagem. A edição, exclusão e alteração de acessórios de um veículo disponível ficam restritas ao responsável pelo cadastro ou ao administrador.

Os usuários comuns também cadastram marcas, modelos e acessórios. Exclusões de marcas e modelos não podem apagar indiretamente veículos de outros autores sem intervenção do admin, nem atingir veículos vendidos.

Nos logs, cada usuário comum consulta suas próprias atividades autorizadas.

### Administrador

O admin possui acesso geral aos cadastros, usuários, candidaturas e logs. Na tabela de usuários, as senhas são exibidas somente como **hashes**, sem revelar as senhas originais.

A conta inicial é criada pelo `banco.sql`:

| Campo | Valor inicial |
|---|---|
| Login | `admin` |
| Senha | `admin123` |

A senha pode ser alterada em **Administração → Senha e histórico**. O cadastro público cria apenas usuários comuns. A própria conta do administrador não pode ser excluída.

As permissões são verificadas pela API PHP, além da apresentação dos botões na interface.

## Exclusões e preservação dos dados

Todas as exclusões exigem **o login e a senha da conta que está logada**. Credenciais de outra conta não confirmam a operação.

Algumas exclusões removem registros dependentes, como os carros de um modelo ou os vínculos de um acessório. A operação é bloqueada quando afetaria um veículo vendido ou dados de outro autor sem autorização.

Os logs de atividades são preservados mesmo quando um cadastro é excluído. O banco também possui restrições e gatilhos para proteger os veículos vendidos e suas associações.

## Logs de atividades

| Log | Conteúdo |
|---|---|
| Modelos | Atividades relacionadas aos modelos. |
| Marcas | Atividades relacionadas às marcas. |
| Carros | Atividades de veículos, acessórios e associações. |
| Geral | Conjunto das atividades, disponível somente para o admin. |

Os painéis possuem opções para **exibir**, **ocultar**, **atualizar**, **salvar CSV** e **copiar** o log.

O usuário comum recebe informações resumidas das próprias ações. O admin também consulta detalhes das operações em campos legíveis, sem JSON bruto, SQL, credenciais ou estrutura interna do banco.

Senhas digitadas e hashes não são copiados para os logs. Os hashes ficam somente na tabela administrativa de usuários.

### Exportação e área de transferência

A exportação respeita as permissões da conta e inclui os registros carregados no painel. O CSV utiliza ponto e vírgula e UTF-8 com BOM.

O nome identifica a categoria, o usuário, a data e o horário de Brasília:

```text
log_carros_admin_2026-11-19_15-30-05-123.csv
```

Se o navegador bloquear a cópia automática, o sistema apresenta o texto selecionado para copiar com **Ctrl+C**.

Os logs começam a registrar os eventos a partir da instalação da funcionalidade. Operações antigas que não foram gravadas não são reconstruídas.

## Banco de dados

Nome do banco: **`bd_revendedoracarros`**.

| Tabela | Finalidade |
|---|---|
| `tb_usuario` | Contas, perfis e hashes das senhas. |
| `tb_marca` | Marcas dos veículos. |
| `tb_modelo` | Modelos associados às marcas e ao usuário que cadastrou. |
| `tb_carro` | Dados dos veículos, responsável, anos e situação. |
| `tb_acessorio` | Catálogo de acessórios. |
| `tb_carro_acessorio` | Associações entre carros e acessórios. |
| `tb_log_login` | Histórico de acessos. |
| `tb_log_atividade` | Registro das atividades. |
| `tb_trabalheconosco` | Candidaturas do formulário público. |

Um modelo pertence a uma marca, e um carro possui um modelo. A relação entre carros e acessórios é de muitos para muitos, representada por `tb_carro_acessorio`.

## Como executar o projeto

### 1. Preparar o ambiente

Instale Node.js/npm e Angular CLI compatíveis entre si, XAMPP com PHP 8 ou superior e as extensões `pdo_mysql` e `mbstring`, MySQL Server 8 e MySQL Workbench.

Para instalar e conferir o Angular CLI:

```bash
npm install -g @angular/cli
ng version
```

### 2. Configurar o Angular

O projeto disponibiliza a pasta `src` para copiar para uma aplicação Angular.

Se ainda não possui essa aplicação criada:

```bash
ng new revendedora-carros
cd revendedora-carros
```

Selecione **CSS** e desative **SSR/SSG**. Depois substitua o `src` gerado pelo `src` deste projeto. Se a aplicação já existe, pare o servidor antes de substituir os arquivos.

### 3. Criar o banco

Em uma instalação nova, abra o MySQL Workbench e execute **somente o `banco.sql` desta versão**. Ele já contém a estrutura completa.

**Atenção:** `banco.sql` apaga o banco existente e recria as tabelas. Faça backup antes de utilizá-lo caso existam dados que precisam ser mantidos.

Não execute esse arquivo apenas para reiniciar o sistema ou aplicar ajustes de menu. Para atualizar bancos de versões antigas, utilize uma migração compatível com sua estrutura; o pacote atual não inclui um script incremental separado.

### 4. Configurar a API

Copie `api-revendedora` para:

```text
C:\xampp\htdocs\api-revendedora
```

Ajuste host, porta, banco, usuário e senha no `conexao.php` de acordo com a máquina:

| Ambiente utilizado no projeto | Porta do MySQL |
|---|---|
| Computador de casa | `3306` |
| Máquinas da Etec | `3307` |

Essas portas são do MySQL. O Angular utiliza a porta 4200.

Mantenha suas credenciais locais e não publique senhas reais do banco no GitHub. Inicie o Apache e o serviço MySQL utilizado pela máquina. Se o MySQL Server é separado do XAMPP, não é necessário iniciar também o MySQL do XAMPP.

Endereço da API:

```text
http://localhost/api-revendedora/api.php
```

Exemplo de consulta da sessão:

```text
http://localhost/api-revendedora/api.php?acao=sessao
```

### 5. Iniciar a aplicação

Dentro do projeto Angular:

```bash
ng serve -o
```

Abra **http://localhost:4200**. Esse é o endereço liberado pelo CORS para a comunicação com credenciais da sessão. Usar `127.0.0.1` ou outra porta pode impedir a autenticação.

Parar e iniciar Angular, Apache ou MySQL não exige executar SQL novamente. Os dados continuam salvos.

## Estrutura dos principais arquivos

```text
.
├── api-revendedora/
│   ├── api.php
│   └── conexao.php
├── src/
│   ├── app/
│   │   ├── revendedora/
│   │   │   ├── revendedora.ts
│   │   │   ├── revendedora.html
│   │   │   ├── revendedora.css
│   │   │   └── logo.png
│   │   ├── app.ts
│   │   ├── app.html
│   │   ├── app.config.ts
│   │   └── app.routes.ts
│   ├── index.html
│   ├── main.ts
│   └── styles.css
├── banco.sql
├── Passo a Passo.txt
└── README.md
```

O componente `Revendedora` organiza as telas e formulários. A API recebe as requisições, valida os dados e permissões e retorna JSON. O `conexao.php` configura o acesso ao MySQL.

A autenticação usa sessões PHP. As senhas são armazenadas com `password_hash` e verificadas com `password_verify`.

---

**Desenvolvido por System of &lt;Devs&gt;**

Projeto Interdisciplinar — Angular, versão 9. Release: `v11.0.0 — InterdiciplinarAngular9`.
