import { TestBed } from '@angular/core/testing';
import { provideHttpClient } from '@angular/common/http';
import { HttpTestingController, provideHttpClientTesting } from '@angular/common/http/testing';
import { App } from './app';

// Confere a tela inicial sem depender do Apache nos testes.
describe('App', () => {
  it('mostra o login quando não existe uma sessão', async () => {
    await TestBed.configureTestingModule({
      imports: [App],
      providers: [provideHttpClient(), provideHttpClientTesting()]
    }).compileComponents();
    const fixture = TestBed.createComponent(App);
    fixture.detectChanges();
    const http = TestBed.inject(HttpTestingController);
    http.expectOne((req) => req.params.get('acao') === 'sessao')
      .flush({ sucesso: true, usuario: null, admin: false });
    fixture.detectChanges();
    expect(fixture.nativeElement.textContent).toContain('Entrar');
    http.verify();
  });
});
