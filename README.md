# Interdisciplinar Angular versão 6 — Revendedora de Carros

## Sobre o projeto

Este projeto foi desenvolvido como parte de uma atividade interdisciplinar da aula de Programação Web 2 e Desenvolvimento de Sistemas 1, com a proposta de criar um sistema para uma revendedora de carros.

A ideia é facilitar o gerenciamento das informações da empresa, permitindo cadastrar e consultar marcas, modelos, veículos e acessórios, além de outras funcionalidades relacionadas ao funcionamento da revendedora.

O sistema foi desenvolvido utilizando Angular no Front-End, PHP no Back-End e MySQL para armazenar as informações.

## Funcionalidades

O sistema conta com algumas funcionalidades para ajudar no gerenciamento da revendedora:

- **Cadastro e login:** permite criar uma conta e acessar o sistema.
- **Marcas:** cadastro, consulta e exclusão de marcas de veículos.
- **Modelos:** cadastro de modelos, vinculando cada um à sua respectiva marca.
- **Carros:** cadastro de veículos com informações como placa, chassi, cor, ano, valor, quilometragem e situação.
- **Acessórios:** cadastro e gerenciamento dos acessórios disponíveis.
- **Carros e acessórios:** permite relacionar os acessórios aos veículos cadastrados.
- **Alteração de senha:** permite atualizar a senha da conta.
- **Histórico de acessos:** registra as datas e os horários dos acessos realizados pelos usuários.
- **Trabalhe conosco:** formulário para pessoas interessadas em trabalhar na empresa enviarem suas informações.

## Tecnologias utilizadas

Durante o desenvolvimento, utilizamos as seguintes tecnologias:

| Tecnologia | Utilização |
|---|---|
| Angular | Desenvolvimento do Front-End. |
| TypeScript | Programação das funcionalidades do sistema. |
| HTML5 | Estrutura das páginas. |
| CSS3 | Estilização das páginas. |
| PHP | Desenvolvimento da API e comunicação com o banco de dados. |
| MySQL | Armazenamento das informações. |
| XAMPP | Ambiente local para execução do Apache e PHP. |

## Banco de dados

Para armazenar as informações do sistema, utilizamos o MySQL, com um banco de dados chamado `bd_revendedoracarros`.

Ele possui tabelas responsáveis por guardar os dados de usuários, marcas, modelos, carros, acessórios e outras informações necessárias para o funcionamento do sistema.

Algumas das principais tabelas são:

- `tb_usuario`
- `tb_marca`
- `tb_modelo`
- `tb_carro`
- `tb_acessorio`
- `tb_carro_acessorio`
- `tb_log_login`
- `tb_trabalheconosco`

O arquivo `banco.sql` contém os comandos necessários para criar o banco de dados, suas tabelas e alguns registros iniciais.

## Como executar o projeto

Para conseguir executar o sistema no computador, é necessário ter instalado:

- Node.js e npm.
- Visual Studio Code.
- Angular CLI.
- XAMPP.
- MySQL Workbench.

### 1. Configurando o Angular

Primeiro, abra o PowerShell e execute o seguinte comando:

```bash
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Caso seja solicitada uma confirmação, autorize a alteração.

Depois, instale o Angular CLI:

```bash
npm install -g @angular/cli
```

Para conferir se a instalação deu certo, utilize:

```bash
ng version
```

### 2. Criando o projeto Angular

Crie uma pasta para o projeto e abra essa pasta no Visual Studio Code.

No terminal, execute:

```bash
ng new primeiro-projeto
```

Durante a criação, selecione as seguintes opções:

- Compartilhamento de dados: No.
- Sistema de estilos: CSS.
- SSR/SSG: No.

Depois, entre na pasta criada e execute o projeto:

```bash
cd primeiro-projeto
ng serve -o
```

### 3. Configurando a API PHP

Para configurar a parte do Back-End:

1. Abra o XAMPP e inicie o Apache.
2. Copie a pasta `api-revendedora` para dentro da pasta `htdocs` do XAMPP.
3. Abra o arquivo `conexao.php`.
4. Confira as informações de conexão com o MySQL, como host, porta, usuário e senha.
5. Caso necessário, altere essas informações de acordo com a configuração do seu computador.

### 4. Configurando o banco de dados

Abra o MySQL Workbench e execute o arquivo `banco.sql`.

Esse arquivo contém os comandos para criar o banco de dados, as tabelas e alguns registros iniciais utilizados pelo sistema.

**Importante:** o script apaga o banco de dados existente antes de criar um novo. Por isso, tenha cuidado ao executá-lo caso já existam informações salvas.

### 5. Configurando o Front-End

Depois de criar o projeto Angular, copie a pasta `src` disponibilizada neste repositório para dentro da pasta do projeto criado, substituindo os arquivos correspondentes.

Com tudo configurado, abra o terminal do Visual Studio Code e execute:

```bash
ng serve -o
```

O sistema poderá ser acessado pelo navegador através do endereço:

```text
http://localhost:4200
```

A API PHP também precisa estar funcionando pelo Apache do XAMPP para que o sistema consiga se comunicar com o banco de dados.

## Estrutura do projeto

A organização dos principais arquivos e pastas está da seguinte maneira:

```text
InterdiciplinarAngular6/
│
├── api-revendedora/
│   ├── api.php
│   └── conexao.php
│
├── src/
│   ├── app/
│   │   ├── revendedora/
│   │   │   ├── revendedora.ts
│   │   │   ├── revendedora.html
│   │   │   ├── revendedora.css
│   │   │   └── logo.png
│   │   │
│   │   ├── app.ts
│   │   ├── app.html
│   │   └── app.css
│   │
│   ├── index.html
│   ├── main.ts
│   └── styles.css
│
├── banco.sql
├── Passo a Passo.txt
└── README.md
```

## Considerações finais

Esse projeto foi uma oportunidade de colocar em prática os conhecimentos que adquirimos durante o 2º módulo do curso, principalmente na parte de Desenvolvimento Web, programação e banco de dados.

Durante o desenvolvimento, trabalhamos com diferentes tecnologias e aprendemos um pouco mais sobre como integrar o Front-End, o Back-End e o banco de dados para construir um sistema funcional.

---

**Desenvolvido por System of <Devs>**

Projeto Interdisciplinar — Angular, versão 6.