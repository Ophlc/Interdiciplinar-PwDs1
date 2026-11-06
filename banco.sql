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

  -- on delete cascade se apagar a marca, os modelos dela são apagados junto
  FOREIGN KEY (id_marca) REFERENCES tb_marca (id_marca) ON DELETE CASCADE,

  FOREIGN KEY (login) REFERENCES tb_usuario (login)
);


-- Guarda cada vez que a pessoa faz login
CREATE TABLE tb_log_login (
  id_log INT NOT NULL AUTO_INCREMENT,
  login VARCHAR(50) NOT NULL,
  data_hora_login DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_log),
  FOREIGN KEY (login) REFERENCES tb_usuario (login)
);


-- Candidatos do formulário
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


INSERT INTO tb_marca (nome) VALUES
  ('Chevrolet'),
  ('Fiat'),
  ('Volkswagen'),
  ('Ford'),
  ('Toyota'),
  ('Honda'),
  ('Hyundai'),
  ('Renault');