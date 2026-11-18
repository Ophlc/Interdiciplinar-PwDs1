import { TestBed } from '@angular/core/testing';
import { provideHttpClient } from '@angular/common/http';
import { HttpTestingController, provideHttpClientTesting } from '@angular/common/http/testing';
import { Revendedora } from './revendedora';

// A permissão real é conferida pelo PHP; este teste confere as abas da tela.
describe('Revendedora', () => {
  it('não mostra as abas de admin para um usuário comum', async () => {
    await TestBed.configureTestingModule({
      imports: [Revendedora],
      providers: [provideHttpClient(), provideHttpClientTesting()]
    }).compileComponents();
    const fixture = TestBed.createComponent(Revendedora);
    fixture.detectChanges();
    const http = TestBed.inject(HttpTestingController);
    http.expectOne((req) => req.params.get('acao') === 'sessao')
      .flush({ sucesso: true, usuario: 'aluno', admin: false });
    for (const acao of ['marcas', 'modelos', 'acessorios', 'carros', 'carros_acessorios']) {
      http.expectOne((req) => req.params.get('acao') === acao)
        .flush({ sucesso: true, dados: [] });
    }
    fixture.detectChanges();
    const texto = fixture.nativeElement.textContent;
    expect(texto).not.toContain('Log geral');
    expect(texto).not.toContain('Usuários cadastrados');
    expect(fixture.componentInstance.admin).toBe(false);
    http.verify();
  });
});
