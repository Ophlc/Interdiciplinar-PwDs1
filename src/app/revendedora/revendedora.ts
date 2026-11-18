import { ChangeDetectorRef, Component, OnInit, ViewEncapsulation } from '@angular/core';
import { FormsModule, NgForm } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { tap } from 'rxjs';
import { Title } from '@angular/platform-browser';

// Faz os dados chegarem no PHP
interface Marca {
  id_marca: number;
  nome: string;
}

interface ModeloCadastrado {
  id_modelo: number;
  modelo: string;
  marca: string;
  proprietario: string;
}

// Login do histórico
interface Acesso {
  usuario: string;
  data: string;
  hora: string;
}

interface Acessorio {
  id_acessorio: number;
  nome: string;
}

interface Carro {
  id_carro: number;
  placa: string;
  chassi: string;
  cor: string;
  ano: number;
  valor: string;
  quilometragem: number;
  situacao: string;
  modelo: string;
  marca: string;
  proprietario: string;
}

// Um acessório que está em um carro
interface CarroAcessorio {
  id_carro: number;
  placa: string;
  id_acessorio: number;
  acessorio: string;
}

interface RegistroLog {
  id_log: number;
  usuario: string;
  categoria: string;
  acao: string;
  resumo: string;
  data_hora: string;
  detalhes?: string;
  ip?: string;
  navegador?: string;
}

interface UsuarioCadastrado {
  login: string;
  senha_hash: string;
  perfil: string;
}

interface Candidatura {
  id_candidato: number;
  nome: string;
  email: string;
  celular: string;
  cidade: string;
  estado: string;
  cargo_pretendido: string;
  link_linkdin: string | null;
}

interface PedidoExclusao {
  acao: string;
  dados: object;
  descricao: string;
}

interface Resposta {
  admin?: boolean;
  sucesso: boolean;
  mensagem?: string;
  usuario?: string | null;
  dados?: any;
}

const API = 'http://localhost/api-revendedora/api.php';

@Component({
  selector: 'app-revendedora',
  imports: [FormsModule],
  templateUrl: './revendedora.html',
  styleUrl: './revendedora.css',
  encapsulation: ViewEncapsulation.None
})
export class Revendedora implements OnInit {

  tela = 'carregando';

  aba = 'modelos';
  admin = false;
  usuarios: UsuarioCadastrado[] = [];
  candidaturas: Candidatura[] = [];
  exclusaoPendente: PedidoExclusao | null = null;
  loginExclusao = '';
  senhaExclusao = '';
  erroExclusao = '';
  excluindo = false;

  mostrarLog = false;
  carregandoLog = false;
  registrosLog: RegistroLog[] = [];
  erroLog = '';
  avisoLog = '';
  textoParaCopiar = '';
  private pedidoLog = 0;


  // Campos dos formulários
  login = '';
  senha = '';
  modelo = '';
  idMarca = '';
  novaMarca = '';
  senhaAtual = '';
  novaSenha = '';
  confirmacao = '';

  // Formulários dos acessórios e dos carros
  novoAcessorio = '';
  novoCarro = { placa: '', chassi: '', cor: '', ano: '', valor: '', quilometragem: '', situacao: '', id_modelo: '' };
  vinculo = { id_carro: '', id_acessorio: '' };

  // Formulário Trabalhe conosco
  candidato = { nome: '', email: '', celular: '', cidade: '', estado: '', cargo: '', linkedin: '' };

  // Opções dos selects
  estados = ['AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'];
  cargos = ['Vendedor de resenha', 'Gerente da resenha', 'Atendente de resenha', 'Mecânico da resenha', 'Lavador de resenha', 'Administrativo da resenha', 'Outra resenha'];

  // Dados que aparecem la na tela
  usuario = '';
  marcas: Marca[] = [];
  lista: ModeloCadastrado[] = [];
  historico: Acesso[] = [];
  acessorios: Acessorio[] = [];
  carros: Carro[] = [];
  vinculos: CarroAcessorio[] = [];

