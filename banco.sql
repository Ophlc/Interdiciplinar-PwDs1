DROP DATABASE IF EXISTS bd_revendedoracarros;

-- O _ci é pra não diferenciar maiúscula minúscula
CREATE DATABASE bd_revendedoracarros CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE bd_revendedoracarros;


CREATE TABLE tb_usuario (
  login VARCHAR(50) NOT NULL,
  perfil ENUM('usuario', 'admin') NOT NULL DEFAULT 'usuario',
  senha VARCHAR(255) NOT NULL,   -- espaço para o hash da senha
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


-- Guarda cada vez que a pessoa entrou
CREATE TABLE tb_log_login (
  id_log INT NOT NULL AUTO_INCREMENT,
  login VARCHAR(50) NOT NULL,
  data_hora_login DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_log),
  FOREIGN KEY (login) REFERENCES tb_usuario (login)
);


-- Parte do formulário
CREATE TABLE tb_trabalheconosco (
  id_candidato INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  celular VARCHAR(11) NOT NULL,          
  cidade VARCHAR(20) NOT NULL,
  estado VARCHAR(2) NOT NULL,          
  cargo_pretendido VARCHAR(50) NOT NULL,
  link_linkdin VARCHAR(30) NULL,
  PRIMARY KEY (id_candidato)
);


-- Acessórios que o carro pd ter (um cadastro só, igual as marcas)
CREATE TABLE tb_acessorio (
  id_acessorio INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_acessorio),

  -- Não deixa ter dois acessórios com o msm nome
  UNIQUE (nome)
);


-- Os carros, cada carro tem um modelo (e o modelo já tem a marca)
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


-- Sem chave estrangeira: o histórico continua mesmo depois de excluir uma conta.
CREATE TABLE IF NOT EXISTS tb_log_atividade (
  id_log BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  usuario VARCHAR(50) NOT NULL,
  categoria VARCHAR(20) NOT NULL,
  acao VARCHAR(40) NOT NULL,
  resumo VARCHAR(255) NOT NULL,
  detalhes LONGTEXT NOT NULL,
  ip VARCHAR(45) NOT NULL,
  navegador VARCHAR(255) NOT NULL,
  data_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_log_usuario_categoria (usuario, categoria, id_log),
  INDEX idx_log_categoria (categoria, id_log)
) ENGINE=InnoDB;

-- Senha inicial do admin: admin123. O banco guarda só o hash.
INSERT INTO tb_usuario (login, senha, perfil)
VALUES ('admin', '$2y$10$xoVNy/87i5cg4sBYjtchvedXx6NebcevUTiNWMfdR.6ic5xyC5n4a', 'admin')
ON DUPLICATE KEY UPDATE
  senha = IF(perfil = 'usuario', VALUES(senha), senha),
  perfil = 'admin';

-- Revisão simplificada da 8.1. Não apaga veículos, contas ou logs.
USE bd_revendedoracarros;
DROP TRIGGER IF EXISTS proteger_vendido_edicao;
DROP TRIGGER IF EXISTS proteger_vendido_exclusao;
DROP TRIGGER IF EXISTS proteger_acessorio_vendido_delete;
DROP TRIGGER IF EXISTS proteger_acessorio_vendido_insert;
DROP TRIGGER IF EXISTS proteger_acessorio_vendido_update;
DELIMITER $$
DROP PROCEDURE IF EXISTS adicionar_coluna_simples$$
CREATE PROCEDURE adicionar_coluna_simples(IN tabela VARCHAR(64), IN coluna VARCHAR(64), IN definicao VARCHAR(255))
BEGIN
 IF NOT EXISTS(SELECT 1 FROM information_schema.columns WHERE table_schema=DATABASE() AND table_name=tabela AND column_name=coluna) THEN
  SET @sql_simples=CONCAT('ALTER TABLE ',tabela,' ADD COLUMN ',coluna,' ',definicao);
  PREPARE comando FROM @sql_simples; EXECUTE comando; DEALLOCATE PREPARE comando;
 END IF;
END$$
DELIMITER ;
CALL adicionar_coluna_simples('tb_carro','responsavel','VARCHAR(50) NULL');
CALL adicionar_coluna_simples('tb_carro','ano_modelo','INT NULL');
CALL adicionar_coluna_simples('tb_carro','vendido_em','DATETIME NULL');
CALL adicionar_coluna_simples('tb_marca','responsavel','VARCHAR(50) NULL');
CALL adicionar_coluna_simples('tb_acessorio','responsavel','VARCHAR(50) NULL');
DROP PROCEDURE adicionar_coluna_simples;
UPDATE tb_carro c JOIN tb_modelo m ON m.id_modelo=c.id_modelo
SET c.responsavel=m.login WHERE c.responsavel IS NULL;

