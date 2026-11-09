# Publicação com Angular na Vercel e API PHP/MySQL

O repositório já contém a configuração de instalação e build do Angular. A API e as regras de negócio continuam em PHP, com MySQL. A Vercel recebe as chamadas em `/api/revendedora` e as encaminha para a hospedagem PHP, preservando a sessão sem depender de cookies de terceiros.

## 1. Importar o front-end na Vercel

1. Entre em [vercel.com/new](https://vercel.com/new) e importe **Ophlc/Interdiciplinar-PwDs1**. Autorize o acesso ao repositório privado, se solicitado. Use **Import Git Repository**, para conectar o repositório existente.
2. Nome sugerido: `interdiciplinar-pwds1`. Selecione **Angular** e mantenha **Root Directory** na raiz.
3. O `vercel.json` define instalação `npm ci`, build `npm run build` e saída `dist/revendedora/browser`. Use Node.js **24.x**.
4. Nas configurações de Git/ambientes, confirme **Production Branch: main**.
5. Cadastre `PHP_API_URL` com a URL HTTPS completa da API, por exemplo `https://sua-api.example/api.php`. Se ainda não tiver a hospedagem, pode importar o front-end primeiro: a interface informará que a API não foi conectada e login/cadastros continuarão indisponíveis.
6. Clique em **Deploy**. Depois de alterar variáveis de ambiente, faça **Redeploy** para aplicá-las.

Após essa configuração inicial, faça **commit e push para `main`** para atualizar o endereço de produção automaticamente. Um commit só no computador não chega ao GitHub. Outras branches recebem previews conforme a integração Git da Vercel.

## 2. Hospedar PHP/MySQL

É necessário um serviço com **PHP 8.2 ou superior**, extensões **PDO MySQL** e **mbstring**, **MySQL 8.0 ou superior** e HTTPS. A hospedagem precisa aceitar chamadas HTTP servidor a servidor, pois a Vercel acessa a API diretamente.

### Hospedagem PHP com painel

1. Crie um banco e um usuário MySQL no painel, com permissão apenas nesse banco.
2. Selecione esse banco no phpMyAdmin e importe **`database/schema.sql`**. Esse arquivo não executa `DROP DATABASE` nem exige permissão para criar bancos. Use-o para uma instalação nova; não é um migrador de estruturas antigas.
3. Envie apenas `api-revendedora/api.php` e `api-revendedora/conexao.php` para uma pasta pública da API. Não envie o repositório inteiro, arquivos SQL ou `.env` ao diretório público.
4. Configure `DB_HOST`, `DB_PORT`, `DB_NAME`, `DB_USER` e `DB_PASSWORD` no servidor. Se o painel não permitir variáveis, copie `config.local.example.php` para `config.local.php`, preencha apenas no servidor e mantenha esse arquivo fora do Git.
5. Acesse `https://SEU-ENDERECO/api.php?acao=sessao`. A resposta deve ser JSON com `sucesso: true` e `usuario: null` em uma sessão nova.
6. Coloque a URL completa de `api.php`, sem `?acao=...`, em `PHP_API_URL` na Vercel. Faça redeploy.

Para automatizar também os commits da API, use a integração Git da hospedagem PHP apontando para `main` e publicando a pasta `api-revendedora`. A integração da Vercel automatiza o Angular e o proxy; ela não envia PHP para uma segunda hospedagem.

### Hospedagem com Docker (por exemplo, Railway)

O arquivo `api-revendedora/Dockerfile` empacota a API com Apache, PHP, PDO MySQL e mbstring.

1. Crie um serviço MySQL e um serviço conectado a este repositório, usando **Root Directory: `/api-revendedora`**. A imagem escuta na porta **80**; configure a porta pública do serviço para 80.
2. No serviço PHP, cadastre as variáveis `DB_*` com os dados do serviço MySQL. Use a rede privada entre os dois serviços quando disponível.
3. Importe `database/schema.sql` no banco novo usando o cliente SQL da hospedagem.
4. Ative HTTPS e o deploy automático da branch `main` no serviço PHP. Mantenha uma única réplica e monte um volume em `/var/lib/php/sessions` para preservar as sessões entre reinicializações. Várias réplicas exigem armazenamento compartilhado de sessões.
5. Configure `PHP_API_URL` na Vercel e faça redeploy.

Confira os preços e limites da hospedagem antes de contratar. Nenhum serviço PHP/MySQL foi provisionado por esta configuração.

## 3. Rodar localmente com menos etapas

Com Node.js 24 e Docker Compose:

```bash
cp .env.example .env
# Preencha DB_PASSWORD e DB_ROOT_PASSWORD no .env com duas senhas diferentes.
docker compose up -d --build
npm ci
npm start
```

Abra `http://localhost:4200`. O proxy de desenvolvimento encaminha a API para `http://127.0.0.1:8080/api.php`. Não é necessário criar outro projeto Angular ou copiar `src` manualmente.

O banco fica no volume `mysql-data` e as sessões em `php-sessions`. O SQL de instalação roda somente quando o volume do MySQL está vazio. Para parar os serviços preservando os dados, use `docker compose down` sem `--volumes`.

## 4. Validação da publicação

1. Abra o site e crie uma conta de teste; faça login.
2. Cadastre um modelo e atualize a página: o usuário deve continuar autenticado e o modelo deve permanecer no MySQL.
3. Cadastre um carro e relacione um acessório. Confira a listagem.
4. Saia da conta e confirme que os dados protegidos exigem login.
5. Faça uma pequena alteração na `main`, envie ao GitHub e confira o novo deploy no mesmo endereço da Vercel.

Verificações locais disponíveis:

```bash
npm run build
npm run test:proxy
```

## Credenciais e histórico

A conexão atual lê credenciais do ambiente ou de `config.local.php`, que é ignorado pelo Git. Havia uma senha fixa no histórico anterior: se ela ainda for usada, troque-a no MySQL. As branches e releases históricas foram preservadas.

O arquivo original `banco.sql` continua como material histórico do projeto e **apaga e recria o banco**. Para uma instalação nova em hospedagem, prefira `database/schema.sql`.