  // Mensagens
  msg = '';
  erro = '';
  cadastrado = false;


  constructor(
    private http: HttpClient,
    private cdr: ChangeDetectorRef,
    private tituloPagina: Title
  ) { }

  // VÊ se tem alguém lá
  ngOnInit(): void {
    this.get('sessao').subscribe({
      next: (resposta) => {
        if (resposta.usuario) {
          this.abrirPrincipal(resposta.usuario, resposta.admin ?? false);
        } else {
          this.irPara('login');
        }
      },
      error: (erro) => {
        console.error('Erro ao verificar a sessão:', erro);
        this.irPara('login');
        this.falhaServidor(erro);
      }
    });
  }

  // Funções que chamam o PHP
  private get(acao: string, parametros: Record<string, string> = {}) {
    return this.http.get<Resposta>(API, { params: { acao, ...parametros }, withCredentials: true });
  }

  private post(acao: string, dados: object) {
    return this.http.post<Resposta>(`${API}?acao=${acao}`, dados, { withCredentials: true }).pipe(
      tap((resposta) => {
        if (resposta.sucesso && this.mostrarLog) this.carregarLogs();
      })
    );
  }

  // Força a atualização da tela
  private atualizar(): void {
    this.cdr.detectChanges();
  }

  // Quando chama o PHP e da erro
  private falhaServidor(erro: any): void {
    console.error('Erro:', erro);

    if (erro.status === 401) {
      // acaba  sessão
      this.irPara('login');
      this.erro = 'Sua sessão terminou. Faça login novamente.';
    } else if (erro.error && typeof erro.error.mensagem === 'string') {
      this.erro = erro.error.mensagem;
    } else if (erro.status === 0) {
      this.erro = 'A API não respondeu. Confira o Apache, o endereço localhost:4200 e a pasta api-revendedora no htdocs.';
    } else {
      this.erro = 'A API retornou uma resposta inválida. Confira o api.php e o log de erros do Apache.';
    }

    this.atualizar();
  }

  irPara(tela: string, evento?: Event): void {
    if (evento) {
      evento.preventDefault();
    }

    this.tela = tela;
    this.fecharLog();
    this.cancelarExclusao();
    if (tela !== 'principal') {
      this.admin = false;
      this.usuario = '';
      this.usuarios = [];
      this.candidaturas = [];
      this.marcas = [];
      this.lista = [];
      this.carros = [];
      this.acessorios = [];
      this.vinculos = [];
      this.historico = [];
    }
    this.login = '';
    this.senha = '';
    this.modelo = '';
    this.idMarca = '';
    this.novaMarca = '';
    this.senhaAtual = '';
    this.novaSenha = '';
    this.confirmacao = '';
    this.novoAcessorio = '';
    this.limparCarro();
    this.limparVinculo();
    this.aba = 'modelos';
    this.msg = '';
    this.erro = '';
    this.cadastrado = false;
    this.limparCandidato();

    let nomeDaPagina = 'Revendedora de Carros';
    if (tela === 'login') {
      nomeDaPagina = 'Entrar';
    } else if (tela === 'cadastro') {
      nomeDaPagina = 'Cadastro de usuário';
    } else if (tela === 'trabalhe') {
      nomeDaPagina = 'Trabalhe conosco';
    } else if (tela === 'principal') {
      nomeDaPagina = 'Cadastro';
    }
    this.tituloPagina.setTitle(nomeDaPagina);

    this.atualizar();
  }

