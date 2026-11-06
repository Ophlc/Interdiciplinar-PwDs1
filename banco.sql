DROP DATABASE IF EXISTS bd_revendedoracarros;

-- O _ci é pra não diferenciar maiúscula minúscula
CREATE DATABASE bd_revendedoracarros CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Pô, preciso nem falar né, fala que vamos usar o banco
USE bd_revendedoracarros;


CREATE TABLE tb_usuario (
  login VARCHAR(50) NOT NULL,
  senha VARCHAR(255) NOT NULL,   -- 255 porque a senha fica criptografada e o código dela é grande
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


-- Guarda cada vez que o usuário faz login (aparece na parte de alterar senha)
CREATE TABLE tb_log_login (
  id_log INT NOT NULL AUTO_INCREMENT,
  login VARCHAR(50) NOT NULL,
  data_hora_login DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,  -- o próprio banco coloca a data e a hora
  PRIMARY KEY (id_log),
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