// Parte de importar as ferramentas do Angular
import { ComponentFixture, TestBed } from '@angular/core/testing';

// Esses dois são pro HttpClient: o componente chama a API PHP,
// então no teste usamos uma versão "de mentira" pra não depender do servidor
import { provideHttpClient } from '@angular/common/http';
import { provideHttpClientTesting } from '@angular/common/http/testing';

// O componente que vai ser testado
import { Revendedora } from './revendedora';

// Aqui começa o grupo de testes do componente Revendedora
describe('Revendedora', () => {

  // component é o próprio componente né, fixture é tipo um "envelope" dele no teste
  let component: Revendedora;
  let fixture: ComponentFixture<Revendedora>;

  // Roda antes de cada teste, pra deixar tudo pronto
  beforeEach(async () => {

    // Monta o ambiente de teste com o componente e o HttpClient de mentirinha
    await TestBed.configureTestingModule({
      imports: [Revendedora],
      providers: [provideHttpClient(), provideHttpClientTesting()],
    }).compileComponents();

    // Cria o componente e guarda ele pra usar nos testes
    fixture = TestBed.createComponent(Revendedora);
    component = fixture.componentInstance;

    // Espera o Angular terminar de carregar tudo
    await fixture.whenStable();
  });

  // Teste simples: só vê se o componente foi criado sem resenhar
  it('should create', () => {
    expect(component).toBeTruthy();
  });
});