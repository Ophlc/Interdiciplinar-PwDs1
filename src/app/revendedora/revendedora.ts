import { ChangeDetectorRef, Component, OnInit, ViewEncapsulation } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { Title } from '@angular/platform-browser';

// Estruturas dos dados que vêm do PHP

interface Marca {
  id_marca: number;
  nome: string;
}

interface ModeloCadastrado {
  modelo: string;
  marca: string;
}

interface Resposta {
  sucesso: boolean;
  mensagem?: string;
  usuario?: string | null;
  dados?: any;
}

// Endereço da API PHP (que é a pasta que fica lá dentro do htdocs)

const API = 'http://localhost/api-revendedora/api.php';


@Component({
  selector: 'app-revendedora',
  imports: [FormsModule],
  templateUrl: './revendedora.html',
  styleUrl: './revendedora.css',
  encapsulation: ViewEncapsulation.None
})
export class Revendedora implements OnInit {

  // Qual tela ta aparecendo

  tela = 'carregando';

  // Os campos do formulário

  login = '';
  senha = '';
  modelo = '';
  idMarca = '';

  // Dados na tela

  usuario = '';
  marcas: Marca[] = [];
  lista: ModeloCadastrado[] = [];

  // Algumas mensagens

  msg = '';
  erro = '';
  cadastrado = false;

  // Construtor: coloca o HttpClient (pra chamar a API PHP), o ChangeDetectorRef (pra atualizar a tela) e o Title (que é pra mudar o título)

  constructor(
    private http: HttpClient,
    private cdr: ChangeDetectorRef,
    private titulo: Title
  ) {
  }

  // Esse só é executado quando o componente é carregado

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

  // Chamadas HTTP

  private get(acao: string) {
    return this.http.get<Resposta>(`${API}?acao=${acao}`, { withCredentials: true });
  }

  private post(acao: string, dados: object) {
    return this.http.post<Resposta>(`${API}?acao=${acao}`, dados, { withCredentials: true });
  }

  private atualizar(): void {
    this.cdr.detectChanges();
  }

  private falhaServidor(erro: any): void {

    console.error('Erro:', erro);

    if (erro.status === 401) {

      // Se a sessão expirou: volta para o login
      this.irPara('login');
    } else {
      this.erro = 'Não foi possível conectar ao servidor.';
    }

    this.atualizar();
  }

  // Troca de tela ( faz a limpa dos campos e mensagens)

  irPara(tela: string, evento?: Event): void {

    if (evento) {
      evento.preventDefault();
    }

    this.tela = tela;
    this.login = '';
    this.senha = '';
    this.modelo = '';
    this.idMarca = '';
    this.msg = '';
    this.erro = '';
    this.cadastrado = false;

    const titulos: { [chave: string]: string } = {
      login: 'Entrar',
      cadastro: 'Cadastro de usuário',
      principal: 'Cadastro'
    };

    this.titulo.setTitle(titulos[tela] ?? 'Revendedora de Carros');
    this.atualizar();
  }

  // A parte do login

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

  // Aqui é naquela hora de cadastrar os usuários

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

  // Parte de sair daquele usuário

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

  // Principal tela

  abrirPrincipal(usuario: string): void {

    this.irPara('principal');
    this.usuario = usuario;

    this.carregarMarcas();
    this.carregarModelos();

  }

  // Preenche o combobox das marcas

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

  // A tabela dos carros que o usuário já colocou
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

  // Grava o modelo
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
