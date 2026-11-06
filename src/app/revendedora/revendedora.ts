import { ChangeDetectorRef, Component, OnInit, ViewEncapsulation } from '@angular/core';
import { FormsModule } from '@angular/forms';
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

interface Resposta {
  sucesso: boolean;
  mensagem?: string;
  usuario?: string | null;
  dados?: any;
}

// Localização da pasta api_revendedora
const API = 'http://localhost/api-revendedora/api.php';

@Component({
  selector: 'app-revendedora',
  imports: [FormsModule],
  templateUrl: './revendedora.html',
  styleUrl: './revendedora.css',
  encapsulation: ViewEncapsulation.None
})
export class Revendedora implements OnInit {

  // Qual tela que ta aparecendo
  tela = 'carregando';

  // Aba que está aberta na tela principal: modelos ou marcas
  aba = 'modelos';

  // Campos dos formulários
  login = '';
  senha = '';
  modelo = '';
  idMarca = '';
  novaMarca = '';

  // Dados que aparecem la na tela
  usuario = '';
  marcas: Marca[] = [];
  lista: ModeloCadastrado[] = [];

  // Mensagens
  msg = '';
  erro = '';
  cadastrado = false;

  constructor(
    private http: HttpClient,
    private cdr: ChangeDetectorRef,
    private tituloPagina: Title
  ) { }

  // Roda quando a página abrir, e vê se já tem algum usuário logado
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
      // acaba a sessão, volta pro login
      this.irPara('login');
    } else {
      this.erro = 'Não foi possível conectar ao servidor.';
    }

    this.atualizar();
  }

  // limpa os campos e as mensagens e troca de tela e 
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
    this.aba = 'modelos';
    this.msg = '';
    this.erro = '';
    this.cadastrado = false;

    // título 
    let nomeDaPagina = 'Revendedora de Carros';
    if (tela === 'login') {
      nomeDaPagina = 'Entrar';
    } else if (tela === 'cadastro') {
      nomeDaPagina = 'Cadastro de usuário';
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
    this.msg = '';
    this.erro = '';

    if (aba === 'marcas') {
      this.tituloPagina.setTitle('Cadastro de marca');
    } else {
      this.tituloPagina.setTitle('Cadastro');
    }

    this.atualizar();
  }

  // Parte do login
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

  // Cadastro de novo usuário
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

  // Pra sair da conta
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

  // Salva uma marca nova (o PHP não deixa repetir)
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

  // Apaga a marca (pergunta antes, porque os modelos dela vão embora junto)
  excluirMarca(marca: Marca): void {
    const certeza = confirm('Apagar a marca ' + marca.nome + '? Todos os modelos dessa marca também serão apagados.');
    if (!certeza) {
      return;
    }

    this.msg = '';
    this.erro = '';

    this.post('excluir_marca', { id_marca: marca.id_marca }).subscribe({
      next: (resposta) => {
        if (resposta.sucesso) {
          this.msg = resposta.mensagem ?? 'Marca apagada!';
        } else {
          this.erro = resposta.mensagem ?? '';
        }

        // recarrega as duas, porque os modelos da marca sumiram também
        this.carregarMarcas();
        this.carregarModelos();
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

  // Tabela dos carros do usuário que ele colocou
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

  // Salva o modelo e marca escolhida
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
