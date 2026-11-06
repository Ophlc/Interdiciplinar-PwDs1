DROP DATABASE IF EXISTS bd_revendedoracarros;

-- Cria o banco de novo, com utf8mb4
CREATE DATABASE bd_revendedoracarros CHARACTER SET utf8mb4;

-- Pô, preciso nem falar né, fala que vamos usar o banco
USE bd_revendedoracarros;


-- Tabela dos usuários que faz login no site
CREATE TABLE tb_usuario (
  login VARCHAR(50) NOT NULL,
  senha VARCHAR(10) NOT NULL,
  PRIMARY KEY (login)          -- aahh, e o login não pode repetir
);


-- Tabela das marcas 
CREATE TABLE tb_marca (
  id_marca INT NOT NULL AUTO_INCREMENT,   -- número que o próprio banco gera (1, 2, 3...)
  nome VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_marca)
);


-- Parte da tabela dos modelos que cada usuário cadastra
CREATE TABLE tb_modelo (
  id_modelo INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  id_marca INT NOT NULL,       -- guarda a marca do modelo
  login VARCHAR(50) NOT NULL,  -- guarda qual usuário cadastrou o modelo
  PRIMARY KEY (id_modelo),

  -- id_marca só aceita um número que já existe em tb_marca
  FOREIGN KEY (id_marca) REFERENCES tb_marca (id_marca),

  -- login só aceita um usuário que já existe la em tb_usuario, que é pra separar o modelo de cada usuário
  FOREIGN KEY (login) REFERENCES tb_usuario (login)
);


-- Marcas cadastradas na mão fi
INSERT INTO tb_marca (nome) VALUES
  ('Chevrolet'),
  ('Fiat'),
  ('Volkswagen'),
  ('Ford'),
  ('Toyota'),
  ('Honda'),
  ('Hyundai'),
  ('Renault');