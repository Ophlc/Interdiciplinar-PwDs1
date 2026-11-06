import { ChangeDetectorRef, Component, OnInit, ViewEncapsulation } from '@angular/core';
import { FormsModule, NgForm } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
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
}

// Login do histórico
interface Acesso {
  data: string;
  hora: string;
}

interface Resposta {
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

  // Campos dos formulários
  login = '';
  senha = '';
  modelo = '';
  idMarca = '';
  novaMarca = '';
  senhaAtual = '';
  novaSenha = '';
  confirmacao = '';

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

  // Mensagens
  msg = '';
  erro = '';
  cadastrado = false;

  // Pra apagar marca,segundo metodo
  marcaParaExcluir: Marca | null = null;
  loginConfirma = '';
  senhaConfirma = '';
  erroExcluir = '';

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
          this.abrirPrincipal(resposta.usuario);
        } else {
          this.irPara('login');
        }
      },
      error: (erro) => {
        console.error('Erro ao verificar a sessão:', erro);
        this.irPara('login');
        this.erro = 'Não foi possível conectar ao servidor.';
        this.atualizar();
      }
    });
  }

  // Funções que chamam o PHP
  private get(acao: string) {
    return this.http.get<Resposta>(`${API}?acao=${acao}`, { withCredentials: true });
  }

  private post(acao: string, dados: object) {
    return this.http.post<Resposta>(`${API}?acao=${acao}`, dados, { withCredentials: true });
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
    } else {
      this.erro = 'Não foi possível conectar ao servidor.';
    }

    this.atualizar();
  }

  irPara(tela: string, evento?: Event): void {
    if (evento) {
      evento.preventDefault();
    }

    this.tela = tela;
    this.login = '';
    this.senha = '';
    this.modelo = '';
    this.idMarca = '';
    this.novaMarca = '';
    this.senhaAtual = '';
    this.novaSenha = '';
    this.confirmacao = '';
    this.marcaParaExcluir = null;
    this.loginConfirma = '';
    this.senhaConfirma = '';
    this.erroExcluir = '';
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

  // Troca entre a aba de modelos e a de marcas
  trocarAba(aba: string, evento: Event): void {
    evento.preventDefault();

    this.aba = aba;
    this.modelo = '';
    this.idMarca = '';
    this.novaMarca = '';
    this.senhaAtual = '';
    this.novaSenha = '';
    this.confirmacao = '';
    this.marcaParaExcluir = null;
    this.loginConfirma = '';
    this.senhaConfirma = '';
    this.erroExcluir = '';
    this.msg = '';
    this.erro = '';

    if (aba === 'marcas') {
      this.tituloPagina.setTitle('Cadastro de marca');
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
          this.abrirPrincipal(resposta.usuario ?? this.login);
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
  abrirPrincipal(usuario: string): void {
    this.irPara('principal');
    this.usuario = usuario;

    this.carregarMarcas();
    this.carregarModelos();
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
    const certeza = confirm('Certeza que vai apagar a marca ' + marca.nome + '??? Todos os modelos dessa marca vai sumir também.');
    if (!certeza) {
      return;
    }

    // segunda confirmação
    this.marcaParaExcluir = marca;
    this.loginConfirma = '';
    this.senhaConfirma = '';
    this.erroExcluir = '';
    this.msg = '';
    this.erro = '';

    this.atualizar();
  }

  // Fecha a caixa sem apagar
  cancelarExclusao(): void {
    this.marcaParaExcluir = null;
    this.loginConfirma = '';
    this.senhaConfirma = '';
    this.erroExcluir = '';

    this.atualizar();
  }

  // Apaga a marca se o login e a senha estiver certo
  confirmarExclusaoMarca(): void {
    const marca = this.marcaParaExcluir;
    if (!marca) {
      return;
    }

    this.erroExcluir = '';

    const dados = { id_marca: marca.id_marca, login: this.loginConfirma, senha: this.senhaConfirma };

    this.post('excluir_marca', dados).subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.msg = resposta.mensagem ?? 'Marca apagada!';
          this.cancelarExclusao();

          // recarrega as duas, porque os modelos da marca sumiram também
          this.carregarMarcas();
          this.carregarModelos();
        } else {
          this.erroExcluir = resposta.mensagem ?? '';
          this.senhaConfirma = '';
        }
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
  }

  // Apaga um modelo do usuário
  excluirModelo(modelo: ModeloCadastrado): void {
    const certeza = confirm('Apagar o modelo ' + modelo.modelo + '?');
    if (!certeza) {
      return;
    }

    this.msg = '';
    this.erro = '';

    this.post('excluir_modelo', { id_modelo: modelo.id_modelo }).subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.msg = resposta.mensagem ?? 'Modelo apagado!';
        } else {
          this.erro = resposta.mensagem ?? '';
        }

        this.carregarModelos();
        this.atualizar();
      },
      error: (erro) => this.falhaServidor(erro)
    });
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

}
