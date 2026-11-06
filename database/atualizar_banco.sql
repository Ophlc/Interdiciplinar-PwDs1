USE bd_revendedoracarros;

DROP PROCEDURE IF EXISTS atualizar_para_versoes;

DELIMITER $$
CREATE PROCEDURE atualizar_para_versoes()
BEGIN
  IF NOT EXISTS (SELECT 1 FROM information_schema.tables
                  WHERE table_schema = DATABASE() AND table_name = 'tb_versao') THEN

    DROP TABLE IF EXISTS tb_cadastro_carro;
    DELETE FROM tb_modelo WHERE id_modelo > 0;

    CREATE TABLE tb_versao (
      id_versao INT          NOT NULL AUTO_INCREMENT,
      nome      VARCHAR(100) NOT NULL,
      id_modelo INT          NOT NULL,
      PRIMARY KEY (id_versao),
      CONSTRAINT uq_versao_modelo UNIQUE (nome, id_modelo),
      CONSTRAINT fk_versao_modelo FOREIGN KEY (id_modelo)
        REFERENCES tb_modelo (id_modelo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
    ) ENGINE=InnoDB;

    CREATE TABLE tb_cadastro_carro (
      id_cadastro   INT         NOT NULL AUTO_INCREMENT,
      login         VARCHAR(50) NOT NULL,
      id_versao     INT         NOT NULL,
      quilometragem INT         NOT NULL,
      data_cadastro DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
      PRIMARY KEY (id_cadastro),
      CONSTRAINT ck_cadcarro_km CHECK (quilometragem >= 0),
      CONSTRAINT fk_cadcarro_usuario FOREIGN KEY (login)
        REFERENCES tb_usuario (login)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
      CONSTRAINT fk_cadcarro_versao FOREIGN KEY (id_versao)
        REFERENCES tb_versao (id_versao)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
    ) ENGINE=InnoDB;

  END IF;
END$$
DELIMITER ;

CALL atualizar_para_versoes();
DROP PROCEDURE atualizar_para_versoes;

-- Marcas e modelos de exemplo (a carga completa, com versões, que vem lá do database/importar_fipe.php)
INSERT IGNORE INTO tb_marca (nome) VALUES
  ('Chevrolet'),
  ('Fiat'),
  ('Volkswagen'),
  ('Ford'),
  ('Toyota'),
  ('Honda'),
  ('Hyundai'),
  ('Renault');

-- Chevrolet
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Onix', id_marca FROM tb_marca WHERE nome = 'Chevrolet';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Prisma', id_marca FROM tb_marca WHERE nome = 'Chevrolet';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Tracker', id_marca FROM tb_marca WHERE nome = 'Chevrolet';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'S10', id_marca FROM tb_marca WHERE nome = 'Chevrolet';
-- Fiat
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Argo', id_marca FROM tb_marca WHERE nome = 'Fiat';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Mobi', id_marca FROM tb_marca WHERE nome = 'Fiat';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Uno', id_marca FROM tb_marca WHERE nome = 'Fiat';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Toro', id_marca FROM tb_marca WHERE nome = 'Fiat';
-- Volkswagen
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Gol', id_marca FROM tb_marca WHERE nome = 'Volkswagen';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Polo', id_marca FROM tb_marca WHERE nome = 'Volkswagen';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'T-Cross', id_marca FROM tb_marca WHERE nome = 'Volkswagen';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Virtus', id_marca FROM tb_marca WHERE nome = 'Volkswagen';
-- Ford
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Ka', id_marca FROM tb_marca WHERE nome = 'Ford';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Fiesta', id_marca FROM tb_marca WHERE nome = 'Ford';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'EcoSport', id_marca FROM tb_marca WHERE nome = 'Ford';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Ranger', id_marca FROM tb_marca WHERE nome = 'Ford';
-- Toyota
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Corolla', id_marca FROM tb_marca WHERE nome = 'Toyota';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Hilux', id_marca FROM tb_marca WHERE nome = 'Toyota';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Yaris', id_marca FROM tb_marca WHERE nome = 'Toyota';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Etios', id_marca FROM tb_marca WHERE nome = 'Toyota';
-- Honda
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Civic', id_marca FROM tb_marca WHERE nome = 'Honda';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Fit', id_marca FROM tb_marca WHERE nome = 'Honda';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'HR-V', id_marca FROM tb_marca WHERE nome = 'Honda';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'City', id_marca FROM tb_marca WHERE nome = 'Honda';
-- Hyundai
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'HB20', id_marca FROM tb_marca WHERE nome = 'Hyundai';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Creta', id_marca FROM tb_marca WHERE nome = 'Hyundai';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Tucson', id_marca FROM tb_marca WHERE nome = 'Hyundai';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'i30', id_marca FROM tb_marca WHERE nome = 'Hyundai';
-- Renault
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Kwid', id_marca FROM tb_marca WHERE nome = 'Renault';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Sandero', id_marca FROM tb_marca WHERE nome = 'Renault';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Duster', id_marca FROM tb_marca WHERE nome = 'Renault';
INSERT IGNORE INTO tb_modelo (nome, id_marca) SELECT 'Captur', id_marca FROM tb_marca WHERE nome = 'Renault';
