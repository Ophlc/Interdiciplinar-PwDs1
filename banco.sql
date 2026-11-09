DROP DATABASE IF EXISTS bd_revendedoracarros;

-- O _ci é pra não diferenciar maiúscula minúscula
CREATE DATABASE bd_revendedoracarros CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE bd_revendedoracarros;


CREATE TABLE tb_usuario (
  login VARCHAR(50) NOT NULL,
  senha VARCHAR(255) NOT NULL,   -- 255 pq a senha fica criptografada
  PRIMARY KEY (login)
);


CREATE TABLE tb_marca (
  id_marca INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_marca),

  -- Não deixa ter duas marcas com o msm nome
  UNIQUE (nome)
);


CREATE TABLE tb_modelo (
  id_modelo INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  id_marca INT NOT NULL,       -- guarda a marca do modelo
  login VARCHAR(50) NOT NULL,  -- guarda qual usuário cadastrou o modelo
  PRIMARY KEY (id_modelo),

  -- esse "on delete cascade" é se apagar a marca, os modelos dela são apagados junto
  FOREIGN KEY (id_marca) REFERENCES tb_marca (id_marca) ON DELETE CASCADE,

  FOREIGN KEY (login) REFERENCES tb_usuario (login)
);


--Guarda cada vez que a pessoa entrou
CREATE TABLE tb_log_login (
  id_log INT NOT NULL AUTO_INCREMENT,
  login VARCHAR(50) NOT NULL,
  data_hora_login DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_log),
  FOREIGN KEY (login) REFERENCES tb_usuario (login)
);


--Parte do formulário
CREATE TABLE tb_trabalheconosco (
  id_candidato INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  celular VARCHAR(11) NOT NULL,          
  cidade VARCHAR(20) NOT NULL,
  estado VARCHAR(2) NOT NULL,          
  cargo_pretendido VARCHAR(20) NOT NULL,
  link_linkdin VARCHAR(30) NULL,
  PRIMARY KEY (id_candidato)
);


--Acessórios que o carro pd ter (um cadastro só, igual as marcas)
CREATE TABLE tb_acessorio (
  id_acessorio INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_acessorio),

  -- Não deixa ter dois acessórios com o msm nome
  UNIQUE (nome)
);


--Os carros, cada carro tem um modelo (e o modelo já tem a marca)
CREATE TABLE tb_carro (
  id_carro INT NOT NULL AUTO_INCREMENT,
  placa VARCHAR(10) NOT NULL,
  chassi VARCHAR(30) NOT NULL,
  cor VARCHAR(30) NOT NULL,
  ano INT NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  quilometragem INT NOT NULL,
  situacao ENUM('D','V') NOT NULL DEFAULT 'D',  -- D = disponível, V = vendido
  id_modelo INT NOT NULL,
  PRIMARY KEY (id_carro),

  -- placa e chassi não pd repetir
  UNIQUE (placa),
  UNIQUE (chassi),

  -- ano, valor e quilometragem não pode ser negativo
  CHECK (ano >= 1900),
  CHECK (valor > 0),
  CHECK (quilometragem >= 0),

  -- se apagar o modelo, os carros dele são apagados junto
  FOREIGN KEY (id_modelo) REFERENCES tb_modelo (id_modelo) ON DELETE CASCADE
);


-- Liga os carros nos acessórios
CREATE TABLE tb_carro_acessorio (
  id_carro INT NOT NULL,
  id_acessorio INT NOT NULL,
  PRIMARY KEY (id_carro, id_acessorio),   -- o msm acessório não entra 2x no msm carro

  FOREIGN KEY (id_carro) REFERENCES tb_carro (id_carro) ON DELETE CASCADE,
  FOREIGN KEY (id_acessorio) REFERENCES tb_acessorio (id_acessorio) ON DELETE CASCADE
);


INSERT INTO tb_marca (nome) VALUES
  ('Chevrolet'),
  ('Fiat'),
  ('Volkswagen'),
  ('Ford'),
  ('Toyota'),
  ('Honda'),
  ('Hyundai'),
  ('Renault');

INSERT INTO tb_acessorio (nome) VALUES
  ('Ar condicionado'),
  ('Roda de liga leve'),
  ('Vidro elétrico'),
  ('Banco de couro'),
  ('Faróis de LED'),
  ('Sensor de estacionamento'),
  ('Rack decorativo'),
  ('Suporte para celular'),
  ('Direção elétrica'),
  ('Repetidor de seta');