  // Troca de aba na tela principal
  trocarAba(aba: string, evento: Event): void {
    evento.preventDefault();

    if (!this.admin && ['usuarios', 'candidaturas', 'logs'].includes(aba)) return;
    this.fecharLog();
    this.cancelarExclusao();
    this.aba = aba;
    if (aba === 'usuarios') this.carregarUsuarios();
    if (aba === 'candidaturas') this.carregarCandidaturas();
    this.modelo = '';
    this.idMarca = '';
    this.novaMarca = '';
    this.senhaAtual = '';
    this.novaSenha = '';
    this.confirmacao = '';
    this.novoAcessorio = '';
    this.limparCarro();
    this.limparVinculo();
    this.msg = '';
    this.erro = '';

    if (aba === 'marcas') {
      this.tituloPagina.setTitle('Cadastro de marca');
    } else if (aba === 'acessorios') {
      this.tituloPagina.setTitle('Cadastro de acessório');
      this.carregarAcessorios();
    } else if (aba === 'carros') {
      this.tituloPagina.setTitle('Cadastro de carro');
    } else if (aba === 'vinculos') {
      this.tituloPagina.setTitle('Carros e acessórios');
      this.carregarAcessorios();
    } else if (aba === 'conta') {
      this.tituloPagina.setTitle('Alterar senha');
      this.carregarHistorico();
    } else {
      this.tituloPagina.setTitle('Cadastro');
    }

    this.atualizar();
  }

