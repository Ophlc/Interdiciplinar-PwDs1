# Interdisciplinar Angular versão 7 — Revendedora de Carros

## Sobre o projeto

Este projeto foi desenvolvido como parte de uma atividade interdisciplinar das disciplinas de Banco de Dados, Programação Web e Desenvolvimento de Sistemas, com a proposta de criar um sistema para uma revendedora de carros.

A ideia é simular um sistema interno utilizado pelos funcionários, permitindo cadastrar e consultar marcas, modelos, veículos e acessórios.

Nesta versão, também temos o perfil de administrador, os logs de atividades e a confirmação com login e senha antes das exclusões.

O sistema utiliza Angular no Front-End, PHP no Back-End e MySQL para armazenar os dados.

## Tecnologias utilizadas

| Tecnologia | Utilização |
|---|---|
| Angular | Componentes, formulários e comunicação com a API. |
| TypeScript | Programação das funcionalidades do Front-End. |
| HTML5 e CSS3 | Estrutura e aparência das telas. |
| PHP 8 ou superior | API, sessões, validações e permissões. |
| PDO | Comunicação do PHP com o banco de dados. |
| MySQL 8 | Armazenamento dos cadastros e logs. |
| XAMPP | Execução do Apache e do PHP no ambiente local. |
| MySQL Workbench | Criação, atualização e consulta do banco de dados. |

## Funcionalidades

- **Cadastro de usuários:** criação de contas para acessar o sistema.
- **Autenticação:** acesso com login e senha.
- **Marcas:** cadastro, listagem e exclusão de marcas.
- **Modelos:** cadastro, listagem e exclusão de modelos associados a uma marca.
- **Acessórios:** cadastro, listagem e exclusão de acessórios.
- **Carros:** cadastro, listagem e exclusão de veículos, com placa, chassi, modelo, cor, ano, valor, quilometragem e situação.
- **Carros e acessórios:** associação de acessórios aos veículos e exclusão dos vínculos.
- **Alteração de senha:** troca da senha mediante confirmação da senha atual.
- **Histórico de acessos:** consulta às datas e aos horários dos logins.
- **Trabalhe conosco:** formulário público para envio de candidaturas.
- **Administração de usuários:** consulta aos usuários cadastrados, aos perfis e aos hashes das senhas, além da exclusão de contas comuns.
- **Administração de candidaturas:** consulta e exclusão das inscrições recebidas.
- **Logs de atividades:** consulta, exportação em CSV e cópia para a área de transferência.

## Perfis de acesso

### Usuário comum

O usuário comum consulta e gerencia os modelos da própria conta e os carros associados a esses modelos.

Marcas e acessórios são cadastros compartilhados.

Ele também pode consultar suas próprias atividades nos logs de modelos, marcas e carros, com informações resumidas.

As abas de usuários, candidaturas e log geral ficam disponíveis somente para o administrador.

### Administrador

O administrador consulta e gerencia os modelos, carros e vínculos de todos os usuários.

Ele também acessa as abas **Usuários**, **Candidaturas** e **Log geral**.

Na listagem de usuários, as senhas aparecem como **hashes**, gerados pelo PHP. O sistema não exibe as senhas originais.

A conta inicial de administrador é criada pelo banco:

| Campo | Valor inicial |
|---|---|
| Login | `admin` |
| Senha | `admin123` |

A senha pode ser alterada pela aba **Alterar senha**.

O cadastro público cria apenas usuários comuns. A conta do administrador não pode ser excluída pelo sistema.

## Confirmação de exclusão

Tanto o administrador quanto os usuários comuns precisam informar **o login e a senha da conta que está logada** antes de excluir:

- Modelos.
- Marcas.
- Acessórios.
- Carros.
- Vínculos entre carros e acessórios.

O administrador também confirma suas credenciais para excluir usuários e candidaturas.

A validação acontece no PHP, junto com a verificação das permissões. As credenciais de outra conta não confirmam a operação.

### Exclusões em cascata

