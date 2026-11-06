import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClient } from '@angular/common/http';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { Revendedora } from './revendedora';

describe('Revendedora', () => {
  let component: Revendedora;
  let fixture: ComponentFixture<Revendedora>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [Revendedora],
      providers: [provideHttpClient(), provideHttpClientTesting()],
    }).compileComponents();

    fixture = TestBed.createComponent(Revendedora);
    component = fixture.componentInstance;
    await fixture.whenStable();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