-- As antigas tabelas de lojas são preservadas como dados inativos.
-- Seus vínculos não podem bloquear a exclusão de contas no sistema atual.
DELIMITER $$
DROP PROCEDURE IF EXISTS desligar_vinculo_loja$$
CREATE PROCEDURE desligar_vinculo_loja(IN tabela VARCHAR(64),IN coluna VARCHAR(64))
BEGIN
 DECLARE fk VARCHAR(64);
 SELECT MAX(constraint_name) INTO fk FROM information_schema.key_column_usage
 WHERE table_schema=DATABASE() AND table_name=tabela AND column_name=coluna AND referenced_table_name='tb_usuario';
 IF fk IS NOT NULL THEN
  SET @sql_simples=CONCAT('ALTER TABLE ',tabela,' DROP FOREIGN KEY ',fk);
  PREPARE comando FROM @sql_simples; EXECUTE comando; DEALLOCATE PREPARE comando;
 END IF;
END$$
DELIMITER ;
CALL desligar_vinculo_loja('tb_loja','dono');
CALL desligar_vinculo_loja('tb_funcionario','login');
DROP PROCEDURE desligar_vinculo_loja;

DELIMITER $$
DROP PROCEDURE IF EXISTS restringir_fk_v81$$
CREATE PROCEDURE restringir_fk_v81(IN tabela VARCHAR(64), IN coluna VARCHAR(64), IN destino VARCHAR(64), IN chave VARCHAR(64))
BEGIN
 DECLARE nome_fk VARCHAR(64);
 SELECT constraint_name INTO nome_fk FROM information_schema.key_column_usage
 WHERE table_schema=DATABASE() AND table_name=tabela AND column_name=coluna AND referenced_table_name IS NOT NULL LIMIT 1;
 IF nome_fk IS NOT NULL THEN
  SET @sql_v81=CONCAT('ALTER TABLE ',tabela,' DROP FOREIGN KEY ',nome_fk);
  PREPARE comando_v81 FROM @sql_v81; EXECUTE comando_v81; DEALLOCATE PREPARE comando_v81;
 END IF;
 SET @sql_v81=CONCAT('ALTER TABLE ',tabela,' ADD FOREIGN KEY (',coluna,') REFERENCES ',destino,'(',chave,') ON DELETE RESTRICT');
 PREPARE comando_v81 FROM @sql_v81; EXECUTE comando_v81; DEALLOCATE PREPARE comando_v81;
END$$
DELIMITER ;
CALL restringir_fk_v81('tb_carro','id_modelo','tb_modelo','id_modelo');
CALL restringir_fk_v81('tb_modelo','id_marca','tb_marca','id_marca');
CALL restringir_fk_v81('tb_carro_acessorio','id_acessorio','tb_acessorio','id_acessorio');
DROP PROCEDURE restringir_fk_v81;

DELIMITER $$
DROP TRIGGER IF EXISTS proteger_vendido_exclusao$$
CREATE TRIGGER proteger_vendido_exclusao BEFORE DELETE ON tb_carro FOR EACH ROW
BEGIN
 IF OLD.situacao='V' THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Veiculo vendido protegido'; END IF;
END$$
DROP TRIGGER IF EXISTS proteger_vendido_edicao$$
CREATE TRIGGER proteger_vendido_edicao BEFORE UPDATE ON tb_carro FOR EACH ROW
BEGIN
 IF OLD.situacao='V' THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Veiculo vendido somente leitura'; END IF;
END$$
DELIMITER ;
-- Também protege a composição dos acessórios no histórico de vendidos.
DELIMITER $$
DROP TRIGGER IF EXISTS proteger_acessorio_vendido_delete$$
CREATE TRIGGER proteger_acessorio_vendido_delete BEFORE DELETE ON tb_carro_acessorio FOR EACH ROW
BEGIN
 IF EXISTS(SELECT 1 FROM tb_carro WHERE id_carro=OLD.id_carro AND situacao='V') THEN
  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Acessorios de vendido protegidos';
 END IF;
END$$
DROP TRIGGER IF EXISTS proteger_acessorio_vendido_insert$$
CREATE TRIGGER proteger_acessorio_vendido_insert BEFORE INSERT ON tb_carro_acessorio FOR EACH ROW
BEGIN
 IF EXISTS(SELECT 1 FROM tb_carro WHERE id_carro=NEW.id_carro AND situacao='V') THEN
  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Acessorios de vendido protegidos';
 END IF;
END$$
DROP TRIGGER IF EXISTS proteger_acessorio_vendido_update$$
CREATE TRIGGER proteger_acessorio_vendido_update BEFORE UPDATE ON tb_carro_acessorio FOR EACH ROW
BEGIN
 IF EXISTS(SELECT 1 FROM tb_carro WHERE id_carro IN (OLD.id_carro,NEW.id_carro) AND situacao='V') THEN
  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Acessorios de vendido protegidos';
 END IF;
END$$
DELIMITER ;