Algumas exclusões afetam outros registros:

- Excluir uma marca apaga os modelos dessa marca, seus carros e os vínculos, inclusive de outros usuários.
- Excluir um modelo apaga seus carros e os vínculos desses carros.
- Excluir um carro remove seus vínculos com acessórios.
- Excluir um acessório remove os vínculos dele com os carros.
- Excluir um usuário apaga seus modelos, carros e vínculos; os logs de atividades são preservados.

## Logs de atividades

O sistema possui quatro consultas de logs:

| Log | Local | Acesso |
|---|---|---|
| Modelos | Aba Modelos | Usuário comum: próprias ações; admin: ações de todos. |
| Marcas | Aba Marcas | Usuário comum: próprias ações; admin: ações de todos. |
| Carros | Aba Carros, incluindo acessórios e vínculos | Usuário comum: próprias ações; admin: ações de todos. |
| Geral | Aba Log geral | Somente o administrador. |

O log geral reúne as atividades das outras categorias e também eventos de contas, entradas, saídas, candidaturas e tentativas de login recusadas.

Os painéis começam ocultos e possuem os botões:

- **Exibir log.**
- **Ocultar log.**
- **Atualizar log.**
- **Salvar CSV.**
- **Copiar log.**

O usuário comum recebe informações resumidas das próprias ações.

O administrador também consulta detalhes das operações, registros removidos por exclusões em cascata, IP e navegador.

Senhas digitadas e hashes não são armazenados nos logs de atividades.

### Exportação e cópia

A exportação respeita as permissões da conta e inclui todos os registros carregados naquele painel.

O nome do arquivo identifica o tipo de log, quem exportou, a data e o horário de Brasília:

```text
log_carros_admin_2026-11-18_14-30-05-123.csv
```

O CSV utiliza ponto e vírgula e codificação UTF-8 com BOM.

Se o navegador bloquear a cópia automática, o sistema mostra o texto selecionado para copiar com **Ctrl+C**.

Os logs de atividades começam a ser registrados após a instalação da versão que adicionou essa função. Eles não reconstroem operações antigas que não foram gravadas.

## Banco de dados

O banco se chama `bd_revendedoracarros` e possui as seguintes tabelas:

| Tabela | Finalidade |
|---|---|
| `tb_usuario` | Contas, hashes das senhas e perfis de acesso. |
| `tb_marca` | Marcas dos veículos. |
| `tb_modelo` | Modelos associados às marcas e aos usuários. |
| `tb_carro` | Dados dos veículos. |
| `tb_acessorio` | Acessórios disponíveis. |
| `tb_carro_acessorio` | Relacionamento entre carros e acessórios. |
| `tb_log_login` | Histórico de logins. |
| `tb_log_atividade` | Registro das atividades do sistema. |
| `tb_trabalheconosco` | Candidaturas enviadas pelo formulário público. |

Um modelo pertence a uma marca, e um carro pertence a um modelo.

A relação entre carros e acessórios é de muitos para muitos, feita pela tabela `tb_carro_acessorio`.

Placa e chassi são obrigatórios e únicos. O sistema também valida ano, valor, quilometragem e os campos dos formulários.

A quilometragem aceita zero, e o valor do veículo deve ser maior que zero.

## Como executar o projeto

### 1. Preparar o ambiente

Tenha instalado:

- Node.js e npm compatíveis com a versão do Angular utilizada.
- Angular CLI.
- XAMPP com PHP 8 ou superior e as extensões `pdo_mysql` e `mbstring` habilitadas.
- MySQL Server 8.
- MySQL Workbench.
- Um editor de código, como o Visual Studio Code.

O MySQL Workbench é utilizado para administrar o banco. O MySQL Server precisa estar em execução para a aplicação funcionar.

Para instalar e conferir o Angular CLI:

```bash
npm install -g @angular/cli
ng version
```

### 2. Criar o projeto Angular

Este repositório fornece a pasta `src` para copiar para um projeto Angular.