  // Parte login
  entrar(): void {
    this.erro = '';
    this.cadastrado = false;

    const dados = { login: this.login, senha: this.senha };

    this.post('login', dados).subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.abrirPrincipal(resposta.usuario ?? this.login, resposta.admin ?? false);
        } else {
          this.login = '';
          this.senha = '';
          this.erro = resposta.mensagem ?? '';
          this.atualizar();
        }
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Cadastro usuario
  cadastrarUsuario(): void {
    this.erro = '';

    const dados = { login: this.login, senha: this.senha };

    this.post('cadastro', dados).subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.irPara('login');
          this.cadastrado = true;
        } else {
          this.login = '';
          this.senha = '';
          this.erro = resposta.mensagem ?? '';
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Zera os campos do tarablha com nós
  limparCandidato(): void {
    this.candidato = { nome: '', email: '', celular: '', cidade: '', estado: '', cargo: '', linkedin: '' };
  }

  // Manda a inscrição pro PHP
  enviarCandidatura(form: NgForm): void {
    this.msg = '';
    this.erro = '';

    this.post('candidato', this.candidato).subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.msg = resposta.mensagem ?? 'Candidatura enviada!';

          // limpa o formulário e os avisos de campo obrigatório
          form.resetForm();
          this.limparCandidato();
        } else {
          this.erro = resposta.mensagem ?? '';
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  //Sair conta
  sair(evento: Event): void {
    evento.preventDefault();

    this.get('logout').subscribe({
      next: () => {
        this.usuario = '';
        this.irPara('login');
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Mostra a tela principal e carrega as marcas e os modelos
  abrirPrincipal(usuario: string, admin: boolean): void {
    this.irPara('principal');
    this.usuario = usuario;
    this.admin = admin;

    this.carregarMarcas();
    this.carregarModelos();
    this.carregarAcessorios();
    this.carregarCarros();
    this.carregarVinculos();
  }

  // Preenche a parte do select das marcas
  carregarMarcas(): void {
    this.get('marcas').subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.marcas = resposta.dados;
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Salva uma marca nova
  cadastrarMarca(): void {
    this.msg = '';
    this.erro = '';

    const dados = { nome: this.novaMarca };

    this.post('marca', dados).subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.msg = resposta.mensagem ?? 'Marca cadastrada!';
          this.novaMarca = '';
          this.carregarMarcas();
        } else {
          this.erro = resposta.mensagem ?? '';
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Apaga a marca e pergunta
  excluirMarca(marca: Marca): void {
    this.pedirExclusao('excluir_marca', { id_marca: marca.id_marca }, 'a marca ' + marca.nome + ' e seus modelos, carros e vínculos');
  }



  // Apaga um modelo do usuário
  excluirModelo(modelo: ModeloCadastrado): void {
    this.pedirExclusao('excluir_modelo', { id_modelo: modelo.id_modelo }, 'o modelo ' + modelo.modelo + ' e seus carros e vínculos');
  }

  // Troca a senha da pessoa
  alterarSenha(): void {
    this.msg = '';
    this.erro = '';

    const dados = {
      senha_atual: this.senhaAtual,
      nova_senha: this.novaSenha,
      confirmacao: this.confirmacao
    };

    this.post('alterar_senha', dados).subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.msg = resposta.mensagem ?? 'Senha alterada com sucesso.';
        } else {
          this.erro = resposta.mensagem ?? '';
        }

        this.senhaAtual = '';
        this.novaSenha = '';
        this.confirmacao = '';
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Pega o histórico de logins
  carregarHistorico(): void {
    this.get('historico').subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.historico = resposta.dados;
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  //Carros que a pessoa colocou
  carregarModelos(): void {
    this.get('modelos').subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.lista = resposta.dados;
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Salva o modelo e marca
  cadastrarModelo(): void {
    this.msg = '';
    this.erro = '';

    const dados = { modelo: this.modelo, id_marca: this.idMarca };

    this.post('modelo', dados).subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.msg = resposta.mensagem ?? 'Modelo cadastrado!';
        } else {
          this.erro = resposta.mensagem ?? '';
        }

        this.modelo = '';
        this.idMarca = '';

        this.carregarModelos();
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Acessórios que vêm do PHP (já em ordem alfabética)
  carregarAcessorios(): void {
    this.get('acessorios').subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.acessorios = resposta.dados;
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Salva um acessório novo
  cadastrarAcessorio(): void {
    this.msg = '';
    this.erro = '';

    const dados = { nome: this.novoAcessorio };

    this.post('acessorio', dados).subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.msg = resposta.mensagem ?? 'Acessório cadastrado!';
          this.novoAcessorio = '';
          this.carregarAcessorios();
        } else {
          this.erro = resposta.mensagem ?? '';
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Apaga o acessório (ele sai de todos os carros)
  excluirAcessorio(acessorio: Acessorio): void {
    this.pedirExclusao('excluir_acessorio', { id_acessorio: acessorio.id_acessorio }, 'o acessório ' + acessorio.nome + ' e seus vínculos');
  }

  // Tabela dos carros da pessoa
  carregarCarros(): void {
    this.get('carros').subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.carros = resposta.dados;
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Zera os campos do carro
  limparCarro(): void {
    this.novoCarro = { placa: '', chassi: '', cor: '', ano: '', valor: '', quilometragem: '', situacao: '', id_modelo: '' };
  }

  // Salva o carro (o PHP confere tudo de novo)
  cadastrarCarro(form: NgForm): void {
    this.msg = '';
    this.erro = '';

    this.post('carro', this.novoCarro).subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.msg = resposta.mensagem ?? 'Carro cadastrado!';

          // limpa o formulário e os avisos de campo obrigatório
          form.resetForm();
          this.limparCarro();
          this.carregarCarros();
        } else {
          this.erro = resposta.mensagem ?? '';
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Apaga o carro (os acessórios dele também saem)
  excluirCarro(carro: Carro): void {
    this.pedirExclusao('excluir_carro', { id_carro: carro.id_carro }, 'o carro ' + carro.placa + ' e seus vínculos');
  }

  // Tabela com os acessórios de cada carro
  carregarVinculos(): void {
    this.get('carros_acessorios').subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.vinculos = resposta.dados;
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Zera os selects de carro e acessório
  limparVinculo(): void {
    this.vinculo = { id_carro: '', id_acessorio: '' };
  }

  // Coloca o acessório no carro
  vincular(): void {
    this.msg = '';
    this.erro = '';

    const dados = { id_carro: this.vinculo.id_carro, id_acessorio: this.vinculo.id_acessorio };

    this.post('vincular', dados).subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.msg = resposta.mensagem ?? 'Acessório colocado no carro!';
          this.limparVinculo();
          this.carregarVinculos();
        } else {
          this.erro = resposta.mensagem ?? '';
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Tira o acessório do carro
  excluirVinculo(v: CarroAcessorio): void {
    this.pedirExclusao('excluir_vinculo', { id_carro: v.id_carro, id_acessorio: v.id_acessorio }, 'o vínculo entre ' + v.placa + ' e ' + v.acessorio);
  }


  carregarUsuarios(): void {
    this.get('usuarios').subscribe({
      next: (resposta) => { this.usuarios = resposta.dados ?? []; this.atualizar(); },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  carregarCandidaturas(): void {
    this.get('candidaturas').subscribe({
      next: (resposta) => { this.candidaturas = resposta.dados ?? []; this.atualizar(); },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  pedirExclusao(acao: string, dados: object, descricao: string): void {
    this.exclusaoPendente = { acao, dados, descricao };
    this.loginExclusao = '';
    this.senhaExclusao = '';
    this.erroExclusao = '';
    this.msg = '';
    this.atualizar();
    document.getElementById('confirmacao-exclusao')?.scrollIntoView({ behavior: 'smooth', block: 'center' });
    document.getElementById('login-exclusao')?.focus({ preventScroll: true });
  }

  cancelarExclusao(): void {
    if (this.excluindo) return;
    this.exclusaoPendente = null;
    this.loginExclusao = '';
    this.senhaExclusao = '';
    this.erroExclusao = '';
  }

  confirmarExclusao(): void {
    if (!this.exclusaoPendente || this.excluindo) return;
    this.excluindo = true;
    this.erroExclusao = '';
    const pedido = this.exclusaoPendente;
    const dados = { ...pedido.dados, login_confirmacao: this.loginExclusao, senha_confirmacao: this.senhaExclusao };
    this.post(pedido.acao, dados).subscribe({
      next: (resposta) => {
        this.excluindo = false;
        this.senhaExclusao = '';
        if (resposta.sucesso) {
          this.cancelarExclusao();
          this.msg = resposta.mensagem ?? 'Cadastro apagado!';
          this.carregarMarcas();
          this.carregarModelos();
          this.carregarCarros();
          this.carregarAcessorios();
          this.carregarVinculos();
          if (this.aba === 'usuarios') this.carregarUsuarios();
          if (this.aba === 'candidaturas') this.carregarCandidaturas();
        } else {
          this.erroExclusao = resposta.mensagem ?? 'Não foi possível excluir.';
        }
        this.atualizar();
      },
      error: (erro) => {
        this.excluindo = false;
        this.senhaExclusao = '';
        this.falhaServidor(erro);
        this.erroExclusao = this.erro;
        this.atualizar();
      }
    });
  }

  excluirUsuario(conta: UsuarioCadastrado): void {
    if (conta.login === this.usuario || conta.perfil === 'admin') return;
    this.pedirExclusao('excluir_usuario', { usuario: conta.login }, 'a conta ' + conta.login + ' e seus modelos, carros e vínculos');
  }

  excluirCandidatura(candidatura: Candidatura): void {
    this.pedirExclusao('excluir_candidatura', { id_candidato: candidatura.id_candidato }, 'a candidatura de ' + candidatura.nome);
  }

  get categoriaLog(): string {
    return this.aba === 'logs' ? 'geral' : this.aba;
  }

  fecharLog(): void {
    this.pedidoLog++;
    this.mostrarLog = false;
    this.carregandoLog = false;
    this.registrosLog = [];
    this.erroLog = '';
    this.avisoLog = '';
    this.textoParaCopiar = '';
  }

  alternarLog(): void {
    if (this.mostrarLog) {
      this.fecharLog();
    } else {
      this.mostrarLog = true;
      this.carregarLogs();
    }
  }

  carregarLogs(): void {
    const pedido = ++this.pedidoLog;
    this.carregandoLog = true;
    this.registrosLog = [];
    this.erroLog = '';
    this.avisoLog = '';
    this.textoParaCopiar = '';
    this.get('logs', { categoria: this.categoriaLog }).subscribe({
      next: (resposta) => {
        if (pedido !== this.pedidoLog) return;
        this.carregandoLog = false;
        this.registrosLog = resposta.dados ?? [];
        this.atualizar();
      },
      error: (erro) => {
        if (pedido !== this.pedidoLog) return;
        this.carregandoLog = false;
        if (erro.status === 401) this.falhaServidor(erro);
        else this.erroLog = erro.error?.mensagem ?? 'Não foi possível carregar o log.';
        this.atualizar();
      }
    });
  }

  detalhesLog(registro: RegistroLog): string {
    try { return JSON.stringify(JSON.parse(registro.detalhes ?? '{}'), null, 2); }
    catch { return registro.detalhes ?? ''; }
  }

  private conteudoCsv(): string {
    const cabecalho = ['Número', 'Data e hora (Brasília)', 'Usuário', 'Categoria', 'Ação', 'Descrição'];
    if (this.admin) cabecalho.push('Detalhes', 'IP', 'Navegador');
    const linhas: string[][] = [cabecalho];
    for (const log of this.registrosLog) {
      const linha = [String(log.id_log), log.data_hora, log.usuario, log.categoria, log.acao, log.resumo];
      if (this.admin) linha.push(log.detalhes ?? '', log.ip ?? '', log.navegador ?? '');
      linhas.push(linha);
    }
    // Aspas preservam ponto e vírgula e quebras de linha. O apóstrofo evita fórmulas no Excel.
    return linhas.map((linha) => linha.map((valor) => {
      const texto = /^[\s]*[=+@-]/.test(valor) ? "'" + valor : valor;
      return '"' + texto.replace(/"/g, '""') + '"';
    }).join(';')).join('\r\n');
  }

  exportarLog(): void {
    if (this.carregandoLog || this.erroLog || !this.registrosLog.length) return;
    const agora = new Date();
    const partes = new Intl.DateTimeFormat('sv-SE', { timeZone: 'America/Sao_Paulo', year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit', second: '2-digit', hourCycle: 'h23' }).format(agora);
    const horario = partes.replace(' ', '_').replace(/:/g, '-') + '-' + String(agora.getMilliseconds()).padStart(3, '0');
    const usuario = this.usuario.normalize('NFD').replace(/[\u0300-\u036f]/g, '').replace(/[^a-zA-Z0-9_-]/g, '_');
    const arquivo = new Blob(['\uFEFF' + this.conteudoCsv()], { type: 'text/csv;charset=utf-8;' });
    const url = URL.createObjectURL(arquivo);
    const link = document.createElement('a');
    link.href = url;
    link.download = `log_${this.categoriaLog}_${usuario}_${horario}.csv`;
    link.click();
    setTimeout(() => URL.revokeObjectURL(url), 1000);
    this.avisoLog = 'Arquivo CSV exportado. Horário de Brasília.';
  }

  async copiarLog(): Promise<void> {
    if (this.carregandoLog || this.erroLog || !this.registrosLog.length) return;
    const texto = this.conteudoCsv();
    try {
      await navigator.clipboard.writeText(texto);
      this.avisoLog = 'Log copiado para a área de transferência.';
      this.textoParaCopiar = '';
    } catch {
      this.textoParaCopiar = texto;
      this.avisoLog = 'O navegador bloqueou a cópia. O texto está selecionado abaixo: pressione Ctrl+C.';
      this.atualizar();
      (document.getElementById('copia-log') as HTMLTextAreaElement | null)?.select();
    }
    this.atualizar();
  }

}
