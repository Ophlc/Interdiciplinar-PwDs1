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

O repositório já é um projeto Angular completo. Não é necessário executar `ng new`, instalar o Angular CLI globalmente ou copiar a pasta `src` para outro projeto.

### Publicar e atualizar pelo GitHub

Siga o guia [DEPLOY.md](DEPLOY.md) para importar o front-end na Vercel e conectar uma hospedagem PHP/MySQL. Após a configuração inicial, cada **push na branch `main`** dispara uma atualização do site no mesmo endereço. O PHP e o MySQL são mantidos; o proxy `/api/revendedora` conecta o Angular à API hospedada.

**Estado da hospedagem:** os arquivos de deploy estão preparados. É necessário importar o repositório na Vercel e conectar uma hospedagem PHP/MySQL antes de usar login e cadastros online.

### Desenvolvimento local

Requisitos: Node.js 24 e Docker Compose.

```bash
cp .env.example .env
# Defina DB_PASSWORD e DB_ROOT_PASSWORD no .env.
docker compose up -d --build
npm ci
npm start
```

Abra `http://localhost:4200`. O Docker prepara PHP/MySQL e os dados permanecem no volume do banco. Você também pode usar uma hospedagem/XAMPP já existente; os caminhos e variáveis estão no guia de publicação.

### Versões históricas

As releases preservam os commits originais das quatro branches solicitadas, nesta ordem:

| Release | Branch |
|---|---|
| [v1.0.0](https://github.com/Ophlc/Interdiciplinar-PwDs1/releases/tag/v1.0.0) | `InterdisciplinarAPI` |
| [v2.0.0](https://github.com/Ophlc/Interdiciplinar-PwDs1/releases/tag/v2.0.0) | `InterdiciplinarSemAPI` |
| [v3.0.0](https://github.com/Ophlc/Interdiciplinar-PwDs1/releases/tag/v3.0.0) | `InterdiciplinarAngular1` |
| [v4.0.0](https://github.com/Ophlc/Interdiciplinar-PwDs1/releases/tag/v4.0.0) | `InterdiciplinarAngular2` |

As demais branches permanecem disponíveis no GitHub. A `main` contém o projeto atual, com Angular versão 6 conforme a identificação histórica do trabalho; a versão do framework utilizada no build está no `package.json`.

## Estrutura do projeto

A organização dos principais arquivos e pastas está da seguinte maneira:

```text
InterdiciplinarAngular6/
│
├── api-revendedora/
│   ├── api.php
│   ├── conexao.php
│   └── Dockerfile
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
├── api/
│   └── revendedora.mjs
├── database/
│   └── schema.sql
├── angular.json
├── package.json
├── package-lock.json
├── vercel.json
├── compose.yaml
├── DEPLOY.md
├── banco.sql
├── Passo a Passo.txt
└── README.md
```

## Considerações finais

Esse projeto foi uma oportunidade de colocar em prática os conhecimentos que adquirimos durante o 2º módulo do curso, principalmente na parte de Desenvolvimento Web, programação e banco de dados.

Durante o desenvolvimento, trabalhamos com diferentes tecnologias e aprendemos um pouco mais sobre como integrar o Front-End, o Back-End e o banco de dados para construir um sistema funcional.

---

**Desenvolvido por System of Devs**

Projeto Interdisciplinar — Angular, versão 6.