Se você ainda não possui o projeto criado, execute:

```bash
ng new revendedora-carros
cd revendedora-carros
```

Selecione **CSS** como formato de estilos e **No** para SSR/SSG.

Depois, substitua a pasta `src` criada pelo Angular pela pasta `src` deste repositório.

Se já possui o projeto Angular configurado, basta substituir a pasta `src` com o servidor parado.

### 3. Configurar o banco

Abra o MySQL Workbench, conecte ao seu MySQL Server e execute o arquivo SQL adequado, conforme a tabela acima.

Em uma instalação nova, execute somente `banco.sql`.

### 4. Configurar a API PHP

Copie a pasta `api-revendedora` para:

```text
C:\xampp\htdocs\api-revendedora
```

No arquivo `conexao.php`, ajuste host, porta, nome do banco, usuário e senha de acordo com a máquina utilizada.

Neste projeto, as portas usadas são:

| Ambiente | Porta do MySQL |
|---|---|
| Computador de casa | `3306` |
| Máquinas da Etec | `3307` |

Essas portas são do MySQL, não do Angular.

Mantenha suas credenciais locais no `conexao.php` e não publique senhas reais do banco no GitHub.

Inicie o Apache pelo XAMPP.

Se estiver utilizando o MySQL Server instalado separadamente, mantenha esse serviço ligado. Não é necessário iniciar também o MySQL do XAMPP.

A API é acessada por:

```text
http://localhost/api-revendedora/api.php
```

As ações são informadas pelo parâmetro `acao`, por exemplo:

```text
http://localhost/api-revendedora/api.php?acao=sessao
```

### 5. Iniciar o Front-End

No terminal, dentro do projeto Angular, execute:

```bash
ng serve -o
```

Acesse:

```text
http://localhost:4200
```

A API libera a comunicação com `http://localhost:4200`, incluindo os cookies da sessão.

Utilize esse endereço: abrir como `127.0.0.1` ou em outra porta pode impedir a autenticação.

Se a porta 4200 estiver ocupada por outra execução do Angular, encerre a execução antiga e inicie novamente.

## Como atualizar uma instalação existente

1. Faça uma cópia do projeto e um backup do banco.
2. Se o banco ainda não possui os perfis e logs, execute `atualizar_banco.sql`.
3. Substitua o arquivo `api.php` em `C:\xampp\htdocs\api-revendedora`.
4. Mantenha o seu `conexao.php`, com as configurações da máquina.
5. Pare o Angular e substitua a pasta `src`.
6. Execute `ng serve -o` novamente.

Se a instalação já possui admin e logs e a atualização é apenas a confirmação de exclusão para usuários comuns, não é necessário executar SQL novamente.

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
├── atualizar_banco.sql
├── LEIA PRIMEIRO - Atualizacao.txt
├── Passo a Passo.txt
└── README.md
```

O componente `Revendedora` organiza as telas e os formulários.

O `api.php` recebe as requisições, valida os dados e as permissões, realiza as operações no banco e retorna JSON.

O `conexao.php` contém a configuração de acesso ao MySQL.

A autenticação utiliza sessões PHP. As senhas são armazenadas com `password_hash` e verificadas com `password_verify`.

## Novidades da versão 7

- Perfil de administrador com consulta aos dados de todos os usuários.
- Gerenciamento de usuários e candidaturas pelo administrador.
- Proteção contra exclusão da conta do administrador.
- Confirmação com login e senha nas exclusões de usuários comuns e do administrador.
- Logs de modelos, marcas, carros e atividades gerais.
- Exportação dos logs em CSV e cópia para a área de transferência.
- Correção do tamanho do campo de cargo do formulário Trabalhe conosco.
- Mensagens que diferenciam falhas de comunicação e erros retornados pela API.
- Atualização do banco sem apagar os cadastros existentes.

---

**Desenvolvido por System of &lt;Devs&gt;**

Projeto Interdisciplinar — Angular, versão 7.
