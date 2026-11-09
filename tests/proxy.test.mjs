import { test, afterEach } from 'node:test';
import assert from 'node:assert/strict';
import handler from '../api/revendedora.mjs';

const originalFetch = globalThis.fetch;
const originalUrl = process.env.PHP_API_URL;
afterEach(() => {
  globalThis.fetch = originalFetch;
  if (originalUrl === undefined) delete process.env.PHP_API_URL;
  else process.env.PHP_API_URL = originalUrl;
});
function call({ action = 'sessao', method = 'GET', headers = {}, body } = {}) {
  const req = { url: `/api/revendedora?acao=${action}`, method, headers: { host: 'carros.vercel.app', ...headers }, body };
  const res = {
    code: 200, headers: {}, value: null,
    setHeader(key, value) { this.headers[key] = value; },
    status(code) { this.code = code; return this; },
    json(value) { this.value = value; return this; }
  };
  return handler(req, res).then(() => res);
}
test('a configuração ausente retorna erro explícito, sem consultar localhost', async () => {
  delete process.env.PHP_API_URL;
  globalThis.fetch = () => { throw Error('não deveria ser chamado'); };
  const res = await call();
  assert.equal(res.code, 503);
  assert.match(res.value.mensagem, /ainda não foi conectada/);
  assert.equal(res.headers['Cache-Control'], 'private, no-store');
});
test('não aceita ações e métodos indevidos nem alterações por GET', async () => {
  assert.equal((await call({ action: 'marca' })).code, 400);
  assert.equal((await call({ action: 'inexistente' })).code, 400);
  assert.equal((await call({ method: 'DELETE' })).code, 405);
});
test('recusa origens diferentes e cabeçalhos malformados', async () => {
  assert.equal((await call({ headers: { origin: 'https://outro.example' } })).code, 403);
  assert.equal((await call({ headers: { origin: 'null' } })).code, 403);
});
test('exige HTTPS na API hospedada', async () => {
  process.env.PHP_API_URL = 'http://localhost/api.php';
  assert.equal((await call()).code, 503);
});
test('encaminha login para a API fixa e devolve apenas o cookie de sessão protegido', async () => {
  process.env.PHP_API_URL = 'https://php.example/api.php';
  globalThis.fetch = async (url, options) => {
    assert.equal(String(url), 'https://php.example/api.php?acao=login');
    assert.equal(options.method, 'POST');
    assert.equal(options.redirect, 'manual');
    assert.deepEqual(JSON.parse(options.body), { login: 'teste', senha: 'teste' });
    assert.equal(options.headers.Cookie, 'PHPSESSID=abc123');
    assert.equal(options.headers.Authorization, undefined);
    const headers = new Headers();
    headers.append('set-cookie', 'PHPSESSID=new123; Domain=php.example; Path=/backend; HttpOnly');
    headers.append('set-cookie', 'analytics=nao-encaminhar');
    return new Response(JSON.stringify({ sucesso: true, usuario: 'teste' }), { headers });
  };
  const res = await call({ action: 'login', method: 'POST', headers: { origin: 'https://carros.vercel.app', cookie: 'outro=privado; PHPSESSID=abc123', authorization: 'privado' }, body: { login: 'teste', senha: 'teste' } });
  assert.equal(res.code, 200);
  assert.equal(res.value.usuario, 'teste');
  assert.deepEqual(res.headers['Set-Cookie'], ['PHPSESSID=new123; Path=/api; HttpOnly; Secure; SameSite=Lax']);
});
test('preserva expiração de cookie no logout e erro de autenticação da API', async () => {
  process.env.PHP_API_URL = 'https://php.example/api.php';
  globalThis.fetch = async () => new Response(JSON.stringify({ sucesso: true }), { headers: { 'set-cookie': 'PHPSESSID=deleted; Max-Age=0; Path=/' } });
  assert.match((await call({ action: 'logout' })).headers['Set-Cookie'][0], /Max-Age=0/);
  globalThis.fetch = async () => new Response(JSON.stringify({ sucesso: false, mensagem: 'Faça o login.' }), { status: 401 });
  assert.equal((await call({ action: 'marcas' })).code, 401);
});
test('trata redirecionamentos, HTML, JSON inesperado e indisponibilidade da hospedagem', async () => {
  process.env.PHP_API_URL = 'https://php.example/api.php';
  for (const response of [new Response(null, { status: 302 }), new Response('<html>erro</html>'), new Response('{}')]) {
    globalThis.fetch = async () => response;
    assert.equal((await call()).code, 502);
  }
  globalThis.fetch = async () => { throw Error('timeout'); };
  assert.equal((await call()).code, 502);
});
test('limita o tamanho dos formulários', async () => {
  process.env.PHP_API_URL = 'https://php.example/api.php';
  globalThis.fetch = () => { throw Error('não deveria ser chamado'); };
  assert.equal((await call({ method: 'POST', action: 'login', body: 'a'.repeat(65537) })).code, 413);
});
