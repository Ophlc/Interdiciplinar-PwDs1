DROP DATABASE IF EXISTS bd_revendedoracarros;
CREATE DATABASE bd_revendedoracarros CHARACTER SET utf8mb4;
USE bd_revendedoracarros;

CREATE TABLE tb_usuario (
  login VARCHAR(50) NOT NULL,
  senha VARCHAR(10) NOT NULL,
  PRIMARY KEY (login)
);

CREATE TABLE tb_marca (
  id_marca INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_marca)
);

CREATE TABLE tb_modelo (
  id_modelo INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  id_marca INT NOT NULL,
  login VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_modelo),
  FOREIGN KEY (id_marca) REFERENCES tb_marca (id_marca),
  FOREIGN KEY (login) REFERENCES tb_usuario (login)
);

-- Cada modelo pertence a um usuário (coluna login)

-- Marcas cadastradas na mão (não tem API).
-- Para adicionar mais, é só inserir aqui ou pelo phpMyAdmin.
INSERT INTO tb_marca (nome) VALUES
  ('Chevrolet'),
  ('Fiat'),
  ('Volkswagen'),
  ('Ford'),
  ('Toyota'),
  ('Honda'),
  ('Hyundai'),
  ('Renault'),
  ('Porsche'),
  ('McLaren');
