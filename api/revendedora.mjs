// Encaminha a API PHP pelo mesmo domínio do Angular, preservando a sessão.
// As regras de negócio e o acesso ao MySQL continuam no PHP.
const reads = new Set(['sessao', 'logout', 'marcas', 'modelos', 'historico', 'acessorios', 'carros', 'carros_acessorios']);
const writes = new Set(['login', 'cadastro', 'marca', 'modelo', 'excluir_marca', 'excluir_modelo', 'alterar_senha', 'candidato', 'acessorio', 'excluir_acessorio', 'carro', 'excluir_carro', 'vincular', 'excluir_vinculo']);

export default async function handler(req, res) {
  res.setHeader('Cache-Control', 'private, no-store');
  const fail = (status, mensagem) => res.status(status).json({ sucesso: false, mensagem });
  const action = new URL(req.url, 'https://proxy.invalid').searchParams.get('acao') ?? '';
  if (req.method !== 'GET' && req.method !== 'POST') {
    res.setHeader('Allow', 'GET, POST');
    return fail(405, 'Método não permitido.');
  }
  if (!(req.method === 'GET' ? reads : writes).has(action)) return fail(400, 'Ação inválida.');
  // O navegador só pode enviar alterações a partir do próprio site.
  const origin = req.headers.origin;
  const host = req.headers.host;
  if (origin) {
    try {
      if (new URL(origin).host !== host) return fail(403, 'Origem não permitida.');
    } catch {
      return fail(403, 'Origem não permitida.');
    }
  }
  if (!process.env.PHP_API_URL) {
    return fail(503, 'A API PHP/MySQL ainda não foi conectada à hospedagem.');
  }

  try {
    const target = new URL(process.env.PHP_API_URL);
    if (target.protocol !== 'https:' || target.username || target.password) {
      return fail(503, 'A configuração da API PHP precisa de um endereço HTTPS válido.');
    }
    target.search = '';
    target.hash = '';
    target.searchParams.set('acao', action);
    const headers = { Accept: 'application/json' };
    const sessionCookie = (req.headers.cookie ?? '').split(';').map(c => c.trim()).find(c => /^PHPSESSID=[a-zA-Z0-9,-]+$/.test(c));
    if (sessionCookie) headers.Cookie = sessionCookie;
    let body;
    if (req.method === 'POST') {
      headers['Content-Type'] = 'application/json';
      body = typeof req.body === 'string' ? req.body : JSON.stringify(req.body ?? {});
      if (Buffer.byteLength(body) > 64 * 1024) return fail(413, 'Formulário muito grande.');
    }
    const upstream = await fetch(target, {
      method: req.method, headers, body, redirect: 'manual', signal: AbortSignal.timeout(20_000)
    });
    if (upstream.status >= 300 && upstream.status < 400) return fail(502, 'Confira o endereço HTTPS da API PHP.');
    // Nunca devolver HTML de erro da hospedagem como resposta da API.
    const result = await upstream.json();
    if (!result || typeof result.sucesso !== 'boolean') return fail(502, 'A hospedagem PHP retornou uma resposta inválida.');
    const cookies = upstream.headers.getSetCookie().filter(c => c.startsWith('PHPSESSID='));
    if (cookies.length) {
      res.setHeader('Set-Cookie', cookies.map(cookie => {
        const [value, ...attributes] = cookie.split(';');
        const expires = attributes.filter(a => /^\s*(expires|max-age)=/i.test(a));
        return [value, ...expires, 'Path=/api', 'HttpOnly', 'Secure', 'SameSite=Lax'].join('; ');
      }));
    }
    return res.status(upstream.status).json(result);
  } catch {
    return fail(502, 'Não foi possível conectar à hospedagem da API PHP.');
  }
}
