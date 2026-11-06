-- Marcas e modelos de carros da API FIPE (gerado por importar_fipe.php)
USE bd_revendedoracarros;
SET NAMES utf8mb4;

INSERT IGNORE INTO tb_marca (nome) VALUES
  ('Acura'),
  ('Agrale'),
  ('Alfa Romeo'),
  ('AM Gen'),
  ('ARROW'),
  ('Asia Motors'),
  ('ASTON MARTIN'),
  ('Audi'),
  ('Baby'),
  ('BMW'),
  ('BRM'),
  ('Bugre'),
  ('BYD'),
  ('CAB Motors'),
  ('Cadillac'),
  ('Caoa Changan'),
  ('Caoa Chery'),
  ('Caoa Chery/Chery'),
  ('CBT Jipe'),
  ('CHANA'),
  ('CHANGAN'),
  ('Chrysler'),
  ('Citroën'),
  ('Cross Lander'),
  ('D2D Motors'),
  ('Daewoo'),
  ('Daihatsu'),
  ('Denza'),
  ('DFSK'),
  ('Dodge'),
  ('EFFA'),
  ('Engesa'),
  ('Envemo'),
  ('Ferrari'),
  ('FEVER'),
  ('Fiat'),
  ('Fibravan'),
  ('Ford'),
  ('FOTON'),
  ('Fyber'),
  ('GAC'),
  ('GEELY'),
  ('Chevrolet'),
  ('GREAT WALL'),
  ('Gurgel'),
  ('GWM'),
  ('HAFEI'),
  ('HITECH ELECTRIC'),
  ('Honda'),
  ('Hyundai'),
  ('Isuzu'),
  ('IVECO'),
  ('JAC'),
  ('Jaecoo'),
  ('Jaguar'),
  ('Jeep'),
  ('Jetour'),
  ('JINBEI'),
  ('JPX'),
  ('Kia Motors'),
  ('Lada'),
  ('LAMBORGHINI'),
  ('Land Rover'),
  ('Leapmotor'),
  ('Lexus'),
  ('LIFAN'),
  ('LOBINI'),
  ('Lotus'),
  ('Mahindra'),
  ('Maserati'),
  ('Matra'),
  ('Mazda'),
  ('Mclaren'),
  ('Mercedes-Benz'),
  ('Mercury'),
  ('MG'),
  ('MINI'),
  ('Mitsubishi'),
  ('Miura'),
  ('NETA'),
  ('Nissan'),
  ('Omoda'),
  ('Peugeot'),
  ('Plymouth'),
  ('Pontiac'),
  ('Porsche'),
  ('RAM'),
  ('RELY'),
  ('Renault'),
  ('Rolls-Royce'),
  ('Rover'),
  ('Saab'),
  ('Saturn'),
  ('Seat'),
  ('SERES'),
  ('SHINERAY'),
  ('smart'),
  ('SSANGYONG'),
  ('Subaru'),
  ('Suzuki'),
  ('TAC'),
  ('Toyota'),
  ('Troller'),
  ('Volvo'),
  ('VolksWagen'),
  ('Wake'),
  ('Walk'),
  ('ZEEKR');

-- Acura
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Acura');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Integra', @m),
  ('Legend', @m),
  ('NSX', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Integra');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GS 1.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Legend');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.2/3.5', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'NSX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0', @mo);

-- Agrale
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Agrale');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Marruá', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Marruá');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.8 12V 132cv TDI Diesel', @mo),
  ('AM 100 2.8 CS TDI Diesel', @mo),
  ('AM 100 2.8 CD TDI Diesel', @mo),
  ('AM 150 2.8 CS TDI Diesel', @mo),
  ('AM 150 2.8 CD TDI Diesel', @mo),
  ('AM 200 2.8 CD TDI Diesel', @mo),
  ('AM 200 2.8 CS TDI Diesel', @mo),
  ('AM 200 Esc. 3.8 TDI Die.Aut. (E6)', @mo),
  ('AM 200 Escolar 2.8 TDI Diesel', @mo),
  ('AM 200 Escolar 3.8 TDI Die. (E6)', @mo),
  ('AM 200 Microbus 2.8 TDI Diesel', @mo),
  ('AM 250 3.8 CD TDI Die. Aut. (E6)', @mo),
  ('AM 250 3.8 CD TDI Diesel (E6)', @mo),
  ('AM 250 3.8 CS TDI Die. Aut. (E6)', @mo),
  ('AM 250 3.8 CS TDI Diesel (E6)', @mo),
  ('AM 50 2.8 140cv TDI Diesel', @mo);

-- Alfa Romeo
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Alfa Romeo');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('145', @m),
  ('147', @m),
  ('155', @m),
  ('156', @m),
  ('164', @m),
  ('166', @m),
  ('2300', @m),
  ('Spider', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '145');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Elegant 1.7/1.8 16V', @mo),
  ('Elegant 2.0 16V', @mo),
  ('Quadrifoglio 2.0', @mo),
  ('QV', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '147');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 148cv 4p Semi-Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '155');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('Super', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '156');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 V6 24V 190cv 4p Aut.', @mo),
  ('Sport Wagon 2.0 16V', @mo),
  ('Sport Wagon 2.5 V6 24V 4p Aut.', @mo),
  ('TS/Sport/Elegant 2.0 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '164');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6', @mo),
  ('Super V6 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '166');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '2300');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('TI/TI-4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Spider');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0/3.0', @mo);

-- AM Gen
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'AM Gen');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Hummer', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Hummer');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Hard-Top 6.5 4x4 Diesel TB', @mo),
  ('Open-Top 6.5 4x4 Diesel TB', @mo),
  ('Wagon 6.5 4x4 Diesel TB', @mo);

-- ARROW
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'ARROW');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('2 Urban', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '2 Urban');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cargo 85 5m³', @mo),
  ('Cargo 85 7m³', @mo),
  ('Chassi 85', @mo);

-- Asia Motors
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Asia Motors');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('AM-825', @m),
  ('Hi-Topic', @m),
  ('Jipe', @m),
  ('Topic', @m),
  ('Towner', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'AM-825');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Luxo 4.0 Diesel', @mo),
  ('Super Luxo 4.0 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Hi-Topic');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SLX/SDX/DLX Full Diesel', @mo),
  ('STD Diesel', @mo),
  ('Van 2.7 Diesel (furgão)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Jipe');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Rocsta GT 4x4 2.2 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Topic');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Carga 2.7 Diesel (furgão)', @mo),
  ('Luxo Diesel', @mo),
  ('Super Luxo Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Towner');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coach Full', @mo),
  ('Furgão', @mo),
  ('Glass Van', @mo),
  ('Luxo', @mo),
  ('Multiuso 5p', @mo),
  ('Panel Van', @mo),
  ('Pick-Up', @mo),
  ('SDX / DLX/ STD', @mo),
  ('Super Luxo', @mo),
  ('Truck', @mo);

-- ASTON MARTIN
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'ASTON MARTIN');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('DB12', @m),
  ('DB9', @m),
  ('DBS', @m),
  ('DBX', @m),
  ('DBX707', @m),
  ('Rapide', @m),
  ('Vanquish', @m),
  ('Vantage', @m),
  ('Virage', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'DB12');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 4.0 V8 680cv', @mo),
  ('Volante 4.0 V8 680cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'DB9');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 6.0 V12 510cv', @mo),
  ('Volante 6.0 V12 470cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'DBS');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 5.2 V12 725cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'DBX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.0 V8 550cv', @mo),
  ('S 4.0 V8 727cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'DBX707');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.0 V8 707cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Rapide');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.0 V12 477cv', @mo),
  ('S 6.0 V12 550cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Vanquish');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('V12 5.2 835cv', @mo),
  ('V12 6.0 565cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Vantage');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.0 V12 510cv', @mo),
  ('Coupe 4.7 V8 425cv', @mo),
  ('Cupê 4.0 V8 510cv', @mo),
  ('Cupê F1 Edition 4.0 V8 535cv', @mo),
  ('Roadster 4.7 V8 420cv', @mo),
  ('Roadster F1 Edition 4.0 V8 535cv', @mo),
  ('S 6.0 V12 565cv', @mo),
  ('S Coupe 4.0 V8 680cv', @mo),
  ('S Coupe 4.7 V8 430cv', @mo),
  ('S Roadster 4.0 V8 510cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Virage');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 6.0 V12 490cv', @mo);

-- Audi
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Audi');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('100', @m),
  ('80', @m),
  ('A1', @m),
  ('A3', @m),
  ('A4', @m),
  ('A5', @m),
  ('A6', @m),
  ('A7', @m),
  ('A8', @m),
  ('Allroad', @m),
  ('Avant', @m),
  ('E-TRON', @m),
  ('Q3', @m),
  ('Q5', @m),
  ('Q6', @m),
  ('Q7', @m),
  ('Q8', @m),
  ('R8', @m),
  ('RS', @m),
  ('RS3', @m),
  ('RS4', @m),
  ('RS5', @m),
  ('RS6', @m),
  ('RS7', @m),
  ('S3', @m),
  ('S4', @m),
  ('S5', @m),
  ('S6', @m),
  ('S7', @m),
  ('S8', @m),
  ('SQ5', @m),
  ('SQ6', @m),
  ('SQ8', @m),
  ('TT', @m),
  ('Ttrs', @m),
  ('TTS', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '100');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.8 V6', @mo),
  ('2.8 V6 Avant', @mo),
  ('S-4 2.2 Avant Turbo', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '80');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0', @mo),
  ('2.0 Avant', @mo),
  ('2.6/ 2.8', @mo),
  ('2.6/2.8 Avant', @mo),
  ('2.8 Cabriolet', @mo),
  ('S2 Avant', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A1');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.4 TFSI 122cv S-tronic 3p', @mo),
  ('2.0 TFSI Quattro 256cv 3p', @mo),
  ('Sport 1.4 TFSI 185cv 3p S-tronic', @mo),
  ('Sport. S Edition 1.4 TFSI 5p S-tronic', @mo),
  ('Sportback 1.4 TFSI 185cv 5p S-tronic', @mo),
  ('Sportback 1.4 TFSI 5p S-tronic', @mo),
  ('Sportback 1.8 TFSI 192cv 5p S-tronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 3p', @mo),
  ('1.6 3p Aut.', @mo),
  ('1.6 5p', @mo),
  ('1.6 5p Aut.', @mo),
  ('1.6 8V 102cv 3p', @mo),
  ('1.8 3p', @mo),
  ('1.8 3p Aut.', @mo),
  ('1.8 5p Aut.', @mo),
  ('1.8 5p Mec.', @mo),
  ('1.8 Turbo 180cv 3p Aut./ Tip.', @mo),
  ('1.8 Turbo 180cv 3p Mec.', @mo),
  ('1.8 Turbo 180cv 5p Aut./ Tip.', @mo),
  ('1.8 Turbo 180cv 5p Mec.', @mo),
  ('1.8 Turbo 3p Aut.', @mo),
  ('1.8 Turbo 3p Mec.', @mo),
  ('1.8 Turbo 5p Aut.', @mo),
  ('1.8 Turbo 5p Mec.', @mo),
  ('Cabriolet 1.8 16V TFSI 180cv S-tronic', @mo),
  ('Cabriolet Ambition 2.0 TFSI S-tronic', @mo),
  ('Cabriolet Perfor. 2.0 TFSI S-tronic', @mo),
  ('Sed. Ambition 2.0 TSFI 220cv S-tronic', @mo),
  ('Sed. P. Plus Tech 1.4 Flex TFSI Tip.', @mo),
  ('Sed. P.Plus 1.4 25Anos Flex TFSI Tip.', @mo),
  ('Sed.1.8/1.8 Ambit.16V TB FSI S-tronic', @mo),
  ('Sed.Perf. Black 2.0 TFSI S-tr. (Hib.)', @mo),
  ('Sed.Perf. Black 2.0 TFSI S-tronic', @mo),
  ('Sedan 1.4 TFSI Flex Tiptronic 4p', @mo),
  ('Sedan 1.4/ Attra. 16V TB FSI S-tronic', @mo),
  ('Sedan Advance 2.0 TFSI S-tronic', @mo),
  ('Sedan Performance 2.0 TFSI S-tronic', @mo),
  ('Sedan Prestige 1.4 TFSI Flex Tip.', @mo),
  ('Sedan Prestige Plus 1.4 TFSI Flex Tip', @mo),
  ('Sedan S-Line 2.0 TFSI S-Tron.(Híb.)', @mo),
  ('Sedan S-Line Limited 1.4 TFSI Tiptro.', @mo),
  ('Sport 1.8 16V TFSI S-tronic 3p', @mo),
  ('Sport 2.0 16V TFSI S- tronic', @mo),
  ('Sportb. Perf. Black 2.0 S-tron.(Híb.)', @mo),
  ('Sportb. Performance 2.0 TFSI S-tronic', @mo),
  ('Sportb. Performance Black 2.0 S-tron.', @mo),
  ('Sportb. Prestige Plus 1.4 TFSI S-tron', @mo),
  ('Sportb. S-Line 2.0 TFSI S-Tron.(Híb.)', @mo),
  ('Sportb. S-Line Limited 1.4 TFSI Tip.', @mo),
  ('Sportback 1.4 TFSI S-tronic', @mo),
  ('Sportback 1.6 8V 102cv 5p', @mo),
  ('Sportback 1.8 16V TFSI S-tronic 5p', @mo),
  ('Sportback 2.0 16V TFSI Mec.', @mo),
  ('Sportback 2.0 16V TFSI S-tronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 Aut.', @mo),
  ('1.8 Mec.', @mo),
  ('1.8 Avant Aut.', @mo),
  ('1.8 Avant Mec.', @mo),
  ('1.8 Avant Turbo Mec.', @mo),
  ('1.8 Avant Turbo Tip./ Multitronic', @mo),
  ('1.8 Tip./ Multitronic Turbo', @mo),
  ('1.8 Turbo', @mo),
  ('2.0 16V TFSI 183/180cv Multitronic', @mo),
  ('2.0 16V TFSI 200/ 214cv Multitronic', @mo),
  ('2.0 16V TFSI Quattro Stronic', @mo),
  ('2.0 20V 130cv Multitronic 4p', @mo),
  ('2.0 Avant 16V TFSI Quattro Stronic', @mo),
  ('2.0 Avant Ambie. 2.0 16V TFSi S tron.', @mo),
  ('2.0 Avant TFSI 183/180cv Multitroni', @mo),
  ('2.0 Avant TFSI 200/214cv Multitron.', @mo),
  ('2.4 30V Avant Mec.', @mo),
  ('2.4 30V Avant Tip./Multitronic', @mo),
  ('2.4 30V Mec.', @mo),
  ('2.4 30V Tip./Multitronic', @mo),
  ('2.4 Avant V6 30V Quattro Mec.', @mo),
  ('2.4 Avant V6 30V Quattro Tiptronic', @mo),
  ('2.4 V6 30V Quattro Mec.', @mo),
  ('2.4 V6 30V Quattro Tiptronic', @mo),
  ('2.8', @mo),
  ('2.8 30V Tiptronic/ Aut.', @mo),
  ('2.8 30V Mec.', @mo),
  ('2.8 Avant V6 12V', @mo),
  ('2.8 Avant V6 30V Mec.', @mo),
  ('2.8 Avant V6 30V Quattro Mec.', @mo),
  ('2.8 Avant V6 30V Quattro Tiptronic', @mo),
  ('2.8 Avant V6 30V Tiptronic', @mo),
  ('2.8 V6 30V Quattro Tiptronic', @mo),
  ('2.8 V6 30V Quattro Mec.', @mo),
  ('3.0 30V 218cv Multitronic 4p', @mo),
  ('3.0 30V 218cv Quattro Tiptron./Aut 4p', @mo),
  ('3.0 Avant 30V 218cv Multitronic 5p', @mo),
  ('3.0 Avant 30V 218cv Quattro Tiptronic', @mo),
  ('3.0 Cabriolet 30V 218cv Multitronic', @mo),
  ('3.2 FSI 24V 255cv Multitronic', @mo),
  ('3.2 FSI 24V 269cv Quattro Tiptronic', @mo),
  ('3.2 FSI Avant 24V 255cv Multitronic', @mo),
  ('3.2 FSI Avant 24V Quattro S Tronic', @mo),
  ('3.2 FSI Cabriolet 24V 255cv Multitron', @mo),
  ('Ambiente 2.0 TFSI 190cv S tronic', @mo),
  ('Ambition 2.0 TFSI Quattro S tronic', @mo),
  ('Attraction 2.0 TFSI 190cv S tronic', @mo),
  ('Avant Lim. Ed. 2.0 TFSI S tronic', @mo),
  ('Avant Prest. Plus 2.0 TFSI S-tronic', @mo),
  ('Launch Edition 2.0 TFSI 190cv S troni', @mo),
  ('Limited Edition 2.0 TFSI S tronic', @mo),
  ('Perfor. Black 2.0 TFSI Quat. S tronic', @mo),
  ('Prestige 2.0 16V TFSI Quattro (Híb.)', @mo),
  ('Prestige 2.0 TFSI S-tronic', @mo),
  ('Prestige Plus 2.0 TFSI 190cv S tronic', @mo),
  ('S Line 2.0 TFSI 204cv S Tonic', @mo),
  ('S Line 2.0 16V TFSI Quattro (Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.2 FSI 24V 269cv Multitronic', @mo),
  ('3.2 FSI V6 24V 269cv Quattro Tiptroni', @mo),
  ('Ambiente Sportb. 2.0 TFSI S tonic', @mo),
  ('Ambit. Plus Sport. 2.0 TFSI S tronic', @mo),
  ('Ambit. Sport. 2.0 TFSI S tronic', @mo),
  ('Attraction Sportb. 2.0 TFSI S tronic', @mo),
  ('Avant S Line Quattro 2.0 TFSI S tronic', @mo),
  ('Cabriolet 2.0 TFSI Quattro Stronic', @mo),
  ('Coupê 2.0 TFSI Quattro Stronic', @mo),
  ('Sedan Performance S Edition 2.0 TFSI Quattro', @mo),
  ('Sedan S line 2.0 TFSI Quattro S tronic', @mo),
  ('Sportb. 2.0 16V TFSI Quat. S-tronic', @mo),
  ('Sportb. Advanc. 2.0 TFSI Quatt. (Híb)', @mo),
  ('Sportb. Carbon Ed. 2.0 TFSI S-tronic', @mo),
  ('Sportb. Perf. 2.0 TFSI Quat. S-tronic', @mo),
  ('Sportb. Prestige 2.0 16V TFSI S-troni', @mo),
  ('Sportb. S Line 2.0 TFSI Quatt. (Híb.)', @mo),
  ('Sportb.Perf.B. 2.0 TFSI Quat. S-troni', @mo),
  ('Sportb.Prestige Plus 2.0 TFSI S-tronc', @mo),
  ('Sportback 1.8 TFSI 170cv Multi.', @mo),
  ('Sportback 2.0 16V TFSI 180cv Multi.', @mo),
  ('Sportback 2.0 16V TFSI 211cv Multi.', @mo),
  ('Sportback S-Line 2.0 TFSI S-tronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A6');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 TFSI 252cv S tronic 4p', @mo),
  ('2.4 30V Mec', @mo),
  ('2.4 30V Tip./Multitronic', @mo),
  ('2.4 Avant 30V Mec.', @mo),
  ('2.4 Avant 30V Tip./ Multitronic', @mo),
  ('2.4 Avant V6 30V Quattro Mec.', @mo),
  ('2.4 Avant V6 30V Quattro Tiptronic', @mo),
  ('2.4 V6 30V Quattro Mec', @mo),
  ('2.4 V6 30V Quattro Tiptronic', @mo),
  ('2.7 30V Avant Tiptronic', @mo),
  ('2.7 30V Mec.', @mo),
  ('2.7 Avant Quattro Tiptronic', @mo),
  ('2.7 Quattro Tiptronic', @mo),
  ('2.8', @mo),
  ('2.8 30V Mec.', @mo),
  ('2.8 30V Tiptronic', @mo),
  ('2.8 Avant', @mo),
  ('2.8 Avant 30V Mec.', @mo),
  ('2.8 Avant 30V Tiptronic', @mo),
  ('2.8 Avant V6 30V Quattro Mec.', @mo),
  ('2.8 Avant V6 30V Quattro Tiptronic', @mo),
  ('2.8 V6 30V Quattro Mec.', @mo),
  ('2.8 V6 30V Quattro Tiptronic', @mo),
  ('3.0 Avant V6 30V 218cv Multitronic 5p', @mo),
  ('3.0 Avant. TB FSI V6 Quattro Tip. 5p', @mo),
  ('3.0 Avant.TFSI V6 Quattro S tronic 5p', @mo),
  ('3.0 TB FSI V6 Quattro Tiptronic', @mo),
  ('3.0 TFSI V6 Quattro S tronic 4p', @mo),
  ('3.0 V6 30V 218cv Multitronic 4p', @mo),
  ('3.2 FSI 24V 255cv Multitronic', @mo),
  ('4.2 Avant Quattro Tiptronic', @mo),
  ('4.2 Quattro Tiptronic', @mo),
  ('Allroad 3.0 TFSI V6 Quattro S tronic', @mo),
  ('Avant E-Tron S-Line', @mo),
  ('Perf. Black 3.0 TFSI Quattro S-tronic', @mo),
  ('Performance 3.0 TFSI Quattro S.tronic', @mo),
  ('Prestige Plus 2.0 TFSI Quattro S-tro.', @mo),
  ('Sport. e-tron Perf. Black (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A7');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SP.b. Perf. Bla. 3.0 TFSI Quat. S-tro', @mo),
  ('Sportback 2.0 TFSI S Tronic', @mo),
  ('Sportback 3.0 TFSI Quattro S Tronic', @mo),
  ('Sportback Perf. 3.0 TFSI S-tron Quat.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 TFSI 310cv Quattro Tiptronic 4p', @mo),
  ('4.0 TFSI Quattro Tiptronic', @mo),
  ('4.2 Quattro Tiptronic', @mo),
  ('4.2 V8 32V Tiptronic', @mo),
  ('6.0 W12 48V 450cv Quattro Tiptronic', @mo),
  ('6.3 W12 48V Quattro Tiptronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Allroad');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.7 30V Quattro Turbo Tiptronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Avant');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('RS2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-TRON');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GT Aut. (Elétrico)', @mo),
  ('Performa. Black Aut. (Elétrico)', @mo),
  ('Performace Aut. (Elétrico)', @mo),
  ('S Sportback Quat. Aut. (Elétrico)', @mo),
  ('Sportb. Perf.Black Aut.(Elétrico)', @mo),
  ('Sportback Perf. Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Q3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.4 TFSI/TFSI Flex S-tronic 5p', @mo),
  ('2.0 TFSI Anniversary Edition Quattro', @mo),
  ('2.0 TFSI Quat. 170/180cv S-tronic 5p', @mo),
  ('2.0 TFSI Quat. 211/220cv S-tronic 5p', @mo),
  ('Black Ed. 1.4 TFSI Flex/Black S-tron.', @mo),
  ('Black S Line 1.4 TFSI S-tronic', @mo),
  ('Launch Edition 2.0 TFSI Quattro S tronic', @mo),
  ('P. Plus 1.4 TFSI Flex/P.Plus S-tronic', @mo),
  ('Perf. Black 2.0 TFSI Tiptr. Quattro', @mo),
  ('Perf. Black.Plus 2.0 TFSI Tip. Quat.', @mo),
  ('Performance 2.0 TFSI Tiptr. Quattro', @mo),
  ('Prest. 1.4 TFSI Flex/Prest. S-tronic', @mo),
  ('Prestige 2.0 TFSI Tiptr.Quatro', @mo),
  ('SPB Launch Edition 2.0 TFSI Quattro S tronic', @mo),
  ('SPB Perf. Black 2.0 TFSI Tipt. Quat.', @mo),
  ('SPB Perf.Black Plus 2.0 TFSI Tip.Quat', @mo),
  ('SPB Performance 2.0 TFSI Tipt. Quatt.', @mo),
  ('Sportb. 2.0 TFSI Anniv. Edit. Quattro', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Q5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V TFSI 225cv Quattro Tiptronic', @mo),
  ('2.0 16V TFSI Quattro S Tronic', @mo),
  ('2.0 TFSI Quattro S tronic (Blindado)', @mo),
  ('3.0 V6 TFSI 272cv Quattro Tiptronic', @mo),
  ('3.2 FSI V6 Quattro S Tronic', @mo),
  ('Advanced 2.0 TFSI Quattro S-tronic', @mo),
  ('Ambiente 2.0 TFSI Quattro S tronic', @mo),
  ('Ambition 2.0 TFSI Quattro S tronic', @mo),
  ('Attraction 2.0 TFSI Quattro S tronic', @mo),
  ('Black 2.0 TFSI Quattro S tronic', @mo),
  ('Dynamic 2.0 TFSI Quattro S-tronic', @mo),
  ('Perf. Black 2.0 TFSIe S.Tr. Qt (Hib.)', @mo),
  ('Performance 2.0 TFSIe S.Tr. Qt (Hib.)', @mo),
  ('Prestige 2.0 TFSI Quattro S tronic', @mo),
  ('Prestige Plus 2.0 TFSI Quat. S tronic', @mo),
  ('SB P Black. 2.0 TFSIe S.Tr. Qt (Hib.)', @mo),
  ('SB Perf. 2.0 TFSIe S.Tr. Qt (Hib.)', @mo),
  ('S-Line 2.0 TFSI Quattro S-tronic 252cv/265cv', @mo),
  ('S-Line 2.0 TFSI Quattro S-tronic 272cv', @mo),
  ('S-Line Black 2.0 TFSI Quat. S-Tronic', @mo),
  ('SPB. S-Line Black 2.0 TFSI Qua.S-Tron', @mo),
  ('Sportback Advanced 2.0 TFSI Quattro S-tronic', @mo),
  ('Sportback Dynamic 2.0 TFSI Quattro S-tronic', @mo),
  ('Sportback S-Line 2.0 TFSI Quattro S-tronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Q6');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('E-TRON Quattro Perf. Black (Elétrico)', @mo),
  ('E-TRON Quattro Performance (Elétrico)', @mo),
  ('E-Tron Quattro S-Line', @mo),
  ('E-Tron Quattro Sportback Performance Black', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Q7');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6 TDI Quat.Tip. 5p Die./Perfor.', @mo),
  ('3.0 V6 TFSI Quat.Tip.5p/ Perf.(Híb.)', @mo),
  ('3.6 V6 284cv Quattro Tiptronic', @mo),
  ('4.2 V8 40V 350cv Quattro Tiptronic', @mo),
  ('Perf. Black 3.0 TFSI Quat.Tip.(Híb.)', @mo),
  ('Perf.Black 3.0 TDI Quat.Tip.5p Dies.', @mo),
  ('S-Line 3.0 V6 TFSI Qua. Tip. (Híb.)', @mo),
  ('S-Line 3.0 V6 TFSI Quattro Tiptronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Q8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('E-TRON Launch Edition (Elétrico)', @mo),
  ('E-TRON Performance Black (Elétrico)', @mo),
  ('E-TRON Sportb. Perf. Black (Elétrico)', @mo),
  ('E-TRON Sportb.Launch Edt. (Elétrico)', @mo),
  ('Perf.Black 3.0 TFSI Quat. S-tr/(Híb.)', @mo),
  ('Perfo. 3.0 TFSI Quattro S-tron/(Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'R8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.2 V8 426cv Quattro R-tronic', @mo),
  ('5.2 V10 Quattro R-tronic/S-tronic', @mo),
  ('GT 5.2 V10 560cv Quattro R-tronic', @mo),
  ('Spyder 5.2 Quattro R-tronic/S-tronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RS');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('E-TRON GT Quattro Aut. (Elétrico)', @mo),
  ('Q3 2.5 TFSI Quattro S-tronic 5p', @mo),
  ('Q3 Sportback 2.5 TFSI Quattro S-tron.', @mo),
  ('Q8 4.0 Bi-TB V8 FSI Quattro Tiptronic', @mo),
  ('Q8 Perfornace 4.0 Bi-TB V8 TFSI Quattro Tiptro.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RS3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sedan 2.5 TFSI Quattro S-tronic', @mo),
  ('Sedan Track 2.5 TFSI Quattro S-tronic', @mo),
  ('Sportback 2.5 TFSI Quattro S-tronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RS4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.7 Avant V6 30V BI-TB Quattro 380cv', @mo),
  ('2.9 Avant V6 TFSI Quattro Tiptronic', @mo),
  ('4.2 Avant 32V FSI Quattro S-tronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RS5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.2 FSI V8 450cv Quattro S-Tron. 2p', @mo),
  ('Coupê 2.9 V6 TFSI Quattro Tiptronic', @mo),
  ('SPB. C.Plus Track 2.9 Quat. S-tronic', @mo),
  ('SPB. Compet. Plus 2.9 Quat. S-tronic', @mo),
  ('Sportback 2.9 V6 TFSI Quattro Tip.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RS6');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.0 Avant TFSI BI-TB Quat.Tip.(Hib.)', @mo),
  ('4.0 Avant.Perf TFSI Quat.Tip.(Hib)', @mo),
  ('4.2 450cv BI-TB Quattro Tiptronic 4p', @mo),
  ('4.2 Avant BI-TB Quattro Tiptron. 5p', @mo),
  ('5.0 Avant.FSI V10 Bi-TB Quattro Tip.', @mo),
  ('5.0 FSI V10 Bi-TB Quattro Tip.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RS7');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sportback 4.0 TFSI Quattro Tiptronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 225cv Turbo Quattro', @mo),
  ('Sedan 2.0 TFSI Quattro 286cv S-tronic', @mo),
  ('Sportback 2.0 TFSI Quattro S Tronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.7 Avant Turbo Quattro', @mo),
  ('2.7 Turbo Quattro Mec.', @mo),
  ('3.0 Avant TFSI V6 24V Quattro Stronic', @mo),
  ('3.0 TFSI V6 24V Quattro Stronic', @mo),
  ('4.2 Avant V8 40V 344cv Quattro Tipt.', @mo),
  ('4.2 V8 40V 344cv Quattro Tiptronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet 3.0 TFSI Quattro Stronic', @mo),
  ('Coupê 3.0 TFSI Quattro Stronic', @mo),
  ('Sportback 3.0 TFSI Quattro Stronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S6');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.2 20V TB', @mo),
  ('2.2 Avant 20V TB', @mo),
  ('4.0 TFSI Quattro S-Tronic 4p', @mo),
  ('4.2 Avant V8 40V Quattro Tiptronic', @mo),
  ('4.2 V8 40V Quattro Mec', @mo),
  ('4.2 V8 40V Quattro Tiptronic', @mo),
  ('5.2 Avant FSI V10 435cv Quattro Tiptr', @mo),
  ('5.2 FSI V10 435cv Quattro Tiptronic', @mo),
  ('Plus 4.2 Avant V8 32V', @mo),
  ('Plus 4.2 V8 32V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S7');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.0 TFSI 420/450cv Quattro S-tronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.0 TFSI Quattro Tiptronic 4p', @mo),
  ('4.2 Mec', @mo),
  ('4.2 Quattro Mec.', @mo),
  ('4.2 Quattro Tiptronic', @mo),
  ('4.2 Tiptronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SQ5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 TFSI Quattro S-tronic', @mo),
  ('3.0 V6 TFSI 354cv Quattro Tiptronic', @mo),
  ('Sportback 3.0 TFSI Quattro S-tronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SQ6');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sportback E-Tron Quattro (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SQ8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sportback E-Tron Quattro (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'TT');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 TB 180cv', @mo),
  ('1.8 TB Quattro 225cv', @mo),
  ('2.0 16v TFSI S-Tronic', @mo),
  ('Roadster 1.8 TB Quattro 225cv (Conv.)', @mo),
  ('Roadster 2.0 16v TFSI S-Tronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ttrs');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 TFSI QUATTRO S Tronic', @mo),
  ('Roadster 2.5 TB FSI Quat. S Tronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'TTS');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 TFSI QUATTRO S Tronic', @mo),
  ('Roadster 2.0 TB FSI Quattro S Tronic', @mo);

-- Baby
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Baby');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Buggy', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Buggy');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 2-Lug.', @mo),
  ('1.6/ TST/ RS 1.6 4-Lug.', @mo),
  ('RS Evolution 1.8 8V', @mo);

-- BMW
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'BMW');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('116iA', @m),
  ('118i', @m),
  ('118iA', @m),
  ('120i', @m),
  ('120iA', @m),
  ('125i', @m),
  ('130i', @m),
  ('130iA', @m),
  ('135iA', @m),
  ('218i', @m),
  ('220i', @m),
  ('225i', @m),
  ('316', @m),
  ('316i', @m),
  ('318i', @m),
  ('318iA', @m),
  ('318iS', @m),
  ('318Ti', @m),
  ('320i', @m),
  ('320iA', @m),
  ('323Ci', @m),
  ('323CiA', @m),
  ('323i', @m),
  ('323iA', @m),
  ('323Ti', @m),
  ('323TiA', @m),
  ('325i', @m),
  ('325iA', @m),
  ('328i', @m),
  ('328iA', @m),
  ('330Ci', @m),
  ('330CiA', @m),
  ('330e', @m),
  ('330i', @m),
  ('330iA', @m),
  ('335i', @m),
  ('335iA', @m),
  ('420i', @m),
  ('428i', @m),
  ('430i', @m),
  ('435iA', @m),
  ('520i', @m),
  ('525i', @m),
  ('528i', @m),
  ('528iA', @m),
  ('530e', @m),
  ('530i', @m),
  ('535i', @m),
  ('535iA', @m),
  ('540i', @m),
  ('540iA', @m),
  ('540iTA', @m),
  ('545iA', @m),
  ('550iA', @m),
  ('640i', @m),
  ('645Ci', @m),
  ('645iA', @m),
  ('650Ci', @m),
  ('650i', @m),
  ('650iA', @m),
  ('730i', @m),
  ('730iA', @m),
  ('735i', @m),
  ('740i', @m),
  ('740iA', @m),
  ('740iL', @m),
  ('740iLA', @m),
  ('745iA', @m),
  ('745Le', @m),
  ('750i', @m),
  ('750iA', @m),
  ('750iL', @m),
  ('750iLA', @m),
  ('760iL', @m),
  ('840Ci', @m),
  ('840CiA', @m),
  ('850Ci', @m),
  ('850CSi', @m),
  ('850i', @m),
  ('i3', @m),
  ('i4', @m),
  ('i5', @m),
  ('i7', @m),
  ('i8', @m),
  ('iX', @m),
  ('M', @m),
  ('M1', @m),
  ('M140i', @m),
  ('M2', @m),
  ('M235i', @m),
  ('M240i', @m),
  ('M3', @m),
  ('M340i', @m),
  ('M4', @m),
  ('M440i', @m),
  ('M5', @m),
  ('M6', @m),
  ('M760Li', @m),
  ('M8', @m),
  ('M850i', @m),
  ('X1', @m),
  ('X2', @m),
  ('X3', @m),
  ('X4', @m),
  ('X5', @m),
  ('X6', @m),
  ('X7', @m),
  ('Z3', @m),
  ('Z4', @m),
  ('Z8', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '116iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 TB 16V 136cv 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '118i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('M Sport 1.5 TB 12V Aut. 5p', @mo),
  ('Sport 1.5 TB 12V Aut. 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '118iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 136cv 3p', @mo),
  ('2.0 16V 136cv 5p', @mo),
  ('Full 1.6 TB 16V 170cv 5p', @mo),
  ('Urban/Sport 1.6 TB 16V 170cv 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '120i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 150cv/ 156cv 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '120iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 150cv/ 156cv 5p', @mo),
  ('2.0 16V 156cv 3p', @mo),
  ('Cabrio 2.0 16V 156cv 2p', @mo),
  ('Sport 2.0/ActiveFlex 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '125i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('M Sport/Active Flex 2.0 TB Aut. 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '130i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 24V 265cv 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '130iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 24V 265cv 3p', @mo),
  ('3.0 24V 265cv 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '135iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupé 3.0 24V 306cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '218i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Gran Coupe M Sport 1.5 Bi-Turbo', @mo),
  ('Gran Coupe Sport GP 1.5 Bi-Turbo', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '220i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Gran Coupe M Sport 2.0 TB Aut.', @mo),
  ('Tourer Active Flex 2.0 TB Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '225i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Active Tourer Sport 2.0 TB Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '316');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('(todas)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '316i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 TB 16V 136cv 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '318i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabrio 1.8 16V', @mo),
  ('iA 1.8 16V', @mo),
  ('iA Compact 1.8 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '318iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 136cv 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '318iS');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ISA 1.9 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '318Ti');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Compact Mec', @mo),
  ('TiA Compact 1.9 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '320i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '320iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('2.0 TB M Sport A.Flex/M.Sport 4p', @mo),
  ('2.0 Turbo/ActiveFlex 16V/GP 4p', @mo),
  ('GT Sport 2.0 Turbo 16V 184cv 5p', @mo),
  ('Modern/Sport TB 2.0/A.Flex/GP 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '323Ci');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupê', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '323CiA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupê', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '323i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 24V', @mo),
  ('Confort', @mo),
  ('Sport', @mo),
  ('Touring', @mo),
  ('iA Exclusive', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '323iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 24V', @mo),
  ('Confort', @mo),
  ('Entry Sedan', @mo),
  ('Sport', @mo),
  ('Top Sedan', @mo),
  ('Touring', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '323Ti');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Compact', @mo),
  ('Compact Sport', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '323TiA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Compact Top', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '325i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('iA Cabrio', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '325iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('2.5 24V Protection', @mo),
  ('Coupé 2.5 24V 2p', @mo),
  ('Touring', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '328i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Exclusive 2.8 24V', @mo),
  ('Touring/Sport', @mo),
  ('iA (modelo antigo)', @mo),
  ('iA (novo modelo)', @mo),
  ('iA Cabrio', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '328iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 TB/2.0 TB Flex 16V 4p', @mo),
  ('Exclusive 2.8 24V', @mo),
  ('GT M Sport 2.0 Turbo 16V 245cv 5p', @mo),
  ('Luxury/Modern 2.0 TB 16V 4p', @mo),
  ('M Sport 2.0 16V Flex 4p', @mo),
  ('Plus 2.0 TB 16V 245cv 4p', @mo),
  ('Sport 2.0 16V/2.0 16V Flex 4p', @mo),
  ('Touring/Sport', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '330Ci');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '330CiA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '330e');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('M Sport 2.0 Turbo Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '330i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('M Sport 2.0 TB 16V 4p', @mo),
  ('MotorSport 3.0 24V 4p', @mo),
  ('Sport 2.0 TB 16V 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '330iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Exclusive 3.0 24V 4p', @mo),
  ('MotorSport 4p', @mo),
  ('Top 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '335i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 Active 3 (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '335iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 24V 306cv', @mo),
  ('Cabriolet 3.0 24V 306cv', @mo),
  ('M Sport 3.0 24V 306cv 4p', @mo),
  ('Sport 3.0 24V 306cv 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '420i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet M Sport 2.0 TB 16V 2p.', @mo),
  ('Cabriolet Sport 2.0 TB 184cv 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '428i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet Sport 2.0 TB 245cv 2p', @mo),
  ('Gran Coupe M Sport 2.0 TB 245cv', @mo),
  ('Gran Coupe Sport 2.0 TB 245cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '430i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cab. Sport Limited Ed.2.0 TB 2p', @mo),
  ('Cabriolet M Sport 2.0 TB 258cv 2p', @mo),
  ('Cabriolet Sport 2.0 TB 252cv 2p', @mo),
  ('Gran Coupé M Sport TB 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '435iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('M Sport Coupe 3.0 24V 306cv 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '520i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '525i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('iA', @mo),
  ('iA Touring', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '528i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('iA', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '528iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 Turbo 16V 245cv 4p', @mo),
  ('High', @mo),
  ('M Sport 2.0 Turbo 16V 245cv 4p', @mo),
  ('Touring', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '530e');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Luxury 2.0 Turbo (Híbrido)', @mo),
  ('M Sport 2.0 Turbo Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '530i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('M Sport 2.0 Turbo 252cv Aut.', @mo),
  ('Security', @mo),
  ('iA', @mo),
  ('iA Touring', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '535i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('iA 3.5 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '535iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 24V 306cv Bi-Turbo', @mo),
  ('GT 3.0 306cv Bi-Turbo', @mo),
  ('M Sport 3.0 24V 306cv Bi-Turbo', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '540i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('M Sport 3.0 Turbo 340cv Aut.', @mo),
  ('iA Touring', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '540iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('MotorSport', @mo),
  ('Protection', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '540iTA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '545iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.4 32V V8 333cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '550iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.4 32V 407cv Bi-Turbo', @mo),
  ('4.8 32V', @mo),
  ('Limited Sport Edition 4.8 32V', @mo),
  ('Security 4.8 32V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '640i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Gran Coupe 3.0 320cv 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '645Ci');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet 4.4 V8 32V 333cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '645iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.4 V8 32V 333cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '650Ci');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet 4.4 407cv Bi-Turbo', @mo),
  ('Cabriolet 4.8 V8 32V 360cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '650i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Gran Coupe 4.4 V8 450cv 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '650iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.4 407cv Bi-Turbo', @mo),
  ('4.8 V8 32V 360cv', @mo),
  ('Limited Sport Edition 4.8 32V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '730i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 32V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '730iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 32V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '735i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('iA 3.5 32V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '740i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '740iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '740iL');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('iLA Highline 4.4 32V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '740iLA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Protection', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '745iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.4 V8 32V 333cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '745Le');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('M Sport Sedan 3.0 V6 Aut. (Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '750i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('M Sport Sedan 4.4 V8 450cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '750iA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '750iL');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Highline 5.4 24V', @mo),
  ('M Sport Sedan 4.4 V8 450cv Aut.', @mo),
  ('Pure Excellence Sedan 4.4 V8 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '750iLA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.4 Active 7 (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '760iL');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.0 V12 445cv/544cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '840Ci');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '840CiA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '850Ci');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CiA 5.0 24V', @mo),
  ('CiA 5.4 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '850CSi');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.6 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '850i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.0 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'i3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Bev 170cv Aut. (Elétrico)', @mo),
  ('Bev Connected 170cv Aut. (Elétrico)', @mo),
  ('Bev Full 170cv Aut. (Elétrico)', @mo),
  ('Bev Un. Forever 170cv Aut. (Életrico)', @mo),
  ('Rex E Drive 170cv Aut.(Elétrico)', @mo),
  ('Rex E Drive Connected Aut. (Elétrico)', @mo),
  ('Rex E Drive Full 170cv Aut.(Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'i4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('e-Drive 35 M Sport (Elétrico)', @mo),
  ('e-Drive 40 M Sport (Elétrico)', @mo),
  ('M50 (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'i5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('M60 (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'i7');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('XDrive 60 M Sport Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'i8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('e-Drive 1.5 TB 12V Aut. (Híbrido)', @mo),
  ('Road. e-Drive 1.5 TB 12V Aut. (Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'iX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1 eDrive20 X-Line Aut. (Elétrico)', @mo),
  ('1 xDrive 30 M Sport (Elétrico)', @mo),
  ('2 xDrive 30 M Sport (Elétrico)', @mo),
  ('3 M Sport Aut.(Elétrico)', @mo),
  ('3 XDrive 50 M Sport', @mo),
  ('M60 (Elétrico)', @mo),
  ('XDrive 40 Aut. (Elétrico)', @mo),
  ('XDrive 50 Sport Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('135i 3.0 TB 24V 320cv', @mo),
  ('135i XDRIVE 2.0 TB Aut.', @mo),
  ('235i Coupe 3.0 24V 326cv', @mo),
  ('Roadster', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M1');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 3.0 24V 340cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M140i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 24V 340cv 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M2');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Competition 3.0 Bi-Turbo 410cv Aut.', @mo),
  ('Competition Ed. Espe. 3.0 Bi-TB Mec.', @mo),
  ('Coupe 3.0 Bi-Turbo 24V 3p', @mo),
  ('Coupe Track 3.0 Bi-Turbo 24V 460cv 3p', @mo),
  ('CS Coupe 3.0 Bi-Turbo 450cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M235i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('XDRIVE Gran Coupé 2.0 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M240i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 3.0 24V 340cv 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.2 24V', @mo),
  ('Cabrio 3.0 24V', @mo),
  ('Cabrio 4.0 32V', @mo),
  ('Competition M 3.0 Bi-TB 510cv', @mo),
  ('Competition M Track 3.0 Bi-TB', @mo),
  ('Coupê 3.0 24V 255cv', @mo),
  ('Coupê 3.0 V6 24V 282cv', @mo),
  ('Coupê 4.0 32V', @mo),
  ('CS Sedan 3.0 Bi-Turbo 460cv 4p', @mo),
  ('Sedan 3.0 Bi-Turbo 24V 4p', @mo),
  ('Sedan 4.0 32V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M340i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('XDRIVE 3.0 Turbo Aut.', @mo),
  ('XDRIVE First Ed. 3.0 Turbo Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet 3.0 Bi-Turbo 24V 431cv 2p', @mo),
  ('Competition M 3.0 Bi-TB 510cv', @mo),
  ('Coupe 3.0 Bi-Turbo 24V 431cv 2p', @mo),
  ('CS Coupe 3.0 Bi-Turbo 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M440i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 3.0 TB Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.8/Touring 3.8 24V', @mo),
  ('4.4 560cv Bi-Turbo Aut.', @mo),
  ('5.0 32V/ 40V', @mo),
  ('Competition M XDRIVE 4.4 Bi-TB V8', @mo),
  ('M XDRIVE 4.4 Bi-TB V8', @mo),
  ('Perform. Pack M XDRIVE 4.4 Bi-TB V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M6');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.0 V10 40V 507cv', @mo),
  ('Coupe 4.4 Bi-Turbo V8 32V', @mo),
  ('Gran Coupe 4.4 Bi-Turbo V8 32V 560cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M760Li');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('xDrive 6.6 V12 585cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Gran Coupé Comp.First ED. 4.4 V8 32V', @mo),
  ('Gran Coupé Competition 4.4 V8 32V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M850i');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('XDrive Coupé 4.4 V8 530cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X1');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SDRIVE 18i 2.0 16V 4x2 Aut.', @mo),
  ('SDRIVE 18i GP 1.5 TB Aut.', @mo),
  ('SDRIVE 20i 2.0/2.0 TB Acti.Flex Aut.', @mo),
  ('SDRIVE 20i GP 2.0 TB Aut.', @mo),
  ('SDRIVE 20i M S. 2.0 25 Anos TB Flex', @mo),
  ('SDRIVE 20i M Sport 2.0 TB Aut.', @mo),
  ('SDRIVE 20i M Sport 2.0 TB Flex Aut.', @mo),
  ('SDRIVE 20i Outdoor 2.0.Flex Aut.', @mo),
  ('SDRIVE 20i X-Line 2.0 TB Active Flex', @mo),
  ('SDRIVE 20i X-Line 2.0 TB Aut.', @mo),
  ('XDRIVE 25i Sport 2.0/2.0 Flex Aut.', @mo),
  ('XDRIVE 28i 2.0 Turbo 16V 4x4 Aut.', @mo),
  ('XDRIVE 28i 3.0 24V 4x4 Aut.', @mo),
  ('XDRIVE 28i Sport 2.0 ActiveFlex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X2');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('M35i 2.0 Turbo 306cv Aut.', @mo),
  ('M35i xDrive 2.0 Turbo 317cv Aut.', @mo),
  ('SDRIVE 20i M Sp/M Sp 2.0 TB Flex Aut', @mo),
  ('SDRIVE 18i 1.5 ActiveFlex 136cv Aut.', @mo),
  ('SDRIVE 20i 2.0/2.0 TB A. Flex 16V Aut', @mo),
  ('XDrive20i M Sport', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Family 2.5 24V 192cv/ 218cv', @mo),
  ('Family 3.0 24V 231cv', @mo),
  ('M Competition 3.0 Bi-TB 510cv Aut.', @mo),
  ('M40i 3.0 M Sport Edit. V6 Turbo Aut.', @mo),
  ('M40i 3.0 Turbo V6 Aut.', @mo),
  ('M50 XDRIVE 3.0 V6 Aut. (Híbrido)', @mo),
  ('Sport 2.5 24V 192cv/ 218cv', @mo),
  ('Sport 3.0 24V 231cv', @mo),
  ('XDRIVE 20i 2.0/X-Line Bi-TB Flex Aut.', @mo),
  ('XDRIVE 28i 2.0 Turbo 245cv Aut.', @mo),
  ('XDRIVE 28i 3.0 258cv', @mo),
  ('XDRIVE 30 M Sport 2.0 TB Aut.', @mo),
  ('XDRIVE 30e M SP Launch Ed. TB (Híb.)', @mo),
  ('XDRIVE 30e M Sport Turbo Aut. (Híb.)', @mo),
  ('XDRIVE 30e Turbo Aut. (Híbrido)', @mo),
  ('XDRIVE 30e X-Line Turbo Aut. (Híb.)', @mo),
  ('XDRIVE 30i X-Line 2.0 Turbo 252cv Aut', @mo),
  ('XDRIVE 35i/M-Sport 3.0 306cv Bi-Turbo', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('M Competition 3.0 Bi-TB 510cv Aut.', @mo),
  ('M40i 3.0 M Sport EditionTurbo Aut.', @mo),
  ('M40i 3.0 Turbo 388cv Aut.', @mo),
  ('XDRIVE 20i M-Sport 2.0 TB 184cv Aut', @mo),
  ('XDRIVE 28i X-Line 2.0 Turbo 245cv Aut', @mo),
  ('XDRIVE 30i M-Sport 2.0 TB 252cv Aut', @mo),
  ('XDRIVE 35i M-Sport 3.0 TB 306cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 4x4', @mo),
  ('4.4 4x4', @mo),
  ('4.8 4x4 V8 32V 360cv', @mo),
  ('Endurance 4.8is 4x4 V8 32V 355cv Aut.', @mo),
  ('M 4.4 4x4 V8 32V Bi-Turbo Aut.', @mo),
  ('M Competition 4.4 V8 Bi-TB Aut.', @mo),
  ('Security 4.4 4x4 V8 32V', @mo),
  ('Security 4.8is 4x4 V8 32V 355cv Aut.', @mo),
  ('Sport 4.4 4x4 V8 32V', @mo),
  ('Sport 4.8 4x4 V8 32V 355cv', @mo),
  ('XDRIVE 30d 3.0 Diesel', @mo),
  ('XDRIVE 30d Full 3.0 258cv Diesel', @mo),
  ('XDRIVE 30d M Sport 3.0 265cv Dies Aut', @mo),
  ('XDRIVE 35i 3.0 306cv Bi-Turbo', @mo),
  ('XDRIVE 35i Full 3.0 306cv Bi-Turbo', @mo),
  ('XDRIVE 45e 3.0 M.Sport Aut. (Híb.)', @mo),
  ('XDRIVE 50e 3.0 M Sport Aut. (Hibrido)', @mo),
  ('XDRIVE 50e 3.0 X-Line Aut. (Hibrido)', @mo),
  ('XDRIVE 50i 4.4 Bi-Turbo', @mo),
  ('XDRIVE 50i M Sport 4.4 Bi-Turbo', @mo),
  ('XDRIVE 50i Security 4.4 Bi-Turbo', @mo),
  ('XDRIVE M50d 3.0 Diesel', @mo),
  ('XDRIVE M50i 4.4 Bi-Turbo Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X6');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('M 4.4 4x4 V8 32V Bi-Turbo Aut.', @mo),
  ('M Competition 4.4 V8 BI-TB (Hib) Aut.', @mo),
  ('M Competition 4.4 V8 BI-TB 625CV Aut.', @mo),
  ('XDRIVE 35i 3.0 306cv Bi-Turbo', @mo),
  ('XDRIVE 40i Bl.Vermillion 3.0 Bi-Turbo', @mo),
  ('XDRIVE 40i M Sport 3.0 Bi-TB (Hib.)', @mo),
  ('XDRIVE 40i M Sport 3.0 Bi-Turbo', @mo),
  ('XDRIVE 50i 4.4 407cv Bi-Turbo', @mo),
  ('XDRIVE 50i M Sport 4.4 Bi-Turbo', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X7');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('M50i 4.4 V8 Bi-TB Aut.', @mo),
  ('M50i Dark Shadow 4.4 V8 Bi-TB Aut.', @mo),
  ('M60i 4.4 V8 Bi-TB Aut.(Híbrido)', @mo),
  ('XDRIVE 40i M Sport 3.0 V6 Turbo Aut.', @mo),
  ('XDRIVE 50i M Sport 4.4 V8 Bi-TB Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Z3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.8 Aut.', @mo),
  ('2.8 Mec.', @mo),
  ('3.0 24V Roadster 2p', @mo),
  ('Roadster 1.9 Mec.', @mo),
  ('Roadster 2.8', @mo),
  ('Roadster M 3.2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Z4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupé M 3.2 V6 24V 343cv', @mo),
  ('M40i 3.0 340cv Aut.', @mo),
  ('Roadster 2.0 150cv 2p', @mo),
  ('Roadster 3.0 V6 24V Aut.', @mo),
  ('Roadster M 3.2 V6 24V 343cv', @mo),
  ('Roadster sDRIVE 20i 2.0 16V 2p Aut.', @mo),
  ('Roadster sDRIVE 23i 2.5 24V 204cv 2p', @mo),
  ('Roadster sDRIVE 30i MSport 2.0 TB Aut', @mo),
  ('Roadster sDRIVE 35i 3.0 24V 306cv 2p', @mo),
  ('Roadster Sport 3.0 24V 231cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Z8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.0 V8', @mo);

-- BRM
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'BRM');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Buggy', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Buggy');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('W. Turing/Luxo/M-11 Absolut 1.6 8V', @mo),
  ('M-8/M-8 Long 1.6', @mo);

-- Bugre
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Bugre');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Buggy', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Buggy');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('IV e V', @mo),
  ('VII/VII BIG/VII Flex', @mo);

-- BYD
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'BYD');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Atto', @m),
  ('D1', @m),
  ('Dolphin', @m),
  ('eT3', @m),
  ('Han', @m),
  ('King', @m),
  ('Seal', @m),
  ('Sealion', @m),
  ('Shark', @m),
  ('Song', @m),
  ('TAN', @m),
  ('Yuan', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Atto');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('8 1.5 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'D1');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EV (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Dolphin');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EV GS (Elétrico)', @mo),
  ('Mini GL', @mo),
  ('Mini GS (Elétrico)', @mo),
  ('Plus (Elétrico)', @mo),
  ('SE', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'eT3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('(Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Han');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EV (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'King');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GL 1.5 16V Aut. (Hibrido)', @mo),
  ('GS 1.5 16V Aut. (Hibrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Seal');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('(Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sealion');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('7 AWD (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Shark');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GS 1.5 16V 4x4 Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Song');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Plus 1.5 16V Aut. (Hibrido)', @mo),
  ('Plus Premium 1.5 16V Aut. (Hibrido)', @mo),
  ('Pro GL 1.5 16V Aut. (Hibrido)', @mo),
  ('Pro GS 1.5 16V Aut. (Hibrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'TAN');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EV AWD (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Yuan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Plus (Elétrico)', @mo),
  ('Plus AWD', @mo),
  ('Pro (Elétrico)', @mo);

-- CAB Motors
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'CAB Motors');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Stark', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Stark');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Mountaim 2.3 AWD TDI Diesel 3p', @mo),
  ('Superação 2.3 AWD 2.3 TDI Die. 3p', @mo);

-- Cadillac
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Cadillac');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Deville', @m),
  ('Seville', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Deville');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Eldorado 4.9', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Seville');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.6', @mo);

-- Caoa Changan
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Caoa Changan');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('AVATR11', @m),
  ('CS55', @m),
  ('CS75', @m),
  ('UNI-T', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'AVATR11');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CS55');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('INFINITY 1.5 16V TGDi', @mo),
  ('PRIME 1.5 16V TGDi', @mo),
  ('ULTRA 1.5 16V TGDi', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CS75');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.5 16V TGDi', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'UNI-T');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.5 16V TGDi', @mo);

-- Caoa Chery
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Caoa Chery');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Arrizo', @m),
  ('iCar', @m),
  ('Tiggo', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Arrizo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6 PRO 1.5 Turbo Flex Aut.', @mo),
  ('6 PRO 1.5 Turbo (Híbrido)', @mo),
  ('6 PRO Max Drive 1.5 Turbo (Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'iCar');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EQ1 TECH (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tiggo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3X Plus 1.0 Turbo Flex Aut.', @mo),
  ('3X Pro 1.0 Turbo Flex Aut.', @mo),
  ('5X PRO 1.5 Turbo (Híbrido)', @mo),
  ('5X PRO 1.5 Turbo Flex Aut.', @mo),
  ('5X PRO Max Drive1.5 TB (Híbrido)', @mo),
  ('5X SPORT 1.5 Turbo Flex Aut.', @mo),
  ('7 PRO 1.5 Turbo (Híbrido)', @mo),
  ('7 Pro 1.6 Turbo 16V Aut.', @mo),
  ('7 Pro Max Drive 1.5 TB (Hibrido)', @mo),
  ('7 Pro Max Drive 1.6 Turbo 16V Aut.', @mo),
  ('7 SPORT 1.5 Turbo Flex 16V Aut.', @mo),
  ('8 FOUNDER S EDITION 1.6 TGDi Aut.', @mo),
  ('8 Max Drive 1.6 Turbo Aut.', @mo),
  ('8 PRO 1.5 Turbo (Híbrido)', @mo),
  ('8 PRO 1.6 TGDi Aut.', @mo);

-- Caoa Chery/Chery
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Caoa Chery/Chery');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Arrizo', @m),
  ('Celer', @m),
  ('Cielo', @m),
  ('Face', @m),
  ('QQ', @m),
  ('S-18', @m),
  ('Tiggo', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Arrizo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5 RT 1.5 Turbo Flex Aut.', @mo),
  ('5 RTS 1.5 Turbo Flex Aut.', @mo),
  ('5 RX 1.5 16V Turbo Flex Aut.', @mo),
  ('5 RXS 1.5 Turbo Flex Aut.', @mo),
  ('5 RXT 1.5 16V Turbo Flex Aut.', @mo),
  ('5e (Elétrico)', @mo),
  ('6 GSX 1.5 Turbo Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Celer');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Hatch 1.5 16V Flex 5p', @mo),
  ('Hatch ACT 1.5 16V Flex 5p', @mo),
  ('Sedan 1.5 16V Flex 5p', @mo),
  ('Sedan ACT 1.5 16V Flex 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cielo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V 119cv 5p', @mo),
  ('Sedan 1.6 16V 119cv 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Face');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.3 16V/1.3 16V Flex.Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'QQ');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 ACT FL 12V/1.0 12V Flex 5p', @mo),
  ('1.0 ACT 12V 69cv 5p', @mo),
  ('1.0 Look FL 12V/1.0 12V Flex 5p', @mo),
  ('1.0 SMILE 12V Flex 5p', @mo),
  ('1.1/1.0 12V 69cv 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-18');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.3 16V Flex Mec. 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tiggo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2 ACT 1.5 16V Flex Aut.5p', @mo),
  ('2 ACT 1.5 16V Flex Mec. 5p', @mo),
  ('2 EX 1.5 16V Flex Aut. 5p', @mo),
  ('2 Look 1.5 16V Flex Aut.5p', @mo),
  ('2 Look 1.5 16V Flex Mec. 5p', @mo),
  ('2 SMILE 1.5 16V Flex Aut.', @mo),
  ('2.0 16V Aut. 5p', @mo),
  ('2.0 16V Mec. 5p', @mo),
  ('5X T 1.5 16V Turbo Flex Aut.', @mo),
  ('5X TXS 1.5 16V Turbo Flex Aut.', @mo),
  ('7 T 1.5 16V Turbo Flex Aut.', @mo),
  ('7 TXS 1.5 16V Turbo Flex Aut.', @mo),
  ('8 TXS 1.6 16V TGDi Aut.', @mo);

-- CBT Jipe
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'CBT Jipe');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Javali', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Javali');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 4x4 Diesel', @mo);

-- CHANA
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'CHANA');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Cargo', @m),
  ('Family', @m),
  ('Utility', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cargo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 8V 53cv (Pick-Up)', @mo),
  ('CD 1.0 8V 53cv (Pick-Up)', @mo),
  ('CE 1.0 8V 53cv (Pick-Up)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Family');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 8V 53cv (Perua)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Utility');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 8V 53cv (Furgão)', @mo);

-- CHANGAN
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'CHANGAN');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Mini Star', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Mini Star');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CD 1.0 8V 53cv (Pick-Up)', @mo),
  ('CE 1.0 8V 53cv (Pick-Up)', @mo),
  ('CS 1.0 8V 53cv (Pick-Up)', @mo),
  ('CSB 1.0 8V 53cv (Pick-Up Báu)', @mo),
  ('Family 1.0 8V 53cv (MiniVan)', @mo),
  ('Utility 1.0 8V 53cv (Furgão)', @mo);

-- Chrysler
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Chrysler');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('300', @m),
  ('Caravan', @m),
  ('Cirrus', @m),
  ('Grand Caravan', @m),
  ('LE', @m),
  ('Neon', @m),
  ('PT Cruiser', @m),
  ('Sebring', @m),
  ('Stratus', @m),
  ('Town', @m),
  ('Vision', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '300');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('C 3.5 V6 249cv', @mo),
  ('C 3.6 V6 Aut.', @mo),
  ('C 5.7 V8 16V 340cv Aut.', @mo),
  ('C SRT8 6.1 V8 16V 431cv Aut', @mo),
  ('C Touring 5.7 V8 16V 340cv Aut.', @mo),
  ('M 3.5', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Caravan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LE 3.3', @mo),
  ('LX 3.3 V6 182cv', @mo),
  ('LX 3.8', @mo),
  ('SE 2.4/3.3', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cirrus');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LXi 2.5 V6 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Grand Caravan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LE 3.3 Aut', @mo),
  ('Limited 3.3 V6 12V 182cv', @mo),
  ('LX 3.8', @mo),
  ('SE 3.3 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'LE');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Baron 3.0 V6', @mo),
  ('Baron 3.0 V6 Conv.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Neon');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LE 1.8', @mo),
  ('LE/Highline 2.0', @mo),
  ('Sport 1.8/2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'PT Cruiser');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabrio 2.4 16V 143cv 2p', @mo),
  ('Classic 2.4 16V 143cv 4p', @mo),
  ('Limited 2.0 16V 4p', @mo),
  ('Limited 2.4 16V 143cv 4p', @mo),
  ('Touring DEC. EDITION 2.4 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sebring');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LX 2.7 V6 24V 204cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Stratus');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LE 2.0', @mo),
  ('LX 2.0 Mec', @mo),
  ('LX 2.5 Aut', @mo),
  ('LX 2.5 Conversível Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Town');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('& COUNTRY Limited 3.8 /3.6 V6 Aut.', @mo),
  ('& COUNTRY Touring 3.6 V6 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Vision');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.5 24V', @mo);

-- Citroën
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Citroën');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Aircross', @m),
  ('AIRCROSS7', @m),
  ('AX', @m),
  ('Basalt', @m),
  ('Berlingo', @m),
  ('BX', @m),
  ('C3', @m),
  ('C4', @m),
  ('C5', @m),
  ('C6', @m),
  ('C8', @m),
  ('DS3', @m),
  ('DS4', @m),
  ('DS5', @m),
  ('Ë-Jumpy', @m),
  ('Evasion', @m),
  ('Grand', @m),
  ('Jumper', @m),
  ('Jumpy', @m),
  ('Xantia', @m),
  ('XM', @m),
  ('Xsara', @m),
  ('ZX', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Aircross');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('100 Anos 1.6 Flex 16V Aut.', @mo),
  ('BUSINESS 1.6 Flex 16V 5p Mec.', @mo),
  ('Exc. ATACA. 1.6 Flex 16V 5p Aut', @mo),
  ('Exc. ATACA. 1.6 Flex 16V 5p Mec', @mo),
  ('Exclusive 1.6 Flex 16V 5p Aut.', @mo),
  ('Exclusive 1.6 Flex 16V 5p Mec.', @mo),
  ('F. Pack 1.0 Flex TB 200 Aut.', @mo),
  ('Feel 1.0 Flex Turbo 200 Aut.', @mo),
  ('Feel 1.6 Flex 16V 5p Aut.', @mo),
  ('Feel 1.6 Flex 16V 5p Mec.', @mo),
  ('GL 1.6 Flex 16V 5p Mec.', @mo),
  ('GLX 1.6 Flex 16V 5p Aut.', @mo),
  ('GLX 1.6 Flex 16V 5p Mec.', @mo),
  ('GLX ATACAMA 1.6 Flex 16V 5p Aut', @mo),
  ('GLX ATACAMA 1.6 Flex 16V 5p Mec', @mo),
  ('Live 1.5 Flex 8V 5p Mec.', @mo),
  ('Live 1.6 Flex 16V 5p Aut.', @mo),
  ('Live 1.6 Flex 16V 5p Mec.', @mo),
  ('Live Bus. 1.6 Flex 5p Aut.', @mo),
  ('SALOMON 1.5 Flex 8V 5p Mec.', @mo),
  ('SALOMON 1.6 Flex 16V 5p Aut.', @mo),
  ('SALOMON EXCLUSIVE 1.6 Flex Aut.', @mo),
  ('SALOMON EXCLUSIVE 1.6 Flex Mec.', @mo),
  ('SALOMON TENDANCE 1.6 Flex Aut.', @mo),
  ('SALOMON TENDANCE 1.6 Flex Mec.', @mo),
  ('Shine 1.0 Flex TB 200 Aut.', @mo),
  ('Shine 1.6 Flex 16V 5p Aut.', @mo),
  ('Start 1.5 Flex 8V 5p Mec.', @mo),
  ('Start 1.6 Flex 16V 5p Mec.', @mo),
  ('TENDANCE 1.6 Flex 16V 5p Aut.', @mo),
  ('TENDANCE 1.6 Flex 16V 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'AIRCROSS7');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('F. Pack 1.0 Flex TB 200 Aut', @mo),
  ('Feel 1.0 Flex TB. 200 Aut.', @mo),
  ('Shine 1.0 Flex TB 200 Aut.', @mo),
  ('XTR 1.0 TB. 200 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'AX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GTi', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Basalt');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Dark Edition 1.0 5p Mec.', @mo),
  ('Dark Edition 1.0 TB 200 5p Aut.', @mo),
  ('Feel 1.0 Flex 6V 5p Mec.', @mo),
  ('Feel 1.0 Flex TB 200 5p Aut.', @mo),
  ('First Edit.1.0 Flex TB 200 5p Aut', @mo),
  ('Shine 1.0 Flex TB 200 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Berlingo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Furgão 1.6 16V Flex 5P', @mo),
  ('MultSpace GLX 1.6 16V 110cv 4p', @mo),
  ('MultSpace GLX 1.8i 3p', @mo),
  ('MultSpace GLX 1.8i 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'BX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6S 16V', @mo),
  ('GTi 1.9', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('100 Anos 1.6 16V Flex Aut.', @mo),
  ('Attra/Origine Pack 1.5 Flex 8V 5p Mec', @mo),
  ('Attraction 1.6 Flex 16V 5p Aut.', @mo),
  ('Attraction Pure Tech 1.2 Flex 12V Mec', @mo),
  ('Excl. 1.6 VTi Flex Start 16V 5p Aut.', @mo),
  ('Excl. 1.6 VTi Flex Start 16V 5p Mec.', @mo),
  ('Excl./Excl.Solar./Sonora 1.6 Flex Aut', @mo),
  ('Exclus./Excl.Solaris 1.6 Flex 16V Mec', @mo),
  ('Exclusive 1.4 Flex 8V 5p', @mo),
  ('Exclusive 1.5 Flex 8V 5p Mec.', @mo),
  ('Exclusive Bus. 1.6 Flex 5p Aut.', @mo),
  ('Feel 1.0 Flex 6V 5p Mec.', @mo),
  ('Feel 1.6 Flex 16V 5p Mec.', @mo),
  ('Feel Pack 1.6 Flex 16V 5p Aut.', @mo),
  ('Feel Plus 1.0 6V 5p Mec.', @mo),
  ('First Edition 1.0 Flex 6V 5p Mec.', @mo),
  ('First Edition 1.6 Flex 16V 5p Aut.', @mo),
  ('GLX 1.4/ GLX Sonora 1.4 Flex 8V 5p', @mo),
  ('GLX 1.6 Flex 16V 5p Aut.', @mo),
  ('GLX 1.6/ 1.6 Flex 16V 5p', @mo),
  ('Live 1.0 Flex 6V 5p Mec.', @mo),
  ('Live Go 1.0 6V 5p Mec.', @mo),
  ('Live Pack 1.0 Flex 6V 5p Mec.', @mo),
  ('Live Pack 1.6 Flex 16V 5p Aut.', @mo),
  ('Live Plus 1.0 6V 5p Mec.', @mo),
  ('Ocimar Versolato 1.6 16V 110cv 5p', @mo),
  ('Origine 1.5 Flex 8V 5p Mec.', @mo),
  ('Origine Pure Tech 1.2 Flex 12V Mec', @mo),
  ('Picasso Excl. 1.6 Flex 16V 5p Aut.', @mo),
  ('Picasso Exclusive 1.6 Flex 16V 5p Mec', @mo),
  ('Picasso GL 1.5 Flex 8V Mec.', @mo),
  ('Picasso GL 1.6 Flex 16V 5p Mec.', @mo),
  ('Picasso GLX 1.5 Flex 8V 5p Mec.', @mo),
  ('Picasso GLX 1.6 Flex 16V 5p Aut.', @mo),
  ('Picasso GLX 1.6 Flex 16V 5p Mec.', @mo),
  ('Picasso Origine 1.5 Flex 8V Mec.', @mo),
  ('Picasso Tendance 1.5 Flex 8V 5p Mec.', @mo),
  ('Picasso Tendance 1.6 Flex 16V 5p Aut.', @mo),
  ('Start 1.2 Flex 12V 5p', @mo),
  ('Style Ed. Pure Tech 1.2 Flex 12V Mec.', @mo),
  ('Style Edition 1.6 Flex 16V Aut.', @mo),
  ('Tendance 1.5 Flex 8V 5p Mec.', @mo),
  ('Tendance 1.6 VTi Flex Start 16V Aut.', @mo),
  ('Tendance Pure Tech 1.2 Flex 12V Mec.', @mo),
  ('Urban Trail 1.6 Flex 16V 5p Aut.', @mo),
  ('Urban Trail P.Tech 1.2 Flex 12V Mec.', @mo),
  ('X-BOX ONE 1.6 VTi Flex 16V 5p Mec.', @mo),
  ('XTR 1.0 6V 5p', @mo),
  ('XTR 1.4 Flex 8V 5p', @mo),
  ('XTR 1.6 Flex 16V 5p', @mo),
  ('YOU! 1.0 Flex Turbo 200 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CACTUS 100 Anos 1.6 TB 16V Flex Aut.', @mo),
  ('CACTUS C-SERIES 1.6 16V Flex Aut.', @mo),
  ('CACTUS FEEL 1.6 16V Flex Aut.', @mo),
  ('CACTUS FEEL 1.6 16V Flex Mec.', @mo),
  ('CACTUS FEEL Bus. 1.6 Flex Aut.', @mo),
  ('CACTUS FEEL Pack 1.6 16V Flex Aut.', @mo),
  ('CACTUS LIVE 1.6 16V Flex Aut.', @mo),
  ('CACTUS LIVE 1.6 16V Flex Mec.', @mo),
  ('CACTUS NOIR 1.6 Turbo Flex Aut.', @mo),
  ('CACTUS Rip Curl 1.6 16V Flex Aut.', @mo),
  ('CACTUS SHINE 1.6 16V Flex Aut.', @mo),
  ('CACTUS SHINE 1.6 Turbo Flex Aut.', @mo),
  ('CACTUS SHINE Pack 1.6 Turbo Flex Aut.', @mo),
  ('CACTUS X-Series 1.6 16V Flex Aut.', @mo),
  ('Competition 1.6 Flex 16V 5p Mec.', @mo),
  ('Competition 2.0 Flex 16V 5p Aut.', @mo),
  ('Excl./Excl. Solar. 2.0 Flex 16V Mec.', @mo),
  ('Excl.2.0/2.0 Solaris Flex 16V 5p Aut.', @mo),
  ('GLX 1.6 Flex 16V 5p Mec.', @mo),
  ('GLX 2.0 Flex 16V 5p Aut.', @mo),
  ('GLX 2.0 Flex 16V 5p Mec.', @mo),
  ('LOUNGE 100 Anos 1.6 16V TB Flex Aut.', @mo),
  ('LOUNGE Exclusive 1.6 Turbo 4p Aut.', @mo),
  ('LOUNGE Exclusive 1.6 Turbo Flex Aut.', @mo),
  ('LOUNGE Exclusive 2.0 Flex 4p Aut.', @mo),
  ('LOUNGE Feel 1.6 Turbo Flex Aut.', @mo),
  ('LOUNGE Live 1.6 Turbo Flex Aut.', @mo),
  ('LOUNGE Live Bus. 1.6 Flex Aut.', @mo),
  ('LOUNGE Orig.Business 1.6 TB Flex Aut.', @mo),
  ('LOUNGE Origine 1.6 Turbo Flex Aut.', @mo),
  ('LOUNGE Origine 1.6 Turbo Flex Mec.', @mo),
  ('LOUNGE Origine 2.0 Flex 4p Aut.', @mo),
  ('LOUNGE Origine 2.0 Flex 4p Mec.', @mo),
  ('LOUNGE S 1.6 Turbo Flex Aut.', @mo),
  ('LOUNGE Shine 1.6 Turbo Flex Aut.', @mo),
  ('LOUNGE Tendance 1.6 Turbo 4p Aut', @mo),
  ('LOUNGE Tendance 1.6 Turbo Flex Aut.', @mo),
  ('LOUNGE Tendance 2.0 Flex 4p Aut.', @mo),
  ('LOUNGE Tendance 2.0 Flex 4p Mec.', @mo),
  ('PAL.Excl/Excl(Tech.) 2.0/2.0 Flex Aut', @mo),
  ('PALLAS Exclusive 2.0/2.0 Flex 16V Mec', @mo),
  ('PALLAS GLX 2.0/ 2.0 Flex Aut.', @mo),
  ('PALLAS GLX 2.0/2.0 Flex 16V Mec.', @mo),
  ('Picasso Intensive 1.6 Turbo 16V Aut.', @mo),
  ('Picasso Seduction 1.6 Turbo 16V Aut.', @mo),
  ('Picasso/Pic. La Luna 2.0 16V Aut.', @mo),
  ('Rock You 1.6 Flex 16V 5p Mec.', @mo),
  ('Tendance 1.6 Flex 16V 5p Mec.', @mo),
  ('Tendance 2.0 Flex 16V 5p Aut.', @mo),
  ('VTR 2.0 16V 143cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 24V 210cv 4p Aut.', @mo),
  ('Exclusive 2.0 16V 138cv 4p Mec.', @mo),
  ('Exclusive 2.0 16V 4p Aut.', @mo),
  ('Exclusive Break 2.0 16V 138cv 5p Mec.', @mo),
  ('Exclusive Break 2.0 16V Aut.', @mo),
  ('Tourer Exclusive 2.0 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C6');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Exclusive 3.0 V6 24V 215cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Exclusive 2.0 16V 138cv 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'DS3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 Turbo 16V 3p Mec.', @mo),
  ('Sport Chic 1.6 TB 16V 3p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'DS4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 Chic Turbo 16V 5p Aut.', @mo),
  ('1.6 So Chic Turbo 16V 5p Aut.', @mo),
  ('1.6 Turbo 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'DS5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 Be Chic Turbo 16V 5p Aut.', @mo),
  ('1.6 So Chic Turbo 16V 5p Aut.', @mo),
  ('1.6 Turbo 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ë-Jumpy');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cargo 136cv (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Evasion');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLX 2.0 16V', @mo),
  ('VSX Turbo', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Grand');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('C4 Picasso 2.0 16V 143cv Aut', @mo),
  ('C4 Picasso Intensive 1.6 TB Aut.', @mo),
  ('C4 Picasso Seduction 1.6 TB Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Jumper');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 Cargo Furgão 16V TB Diesel', @mo),
  ('2.0 FurgãoTurbo Diesel', @mo),
  ('2.0 Minibus 16L Turbo Diesel', @mo),
  ('2.3 15/16Lug. TB Diesel', @mo),
  ('2.3 Furgão TB Diesel', @mo),
  ('2.3 Vetrato Exec. 16Lug. TB Dies.', @mo),
  ('2.3 Vetrato TB Diesel', @mo),
  ('2.5 Diesel', @mo),
  ('2.8 16Lug. Diesel', @mo),
  ('2.8 Furgão 35C Diesel', @mo),
  ('2.8 Furgão 35MH Diesel', @mo),
  ('Cargo 2.2 Turbo Diesel', @mo),
  ('Furgão 2.2 Turbo Diesel', @mo),
  ('Minibus Executive 2.2 17L Dies.', @mo),
  ('Vitré 2.2 Turbo Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Jumpy');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 Furgão Pack Turbo Diesel', @mo),
  ('1.6 Furgão Turbo Diesel', @mo),
  ('1.6 Minibus Turbo Diesel', @mo),
  ('2.2 Cargo Turbo', @mo),
  ('2.2 Vitré Turbo', @mo),
  ('Cargo 1.5 Turbo Diesel', @mo),
  ('Vitré 1.5 Turbo Diesel', @mo),
  ('VITRÉ 1.6 Turbo Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Xantia');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V', @mo),
  ('Activa 2.0', @mo),
  ('Activa 2.0 TB', @mo),
  ('Activa 3.0 V6 Mec', @mo),
  ('Break 2.0 8V/GLX 2.0 16V Aut', @mo),
  ('Break GLX 2.0 16V Mec.', @mo),
  ('Exclusive 2.0 16V', @mo),
  ('Exclusive 3.0 V6', @mo),
  ('GLX 2.0 16V Aut.', @mo),
  ('GLX 2.0 16V Mec.', @mo),
  ('SX 1.8', @mo),
  ('SX 2.0 8V/16V Mec./Aut.', @mo),
  ('VSX 2.0', @mo),
  ('VSX 2.0 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XM');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Exclusive 12v', @mo),
  ('Exclusive 24V', @mo),
  ('Exclusive Break', @mo),
  ('Sensation 2.0 TB', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Xsara');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Break Exclusive 1.6 16V 5p Aut.', @mo),
  ('Break Exclusive 1.6 16V 5p Mec.', @mo),
  ('Break Exclusive 1.8 16V', @mo),
  ('Break Exclusive 2.0 16V', @mo),
  ('Break GLX 1.6 16V 5p Aut.', @mo),
  ('Break GLX 1.6 16V 5p Mec.', @mo),
  ('Break GLX 1.8 16V', @mo),
  ('Break GLX/ Paris 2.0 16V', @mo),
  ('Exclusive 1.6 16V 5p Aut.', @mo),
  ('Exclusive 1.6 16V 5p Mec.', @mo),
  ('Exclusive 1.8 8V/16V 5p Aut.', @mo),
  ('Exclusive 1.8 8V/16V 5p Mec.', @mo),
  ('Exclusive 2.0 16V', @mo),
  ('GLX 1.6 16V 3p', @mo),
  ('GLX 1.6 16V 5p Aut.', @mo),
  ('GLX 1.6 16V 5p Mec.', @mo),
  ('GLX 1.8 16V 5p Mec.', @mo),
  ('GLX 1.8 16V Cupê Mec.', @mo),
  ('GLX 1.8 8V 5p Aut.', @mo),
  ('GLX 1.8 8V Cupê Aut.', @mo),
  ('GLX/ Paris 2.0 16V', @mo),
  ('Picasso Exc./Etoile 2.0 16V Mec.', @mo),
  ('Picasso Exclus. 1.6/ 1.6 Flex 16V', @mo),
  ('Picasso Exclusive 2.0 16V Aut.', @mo),
  ('Picasso GLX 1.6/ 1.6 Flex 16V', @mo),
  ('Picasso GLX 2.0 16V Aut.', @mo),
  ('Picasso GLX/Brasil/Etoile 2.0 Mec.', @mo),
  ('VTS 1.6 16V 3p', @mo),
  ('VTS 1.8 16V', @mo),
  ('VTS 2.0 16V Cupê Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ZX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cupê 16V', @mo),
  ('Dakar 2.0 16V', @mo),
  ('Furio', @mo),
  ('Paris 1.8', @mo),
  ('Volcane 3p e 5p', @mo);

-- Cross Lander
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Cross Lander');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('CL-244', @m),
  ('CL-330', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CL-244');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.8 132cv 4x4 TB Int. Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CL-330');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.8 132cv 4x4 TB Int. Diesel', @mo);

-- D2D Motors
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'D2D Motors');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Buggy', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Buggy');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SKY 1.6 Flex 16V Mec.', @mo),
  ('SKY GT 1.6 Flex 16V Mec.', @mo);

-- Daewoo
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Daewoo');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Espero', @m),
  ('Lanos', @m),
  ('Leganza', @m),
  ('Nubira', @m),
  ('Prince', @m),
  ('Racer', @m),
  ('Super', @m),
  ('Tico', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Espero');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0', @mo),
  ('CD / DLX 2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Lanos');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Hatch SX 1.6 16V', @mo),
  ('SX 1.6 16V', @mo),
  ('SX 1.6 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Leganza');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CDX 2.0 16V Aut.', @mo),
  ('CDX 2.0 16V Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Nubira');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CDX 2.0 16V Aut.', @mo),
  ('CDX 2.0 16V Mec.', @mo),
  ('SW CDX 2.0 16V Aut.', @mo),
  ('SW CDX 2.0 16V Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Prince');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Ace 2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Racer');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GTi 1.5 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Super');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Salon Ace', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tico');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);

-- Daihatsu
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Daihatsu');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Applause', @m),
  ('Charade', @m),
  ('Cuore', @m),
  ('Feroza', @m),
  ('Gran Move', @m),
  ('Move', @m),
  ('Terios', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Applause');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V', @mo),
  ('DLX 1.6 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Charade');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CX/TS 1.0', @mo),
  ('Sedan 1.3i 16V', @mo),
  ('Sedan 1.5/DLX 1.3', @mo),
  ('TS/TSi 1.3/LSi 1.5 16V', @mo),
  ('TX 1.3 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cuore');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('0/TS0 85i', @mo),
  ('CS/CSL', @mo),
  ('TS/TSL', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Feroza');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('DX 1.6 16V', @mo),
  ('SX 1.6i 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Gran Move');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.5/1.6 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Move');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Van', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Terios');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.3 16V', @mo);

-- Denza
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Denza');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('B5', @m),
  ('D9', @m),
  ('Z9', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'B5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GL 4WD', @mo),
  ('GS 4WD', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'D9');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AWD', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Z9');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GT AWD', @mo);

-- DFSK
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'DFSK');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('EC31', @m),
  ('EC35', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EC31');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Chassi (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EC35');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Furgão (Elétrico)', @mo);

-- Dodge
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Dodge');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Avenger', @m),
  ('Dakota', @m),
  ('Durango', @m),
  ('Intrepid', @m),
  ('Journey', @m),
  ('Ram', @m),
  ('Stealth', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Avenger');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ES 2.0/2.5 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Dakota');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5', @mo),
  ('Club 2.5', @mo),
  ('Durango 5.9 4x4 V8', @mo),
  ('Durango SLT 5.2 4x4 V8', @mo),
  ('RT 5.2 Aut.', @mo),
  ('RT 5.2 CE Aut.', @mo),
  ('Sport 2.5 4x4', @mo),
  ('Sport 2.5 CD Diesel', @mo),
  ('Sport 2.5 Diesel', @mo),
  ('Sport 3.9 V6', @mo),
  ('Sport 3.9 V6 CD Aut.', @mo),
  ('Sport 3.9 V6 CD Mec.', @mo),
  ('Sport 5.2 V8', @mo),
  ('Sport 5.2 V8 CD Aut.', @mo),
  ('Sport CE 2.5 Diesel', @mo),
  ('Sport CE 3.9 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Durango');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Citadel 3.6 24V 4x4 Aut.', @mo),
  ('Crew 3.6 24V 4x4 Aut.', @mo),
  ('Limited 3.6 24V 4x4 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Intrepid');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.3 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Journey');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Crossroad 3.6 V6 Aut.', @mo),
  ('RT 3.6 V6 Aut.', @mo),
  ('RT 2.7 V6 185cv Aut.', @mo),
  ('RT 3.6 AWD V6 Aut.', @mo),
  ('SE 2.7 V6 185cv Aut.', @mo),
  ('SXT 2.7 V6 185cv Aut.', @mo),
  ('SXT 3.6 V6 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ram');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2500 H.DUTY 5.9 SLT 24V CD 4x4 Dies.', @mo),
  ('2500 H.DUTY 5.9 SLT TDI CS 4x4 Dies.', @mo),
  ('2500 LARAMIE 6.7 TDI CD 4x4 Dies', @mo),
  ('2500 TROPIVAN 5.9 SLT Exec.TDI Dies.', @mo),
  ('2500 TROPIVAN 5.9 SLT TDI 4x4 Dies.', @mo),
  ('Laramie 5.9 V8', @mo),
  ('Laramie/SLT 5.2 V8', @mo),
  ('Sport 5.9 V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Stealth');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 MPI', @mo);

-- EFFA
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'EFFA');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('K01', @m),
  ('K02', @m),
  ('M-100', @m),
  ('Plutus', @m),
  ('Start', @m),
  ('ULC', @m),
  ('V21', @m),
  ('V22', @m),
  ('V25', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'K01');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Pick-up CS 1.0 8V 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'K02');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Pick-up CD 1.0 8V 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'M-100');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 8V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Plutus');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.2 8V 4x2 CD Turbo Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Start');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Picape CD 1.0 8V 5p', @mo),
  ('Picape L 1.0 8V 2p', @mo),
  ('Van 1.0 8V 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ULC');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('FURGÃO 1.0 8V 5p', @mo),
  ('PICAPE 1.0 8V 2p', @mo),
  ('PICAPE CD 1.0 8V 4p', @mo),
  ('PICAPE Longa 1.0 8V 2p', @mo),
  ('PICAPE Longa Bau 1.0 8V 2p', @mo),
  ('VAN 1.0 8V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'V21');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Pick-up CS 1.3 16V 2p', @mo),
  ('Pick-up CS 1.5 16V 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'V22');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Pick-up CD 1.3 16V 4p', @mo),
  ('Pick-up CD 1.5 16V 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'V25');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Furgão 1.3 16V 5p', @mo),
  ('Furgão 1.5 16V 5p', @mo);

-- Engesa
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Engesa');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Engesa', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Engesa');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4x4 2.5/4.1', @mo),
  ('4x4 4.0 Diesel', @mo);

-- Envemo
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Envemo');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Camper', @m),
  ('Master', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Camper');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5/GL/GLS/Master 4.1', @mo),
  ('4x4 2.5 Diesel', @mo),
  ('GL/GLS 4x4 4.0 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Master');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.0 Diesel', @mo);

-- Ferrari
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Ferrari');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('12Cilinrdri', @m),
  ('296', @m),
  ('348', @m),
  ('355', @m),
  ('360', @m),
  ('456', @m),
  ('458', @m),
  ('488', @m),
  ('550', @m),
  ('575M', @m),
  ('612', @m),
  ('812', @m),
  ('849', @m),
  ('Amalfi', @m),
  ('California', @m),
  ('F12', @m),
  ('F430', @m),
  ('F458', @m),
  ('F599', @m),
  ('F8', @m),
  ('FF', @m),
  ('GTC4', @m),
  ('Portofino', @m),
  ('Purosangue', @m),
  ('Roma', @m),
  ('SF', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '12Cilinrdri');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 6.5 V12 830cv', @mo),
  ('Spider 6.5 V12 830cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '296');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GTB (Hibrido)', @mo),
  ('GTS (Híbrido)', @mo),
  ('Speciale 3.0 V6 Bi-Turbo', @mo),
  ('Speciale A 3.0 V6 Bi-Turbo', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '348');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GTS 3.4', @mo),
  ('Spider 3.4', @mo),
  ('TS/TB 3.4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '355');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Berlinetta', @mo),
  ('Berlinetta F1', @mo),
  ('GTS', @mo),
  ('GTS F1', @mo),
  ('GTS Spider', @mo),
  ('GTS Targa', @mo),
  ('Spider F1', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '360');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Challenge Stradale', @mo),
  ('Modena', @mo),
  ('Modena F1', @mo),
  ('Spider 400cv', @mo),
  ('Spider F1 400cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '456');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GT', @mo),
  ('GTA', @mo),
  ('M-GT 5.5 V12', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '458');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Speciale A', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '488');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GTB 3.9 V8 670cv', @mo),
  ('Pista 3.9 V8 720cv', @mo),
  ('Pista Spider 3.9 V8 720cv', @mo),
  ('Spider 3.9 V8 670cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '550');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Maranello', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '575M');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Maranello F1 V12 515cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '612');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Scaglietti F1 V12 540cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '812');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GTS 6.5 V12 800cv', @mo),
  ('SUPERFAST V12 800cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '849');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Testarossa Coupe 4.0 V8 830cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Amalfi');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.9 V8 640cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'California');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.9 Turbo F1 V8 560cv', @mo),
  ('F1 V8 / California 30', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'F12');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Berlinetta 740cv', @mo),
  ('TDF 780cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'F430');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('F1', @mo),
  ('SCUDERIA F1', @mo),
  ('Spider F1', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'F458');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Italia F1 4.5 V8 570cv', @mo),
  ('Speciale F1 4.5 V8', @mo),
  ('Spider F1 4.5 V8 570cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'F599');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GTB Fiorano F1 6.0 V12 620cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'F8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Spider 3.9 V8 Bi-Turbo 720cv', @mo),
  ('TRIBUTO 3.9 V8 720cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'FF');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('F1 6.3 V12 660cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GTC4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LUSSO 6.3 V12 690cv', @mo),
  ('LUSSO T V8 610cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Portofino');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.9 V8 600cv', @mo),
  ('M 3.9 V8 620cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Purosangue');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.5 V12 725cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Roma');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.9 V8 620cv', @mo),
  ('Spider 3.9 V8 620cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SF');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('90 SPIDER 4.0 V8 Bi-Turbo (Híbrido)', @mo),
  ('90 STRADALE 4.0 V8 Bi-Turbo (Híbrido)', @mo);

-- FEVER
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'FEVER');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Nextem', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Nextem');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('FN1000 BOX (Elétrico)', @mo),
  ('FN1000 CC (Elétrico)', @mo),
  ('FN1000 HIGH BOX (Elétrico)', @mo),
  ('FN1000 PickUp (Elétrico)', @mo);

-- Fiat
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Fiat');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('147', @m),
  ('500', @m),
  ('500e', @m),
  ('Argo', @m),
  ('Brava', @m),
  ('Bravo', @m),
  ('Cinquecento', @m),
  ('Coupe', @m),
  ('Cronos', @m),
  ('Doblo', @m),
  ('Ducato', @m),
  ('Ducato-10', @m),
  ('Ducato-15', @m),
  ('Ducato-8', @m),
  ('Duna', @m),
  ('Elba', @m),
  ('E-Scudo', @m),
  ('Fastback', @m),
  ('Fiorino', @m),
  ('Freemont', @m),
  ('Grand Siena', @m),
  ('Idea', @m),
  ('Linea', @m),
  ('Marea', @m),
  ('Mobi', @m),
  ('Oggi', @m),
  ('Palio', @m),
  ('Panorama', @m),
  ('Premio', @m),
  ('Pulse', @m),
  ('Punto', @m),
  ('Scudo', @m),
  ('Siena', @m),
  ('Stilo', @m),
  ('Strada', @m),
  ('Tempra', @m),
  ('Tipo', @m),
  ('Titano', @m),
  ('Toro', @m),
  ('UNO', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '147');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('C/ CL', @mo),
  ('Furgão (todos)', @mo),
  ('Pick-Up (todas)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ABARTH MULTIAIR 1.4 TB 16V 3p', @mo),
  ('Cabrio Dualogic Flex 1.4 8V', @mo),
  ('Cabrio Flex 1.4 8V Mec.', @mo),
  ('Cabrio/500 Coupe Gucci/Flex 1.4 Aut.', @mo),
  ('Cult 1.4 Flex 8V EVO Dualogic', @mo),
  ('Cult 1.4 Flex 8V EVO Mec.', @mo),
  ('LOUNGE 1.4 16V 100cv Mec.', @mo),
  ('LOUNGE 1.4 16V 100cv Dualogic', @mo),
  ('Lounge Air 1.4/ 1.4 Flex 16V Aut.', @mo),
  ('SPORT 1.4 16V 100cv Dualogic', @mo),
  ('SPORT 1.4 16V 100cv Mec.', @mo),
  ('Sport Air 1.4 16V/1.4 Flex 16V Aut.', @mo),
  ('Sport Air 1.4 16V/1.4 Flex Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '500e');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ICON (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Argo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 6V Flex', @mo),
  ('DRIVE 1.0 6V Flex', @mo),
  ('DRIVE 1.3 8V Flex', @mo),
  ('DRIVE 1.3 8V Flex Aut.', @mo),
  ('DRIVE GSR 1.3 8V Flex', @mo),
  ('DRIVE S-DESIGN 1.3 8V Flex', @mo),
  ('DRIVE TRIBUTO 125 1.0 6V Flex', @mo),
  ('ENDURANCE 1.3 8V Flex', @mo),
  ('HGT 1.8 16V Flex Aut.', @mo),
  ('HGT 1.8 16V Flex Mec.', @mo),
  ('PRECISION 1.8 16V Flex Aut.', @mo),
  ('PRECISION 1.8 16V Flex Mec.', @mo),
  ('TREKKING 1.3 8V Flex', @mo),
  ('TREKKING 1.3 8V Flex Aut.', @mo),
  ('TREKKING 1.8 16V Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Brava');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ELX 1.6 16V 4p', @mo),
  ('HGT 1.8 mpi 16V 4p', @mo),
  ('SX 1.6 16V 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Bravo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ABSOLUTE 1.8 Flex 16V 5p', @mo),
  ('ABSOLUTE Dualogic 1.8 Flex 16V 5p', @mo),
  ('BlackMotion 1.8 Dualogic Flex 5p', @mo),
  ('BlackMotion 1.8 Flex 16v 5p', @mo),
  ('ESSENCE 1.8 Flex 16V 5p', @mo),
  ('ESSENCE Dualogic 1.8 Flex 16V 5p', @mo),
  ('SPORTING 1.8 Dualogic Flex 16V 5p', @mo),
  ('SPORTING 1.8 Flex 16V 5p', @mo),
  ('SX 1.6', @mo),
  ('T-JET 1.4 16V Turbo 5p', @mo),
  ('WOLVERINE 1.8 Dualogic Flex 16V 5p', @mo),
  ('WOLVERINE 1.8 Flex 16V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cinquecento');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('0.7', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Coupe');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cronos');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 6V Flex', @mo),
  ('1.3 8V Flex', @mo),
  ('1.8 16V Flex Aut.', @mo),
  ('DRIVE 1.0 6V Flex', @mo),
  ('DRIVE 1.3 8V Flex', @mo),
  ('DRIVE 1.3 8V Flex Aut.', @mo),
  ('DRIVE 1.8 16V Flex Aut.', @mo),
  ('DRIVE GSR 1.3 8V Flex', @mo),
  ('HGT 1.8 16V Flex Aut.', @mo),
  ('PRECISION 1.3 8V Flex Aut.', @mo),
  ('PRECISION 1.8 16V Flex Aut.', @mo),
  ('PRECISION 1.8 16V Flex Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Doblo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.4 mpi Fire Flex 8V 4p', @mo),
  ('Cargo 1.4 mpi Fire Flex 8V 3p', @mo),
  ('Adv. XINGU 1.8 Flex 16V 5p', @mo),
  ('Adv. XINGU LOCKER 1.8 Flex 16V 5p', @mo),
  ('Adv.Ext./Adv.Ext.Loc. 1.8 16V Flex', @mo),
  ('Adv/Adv TRYON/LOCKER 1.8 Flex', @mo),
  ('Adventure/ Adv.ER 1.8 mpi 8V 103cv', @mo),
  ('ATTRACTIVE 1.4 Fire Flex 8V 5p', @mo),
  ('Cargo 1.3 Fire 16V 4/5p', @mo),
  ('Cargo 1.6 16V 4/5p', @mo),
  ('Cargo 1.8 mpi 8V 103cv', @mo),
  ('Cargo 1.8 mpi Fire Flex 8V/16V 4p', @mo),
  ('ELX 1.4 mpi Fire Flex 8V 4p', @mo),
  ('ELX 1.6 16V 4/5p', @mo),
  ('ELX 1.8 mpi 8V 103cv', @mo),
  ('ELX 1.8 mpi 8V Flex', @mo),
  ('ESSENCE 1.8 Flex 16V 5p', @mo),
  ('EX 1.3 Fire 16V 80cv 4/5p', @mo),
  ('HLX 1.8 mpi Flex 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ducato');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cargo 2.2 Diesel (E6)', @mo),
  ('Cargo 2.8 Curto/Longo TB Diesel', @mo),
  ('Cargo Curto 2.3 16V Diesel', @mo),
  ('Cargo Curto 2.3 ME Diesel', @mo),
  ('Cargo Longo 2.3 ME Diesel', @mo),
  ('Cargo Médio 2.3 16V Diesel', @mo),
  ('Chassi 2.3 16V Diesel', @mo),
  ('Combinato 2.3 ME Diesel', @mo),
  ('Combinato 2.8 Diesel', @mo),
  ('Combinato 2.8 Turbo Diesel', @mo),
  ('Executivo 2.3 16V Diesel', @mo),
  ('Furgão Maxi 2.8 Diesel', @mo),
  ('Maxi. Curta 2.3 T.Alto ME Diesel', @mo),
  ('Maxi. Long. 2.3 T.Alto ME Diesel', @mo),
  ('MaxiCargo 2.2 Diesel (E6)', @mo),
  ('MaxiCargo 2.3 16V Diesel', @mo),
  ('MaxiCargo/Furgão Maxi 2.8 TB Dies', @mo),
  ('MaxiMulti 2.3 16V Diesel', @mo),
  ('Minibus 2.2 Comf.19L Diesel (E6)', @mo),
  ('Minibus 2.2 Comfort18L (E6)', @mo),
  ('Minibus 2.2 Exec. 17L Diesel (E6)', @mo),
  ('Minibus 2.2 Luxo 16L (E6)', @mo),
  ('Minibus 2.3 16V Diesel', @mo),
  ('Minibus 2.3 ME Diesel', @mo),
  ('Minibus 2.3 T.Alto ME Diesel', @mo),
  ('Minibus 2.8 Diesel', @mo),
  ('Minibus 2.8 Turbo Diesel', @mo),
  ('Minibus Comfort 2.3 16v Diesel', @mo),
  ('Mult/ Vetrato 2.8 T.Alto TB Dies.', @mo),
  ('Mult/ Vetrato 2.8 T.Baixo TB Dies', @mo),
  ('Multi 2.2 Diesel (E6)', @mo),
  ('Multi 2.3 16V Diesel', @mo),
  ('Multi Long. 2.3 T.Alto ME Diesel', @mo),
  ('Van 2.5 Diesel', @mo),
  ('Vip Bus 2.3 16V Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ducato-10');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Furgão 2.5 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ducato-15');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.8 Furgão TB Diesel', @mo),
  ('Furgão 2.8 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ducato-8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Furgão 2.5 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Duna');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6ie', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Elba');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6i.e/Top/CSL/ 1.6i.e/1.5 2p e 4p', @mo),
  ('CS 1.6 / 1.5 /1.3', @mo),
  ('S 1.6/ 1.5ie / 1.5 / 1.3', @mo),
  ('Weekend 1.5 i.e. 2p e 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-Scudo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('(Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Fastback');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 200 Turbo Flex Aut', @mo),
  ('ABARTH Turbo Flex 1.3 Aut.', @mo),
  ('Audace 1.0 200 T. Flex Aut', @mo),
  ('Audace 200 TB Aut (Hibrído)', @mo),
  ('Impetus 1.0 200 T. Flex Aut', @mo),
  ('Impetus 200 T. Aut (Hibrído)', @mo),
  ('Limited Ed.1.3 270 T.Flex Aut.', @mo),
  ('Smart Drive 1.0 200 Turbo Aut', @mo),
  ('Tributo 125 1.0 Turb. Flex Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Fiorino');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Endurance 1.3 Flex 8V 2p', @mo),
  ('Endurance EVO 1.4 Flex 8V 2p', @mo),
  ('Furg.1.5/1.3/1.3 Fire/1.3 F.Flex', @mo),
  ('Furgão 1.0', @mo),
  ('Furgão 1.5 mpi / i.e.', @mo),
  ('Furgão Celeb. EVO 1.4 Flex 8V 2p', @mo),
  ('Furgão EVO 1.4 Flex 8V 2p', @mo),
  ('Furgão Work. HARD 1.4 Flex 8V 2p', @mo),
  ('Pick-Up 1.0', @mo),
  ('Pick-Up 1.5 i.e./1.3/1.5/HD', @mo),
  ('Pick-Up LX (todas)', @mo),
  ('Pick-Up Trekking 1.5 mpi / i.e.', @mo),
  ('Pick-Up Working 1.5 mpi / i.e.', @mo),
  ('Working 1.4 Flex 8V 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Freemont');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EMOT./PRECISION 2.4 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Grand Siena');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 EVO Flex 8V 4p', @mo),
  ('1.4 EVO Flex 8V 4p', @mo),
  ('ATTRAC. 1.4 EVO F.Flex 8V', @mo),
  ('ATTRACTIVE 1.0 Flex 8V 4p', @mo),
  ('ESSEN. ITALIA Dual. 1.6 Flex', @mo),
  ('ESSEN.SUBLIME 1.6 Flex', @mo),
  ('ESSEN.SUBLIME Dual. 1.6 Flex', @mo),
  ('ESSENCE 1.6 Flex 16V', @mo),
  ('ESSENCE Dual. 1.6 Flex 16V', @mo),
  ('ESSENCE ITALIA 1.6 Flex 16V', @mo),
  ('TETRAFUEL 1.4 Evo F. Flex 8V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Idea');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('A.Ext./A..Ext.Loc.Dual. 1.8 Flex 5p', @mo),
  ('Adv./ Adv.LOCK.Dualogic 1.8 Flex 5p', @mo),
  ('Adv.Ext./Adv.Ext. Loc. 1.8 Flex 5p', @mo),
  ('Advent./ Adv.LOCKER 1.8 mpi Flex 5p', @mo),
  ('ATTRACTIVE 1.4 Fire Flex 8V 5p', @mo),
  ('ELX 1.4 mpi Fire Flex 8V 5p', @mo),
  ('ELX 1.8 mpi Flex 8V 5p', @mo),
  ('ESSENCE 1.6 Flex 16V 5p', @mo),
  ('ESSENCE Dualogic 1.6 Flex 16V 5p', @mo),
  ('ESSENCE SUBLIME 1.6 Flex 16V 5p', @mo),
  ('ESSENCE SUBLIME Dual.1.6 Flex16V 5p', @mo),
  ('HLX 1.8 mpi Flex 8V 5p', @mo),
  ('SPORTING 1.8 Flex 16V 5p', @mo),
  ('SPORTING Dualogic 1.8 Flex 16V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Linea');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.9/ HLX 1.9/ 1.8 Flex 16V 4p', @mo),
  ('1.9/ HLX 1.9/1.8 Flex Dualogic 4p', @mo),
  ('ABSOLUTE 1.9/1.8 Flex Dualogic 4p', @mo),
  ('ESSEN.SUBLIME 1.8 Flex 16V 4p', @mo),
  ('ESSEN.SUBLIME Dual.1.8 Flex 16V 4p', @mo),
  ('ESSENCE 1.8 Flex 16V 4p', @mo),
  ('ESSENCE Dualogic 1.8 Flex 16V 4p', @mo),
  ('LX 1.9/ 1.8 Flex 16V 4p', @mo),
  ('LX 1.9/ 1.8 Flex 16V Dualogic 4p', @mo),
  ('T-JET 1.4 16V Turbo 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Marea');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('City', @mo),
  ('ELX 1.8 mpi 16V 132cv 4p', @mo),
  ('ELX 2.0 20V 4p', @mo),
  ('ELX 2.4 mpi 20V 4p', @mo),
  ('HLX 2.0 20V 4p', @mo),
  ('HLX 2.4 mpi 20V 4p Aut.', @mo),
  ('HLX 2.4 mpi 20V 4p Mec.', @mo),
  ('SX 1.6 mpi 16V 106cv 4p', @mo),
  ('SX 1.8 16V 4p', @mo),
  ('SX 2.0 20V 4p', @mo),
  ('Turbo 2.0 20V 4p', @mo),
  ('Weekend City 4p', @mo),
  ('Weekend ELX 1.8 mpi 16V 132cv 4p', @mo),
  ('Weekend ELX 2.0 20V 4p', @mo),
  ('Weekend ELX 2.4 mpi 20V 4p', @mo),
  ('Weekend HLX 2.0 20V 4p', @mo),
  ('Weekend HLX 2.4 mpi 20V 4p Aut.', @mo),
  ('Weekend HLX 2.4 mpi 20V 4p Mec.', @mo),
  ('Weekend SX 1.6 mpi 16V 106cv 4p', @mo),
  ('Weekend SX 1.8 16V 4p', @mo),
  ('Weekend SX 2.0 20V 4p', @mo),
  ('Weekend Turbo 2.0 20V 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Mobi');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('DRIVE 1.0 Flex 6V 5p', @mo),
  ('DRIVE GSR 1.0 Flex 6V 5p', @mo),
  ('EASY 1.0 Fire Flex 5p.', @mo),
  ('EASY COMFORT 1.0 Flex 5p.', @mo),
  ('EASY on 1.0 Fire Flex 5p.', @mo),
  ('LIKE 1.0 Fire Flex 5p.', @mo),
  ('LIKE ON 1.0 Fire Flex 5p.', @mo),
  ('TREKKING 1.0 Flex 5p.', @mo),
  ('WAY 1.0 Fire Flex 5p.', @mo),
  ('WAY on 1.0 Fire Flex 5p.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Oggi');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Palio');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 Cel. ECON./ITALIA F.Flex 8V 4p', @mo),
  ('1.0 Celebr. ECONOMY F.Flex 8V 2p', @mo),
  ('1.0 ECONOMY Fire Flex 8V 2p', @mo),
  ('1.0 ECONOMY Fire Flex 8V 4p', @mo),
  ('1.0/ Trofeo 1.0 Fire/ Fire Flex 2p', @mo),
  ('1.0/ Trofeo 1.0 Fire/ Fire Flex 4p', @mo),
  ('1.5 mpi 8V 2p', @mo),
  ('1.5 mpi 8V 4p', @mo),
  ('1.6 mpi 16V 2p', @mo),
  ('1.6 mpi 16V 4p', @mo),
  ('1.8R mpi Flex 8V 2p', @mo),
  ('1.8R mpi Flex 8V 4p', @mo),
  ('ATTRA. Best Seller 1.0 EVO Flex 5p', @mo),
  ('ATTRA. Best Seller 1.4 EVO Flex 5p', @mo),
  ('ATTRA./ITÁLIA 1.4 EVO F.Flex 8V 5p', @mo),
  ('ATTRACTIVE 1.0 EVO Fire Flex 8v 5p', @mo),
  ('Celebration 1.0 Fire Flex 8V 2p', @mo),
  ('Celebration 1.0 Fire Flex 8V 4p', @mo),
  ('City 1.0 4p', @mo),
  ('City 1.5/1.6 4p', @mo),
  ('CityMatic 1.0 mpi', @mo),
  ('ED 1.0 mpi 2p e 4p', @mo),
  ('EDX 1.0 mpi 2p', @mo),
  ('EDX 1.0 mpi 4p', @mo),
  ('EL 1.5 mpi 2p e 4p', @mo),
  ('EL 1.6 spi 2p e 4p', @mo),
  ('ELX 1.0 Fire/30 Anos F. Flex 8V 4p', @mo),
  ('ELX 1.0 mpi Fire 16v 4p (25 anos)', @mo),
  ('ELX 1.0/ 1.0 Fire Flex 8V 2p', @mo),
  ('ELX 1.3 mpi Fire 16V 4p', @mo),
  ('ELX 1.3 mpi Flex 8V 4p', @mo),
  ('ELX 1.4 Fire/30 Anos F. Flex 8V 4p', @mo),
  ('ELX 1.5 4p', @mo),
  ('ELX 1.6 4p', @mo),
  ('ELX 1.6 mpi 16v 4p', @mo),
  ('ELX 1.8/ 1.8 mpi Flex 8V 4p', @mo),
  ('ELX Dualogic 1.8 mpi Flex 8V 4p', @mo),
  ('ELX/ 500 1.0 4p', @mo),
  ('ESSENCE 1.6 Flex 16V 5p', @mo),
  ('ESSENCE Dualogic 1.6 Flex 16V 5p', @mo),
  ('EX 1.0 mpi 2p', @mo),
  ('EX 1.0 mpi 4p', @mo),
  ('EX 1.0 mpi Fire 8v 4p', @mo),
  ('EX 1.0 mpi Fire/ Fire Flex 8v 2p', @mo),
  ('EX 1.3 mpi Fire 8V 67cv 2p', @mo),
  ('EX 1.3 mpi Fire 8V 67cv 4p', @mo),
  ('EX 1.8 mpi 8V 103cv 4p', @mo),
  ('EX Century 1.0 mpi Fire 16v 2p', @mo),
  ('EX Century 1.0 mpi Fire 16v 4p', @mo),
  ('HLX 1.8 mpi 8V 103cv 4p', @mo),
  ('HLX 1.8 mpi Flex 8V 4p', @mo),
  ('Rua 1.0 Fire Flex 8V 5p', @mo),
  ('SPORT.INTERLAGOS 1.6 Flex 16V', @mo),
  ('SPORT.INTERLAGOS Dual.1.6 Flex 16V', @mo),
  ('SPORTING 1.6 Flex 16V 5p', @mo),
  ('SPORTING B.Edit. 1.6 Flex 16V 5p', @mo),
  ('SPORTING Dual. B.Edit. 1.6 Flex 5p', @mo),
  ('SPORTING Dualogic 1.6 Flex 16V 5p', @mo),
  ('Stile 1.6 mpi 16v 4p', @mo),
  ('W.Adv. LOC. ITAL.Dual.1.8 Flex 16V', @mo),
  ('W.ADV. LOCK. ITALIA 1.8 Flex 16V', @mo),
  ('Way 1.0 Fire Flex 8V 5p', @mo),
  ('Way Celebration 1.0 F. Flex 8V 5p', @mo),
  ('Week. Adv. Dualogic 1.8 Flex', @mo),
  ('Week. Adv. ITALIA 1.8 Flex 16V', @mo),
  ('Week. Adv/Adv TRYON 1.8 mpi Flex', @mo),
  ('Week. ATTRACTIVE 1.4 Fire Flex 8V', @mo),
  ('Week.Adv. ITAL. Dual. 1.8 Flex 16V', @mo),
  ('Week.Adv.LOCK.Dualogic 1.8 Flex', @mo),
  ('Weekend 1.0 6-marchas', @mo),
  ('Weekend 1.5 mpi 4p', @mo),
  ('Weekend 1.6 mpi 16V 4p', @mo),
  ('Weekend Adv. Ext. 1.8 Dual. Flex', @mo),
  ('Weekend Adv. Ext. 1.8 Flex', @mo),
  ('Weekend Adv. Loc.Ext.1.8 Dual.Flex', @mo),
  ('Weekend Adv. LOCKER Ext. 1.8 Flex', @mo),
  ('Weekend Adventure 1.6 8V/16V', @mo),
  ('Weekend Adventure 1.8 8V 103cv 4p', @mo),
  ('Weekend Adventure LOCKER 1.8 Flex', @mo),
  ('Weekend City 1.5/ 1.6 4p', @mo),
  ('Weekend ELX 1.0 mpi Fire 16V', @mo),
  ('Weekend ELX 1.3 mpi Fire 16V', @mo),
  ('Weekend ELX 1.3 mpi Flex 8V 4p', @mo),
  ('Weekend ELX 1.4 mpi Fire Flex 8V', @mo),
  ('Weekend ELX 1.5 mpi 4p', @mo),
  ('Weekend ELX 1.6 mpi', @mo),
  ('Weekend EX 1.3 mpi Fire 8V 67cv 4p', @mo),
  ('Weekend EX 1.5 mpi', @mo),
  ('Weekend EX 1.8 mpi 8V 103cv 4p', @mo),
  ('Weekend HLX 1.8 mpi Flex 4p', @mo),
  ('Weekend Sport 1.6 mpi 16V 4p', @mo),
  ('Weekend Stile 1.6 mpi 16V 4p', @mo),
  ('Weekend Stile 1.8 mpi 8V 103cv 4p', @mo),
  ('Weekend Trekking 1.4 Fire Flex 8V', @mo),
  ('Weekend Trekking 1.6 Flex 16V 5p', @mo),
  ('Weekend Trekking 1.8 mpi Flex 8V', @mo),
  ('Young 1.0 mpi 8v 2p', @mo),
  ('Young 1.0 mpi 8v 4p', @mo),
  ('Young 1.0 mpi Fire 8V 2p', @mo),
  ('Young 1.0 mpi Fire 8V 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Panorama');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('C/CL', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Premio');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CS 1.5 i.e. 2p/ SL 1.6/1.5/1.3 4p', @mo),
  ('CS 1.6/ 1.5/ 1.3 2p', @mo),
  ('CSL 1.6 i.e./ 1.5 4p', @mo),
  ('CSL 1.6/ 1.5', @mo),
  ('S 1.5 i.e./ 1.5 / 1.3', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Pulse');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 Turbo 200 Flex Aut.', @mo),
  ('ABARTH 1.3 Turbo 16V Flex Aut.', @mo),
  ('AUDACE 1.0 Turbo 200 Flex Aut.', @mo),
  ('AUDACE Turbo 200 Aut. (Hibrído)', @mo),
  ('DRIVE 1.0 Turbo 200 Flex Aut.', @mo),
  ('DRIVE 1.3 8V Flex Aut.', @mo),
  ('DRIVE 1.3 8V Flex Mec.', @mo),
  ('IMPETUS 1.0 TURBO 200 Flex Aut.', @mo),
  ('IMPETUS T. 200 Aut. (Hibrído)', @mo),
  ('TRIBUTO 125 1.0 TB. 200 Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Punto');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ELX 1.4 Fire Flex 8V 5p', @mo),
  ('1.4 Fire Flex 8V 5p', @mo),
  ('ATTRACTIVE 1.4 Fire Flex 8V 5p', @mo),
  ('ATTRACTIVE ITALIA 1.4 F.Flex 8V 5p', @mo),
  ('BLACKMOTION 1.8 Flex 16V 5p.', @mo),
  ('BLACKMOTION Dual. 1.8 Flex 16v 5p', @mo),
  ('Cabrio', @mo),
  ('EL/ELX', @mo),
  ('ESSENCE 1.6 Flex 16V 5p', @mo),
  ('ESSENCE 1.8 Flex 16V 5p', @mo),
  ('ESSENCE Dualogic 1.6 Flex 16V 5p', @mo),
  ('ESSENCE Dualogic 1.8 Flex 16V 5p', @mo),
  ('ESSENCE SP 1.6 Flex 16V 5p', @mo),
  ('ESSENCE SP Dualogic 1.6 Flex 16V', @mo),
  ('HLX 1.8 Flex 8V 5p', @mo),
  ('S', @mo),
  ('Sporting 1.8 Flex 8V/16V 5p', @mo),
  ('Sporting Dualogic 1.8 Flex 16V 5p', @mo),
  ('SX', @mo),
  ('T-JET 1.4 16V Turbo 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Scudo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cargo 1.5 16V Turbo Diesel', @mo),
  ('Cargo 2.2 16V Turbo Diesel', @mo),
  ('Multi 1.5 16 V Turbo Diesel', @mo),
  ('Multi 2.2 16 V Turbo Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Siena');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 mpi/ 500 1.0 mpi', @mo),
  ('1.0/ EX 1.0 mpi Fire/ Fire Flex 8v', @mo),
  ('1.5 mpi 8V 4p', @mo),
  ('ATTRACTIVE 1.0 Fire Flex 8V 4p', @mo),
  ('ATTRACTIVE 1.4 Fire Flex 8V 4p', @mo),
  ('Celebration 1.0 Fire Flex 8V 4p', @mo),
  ('City 4p', @mo),
  ('EL 1.0 mpi Fire Flex 8V 4p', @mo),
  ('EL 1.4 mpi Fire Flex 8V 4p', @mo),
  ('EL 1.6 mpi 16V', @mo),
  ('EL 1.6 spi', @mo),
  ('EL Celeb. 1.0 mpi Fire Flex 8V 4p', @mo),
  ('EL Celeb. 1.4 mpi Fire Flex 8V 4p', @mo),
  ('ELX 1.0 mpi Fire 16v 4p (25 anos)', @mo),
  ('ELX 1.0 mpi Fire/Fire Flex 8V 4p', @mo),
  ('ELX 1.3 mpi Fire 16V 4p', @mo),
  ('ELX 1.3 mpi Flex 8V 4p', @mo),
  ('ELX 1.4 mpi Fire Flex 8V 4p', @mo),
  ('ELX 1.5 mpi 4p', @mo),
  ('ELX 1.6 mpi 8V/16V 4p', @mo),
  ('ELX 1.8 mpi 8V 103cv 4p', @mo),
  ('ESSENCE 1.6 Flex 16V 4p', @mo),
  ('ESSENCE Dualogic 1.6 Flex 16V 4p', @mo),
  ('EX 1.0 mpi Fire 16v 4p', @mo),
  ('EX 1.3 mpi Fire 8V 67cv 4p', @mo),
  ('EX 1.8 mpi 8V 103cv 4p', @mo),
  ('HL 1.6 mpi 16V', @mo),
  ('HLX 1.8 mpi Flex 8V 4p', @mo),
  ('HLX Dualogic 1.8 mpi Flex 8V 4p', @mo),
  ('Sporting 1.6 Flex 16V 4p', @mo),
  ('Sporting Dualogic 1.6 Flex 16V 4p', @mo),
  ('Stile/Sport MTV 1.6 mpi 16V', @mo),
  ('TETRAFUEL 1.4 mpi Fire Flex 8v 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Stilo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 ATTRACTIVE Flex 8V 5p', @mo),
  ('1.8 MS Lim.Edit./ MS Season 16V', @mo),
  ('1.8 SP Flex 8V 5p', @mo),
  ('1.8 Sporting Flex 8V 5P', @mo),
  ('1.8/ 1.8 Connect 8V 103cv 5p', @mo),
  ('1.8/ 1.8 Connect Flex 8V 5p', @mo),
  ('1.8/ 1.8 SP/ Connect 16V 122cv 5p', @mo),
  ('2.4 Abarth 20V 167cv 5p', @mo),
  ('Dualogic 1.8 ATTRACTIVE Flex 8V 5p', @mo),
  ('Dualogic 1.8 BlackMotion Flex 8V', @mo),
  ('Dualogic 1.8 Flex 8V 5p', @mo),
  ('Dualogic 1.8 SP Flex 8V 5p', @mo),
  ('Dualogic 1.8 Sporting Flex 8V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Strada');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.3 mpi Fire 8V 67cv CE', @mo),
  ('1.3 mpi Fire 8V 67cv CS', @mo),
  ('1.4 mpi Fire Flex 8V CE', @mo),
  ('1.4 mpi Fire Flex 8V CS', @mo),
  ('Adv. Ext. 1.8 LOCKER Dual.Flex CE', @mo),
  ('Adv. Ext./ Ext.1.8 LOCKER Flex CE', @mo),
  ('Adv. Extreme 1.8 Dual. Flex CE', @mo),
  ('Adv. M. March. 1.8 Flex 16V CD', @mo),
  ('Adv. M. March.1.8 Dual. Flex CD', @mo),
  ('Adv.1.8 16V LOCKER Dual. Flex CE', @mo),
  ('Adv.1.8 16V Dualogic Flex CD', @mo),
  ('Adv.1.8 16V Dualogic Flex CE', @mo),
  ('Adv.1.8 16V LOCKER Dualo. Flex CD', @mo),
  ('Adv.Ext. 1.8 LOCKER Dual. Flex CD', @mo),
  ('Adv.Ext./ Ext. 1.8 LOCKER Flex CD', @mo),
  ('Adv/Adv TRYON 1.8 mpi Flex 8V CE', @mo),
  ('Adventure 1.6 mpi 16V CE', @mo),
  ('Adventure 1.8 mpi 8V 103cv CE', @mo),
  ('Adventure 1.8/ 1.8 LOCKER Flex CE', @mo),
  ('Adventure Ext. 1.8 Dual. Flex CD', @mo),
  ('Adventure1.8/ 1.8 LOCKER Flex CD', @mo),
  ('Celeb. 1.4 mpi Fire Flex 8V CE', @mo),
  ('Celeb. 1.4 mpi Fire Flex 8V CS', @mo),
  ('Endurance 1.3 Flex 8V CS Plus', @mo),
  ('Endurance 1.4 Flex 8V CD', @mo),
  ('Endurance 1.4 Flex 8V CS Plus', @mo),
  ('Freedom 1.3 Flex 8V CS Plus', @mo),
  ('Freedom 1.3 Flex 8V CD', @mo),
  ('Freedom 1.4 Flex 8V CD', @mo),
  ('Freedom 1.4 Flex 8V CS', @mo),
  ('LX 1.6 16V CE', @mo),
  ('LX 1.6 mpi 16V', @mo),
  ('Opening Edition 1.3 Flex 8V CD', @mo),
  ('Ranch 1.0 Flex Turbo CD Aut.', @mo),
  ('Ranch 1.3 Flex 8V CD Aut.', @mo),
  ('Sporting 1.8 Flex 16V CE', @mo),
  ('Trek. M. March. 1.6 Flex 16V CE', @mo),
  ('Trekking 1.4 mpi Fire Flex 8V CE', @mo),
  ('Trekking 1.4 mpi Fire Flex 8V CS', @mo),
  ('Trekking 1.6 16V Flex CD', @mo),
  ('Trekking 1.6 16V Flex CE', @mo),
  ('Trekking 1.6 16V Flex CS', @mo),
  ('Trekking 1.6 16V LOCKER Flex CD', @mo),
  ('Trekking 1.6 mpi', @mo),
  ('Trekking 1.8 mpi Flex 8V CE', @mo),
  ('Trekking 1.8 mpi Flex 8V CS', @mo),
  ('Ultra 1.0 Flex Turbo CD Aut.', @mo),
  ('Volc.TRIBUTO 125 1.3 Flex CD Aut.', @mo),
  ('Volcano 1.3 Flex 8V CD', @mo),
  ('Volcano 1.3 Flex 8V CD Aut.', @mo),
  ('Working 1.4 mpi Fire Flex 8V CD', @mo),
  ('Working 1.4 mpi Fire Flex 8V CE', @mo),
  ('Working 1.4 mpi Fire Flex 8V CS', @mo),
  ('Working 1.6 mpi 16V CE', @mo),
  ('Working 1.6 mpi 16V CS', @mo),
  ('Working 1.8 mpi 8v 103cv CE', @mo),
  ('Working 1.8 mpi 8V 103cv CS', @mo),
  ('Working Celeb.1.4 Fire Flex 8V CD', @mo),
  ('Working Celeb.1.4 Fire Flex 8V CE', @mo),
  ('Working Celeb.1.4 Fire Flex 8V CS', @mo),
  ('Working HARD 1.4 Fire Flex 8V CD', @mo),
  ('Working HARD 1.4 Fire Flex 8V CE', @mo),
  ('Working HARD 1.4 Fire Flex 8V CS', @mo),
  ('Working Plus 1.4 8V Flex CS', @mo),
  ('Strada Working 1.5 mpi 8V CE', @mo),
  ('Strada Working 1.5 mpi 8V CS', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tempra');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 i.e 16V 2p e 4p', @mo),
  ('2.0 i.e. 8V 2p e 4p', @mo),
  ('2.0 mpi 16V', @mo),
  ('8V/ City 8V', @mo),
  ('HLX 2.0 16V 4p', @mo),
  ('Ouro 16V 2p e 4p', @mo),
  ('Ouro/Prata 2.0 2p e 4p', @mo),
  ('Stile 2.0 i.e. Turbo 4p', @mo),
  ('SW SLX 2.0 i.e.', @mo),
  ('SX 2.0 16V 4p', @mo),
  ('SX 2.0 i.e. 8V 4p', @mo),
  ('Turbo 2.0 i.e. 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tipo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 i.e. 2p e 4p', @mo),
  ('1.6 mpi 4p', @mo),
  ('2.0 16V 2p/4p', @mo),
  ('2.0 SLX 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Titano');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Endurance 2.2 16V 4x4 TB Die. Mec', @mo),
  ('Ranch 2.2 16V 4x4 TB Diesel Aut.', @mo),
  ('Volcano 2.2 16V 4x4 TB Die. Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Toro');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Blackjack 2.4 16V flex Aut', @mo),
  ('Endurance 1.3 T270 4x2 Flex Aut.', @mo),
  ('Endurance 1.8 16V Flex Aut.', @mo),
  ('Endurance 1.8 16V Flex Mec.', @mo),
  ('Endurance 2.0 16V 4x4 Diesel Aut.', @mo),
  ('Freedom 1.3 T270 4x2 Flex Aut.', @mo),
  ('Freedom 1.8 16V Flex Aut.', @mo),
  ('Freedom 2.0 16V 4x2 TB Diesel Mec.', @mo),
  ('Freedom 2.0 16V 4x4 TB Diesel Aut.', @mo),
  ('Freedom 2.0 16V 4x4 TB Diesel Mec.', @mo),
  ('Freedom 2.4 16V Flex Aut.', @mo),
  ('Freedom Road 1.8 16V Flex Aut.', @mo),
  ('Freedom Road 2.4 16V Flex Aut.', @mo),
  ('Opening Ed. Plus 1.8 16V Flex Aut.', @mo),
  ('Opening Edition 1.8 16V Flex Aut.', @mo),
  ('Ranch 2.0 16V 4x4 TB Diesel Aut.', @mo),
  ('Ranch 2.2 16V 4x4 TB Diesel Aut.', @mo),
  ('Ultra 1.3 16V 4x2 TB Flex Aut.', @mo),
  ('Ultra 1.3 T270 4x2 Aut.', @mo),
  ('Ultra 2.0 16V 4x4 TB Diesel Aut.', @mo),
  ('Vol. TRIBUTO 125 1.3 T270 Flex Aut.', @mo),
  ('Volcano 1.3 T270 4x2 Aut.', @mo),
  ('Volcano 1.3 T270 4x2 Flex Aut.', @mo),
  ('Volcano 2.0 16V 4x4 TB Diesel Aut.', @mo),
  ('Volcano 2.2 16V 4x4 TB Diesel Aut.', @mo),
  ('Volcano 2.4 16V Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'UNO');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 mpi 2p e 4p', @mo),
  ('1.6R mpi / 1.6R / 1.5R', @mo),
  ('ATTRACTI. Celeb.1.4 EVO F.Flex 8V 2p', @mo),
  ('ATTRACTI. Celeb.1.4 EVO F.Flex 8V 4p', @mo),
  ('ATTRACTIVE 1.0 Fire Flex 8V 5p', @mo),
  ('ATTRACTIVE 1.0 Flex 6V 5p', @mo),
  ('ATTRACTIVE 1.4 EVO Fire Flex 8V 2p', @mo),
  ('ATTRACTIVE 1.4 EVO Fire Flex 8V 4p', @mo),
  ('CIAO 1.0 Fire Flex 8V 5p', @mo),
  ('City / Smart City 1.0 4p', @mo),
  ('CS/Top/Sport 1.5 i.e. / 1.5 /1.3', @mo),
  ('CS/Top/Sport 1.5 i.e. / 1.5 4p', @mo),
  ('CSL 1.6 4p (Argentino)', @mo),
  ('DRIVE 1.0 Flex 6V 5p', @mo),
  ('ECONOMY 1.4 EVO Fire Flex 8V 2p', @mo),
  ('ECONOMY 1.4 EVO Fire Flex 8V 4p', @mo),
  ('ECONOMY Celeb. 1.4 EVO F. Flex 8V 2p', @mo),
  ('ECONOMY Celeb. 1.4 EVO F. Flex 8V 4p', @mo),
  ('EVOLUTION 1.4 Fire Flex 8V 5p', @mo),
  ('Furgão 1.0 Fire Flex 8V 3p', @mo),
  ('Furgão 1.3 mpi Fire/ Fire Flex 8V', @mo),
  ('Furgão 1.5 mpi/i.e.', @mo),
  ('Furgão 1.5/ 1.3', @mo),
  ('Mille ELX 2p e 4p', @mo),
  ('Mille 1.0 Electronic 4p', @mo),
  ('Mille 1.0 Fire/ F.Flex/ ECONOMY 2p', @mo),
  ('Mille 1.0 Fire/ F.Flex/ ECONOMY 4p', @mo),
  ('Mille 1.0/ i.e./Electronic/Brio 2p', @mo),
  ('Mille Celeb. WAY ECON. 1.0 F.Flex 2p', @mo),
  ('Mille Celeb. WAY ECON. 1.0 F.Flex 4p', @mo),
  ('Mille Celeb/Celeb.ECON 1.0 F.Flex 2p', @mo),
  ('Mille Celeb/Celeb.ECON 1.0 F.Flex 4p', @mo),
  ('Mille EP 2p e 4p', @mo),
  ('Mille Grazie 1.0 Fire Flex 8v 4p', @mo),
  ('Mille SX 2p e 4p', @mo),
  ('Mille SX Young 1.0 IE', @mo),
  ('MILLE WAY ECO.XINGU 1.0 F.Flex 8v 5p', @mo),
  ('Mille WAY ECONOMY 1.0 F.Flex 2p', @mo),
  ('Mille WAY ECONOMY 1.0 F.Flex 4p', @mo),
  ('Mille/ Mille EX/ Smart 2p', @mo),
  ('Mille/ Mille EX/ Smart 4p', @mo),
  ('S 1.5 i.e. / 1.5 / 1.3/ SX 1.3', @mo),
  ('SPORT. Dual. 1.4 B.Edit. Flex 8V 5p', @mo),
  ('SPORT.INTERLAGOS 1.4 EVO F.Flex 8v', @mo),
  ('SPORTING 1.3 Flex 8V 5p', @mo),
  ('SPORTING 1.4 B.Edit. Flex 8V 5p', @mo),
  ('SPORTING 1.4 EVO Fire Flex 8V 2p', @mo),
  ('SPORTING 1.4 EVO Fire Flex 8V 4p', @mo),
  ('SPORTING Dual./GSR 1.3 Flex 8V 5p', @mo),
  ('SPORTING Dualogic 1.4 EVO Flex 8V 4p', @mo),
  ('Turbo 1.4 i.e. 2p', @mo),
  ('VIVACE 1.0 EVO Fire Flex 8V 3p', @mo),
  ('VIVACE Celeb. 1.0 EVO F. Flex 8V 3p', @mo),
  ('VIVACE Celeb. 1.0 EVO F.Flex 8V 5p', @mo),
  ('VIVACE College 1.0 EVO FireFlex 5p', @mo),
  ('VIVACE ITALIA 1.0 EVO F. Flex 8V 5p', @mo),
  ('VIVACE/RUA 1.0 EVO Fire Flex 8V 5p', @mo),
  ('WAY 1.0 EVO Fire Flex 8V 2p', @mo),
  ('WAY 1.0 EVO Fire Flex 8V 5p', @mo),
  ('WAY 1.0 Flex 6V 5p', @mo),
  ('WAY 1.3 Flex 8V 5p', @mo),
  ('WAY 1.4 EVO Dualogic Flex 8V 5p', @mo),
  ('WAY 1.4 EVO Fire Flex 8V 2p', @mo),
  ('WAY 1.4 EVO Fire Flex 8V 5p', @mo),
  ('WAY Celeb. 1.0 EVO Fire Flex 8V 2p', @mo),
  ('WAY Celeb. 1.0 EVO Fire Flex 8V 5p', @mo),
  ('WAY Celeb. 1.4 EVO Fire Flex 8V 2p', @mo),
  ('WAY Celeb. 1.4 EVO Fire Flex 8V 5p', @mo),
  ('WAY Dual./GSR 1.3 Flex 8V 5p', @mo),
  ('WAY RIO 450 1.0 EVO Flex 8V 5p', @mo),
  ('WAY XINGU 1.0 EVO F.Flex 8V 5P', @mo),
  ('WAY XINGU 1.4 EVO F.Flex 8V 5p', @mo);

-- Fibravan
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Fibravan');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Buggy', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Buggy');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Off Road 1.6 8V', @mo),
  ('Off Road 1.8 8V', @mo),
  ('Plus 1.6 8V', @mo),
  ('Vip 1.6 8V Total Flex', @mo),
  ('Vip 1.8 8V', @mo);

-- Ford
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Ford');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Aerostar', @m),
  ('Aspire', @m),
  ('Belina', @m),
  ('Bronco', @m),
  ('Club', @m),
  ('Contour', @m),
  ('Corcel', @m),
  ('Courier', @m),
  ('Crown', @m),
  ('Del Rey', @m),
  ('EcoSport', @m),
  ('Edge', @m),
  ('Escort', @m),
  ('E-TRANSIT', @m),
  ('Expedition', @m),
  ('Explorer', @m),
  ('F-100', @m),
  ('F-1000', @m),
  ('F-150', @m),
  ('F-250', @m),
  ('Fiesta', @m),
  ('Focus', @m),
  ('Furglaine', @m),
  ('Fusion', @m),
  ('Ibiza', @m),
  ('Ka', @m),
  ('Ka+ Sedan', @m),
  ('Maverick', @m),
  ('Mondeo', @m),
  ('Mustang', @m),
  ('Pampa', @m),
  ('Probe', @m),
  ('Ranger', @m),
  ('Royale', @m),
  ('Taurus', @m),
  ('Territory', @m),
  ('Thunderbird', @m),
  ('Transit', @m),
  ('Verona', @m),
  ('Versailles', @m),
  ('Windstar', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Aerostar');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Mini-Van 3.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Aspire');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.3', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Belina');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GL 1.8 / 1.6', @mo),
  ('L 1.8/ 1.6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Bronco');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sport Badlands 2.0L TB 4WD Aut.', @mo),
  ('Sport Wildtrak 2.0 Tb 16V AWD Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Club');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Wagon V8', @mo),
  ('Wagon XLT 4.9 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Contour');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SE/ GL/ LX 2.0 16V', @mo),
  ('SE/GL/ LX 2.5 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Corcel');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('II GL/GT', @mo),
  ('II L', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Courier');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.3i/Furgão', @mo),
  ('1.6 L/ 1.6 Flex', @mo),
  ('CLX 1.4i 16V', @mo),
  ('Si 1.4i 16V', @mo),
  ('Sport 1.6 8v', @mo),
  ('Van 1.6/ 1.6 Flex 8V (Carga)', @mo),
  ('XL/XL-RS 1.6/ XL 1.6 Flex', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Crown');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Victoria LX 4.6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Del Rey');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Belina Ghia', @mo),
  ('Belina GL', @mo),
  ('Belina GLX', @mo),
  ('Belina L', @mo),
  ('Ghia 1.8 / 1.6 2p e 4p', @mo),
  ('GLX 1.6/1.8 / GL 1.6/1.8 2p e 4p', @mo),
  ('L 1.8 / 1.6 2p e 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EcoSport');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('100 Anos 1.5 Flex 5p Aut.', @mo),
  ('4WD 2.0/ 2.0 Flex 16V 5p', @mo),
  ('FREESTYLE 1.5 12V Flex 5p Aut.', @mo),
  ('FREESTYLE 1.5 12V Flex 5p Mec.', @mo),
  ('FREESTYLE 1.6 16V Flex 5p', @mo),
  ('FREESTYLE 1.6 16V Flex 5p Aut.', @mo),
  ('FREESTYLE 2.0 16V 4WD Flex 5p', @mo),
  ('FREESTYLE 2.0 16V Flex 5p', @mo),
  ('FREESTYLE 2.0 16V Flex 5p Aut.', @mo),
  ('FREESTYLE PLUS 1.5 Flex 5p Aut.', @mo),
  ('S 1.6 16V Flex 5p', @mo),
  ('SE 1.5 12V Flex 5p Aut.', @mo),
  ('SE 1.5 12V Flex 5p Mec.', @mo),
  ('SE 1.6 16V Flex 5p Aut.', @mo),
  ('SE 1.6 16V Flex 5p Mec.', @mo),
  ('SE 2.0 16V Flex 5p Aut.', @mo),
  ('SE Direct 1.5 Flex 5p Aut.', @mo),
  ('SE Direct 1.6 16V Flex 5p Aut.', @mo),
  ('STORM 2.0 4WD 16V Flex 5p Aut.', @mo),
  ('TITANIUM 1.5 12V Flex 5p Aut.', @mo),
  ('TITANIUM 1.6 16V Flex 5p', @mo),
  ('TITANIUM 2.0 16V Flex 5p', @mo),
  ('TITANIUM 2.0 16V Flex 5p Aut.', @mo),
  ('XL 1.6/ 1.6 Flex 8V 5p', @mo),
  ('XL Supercharger 1.0 8V 95cv 5p', @mo),
  ('XLS 1.6/ 1.6 Flex 8V 5p', @mo),
  ('XLS 2.0/2.0 Flex 16V 5p Aut.', @mo),
  ('XLS FREESTYLE 1.6 Flex 8V 5p', @mo),
  ('XLT 1.6/ 1.6 Flex 8V 5p', @mo),
  ('XLT 2.0/ 2.0 Flex 16V 5p Aut.', @mo),
  ('XLT 2.0/ 2.0 Flex 16V 5p Mec.', @mo),
  ('XLT FREESTYLE 1.6 Flex 8V 5p', @mo),
  ('XLT FREESTYLE 2.0 Flex 16V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Edge');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LIMITED 3.5 V6 24V AWD Aut.', @mo),
  ('LIMITED 3.5 V6 24V FWD Aut.', @mo),
  ('SEL 3.5 V6 24V FWD Aut.', @mo),
  ('SEL 3.5 V6 24V AWD Aut.', @mo),
  ('ST 2.7 V6 24V AWD Aut.', @mo),
  ('TITANIUM 3.5 V6 24V AWD Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Escort');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Racer 2.0i', @mo),
  ('Ghia 1.8i / 1.8 / 1.6', @mo),
  ('Ghia 2.0i / 2.0', @mo),
  ('GL 1.6 MPI', @mo),
  ('GL 1.6i / 1.6', @mo),
  ('GL 1.8i / 1.8', @mo),
  ('GL 1.8i 16V 3p', @mo),
  ('GL 1.8i 16V 4p', @mo),
  ('GLX 1.6i', @mo),
  ('GLX 1.8i 16V 4p', @mo),
  ('GLX 1.8i 8v', @mo),
  ('Guarujá 1.8 4p', @mo),
  ('Hobby 1.0', @mo),
  ('Hobby 1.6', @mo),
  ('L 1.8i / 1.8', @mo),
  ('L/LX 1.6', @mo),
  ('RS 1.8i 16V', @mo),
  ('S.W GL 1.8i 16V', @mo),
  ('S.W. GLX 1.8i 16V', @mo),
  ('SW 1.9 16v', @mo),
  ('SW GL 1.6 MPI', @mo),
  ('XR3 1.8 / 1.6 Beneton/Form./Laser', @mo),
  ('XR3 1.8 / 1.6 Conversível', @mo),
  ('XR3 2.0i', @mo),
  ('XR3 2.0i Conversível', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-TRANSIT');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Furgão Longo Teto Alto (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Expedition');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.4 V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Explorer');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Limited 4.0 4x4 V6 213cv', @mo),
  ('Limited 5.0 4x4 V8', @mo),
  ('Sport 4.0 V6', @mo),
  ('XL 4x2 4.0 V6', @mo),
  ('XL 4x4 4.0 V6', @mo),
  ('XLT 4x2 4.0 V6', @mo),
  ('XLT 4x4 4.0 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'F-100');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.3', @mo),
  ('Blazer 2.3', @mo),
  ('CD 2.3', @mo),
  ('Super 2.3', @mo),
  ('Super Série 2.3', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'F-1000');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CD/Blazer 3.6', @mo),
  ('CD/Blazer 3.9 Dies.', @mo),
  ('Lightning/ Super 4.9i', @mo),
  ('Regular Cab. 4.9i', @mo),
  ('S. S. Diesel / S.S. Diesel Turbo', @mo),
  ('SR XK Deserter Diesel', @mo),
  ('SR XK Deserter', @mo),
  ('Super 3.6 / Super Série 3.6', @mo),
  ('Super CE 4.9i / 3.6', @mo),
  ('Super Diesel / Super Diesel Turbo', @mo),
  ('Super Diesel CE 3.9', @mo),
  ('Super Série CE 4.9/3.6', @mo),
  ('Super Série CE Diesel 3.9', @mo),
  ('Super/ S.Série 4x4 3.9 Diesel', @mo),
  ('Tropical CD 4.9i', @mo),
  ('Tropical CD HSD 2.5/4.3 Diesel TB', @mo),
  ('Tropical SL/ Van 4.9i', @mo),
  ('Tropical SL/ Van T.Diesel (todas)', @mo),
  ('XL 2.5 HSD Diesel TB', @mo),
  ('XL 4.9i', @mo),
  ('XL 4.9i CE', @mo),
  ('XL 4x4 Diesel Turbo', @mo),
  ('XL Diesel Turbo', @mo),
  ('XLT 2.5 HSD Diesel TB', @mo),
  ('XLT 4x4 Diesel Turbo', @mo),
  ('XLT CE 4.9i', @mo),
  ('XLT Diesel Turbo', @mo),
  ('XLT/XL Lighting 4.9i', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'F-150');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Lariat 4x4 5.0 V8', @mo),
  ('Lariat Black 4x4 5.0 V8', @mo),
  ('Platinum 4x4 5.0 V8', @mo),
  ('Tremor 4x4 5.0 V8', @mo),
  ('XL Triton 4.3 V6', @mo),
  ('XLT Triton 4.3', @mo),
  ('XLT Triton 4.6 V8', @mo),
  ('XLT Triton 5.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'F-250');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('F-MILHA CD 3.9 TB Diesel', @mo),
  ('Tropica./Tropmine Exec. 3.9 Diesel', @mo),
  ('TropiCab CE 3.9 TB Diesel', @mo),
  ('Tropical 3.9 Diesel', @mo),
  ('Tropical 4.2 CE / CD Diesel TB', @mo),
  ('Tropical 4.2 V6', @mo),
  ('Tropical SL/ Van T.Diesel (todas)', @mo),
  ('Tropicampo CD 3.9 TB Diesel', @mo),
  ('Tropiclassic 3.9 TB Diesel', @mo),
  ('Tropivan Executive 3.9 TB Diesel', @mo),
  ('Tropivan/Tropi. Plus 3.9 TB Diesel', @mo),
  ('XL 3.9 4x2 Diesel', @mo),
  ('XL 3.9 4x4 TB Diesel', @mo),
  ('XL 3.9 CD TB Diesel', @mo),
  ('XL 4.2 180cv CD TB Diesel', @mo),
  ('XL 4.2 Turbo Diesel', @mo),
  ('XL 4.2 V6', @mo),
  ('XL Super Duty 3.9 Diesel', @mo),
  ('XL Super Duty 4.2 TB Diesel', @mo),
  ('XL Super Duty 4.2 V6', @mo),
  ('XLT 3.9 4x2 CD TB Diesel', @mo),
  ('XLT 3.9 4x2 Diesel TB', @mo),
  ('XLT 3.9 4x4 CD TB Diesel', @mo),
  ('XLT 3.9 4x4 TB Diesel', @mo),
  ('XLT 4.2 180cv CD TB Diesel', @mo),
  ('XLT 4.2 TB Diesel', @mo),
  ('XLT 4.2 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Fiesta');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 8V Flex/Class 1.0 8V Flex 5p', @mo),
  ('1.0i 3p e 5p', @mo),
  ('1.3 3p e 5p', @mo),
  ('1.5 16V Flex Mec. 5p', @mo),
  ('1.6 16V Flex Aut. 5p', @mo),
  ('1.6 16V Flex Mec. 5p', @mo),
  ('1.6 8V Flex/Class 1.6 8V Flex 5p', @mo),
  ('Class 1.0 2p', @mo),
  ('Class 1.0 4p', @mo),
  ('Class 1.6 8V 98cv 5p', @mo),
  ('CLX 1.3i 3p', @mo),
  ('CLX 1.3i 5p', @mo),
  ('CLX 1.4i 16V 3p e 5p', @mo),
  ('GL 1.0 3p', @mo),
  ('GL 1.0 5p', @mo),
  ('GL Class 1.0i 5p', @mo),
  ('GLX 1.6 8V 3p', @mo),
  ('GLX 1.6 8V 5p', @mo),
  ('Personnalité 1.0 8V 66cv 5p', @mo),
  ('S 1.0 8V Flex 5p', @mo),
  ('SE 1.0 8V Flex 5p', @mo),
  ('SE 1.6 16V Flex 5p', @mo),
  ('SE 1.6 8V Flex 5p', @mo),
  ('SE Plus 1.6 16V Flex Aut. 5p', @mo),
  ('SE Plus Direct 1.6 16V Flex Aut.', @mo),
  ('SE Style 1.6 16V Flex Mec. 5p', @mo),
  ('Sed. 1.6 8V Flex 4p', @mo),
  ('Sed. Personnalité 1.0 8V 4p', @mo),
  ('Sed. Supercharger 1.0 8V 4p', @mo),
  ('Sed. TI./TI.Plus1.6 16V Flex Aut.', @mo),
  ('Sedan 1.0 8V Flex 4p', @mo),
  ('Sedan 1.6 16V Flex Aut.', @mo),
  ('Sedan 1.6 16V Flex Mec.', @mo),
  ('Sedan S 1.0 8V Flex 4p', @mo),
  ('Sedan SE 1.0 8V Flex 4p', @mo),
  ('Sedan SE 1.6 16V Flex 4p', @mo),
  ('Sedan SE 1.6 8V Flex 4p', @mo),
  ('Sedan SEL 1.6 16V Flex Aut.', @mo),
  ('Sedan SEL 1.6 16V Flex Mec.', @mo),
  ('Sedan Street 1.0 8v 4p', @mo),
  ('Sedan Street 1.6 8v 4p', @mo),
  ('Sedan TITANIUM 1.6 16V Flex Mec', @mo),
  ('SEL 1.0 12V EcoBoost Aut. 5p', @mo),
  ('SEL 1.6 16V Flex Aut. 5p', @mo),
  ('SEL 1.6 16V Flex Mec. 5p', @mo),
  ('SEL Style 1.0 EcoBoost Aut . 5p', @mo),
  ('SEL Style 1.6 16V Flex Mec. 5p', @mo),
  ('Sport 1.0MPi 4p', @mo),
  ('Sport 1.6 16V Flex Mec.', @mo),
  ('Sport 1.6MPi 4p', @mo),
  ('Street 1.0 8v 3p', @mo),
  ('Street 1.6 8v 95cv 5p', @mo),
  ('Street/ Action 1.0 8v 5p', @mo),
  ('Supercharger 1.0 8V 95cv 5p', @mo),
  ('TIT./TIT.Plus 1.6 16V Flex Aut.', @mo),
  ('TIT.Plus 1.0 12V EcoBoost Aut. 5p', @mo),
  ('TITANIUM 1.6 16V Flex Mec.', @mo),
  ('TRAIL 1.0 8V Flex 5p', @mo),
  ('TRAIL 1.6 8V Flex 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Focus');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 S/1.6 SE Flex 16v 5p Aut', @mo),
  ('1.6 S/SE/SE Plus Flex 8V/16V 5p', @mo),
  ('1.8 16V 5p', @mo),
  ('2.0 16V/ 2.0 16V Flex 5p', @mo),
  ('2.0 16V/SE/SE Plus Flex 5p Aut.', @mo),
  ('Fastback SE/SE PLUS 2.0 Flex Aut.', @mo),
  ('Fastback TIT./T.PLUS 2.0 Flex Aut.', @mo),
  ('Ghia 2.0 16V/ 2.0 16V Flex 5p Aut', @mo),
  ('Ghia Sed. 2.0 16V/ 2.0 16V Flex 4p', @mo),
  ('Ghia Sed. 2.0 16V/2.0 16V Flex Aut', @mo),
  ('Ghia/ XR 2.0 /Ghia 2.0 16V Flex 5p', @mo),
  ('Sed. TI./TI.Plus 2.0 16V Flex Aut', @mo),
  ('Sedan 1.6 16V Flex 4p Aut.', @mo),
  ('Sedan 1.6/1.6 Flex 8V/16V 4p Mec.', @mo),
  ('Sedan 1.8 16V 115cv 4p', @mo),
  ('Sedan 2.0 16V/2.0 16V Flex 4p', @mo),
  ('Sedan 2.0 16V/2.0 16V Flex 4p Aut.', @mo),
  ('TITA/TITA Plus 2.0 Flex 5p Aut.', @mo),
  ('TITANIUM 2.0 16V Flex 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Furglaine');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.6', @mo),
  ('3.9 Diesel', @mo),
  ('Chateaux/Exec. 3.9 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Fusion');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 16V 193cv Aut. (Híbrido)', @mo),
  ('2.5L I-VCT Flex Aut.', @mo),
  ('SE 2.5 I-VCT Flex 16V Aut.', @mo),
  ('SEL 2.0 Ecobo. 16V 248cv Aut.', @mo),
  ('SEL 2.3 16V 162cv Aut.', @mo),
  ('SEL 2.5 16V 173cv Aut.', @mo),
  ('SEL 3.0 V6 24V 243cv Aut.', @mo),
  ('SEL 3.0 V6 AWD 24V 243cv Aut.', @mo),
  ('Titanium 2.0 145cv Aut. (Híbrido)', @mo),
  ('Titanium 2.0 GTDI Eco. Awd Aut.', @mo),
  ('Titanium 2.0 GTDI Eco. Fwd Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ibiza');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.9 Furgão Diesel', @mo),
  ('Chat./Exec. 3.9 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ka');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 8V/1.0 8V ST Flex 3p', @mo),
  ('1.0 FREESTYLE 12V Flex 5p Mec.', @mo),
  ('1.0 S TiVCT Flex 5p', @mo),
  ('1.0 SE/SE Plus TiVCT Flex 5p', @mo),
  ('1.0 SEL TiVCT Flex 5p', @mo),
  ('1.0 TECNO 12V Flex 5p', @mo),
  ('1.0 TECNO 8V Flex 3p', @mo),
  ('1.0i 3p', @mo),
  ('1.5 100 Anos Flex 5p Aut.', @mo),
  ('1.5 FreeStyle 12V Flex 5p Aut.', @mo),
  ('1.5 FreeStyle 12V Flex 5p Mec.', @mo),
  ('1.5 SE 12V Flex 5p Aut.', @mo),
  ('1.5 SE 12V Flex 5p Mec.', @mo),
  ('1.5 SE Plus 12V Flex 5p Aut.', @mo),
  ('1.5 SE Plus 12V Flex 5p Mec.', @mo),
  ('1.5 SE/SE PLUS 16V Flex 5p', @mo),
  ('1.5 Sedan SE 12V Flex 4p Aut.', @mo),
  ('1.5 Sedan SE 12V Flex 4p Mec.', @mo),
  ('1.5 Sedan SE Plus 12V Flex 4p Aut.', @mo),
  ('1.5 Sedan SE Plus 12V Flex 4p Mec.', @mo),
  ('1.5 Sedan SEL 12V Flex 4p Aut.', @mo),
  ('1.5 Sedan SEL 12V Flex 4p Mec.', @mo),
  ('1.5 Sedan TITANIUM 12V Flex 4p Aut.', @mo),
  ('1.5 TITANIUM 12V Flex 5p Aut.', @mo),
  ('1.6 8V Flex 3p', @mo),
  ('1.6 TECNO 8V Flex 3p', @mo),
  ('Action 1.6 MPI 8V 95cv', @mo),
  ('Black 1.0 MPI 8v 65cv', @mo),
  ('Black 1.6 MPI 8v 95cv', @mo),
  ('CLX 1.3i 3p', @mo),
  ('GL 1.0i Zetec Rocam', @mo),
  ('GL Image 1.0i/ 1.0i Zetec Rocam', @mo),
  ('Image 1.0i', @mo),
  ('MP3 1.0 MPI 8V 65cv', @mo),
  ('MP3 1.6 MPI 8V 95cv', @mo),
  ('SEL 1.5 16V Flex 5p', @mo),
  ('Sport 1.6 8V Flex 3p', @mo),
  ('Street 1.0i', @mo),
  ('Tecno 1.0i 8v Zetec Rocam', @mo),
  ('TRAIL 1.0 12V Flex Mec. 5p', @mo),
  ('TRAIL 1.5 16V Flex Mec. 5p', @mo),
  ('XR 1.6 MPI 8V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ka+ Sedan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 SE/SE PLUS TiVCT Flex 4p', @mo),
  ('1.0 SEL TiCVT Flex 4p', @mo),
  ('1.5 ADVANCED 16V Flex 4p', @mo),
  ('1.5 SE/SE PLUS 16V Flex 4p', @mo),
  ('1.5 SEL 16V Flex 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Maverick');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('L. Black 2.0 EcoBoost AWD Aut.', @mo),
  ('Lariat FX4 2.0 EcoBoost Aut.', @mo),
  ('Lariat Hybrid 2.5 AWD Aut.', @mo),
  ('Lariat Hybrid 2.5 FWD Aut.', @mo),
  ('Tremor 2.0 EcoBoost 4WD Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Mondeo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CLX 1.8 4p e 5p', @mo),
  ('CLX 1.8i SW', @mo),
  ('CLX 2.0i 4p Aut', @mo),
  ('CLX 2.0i 4p Mec', @mo),
  ('CLX 2.0i SW Aut', @mo),
  ('CLX 2.0i SW Mec', @mo),
  ('Ghia 2.0 16V 143cv 4p Aut', @mo),
  ('Ghia 2.0 16V 143cv 4p Mec', @mo),
  ('Ghia 2.5 V6 Aut', @mo),
  ('Ghia 2.5 V6 Mec', @mo),
  ('GLX 2.0 16V 4p Aut', @mo),
  ('GLX 2.0 4p e 5p', @mo),
  ('GLX 2.0i SW Mec./ Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Mustang');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.8 V6', @mo),
  ('3.8 V6 Conv.', @mo),
  ('Black Shadow 5.0 V8', @mo),
  ('Cobra 5.7 V8', @mo),
  ('Dark Horse 5.0 V8 Aut.', @mo),
  ('GT Performance 5.0 V8 Aut.', @mo),
  ('GT Performance 5.0 V8 Mec.', @mo),
  ('GT Premium 5.0 V8', @mo),
  ('GT V8', @mo),
  ('GT V8 Conversível', @mo),
  ('MACH 1 5.0 V8', @mo),
  ('Mach-E GT Performance (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Pampa');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4x4 Jeep GL / L 1.6', @mo),
  ('Ghia 1.6/1.8/DUO', @mo),
  ('GL 1.6/ 1.8', @mo),
  ('L 1.6', @mo),
  ('L 1.8i / 1.8', @mo),
  ('S 1.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Probe');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0/2.2', @mo),
  ('GT 2.5 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ranger');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 4x2 CD TB Diesel', @mo),
  ('2.5 4x2 CE Diesel', @mo),
  ('2.5 4x2 TB Diesel', @mo),
  ('2.5 4x4 CD TB Diesel', @mo),
  ('2.5 4x4 CE TB Diesel', @mo),
  ('2.5 4x4 TB Diesel', @mo),
  ('2.5i CD', @mo),
  ('2.5i CE', @mo),
  ('2.5i CS', @mo),
  ('Black 2.0 4x2 CD TB Diesel Aut.', @mo),
  ('Black 2.2 4x2 CD Diesel Aut.', @mo),
  ('FX4 3.2 20V 4x4 CD Diesel Aut.', @mo),
  ('Limited 2.3 150cv CD', @mo),
  ('Limited 2.5 16V 4x2 CD Flex', @mo),
  ('Limited 3.0 PSE 4x4 CD TB Diesel', @mo),
  ('Limited 3.0 V6 4x4 CD TB Die. Aut', @mo),
  ('Limited 3.2 4x4 CD Diesel Aut.', @mo),
  ('Limited+ 3.0 V6 4x4 CD TB Die Aut', @mo),
  ('Raptor 3.0 V6 Bi-Turbo 4WD AUT.', @mo),
  ('Splash CE', @mo),
  ('Splash CS', @mo),
  ('SPORT 2.5 Flex 16V 4x2 CS', @mo),
  ('SPORTRAC 2.2 16V 4x4 CD Dies Aut.', @mo),
  ('Storm 3.2 20V 4x4 CD Diesel Aut.', @mo),
  ('STX 4.0 CS/ CE', @mo),
  ('TROPICAB 2.5 16V 4X2 Flex', @mo),
  ('TROPICAB 3.2 20V 4X4 TB Diesel', @mo),
  ('TROPIVAN 2.5 16V 4X2 Flex', @mo),
  ('TROPIVAN 3.2 20V 4X4 TB Dies.Aut.', @mo),
  ('TROPIVAN 3.2 20V 4X4 TB Diesel', @mo),
  ('TROPIVAN XLT 2.3 16V 150cv', @mo),
  ('TROPIVAN XLT 3.0 PSE 4x2 TB Dies.', @mo),
  ('TROPIVAN XLT 3.0 PSE 4x4 TB Dies.', @mo),
  ('XL 2.0 4x4 CD Aut.', @mo),
  ('XL 2.0 4x4 CD Diesel Mec.', @mo),
  ('XL 2.0 4x4 Chassi Aut.', @mo),
  ('XL 2.0 4x4 Chassi Mec.', @mo),
  ('XL 2.0 4x4 CS Aut.', @mo),
  ('XL 2.0 4x4 CS Mec.', @mo),
  ('XL 2.2 4x4 CD Diesel Mec.', @mo),
  ('XL 2.2 4x4 CS Diesel Mec.', @mo),
  ('XL 2.3 16v 137cv 4x2 CD Repower.', @mo),
  ('XL 2.3 16v 137cv 4x2 CE Repower.', @mo),
  ('XL 2.3 16v 137cv 4x2 CS Repower.', @mo),
  ('XL 2.3 CS', @mo),
  ('XL 2.8 8v 135cv 4x2 CD TB Diesel', @mo),
  ('XL 2.8 8v 135cv 4x2 CE TB Diesel', @mo),
  ('XL 2.8 8v 135cv 4x2 CS TB Diesel', @mo),
  ('XL 2.8 8v 135cv 4x4 CD TB Diesel', @mo),
  ('XL 2.8 8v 135cv 4x4 CE TB Diesel', @mo),
  ('XL 2.8 8v 135cv 4x4 CS TB Diesel', @mo),
  ('XL 3.0 PSE 163cv 4x2 CD TB Diesel', @mo),
  ('XL 3.0 PSE 163cv 4x2 CS TB Diesel', @mo),
  ('XL 3.0 PSE 163cv 4x4 CD TB Diesel', @mo),
  ('XL 3.0 PSE 163cv 4x4 CS TB Diesel', @mo),
  ('XL 4.0 12v V6 210cv 4x2 CS Repow.', @mo),
  ('XL 4.0 CS', @mo),
  ('XLS 2.0 4x2 CD Diesel Aut.', @mo),
  ('XLS 2.0 4x4 CD Diesel Aut.', @mo),
  ('XLS 2.2 4x2 CD Diesel Aut.', @mo),
  ('XLS 2.2 4x2 CD Diesel Mec.', @mo),
  ('XLS 2.2 4x4 CD Diesel Aut.', @mo),
  ('XLS 2.2 4x4 CD Diesel Mec.', @mo),
  ('XLS 2.3 16V 145cv/150cv 4x2 CD', @mo),
  ('XLS 2.3 16V 145cv/150cv 4x2 CS', @mo),
  ('XLS 2.5 16V 4x2 CD Flex', @mo),
  ('XLS 2.5 16V 4x2 CS Flex', @mo),
  ('XLS 2.8 8V 135cv 4x2 CD TB Diesel', @mo),
  ('XLS 2.8 8V 135cv 4x2 CS TB Diesel', @mo),
  ('XLS 2.8 8V 135cv 4x4 CS TB Diesel', @mo),
  ('XLS 2.8/2.8 Storm 4x4 CD TB Dies', @mo),
  ('XLS 3.0 PSE 163cv 4x2 CD TB Dies.', @mo),
  ('XLS 3.0 PSE 163cv 4x2 CS TB Dies.', @mo),
  ('XLS 3.0 PSE 163cv 4x4 CD TB Dies.', @mo),
  ('XLS 3.0 PSE Storm 4x4 CD TB Dies.', @mo),
  ('XLS 3.0 V6 4x4 CD Diesel Aut.', @mo),
  ('XLS 3.2 20V 4x4 CD Diesel Aut.', @mo),
  ('XLS 3.2 20V 4x4 CD Diesel Mec.', @mo),
  ('XLS 3.2 20V 4x4 CS Diesel', @mo),
  ('XLS SPORT 2.3 16V 150cv CS', @mo),
  ('XLT 2.3 16V 150cv CD Repower.', @mo),
  ('XLT 2.3 CS', @mo),
  ('XLT 2.5 16V 4x2 CD Flex', @mo),
  ('XLT 2.5 4x2 CD Diesel', @mo),
  ('XLT 2.5 4x2 CE Diesel', @mo),
  ('XLT 2.5 4x2 CS Diesel', @mo),
  ('XLT 2.5 4x4 CD Diesel', @mo),
  ('XLT 2.5 4x4 CE TB Diesel', @mo),
  ('XLT 2.5 4x4 CS TB Diesel', @mo),
  ('XLT 2.8 8v 135cv 4x2 CD TB Diesel', @mo),
  ('XLT 2.8 8v 135cv 4x4 CD TB Diesel', @mo),
  ('XLT 2.8 8v 135cv 4x4 CE TB Diesel', @mo),
  ('XLT 3.0 PSE 163cv 4x2 CD TB Dies.', @mo),
  ('XLT 3.0 PSE 163cv 4x4 CD TB Dies.', @mo),
  ('XLT 3.0 V6 4x4 CD TB Die. Aut.', @mo),
  ('XLT 3.2 20V 4x4 CD Diesel', @mo),
  ('XLT 3.2 20V 4x4 CD Diesel Aut.', @mo),
  ('XLT 4.0 12v V6 210cv 4x4 CD Repow', @mo),
  ('XLT 4.0 12v V6 210cv 4x4 CE Repow', @mo),
  ('XLT 4.0 4x2 CE', @mo),
  ('XLT 4.0 4x2 CS', @mo),
  ('XLT 4.0 4x4 CD', @mo),
  ('XLT 4.0 4x4 CE', @mo),
  ('XLT 4.0 4x4 CS', @mo),
  ('XLT Limit./L.Cent. 2.8 CD TB Dies', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Royale');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Ghia 2.0/2.0i 2p e 4p', @mo),
  ('GL 1.8/1.8i 2p e 4p', @mo),
  ('GL 2.0/2.0i 2p e 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Taurus');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GL 3.0 V6', @mo),
  ('GL SW 3.0 V6 24V', @mo),
  ('L/LX 3.0 V6', @mo),
  ('LX SW 3.0 V6 24V', @mo),
  ('SHO 3.0 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Territory');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SEL 1.5 GTDi EcoBoost Aut.', @mo),
  ('Titanium 1.5 GTDi EcoBo. Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Thunderbird');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SC 3.8 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Transit');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Chassi 2.2 TDCI Diesel', @mo),
  ('Chassi 2.4 TDCI Diesel', @mo),
  ('Chassi 350E 2.0 EcoBlue Diesel', @mo),
  ('Chassi 470E 2.0 EcoBlue Diesel', @mo),
  ('Furgão 2.0 Longo Turbo Die Aut.', @mo),
  ('Furgão 2.0 Longo Turbo Diesel', @mo),
  ('Furgão 2.0 Medio Turbo Aut.', @mo),
  ('Furgão 2.0 Medio Turbo Diesel', @mo),
  ('Furgão 2.2 TDCI Curto Diesel', @mo),
  ('Furgão 2.2 TDCI Longa Diesel', @mo),
  ('Furgão 2.2 TDCI Longo Jumbo Dies', @mo),
  ('Furgão 3330 2.4 TDCI Curto Dies.', @mo),
  ('Furgão 3550 2.4 TDCI Longo Dies.', @mo),
  ('Minibus 15 Lug. 2.0 16V Die Aut.', @mo),
  ('Minibus 15 Lug. 2.0 16V Diesel', @mo),
  ('Minibus 18 Lug. 2.0 16V Die Aut.', @mo),
  ('Minibus 18 Lug. 2.0 16V Diesel', @mo),
  ('Minibus Vidrada 2.0 16V Die Aut.', @mo),
  ('Minibus Vidrada 2.0 16V Diesel', @mo),
  ('Van 3550 2.2 TDCI 14/16lug. Dies', @mo),
  ('Van 3550 2.4 TDCI 14lug. Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Verona');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Ghia 2.0i 4p', @mo),
  ('GL 1.8i / LX 1.8i 4p', @mo),
  ('GLX 1.8 (Modelo antigo)', @mo),
  ('GLX 1.8i / 1.8 4p', @mo),
  ('GLX 2.0i / 2.0 4p', @mo),
  ('LX 1.6 (Modelo antigo)', @mo),
  ('LX 1.8 (Modelo antigo)', @mo),
  ('S 2.0i 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Versailles');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Ghia 2.0i / 2.0 2p e 4p', @mo),
  ('GL 1.8i / 1.8 2p e 4p', @mo),
  ('GL 2.0i / 2.0 2p e 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Windstar');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GL', @mo),
  ('LX', @mo);

-- FOTON
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'FOTON');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Aumark', @m),
  ('eToano', @m),
  ('eView', @m),
  ('eWonder', @m),
  ('Minitruck', @m),
  ('Tunland', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Aumark');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.5 - 11DT 2.8 4x2 TB Diesel', @mo),
  ('3.5 - 11ST 2.8 4x2 TB Diesel', @mo),
  ('3.5 - 14ST 2.8 4x2 TB Diesel', @mo),
  ('3.50AK 2.8 4x2 TB Diesel', @mo),
  ('S 315 2.5 4x2 Curto Diesel (E6)', @mo),
  ('S 315 2.5 4x2 Curto Diesel (E6) AMT', @mo),
  ('S 315 2.5 4x2 Longo Diesel (E6)', @mo),
  ('S 315 2.5 4x2 Longo Diesel (E6) AMT', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'eToano');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Pro Teto Alto', @mo),
  ('Pro Teto Médio', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'eView');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Connect', @mo),
  ('Grand Teto Baixo', @mo),
  ('Grand Teto Médio', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'eWonder');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Chassi', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Minitruck');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.5 11DT 4x2 diesel (E5)', @mo),
  ('3.5 14DT 4x2 Diesel(E5)', @mo),
  ('3.5-12DT 4x2 Diesel(E5)', @mo),
  ('3.5-12ST 4X2 Diesel (E5)', @mo),
  ('3.5-14ST 4x2 Diesel(E5)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tunland');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('V7 2.0 4x4 TB Diesel Aut. (Híb.)', @mo),
  ('V9 2.0 4x4 TB Diesel Aut. (Híb.)', @mo);

-- Fyber
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Fyber');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Buggy', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Buggy');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2000W 1.6 8V', @mo),
  ('2000W 1.8 8V/ 1.8 8V Flex', @mo),
  ('FyberX 1.6 8V', @mo);

-- GAC
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'GAC');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Aion', @m),
  ('GS3', @m),
  ('GS4', @m),
  ('GS9', @m),
  ('Hyptec', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Aion');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ES Plus (Elétrico)', @mo),
  ('UT Elite (Elétrico)', @mo),
  ('UT Premium (Elétrico)', @mo),
  ('V Elite (Elétrico)', @mo),
  ('Y Elite (Elétrico)', @mo),
  ('Y Premium (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GS3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Elite 1,5 16V Turbo Aut.', @mo),
  ('Premium 1,5 16V Turbo Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GS4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Elite (Híbrido)', @mo),
  ('Premium (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GS9');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Ultra 1,5 16V AWD Turbo Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Hyptec');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('HT Elite (Elétrico)', @mo),
  ('HT Ultra (Elétrico)', @mo);

-- GEELY
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'GEELY');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('EC7', @m),
  ('EX2', @m),
  ('EX5', @m),
  ('GC2', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EC7');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 16V 130cv 4p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EX2');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('MAX', @mo),
  ('PRO', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EX5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EM-i MAX', @mo),
  ('EM-i PRO', @mo),
  ('EM-i ULTRA', @mo),
  ('MAX (Elétrico)', @mo),
  ('PRO (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GC2');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 12V 68cv 5p', @mo);

-- Chevrolet
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Chevrolet');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('A-10', @m),
  ('A-20', @m),
  ('Agile', @m),
  ('Astra', @m),
  ('Blazer', @m),
  ('Bolt', @m),
  ('Bonanza', @m),
  ('Brasinca', @m),
  ('C-10', @m),
  ('C-20 Custom', @m),
  ('Calibra', @m),
  ('Camaro', @m),
  ('Caprice', @m),
  ('Captiva', @m),
  ('Caravan', @m),
  ('Cavalier', @m),
  ('Celta', @m),
  ('Chevette', @m),
  ('Chevy', @m),
  ('Cheynne', @m),
  ('Classic', @m),
  ('Cobalt', @m),
  ('Corsa', @m),
  ('Corvette', @m),
  ('Cruze', @m),
  ('D-10', @m),
  ('D-20', @m),
  ('Equinox', @m),
  ('Ipanema', @m),
  ('JOY', @m),
  ('Kadett', @m),
  ('Lumina', @m),
  ('Malibu', @m),
  ('Marajo', @m),
  ('Meriva', @m),
  ('Montana', @m),
  ('Monza', @m),
  ('Omega', @m),
  ('Onix', @m),
  ('Opala', @m),
  ('Prisma', @m),
  ('S10', @m),
  ('Saturn', @m),
  ('Sierra', @m),
  ('Silverado', @m),
  ('Sonic', @m),
  ('Sonoma', @m),
  ('SpaceVan', @m),
  ('Spark', @m),
  ('Spin', @m),
  ('SS10', @m),
  ('Suburban', @m),
  ('Suprema', @m),
  ('Syclone', @m),
  ('Tigra', @m),
  ('Tracker', @m),
  ('Trafic', @m),
  ('Trailblazer', @m),
  ('Vectra', @m),
  ('Veraneio', @m),
  ('Zafira', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A-10');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5/4.1', @mo),
  ('De Luxe 2.5/4.1', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A-20');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Custom Std. CD/ De Luxe CD', @mo),
  ('Custom/ C-20 Luxe 4.1', @mo),
  ('Custom/ C-20 S 4.1', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Agile');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LT 1.4 MPFI 8V FlexPower 5p', @mo),
  ('LTZ 1.4 MPFI 8V FlexPower 5p', @mo),
  ('LTZ EASYTRONIC 1.4 8V FlexPower 5p', @mo),
  ('LTZ EFFECT 1.4 8V FlexPower 5p Mec', @mo),
  ('LTZ EFFECT EASYTR.1.4 8V FlexP. 5p', @mo),
  ('LTZ WI-FI 1.4 8V FlexPower 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Astra');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 8V/ CD 2.0 8V Hatchback 5p Aut', @mo),
  ('2.0 8V/ CD 2.0 8V Hatchback 5p Mec', @mo),
  ('2.0/ CD 2.0 8V 3p Aut.', @mo),
  ('2.0/ CD/ GLS 2.0 MPFI 16V 3p', @mo),
  ('2.0/ CD/ Sunny/ GLS 2.0 8V 3p', @mo),
  ('500 Sedan 2.0 MPFI 16V 4p', @mo),
  ('Advant. 2.0 MPFI 8V FlexP. 5p Aut.', @mo),
  ('Advantage 2.0 MPFI 8V FlexPower 5p', @mo),
  ('Advantage 2.0 MPFI FlexPower 8V 3p', @mo),
  ('Comfort 2.0 MPFI FlexPower 8V 3p', @mo),
  ('Comfort 2.0 MPFI FlexPower 8V 5p', @mo),
  ('Eleg. 2.0 MPFI FlexPower 8V 5p Aut', @mo),
  ('Elegance 2.0 MPFI FlexPower 8V 3p', @mo),
  ('Elegance 2.0 MPFI FlexPower 8V 5p', @mo),
  ('Elite 2.0 MPFI Flex Pow. 8V 5p Aut', @mo),
  ('Elite 2.0 MPFI FlexPower 8V 5p Mec', @mo),
  ('GL 1.8 MPFI 3p', @mo),
  ('GL Milenium 1.8 MPFI 4p', @mo),
  ('GLS 2.0 MPFI', @mo),
  ('GLS 2.0 MPFI SW', @mo),
  ('GSi 2.0 16V 136cv Hatchback 5p', @mo),
  ('S.Sport 2.0 F.Pow. 5p/Sport 2.0 3p', @mo),
  ('Sed. Advant. 2.0 8V MPFI FlexP. 4p', @mo),
  ('Sed.Advan. 2.0 8V MPFI FlexP. Aut.', @mo),
  ('Sed.Comf. 2.0 MPFI FlexPower 8V 4p', @mo),
  ('Sed.Comf.2.0 MPFI MultiPower 8V 4p', @mo),
  ('Sed.Eleg. 2.0 MPFI FlexP.8V Aut.', @mo),
  ('Sed.Eleg.2.0 MPFI FlexPower 8V 4p', @mo),
  ('Sed.Eleg.2.0 MPFI MultiPower 8V 4p', @mo),
  ('Sed.Elite 2.0 MPFI FlexP.8V Aut.', @mo),
  ('Sed.Elite 2.0 MPFI FlexPower 8V 4p', @mo),
  ('Sedan 1.8 MPFI 8V 4p', @mo),
  ('Sedan 2.0/ CD 2.0 MPFI 8V 4p Aut.', @mo),
  ('Sedan 2.0/CD/ Expres.GLS 2.0 8V 4p', @mo),
  ('Sedan 2.0/CD/ GLS/ Adv. 2.0 16V 4p', @mo),
  ('Sedan Comfort 1.8 MPFI 8V 4p', @mo),
  ('Sedan GL 1.8 MPFI 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Blazer');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EV RS 347cv (Elétrico)', @mo),
  ('Jimmy 4.3 V6', @mo),
  ('S-10 4.3 V6', @mo),
  ('SS-10 4.3 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Bolt');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EUV Premier 203cv (Elétrico)', @mo),
  ('EV Premier 203cv (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Bonanza');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('S / Luxe 4.0 Diesel Turbo', @mo),
  ('S / Luxe 4.1', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Brasinca');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Blazer CD 4.0 Diesel', @mo),
  ('Blazer CD 4.1', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-10');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5/4.1', @mo),
  ('CD 2.5/ 4.1', @mo),
  ('De Luxe 2.5/4.1', @mo),
  ('De Luxe CD 2.5/ 4.1', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-20 Custom');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('De Luxe 4.1', @mo),
  ('De Luxe CD 4.1', @mo),
  ('Std. 4.1', @mo),
  ('Std. CD 4.1', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Calibra');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Camaro');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('FIFTY 6.2 V8 16V 461cv', @mo),
  ('RS 5.0 V8', @mo),
  ('Sport 5.0 Conv.', @mo),
  ('SS 6.2 V8 16V', @mo),
  ('SS Collection 6.2 V8 16V', @mo),
  ('SS Conversível 6.2 V8 16V', @mo),
  ('Z-28 Targa/Conv. 5.7', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Caprice');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.3 V8', @mo),
  ('SW 4.3 V8', @mo),
  ('Victoria', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Captiva');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EV Premier', @mo),
  ('SPORT AWD 3.0 V6 24V 268cv', @mo),
  ('SPORT AWD 3.6 V6 24V 261cv 4x4', @mo),
  ('SPORT FWD 2.4 16V 171/185cv', @mo),
  ('SPORT FWD 3.0 V6 24V 268cv 4x2', @mo),
  ('SPORT FWD 3.6 V6 24V 261cv 4x2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Caravan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Comodoro 4.1/2.5', @mo),
  ('Diplomata 4.1/2.5', @mo),
  ('L/SL/S/SS 2.5/4.1/4.2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cavalier');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.1 Conv.', @mo),
  ('L 2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Celta');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0/ Super 1.0 MPFI VHC 8v 5p', @mo),
  ('1.0/Super/N.Piq.1.0 MPFi VHC 8V 3p', @mo),
  ('1.4/ Super/ Energy 1.4 8V 85cv 3p', @mo),
  ('1.4/ Super/ Energy 1.4 8V 85cv 5p', @mo),
  ('ADVANTAGE 1.0 8v FlexPower 5p', @mo),
  ('Life 1.0 MPFI VHC 8V 3p', @mo),
  ('Life 1.0 MPFI VHC 8V 5p', @mo),
  ('Life 1.4 MPFI 8V 85cv 3p', @mo),
  ('Life 1.4 MPFI 8V 85cv 5p', @mo),
  ('Life/ LS 1.0 MPFI 8V FlexPower 3p', @mo),
  ('Life/ LS 1.0 MPFI 8V FlexPower 5p', @mo),
  ('Spirit 1.0 MPFI 8V FlexPower 3p', @mo),
  ('Spirit 1.0 MPFI VHC 8V 3p', @mo),
  ('Spirit 1.0 MPFI VHC 8V 5p', @mo),
  ('Spirit 1.4 MPFI 8V 85cv 3p', @mo),
  ('Spirit 1.4 MPFI 8V 85cv 5p', @mo),
  ('Spirit/ LT 1.0 MPFI 8V FlexP. 5p', @mo),
  ('Super 1.0 MPFI 8V FlexPower 3p', @mo),
  ('Super 1.0 MPFI 8V FlexPower 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Chevette');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Junior 1.0', @mo),
  ('L / SL / SL/e / DL / SE 1.6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Chevy');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('500 DL / SL / SE/ Furgão 1.6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cheynne');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.3 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Classic');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ADVANTAGE 1.0 VHC FlexPower 4p', @mo),
  ('Life/LS 1.0 VHC FlexP. 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cobalt');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 8V Econo.Flex 4p Aut.', @mo),
  ('ADVANTAGE 1.4 MPFI 8V F.Power 4p', @mo),
  ('ADVANTAGE 1.8 8V Eco.Flex 4p Aut.', @mo),
  ('ELITE 1.8 8V Econo.Flex 4p Aut.', @mo),
  ('Graphite 1.8 8V Econo.Flex 4p Aut', @mo),
  ('Graphite 1.8 8V Econo.Flex 4p Mec', @mo),
  ('LS 1.4 8V FlexPower 4p', @mo),
  ('LT 1.4 8V FlexPower/EconoFlex 4p', @mo),
  ('LT 1.8 8V Econo.Flex 4p Aut.', @mo),
  ('LT 1.8 8V Econo.Flex 4p Mec.', @mo),
  ('LTZ 1.4 8V FlexPower/EconoFlex 4p', @mo),
  ('LTZ 1.8 8V Econo.Flex 4p Aut.', @mo),
  ('LTZ 1.8 8V Econo.Flex 4p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Corsa');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Furgão 1.6 MPFi Powertech 92cv', @mo),
  ('GL 1.6 MPFI / 1.4 EFI 2p e 4p', @mo),
  ('GLS 1.6 MPFI 5p', @mo),
  ('GSi 16V', @mo),
  ('Hat. Joy 1.0/ 1.0 FlexPower 8V 5p', @mo),
  ('Hat. Joy 1.8 MPFI 8V FlexPower 5p', @mo),
  ('Hat. Maxx 1.0/ 1.0 FlexPower 8V 5p', @mo),
  ('Hat. Maxx 1.4 8V ECONOFLEX 5p', @mo),
  ('Hat. Maxx 1.8 MPFI 8V FlexPower 5p', @mo),
  ('Hat. Prem. 1.0/1.0 FlexPower 8V 5p', @mo),
  ('Hat. Premium 1.4 8V ECONOFLEX 5p', @mo),
  ('Hat. SS 1.8 MPFI 8V FlexPower 5p', @mo),
  ('Hat.Premium 1.8 MPFI 8V F.Power 5p', @mo),
  ('Hatchback 1.0 MPFI 8V 71cv 5p', @mo),
  ('Hatchback 1.8 MPFI 8V 102cv 5p', @mo),
  ('Hatchback 1.8 MPFI FlexPower 8V 5p', @mo),
  ('Pick-Up GL/ Champ 1.6 MPFI / EFI', @mo),
  ('Pick-Up Sport 1.6 MPFI', @mo),
  ('Pick-Up STD/ Rodeio 1.6 MPFI', @mo),
  ('Sed Clas.Spirit 1.6MPFI VHC 8V Aut', @mo),
  ('Sed Clas.Super 1.6MPFI VHC 8V Aut', @mo),
  ('Sed Class.Life 1.0/1.0 FlexPower', @mo),
  ('Sed Class.Spirit 1.0/1.0 FlexPower', @mo),
  ('Sed Class.Super 1.0/1.0 FlexPower', @mo),
  ('Sed Classic Life 1.6 MPFI VHC 8V', @mo),
  ('Sed Classic Spirit 1.6 MPFI VHC 8V', @mo),
  ('Sed Classic Super 1.6 MPFI VHC 8V', @mo),
  ('Sed. Joy 1.0/ 1.0 FlexPower 8V 4p', @mo),
  ('Sed. Joy 1.8 MPFI 8V FlexPower', @mo),
  ('Sed. Maxx 1.0/ 1.0 FlexPower 8V 4p', @mo),
  ('Sed. Maxx 1.4 8V ECONOFLEX 4p', @mo),
  ('Sed. Maxx 1.8 MPFI 8V FlexPower', @mo),
  ('Sed. Premium 1.4 8V ECONOFLEX 4p', @mo),
  ('Sed. Premium 1.8 MPFI 8V FlexPower', @mo),
  ('Sed.Prem. 1.0/ 1.0 FlexPower 8V 4p', @mo),
  ('Sed.Wind 1.0/Millenium/Classic VHC', @mo),
  ('Sedan 1.0 MPFI 8V 71cv 4p', @mo),
  ('Sedan 1.8 MPFI 8V 102cv 4p', @mo),
  ('Sedan 1.8 MPFI FlexPower 8V 4p', @mo),
  ('Sedan GL 1.6 MPFI 4p', @mo),
  ('Sedan GLS 1.6 16V MPFI 4p', @mo),
  ('Sedan GLS 1.6 MPFI 4p', @mo),
  ('Sedan Sup./Classic 1.6 8v Aut/Mec', @mo),
  ('Sedan Super 1.0 MPFI 16V 4p', @mo),
  ('Sedan Super 1.0 MPFI 4p', @mo),
  ('Sedan Super Milenium 1.0 MPFI 16V', @mo),
  ('Super 1.0 MPFI / 2p e 4p', @mo),
  ('Super 1.0 MPFI 16V 3p', @mo),
  ('Super 1.0 MPFI 16V 5p', @mo),
  ('Super 1.6 MPFI 8v 5p', @mo),
  ('Wagon GL 1.6 MPFI 4p', @mo),
  ('Wagon GLS 1.6 16V MPFI 4p', @mo),
  ('Wagon GLS 1.6 8V 4p', @mo),
  ('Wagon Super 1.0 MPFI 16V', @mo),
  ('Wagon Super 1.6 MPFI 8v', @mo),
  ('Wind 1.0 MPF/MilleniumI/ EFI 4p', @mo),
  ('Wind 1.0 MPFI / EFI 2p', @mo),
  ('Wind 1.6 MPFi 2p', @mo),
  ('Wind 1.6 MPFi 4p', @mo),
  ('Wind Piquet/ Champ 1.0 MPFI 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Corvette');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.7/ 6.0, 6.2 Conv./Stingray', @mo),
  ('5.7/ 6.0, 6.2 Targa/Stingray', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cruze');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Black Bow Tie 1.4 TB Flex 4p Aut', @mo),
  ('HB Black Bow Tie 1.4 TB Flex Aut.', @mo),
  ('HB Sport LT 1.8 16V FlexP. 5p Aut', @mo),
  ('HB Sport LT 1.8 16V FlexP. 5p Mec', @mo),
  ('HB Sport LTZ 1.8 16V FlexP. 5p Aut', @mo),
  ('HB Sport LTZ 1.8 16V FlexP. 5p Mec', @mo),
  ('LT 1.4 16V Turbo Flex 4p Aut.', @mo),
  ('LT 1.8 16V FlexPower 4p Aut.', @mo),
  ('LT 1.8 16V FlexPower 4p Mec.', @mo),
  ('LTZ 1.4 16V Turbo Flex 4p Aut.', @mo),
  ('LTZ 1.8 16V FlexPower 4p Aut.', @mo),
  ('Midnight 1.4 16V TB Flex Aut.', @mo),
  ('Premier 1.4 16V TB Flex Aut.', @mo),
  ('Sport LT 1.4 16V TB Flex 5p Aut.', @mo),
  ('Sport LTZ 1.4 16V TB Flex 5p Aut.', @mo),
  ('Sport Premier 1.4 16V TB Flex Aut.', @mo),
  ('Sport RS 1.4 16V TB Flex 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'D-10');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CD Diesel', @mo),
  ('Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'D-20');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.0 Champ/Conquest/El Caminho Dies.', @mo),
  ('CD Lx S4T/Tro.Plus/Lx 3.9/4.0 TDies', @mo),
  ('S / El Caminho 3.9/4.0 CD T.Dies', @mo),
  ('S / Luxe 3.9/4.0 Diesel', @mo),
  ('S / Luxe 3.9/4.0 T.Diesel', @mo),
  ('S 3.9/4.0 Turbo Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Equinox');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ACTIV 1.5 Turbo 177cv Aut.', @mo),
  ('EV 292cv (Elétrico)', @mo),
  ('LT 1.5 Turbo 172cv Aut.', @mo),
  ('LT 2.0 Turbo 262cv Aut.', @mo),
  ('Midnight 1.5 Turbo 172cv Aut.', @mo),
  ('Premier 1.5 Turbo 172cv Aut.', @mo),
  ('Premier 2.0 Turbo AWD 262cv Aut.', @mo),
  ('RS 1.5 Turbo Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ipanema');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GL 1.8 MPFI / EFI /SL 4p', @mo),
  ('GL/ Flair 2.0 MPFI / EFI 4p', @mo),
  ('GLS/SLE 2.0EFI /SL/e1.8/Sol/Wave', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'JOY');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Hatch 1.0 8V Black Edition Flex Mec.', @mo),
  ('Hatch 1.0 8V Flex 5p Mec.', @mo),
  ('Plus 1.0 8V 4p Flex Mec.', @mo),
  ('Plus Black Ed.1.0 8V 4p Flex Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Kadett');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GL 2.0 MPFI / EFI', @mo),
  ('GL/SL/Lite/Turim 1.8', @mo),
  ('GLS 1.8 EFI / SL/e 1.8', @mo),
  ('GLS 2.0 MPFI', @mo),
  ('GSi / GS 2.0', @mo),
  ('GSi 2.0 Conversível', @mo),
  ('Sport 2.0 MPFI / EFI', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Lumina');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Malibu');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LTZ 2.4 16V 171cv 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Marajo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SL/SLe/Se', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Meriva');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8/ CD 1.8 MPFI 16V 122cv 5p', @mo),
  ('1.8/ CD 1.8 MPFI 8V 102cv 5p', @mo),
  ('1.8/ CD 1.8 MPFI FlexPower 8V', @mo),
  ('COLLECTION 1.4 8V ECONOFLEX 5p', @mo),
  ('Expres.EASYTRONIC 1.8 FlexPower', @mo),
  ('Joy 1.4 MPFI 8V ECONOFLEX 5p', @mo),
  ('Joy 1.8 MPFI 8V FlexPower', @mo),
  ('Maxx 1.4 MPFI 8V ECONOFLEX 5p', @mo),
  ('Maxx 1.8 MPFI 8V FlexPower', @mo),
  ('Prem.EASYTRONIC 1.8 FlexPower 5p', @mo),
  ('Premium 1.8 MPFI 8V FlexPower', @mo),
  ('SS 1.8 MPFI 8V FlexPower 5p', @mo),
  ('SS EASYTRONIC 1.8 FlexPower 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Montana');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sport 1.8 MPFI FlexPower 8V', @mo),
  ('1.2 Turbo Flex 12V 4p Mec.', @mo),
  ('1.4 8V Conquest ECONOFLEX 2p', @mo),
  ('1.8/ 1.8 Conquest FlexPower 8V', @mo),
  ('ARENA 1.4 ECONOFLEX 8V 2p', @mo),
  ('COMBO 1.4 8V ECONOFLEX', @mo),
  ('LS 1.4 ECONOFLEX 8V 2p', @mo),
  ('LS COMBO 1.4 8V ECONOFLEX 2p', @mo),
  ('LT 1.2 Turbo Flex 12V 4p Mec.', @mo),
  ('LTZ 1.2 Turbo Flex 12V 4p Aut.', @mo),
  ('Off Road 1.8 MPFI FlexPower 8V', @mo),
  ('PREMIER 1.2 Turbo Flex 12V Aut.', @mo),
  ('RS 1.2 Turbo Flex 12V Aut.', @mo),
  ('Sport 1.4 ECONOFLEX 8V 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Monza');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6i/1.8i (restante)', @mo),
  ('Class 1.8/ 2.0', @mo),
  ('Classic SE 2.0 /MPFI e EFI 2p e 4p', @mo),
  ('Classic/ SL/e/SR 1.8', @mo),
  ('GL 1.8 EFI/ SL/ L/ 650/Barc. 2e4p', @mo),
  ('GL 2.0 EFI/SL/L/650/Club/Barc.2e4p', @mo),
  ('GLS/ Hi-Tech 2.0 EFI 2p e 4p', @mo),
  ('SL/e SR 2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Omega');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CD 3.8 V6', @mo),
  ('CD 4.1 / 3.0', @mo),
  ('CD/ FITTIPALDI 3.6 V6 24V 4p', @mo),
  ('Diamond', @mo),
  ('GL 2.0/ 2.2', @mo),
  ('GLS 2.2 / 2.0', @mo),
  ('GLS 4.1', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Onix');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Lollapalooza 1.0 F.Power 5p Mec.', @mo),
  ('HATCH 1.0 12V Flex 5p Mec.', @mo),
  ('HATCH 1.0 12V TB 5p Mec.', @mo),
  ('HATCH 1.0 12V TB Flex 5p Aut.', @mo),
  ('HATCH 100 Anos 1.0 12V 5p Mec.', @mo),
  ('HATCH ACTIV 1.0 12V TB Flex 5p Aut.', @mo),
  ('HATCH ACTIV 1.4 8V Flex 5P Aut.', @mo),
  ('HATCH ACTIV 1.4 8V Flex 5p Mec.', @mo),
  ('HATCH ADVANTAGE 1.4 8V Flex 5p Aut.', @mo),
  ('HATCH ECO 1.0 12V TB 5p Aut.', @mo),
  ('HATCH EFFECT 1.4 8V F.Power 5p Mec.', @mo),
  ('HATCH Joy 1.0 8V Flex 5p Mec.', @mo),
  ('HATCH LS 1.0 8V FlexPower 5p Mec.', @mo),
  ('HATCH LT 1.0 12V Flex 5p Mec.', @mo),
  ('HATCH LT 1.0 12V TB Flex 5p Aut.', @mo),
  ('HATCH LT 1.0 12V TB Flex 5p Mec.', @mo),
  ('HATCH LT 1.0 8V FlexPower 5p Mec.', @mo),
  ('HATCH LT 1.4 8V FlexPower 5p Aut.', @mo),
  ('HATCH LT 1.4 8V FlexPower 5p Mec.', @mo),
  ('HATCH LTZ 1.0 12V TB Flex 5p Aut.', @mo),
  ('HATCH LTZ 1.0 12V TB Flex 5p Mec.', @mo),
  ('HATCH LTZ 1.4 8V FlexPower 5p Aut.', @mo),
  ('HATCH LTZ 1.4 8V FlexPower 5p Mec.', @mo),
  ('HATCH PREM. 1.0 12V TB Flex 5p Aut.', @mo),
  ('HATCH PRO 1.0 12V 5p Mec.', @mo),
  ('HATCH RS 1.0 TB 12V Flex 5p Aut.', @mo),
  ('HATCH SELEÇÃO 1.0 8V Flex 5p Mec.', @mo),
  ('SD. P. PR. MIDNIGHT 1.0 TB Flex Aut', @mo),
  ('SED. Plus PREM. 1.0 12V TB Flex Aut', @mo),
  ('SEDAN Plus 1.0 12V Mec.', @mo),
  ('SEDAN Plus 1.0 12V TB Flex Aut.', @mo),
  ('SEDAN Plus 1.0 12V TB Flex Mec.', @mo),
  ('SEDAN Plus ECO 1.0 12V TB Aut.', @mo),
  ('SEDAN Plus LT 1.0 12V Flex 4p Mec.', @mo),
  ('SEDAN Plus LT 1.0 12V TB Flex Aut.', @mo),
  ('SEDAN Plus LT 1.0 12V TB Flex Mec.', @mo),
  ('SEDAN Plus LTZ 1.0 12V TB Flex Aut.', @mo),
  ('SEDAN Plus LTZ 1.0 12V TB Flex Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Opala');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Comodoro/Comod. SLE 4.1/2.5', @mo),
  ('Diplomata/Diplom. SLE/SE 4.1/2.5', @mo),
  ('L/SL/SS/ 2.5/4.1', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Prisma');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sed. Maxx/ LT 1.4 8V ECONOF. 4p', @mo),
  ('Sed. ADVANT. 1.0 8V FlexPower 4p', @mo),
  ('Sed. ADVANT. 1.4 8V F.Power Aut.', @mo),
  ('Sed. Joy 1.4 8V ECONOFLEX 4p', @mo),
  ('Sed. Joy/ LS 1.0 8V FlexPower 4p', @mo),
  ('Sed. LT 1.0 8V FlexPower 4p', @mo),
  ('Sed. LT 1.4 8V FlexPower 4p', @mo),
  ('Sed. LT 1.4 8V FlexPower 4p Aut.', @mo),
  ('Sed. LTZ 1.4 8V FlexPower 4p', @mo),
  ('Sed. LTZ 1.4 8V FlexPower 4p Aut.', @mo),
  ('Sed. Maxx 1.0 8V FlexPower 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S10');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Blazer DTi 2.8 4x2 Turbo Diesel', @mo),
  ('Blazer 2.4 MPFI 8V 128cv 4p', @mo),
  ('Blazer 4.3 V6', @mo),
  ('Blazer Advant. 2.4/2.4 MPFI F.Power', @mo),
  ('Blazer Colina 2.4/2.4 MPFI F.Power', @mo),
  ('Blazer Colina 2.8 TDI 4x4 Diesel', @mo),
  ('Blazer DLX 2.2 MPFI / EFI', @mo),
  ('Blazer DLX 2.4 MPFI 128cv 4p', @mo),
  ('Blazer DLX 2.5 Diesel Turbo', @mo),
  ('Blazer DLX 2.8 4x4 TB Interc. Diesel', @mo),
  ('Blazer DLX 4.3 V6', @mo),
  ('Blazer Executive 2.8 4x4 TDI Diesel', @mo),
  ('Blazer Executive 4.3 V6', @mo),
  ('Blazer Std. 2.2 MPFI / EFI', @mo),
  ('Blazer Std. 2.5 Diesel Turbo', @mo),
  ('Blazer Tornado 2.4 MPFI 8V 128cv', @mo),
  ('P.Up 100YEARS 2.8 4x4 CD Dies. Aut.', @mo),
  ('Pick-Up 100 Anos 2.8 TDI 4x4 CD Aut.', @mo),
  ('Pick-Up 2.4 MPFI 8v 128cv CD 4p', @mo),
  ('Pick-Up 2.4 MPFI 8v 128cv/ Rodeio', @mo),
  ('Pick-Up 2.5 4x2 CD TB Max HST Dies', @mo),
  ('Pick-Up 2.5 4x4 CD TB Max HST Dies.', @mo),
  ('Pick-Up 2.8 4x2 Turbo Interc. Dies.', @mo),
  ('Pick-Up 4.3 V6', @mo),
  ('Pick-Up Advantage 2.5 Flex 4x2 CD', @mo),
  ('Pick-Up Barretos 2.2 MPFI 2p', @mo),
  ('Pick-Up Champ 4.3 V6', @mo),
  ('Pick-Up DLX 2.4 MPFI 128cv CD 4p', @mo),
  ('Pick-Up Exec. 2.8 4x2 CD TB Int.Dies', @mo),
  ('Pick-Up Exec. 2.8 4x4 CD TB Int.Dies', @mo),
  ('Pick-Up Executive CD 4.3', @mo),
  ('Pick-Up Executive CD 4.3 4x4', @mo),
  ('Pick-Up LS 2.4 F.Power 4x2 CD', @mo),
  ('Pick-Up LS 2.4 F.Power 4x2 CS', @mo),
  ('Pick-Up LS 2.8 TDI 4x2 CD Dies. Mec.', @mo),
  ('Pick-Up LS 2.8 TDI 4x2 CS Dies. Mec.', @mo),
  ('Pick-Up LS 2.8 TDI 4x4 CD Dies. Mec.', @mo),
  ('Pick-Up LS 2.8 TDI 4x4 CS Diesel', @mo),
  ('Pick-Up LT 2.4 F.Power 4x2 CD', @mo),
  ('Pick-Up LT 2.4 F.Power 4x2 CS', @mo),
  ('Pick-Up LT 2.5 Flex 4x2 CD', @mo),
  ('Pick-Up LT 2.5 Flex 4x2 CD Aut.', @mo),
  ('Pick-Up LT 2.5 Flex 4x4 CD', @mo),
  ('Pick-Up LT 2.5 Flex 4x4 CD Aut.', @mo),
  ('Pick-Up LT 2.8 TDI 4x2 CD Diesel', @mo),
  ('Pick-Up LT 2.8 TDI 4x2 CD Diesel Aut', @mo),
  ('Pick-Up LT 2.8 TDI 4x4 CD Diesel', @mo),
  ('Pick-Up LT 2.8 TDI 4x4 CD Diesel Aut', @mo),
  ('Pick-Up LTZ 2.4 F.Power 4x2 CD', @mo),
  ('Pick-Up LTZ 2.5 Flex 4x2 CD', @mo),
  ('Pick-Up LTZ 2.5 Flex 4x2 CD Aut.', @mo),
  ('Pick-Up LTZ 2.5 Flex 4x4 CD', @mo),
  ('Pick-Up LTZ 2.5 Flex 4x4 CD Aut.', @mo),
  ('Pick-Up LTZ 2.8 TDI 4x2 CD Dies. Mec', @mo),
  ('Pick-Up LTZ 2.8 TDI 4x2 CD Dies.Aut', @mo),
  ('Pick-Up LTZ 2.8 TDI 4x4 CD Dies.Aut', @mo),
  ('Pick-Up Luxe 2.2 EFI CD', @mo),
  ('Pick-Up Luxe 2.2 MPFI / EFI', @mo),
  ('Pick-Up Luxe 2.2 MPFI/EFI CE', @mo),
  ('Pick-Up Luxe 2.5 CE TB Diesel', @mo),
  ('Pick-Up Luxe 2.5 Diesel Turbo', @mo),
  ('Pick-Up Luxe 2.8 4x2 CD TB Int.Dies.', @mo),
  ('Pick-Up Luxe 4.3 V6', @mo),
  ('Pick-Up Luxe 4.3 V6 CD', @mo),
  ('Pick-Up Luxe 4.3 V6 CE', @mo),
  ('Pick-Up Midnight 2.8 4x4 CD Dies Aut', @mo),
  ('Pick-Up RODEIO 2.4 MPFI F.Power CD', @mo),
  ('Pick-Up RODEIO 2.8 TDI 4x2 CD Dies.', @mo),
  ('Pick-Up RODEIO 2.8 TDI 4x4 CD Dies.', @mo),
  ('Pick-Up Std 2.8 4x2 CD TB Int.Dies.', @mo),
  ('Pick-Up Std 2.8 4x4 CD TB Int.Dies.', @mo),
  ('Pick-Up Std. 2.2 MPFI / EFI', @mo),
  ('Pick-Up Std. 2.2 MPFI CD', @mo),
  ('Pick-Up Std. 2.5 Diesel Turbo', @mo),
  ('Pick-Up Tornado 2.4 MPFI 128cv CD 4p', @mo),
  ('Pick-Up WT 2.8 TDI 4x4 CD Diesel Aut', @mo),
  ('Pick-Up WT 2.8 TDI 4x4 CD Diesel Mec', @mo),
  ('Pick-Up WT 2.8 TDI 4x4 CS Diesel Mec', @mo),
  ('Pick-Up Z71 2.8 TDI 4x4 CD Dies. Aut', @mo),
  ('P-Up 2.8/Sert. 2.8 4x4 TB Int. Dies.', @mo),
  ('P-Up Advant. 2.4/2.4 MPFI F.Power CD', @mo),
  ('P-Up Advantage 2.4 MPFI F.Power CS', @mo),
  ('P-Up Colina 2.4 MPFI 128cv CD 4p', @mo),
  ('P-Up Colina 2.4/2.4 MPFI F.Power CS', @mo),
  ('P-Up Colina 2.8 TDI 4x2/4x4 CD Dies.', @mo),
  ('P-Up Colina 2.8 TDI 4x2/4x4 CS Dies.', @mo),
  ('P-Up Executive 2.4 MPFI F.Power CD', @mo),
  ('P-Up Freeride 2.5 Flex 4x2 CD Mec.', @mo),
  ('P-Up H.Country 2.8 4x4 CD Dies.Aut.', @mo),
  ('P-Up Luxe 2.5 4x2 CD TB Max HST Dies', @mo),
  ('P-Up Luxe 2.5 4x4 CD TB Max HST Dies', @mo),
  ('P-Up Lx/Sert/Rod 2.8 4x4 CD TDI Dies', @mo),
  ('P-Up Tornado 2.8 TDI 4x2/4x4 CD Dies', @mo),
  ('P-Up Trail Boss 2.8 4x4 CD Dies.Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Saturn');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SL', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sierra');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CE 5.7 V8', @mo),
  ('Sport 5.0 V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Silverado');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('4.1', @mo),
  ('4.1 Diesel', @mo),
  ('4.2 Turbo Diesel', @mo),
  ('Conquest 4.1 Diesel', @mo),
  ('Conquest 4.2 Diesel Turbo', @mo),
  ('D20/ Rodeio 4.2 TB Diesel', @mo),
  ('DLX 4.1', @mo),
  ('DLX 4.2 Conquest HD Diesel', @mo),
  ('DLX 4.2 Diesel', @mo),
  ('G. Blazer DLX/ Std 4.2 Dies.TB', @mo),
  ('Grand Blazer DLX 4.1 mpfi', @mo),
  ('High Country 5.3 V8 AWD Aut.', @mo),
  ('Sport/ Fleet Side 5.7 CS', @mo),
  ('Sport/Fleet Side 6.5 Dies. CS', @mo),
  ('Trop. SL/ Van T.Diesel (todas)', @mo),
  ('Tropical CD 4.1 Diesel', @mo),
  ('Tropical CD 4.1 MPFI', @mo),
  ('Tropical CD 4.2 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sonic');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('HB LT 1.6 16V FlexPower 5p Aut.', @mo),
  ('HB LT 1.6 16V FlexPower 5p Mec.', @mo),
  ('HB LTZ 1.6 16V FlexPower 5p Aut.', @mo),
  ('HB LTZ 1.6 16V FlexPower 5p Mec.', @mo),
  ('HB LTZ EFFECT 1.6 16V FlexP 5p Aut', @mo),
  ('Premier 1.0 12V Turbo Aut.', @mo),
  ('RS 1.0 12V Turbo Aut.', @mo),
  ('Sed. LT 1.6 16V FlexPower 4p Aut.', @mo),
  ('Sed. LT 1.6 16V FlexPower 4p Mec.', @mo),
  ('Sed. LTZ 1.6 16V FlexPower 4p Aut.', @mo),
  ('Sed. LTZ 1.6 16V FlexPower 4p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sonoma');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CE 4.3 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SpaceVan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Furgão 2.1 Diesel', @mo),
  ('Furgão 2.2', @mo),
  ('Passageiro 2.1Diesel', @mo),
  ('Passageiro 2.2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Spark');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EUV ACTIV', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Spin');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 8V Econo.Flex 5p Aut.', @mo),
  ('ACTIV 1.8 8V Econo. Flex 5p Aut.', @mo),
  ('ACTIV 1.8 8V Econo. Flex 5p Mec.', @mo),
  ('ACTIV7 1.8 8V Econo.Flex 5p Aut.', @mo),
  ('ADVANTAGE 1.8 8V Econo.Flex 5p Aut.', @mo),
  ('ADVANTAGE 1.8 8V Econo.Flex 5p Mec.', @mo),
  ('LS 1.8 8V Econo.Flex 5p Aut.', @mo),
  ('LS 1.8 8V Econo.Flex 5p Mec.', @mo),
  ('LT 1.8 8V Econo.Flex 5p Aut.', @mo),
  ('LT 1.8 8V Econo.Flex 5p Mec.', @mo),
  ('LTZ 1.8 8V Econo.Flex 5p Aut.', @mo),
  ('LTZ 1.8 8V Econo.Flex 5p Mec.', @mo),
  ('PREMIER 1.8 8V Econo.Flex 5p Aut.', @mo),
  ('PREMIER 1.8 8V Econo.Flex 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SS10');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Pick-Up 4.3 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Suburban');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.7/6.5 V8/5.3 V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Suprema');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CD 4.1 / 3.0', @mo),
  ('Diamond', @mo),
  ('GL 2.0', @mo),
  ('GLS 2.2 / 2.0', @mo),
  ('GLS 4.1', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Syclone');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.7 V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tigra');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V', @mo),
  ('Power Tech Coupe 1.6 SFI', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tracker');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 Turbo 12V Flex Aut.', @mo),
  ('1.0 Turbo 12V Flex Mec.', @mo),
  ('1.2 Turbo 12V Flex Aut.', @mo),
  ('100 Anos 1.2 Turbo 12V Aut.', @mo),
  ('2.0 16v 128cv MPFI 4x4 5p', @mo),
  ('2.0 TB Int. Diesel 4x4 4p', @mo),
  ('Freeride 1.8 16V Flex 4x2 Mec.', @mo),
  ('LT 1.0 Turbo 12V Flex Aut.', @mo),
  ('LT 1.4 Turbo 16V Flex 4x2 Aut.', @mo),
  ('LT 1.8 16V Flex 4x2 Aut.', @mo),
  ('LTZ 1.0 Turbo 12V Flex Aut.', @mo),
  ('LTZ 1.2 Turbo 12V Flex Aut.', @mo),
  ('LTZ 1.4 Turbo 16V Flex 4x2 Aut.', @mo),
  ('LTZ 1.8 16V Flex 4x2 Aut.', @mo),
  ('Midnight 1.0 Turbo 12V Flex Aut.', @mo),
  ('Midnight 1.4 Turbo Flex Aut.', @mo),
  ('Premier 1.0 Turbo 12V Flex Aut.', @mo),
  ('Premier 1.2 Turbo 12V Flex Aut.', @mo),
  ('Premier 1.4 Turbo 16V Flex Aut', @mo),
  ('RS 1.2 Turbo 12V Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Trafic');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Chassi Longo Diesel', @mo),
  ('Furgão Carga 2.1 Diesel', @mo),
  ('Furgao Carga 2.2', @mo),
  ('Passageiros 2.1 Diesel', @mo),
  ('Passageiros 2.2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Trailblazer');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('High Country 2.8 TB Die Aut.', @mo),
  ('LTZ 2.8 CTDI Diesel Aut.', @mo),
  ('LTZ 3.6 V6 Aut.', @mo),
  ('PREMIER 2.8 TB Diesel Aut.', @mo),
  ('PREMIER 3.6 V6 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Vectra');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CD 2.0 (modelo antigo)', @mo),
  ('CD 2.2 16V / 2.0 16V Mec./Aut.', @mo),
  ('COLLECTION 2.0 FlexPower 8V Aut.', @mo),
  ('Comfort 2.0 MPFI', @mo),
  ('Elegan. 2.0 MPFI 8V FlexPower Aut', @mo),
  ('Elegan. 2.0 MPFI 8V FlexPower Mec', @mo),
  ('Elegance 2.0 MPFI', @mo),
  ('Elegance 2.2 MPFI 16V Aut.', @mo),
  ('Elite 2.0 MPFI', @mo),
  ('Elite 2.0 MPFI 8V FlexPower Aut.', @mo),
  ('Elite 2.2 MPFI 16V Aut.', @mo),
  ('Elite 2.4 MPFI 16V FlexPower Aut.', @mo),
  ('Expres./ Collection 2.0 MPFI 8V', @mo),
  ('EXPRESSION 2.0 MPFI FlexPower Aut', @mo),
  ('EXPRESSION 2.0 MPFI FlexPower Mec', @mo),
  ('GL 2.2 / 2.0 MPFI', @mo),
  ('GL 2.2 MPFI Milenium', @mo),
  ('GLS/ Challenge 2.2 MPFI 16V', @mo),
  ('GLS/Expres.2.2/ 2.0 e 2.0 CD 8V', @mo),
  ('GSi 2.0 16V (modelo antigo)', @mo),
  ('GT 2.0 MPFI 8V FlexPower Aut.', @mo),
  ('GT 2.0 MPFI 8V FlexPower Mec.', @mo),
  ('GT-X 2.0 MPFI 8V FlexPower Aut.', @mo),
  ('GT-X 2.0 MPFI 8V FlexPower Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Veraneio');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('S / Luxe 4.1', @mo),
  ('S/ Luxe 4.0 Dies./TB Dies.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Zafira');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0/ CD 2.0 8V MPFI 5p Mec.', @mo),
  ('2.0/ CD 2.0 16V MPFI 5p', @mo),
  ('2.0/ CD 2.0 8V MPFI 5p Aut.', @mo),
  ('COLLECTION 2.0 FlexPower 8V Aut.', @mo),
  ('Comfort 2.0 MPFI FlexPower 8V 5p', @mo),
  ('Eleg.2.0 MPFI FlexPower 8V 5p Aut', @mo),
  ('Elegance 2.0 MPFI 16v 136cv 5p', @mo),
  ('Elegance 2.0 MPFI FlexPower 8V 5p', @mo),
  ('Elite 2.0 MPFI 16v 136cv 5p', @mo),
  ('Elite 2.0 MPFI FlexPower 8V Aut', @mo),
  ('Elite 2.0 MPFI FlexPower 8V 5p', @mo),
  ('Expres. 2.0 MPFI FlexPower 5p Aut', @mo);

-- GREAT WALL
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'GREAT WALL');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Hover', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Hover');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CUV 2.4 16V 4WD 5p Mec.', @mo),
  ('CUV 2.4 16V 5p Mec.', @mo);

-- Gurgel
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Gurgel');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('BR-800', @m),
  ('Carajas', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'BR-800');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('(todos)/Supermini', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Carajas');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Diesel', @mo),
  ('Tocantis/Xavante/Vip', @mo);

-- GWM
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'GWM');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Haval', @m),
  ('Ora', @m),
  ('Poer', @m),
  ('Tank', @m),
  ('Wey', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Haval');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('H6 1.5 (Hibrido)', @mo),
  ('H6 1.5 AWD (Hibrido)', @mo),
  ('H6 19 1.5 (Hibrido)', @mo),
  ('H6 2 1.5 (Hibrido)', @mo),
  ('H6 34 1.5 AWD (Hibrido)', @mo),
  ('H6 35 1.5 AWD', @mo),
  ('H6 GT 1.5 AWD (Hibrido)', @mo),
  ('H6 ONE 1.5 (Hibrido)', @mo),
  ('H9 Exclusive TD480', @mo),
  ('H9 Selection TD480', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ora');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('03', @mo),
  ('03 GT (Elétrico)', @mo),
  ('03 Skin (Elétrico)', @mo),
  ('05', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Poer');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('P30 Exclusive 2.4 16V Turbo 4X4 Aut.', @mo),
  ('P30 Pro 2.4 16V Turbo 4X4 Aut.', @mo),
  ('P30 Trail 2.4 16V Turbo 4X4 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tank');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('300 2.0 16V AWD Aut.(Hibrido)', @mo),
  ('300 TerraForce 2.0 16V AWD Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Wey');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('07 1.5 Turbo AWD', @mo),
  ('07 Dark Edition 1.5 Turbo AWD', @mo);

-- HAFEI
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'HAFEI');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Towner', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Towner');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Furgão 1.0 8V 48cv 5p', @mo),
  ('Jr. Pick-up 1.0 8V 48cv CD 4p', @mo),
  ('Jr. Pick-up 1.0 8V 48cv CS 2p', @mo),
  ('Jr. Pick-up Baú 1.0 8V 48cv 2p', @mo),
  ('Jr. Pick-up Baú 1.0 8V 48cv CD 4p', @mo),
  ('Passageiro 1.0 8V 48cv 7L 5p', @mo),
  ('Pick-Up 1.0 8V 48cv 2p', @mo),
  ('Pick-Up Baú 1.0 8V 48cv 2p', @mo);

-- HITECH ELECTRIC
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'HITECH ELECTRIC');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Delivery', @m),
  ('e', @m),
  ('E-Work', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Delivery');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Baú 11,5kW (Elétrico)', @mo),
  ('Baú 23,0kW (Elétrico)', @mo),
  ('Baú Refrig. 23,0kW (Elétrico)', @mo),
  ('Caçamba 11,5kW', @mo),
  ('Caçamba 23,0kW', @mo),
  ('Chassi 11,5kW', @mo),
  ('Chassi 23,0kW', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'e');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('co Cargo 10kW (Elétrico)', @mo),
  ('co Cargo 15.7kWh (Elétrico)', @mo),
  ('co Cargo 7,5kW (Elétrico)', @mo),
  ('co Delivery 15,7kWh (Elétrico)', @mo),
  ('co Delivery 7,7kWh (Elétrico)', @mo),
  ('co Tech2 6kW (Elétrico)', @mo),
  ('co Tech4 6kW (Elétrico)', @mo),
  ('co Truck 10kW (Elétrico)', @mo),
  ('co Truck 15,7kWh (Elétrico)', @mo),
  ('co Truck 7,5kW (Elétrico)', @mo),
  ('coCargo 31,4 kW (Elétrico)', @mo),
  ('coTruck 31,4 kW (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-Work');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EC31 Baú 38,7kW', @mo),
  ('EC31 Cabine Chassi 38,7kW', @mo),
  ('EC31 Caçamba 38,7kW', @mo),
  ('EC31 Refrigerado 38,7kW', @mo),
  ('EC35 Van 38,7kW', @mo);

-- Honda
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Honda');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Accord', @m),
  ('City', @m),
  ('Civic', @m),
  ('CR-V', @m),
  ('Fit', @m),
  ('HR-V', @m),
  ('Odyssey', @m),
  ('Passport', @m),
  ('Prelude', @m),
  ('WR-V', @m),
  ('ZR-V', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Accord');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe EX', @mo),
  ('Sedan 2.0 TB 16V Aut. (Híbrido)', @mo),
  ('Sedan EX 2.0 16V 156cv Aut.', @mo),
  ('Sedan EX 2.4/2.3/ 2.2 16V', @mo),
  ('Sedan EX 2.7/3.0 24V', @mo),
  ('Sedan EX 3.5 V6 24V', @mo),
  ('Sedan EXR', @mo),
  ('Sedan LX 2.2/2.4 16V', @mo),
  ('Sedan LX 2.0 16V 150/156cv Aut.', @mo),
  ('Sedan Touring 2.0 TB 16V Aut.', @mo),
  ('SW EX', @mo),
  ('SW LX', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'City');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Hatchback EX 1.5 Flex 16V Aut.', @mo),
  ('Hatchback EXL 1.5 Flex 16V Aut.', @mo),
  ('Hatchback LX 1.5 Flex 16V Aut.', @mo),
  ('Hatchback Touring 1.5 Flex 16V Aut', @mo),
  ('Hatchback Touring Sport 1.5 16V Aut', @mo),
  ('Sedan DX 1.5 Flex 16V Aut.', @mo),
  ('Sedan DX 1.5 Flex 16V Mec.', @mo),
  ('Sedan EX 1.5 Flex 16V 4p Aut.', @mo),
  ('Sedan EX 1.5 Flex 16V 4p Mec.', @mo),
  ('Sedan EXL 1.5 Flex 16V 4p Aut.', @mo),
  ('Sedan EXL 1.5 Flex 16V 4p Mec.', @mo),
  ('Sedan LX 1.5 Flex 16V 4p Aut.', @mo),
  ('Sedan LX 1.5 Flex 16V 4p Mec.', @mo),
  ('Sedan Personal 1.5 Flex 16V Aut.', @mo),
  ('Sedan SPORT 1.5 FLEX 16V 4p Mec.', @mo),
  ('Sedan Touring 1.5 Flex 16V 4p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Civic');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe EX/ EXS 1.6 16V 2p', @mo),
  ('Coupe Si 1.5 TB 16V 208cv Mec. 2p', @mo),
  ('Coupe Si 2.4 16V 206cv Mec. 2p', @mo),
  ('CRX/ Targa VTi', @mo),
  ('Hatch DX', @mo),
  ('Hatch LSi', @mo),
  ('Hatch LX Aut.', @mo),
  ('Hatch Si', @mo),
  ('Hatch VTi', @mo),
  ('Sed LX 1.8 Aut 4p', @mo),
  ('Sed. LXL/ LXL SE 1.8 Flex 16V Aut.', @mo),
  ('Sed. LXL/LXL SE 1.8 Flex 16V Mec.', @mo),
  ('Sed.Touring 2.0 16V Aut. (Híbrido)', @mo),
  ('Sedan EX 1.6 16V Aut. 4p (nacion.)', @mo),
  ('Sedan EX 1.6 16V Mec. 4p (nacion.)', @mo),
  ('Sedan EX 1.7 16V 130cv Aut. 4p', @mo),
  ('Sedan EX 1.7 16v 130cv Mec. 4p', @mo),
  ('Sedan EX 2.0 Flex 16V Aut.4p', @mo),
  ('Sedan EX/ EXS 1.6 Mec. 4p', @mo),
  ('Sedan EX/ EXS Aut. 4p/ Del-Sol 2p', @mo),
  ('Sedan EXL 2.0 Flex 16V Aut.4p', @mo),
  ('Sedan EXR 2.0 Flexone 16V Aut. 4p', @mo),
  ('Sedan EXS 1.8/1.8 Flex 16V Aut. 4p', @mo),
  ('Sedan LX 1.5/1.6', @mo),
  ('Sedan LX 1.6 16V Aut. 4p', @mo),
  ('Sedan LX 1.6 16V Mec. 4p', @mo),
  ('Sedan LX 1.7 16V 115cv Mec. 4p', @mo),
  ('Sedan LX 2.0 Flex 16V Aut. 4p', @mo),
  ('Sedan LX/LXL 1.7 16V 115cv Aut. 4p', @mo),
  ('Sedan LXB 1.6 16V 4p', @mo),
  ('Sedan LXB 1.7 16V 115cv', @mo),
  ('Sedan LXL 1.7 16V 130cv Aut 4p', @mo),
  ('Sedan LXL 1.7 16V 130cv Mec 4p', @mo),
  ('Sedan LXR 2.0 Flexone 16V Aut. 4p', @mo),
  ('Sedan LXS 1.8/1.8 Flex 16V Aut. 4p', @mo),
  ('Sedan LXS 1.8/1.8 Flex 16V Mec. 4p', @mo),
  ('Sedan Si 2.0 16V 192cv 4p', @mo),
  ('Sedan SPORT 2.0 Flex 16V Aut.4p', @mo),
  ('Sedan SPORT 2.0 Flex 16V Mec.4p', @mo),
  ('Sedan TOURING 1.5 Turbo 16V Aut.4p', @mo),
  ('Type-R 2.0 Turbo 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CR-V');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V Aut.', @mo),
  ('2.0 16V Mec.', @mo),
  ('2.4 16V 156cv Aut. 4p', @mo),
  ('EXL 2.0 16V 4WD/2.0 Flexone Aut.', @mo),
  ('EXL 2.0 Flexone 16V 2WD Aut.', @mo),
  ('LX 2.0 16V 2WD Mec.', @mo),
  ('LX 2.0 16V 2WD/2.0 Flexone Aut.', @mo),
  ('Touring 1.5 16V 4WD 5p Aut.', @mo),
  ('Touring 2.0 16V AWD Aut.(Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Fit');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CX 1.4 Flex 16V 5p Aut.', @mo),
  ('CX 1.4 Flex 16V 5p Mec.', @mo),
  ('DX 1.4 Flex 16V 5p Aut.', @mo),
  ('DX 1.4 Flex 16V 5p Mec.', @mo),
  ('DX 1.5 Flexone 16V 5p Aut.', @mo),
  ('DX 1.5 Flexone 16V 5p Mec.', @mo),
  ('EX/ S 1.5/ EX 1.5 Flex 16V 5p Mec.', @mo),
  ('EX/S 1.5 Flex/Flexone 16V 5p Aut.', @mo),
  ('EXL 1.5 Flex 16V 5p Mec', @mo),
  ('EXL 1.5 Flex/Flexone 16V 5p Aut', @mo),
  ('LX 1.4/ 1.4 Flex 8V/16V 5p Aut.', @mo),
  ('LX 1.4/ 1.4 Flex 8V/16V 5p Mec.', @mo),
  ('LX 1.5 Flexone 16V 5p Aut.', @mo),
  ('LX 1.5 Flexone 16V 5p Mec.', @mo),
  ('LXL 1.4/ 1.4 Flex 8V/16V 5p Aut.', @mo),
  ('LXL 1.4/ 1.4 Flex 8V/16V 5p Mec.', @mo),
  ('Personal 1.5 Flexone 16V 5p Aut.', @mo),
  ('Twist 1.5 Flex 16V 5p Aut.', @mo),
  ('Twist 1.5 Flex 16V 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'HR-V');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Advance 1.5 Flex TB 16V 5p Aut.', @mo),
  ('EX 1.5 Flex Sensing 16V 5p Aut.', @mo),
  ('EX 1.8 Flexone 16V 5p Aut.', @mo),
  ('EXL 1.5 Flex Sensing 16V 5p Aut.', @mo),
  ('EXL 1.8 Flexone 16V 5p Aut.', @mo),
  ('LX 1.8 Flexone 16V 5p Aut.', @mo),
  ('LX 1.8 Flexone 16V 5p Mec.', @mo),
  ('Touring 1.5 Flex TB 16V 5p Aut.', @mo),
  ('Touring 1.8 Flexone 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Odyssey');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EX Van Aut (6 lug.)', @mo),
  ('Van LX Aut (6 lug.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Passport');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EX', @mo),
  ('LX', @mo),
  ('PIck-Up 4x2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Prelude');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupê 2.0 TB 16V Aut.', @mo),
  ('Coupê S 2.2', @mo),
  ('Si', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'WR-V');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EX 1.5 Flexone 16V 5p Aut.', @mo),
  ('EXL 1.5 Flexone 16V 5p Aut.', @mo),
  ('LX 1.5 Flexone 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ZR-V');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Touring 2.0 16V 5p Aut.', @mo);

-- Hyundai
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Hyundai');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Accent', @m),
  ('Atos Prime', @m),
  ('Azera', @m),
  ('Coupe FX', @m),
  ('Creta', @m),
  ('Cupê', @m),
  ('Elantra', @m),
  ('Equus', @m),
  ('Excel', @m),
  ('Galloper', @m),
  ('Genesis', @m),
  ('Grand Santa', @m),
  ('H1 Starex', @m),
  ('H100', @m),
  ('HB20', @m),
  ('HB20S', @m),
  ('HB20X', @m),
  ('HR', @m),
  ('I20', @m),
  ('i30', @m),
  ('i30cw', @m),
  ('Ioniq', @m),
  ('ix35', @m),
  ('Kona', @m),
  ('Matrix', @m),
  ('Palisade', @m),
  ('Porter', @m),
  ('Santa Fe', @m),
  ('Santa', @m),
  ('Scoupe', @m),
  ('Sonata', @m),
  ('Terracan', @m),
  ('Trajet', @m),
  ('Tucson', @m),
  ('Veloster', @m),
  ('Veracruz', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Accent');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLS 1.5 12V/16V Aut.', @mo),
  ('GLS 1.5 12V/16V Mec.', @mo),
  ('GS 3p Mec.', @mo),
  ('L/ LR 1.5 2/4p', @mo),
  ('LS 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Atos Prime');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GL 1.0 Mec.', @mo),
  ('GLS 1.0 Aut.', @mo),
  ('GLS 1.0 Mec.', @mo),
  ('GLS 1.0 Semi-Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Azera');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6 24V 4p Aut.', @mo),
  ('GLS 3.3 V6 24V 4p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Coupe FX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 Aut.', @mo),
  ('2.0 Mec.', @mo),
  ('2.7 V6 24V 180cv Aut.', @mo),
  ('2.7 V6 24V 180cv Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Creta');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1 Million 1.6 16V Flex Aut.', @mo),
  ('Action 1.0 TB 12V Aut.', @mo),
  ('Action 1.6 16V Flex Aut.', @mo),
  ('Attitude 1.6 16V Flex Aut.', @mo),
  ('Attitude 1.6 16V Flex Mec.', @mo),
  ('Attitude Plus 1.6 16V Flex Aut.', @mo),
  ('Comfort 1.0 TB 12V Flex Aut.', @mo),
  ('Comfort Plus 1.0 TB 12V Flex Aut.', @mo),
  ('Comfort Safety 1.0 TB 12V Aut.', @mo),
  ('Launch Edition 1.6 16V Flex Aut.', @mo),
  ('Limit. Safety 1.0 TB 12V Flex Aut.', @mo),
  ('Limited 1.0 TB 12V Flex Aut.', @mo),
  ('Limited Edition 1.6 16V Flex Aut.', @mo),
  ('N Line 1.0 TB 12V Flex Aut.', @mo),
  ('N Line 1.6 TB 12V Flex Aut.', @mo),
  ('N Line Night Ed. 2.0 16V Flex Aut.', @mo),
  ('Plat. Safety 1.0 TB 12V Flex Aut.', @mo),
  ('Platinum 1.0 TB 12V Flex Aut.', @mo),
  ('Prestige 2.0 16V Flex Aut.', @mo),
  ('Pulse 1.6 16V Flex Aut.', @mo),
  ('Pulse 1.6 16V Flex Mec.', @mo),
  ('Pulse 2.0 16V Flex Aut.', @mo),
  ('Pulse Plus 1.6 16V Flex Aut.', @mo),
  ('Smart 1.6 16V Flex Aut.', @mo),
  ('Smart Plus 1.6 16V Flex Aut.', @mo),
  ('Sport 2.0 16V Flex Aut.', @mo),
  ('Ultimate 1.6 TB 16V Aut.', @mo),
  ('Ultimate 1.6 TB 16V Flex Aut.', @mo),
  ('Ultimate 2.0 16V Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cupê');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Elantra');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V Flex Aut.', @mo),
  ('GL', @mo),
  ('GLS 1.6', @mo),
  ('GLS 1.8 16V', @mo),
  ('GLS 1.8 16V Aut.', @mo),
  ('GLS 1.8 16V Mec.', @mo),
  ('GLS 2.0 16V Aut.', @mo),
  ('GLS 2.0 16V Flex Aut.', @mo),
  ('GLS 2.0 16V Mec.', @mo),
  ('Special Edit. 2.0 16V Flex Aut.', @mo),
  ('Wagon 1.8 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Equus');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.6 V8 32V 366cv 4p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Excel');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLS', @mo),
  ('GS', @mo),
  ('L', @mo),
  ('LS/ GL', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Galloper');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 Luxo Turbo Diesel', @mo),
  ('2.5 Super Luxo Turbo Diesel', @mo),
  ('3.0 V6 Luxo', @mo),
  ('3.0 V6 Super Luxo Aut', @mo),
  ('3.0 V6 Super Luxo Mec', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Genesis');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.8 V6 24V 290cv 4p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Grand Santa');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Fé 3.3 V6 4X4 Tiptronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'H1 Starex');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('HSV 2.4 16V 137cv Aut.', @mo),
  ('HSV 2.5 Diesel', @mo),
  ('SVX 2.4 16V', @mo),
  ('SVX 2.5 TDI 100cv Diesel', @mo),
  ('SVX 2.6 85cv Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'H100');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('DLX Furgão Diesel', @mo),
  ('DLX/ Panel Diesel', @mo),
  ('GL Diesel', @mo),
  ('GL Furgão Extra-Longo Diesel', @mo),
  ('GLS Diesel', @mo),
  ('GS (12 lugares)', @mo),
  ('GS Diesel (12 lugares)', @mo),
  ('Porter Truck Diesel', @mo),
  ('SPR Diesel (15 lugares)', @mo),
  ('Top Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'HB20');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1 Million 1.6 Flex 16V Aut.', @mo),
  ('5 Anos 1.0 Flex 12V Mec.', @mo),
  ('5 Anos 1.6 Flex 16V Aut.', @mo),
  ('C./C.Plus/C.Style 1.6 Flex 16V Mec.', @mo),
  ('C.Style/C.Plus 1.6 Flex 16V Aut.', @mo),
  ('Comf. Plus Tech 1.0 TB Flex 12V Aut', @mo),
  ('Comf./C.Plus/C.Style 1.0 Flex 12V', @mo),
  ('Comfort 1.0 Flex 12V Mec.', @mo),
  ('Comfort 1.0 TB Flex 12V Aut', @mo),
  ('Comfort 1.0 TB Flex 12V Mec', @mo),
  ('Comfort Plus 1.0 Flex 12V Mec.', @mo),
  ('Comfort Plus 1.0 TB Flex 12V Aut.', @mo),
  ('Comfort Plus 1.0 TB Flex 12V Mec.', @mo),
  ('Comfort Style 1.0 TB Flex 12V Mec.', @mo),
  ('Copa do Mundo 1.0 Flex 12V Mec.', @mo),
  ('Copa do Mundo 1.6 Flex 16V Aut.', @mo),
  ('Copa do Mundo 1.6 Flex 16V Mec.', @mo),
  ('Copa Mundo Qatar 1.0 Flex Mec', @mo),
  ('Copa Mundo Qatar 1.0 TB Flex Aut.', @mo),
  ('Diamond 1.0 TB Flex 12V Aut.', @mo),
  ('Diamond Plus 1.0 TB Flex 12V Aut.', @mo),
  ('Edição Especial 1.0 Flex Mec.', @mo),
  ('Edição Especial 1.0 TB Flex Aut.', @mo),
  ('Evol. Bluelink 1.0 TB Flex 12V Aut.', @mo),
  ('Evolution 1.0 Flex 12V Mec.', @mo),
  ('Evolution 1.0 TB Flex 12V Aut.', @mo),
  ('Evolution Bluelink 1.0 Flex 12V Mec', @mo),
  ('For You 1.0 Flex 12V 5p', @mo),
  ('Launch Edition 1.6 Flex 16V Aut.', @mo),
  ('Limited 1.0 Flex 12V Mec.', @mo),
  ('Limited 1.0 TB Flex 12V Aut.', @mo),
  ('Limited Plus 1.0 Flex 12V Mec.', @mo),
  ('Ocean 1.0 Flex 12V 5p Mec.', @mo),
  ('Ocean 1.6 Flex 16V 5p Aut.', @mo),
  ('Ocean 1.6 Flex 16V 5p Mec.', @mo),
  ('Plat. Safety 1.0 TB Flex 12V Aut.', @mo),
  ('Platinum 1.0 TB Flex 12V Aut.', @mo),
  ('Platinum 1.0 TB Flex 12V Mec.', @mo),
  ('Platinum Plus 1.0 TB Flex 12V Aut.', @mo),
  ('Premium 1.6 Flex 16V Aut.', @mo),
  ('Premium 1.6 Flex 16V Mec.', @mo),
  ('R spec 1.6 Flex 16V Aut.', @mo),
  ('R spec 1.6 Flex 16V Mec.', @mo),
  ('R spec Limited 1.6 flex 16V Aut.', @mo),
  ('Sense 1.0 Flex 12V Mec.', @mo),
  ('Sense 1.0 Turbo Flex 12V Aut.', @mo),
  ('Sense Plus 1.0 Flex 12V Mec.', @mo),
  ('Spicy 1.0 Flex 12V Mec.', @mo),
  ('Spicy 1.6 Flex 16V Aut.', @mo),
  ('Spicy 1.6 Flex 16V Mec.', @mo),
  ('Sport 1.0 TB Flex 12V Aut.', @mo),
  ('Unique 1.0 Flex 12V Mec.', @mo),
  ('Vision 1.0 Flex 12V Mec.', @mo),
  ('Vision 1.0 TB Flex 12V Aut.', @mo),
  ('Vision 1.6 Flex 16V Aut', @mo),
  ('Vision 1.6 Flex 16V Mec.', @mo),
  ('Vision Bluelink 1.6 Flex 16V Aut.', @mo),
  ('Vision Bluelink 1.6 Flex 16V Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'HB20S');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Impress 1.6 Flex 16V Aut.', @mo),
  ('Impress 1.6 Flex 16v Mec.', @mo),
  ('1 Million 1.6 Flex 16V Aut. 4p', @mo),
  ('5 Anos 1.0 Flex 12V Mec.', @mo),
  ('5 Anos 1.6 Flex 16V Aut.', @mo),
  ('C.Plus/C.Style 1.6 Flex 16V Mec.4p', @mo),
  ('C.Plus/C.Style1.0 Flex 12V Mec. 4P', @mo),
  ('C.Style/C.Plus1.6 Flex 16V Aut. 4p', @mo),
  ('Com. Plus Tech 1.0 TB Flex 12V Aut', @mo),
  ('Comfort 1.0 Flex 12V Mec.', @mo),
  ('Comfort 1.0 TB Flex 12V Aut.', @mo),
  ('Comfort Plus 1.0 Flex 12V Mec.', @mo),
  ('Comfort Plus 1.0 TB Flex 12V Aut', @mo),
  ('Comfort Plus 1.0 TB Flex 12V Mec.', @mo),
  ('Comfort Style 1.0 TB Flex 12V Mec.', @mo),
  ('Copa do Mundo 1.0 Flex 12V Mec.', @mo),
  ('Copa do Mundo 1.6 Flex 16V Aut.', @mo),
  ('Copa do Mundo 1.6 Flex 16V Mec.', @mo),
  ('Copa Mundo Qatar 1.0 Flex Mec.', @mo),
  ('Copa Mundo Qatar 1.0 TB Flex Aut.', @mo),
  ('Diamond 1.0 TB Flex 12V Aut.', @mo),
  ('Diamond Plus 1.0 TB Flex 12V Aut.', @mo),
  ('Edição Especial 1.0 Flex Mec.', @mo),
  ('Edição Especial 1.0 TB Flex Aut.', @mo),
  ('Evol. Bluelink 1.0 Flex 12 Mec.', @mo),
  ('Evol. Bluelink 1.0 TB Flex 12V Aut', @mo),
  ('Evolution 1.0 Flex 12V Mec.', @mo),
  ('Evolution 1.0 TB Flex 12V Aut.', @mo),
  ('For You 1.0 Flex 12V 4p', @mo),
  ('Limited 1.0 Flex 12V Mec.', @mo),
  ('Limited 1.0 TB Flex 12V Aut.', @mo),
  ('Limited Plus 1.0 Flex 12V Mec.', @mo),
  ('Ocean 1.6 Flex 16v 4p Aut.', @mo),
  ('Ocean 1.6 Flex 16V 4p Mec.', @mo),
  ('Plat. Safety 1.0 TB Flex 12V Aut.', @mo),
  ('Platinum 1.0 TB Flex 12V Aut.', @mo),
  ('Platinum 1.0 TB Flex 12V Mec.', @mo),
  ('Platinum Plus 1.0 TB Flex 12V Aut.', @mo),
  ('Premium 1.6 Flex 16V Aut. 4p', @mo),
  ('Premium 1.6 Flex 16V Mec. 4p', @mo),
  ('Style 1.6 Flex 16V Aut.', @mo),
  ('Unique 1.0 Flex 12V Mec.', @mo),
  ('Vision 1.0 Flex 12V Mec.', @mo),
  ('Vision 1.0 TB Flex 12V Aut.', @mo),
  ('Vision 1.6 Flex 16V Aut.', @mo),
  ('Vision 1.6 Flex 16V Mec.', @mo),
  ('Vision Bluelink 1.6 Flex 16V Aut.', @mo),
  ('Vision Bluelink 1.6 Flex 16V Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'HB20X');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Diamond 1.6 Flex 16V Aut.', @mo),
  ('Diamond Plus 1.6 Flex 16V Aut.', @mo),
  ('Evol. Bluelink 1.6 Flex 16V Aut.', @mo),
  ('Evolution 1.6 Flex 16V Aut.', @mo),
  ('Premium 1.6 Flex 16V Aut.', @mo),
  ('Premium 1.6 Flex 16V Mec.', @mo),
  ('Style 1.6 Flex 16V Aut.', @mo),
  ('Style 1.6 Flex 16v Mec.', @mo),
  ('Vision 1.6 Flex 16V Aut.', @mo),
  ('Vision 1.6 Flex 16V Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'HR');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 4WD Diesel', @mo),
  ('2.5 TCI Diesel (RS/RD)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'I20');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Comfort 1.0 12V Mec.', @mo),
  ('Limited 1.0 12V Mec.', @mo),
  ('Limited 1.0 Turbo 12V Aut.', @mo),
  ('Platinum 1.0 Turbo 12V Aut.', @mo),
  ('Ultimate 1.0 Turbo 12V Aut.', @mo),
  ('X Line 1.0 Turbo 12V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'i30');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V Flex 5p Aut.', @mo),
  ('1.8 16V Aut. 5p', @mo),
  ('2.0 16V 145cv 5p Aut.', @mo),
  ('2.0 16V 145cv 5p Mec.', @mo),
  ('Serie Limitada 1.8 16V Aut. 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'i30cw');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 145cv Aut. 5p', @mo),
  ('2.0 16V 145cv Mec. 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ioniq');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V Aut. (Híbrido)', @mo),
  ('5 SIGNATURE (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ix35');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 170cv 2WD/4WD Aut.', @mo),
  ('2.0 16V 170cv 2WD/4WD Mec.', @mo),
  ('2.0 16V 2WD Flex Aut.', @mo),
  ('2.0 16V 2WD Flex Mec.', @mo),
  ('2.0 Launching Edition 16V Flex Aut.', @mo),
  ('GL 2.0 16V 2WD Flex Aut.', @mo),
  ('GLS 2.0 16V 2WD Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Kona');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V Aut. (Hibrido)', @mo),
  ('EV (Elétrico)', @mo),
  ('Signature GDI 1.6 16V Aut (Hibrido)', @mo),
  ('Ultimate GDI 1.6 16V Aut. (Hibrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Matrix');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLS 1.8 16V 123cv Aut.', @mo),
  ('GLS 1.8 16V 123cv Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Palisade');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Signature 3.8 GDI AWD Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Porter');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GL 4x2 Curto/Longo Diesel', @mo),
  ('GLS CD 4x2 2.6 8V Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Santa Fe');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.5 V6 4X4 Aut.', @mo),
  ('GLS 2.4 Tiptronic', @mo),
  ('GLS 2.7 V6 4x4TipTronic', @mo),
  ('GLS 3.5 V6 4x4 Tiptronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Santa');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Fe/GLS 3.3 V6 4X4 Tiptronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Scoupe');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sonata');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.4 16V 182cv 4p Aut.', @mo),
  ('GL 2.0 4p', @mo),
  ('GLS 2.0 4p', @mo),
  ('GLS 2.5 Aut.', @mo),
  ('GLS 2.7 V6 24V 179cv 4p Aut.', @mo),
  ('GLS 3.0 4p Aut.', @mo),
  ('GLS 3.3 V6 24V 235cv 4p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Terracan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 8V 100cv TB Diesel Aut.', @mo),
  ('2.5 8V 100cv TB Diesel Mec.', @mo),
  ('2.9 CRDI 8V 163cv Diesel Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Trajet');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLS 2.7 V6 24v 179cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tucson');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V Aut.', @mo),
  ('2.0 16V Flex Aut.', @mo),
  ('2.0 16V Flex Mec.', @mo),
  ('2.0 16V Mec.', @mo),
  ('2.0 CRDi 16V 112cv Diesel Aut.', @mo),
  ('2.7 MPFI 24V 175cv Aut.', @mo),
  ('Ed. Especial 1.6 Turbo 16V Aut.', @mo),
  ('GL 1.6 Turbo 16V Aut.', @mo),
  ('GLS 1.6 Turbo 16V Aut.', @mo),
  ('Limited 1.6 Turbo 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Veloster');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V 140cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Veracruz');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLS 3.8 4WD Aut.', @mo);

-- Isuzu
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Isuzu');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Amigo', @m),
  ('Hombre', @m),
  ('Rodeo', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Amigo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.3 4x2/4x4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Hombre');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2 WD XS 2.2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Rodeo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.2 V6', @mo);

-- IVECO
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'IVECO');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Daily', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Daily');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('45-160 Vetrato 3.0 (Diesel) (E6)', @mo),
  ('45-170 Vetrato 3.0 (Diesel)', @mo),
  ('50-180 Vetrato 3.0 (Diesel) (E6)', @mo),
  ('CH. 65-170 CD Curto 3.0 (Diesel)', @mo),
  ('CH. 65-170 CD Longo 3.0 (Diesel)', @mo),
  ('CHASSI 30-160 3.0 (Diesel)(E6)', @mo),
  ('CHASSI 35-150 Curto 3.0 (Diesel)', @mo),
  ('CHASSI 35-150 Longo 3.0 (Diesel)', @mo),
  ('CHASSI 35-160 Curto 3.0 (Die.)(E6)', @mo),
  ('CHASSI 35-160 Curto 3.0 (Diesel)', @mo),
  ('CHASSI 35-160 Longo 3.0 (Die.)(E6)', @mo),
  ('CHASSI 35-160 Longo 3.0 (Diesel)', @mo),
  ('CHASSI 35-180 Curto 3.0 Aut.(E6)', @mo),
  ('CHASSI 35-180 Longo 3.0 Aut. (E6)', @mo),
  ('CHASSI 45-160 CD 3.0 4p (Die.)(E6)', @mo),
  ('CHASSI 45-160 Curto 3.0 (Die.)(E6)', @mo),
  ('CHASSI 45-160 Longo 3.0 (Die.)(E6)', @mo),
  ('CHASSI 45-170 3.0 (Diesel)', @mo),
  ('CHASSI 45-170 CD 3.0 (Diesel)', @mo),
  ('CHASSI 45-180 CD 3.0 4p (Die.)(E6)', @mo),
  ('CHASSI 45-180 Longo 3.0 (Die.)(E6)', @mo),
  ('CHASSI 55-170 3.0 (Diesel)', @mo),
  ('CHASSI 55-170 CD 3.0 (Diesel)', @mo),
  ('CHASSI 55-180 CD 3.0 4p (Die.)(E6)', @mo),
  ('CHASSI 55-180 Curto 3.0 (Die.)(E6)', @mo),
  ('CHASSI 55-180 Longo 3.0 (Die.)(E6)', @mo),
  ('CHASSI 60-170 3.0 (Diesel)', @mo),
  ('CHASSI 60-180 3.0 2p (Die.)(E6)', @mo),
  ('CHASSI 65-170 Curto 3.0 (Diesel)', @mo),
  ('CHASSI 65-170 Longo 3.0 (Diesel)', @mo),
  ('CHASSI 65-180 3.0 2p (Diesel)(E6)', @mo),
  ('CHASSI 65-180 CD 3.0 4p (Die.)(E6)', @mo),
  ('CHASSI 70-170 3.0 (Diesel)', @mo),
  ('CITY CHASSI 30-160 3.0 (Diesel)', @mo),
  ('CITY CHASSI 30-160 3.0 (Die.)(E6)', @mo),
  ('CITY 30S13 Chassi 2p (Diesel)', @mo),
  ('CITY 30S13 Furgão 2p (Diesel)', @mo),
  ('CITY 30S13 Gran Furgone (Diesel)', @mo),
  ('CITY CH. 30-130 Longo 2.3 (Diesel)', @mo),
  ('FURGÃO 30-130 2.3 10,8m³ (Diesel)', @mo),
  ('FURGÃO 30-130 2.3 12m³ (Diesel)', @mo),
  ('FURGÃO 30-130 2.3 7,3m³ (Diesel)', @mo),
  ('FURGÃO 30-130 2.3 9m³ (Diesel)', @mo),
  ('FURGÃO 30-160 3.0 12m³ (Die.)(E6)', @mo),
  ('FURGÃO 45-160 3.0 12m³ (Die.)(E6)', @mo),
  ('FURGÃO 45-170 3.0 12m³ (Diesel)', @mo),
  ('FURGÃO 55-170 3.0 12m³ (Diesel)', @mo),
  ('FURGÃO 55-170 3.0 16m³ (Diesel)', @mo),
  ('FURGÃO 55-180 3.0 12m³ (Dies.)(E6)', @mo),
  ('FURGÃO 55-180 3.0 16m³ (Dies.)(E6)', @mo),
  ('Minibus 45-160 Fretam.(Diesel)(E6)', @mo),
  ('Minibus 45-160 Turismo(Diesel)(E6)', @mo),
  ('Minibus 45-170 Fretam. (Diesel)', @mo),
  ('Minibus 45-170 Turismo (Diesel)', @mo),
  ('Minibus 50-170 Fretam. (Diesel)', @mo),
  ('Minibus 50-170 Turismo (Diesel)', @mo),
  ('Minibus 50-180 Fretam.(Diesel)(E6)', @mo),
  ('Minibus 50-180 Turismo(Diesel)(E6)', @mo);

-- JAC
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'JAC');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('E-J7', @m),
  ('e-JS1', @m),
  ('e-JS4', @m),
  ('E-JT3', @m),
  ('E-JV', @m),
  ('E-JV12', @m),
  ('E-JV5', @m),
  ('E-JV7L', @m),
  ('Hunter', @m),
  ('iEV', @m),
  ('J2', @m),
  ('J3', @m),
  ('J5', @m),
  ('J6', @m),
  ('T', @m),
  ('T40', @m),
  ('T5', @m),
  ('T50', @m),
  ('T6', @m),
  ('T60', @m),
  ('T8', @m),
  ('T80', @m),
  ('V260', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-J7');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('193cv 5p Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'e-JS1');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('62cv 5p Aut. (Elétrico)', @mo),
  ('City Cargo Aut. (Elétrico)', @mo),
  ('Extreme 62cv 5p Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'e-JS4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('150CV 5p Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-JT3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-JV');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CC Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-JV12');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-JV5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5 Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-JV7L');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Hunter');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4WORK 4X4 2.O CTI Diessel Aut.', @mo),
  ('HD 4X4 2.0 CTI Diesel Aut.', @mo),
  ('HDX 4X4 2.0 CTI Diesel Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'iEV');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('20 68cv 5p Aut. (Elétrico)', @mo),
  ('330P CD 150cv Aut. (Elétrico)', @mo),
  ('350T 150cv Aut. (Elétrico)', @mo),
  ('40 115cv 5p. (Elétrico)', @mo),
  ('750V 163cv 4p Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'J2');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.4 16V 5p Mec.', @mo),
  ('1.4 JET Flex 16V 5p Mec', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'J3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.4 16V 5p Mec.', @mo),
  ('Brasil 1.4 16V 5p Mec.', @mo),
  ('S 1.5 JET Flex 16V VVT 5p', @mo),
  ('S turin 1.5 JET Flex 16V 4p Mec.', @mo),
  ('turin Sedan 1.4 16V 4p Mec.', @mo),
  ('turin Sedan Brasil 1.4 16V 4p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'J5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sedan 1.5 16V 4p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'J6');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 5p Mec.', @mo),
  ('2.0 JET Flex 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('140 2.8 2p (diesel)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T40');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.5 JET Flex 16V 5p Mec.', @mo),
  ('1.6 16V 5p Aut.', @mo),
  ('PLUS 1.5 JET Flex 16V 5p Mec.', @mo),
  ('PLUS 1.6 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.5 JET Flex 16V 5p Aut.', @mo),
  ('1.5 JET Flex 16V 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T50');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V 5p Aut.', @mo),
  ('PLUS 1.6 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T6');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 JET Flex 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T60');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.5 Turbo 16V Aut.', @mo),
  ('PLUS 1.5 TURBO 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T80');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 Turbo 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'V260');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V Diesel', @mo);

-- Jaecoo
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Jaecoo');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('7', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '7');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Elite 1.5 TB 16v Aut 5p (Híbrido)', @mo),
  ('Luxury 1.5 TB 16v Aut 5p (Híbrido)', @mo),
  ('Prestige1.5 TB 16v Aut (Híbrido)', @mo);

-- Jaguar
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Jaguar');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Daimler', @m),
  ('E-Pace', @m),
  ('F-Pace', @m),
  ('F-Type', @m),
  ('I-Pace', @m),
  ('S-Type', @m),
  ('XE', @m),
  ('XF', @m),
  ('XFR', @m),
  ('XFR-S', @m),
  ('XJ', @m),
  ('XJ-12', @m),
  ('XJ-6', @m),
  ('XJ-8', @m),
  ('XJR', @m),
  ('XJS', @m),
  ('XJS-C', @m),
  ('XK-8', @m),
  ('XKR', @m),
  ('XKR-S', @m),
  ('X-Type', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Daimler');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LWB 4.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-Pace');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 AWD 249cv Aut/Flex', @mo),
  ('FIRST EDITION 2.0 AWD 249cv Aut.', @mo),
  ('R-Dyn. HSE 2.0 AWD 250cv Aut Flex', @mo),
  ('R-Dyn. SE 2.0 AWD 250cv Aut/Flex.', @mo),
  ('R-Dynamic HSE 2.0 AWD 300cv Aut.', @mo),
  ('R-Dynamic S 2.0 AWD 249cv/ Flex', @mo),
  ('R-Dynamic SE 2.0 AWD 300cv Aut.', @mo),
  ('S 2.0 AWD 249cv Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'F-Pace');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 Prestige 180cv Diesel Aut.', @mo),
  ('2.0 Prestige 250cv Aut.', @mo),
  ('2.0 R-Dynamic S 404cv (Híbrido)', @mo),
  ('2.0 R-Dynamic SE 404cv (Hibrido)', @mo),
  ('2.0 R-Sport 250cv Aut.', @mo),
  ('3.0 AWD R-Dynamic S 340cv Aut.', @mo),
  ('3.0 FIRST EDITION 380cv Aut.', @mo),
  ('3.0 R-Dyn.SE AWD 340cv (Híbrido)', @mo),
  ('3.0 R-Dynamic SE AWD 340cv Aut.', @mo),
  ('3.0 R-Sport 340cv Aut.', @mo),
  ('3.0 S 380cv Aut.', @mo),
  ('3.0 S AWD 340 cv Aut.', @mo),
  ('SVR Supercharged 5.0 V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'F-Type');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 R-Dyn.Black Cabriolet Ed.Esp.', @mo),
  ('2.0 R-Dynamic Cabriolet 300cv Aut', @mo),
  ('2.0 R-Dynamic Coupe 300cv Aut.', @mo),
  ('3.0 R-Dynamic Cabrio. 380cv Aut.', @mo),
  ('3.0 R-Dynamic Coupe 380cv Aut.', @mo),
  ('75 Cabrio 2.0 300cv Aut.', @mo),
  ('R AWD Supercharged Coupe 5.0 V8', @mo),
  ('R Supercharged Coupe 5.0 V8', @mo),
  ('S Supercharged Conversivel 3.0 V6', @mo),
  ('S Supercharged Conversivel 5.0 V8', @mo),
  ('S Supercharged Coupe 3.0 V6', @mo),
  ('Supercharged Conversivel 3.0 V6', @mo),
  ('Supercharged Coupe 3.0 V6', @mo),
  ('SVR AWD Supercharged Coupe 5.0 V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'I-Pace');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('BLACK EV 400 AWD Aut. (Elétrico)', @mo),
  ('HSE EV400 AWD Aut. (Elétrico)', @mo),
  ('SE EV400 AWD Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-Type');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0/ 3.0 SE V6', @mo),
  ('4.2/4.2 SE/4.0 V8 32V', @mo),
  ('R 4.2 V8 32V 400cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XE');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 R-Dynamic S 250cv Aut.', @mo),
  ('2.0 Turbocharged Edition Aut.', @mo),
  ('2.0 Turbocharged Pure 240cv Aut.', @mo),
  ('2.0 Turbocharged R-Sport Aut.', @mo),
  ('3.0 Supercharged S 380cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XF');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 GTDi Prestige 16V Aut.', @mo),
  ('2.0 GTDI SPORT LUXURY 240cv Aut.', @mo),
  ('2.0 GTDI SPORT PREMIUM TECH 240cv Aut', @mo),
  ('2.0 R-SPORT Aut.', @mo),
  ('2.0 Turbo 16V 240cv Aut.', @mo),
  ('2.0 Turbocharged Pure 250cv Aut.', @mo),
  ('3.0 Portfolio Supercharged V6 Aut.', @mo),
  ('3.0 S V6 380cv Aut.', @mo),
  ('3.0 V6 24V 240cv Aut.', @mo),
  ('4.2 V8 32V 300cv Aut.', @mo),
  ('5.0 32V V8 385cv Aut.', @mo),
  ('SV8 4.2 V8 32V 420cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XFR');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Supercharged 5.0 V8 510cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XFR-S');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Supercharged 5.0 V8 550cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XJ');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 Turbo 16V 240cv Aut.', @mo),
  ('3.0 Portfolio Supercharged V6 Aut.', @mo),
  ('3.0 R-Sport Supercharged V6 Aut.', @mo),
  ('S.Sport Supercharged 5.0 V8 32V Aut.', @mo),
  ('Super 4.2 V8 32V 400cv 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XJ-12');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('Conv.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XJ-6');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XJ-8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Daimler', @mo),
  ('Executive/ Centenary 4.0', @mo),
  ('Executive/ SE 4.2 V8 32V 300cv 4p', @mo),
  ('Sovereign LWB 4.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XJR');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.2 V8 32V 400cv 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XJS');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.0 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XJS-C');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.0 V12', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XK-8');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('BR Conversível / XK-8 Conversível', @mo),
  ('BR Coupe/ XK-8 Coupe', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XKR');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Conversível 4.2/5.0 32V', @mo),
  ('Coupe 4.2/5.0 32V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XKR-S');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe Supercharged 5.0 32V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X-Type');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ESTATE 3.0 24V 230cv', @mo),
  ('SE 2.5 V6 194cv', @mo),
  ('SE 3.0 V6 231cv', @mo);

-- Jeep
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Jeep');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Avenger', @m),
  ('Cherokee', @m),
  ('Commander', @m),
  ('Compass', @m),
  ('Gladiator', @m),
  ('Grand Cherokee', @m),
  ('Renegade', @m),
  ('Wrangler', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Avenger');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Altitude T200 1.0 Turbo Aut.', @mo),
  ('Limited T200 1.0 Turbo Aut.', @mo),
  ('Longitude T200 1.0 Turbo Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cherokee');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Country 4.0 V6 4x4', @mo),
  ('Limited 3.2 4x4 V6 Aut.', @mo),
  ('Limited 3.7 4x4 V6 12V Aut.', @mo),
  ('Longitude 3.2 4x4 V6 Aut.', @mo),
  ('Rubicon 4.0 V6 4x4', @mo),
  ('Sport 4.0 Mec./Aut.', @mo),
  ('Sport 2.5 4x4 Diesel', @mo),
  ('Sport 3.7 4x4 V6 12V Aut.', @mo),
  ('Trailhawk 3.2 4x4 V6 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Commander');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Black Hurricane 2.0 4x4 TB Aut', @mo),
  ('Black Hurricane 2.0 4x4 TB Flex Aut.', @mo),
  ('Limited 5.7 326cv 5p', @mo),
  ('Limited T270 1.3 TB Aut.', @mo),
  ('Limited T270 1.3 TB Flex Aut.', @mo),
  ('Limited TD380 2.0 4x4 Die.Aut.', @mo),
  ('Longitude T270 1.3 TB Flex Aut', @mo),
  ('Overl. 2.2 TD 4x4 Diesel Aut.', @mo),
  ('Overl. TD380 2.0 4x4 Die. Aut.', @mo),
  ('Overland Hurric 2.0 4x4 TB Aut', @mo),
  ('Overland T270 1.3 TB Flex Aut.', @mo),
  ('Overland T270 1.3 Turbo Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Compass');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Black Hurricane 2.0 4x4 TB Aut.', @mo),
  ('Blackhawk Hurricane 2.0 4x4 TB Aut.', @mo),
  ('LIMITED 2.0 4x2 Flex 16V Aut.', @mo),
  ('LIMITED 2.0 4x4 Diesel 16V Aut.', @mo),
  ('LIMITED T270 1.3 TB 4x2 Flex Aut', @mo),
  ('LIMITED TD 350 2.0 4x4 Die. Aut.', @mo),
  ('Lon Nig. Eagle 1.3 4x2 Flex Aut.', @mo),
  ('LONG. T270 1.3 TB 4x2 Flex Aut.', @mo),
  ('LONG. TD 350 2.0 4x4 Diesel Aut.', @mo),
  ('LONGITUDE 2.0 4x2 Flex 16V Aut.', @mo),
  ('LONGITUDE 2.0 4x4 Dies. 16V Aut.', @mo),
  ('Night Eagle 2.0 4x2 Flex 16V Aut', @mo),
  ('Night Eagle 2.0 4x4 TB Dies. Aut', @mo),
  ('Over. Hurric 2.0 4x4 TB 16V Aut.', @mo),
  ('S 1.3 TB 4XE Aut. (Híbrido)', @mo),
  ('S 2.0 4x4 TB 16V Diesel Aut.', @mo),
  ('S T270 1.3 TB 4x2 Flex Aut.', @mo),
  ('SPORT 2.0 16V 156cv 5p', @mo),
  ('SPORT 2.0 4x2 Flex 16V Aut.', @mo),
  ('SPORT 2.0 4x4 flex 16V Aut.', @mo),
  ('SPORT T270 1.3 TB 4x2 Flex Aut.', @mo),
  ('T270 80 Anos 1.3 TB 4x2 Flex Aut', @mo),
  ('TD 350 80 Anos 2.0 4x4 Die. Aut.', @mo),
  ('TRAILHAWK 2.0 4x4 Dies. 16V Aut.', @mo),
  ('TRAILHAWK TD350 2.0 4x4 Die. Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Gladiator');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Rubicon 3.6 V6 284 cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Grand Cherokee');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4XE 2.0 T. Aut. (Híbrido)', @mo),
  ('80 Anos 3.0 TB Dies.Aut.', @mo),
  ('Laredo 2.7 I-5 TB Dies.', @mo),
  ('Laredo 3.1 TB Diesel Aut', @mo),
  ('Laredo 3.6 4x4 V6 Aut.', @mo),
  ('Laredo 4.0 Aut.', @mo),
  ('Lim. 75 anos 3.6 4x4 Aut.', @mo),
  ('Limit.4.7 Quad.Drive Aut.', @mo),
  ('Limited 3.0 TB Dies. Aut', @mo),
  ('Limited 3.6 4x4 V6 Aut.', @mo),
  ('Limited 4.7 Aut.', @mo),
  ('Limited 5.2 Aut.', @mo),
  ('Limited 5.7 326cv', @mo),
  ('Limited LX 5.9', @mo),
  ('Nova Limited 4.7', @mo),
  ('Overland 5.7 326cv', @mo),
  ('SRT8 6.1 V8 16V 432cv Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Renegade');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 4x2 Flex 16V Aut.', @mo),
  ('1.8 4x2 Flex 16V Mec.', @mo),
  ('75 Anos 1.8 4X2 Flex 16V Aut.', @mo),
  ('75 Anos 2.0 4X4 TB Diesel Aut.', @mo),
  ('Altitude T270 1.3 TB Flex Aut.', @mo),
  ('Custom 1.8 4x2 Flex 16V Mec.', @mo),
  ('Custom 2.0 4x4 TB Diesel Aut.', @mo),
  ('Lim. Edit. 1.8 4x2 Flex 16V Aut', @mo),
  ('Limited 1.8 4x2 Flex 16V Aut.', @mo),
  ('Limited 2.0 4x4 TB Diesel Aut.', @mo),
  ('Lo. Night Eagle 1.3 TB Flex Aut', @mo),
  ('Long. T270 1.3 TB 4x2 Flex Aut.', @mo),
  ('Longitude 1.8 4x2 Flex 16V Aut.', @mo),
  ('Longitude 2.0 4x4 TB Diesel Aut', @mo),
  ('Longitude T270 1.3 Turbo 4x2 Aut.', @mo),
  ('Moab 2.0 4x4 TB Diesel Aut.', @mo),
  ('Night Eagle 1.8 4x2 Flex Aut.', @mo),
  ('Night Eagle 2.0 4x4 TB Die. Aut', @mo),
  ('S T270 1.3 TB 4x4 Flex Aut.', @mo),
  ('SAHARA T270 1.3 TB 4x2 Flex Aut', @mo),
  ('SAHARA T270 1.3 Turbo 4x2 Aut.', @mo),
  ('Sport 1.8 4x2 Flex 16V Aut.', @mo),
  ('Sport 1.8 4x2 Flex 16V Mec.', @mo),
  ('Sport 2.0 4x4 TB Diesel Aut.', @mo),
  ('Sport Altitude 1.3 TB Flex Aut.', @mo),
  ('Sport T270 1.3 TB 4x2 Flex Aut.', @mo),
  ('STD 1.8 4x2 Flex 16v Aut.', @mo),
  ('T270 1.3 TB 4x2 Flex Aut.', @mo),
  ('Trailhawk 2.0 4x4 TB Diesel Aut', @mo),
  ('Trailhawk T270 1.3 TB Flex Aut.', @mo),
  ('Willys 2.0 4x4 TB Diesel Aut.', @mo),
  ('Willys T270 1.3 TB 4x4 Flex Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Wrangler');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.0/Sport 4.0', @mo),
  ('RUBICON 2.0 Turbo 4x4 4p Aut.', @mo),
  ('SAHARA 2.0 4x4 271cv 2p Aut.', @mo),
  ('SAHARA 3.8 V6 199cv 2p', @mo),
  ('SAHARA Overland 2.0 4x4 4p Aut.', @mo),
  ('Sport 3.6 V6 284cv 2p', @mo),
  ('Sport 3.8 V6 199cv', @mo),
  ('Unlimited 75 Anos 3.6 V6 284cv', @mo),
  ('Unlimited 80 Anos 2.0 TB 4p', @mo),
  ('Unlimited SAHARA 2.0 TB 4p Aut', @mo),
  ('Unlimited SAHARA 3.6 V6 4p', @mo),
  ('Unlimited SAHARA 3.8 V6 4p', @mo),
  ('Unlimited Sport 3.6 V6 284cv 4p', @mo),
  ('Unlimited Sport 3.8 V6 199cv', @mo);

-- Jetour
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Jetour');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('S06', @m),
  ('T1', @m),
  ('T2', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S06');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Advance', @mo),
  ('Premium', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T1');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Advance', @mo),
  ('Premium', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T2');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Advance', @mo),
  ('Premium', @mo),
  ('Premium XWD', @mo);

-- JINBEI
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'JINBEI');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Topic', @m),
  ('VKN', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Topic');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ESCOLAR L 2.2 8V/ 2.0 16V 4p', @mo),
  ('ESCOLAR SL 2.2 8V/ 2.0 16V 4p', @mo),
  ('FURGAO L 2.2 8V/ 2.0 16V 4p', @mo),
  ('VAN L 2.2 8V/ 2.0 16V 4p', @mo),
  ('VAN Lon./GRAN TOPIC SL', @mo),
  ('VAN SL 2.2 8V/ 2.0 16V 4p', @mo),
  ('VAN STD 2.0 16V 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'VKN');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('VAN 2.0 16V 4p', @mo);

-- JPX
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'JPX');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Jipe Montez', @m),
  ('Picape', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Jipe Montez');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4x4 CD Teto de Lona Diesel', @mo),
  ('4x4 CD Teto Rígido Diesel', @mo),
  ('Std 4x4 Teto de Lona Diesel', @mo),
  ('Std 4x4 Teto Rígido Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Picape');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Montez 1.9 4x4 Diesel', @mo);

-- Kia Motors
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Kia Motors');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Besta', @m),
  ('Bongo', @m),
  ('Cadenza', @m),
  ('Carens', @m),
  ('Carnival', @m),
  ('Cerato', @m),
  ('Ceres', @m),
  ('Clarus', @m),
  ('EV5', @m),
  ('EV9', @m),
  ('Grand Carnival', @m),
  ('Magentis', @m),
  ('Mohave EX', @m),
  ('Niro', @m),
  ('Opirus', @m),
  ('Optima', @m),
  ('Picanto', @m),
  ('Quoris', @m),
  ('RIO', @m),
  ('Sephia', @m),
  ('Shuma', @m),
  ('Sorento', @m),
  ('Soul', @m),
  ('Sportage', @m),
  ('Stinger', @m),
  ('Stonic', @m),
  ('Tasman', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Besta');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EST 2.7 Diesel (10/12lug.)', @mo),
  ('EST Full 2.7 Diesel (10/12lug.)', @mo),
  ('Furgão 2.2 Diesel', @mo),
  ('Furgão 2.7 Diesel', @mo),
  ('Furgão Grand 3.0 Diesel', @mo),
  ('GS 2.7 8V 12L Diesel', @mo),
  ('GS Full 2.7 Diesel', @mo),
  ('GS Grand 3.0 8V 16L Diesel', @mo),
  ('ST 2.2 Diesel (12lug.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Bongo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('K-2400 2.4 Diesel', @mo),
  ('K-2500 2.5 4x2 TB Diesel', @mo),
  ('K-2500 2.5 4x4 TB Diesel', @mo),
  ('K-2700 2.7 4x2/4x4 Diesel', @mo),
  ('K-2700 2.7 4x4 Basculante Diesel', @mo),
  ('K-2700 2.7 4x4 CD Diesel', @mo),
  ('K-3500/K-3600/110 3.6 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cadenza');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EX 3.5 V6 24V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Carens');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EX 2.0 16V Aut.', @mo),
  ('LS 1.8 16V 130cv Aut.', @mo),
  ('LS 1.8 16V 130cv Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Carnival');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 V6', @mo),
  ('EX 1.6 TGDI 16V Aut.', @mo),
  ('EX 3.5 V6 24V 276/272cv Aut.', @mo),
  ('EX 3.8 V6 24V 242cv Aut.', @mo),
  ('GS 2.9 TDI 16V 125cv Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cerato');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16 V Flex Mec.', @mo),
  ('1.6 16V Flex Aut.', @mo),
  ('1.6 16V Aut.', @mo),
  ('1.6 16V Mec.', @mo),
  ('2.0 16V Aut.', @mo),
  ('EX 2.0 16V Flex Aut.', @mo),
  ('KOUP 2.0 16V Aut.', @mo),
  ('SX 2.0 16V Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ceres');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Pick-Up 2.2 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Clarus');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLX 2.0 16V Aut.', @mo),
  ('GLX 2.0 16V Mec', @mo),
  ('Wagon GLX 2.0 16V Aut.', @mo),
  ('Wagon GLX 2.0 16V Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EV5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Land (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EV9');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GTL (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Grand Carnival');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EX 3.3 V6 24V 270cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Magentis');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EX 2.0 16V Aut.', @mo),
  ('LX 2.0 16V Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Mohave EX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6 24V 256cv TB Dies. Aut.', @mo),
  ('3.8 V6 24V 275cv 4x4 Aut.', @mo),
  ('4.6 V8 32V 340cv 4x4 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Niro');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EX 1.6 GDI (Híbrido)', @mo),
  ('SX Prestige 1.6 GDI (Híbrido)', @mo),
  ('SX Rio Limited Edt 1.6 GDI (Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Opirus');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GL 3.5 V6 24V 202cv Aut.', @mo),
  ('GL 3.8 V6 24V 267cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Optima');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 165cv Aut.', @mo),
  ('2.4 16V 180cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Picanto');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EX 1.1/1.0/ 1.0 Flex Aut.', @mo),
  ('EX 1.1/1.0/ 1.0 Flex Mec.', @mo),
  ('GT 1.0 12V Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Quoris');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EX 3.8 V6 24V 294cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RIO');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('EX 1.6 Flex Aut.', @mo),
  ('LX 1.6 Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sephia');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GTX 1.5 16V', @mo),
  ('GTX 1.6', @mo),
  ('LS 1.5 16V Aut.', @mo),
  ('LS 1.5 16V Mec.', @mo),
  ('SLX', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Shuma');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LS 1.5 16V Aut.', @mo),
  ('LS 1.5 16V Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sorento');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.4 16V 4x2 Aut.', @mo),
  ('2.4 16V 4x4 Aut.', @mo),
  ('3.3 V6 24V 270cv 4x2 Aut.', @mo),
  ('3.5 V6 24V 4x2 Aut.', @mo),
  ('3.5 V6 24V 4x4 Aut.', @mo),
  ('EX 2.2 16V 4x4 Aut. Diesel', @mo),
  ('EX 2.5 140/170cv 4x4 Aut.Diesel', @mo),
  ('EX 2.5 16V 4x4 Mec. Diesel', @mo),
  ('EX 3.5 V6 24V 197cv 4x4 Aut.', @mo),
  ('EX 3.8 V6 24V 267cv 4x4 Aut.', @mo),
  ('LX 2.5 16V 140cv 4x4 Aut. Diesel', @mo),
  ('LX 2.5 16V 140cv 4x4 Mec. Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Soul');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6/ 1.6 16V FLEX Aut.', @mo),
  ('1.6/ 1.6 16V FLEX Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sportage');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V Aut.', @mo),
  ('2.0 8V TB-IC Diesel', @mo),
  ('DLX 2.0 16V Aut.', @mo),
  ('DLX 2.0 16V Mec.', @mo),
  ('DLX 2.2 Diesel Mec', @mo),
  ('EX 1.6 T-GDI (Híbrido)', @mo),
  ('EX 2.0 16V Mec.', @mo),
  ('EX 2.0 16V/ 2.0 16V Flex Aut.', @mo),
  ('EX 2.7 V6 4x4 Aut.', @mo),
  ('EX Prestige 1.6 T-GDI (Híbrido)', @mo),
  ('Grand 2.0 16V Aut.', @mo),
  ('Grand 2.0 16V Mec.', @mo),
  ('Grand 2.0 8V TB-IC Diesel', @mo),
  ('GTE 2.2 4x4 Diesel', @mo),
  ('LX 2.0 16V 142cv 5p', @mo),
  ('LX 2.0 16V/ 2.0 16V Flex Aut.', @mo),
  ('LX 2.0 16V/ 2.0 16V Flex Mec.', @mo),
  ('Targa 2.0 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Stinger');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GT 3.3 V6 Bi-Turbo 370cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Stonic');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SX 1.0 TB Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tasman');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CD GL 2.2 TB 16V 4X4 Aut.', @mo);

-- Lada
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Lada');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Laika', @m),
  ('Niva', @m),
  ('Samara', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Laika');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.5', @mo),
  ('1.6', @mo),
  ('SW 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Niva');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 RC/ Pantanal 4x4', @mo),
  ('1.6/ CD 4x4', @mo),
  ('1.7i 4x4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Samara');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.3/ 1.5', @mo);

-- LAMBORGHINI
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'LAMBORGHINI');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Aventador', @m),
  ('Gallardo', @m),
  ('Huracan', @m),
  ('Huracán', @m),
  ('Revuelto', @m),
  ('Temerário', @m),
  ('Urus', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Aventador');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('770-4 SVJ ROADSTER V12', @mo),
  ('LP 700-4', @mo),
  ('LP 700-4 ROADSTER', @mo),
  ('LP 770-4 SVJ', @mo),
  ('S LP 740-4', @mo),
  ('S LP 740-4 ROADSTER', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Gallardo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe LP550-2 Bicolore', @mo),
  ('Coupe LP560-4', @mo),
  ('Coupe LP570-4 Sup.Trof.Stradale', @mo),
  ('Coupe Superleggera LP570-4', @mo),
  ('Coupe Valentino Balboni LP550-2', @mo),
  ('Spyder LP560-4', @mo),
  ('Spyder Performante LP570-4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Huracan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe LP 610-4', @mo),
  ('Coupe Performante LP 640-4', @mo),
  ('Coupe RWD LP 580-2', @mo),
  ('EVO Coupe LP 640-4', @mo),
  ('EVO Spyder LP 640-4', @mo),
  ('LP 640-2 STO', @mo),
  ('Spyder LP 610-4', @mo),
  ('Tecnica Coupe LP 640-2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Huracán');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sterrato 5.2 V10 LP 610-4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Revuelto');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe LP 1015-4 (Hib)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Temerário');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.0 V8 Bi-Turbo', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Urus');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('650-4', @mo),
  ('Performante 650-4', @mo),
  ('S 650-4', @mo),
  ('SE 800-4 V.8 BT (Híbrido)', @mo);

-- Land Rover
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Land Rover');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Range', @m),
  ('Def', @m),
  ('Defe', @m),
  ('Defender', @m),
  ('Disc', @m),
  ('Discov', @m),
  ('Discovery', @m),
  ('Discovery3', @m),
  ('Discovery4', @m),
  ('Freelander', @m),
  ('Freelander2', @m),
  ('New', @m),
  ('Range Rover', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Range');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('R. VEL. R-Dyn. S 2.0 Aut. (Híbrido)', @mo),
  ('R. Autobio. 3.0 I6 TB Die. (Híb.)', @mo),
  ('R. Autobio. 3.0 I6 TB P550e (Híb.)', @mo),
  ('R. EVO HSE Si4 R-Dyn.2.0 300cv Aut', @mo),
  ('R. EVO SE Si4 R-Dyn. 2.0 Flex Aut.', @mo),
  ('R. First Ed.3.0 350cv Die.(Hib.)', @mo),
  ('R. First.Ed. 4.4 V8 TB 530cv Aut.', @mo),
  ('R. Sp. Dyn. HSE 3.0I6 Die. (Hib.)', @mo),
  ('R. Sp. Dynam. HSE 3.0 (Híb.)', @mo),
  ('R. Sp. First Ed. 3.0 510cv (Híb.)', @mo),
  ('R. Sp.SVR AWD 5.0 Carbon Ed. Aut.', @mo),
  ('R. Sport Autob. 3.0 SDV6 Diesel', @mo),
  ('R. Sport Autob. 3.0 TB Die. (Híb.)', @mo),
  ('R. Sport Autob. Dyn.SCHA. 5.0 V8', @mo),
  ('R. Sport Autob. SUPERCHAR. 5.0 V8', @mo),
  ('R. Sport Autobio. 3.0 P550e (Híb.)', @mo),
  ('R. Sport HSE Dyna. 3.0 SDV6 Dies.', @mo),
  ('R. Sport HSE Dynamic SUPERC.5.0 V8', @mo),
  ('R. Sport HSE SUPERCHARGED 3.0 V6', @mo),
  ('R. Sport HST SUPERCHARGED 3.0 V6', @mo),
  ('R. Sport L. Edit. SCHARGED 3.0 V6', @mo),
  ('R. Sport TECH S 3.0 SDV6 Diesel', @mo),
  ('R. SV Autob. Sc. Dyn. SWB 5.0 V8', @mo),
  ('R. SV Autob. Super. LWB 5.0 V8', @mo),
  ('R. SVAutobiography SUPERC. 5.0 V8', @mo),
  ('R. VE. R-Dyn HSE 2.0 4X4 300cv Aut', @mo),
  ('R. VE. R-Dyn S 2.0 4X4 300cv Aut.', @mo),
  ('R. VE. R-Dyn SE 2.0 4x4 250cv Aut.', @mo),
  ('R. VE. R-Dyn SE 2.0 4x4 300cv Aut.', @mo),
  ('R. VEL. R-Dyn HSE 3.0 Aut.(Híb.)', @mo),
  ('R. VEL. R-Dyn. 2.0 4x4 250cv Aut.', @mo),
  ('R. VEL. R-Dyn. 2.0 4x4 300cv Aut.', @mo),
  ('R. VEL. R-Dyn. HSE 2.0 Aut. (Híb.)', @mo),
  ('R. VEL. R-Dyn. SE 3.0 Aut. (Híb.)', @mo),
  ('R. VELAR 2.0 4x4 TB 250cv Aut.', @mo),
  ('R. VELAR 3.0 4x4 V6 380cv Aut.', @mo),
  ('R. VELAR Autobio. 2.0 P400e (Híb)', @mo),
  ('R. VELAR First Ed. 3.0 4x4 V6 Aut.', @mo),
  ('R. VELAR HSE 2.0 4x4 TB 250cv Aut.', @mo),
  ('R. VELAR HSE 3.0 4x4 V6 380cv Aut', @mo),
  ('R. VELAR HSE Dyn 2.0 P400e (Hib.)', @mo),
  ('R. Velar HSE R-Dyn 2.0 Si4(Hib.)', @mo),
  ('R. VELAR R-Dyn. 3.0 4x4 V6 Aut.', @mo),
  ('R. VELAR R-Dyn. HSE 2.0 4x4 TB Aut', @mo),
  ('R. VELAR R-Dyn. HSE 3.0 4x4 V6 Aut', @mo),
  ('R. VELAR R-Dyn. S 2.0 4x4 TB Aut.', @mo),
  ('R. VELAR R-Dyn. S 3.0 4x4 V6 Aut.', @mo),
  ('R. VELAR R-Dyn. SE 3.0 4x4 V6 Aut.', @mo),
  ('R. VELAR S 2.0 4x4 TB 250cv Aut.', @mo),
  ('R. VELAR S 2.0 4x4 TB 300cv Aut.', @mo),
  ('R. VELAR S 3.0 4x4 V6 380cv Aut.', @mo),
  ('R. VELAR SE 2.0 4x4 TB 250cv Aut.', @mo),
  ('R. VELAR SE 3.0 4x4 V6 380cv Aut.', @mo),
  ('R. VELAR SV Autob. Super.C 5.0 V8', @mo),
  ('R. Vogue 4.4 TDV8/SDV8 Diesel Aut.', @mo),
  ('R. Vogue Autob. SUPERCHAR. 5.0 V8', @mo),
  ('R. Vogue/4.4 Autobio. SDV8 Diesel.', @mo),
  ('R.EVO DYNAMIC. BLACK 2.0 Aut. 5p', @mo),
  ('R.EVO STYLE 2.0 Aut. 5p', @mo),
  ('R.EVOQ. HSE Dyn. Convers 2.0 Aut.', @mo),
  ('R.EVOQUE Autob. 2.0 P250 Flex Aut', @mo),
  ('R.EVOQUE Dynamic 2.0 Aut 3p', @mo),
  ('R.EVOQUE Dynamic 2.0 Aut 5p', @mo),
  ('R.EVOQUE Dynamic Tech 2.0 Aut 3p', @mo),
  ('R.EVOQUE Dynamic Tech 2.0 Aut 5p', @mo),
  ('R.EVOQUE HSE Dyna. 2.0 Dies. Aut.', @mo),
  ('R.EVOQUE LONDON 2.0 240cv Aut. 5p', @mo),
  ('R.EVOQUE ONE SICILIAN 2.0 Aut. 5p', @mo),
  ('R.EVOQUE Prestige 2.0 Aut. 5p', @mo),
  ('R.EVOQUE Prestige 2.2 5p Dies.', @mo),
  ('R.EVOQUE Prestige Tech 2.0 Aut 5p', @mo),
  ('R.EVOQUE PrestigeTech 2.2 5p Dies.', @mo),
  ('R.EVOQUE Pure 2.0 Aut. 5p', @mo),
  ('R.EVOQUE Pure 2.0 Aut. 3p', @mo),
  ('R.EVOQUE SD4 HSE 2.2 Dies. Aut.5p', @mo),
  ('R.EVOQUE SD4 SE 2.2 Dies. Aut. 5p', @mo),
  ('R.EVOQUE Si4 HSE Dyn. 2.0/Flex Aut', @mo),
  ('R.EVOQUE Si4 SE 2.0 Aut.5p/Flex', @mo),
  ('R.EVOQUE Si4 SE Dynamic 2.0 Aut.', @mo),
  ('R.Sp. First.Ed.4.4 V8 TB 530cv Aut', @mo),
  ('R.Sp. SE 3.0 4x4 I6 TB Die. (Híb.)', @mo),
  ('R.Sp.HSE Dyn.Bl. 3.0 I6 Die.(Híb.)', @mo),
  ('R.Sport First.Ed.3.0 I6 Die.(Hib.)', @mo),
  ('R.Sport HSE 3.0 I6 TB Die. (Híb.)', @mo),
  ('R.Sport HSE Dynamic 4.4 SDV8 Dies.', @mo),
  ('R.Sport SE 3.0 4x4 TDV6/SDV6 Dies.', @mo),
  ('R. SP.HSE Dyn.BL. 2.0 Si4(Hibrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Def');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('90 X-DY D350 HSE Die. Aut.( Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Defe');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('110 X-DY HSE P400e Aut. (Hib.)', @mo),
  ('110 X-DY SE D300 Die Aut. (Hib.)', @mo),
  ('110 X-DY.HSE D300 Die Aut. (Híb.)', @mo),
  ('110 X-DY.HSE D350 Die Aut. (Híb.)', @mo),
  ('130 Outbound D300 Die. Aut. (Hib.)', @mo),
  ('130 X-DY S 3.0 I6 Die.Aut.(Hib.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Defender');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('110 2.0 Turbo HSE Si4 Aut.', @mo),
  ('110 2.0 Turbo S Si4 Aut.', @mo),
  ('110 2.0 Turbo SE Si4 Aut.', @mo),
  ('110 2.4 122cv T.Diesel', @mo),
  ('110 2.5 HCPU TDi CS Diesel', @mo),
  ('110 2.5 TDi County Pers. Diesel', @mo),
  ('110 2.5 TDi Hard Top Diesel', @mo),
  ('110 2.5 TDi High Capacity Dies.', @mo),
  ('110 2.5 TDi Personel Diesel', @mo),
  ('110 75th 3.0 Diesel Aut. (Hib.)', @mo),
  ('110 HSE D300 Die. Aut.(Híb.)', @mo),
  ('110 LE FIRE & ICE 2.4 T. Diesel', @mo),
  ('110 RAW 2.4 122cv T. Diesel', @mo),
  ('110 SVX Lim.Edit. 2.4 T.Diesel', @mo),
  ('110 TD5 2.5 4x4 Diesel', @mo),
  ('110 TDI County SW Diesel', @mo),
  ('110 TDI SW Diesel', @mo),
  ('110 TROPHY Edition 3.0 D350 4X4 Aut.', @mo),
  ('110 X D300 Die. Aut. (Híb.)', @mo),
  ('110 X D350 Die. Aut. (Híb.)', @mo),
  ('110 X P400e Aut. (Hibrido)', @mo),
  ('110 X-DY S D300 Die Aut. (Hib.)', @mo),
  ('130 Chassis CD Diesel', @mo),
  ('130 High CAP Diesel', @mo),
  ('130 TDI CD Diesel', @mo),
  ('130 X 3.0 I6 D350.Aut.(Hibrido)', @mo),
  ('130 X 3.0 I6 Die.Aut.(Hibrido)', @mo),
  ('90 2.0 Turbo SE Si4 Aut.', @mo),
  ('90 2.4 122cv T.Diesel', @mo),
  ('90 2.5 TDi CS Diesel', @mo),
  ('90 D300 HSE Diesel Aut.( Hibr.)', @mo),
  ('90 D300 S Diesel Aut. (Hibrido)', @mo),
  ('90 LE FIRE & ICE 2.4 T. Diesel', @mo),
  ('90 RAW 2.4 122cv T.Diesel', @mo),
  ('90 Soft Top Diesel', @mo),
  ('90 SVX Lim.Edit. 2.4 T.Diesel', @mo),
  ('90 TDI CSW Diesel', @mo),
  ('90 TDI Hard Top Diesel', @mo),
  ('90 TDI SW Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Disc');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sp. S 2.0 4x4 Dies. Aut. (Híb.)', @mo),
  ('Sp. SE Dyn 2.0 D200 Die.Aut.(Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Discov');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Metrop. Edt. 3.0 4x4 Die. (Híb.)', @mo),
  ('Sp. HSE 2.0 TB 240cv Die. Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Discovery');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Dyn HSE 3.0 4x4 Die. (Hib.)', @mo),
  ('ES 3.9 V8', @mo),
  ('ES 4.0 V8 Aut.', @mo),
  ('ES TD5 2.5 4x4 4p Diesel Aut.', @mo),
  ('ES TD5 2.5 4x4 4p Diesel Mec.', @mo),
  ('First Ed. 3.0 TD6 4x4 Die. Aut', @mo),
  ('HSE 3.0 I6 Diesel Aut.', @mo),
  ('HSE 3.0 V6 4x4 Aut.', @mo),
  ('HSE 3.0 V6 4x4 TD6 Diesel Aut.', @mo),
  ('HSE Lux. 3.0 TD6 4x4 Die. Aut.', @mo),
  ('HSE Lux. 3.0 V6 4x4 Aut.', @mo),
  ('R- Dyn HSE 3.0 4x4 Die. (Hib.)', @mo),
  ('RAW 3.0 4x4 TDV6 Diesel Aut.', @mo),
  ('R-Dynamic S 3.0 4x4 Die (Hib.)', @mo),
  ('S 3.0 V6 4x4 Aut.', @mo),
  ('S 3.0 V6 4x4 TD6 Diesel Aut.', @mo),
  ('SE 3.0 I6 Diesel Aut.', @mo),
  ('SE 3.0 V6 4x4 Aut.', @mo),
  ('SE 3.0 V6 4x4 TD6 Diesel Aut.', @mo),
  ('Sp. SE 2.0 4x4 Dies Aut.(Híb.)', @mo),
  ('Sp. SE Dyn 2.0 P250 Flex Aut.', @mo),
  ('Sp. SE Dyn 2.0 TB Die.(Híb.)', @mo),
  ('Sp. SE R-Dyn 2.0 TB Die.(Híb.)', @mo),
  ('Sport BLACK 2.2 4x4 Dies. Aut.', @mo),
  ('Sport HSE 2.0 4x4 Aut/ Flex', @mo),
  ('Sport HSE 2.0 4x4 Diesel Aut.', @mo),
  ('Sport HSE 2.2 4x4 Diesel Aut.', @mo),
  ('Sport HSE L. 2.0 4x4 Die. Aut.', @mo),
  ('Sport HSE L. 2.2 4x4 Die. Aut.', @mo),
  ('Sport HSE Lux. 2.0 4x4 /Flex', @mo),
  ('Sport Landmark 2.0 4x4 Aut.', @mo),
  ('Sport Landmark 2.0 4x4 Diesel', @mo),
  ('Sport S 2.0 4x4 Flex Aut.', @mo),
  ('Sport SE 2.0 4x4 Aut./Flex', @mo),
  ('Sport SE 2.2 4x4 Diesel Aut.', @mo),
  ('Sport SE R-Dyn 2.0 Si4 Flex', @mo),
  ('TDI 2.5 Diesel', @mo),
  ('Tempest 3.0 D350 4X4 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Discovery3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('HSE 2.7 4x4 TDI Diesel Aut.', @mo),
  ('HSE 4.4 V8 4x4 299cv Aut.', @mo),
  ('S 2.7 4x4 TDI Diesel Aut.', @mo),
  ('S 4.0 V6 4x4 215cv Aut.', @mo),
  ('SE 2.7 4x4 TDI Diesel Aut.', @mo),
  ('SE 4.0 V6 4x4 215cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Discovery4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('B&W 3.0 4x4 TDV6 Diesel Aut.', @mo),
  ('BLACK 3.0 4x4 SDV6 Dies. Aut.', @mo),
  ('GRAPHITE 3.0 4x4 SDV6 Die.Aut', @mo),
  ('HSE 2.7 4x4 TDV6 Diesel Aut.', @mo),
  ('HSE 3.0 4x4 TDV6/SDV6 Die.Aut', @mo),
  ('HSE 5.0 4x4 Aut.', @mo),
  ('S 2.7 4x4 TDV6 Diesel Aut.', @mo),
  ('S 3.0 4X4 TDV6 Diesel Aut.', @mo),
  ('SE 2.7 4x4 TDV6 Diesel Aut.', @mo),
  ('SE 3.0 4x4 TDV6/SDV6 Die.Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Freelander');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 16v', @mo),
  ('HSE 2.5 V6 24V 177cv 5p', @mo),
  ('HSE3 2.5 V6 24V 177cv 3p', @mo),
  ('S/ SE 2.5 V6 24V 177cv 5p', @mo),
  ('SE3 2.5 V6 24V 177cv 3p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Freelander2');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Dynamique 2.2 SD4 T. Diesel', @mo),
  ('HSE 2.2 SD4 190cv T.Diesel', @mo),
  ('I6 HSE 3.2 232cv Aut. 5p', @mo),
  ('I6 LE Sport 3.2 232cv Aut. 5', @mo),
  ('I6 S 3.2 232cv Aut. 5p', @mo),
  ('I6 S Sport 3.2 232cv Aut. 5p', @mo),
  ('I6 SE 3.2 232cv Aut. 5p', @mo),
  ('S 2.2 SD4 190cv T.Diesel', @mo),
  ('SE 2.2 SD4 190cv T.Diesel', @mo),
  ('Si4 Dyn. 2.0 240cv Aut. 5p', @mo),
  ('Si4 HSE 2.0 240cv Aut. 5p', @mo),
  ('Si4 S 2.0 240cv Aut. 5p', @mo),
  ('Si4 SE 2.0 240cv Aut. 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'New');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Range/Range Rover Vogue 3.9 V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Range Rover');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Autobio 4.4 V8 TB 530cv Aut.', @mo),
  ('Autobio. 2.0 Si4 (Hibrido)', @mo),
  ('Autobio.3.0 I6 510cv (Híb.)', @mo),
  ('EVOQUE Autobiography 2.0 Aut', @mo),
  ('EVOQUE HSE 2.0 Diesel Aut.', @mo),
  ('EVOQUE Pure Tech 2.0 Aut. 3p', @mo),
  ('EVOQUE Pure Tech 2.0 Aut. 5p', @mo),
  ('EVOQUE SE 2.0 Diesel Aut.', @mo),
  ('EVOQUE Zanzibar 2.0 Aut. 5p', @mo),
  ('HSE 3.0 I6 510cv (Híbrido)', @mo),
  ('HSE 4.4/ 4.6', @mo),
  ('SE 3.0 I6 510cv (Híbrido)', @mo),
  ('SE 4.4 V8 TB 530cv Aut.', @mo),
  ('SE. 3.0 I6 TB Die. (Híb.)', @mo),
  ('Sport 3.6 TDV8 272cv Diesel', @mo),
  ('Sport Dynamic HSE 3.0 4X4 P550e', @mo),
  ('Sport HSE 2.0 Si4 (Híbrido)', @mo),
  ('Sport HSE 2.7 190cv TB Dies.', @mo),
  ('Sport HSE 3.0 4x4 SDV6 Dies.', @mo),
  ('Sport HSE 4.4 V8 32V 295cv', @mo),
  ('Sport HSE SUPERCHAR. 5.0 V8', @mo),
  ('Sport SE 2.7 190cv TB Diesel', @mo),
  ('Sport SE 3.6 TDV8 272cv Dies', @mo),
  ('Sport SE 4.4 V8 32V 299cv', @mo),
  ('Sport SE Dy.3.0 I6 Die.(Hib)', @mo),
  ('Sport SE SUPERCH. 3.0 Aut.', @mo),
  ('Sport SUPERCHAGED 4.2 V8', @mo),
  ('Sport SVR SUPERCHA. 5.0 V8', @mo),
  ('SUPERCHARGED 4.2 V8 396cv', @mo),
  ('SV 3.0 I6 TB (Híb.)', @mo),
  ('SV 4.4 V8 TB 530cv Aut.', @mo),
  ('SV. 3.0 I6 TB Die. (Híb.)', @mo),
  ('Vogue 3.0 TDV6 Diesel Aut.', @mo),
  ('Vogue 3.6 TDV8 272cv Diesel', @mo),
  ('Vogue HSE 3.0 TDV6 Diesel', @mo),
  ('Vogue SE 2.0 Si4 (Híbrido)', @mo),
  ('Vogue SE 4.4 SDV8 Dies. Aut', @mo),
  ('Vogue SE SUPERCHAR. 5.0 V8', @mo);

-- Leapmotor
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Leapmotor');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('B10', @m),
  ('C10', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'B10');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('(Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C10');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('(Elétrico)', @mo),
  ('(Híbrido)', @mo);

-- Lexus
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Lexus');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('CT200h', @m),
  ('ES-300', @m),
  ('ES300h', @m),
  ('ES-330', @m),
  ('ES-350', @m),
  ('GS', @m),
  ('IS-250', @m),
  ('IS-300', @m),
  ('LS', @m),
  ('LS-460L', @m),
  ('NX-200t', @m),
  ('NX-300', @m),
  ('NX-300h', @m),
  ('NX-350h', @m),
  ('NX-450h+', @m),
  ('RX', @m),
  ('RX-350', @m),
  ('RX-450h', @m),
  ('RX-450h+', @m),
  ('RX-500h', @m),
  ('RZ-500e', @m),
  ('SC', @m),
  ('UX-250h', @m),
  ('UX-300h', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CT200h');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 16V Aut. (Híbrido)', @mo),
  ('F-Sport 1.8 16V Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ES-300');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ES300h');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 16V Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ES-330');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.3 24V 228cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ES-350');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.5 24V 284cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GS');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('300 3.0 V6 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'IS-250');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 24V 208cv Aut.', @mo),
  ('F Sport 2.5 24V 208cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'IS-300');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 24V 231cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'LS');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('400 4.0', @mo),
  ('430 4.3 32V 281cv', @mo),
  ('460 4.6 32V 347cv', @mo),
  ('500h 3.5 V6 24v Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'LS-460L');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.6 V8 32v 347cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'NX-200t');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('F-Sport AWD 2.0 16v 238cv Aut.', @mo),
  ('Luxury AWD 2.0 16V 238cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'NX-300');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Dynamic 4x4 2.0 16V 238cv Aut.', @mo),
  ('F-Sport 4x4 2.0 16V 238cv Aut.', @mo),
  ('Luxury 4x4 2.0 16V 238cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'NX-300h');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Dynamic 4x4 2.5 16V Aut. (Híb.)', @mo),
  ('F-Sport 4x4 2.5 16V Aut. (Híb.)', @mo),
  ('Luxury 4x4 2.5 16V Aut. (Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'NX-350h');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4x4 Dynamic 2.5 16V Aut. (Híb.)', @mo),
  ('4x4 Luxury 2.5 16V Aut. (Híb.)', @mo),
  ('AWD F-Sport 2.5 16V Aut. (Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'NX-450h+');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AWD 2.5 16V Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('300 4x4 3.0 V6 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RX-350');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4x4 3.5 24V Aut.', @mo),
  ('F-Sport 4x4 3.5 24V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RX-450h');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('F-Sport AWD 3.5 24V V6 Aut(Híb.)', @mo),
  ('Luxury AWD 3.5 24V V6 Aut (Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RX-450h+');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AWD 2.5 16V Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RX-500h');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4x4 F-Sport 2.4 16V Aut. (Híb)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RZ-500e');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SC');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('400 4.0 V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'UX-250h');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Dynamic 2.0 16V Aut. (Híbrido)', @mo),
  ('F-Sport 2.0 16V Aut. (Híbrido)', @mo),
  ('Luxury 2.0 16V Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'UX-300h');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V Aut. (Híbrido)', @mo);

-- LIFAN
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'LIFAN');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('320', @m),
  ('530', @m),
  ('620', @m),
  ('Foison', @m),
  ('X60', @m),
  ('X80', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '320');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ELITE 1.3 16V 88cv 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '530');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.5 16V 103cv 4p', @mo),
  ('TALENT 1.5 16V 103cv 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '620');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('TALENT 1.6 16V 106cv 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Foison');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.3 16V 85cv 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X60');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 16V 128cv 5p Mec.', @mo),
  ('VIP 1.8 16V 128cv 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X80');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('VIP 2.0 Turbo 184cv 5p Aut.', @mo);

-- LOBINI
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'LOBINI');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('H1', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'H1');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 20V Turbo 180cv 2p', @mo);

-- Lotus
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Lotus');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Elan', @m),
  ('Esprit', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Elan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('S-2 1.6 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Esprit');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('S-4 2.2 16V', @mo);

-- Mahindra
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Mahindra');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('PIK-UP', @m),
  ('Scorpio', @m),
  ('SUV', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'PIK-UP');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CD 2.2 4X2 (diesel) Mec.', @mo),
  ('CD 2.2 4X4 (diesel) Mec.', @mo),
  ('CS 2.2 4X2 (diesel) Mec.', @mo),
  ('CS 2.2 4X4 (diesel) Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Scorpio');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.6 CD TB Diesel CRDe 4x4', @mo),
  ('2.6 CS/ Chassi TB Dies. CRDe 4x4', @mo),
  ('GLX SUV 2.6 TB Diesel CRDe 4WD', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SUV');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.2 4x4 (diesel) Mec.', @mo);

-- Maserati
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Maserati');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('222', @m),
  ('228', @m),
  ('3200', @m),
  ('430', @m),
  ('Coupé', @m),
  ('Ghibli', @m),
  ('Gran Turismo', @m),
  ('GranCabrio', @m),
  ('GranSport', @m),
  ('GranTurismo', @m),
  ('Levante', @m),
  ('MC20', @m),
  ('Quattroporte', @m),
  ('Shamal', @m),
  ('Spyder', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '222');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SE/SR 2.0 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '228');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '3200');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GT Cupê', @mo),
  ('GT Cupê Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '430');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 V6', @mo),
  ('II 2.0 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Coupé');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CC 4.2 V8 32V 390cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ghibli');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 V6', @mo),
  ('3.0 V6 Aut.', @mo),
  ('GT 2.0 V6 (Híbrido)', @mo),
  ('S Q4 3.0 V6 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Gran Turismo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sport 4.7 V8 32V 460cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GranCabrio');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.7 V8 32V 440cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GranSport');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.2 V8 32V 400cv', @mo),
  ('Spyder 4.2 V8 32V 400cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GranTurismo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.2 V8 32V 405cv', @mo),
  ('MC Stradale 4.7 V8 32V 450cv', @mo),
  ('S 4.7 V8 32V/ MC Line', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Levante');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6 350cv Aut.', @mo),
  ('GT 2.0 330cv Aut. (Híb.)', @mo),
  ('S 3.0 V6 430cv Aut.', @mo),
  ('Trofeo 3.8 V8 590cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'MC20');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6 Bi-Tb Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Quattroporte');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Automatica 4.2 32V 400cv', @mo),
  ('Evolucione Aut.', @mo),
  ('Evolucione Mec.', @mo),
  ('Executive 4.2 32V 400cv', @mo),
  ('GTS 3.8 V8 32V 530cv', @mo),
  ('S 4.7 V8 32V 430cv', @mo),
  ('Sport 4.2 32V 400cv/430cv', @mo),
  ('Sport GT-S 4.7 V8 32V 440cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Shamal');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.2 V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Spyder');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CC 4.2 V8 32V 390cv', @mo),
  ('IE 2.0 V6', @mo);

-- Matra
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Matra');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Pick-Up', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Pick-Up');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4x2 Curto/Longo 2.5 TDI Diesel', @mo),
  ('4x4 Curto/Longo 2.5 TDI Diesel', @mo),
  ('CD 4x2 Curto/Longo 2.5 TDI Dies.', @mo),
  ('CD 4x4 Curto/Longo 2.5 TDI Dies.', @mo);

-- Mazda
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Mazda');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('323', @m),
  ('626', @m),
  ('929', @m),
  ('B2200', @m),
  ('B-2500', @m),
  ('Millenia', @m),
  ('MPV', @m),
  ('MX-3', @m),
  ('MX-5', @m),
  ('Navajo', @m),
  ('Protegé', @m),
  ('RX', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '323');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '626');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLX', @mo),
  ('GT', @mo),
  ('Sedan Aut.', @mo),
  ('Sedan High', @mo),
  ('Sedan Mec.', @mo),
  ('Sedan Top', @mo),
  ('SW', @mo),
  ('SW High', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '929');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('V6 Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'B2200');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Pick-Up 2.2 Diesel', @mo),
  ('Pick-Up CD 2.2 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'B-2500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Pick-Up 2.5 Diesel', @mo),
  ('Pick-Up 4x4 2.5 Diesel', @mo),
  ('Pick-Up CD 4x4 2.5 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Millenia');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'MPV');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Minivan Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'MX-3');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V', @mo),
  ('GS 1.8 V6 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'MX-5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Mec', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Navajo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LX 3.0 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Protegé');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Aut.', @mo),
  ('High', @mo),
  ('Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('7 2.6 Turbo', @mo);

-- Mclaren
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Mclaren');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('540C', @m),
  ('570S', @m),
  ('600LT', @m),
  ('720S', @m),
  ('750S', @m),
  ('765LT', @m),
  ('Artura', @m),
  ('GT', @m),
  ('GTS', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '540C');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 3.8 Bi-Turbo V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '570S');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupé 3.8 Bi-Turbo V8', @mo),
  ('GT Coupé 3.8 Bi-Turbo V8', @mo),
  ('Spider 3.8 Bi-Turbo V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '600LT');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 3.8 Bi-Turbo V8', @mo),
  ('Spider 3.8 Bi-Turbo V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '720S');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 4.0 Bi-Turbo V8 2p', @mo),
  ('Spider 4.0 Bi-Turbo V8 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '750S');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 4.0 Bi-Turbo V8', @mo),
  ('Spider 4.0 Bi-Turbo V8 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '765LT');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 4.0 Bi-Turbo V8', @mo),
  ('Spider 4.0 Bi-Turbo V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Artura');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupe 3.0 V6 2p (Híbrido)', @mo),
  ('Spider 3.0 V6 2p (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GT');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupé 4.0 Bi-Turbo V8 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GTS');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupé 4.0 Bi-Turbo V8 2p', @mo);

-- Mercedes-Benz
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Mercedes-Benz');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('180-D', @m),
  ('190-E', @m),
  ('230-E', @m),
  ('260-E', @m),
  ('300-D', @m),
  ('300-E', @m),
  ('300-SE', @m),
  ('300-SL', @m),
  ('300-TE', @m),
  ('500-E', @m),
  ('500-SEC', @m),
  ('500-SEL', @m),
  ('560-SEL', @m),
  ('A-200', @m),
  ('A-250', @m),
  ('A-35 AMG', @m),
  ('A-45', @m),
  ('C-180', @m),
  ('C-200', @m),
  ('C-220', @m),
  ('C-230', @m),
  ('C-240', @m),
  ('C-250', @m),
  ('C-280', @m),
  ('C-300', @m),
  ('C-320', @m),
  ('C-350', @m),
  ('C-36', @m),
  ('C-43', @m),
  ('C-450', @m),
  ('C-55', @m),
  ('C-63', @m),
  ('CL-500', @m),
  ('CL-600', @m),
  ('CL-63', @m),
  ('CL-65', @m),
  ('CLA-180', @m),
  ('CLA-200', @m),
  ('CLA-250', @m),
  ('CLA-35 AMG', @m),
  ('CLA-45', @m),
  ('Classe', @m),
  ('Classic', @m),
  ('CLC-200', @m),
  ('CLK-230', @m),
  ('CLK-320', @m),
  ('CLK-350', @m),
  ('CLK-430', @m),
  ('CLK-500', @m),
  ('CLK-55', @m),
  ('CLS-350', @m),
  ('CLS-400', @m),
  ('CLS-450', @m),
  ('CLS-500', @m),
  ('CLS-53', @m),
  ('CLS-55', @m),
  ('CLS-63', @m),
  ('E-190', @m),
  ('E-200', @m),
  ('E-220', @m),
  ('E-230', @m),
  ('E-240', @m),
  ('E-250', @m),
  ('E-280', @m),
  ('E-300', @m),
  ('E-320', @m),
  ('E-350', @m),
  ('E-400', @m),
  ('E-420', @m),
  ('E-43', @m),
  ('E-430', @m),
  ('E-500', @m),
  ('E-53', @m),
  ('E-55', @m),
  ('E-63', @m),
  ('EQA', @m),
  ('EQB', @m),
  ('EQC', @m),
  ('EQE', @m),
  ('EQS', @m),
  ('eSprinter', @m),
  ('G-55', @m),
  ('G-63 AMG', @m),
  ('GL-350', @m),
  ('GL-500', @m),
  ('GL-63', @m),
  ('GLA-200', @m),
  ('GLA-250', @m),
  ('GLA-35', @m),
  ('GLA-45', @m),
  ('GLB-200', @m),
  ('GLB-220', @m),
  ('GLB-35', @m),
  ('GLC-220D', @m),
  ('GLC-250', @m),
  ('GLC-300', @m),
  ('GLC-43 AMG', @m),
  ('GLC-63', @m),
  ('GLE-350', @m),
  ('GLE-400', @m),
  ('GLE-43', @m),
  ('GLE-450', @m),
  ('GLE-53', @m),
  ('GLE-63', @m),
  ('GLK-220', @m),
  ('GLK-280', @m),
  ('GLK-300', @m),
  ('GLS-350', @m),
  ('GLS-450', @m),
  ('GLS-500', @m),
  ('GLS-63', @m),
  ('GT', @m),
  ('ML-230', @m),
  ('ML-320', @m),
  ('ML-350', @m),
  ('ML-430', @m),
  ('ML-500', @m),
  ('ML-55', @m),
  ('ML-63', @m),
  ('S-320', @m),
  ('S-400', @m),
  ('S-420', @m),
  ('S-500', @m),
  ('S-500L', @m),
  ('S-55', @m),
  ('S-560L', @m),
  ('S-600', @m),
  ('S-63', @m),
  ('S-65', @m),
  ('SE-500', @m),
  ('SL-280', @m),
  ('SL-320', @m),
  ('SL-350', @m),
  ('SL-400', @m),
  ('SL-500', @m),
  ('SL-55', @m),
  ('SL-600', @m),
  ('SL-63 AMG', @m),
  ('SL-65', @m),
  ('SLC-300', @m),
  ('SLC-43', @m),
  ('SLK-200', @m),
  ('SLK-230', @m),
  ('SLK-250', @m),
  ('SLK-300', @m),
  ('SLK-320', @m),
  ('SLK-350', @m),
  ('SLK-55', @m),
  ('SLS-63 AMG', @m),
  ('Sprin', @m),
  ('Sprinter', @m),
  ('Vito', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '180-D');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Pick-Up/Furgão 2.4 Diesel', @mo),
  ('Van 2.4 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '190-E');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.3', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '230-E');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.3', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '260-E');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '300-D');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '300-E');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '300-SE');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0/3.2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '300-SL');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '300-TE');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Wagon 3.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '500-E');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '500-SEC');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SL', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '500-SEL');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.0/ 5.6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '560-SEL');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A-200');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.3 TB Advance Aut.', @mo),
  ('1.3 TB Hatch Aut.', @mo),
  ('1.3 TB Style Aut.', @mo),
  ('AMG Line 1.3 TB Aut.', @mo),
  ('AMG Line 1.3 TB Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A-250');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 TB Hatch', @mo),
  ('2.0 TB Hatch Vision', @mo),
  ('2.0 TB Launch Edition', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A-35 AMG');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4MATIC 2.0 TB Aut.', @mo),
  ('Laun. Edition 4MATIC 2.0 TB Aut', @mo),
  ('Sedan 4MATIC 2.0 TB Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'A-45');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('S AMG 4MATIC CGI 2.0 TB Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-180');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 Turbo 16V/Flex 16V Aut.', @mo),
  ('CGI Avant. 1.6/1.6 FlexTB 16V Aut.', @mo),
  ('CGI Classic 1.8 16V 156cv Aut.', @mo),
  ('CGI Coupe 1.8 16V 156cv Aut.', @mo),
  ('CGI Coupe Avant. 1.6 TB 16V Aut.', @mo),
  ('CGI Coupe Sport 1.5 TB 16V Aut.', @mo),
  ('CGI Coupe Sport 1.6 TB 16V Aut.', @mo),
  ('CGI Estate Avant. 1.6 TB 16V Aut.', @mo),
  ('CGI Exc. 1.6/1.6 Flex TB 16V Aut.', @mo),
  ('CGI Sport 1.6 TB 16V 156cv Aut.', @mo),
  ('CGI Touring 1.8 16V Aut.', @mo),
  ('CGI Touring Sport 1.6 TB Aut.', @mo),
  ('Classic/Classic Plus/Elegance', @mo),
  ('Kompressor Classic 1.6 16V Aut.', @mo),
  ('Kompressor Classic 1.8 16V 143cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-200');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.5 TB 16V 183cv Aut. (Híbrido)', @mo),
  ('AMG Line EQ Boost 1.5 TB (Hib.)', @mo),
  ('Avantgarde 2.0 TB 16V 184cv Aut.', @mo),
  ('CGI Avantgarde 1.8 16V 184cv Aut.', @mo),
  ('CGI Sport 1.8 TB 16V 184cv Aut.', @mo),
  ('CGI Touring Avantgarde 1.8 16V Aut', @mo),
  ('Classic/Sport', @mo),
  ('Kompressor 2.0 V6 16v 4p Aut.', @mo),
  ('Kompressor Avant.1.8 16V Aut', @mo),
  ('Kompressor Classic 1.8 16V Aut.', @mo),
  ('Sportcoupé Komp. 2.0 16V 163cv Aut', @mo),
  ('Touring Komp. 2.0 16V 163cv 5p Aut', @mo),
  ('Touring Komp. Avant. 1.8 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-220');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Classic/Elegance/Sport', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-230');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Avantgarde 2.5 V6 24V 204cv Aut', @mo),
  ('Komp. Sportcoupé 2.3 16V 197cv Aut', @mo),
  ('Kompressor Avantgarde', @mo),
  ('Sport/ Eleg./Touring Eleg.Plus 2.3', @mo),
  ('Touring Avant. 2.5 24V 204cv Aut.', @mo),
  ('Touring Kompressor', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-240');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AvantGarde 2.4/ 2.6 4p', @mo),
  ('Classic', @mo),
  ('Elegance 2.4', @mo),
  ('Elegance 2.4 V6 24v 4p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-250');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Avantgarde 2.0 TB 211cv Aut.', @mo),
  ('CGI Sport 1.8 16V Aut.', @mo),
  ('CGI Sport Coupe 1.8 16V TB Aut.', @mo),
  ('Sport 2.0 16V 211cv Aut.', @mo),
  ('Sport Coupe 2.0 16V 211cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-280');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Avantgarde 3.0 V6 231cv Aut.', @mo),
  ('Classic/Sport', @mo),
  ('Elegance', @mo),
  ('Touring', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-300');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG Line 2.0 TB Aut. (Híbrido)', @mo),
  ('Anniversary Lim. Edit. 2.0 Aut.', @mo),
  ('Avantgarde 3.0 V6 24V 231cv Aut.', @mo),
  ('Cabriolet 2.0 245/258cv Aut.', @mo),
  ('Coupé Sport 2.0 16V Aut.', @mo),
  ('Estate Avantgarde 2.0 245cv Aut.', @mo),
  ('Sport 2.0 16V Aut.', @mo),
  ('Sport 3.0 V6 231cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-320');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AvantGarde 3.2 V6 24v 4p Aut.', @mo),
  ('Elegance 3.2 V6 24v 4p Aut.', @mo),
  ('Touring 3.2 V6 18v 4p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-350');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Avantgarde/ Elegance 3.5 V6 272cv', @mo),
  ('CGI Sport 3.5 306cv Aut.', @mo),
  ('Sport 3.5 V6 272cv', @mo),
  ('Sportcoupé 3.5 24V 272cv', @mo),
  ('Touring AvantGarde 3.5 24V 272cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-36');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-43');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG', @mo),
  ('AMG 3.0 V6 Bi-Turbo 367cv Aut', @mo),
  ('Coupe AMG 3.0 V6 Bi-Turbo Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-450');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG Sport 3.0 TB 362cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-55');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 24V 367cv Aut.', @mo),
  ('Touring AMG 24V 367cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C-63');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 4.0 V8 Bi-Turbo Aut.', @mo),
  ('AMG 6.2 V8 Aut.', @mo),
  ('AMG S E Perf. F1 Ed. Aut.(Híbrido)', @mo),
  ('AMG S E Performance Aut.(Híbrido)', @mo),
  ('Coupe AMG 6.2 V8 Aut.', @mo),
  ('Coupe AMG Black Series 6.3 V8 Aut.', @mo),
  ('S AMG 4.0 V8 Bi-Turbo Aut.', @mo),
  ('S Coupe AMG 4.0 V8 Bi-Turbo Aut.', @mo),
  ('Touring AMG 6.2 V8 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CL-500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.0/ 5.5', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CL-600');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.0/ 5.5', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CL-63');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 6.2 V8 32V 525cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CL-65');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 6.0 V12 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLA-180');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V 122cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLA-200');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 TB 16V Flex Aut.', @mo),
  ('AMG Line 1.3 TB 16V Aut. (Híb.)', @mo),
  ('First Edition 1.6 TB 16V Aut.', @mo),
  ('Progressive 1.3 TB 16V Aut.(Híb)', @mo),
  ('Urban 1.6 TB 16V/Flex Aut.', @mo),
  ('Vision 1.6 TB 16V Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLA-250');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V TB Aut.', @mo),
  ('Sport 4MATIC 2.0 16V 211cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLA-35 AMG');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4MATIC 2.0 TB Aut.', @mo),
  ('4MATIC 2.0 TB Aut. (Híbrido)', @mo),
  ('Launch Edition 4MATIC 2.0 TB', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLA-45');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 4MATIC CGI 2.0 TB Aut.', @mo),
  ('S AMG 4MATIC CGI 2.0 TB Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Classe');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('A 160 Classic Semi-Aut.', @mo),
  ('A 160 Classic/ Spirit Mec.', @mo),
  ('A 160 Elegance Mec.', @mo),
  ('A 160 Elegance Semi-Aut.', @mo),
  ('A 190 AvantGarde 1.9 8V 125cv Aut', @mo),
  ('A 190 AvantGarde 1.9 8V 125cv Mec', @mo),
  ('A 190 Classic 1.9 Semi-Aut.', @mo),
  ('A 190 Classic/ Spirit 1.9 Mec.', @mo),
  ('A 190 Elegance 1.9 Aut.', @mo),
  ('A 190 Elegance 1.9 Mec.', @mo),
  ('A 190 Elegance 1.9 Semi-Aut.', @mo),
  ('A 200 1.6 TB 16V Style 156cv Aut.', @mo),
  ('A 200 1.6 TB 16V Urban 156cv Aut.', @mo),
  ('A 200 1.6 TB/Flex Aut.', @mo),
  ('A 200 Elegance 2.0 136cv Aut.', @mo),
  ('A 250 2.0 TB Sport Aut.', @mo),
  ('A 45 AMG 4MATIC 2.0 Turbo Aut.', @mo),
  ('B 170 1.7 116cv Aut.', @mo),
  ('B 180 1.7 116cv Aut.', @mo),
  ('B 200 2.0 136cv Aut.', @mo),
  ('B 200 2.0 Turbo 193cv Aut.', @mo),
  ('B 200 CGI 1.6 TB Sport 156cv Aut', @mo),
  ('B 200 CGI 1.6 TB/Flex Aut.', @mo),
  ('R 500 5.0 V8 306cv Aut.', @mo),
  ('R 500 L 5.5 V8 388cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Classic');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLC-200');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Kompressor 1.8 184cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLK-230');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet Kompressor', @mo),
  ('Kompressor', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLK-320');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AvantGarde', @mo),
  ('AvantGarde Cabriolet', @mo),
  ('Elegance', @mo),
  ('Elegance Cabriolet', @mo),
  ('Sport', @mo),
  ('Sport Cabriolet', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLK-350');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Avant./ Elegance 3.5 24V 272cv', @mo),
  ('Avant./Eleg. Cabriolet 3.5 272cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLK-430');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Avantgard Cabriolet 4.3 V8 24v', @mo),
  ('AvantGarde 4.3', @mo),
  ('Elegance', @mo),
  ('Elegance Cabriolet 4.3 V8 24v', @mo),
  ('Sport 4.3', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLK-500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet V8 24V 306cv', @mo),
  ('Elegance/ Avant. 5.0 V8 24V Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLK-55');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG Cabriolet V8 24v 367cv', @mo),
  ('AMG V8 24V 367cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLS-350');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CGI 3.5 306cv Aut.', @mo),
  ('V6 24V 272cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLS-400');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.5 V6 Bi-Turbo 333cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLS-450');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 TB 4MATIC (Híb.)', @mo),
  ('3.0 TB 4MATIC SPORT (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLS-500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('V8 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLS-53');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 3.0 TB 4MATIC+ (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLS-55');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Kompressor AMG 5.5 V8 24V 476cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'CLS-63');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 5.5 V8 557cv Aut.', @mo),
  ('AMG 6.2 V8 32V 514cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-190');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('Classic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-200');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Classic 2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-220');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Classic/Touring 2.2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-230');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Elegance', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-240');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Elegance', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-250');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet 2.0 TB 211CV Aut.', @mo),
  ('CGI Avantgarde 1.8 16V 204cv Aut.', @mo),
  ('CGI Avantgarde 2.0 TB 211cv Aut.', @mo),
  ('CGI Coupe 1.8 16V 204cv Aut.', @mo),
  ('CGI VR4 2.0 TB Aut.', @mo),
  ('Coupe 2.0 TB 211cv Aut.', @mo),
  ('Excl. Launch Ed. 2.0 TB 211cv Aut.', @mo),
  ('Exclusive 2.0 TB 211cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-280');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Classic 2.8', @mo),
  ('Touring 2.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-300');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG Line 2.0 TB 258cv Aut.', @mo),
  ('Avantgarde 2.0 TB 258cv Aut.', @mo),
  ('Avantgarde Sport 2.0 TB 258cv Aut.', @mo),
  ('Cabriolet 2.0 TB 245cv Aut.', @mo),
  ('Coupe 2.0 TB 245cv Aut.', @mo),
  ('Exclusive 2.0 TB 258cv Aut.', @mo),
  ('Exclusive 2.0 TB 258cv Aut. (Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-320');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('3.2 Elegance', @mo),
  ('Avantgarde', @mo),
  ('C 3.2/ CA Classic 3.2', @mo),
  ('Cabriolet', @mo),
  ('Touring Avantgarde 24V V6 5p Aut.', @mo),
  ('Touring Eleg./Classic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-350');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Touring Avant/Eleg. 3.5 24V 272cv', @mo),
  ('Avant./Avant. Execut. 3.5 V6 272cv', @mo),
  ('Avantgarde/ Elegance 3.5 V6 272cv', @mo),
  ('Cabrio 3.5 V6 272cv 2p', @mo),
  ('CGI Avant. Sport 3.5 306cv Aut.', @mo),
  ('CGI Cabriolet 3.5 306cv Aut.', @mo),
  ('CGI Executive 3.5 306cv Aut.', @mo),
  ('CGI Guard VR4 3.5 306cv Aut.', @mo),
  ('Coupe 3.5 V6 272cv 2p', @mo),
  ('Sport 3.5 V6 272cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-400');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Avantgarde 3.5 V6 Bi-Turbo Aut.', @mo),
  ('Cabriolet 3.5 V6 Bi-Turbo Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-420');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Classic/Elegance/Avantgarde', @mo),
  ('Touring Avantgarde', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-43');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 4MATIC 3.0 V6 401cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-430');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Avantgarde', @mo),
  ('Elegance', @mo),
  ('Touring Avantgarde', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Avangarde Executive 5.5 V8 388cv', @mo),
  ('Avant. 5.0 V8 4p Aut. (Blindada)', @mo),
  ('CGI Guard VR4 4.7 V8 408cv 4p', @mo),
  ('CGI Guard VR4 5.5 V8 4p', @mo),
  ('Coupe Sport 4.7 V8 408cv Aut 2p', @mo),
  ('Coupe Sport 5.5 V8 388cv 2p', @mo),
  ('Elegance/ Avant. 5.0 V8 24V 4p Aut', @mo),
  ('Sport Avantgarde 5.0 V8 24V 4p Aut', @mo),
  ('Tour. Avant./ Eleg. 24V V8 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-53');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 3.0 TB 24V 4MATIC+ Aut. (Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-55');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG', @mo),
  ('Touring AMG 24V V8 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-63');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 5.5 V8 Bi-Turbo Aut.', @mo),
  ('AMG 6.2 V8 32V', @mo),
  ('S AMG 4MATIC 4.0 V8 612cv', @mo),
  ('S AMG 4MATIC Final Ed. 4.0 V8 612cv', @mo),
  ('Touring AMG 5.5 V8 Bi-Turbo Aut.', @mo),
  ('Touring AMG 6.2 V8 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EQA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('250 (Elétrico)', @mo),
  ('250 AMG Line (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EQB');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('250 (Elétrico)', @mo),
  ('250+', @mo),
  ('350 (Elétrico)', @mo),
  ('350 4MATIC AMG Line (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EQC');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('400 4MATIC 408CV (Elétrico)', @mo),
  ('400 4MATIC AMG Line (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EQE');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('300 AMG Line (Elétrico)', @mo),
  ('300 Edition One (Elétrico)', @mo),
  ('300 SUV AMG Line (Elétrico)', @mo),
  ('350+ AMG Line (Elétrico)', @mo),
  ('350+ SUV AMG Line (Elétrico)', @mo),
  ('53 SUV AMG 4MATIC+ (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EQS');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('450 SUV 4MATIC ( Elétrico)', @mo),
  ('450+ SUV AMG Line ( Elétrico)', @mo),
  ('53 AMG 4MATIC+ ( Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'eSprinter');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('320 CHASSI S. Extra Longa', @mo),
  ('320 CHASSI S. Longa', @mo),
  ('320 FURGÃO S. E.L (Elétrico)', @mo),
  ('320 FURGÃO S. Longa (Elétrico)', @mo),
  ('420 Chassi Longo (Elétrico)', @mo),
  ('420 FUR. Vid. Ex.Longa (Elét.)', @mo),
  ('420 FURGÃO Ex.Longa (Elétrico)', @mo),
  ('420 FURGÃO Longa (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'G-55');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Kompressor AMG 5.5 V8 507cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'G-63 AMG');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4M 4.0 Bi-TB Magno Edition Aut.', @mo),
  ('4M 4.0 V8 Bi-TB Aut. (Híb.)', @mo),
  ('4M Man.4.0 V8 Bi-TB Aut. (Híb.)', @mo),
  ('4MATIC 4.0 V8 Bi-TB 585cv Aut.', @mo),
  ('5.5 Bi-Turbo 32V 4x4 Aut.', @mo),
  ('ED1 4MATIC 4.0 V8 Bi-TB Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GL-350');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sport 3.0 V6 258cv 4x4 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GL-500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.7 Bi-Turbo V8 4x4 Aut.', @mo),
  ('5.5 V8 32V 4x4 388cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GL-63');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 5.5 Bi-Turbo 32V 4x4 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLA-200');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Advance 1.6/1.6 TB 16V Flex Aut.', @mo),
  ('AMG Line 1.3 16V TB Aut.', @mo),
  ('AMG Line 1.3 16V TB Aut.(Híb.)', @mo),
  ('Enduro 1.6 TB 16V Flex Aut.', @mo),
  ('Night 1.6. TB 16V Flex Aut.', @mo),
  ('Night Edition 1.3 TB 16V Aut.', @mo),
  ('Progressive 1.3 TB 16V Aut.(Híb)', @mo),
  ('Style 1.6 TB 16V/Flex Aut.', @mo),
  ('Vis. Black Ed. 1.6 TB 16V Aut.', @mo),
  ('Vision 1.6/1.6 TB 16V Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLA-250');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Enduro 2.0 TB 16V 211cv Aut.', @mo),
  ('Sport 2.0 TB 16V 4x2 211cv Aut.', @mo),
  ('Sport 2.0 TB 16V 4x4 211cv Aut.', @mo),
  ('Vision 2.0 TB 16V 211cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLA-35');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 4MATIC 2.0 Turbo Aut.', @mo),
  ('AMG 4MATIC 2.0 Turbo Aut. (Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLA-45');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 4MATIC 2.0 Turbo Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLB-200');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Advance 1.3 TB 16V Aut.', @mo),
  ('Launch Edition 1.3 TB 16V Aut.', @mo),
  ('Progressive 1.3 TB 16V Aut.', @mo),
  ('Progressive 1.3 TB 16V Aut.(Híb)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLB-220');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4M AMG Line 2.0 TB Aut. (Híb.)', @mo),
  ('4M Night Edition 2.0 TB Aut.', @mo),
  ('4M Progressive 2.0 TB Aut. (Híb)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLB-35');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 4MATIC 2.0 Turbo Aut.', @mo),
  ('AMG 4MATIC 2.0 Turbo Aut. (Híb.)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLC-220D');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 TB 4M Enduro Diesel', @mo),
  ('2.0 TB 4M Off-Road Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLC-250');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4MATIC 2.0 TB 16V Aut.', @mo),
  ('Coupe 4MATIC 2.0 TB 16V Aut.', @mo),
  ('Coupe Highway 4MATIC 2.0 TB Aut.', @mo),
  ('Highway 4MATIC 2.0 TB Aut.', @mo),
  ('Sport 4MATIC 2.0 TB 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLC-300');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4MATIC 2.0 TB Aut. (Híb)', @mo),
  ('AMG L. Cou. 4M 2.0 TB Aut. (Híb)', @mo),
  ('AMG Line 4MATIC 2.0 TB Aut (Híb)', @mo),
  ('AMG Line Coupe 4M 2.0 TB Aut.', @mo),
  ('Coupe 4MATIC 2.0 TB 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLC-43 AMG');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4M Coupe 2.0 Turbo Aut.(Híb).', @mo),
  ('4MATIC 2.0 Turbo Aut. (Híb).', @mo),
  ('4MATIC 3.0 V6 Bi-Turbo Aut.', @mo),
  ('Coupe 3.0 V6 Bi-TB Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLC-63');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 4MATIC 4.0 Bi-TB V8', @mo),
  ('S AMG 4MATIC Coupe 4.0 Bi-TB V8', @mo),
  ('S AMG E Perf. Coupe 2.0 Aut (Híb)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLE-350');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6 258cv 4x4 Diesel', @mo),
  ('Family 3.0 V6 258cv 4x4 Diesel', @mo),
  ('Highway 4MATIC 3.0 V6 Diesel', @mo),
  ('Sport 4MATIC 3.0 V6 4x4 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLE-400');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 TB 4MATIC Coupe Diesel Aut.', @mo),
  ('3.0 TB 4MATIC Diesel Aut.', @mo),
  ('Coupe 3.0 V6 333cv Aut.', @mo),
  ('Coupe High. 4MATIC 3.0 V6 Aut.', @mo),
  ('Night Coupe 3.0 V6 333cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLE-43');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 4MATIC 3.0 V6 Bi-TB Aut.', @mo),
  ('AMG 4MATIC Coupe 3.0 V6 Bi-TB Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLE-450');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4MATIC 3.0 AMG Line', @mo),
  ('4MATIC 3.0 V6 Diesel (Híb)', @mo),
  ('AMG 3.0 V6 367cv Aut.', @mo),
  ('Coupe 3.0 4MATIC AMG Line Diesel (Híb)', @mo),
  ('Coupe 3.0 4MATIC Diesel (Híb)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLE-53');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 3.0 TB 4MATIC+ (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLE-63');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 4MATIC Coupe 5.5 V8 Aut.', @mo),
  ('AMG 5.5 V8 557cv Aut.', @mo),
  ('S AMG 4M+ Coupé 4.0 Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLK-220');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CDI 2.2 TB 4X4 170cv Aut. Diesel', @mo),
  ('Sport CDI 2.2 TB 4X4 Aut. Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLK-280');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6 24V 4x4 231cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLK-300');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6 24V 4x4 231cv Aut.', @mo),
  ('3.5 CGI V6 4x4 252cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLS-350');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('V6 258cv 4x4 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLS-450');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4M 3.0 Bi-TB Aut. (Híbrido)', @mo),
  ('AMG Line 4M 3.0 Bi-TB Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLS-500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4MATIC 4.7 Bi-Turbo V8 455cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GLS-63');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 4MATIC 5.5 V8 Bi-TB Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GT');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('43 AMG 3.0 Bi-Turbo Aut. (Híbrido)', @mo),
  ('63 S AMG 4.0 V8 Bi-Turbo', @mo),
  ('63 S AMG E Performance Aut. 2p', @mo),
  ('63 S AMG E Performance Aut. 4p', @mo),
  ('AMG 4.0 V8 Bi-Turbo 462cv', @mo),
  ('AMG BLACK SERIES 4.0 V8 Bi-Turbo', @mo),
  ('C Roadster AMG 4.0 V8 Bi-Turbo', @mo),
  ('R AMG 4.0 V8 Bi-Turbo 585cv', @mo),
  ('S AMG 4.0 V8 Bi-Turbo 510cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ML-230');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4x4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ML-320');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6 224cv 4x4 diesel', @mo),
  ('4x4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ML-350');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 V6 4x4 Diesel', @mo),
  ('3.5 4x4', @mo),
  ('Sport 3.0 V6 258cv 4X4 Diesel', @mo),
  ('Sport CGI 3.5 V6 306cv 4x4 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ML-430');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ML-500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('V8 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ML-55');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 5.5 24v', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ML-63');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 5.5 V8 Bi-Turbo Aut.', @mo),
  ('AMG 6.2 V8 32V 510cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-320');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('L Classic/Wagon Classic 3.2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-400');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.5 V6 279cv Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-420');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Classic 4.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.0', @mo),
  ('C Classic 5.0', @mo),
  ('L/ L Classic/ Wagon Classic 5.0', @mo),
  ('Maybach 4.7 Bi-Turbo V8 455cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-500L');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.7 Bi-Turbo V8 455cv Aut.', @mo),
  ('5.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-55');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG V8 24V 364cv/ 500cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-560L');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4.0 Bi-Turbo V8 469cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-600');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('L/ L Classic/ Wagon Classic 6.0', @mo),
  ('S-600 C Classic 6.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-63');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 5.5 V8 BI-TURBO Aut.', @mo),
  ('AMG 6.2 V8 525cv Aut', @mo),
  ('AMG S E Performance Aut. (Híbrido)', @mo),
  ('Cabriolet AMG 5.5 V8 Bi-Turbo Aut.', @mo),
  ('Coupe AMG 4MATIC 4.0 V8 Bi-TB Aut.', @mo),
  ('Coupe AMG 5.5 V8 Bi-Turbo Aut.', @mo),
  ('L AMG 6.2 V8/5.5 V8 Bi-TB Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-65');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 6.0 V12 612cv Aut', @mo),
  ('AMG Coupe 6.0 Bi-TB V12 630cv Aut.', @mo),
  ('L AMG 6.0 V12 630cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SE-500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SL-280');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Classic 2.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SL-320');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.2/Classic 3.2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SL-350');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.5 V6 2p', @mo),
  ('Sport 3.5 V6 316cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SL-400');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 Bi-Turbo V6 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SL-500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.0 e 5.5/ Classic 5.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SL-55');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG V8 24V 500cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SL-600');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SL-63 AMG');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.5 Bi-Turbo V8 Aut.', @mo),
  ('6.2 V8 525cv Aut', @mo),
  ('S E Performance Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SL-65');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 6.0 V12 612cv Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SLC-300');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 Turbo 245cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SLC-43');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG 3.0 V6 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SLK-200');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Kompressor 16V/ 200 CGI 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SLK-230');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Kompressor', @mo),
  ('Plus', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SLK-250');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CGI 1.8 16V 204cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SLK-300');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 Turbo 245cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SLK-320');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.2 218cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SLK-350');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.5 V6/SLK-350 CGI', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SLK-55');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AMG V8 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SLS-63 AMG');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.2 8V Black Series Aut.', @mo),
  ('6.2 V8 Aut.', @mo),
  ('Roadster 6.3 V8 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sprin');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('417 F Vidr. Extra L.T.A. Die.(E6)', @mo),
  ('517 VAN E.L.P.T.A. 20L Die. (E6)', @mo),
  ('517 VAN E.L.P.T.A. 21L Die. (E6)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sprinter');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('310 Chassi Diesel', @mo),
  ('310 Furgão 2.5 Diesel', @mo),
  ('310 Pick-Up Diesel', @mo),
  ('310 Van Exec. 9Lug. Diesel', @mo),
  ('310 Van Luxo/Exec. 12/14L Dies.', @mo),
  ('310 Van Std 12e14L/Luxo 9L.Dies', @mo),
  ('310 Van Std. 9Lug. 2.5 Diesel', @mo),
  ('311 Chassi 2.2 Diesel', @mo),
  ('311 Chassi E. Longa 2.2 Diesel', @mo),
  ('311 Furgão Curto 2.2 Dies', @mo),
  ('311 Furgão E.Longo T.Alto Dies.', @mo),
  ('311 Furgão Longo 2.2 Dies', @mo),
  ('311 Furgão Longo Teto alto Dies', @mo),
  ('311 Street Luxo 2.2 16Lug. Dies', @mo),
  ('311 Street Std. 2.2 16Lug. Dies', @mo),
  ('311 VAN Luxo 2.2 109cv 13L Dies', @mo),
  ('311 VAN Luxo 2.2 109cv 16L Dies', @mo),
  ('311 VAN Std. 2.2 109cv 13L Dies', @mo),
  ('311 VAN Std. 2.2 109cv 16L Dies', @mo),
  ('312 Furgão Curto Diesel', @mo),
  ('312 Furgão Longo Diesel', @mo),
  ('312 Furgão Longo T.Alto Diesel', @mo),
  ('312 Van Exec. 10Lug. 2.5 Diesel', @mo),
  ('312 Van Exec. 12Lug. Diesel', @mo),
  ('312 Van Luxo 10lug. Diesel', @mo),
  ('312 Van Luxo 12lug. Diesel', @mo),
  ('312 Van Luxo 15lug. Diesel', @mo),
  ('312 Van Luxo 16lug. Diesel', @mo),
  ('312 Van Luxo Lotação 16lug.Dies', @mo),
  ('312 Van Std 12lug. Diesel', @mo),
  ('312 Van Std 16lug. Diesel', @mo),
  ('312 Van Std Lotação 16lug. Dies', @mo),
  ('312 Van Street Luxo 15Lug.Dies.', @mo),
  ('312 Van Street Std. 15Lug.Dies.', @mo),
  ('312-D Chassi Diesel', @mo),
  ('313 Chassi Ex. Longo 2.2 Dies.', @mo),
  ('313 Chassi 2.2 129cv Diesel', @mo),
  ('313 Chassi Longo 2.2 Diesel', @mo),
  ('313 Furgão Curto 2.2 129cv Dies', @mo),
  ('313 Furgão Ex. Longo T. A. Die.', @mo),
  ('313 Furgão Longo 2.2 129cv Dies', @mo),
  ('313 Furgão Longo T. Alto Diesel', @mo),
  ('313 VAN Exec 2.2 Mec/S-Aut Dies', @mo),
  ('313 VAN Luxo 2.2 129cv 13L.Dies', @mo),
  ('313 VAN Luxo 2.2 129cv 16L Dies', @mo),
  ('313 VAN Std. 2.2 129cv 13L.Dies', @mo),
  ('313 VAN Std. 2.2 129cv 16L Dies', @mo),
  ('313 VAN Street Luxo 16L. Dies.', @mo),
  ('313 VAN Street Std. 16L. Dies.', @mo),
  ('314 Chassi E.L T.B. 2.2 Dies.', @mo),
  ('314 Chassi Longo T.B. 2.2 Dies.', @mo),
  ('314 Furgão Curto T.B. 2.2 Dies.', @mo),
  ('314 Furgão E.L. T.A. 2.2 Dies.', @mo),
  ('314 Furgão Longo T.A. 2.2 Dies.', @mo),
  ('314 Furgão Longo T.B. 2.2 Dies.', @mo),
  ('314 Truck E.Longo T.B. 2.2 Dies', @mo),
  ('314 Truck Longo T.B. 2.2 Dies.', @mo),
  ('315 Furg.Str. E.L.T.A. 2.0 Dies', @mo),
  ('315 Furgão Str. L T.A 2.0 Dies.', @mo),
  ('315 Furgão Str. L T.B 2.0 Dies.', @mo),
  ('315 Furgão Str.Curto 2.0 Dies.', @mo),
  ('315 Truck E.Longo T.B 2.0 Dies.', @mo),
  ('315 Truck Longo T.B 2.0 Dies.', @mo),
  ('317 Chassi Extra Lon. T. B. 2.0 Diesel', @mo),
  ('317 Chassi Longo 2.0 Diesel', @mo),
  ('317 Furgão E.LT.A. 2.0 Dies.', @mo),
  ('317 Furgão Extra Lon. T. A. 2.0 Aut. (E6)', @mo),
  ('317 Furgão Longo T.A. 2.0 Aut. (E6)', @mo),
  ('317 Furgão Longo T.A. 2.0 Dies.', @mo),
  ('317 Furgão Longo T.B. 2.0 Dies.', @mo),
  ('412-D Chassi Diesel', @mo),
  ('413 Furgão Longo T.Alto Diesel', @mo),
  ('413 VAN Luxo 2.2 16 e 20L Dies', @mo),
  ('413-D Chassi Curto/Longo Diesel', @mo),
  ('415 Chassi L. 2.2 Diesel', @mo),
  ('415 Furgão Curto T.B. 2.2 Dies.', @mo),
  ('415 Furgão E.L.T.Alt. 2.2 Dies.', @mo),
  ('415 Furgão Lon.T.Alto 2.2 Dies', @mo),
  ('415 Furgão Lon.T.Bai. 2.2 Dies.', @mo),
  ('415 VAN Luxo T.A. 2.2 Diesel', @mo),
  ('415 VAN Luxo T.B. 2.2 Diesel', @mo),
  ('415 VAN Standard T.A. 2.2 Dies.', @mo),
  ('415 VAN Standard T.B. 2.2 Dies.', @mo),
  ('416 Chassi Longo T.B. 2.2 Dies.', @mo),
  ('416 F. Vidrado E.L T.A. 2.2 Die', @mo),
  ('416 F. Vidrado L. T.A. 2.2 Die.', @mo),
  ('416 Furgão Curto T.B. 2.2 Dies.', @mo),
  ('416 Furgão E.L. T. A. 2.2 Dies.', @mo),
  ('416 Furgão Longo T.A. 2.2 Dies.', @mo),
  ('416 Furgão Longo T.B. 2.2 Dies.', @mo),
  ('416 VAN L. T.A. 10L 2.2 Diesel', @mo),
  ('416 VAN L. T.A. 16L 2.2 Diesel', @mo),
  ('416 VAN L. T.B. 10L 2.2 Diesel', @mo),
  ('416 VAN L. T.B. 16L 2.2 Diesel', @mo),
  ('417 Chassi L.T.B. Dies. (E6)', @mo),
  ('417 Chassi Longo T. B. 2.0 Aut. (E6)', @mo),
  ('417 F. Vidrado L.T.A. Die. (E6)', @mo),
  ('417 Furgão Curto T.B. Die. (E6)', @mo),
  ('417 Furgão Ext. L.T.A Die. (E6)', @mo),
  ('417 Furgão Extra LongoTeto Alto Aut. (E6)', @mo),
  ('417 Furgão L.T.A. Diesel (E6)', @mo),
  ('417 Furgão Longo T. A. 2.0 Aut.(E6)', @mo),
  ('417 Furgão Longo T.B Die. (E6)', @mo),
  ('417 VAN L.T.A. 10L Diesel (E6)', @mo),
  ('417 VAN L.T.A. 16L Diesel (E6)', @mo),
  ('417 VAN L.T.B 10L Diesel (E6)', @mo),
  ('417 VAN L.T.B 16L Diesel( E6)', @mo),
  ('417 VAN Longo T. A. 2.0 16L Aut. (E6)', @mo),
  ('417 VAN Longo T. B. 2.0 16L Aut. (E6)', @mo),
  ('515 Chassi E. L. 2.2 Diesel', @mo),
  ('515 Chassi L. 2.2 Diesel', @mo),
  ('515 Furgão E.L.T. Alto 2.2 Die.', @mo),
  ('515 VAN 2.2 Diesel', @mo),
  ('516 Chassi E.L. T.B. 2.2 Dies.', @mo),
  ('516 Chassi Longo T.B. 2.2 Dies.', @mo),
  ('516 F.Vidrado E.L. T.A. 2.2 Die', @mo),
  ('516 Furgão E.L.T. Alto 2.2 Dies', @mo),
  ('516 VAN E.L. T.A 20L 2.2 Dies.', @mo),
  ('516 VAN E.L. T.A. 18L 2.2 Dies.', @mo),
  ('516 VAN E.L. T.A. 21L 2.2 Dies.', @mo),
  ('517 Chassi E.Lon. T.B. Die.(E6)', @mo),
  ('517 Chassi Extra Lon. T. B. 2.0 Aut. (E6)', @mo),
  ('517 Chassi Longo T. B. 2.0 Aut. (E6)', @mo),
  ('517 Chassi Longo T.B. Die. (E6)', @mo),
  ('517 F. Ext. L. T.A. Die. (E6)', @mo),
  ('517 F. Ext. L.P.T.A. Die. (E6)', @mo),
  ('517 F.Vidr. E.L.P.T.A. Die (E6)', @mo),
  ('517 Furgão Extra Lon. P.T.A. 2.0 Aut.(E6)', @mo),
  ('517 VAN E.L.T.A. 18L Die (E6)', @mo),
  ('517 VAN Extra Longo P.T.A. 21L Aut. (E6)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Vito');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('111 CDI Furgão 1.6 TB Diesel 4p Mec', @mo),
  ('TOURER 119 Comf.2.0 Flex 9Lug. Mec.', @mo),
  ('TOURER 119 Luxo 2.0 Flex 8Lug. Mec.', @mo);

-- Mercury
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Mercury');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Mystique', @m),
  ('Sable', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Mystique');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GS 2.5 V6 Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sable');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LS 3.0 V6', @mo);

-- MG
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'MG');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('4', @m),
  ('550', @m),
  ('Cyberster', @m),
  ('MG6', @m),
  ('S5', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Comfort', @mo),
  ('Luxury', @mo),
  ('Urban Comfort 43', @mo),
  ('Urban Luxury 43', @mo),
  ('Urban Luxury 54', @mo),
  ('Xpower AWD', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '550');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 16V Turbo 170cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cyberster');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AWD', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'MG6');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 16V Turbo 170cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Comfort', @mo),
  ('Luxury', @mo);

-- MINI
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'MINI');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Aceman', @m),
  ('Cooper', @m),
  ('ONE', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Aceman');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('E (Elétrico)', @mo),
  ('SE (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cooper');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.5 Turbo 12V 3p Aut.', @mo),
  ('1.5 Turbo 12V 5p Aut.', @mo),
  ('1.6 Aut.', @mo),
  ('1.6 Mec.', @mo),
  ('CABRIO 1.5 Turbo 12V Aut.', @mo),
  ('CABRIO 1.6 Aut.', @mo),
  ('CABRIO John Works 1.6 Mec.', @mo),
  ('CABRIO John Works 1.6 Aut.', @mo),
  ('CABRIO John Works 2.0 Aut.', @mo),
  ('CABRIO S 1.6 Aut.', @mo),
  ('CABRIO S 2.0 16V Aut.', @mo),
  ('CABRIO S HIGHGATE 1.6 Aut.', @mo),
  ('Clubman 1.6 Aut.', @mo),
  ('Clubman John Work ALL4 2.0 Aut.', @mo),
  ('COU. SE SHAD. ED. ALL4 1.5 (Híb.)', @mo),
  ('Country. John W. ALL4 Exclu. 2.0 TB. Aut.', @mo),
  ('Country. John Works ALL4 1.6 Aut.', @mo),
  ('Country. John Works ALL4 2.0 Aut.', @mo),
  ('Country. SE ALL4 Excl. (Elétrico)', @mo),
  ('Country. SE ALL4 Top (Elétrico)', @mo),
  ('Countryman 1.5 Turbo Aut.', @mo),
  ('Countryman 1.6 Aut.', @mo),
  ('Countryman ALL4 2.0 Turbo Aut.', @mo),
  ('Countryman S 1.6 Aut.', @mo),
  ('Countryman S 2.0 Turbo Aut.', @mo),
  ('Countryman S ALL4 1.6 Aut.', @mo),
  ('Countryman S ALL4 2.0 Turbo Aut.', @mo),
  ('Countryman S E ALL4 1.5 (Híb.)', @mo),
  ('COUPE 1.6 Aut.', @mo),
  ('COUPE John Works 1.6', @mo),
  ('COUPE S 1.6 Aut.', @mo),
  ('E 3p (Elétrico)', @mo),
  ('John Works 1.6 Aut.', @mo),
  ('John Works 1.6 Mec.', @mo),
  ('John Works 2.0 Turbo 3p Aut.', @mo),
  ('John Works 25K Edit. 2.0 Turbo 3p', @mo),
  ('John Works Aceman E 5p', @mo),
  ('John Works E 3p', @mo),
  ('John Works GP3 2.0 Turbo 3p Aut.', @mo),
  ('John.W.Pat.Moss 2.0 Turbo 3p Aut.', @mo),
  ('PACEMAN S 1.6 16V 184cv Aut.', @mo),
  ('PACEMAN S ALL4 1.6 16V Aut.', @mo),
  ('PACEMAN S John Works ALL4 1.6 Aut', @mo),
  ('ROADSTER 1.6 Aut.', @mo),
  ('ROADSTER John Works 1.6 Aut.', @mo),
  ('ROADSTER S 1.6 Aut.', @mo),
  ('S 1.6 Aut.', @mo),
  ('S 2.0 Turbo 16v 3p Aut.', @mo),
  ('S 2.0 Turbo 16V 3p Mec.', @mo),
  ('S 2.0 Turbo 16V 5p Aut.', @mo),
  ('S BAYSWATER 1.6 Aut.', @mo),
  ('S Clubman 1.6 Aut.', @mo),
  ('S Clubman 2.0 Aut.', @mo),
  ('S Mayfield Edition 2.0 TB. 3p Aut', @mo),
  ('S SEVEN 2.0 TURBO 16V 3p Aut.', @mo),
  ('SE 3p (Elétrico)', @mo),
  ('SE Exclusive 3p (Elétrico)', @mo),
  ('SE Multitone Edit. 3p (Elétrico)', @mo),
  ('SE Resolute Edition 3p (Elétrico)', @mo),
  ('SE Sport 3p (Elétrico)', @mo),
  ('SE Top 3p (Elétrico)', @mo),
  ('SE Top Collection 3p (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ONE');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.2 12V Turbo 2p Mec.', @mo),
  ('1.6 Mec.', @mo),
  ('1.6 Aut.', @mo);

-- Mitsubishi
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Mitsubishi');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('3000', @m),
  ('Airtrek', @m),
  ('ASX', @m),
  ('ASX-S', @m),
  ('Colt', @m),
  ('Diamant', @m),
  ('Eclipse', @m),
  ('Expo', @m),
  ('Galant', @m),
  ('Grandis', @m),
  ('L200', @m),
  ('L300', @m),
  ('Lancer', @m),
  ('Mirage', @m),
  ('Montero', @m),
  ('Outlander', @m),
  ('Pajero', @m),
  ('Space', @m),
  ('Triton', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '3000');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GT SL 3.0', @mo),
  ('GT VR-4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Airtrek');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V TB-IC 202cv 4x4 5p', @mo),
  ('2.4 16V 163cv/ 136cv 4x4 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ASX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 4x4 Aut.(By Armura-Blind.)', @mo),
  ('2.0 16V 160cv Aut.', @mo),
  ('2.0 16V 160cv Mec.', @mo),
  ('2.0 16V 4x2 Aut.(By Amura-Blind.)', @mo),
  ('2.0 16V 4x2 Flex Aut.', @mo),
  ('2.0 16V 4x4 160cv Aut.', @mo),
  ('2.0 16V 4x4 Flex Aut.', @mo),
  ('GLS FWD 2.0 16V Flex Aut.', @mo),
  ('HPE AWD 2.0 16V Flex Aut.', @mo),
  ('HPE FWD 2.0 16V Flex Aut.', @mo),
  ('HPE-S AWD Flex 2.0 16V Aut.', @mo),
  ('O NEILL 2.0 16V 160cv Aut.', @mo),
  ('OUTDOOR 2.0 4x2 16V 160cv Aut.', @mo),
  ('OUTDOOR 2.0 4X4 16V 160 cv Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ASX-S');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 160cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Colt');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLXi', @mo),
  ('GTi Mec', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Diamant');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LS 3.0 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Eclipse');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cross GLS 1.5 16V TB 165cv Aut.', @mo),
  ('Cross GLS RUSH 1.5 16V TB 165cv Aut', @mo),
  ('Cross HPE 1.5 16V TB 165cv Aut.', @mo),
  ('Cross HPE Black 1.5 16V TB 165cv Aut.', @mo),
  ('Cross HPE-S 1.5 16V AWC TB 165cv Aut.', @mo),
  ('Cross HPE-S 1.5 16V TB 165cv Aut.', @mo),
  ('Cross HPE-S Black 1.5 16V AWC TB 165cv Aut', @mo),
  ('Cross HPE-S MTSp. 1.5 16V AWC TB 165cv Aut', @mo),
  ('Cross HPE-S Outd. 1.5 16V AWC TB 165cv Aut', @mo),
  ('Cross HPE-S Sport 1.5 16V AWC TB 165cv Aut', @mo),
  ('Cross HPE-S Sport 1.5 16V TB 165cv Aut.', @mo),
  ('Cross RUSH 1.5 16V TB 165cv Aut.', @mo),
  ('Cross Tarmac 1.5 16V TB 165cv Aut.', @mo),
  ('GS/ GS Turbo Mec', @mo),
  ('GST 2.0 16V Turbo', @mo),
  ('GSX 2.0 16V Turbo', @mo),
  ('GT 3.0 V6 24V', @mo),
  ('GT 3.8 V6 267cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Expo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LRV Sport 2.3 16V', @mo),
  ('SP Van 2.3 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Galant');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0', @mo),
  ('2.5 V6', @mo),
  ('ES', @mo),
  ('GS 2.0 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Grandis');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.4 16V 163cv 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'L200');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 4x2 CD Turbo Diesel', @mo),
  ('2.5 4x2 Turbo Diesel', @mo),
  ('2.5 4x4 CD Turbo Diesel', @mo),
  ('Evolution 3.2 4x4 TB Int. Diesel', @mo),
  ('GL 2.5 4X4 CD Diesel', @mo),
  ('GLS 2.5 4X4 CD Diesel', @mo),
  ('GLS Sport 2.5 4x4 121cv CD DTI Dies', @mo),
  ('HPE 2.5 8V 95cv/118cv TB-IC Diesel', @mo),
  ('L 2.5 4X4 CD Turbo Diesel', @mo),
  ('OUTDOOR GLS 2.5 4X4 CD TDI Diesel', @mo),
  ('OUTDOOR HPE 2.5 4x4 CD T.Dies. Aut.', @mo),
  ('OUTDOOR HPE 2.5 4x4 CD T.Dies. Mec.', @mo),
  ('RI/ RII/ RIII CD 2.5 TB Int. Diesel', @mo),
  ('Savana 2.5 4x4 121cv CD DTI Dies.', @mo),
  ('Sport 2.5 4x4 CD Turbo Diesel', @mo),
  ('Sport HPE 2.5 4x4 CD DTI Dies. Aut.', @mo),
  ('Sport HPE 2.5 4x4 CD DTI Dies. Mec.', @mo),
  ('Sport RS 2.5 CD DTI (passeio) Dies.', @mo),
  ('T. OUTDOOR 3.2 CD TB Int.Dies. Mec.', @mo),
  ('T.OUTDOOR 3.2 CD TB Int. Dies. Aut.', @mo),
  ('Tri. Out. HPE-S 2-4 CD 4X4 Die. Aut', @mo),
  ('Tri. Outd. GLX 2.4 CD 4x4 Die. Mec.', @mo),
  ('Tri. Outd. HPE 2.4 CD 4x4 Die. Aut.', @mo),
  ('Tri. Outdo. GLS 2.4 CD 4x4 Die. Aut', @mo),
  ('Tri. S. Outd. Plus 2.4 4x4 Die. Aut', @mo),
  ('Tri. S.Terra HPE-S 2.4 4x4 Die. Aut', @mo),
  ('Tri. S.Urban HPE-S 2.4 4x4 Die. Aut', @mo),
  ('Tri. Sav. SERTOES 2.4 CD 4x4 Dies.', @mo),
  ('Tri. Sport Outd. GLX 2.4 4x4 Diesel', @mo),
  ('Tri. Sport Outdoor 2.4 CD 4x4 Dies.', @mo),
  ('Tri.HLS Chrome Ed. 2.4 CD Flex Mec.', @mo),
  ('Trit. S.Out. GLS 2.4 CD Diesel Aut.', @mo),
  ('Triton GL 3.2 CD TB Int. Dies. Mec.', @mo),
  ('Triton GLS 3.2 CD TB Int.Diesel Mec', @mo),
  ('Triton GLX 3.2 CD TB Int.Diesel Mec', @mo),
  ('Triton HLS 2.4 Flex 16V CD Mec.', @mo),
  ('Triton HPE 3.2 CD TB Int.Diesel Aut', @mo),
  ('Triton HPE 3.2 CD TB Int.Diesel Mec', @mo),
  ('Triton HPE 3.5 CD V6 24V Flex Aut.', @mo),
  ('Triton KTM 3.2 CD TB Int.Dies. Mec.', @mo),
  ('Triton MotorSports HPE 2.4 Dies.', @mo),
  ('Triton OUTDOOR 2.4 16V CD Flex Mec.', @mo),
  ('Triton S. HPE FTP 2.4 CD Dies. Aut.', @mo),
  ('Triton Savana 2.4 4x4 Die. Aut.', @mo),
  ('Triton Savana 3.2 CD TBI Dies. Aut.', @mo),
  ('Triton Savana 3.2 CD TBI Dies. Mec.', @mo),
  ('Triton Savanaoff 3.2 CD TBI Die.Mec', @mo),
  ('Triton Sport GLS 2.4 CD Diesel Aut.', @mo),
  ('Triton Sport GLS 2.4 CD Diesel Mec.', @mo),
  ('Triton Sport GLX 2.4 CD Diesel Mec.', @mo),
  ('Triton Sport HPE 2.4 CD Diesel Aut.', @mo),
  ('Triton Sport HPE-S 2.4 CD Dies. Aut', @mo),
  ('Triton XB 3.2 CD TB Int.Diesel Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'L300');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Base/DX/Canter 2.5 Diesel', @mo),
  ('Top/Luxo 2.5 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Lancer');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 160cv Aut.', @mo),
  ('2.0 16V 160cv Mec.', @mo),
  ('Evol. 2.0 Turbo', @mo),
  ('Evol. VI 2.0 Turbo 4p', @mo),
  ('Evol. X J. Easton 2.0 16V TB Int.', @mo),
  ('Evolut. IX MR 2.0 290cv TB-IC', @mo),
  ('Evolut. VII/ VIII/ IX 2.0 280cv T', @mo),
  ('Evolution X 2.0 16V 295cv TB Int.', @mo),
  ('GLX', @mo),
  ('GT 2.0 16V 160cv Aut.', @mo),
  ('GT 2.0 16V 4X4 160cv Aut.', @mo),
  ('GT 2.0 16V Aut.(By Armura-Blind.)', @mo),
  ('GTi Mec', @mo),
  ('HL 2.0 16V 160cv Aut.', @mo),
  ('HL 2.0 16V Aut.(By Armura-Blind.)', @mo),
  ('HLE 2.0 16V 160cv Aut.', @mo),
  ('HLE 2.0 16V Aut.(By Armura-Blind)', @mo),
  ('HL-T 2.0 16V 160cv Aut.', @mo),
  ('LS 1.8', @mo),
  ('Sport Ralliart 2.0 16V TB Int. 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Mirage');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ES', @mo),
  ('GS 16V/ GLSi1.6', @mo),
  ('LS', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Montero');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.8 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Outlander');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 160cv Aut.', @mo),
  ('2.0 16V 4x4 Aut. (Híbrido)', @mo),
  ('2.2 165cv Diesel Aut.', @mo),
  ('2.4 16V 170cv Aut.', @mo),
  ('3.0/ GT 3.0 V6 Aut.', @mo),
  ('COMFORT 2.0 16V Aut.', @mo),
  ('GLS 2.0 16V 5p Aut.', @mo),
  ('HPE 2.0 16V 5p Aut.', @mo),
  ('HPE-S 2.2 Diesel 4x4 Aut.', @mo),
  ('HPE-S 2.4 4x4 Aut (Híbrido)', @mo),
  ('HPE-S 3.0 V6 4x4 5p Aut.', @mo),
  ('HPE-S BLACK ED. 3.0 4x4 Aut.', @mo),
  ('Signature 2.4 4x4 Aut (Híb)', @mo),
  ('SP. HPE BL.ED 4x2 2.0 Flex Aut', @mo),
  ('Sp. HPE BL.ED 4x4 2.0 Flex Aut', @mo),
  ('Sport GLS 2.0 16V Flex Aut.', @mo),
  ('Sport HPE 2.0 16V Flex Aut.', @mo),
  ('Sport HPE 4x4 2.0 16V Flex Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Pajero');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.2 4x4 T.I. Dies. 5p Aut', @mo),
  ('DAKAR 3.2 4x4 T.I. Dies. 5p Aut.', @mo),
  ('DAKAR 3.2 4x4 T.I. Dies. 5p Mec.', @mo),
  ('DAKAR HPE 3.2 4x4 T.I Dies 5p Aut', @mo),
  ('DAKAR/HPE 3.5 4x4 Flex 5p Aut.', @mo),
  ('Evolution 4x4 3.5 V6', @mo),
  ('Full GLS/GLS/PKHPE 3.2 Dies.TI 5p', @mo),
  ('Full Legend Ed.3.2 T.I. Die. Aut.', @mo),
  ('GLS 2.8 Diesel Turbo Aut.', @mo),
  ('GLS 2.8 Diesel Turbo Mec.', @mo),
  ('GLS 3.0 V6 2p Aut.', @mo),
  ('GLS 3.0 V6 2p Mec.', @mo),
  ('GLS 3.0 V6 4p Aut.', @mo),
  ('GLS 3.0 V6 4p Mec.', @mo),
  ('GLS 3.5 V6 2p Aut', @mo),
  ('GLS 3.5 V6 2p Mec.', @mo),
  ('GLS 3.5 V6 4p Aut.', @mo),
  ('GLS 3.5 V6 4p Mec.', @mo),
  ('GLS 3.5 V6 Top 2p Aut', @mo),
  ('GLS 3.5 V6 Top 4p Aut', @mo),
  ('GLS Full 3.8 V6 250cv 5p Aut.', @mo),
  ('GLS HPE/HPE Full 3.8 233cv 3p Aut', @mo),
  ('GLS HPE/HPE Full 3.8 233cv 5p Aut', @mo),
  ('GLX 2.8 Diesel 4p Mec', @mo),
  ('GLX 3.0 V6 4p Mec', @mo),
  ('GLZ 2.8 4x4 Turbo Diesel', @mo),
  ('GLZ 3.0 4x4 V6', @mo),
  ('HD-S 3.2 4x4 T.I. Diesel 5p Mec.', @mo),
  ('HPE 3.2 4x4 T.I. Dies. 5p Aut.', @mo),
  ('HPE 3.5 4x4 Flex 5p Aut.', @mo),
  ('HPE Full 3.2 4x4 T.I.Dies. 5p Aut', @mo),
  ('HPE Full 3.2 4x4 T.I.Dies.3p Aut.', @mo),
  ('HPE Full 3.8 V6 250cv 3p Aut.', @mo),
  ('HPE Full 3.8 V6 250cv 5p Aut.', @mo),
  ('HPE-S 3.2 4x4 T.I.Diesel 5p Aut.', @mo),
  ('iO Aut.', @mo),
  ('iO Mec.', @mo),
  ('iO SE 1.8 16V Aut.', @mo),
  ('iO SE 1.8 16V Mec.', @mo),
  ('OUTDOOR 3.2 4x4 T.I. Dies.5p Aut.', @mo),
  ('Sport 2.8 4x4 Diesel Aut.', @mo),
  ('Sport 2.8 4x4 Diesel Mec.', @mo),
  ('Sport 3.0 4x2 V6 Mec./Aut.', @mo),
  ('Sport 3.0 4x4 V6 Mec./Aut.', @mo),
  ('Sport 3.5 V6 Flex 4x4 Aut.', @mo),
  ('Sport HPE 2.4 4x4 Diesel Aut.', @mo),
  ('Sport HPE 2.5 4x4 Diesel Aut.', @mo),
  ('Sport HPE 2.5 4x4 Diesel Mec.', @mo),
  ('Sport HPE 3.5 4x4 200cv Aut.', @mo),
  ('Sport HPE-S 2.4 4x4 Diesel Aut.', @mo),
  ('Sport Le.Black 2.4 4x4 (Die) Aut.', @mo),
  ('Sport Legend 2.4 4x4 Diesel Aut.', @mo),
  ('Sport SE 3.0 4x2 V6 177cv Aut.', @mo),
  ('Sport SE/ HPE 2.8 4x4 Diesel Aut.', @mo),
  ('Sport SE/ HPE 3.0 4x4 177cv Aut.', @mo),
  ('TR4 2.0 Blind. 16V 131cv 4x4 Aut.', @mo),
  ('TR4 2.0 Blind. 16V 131cv 4x4 Mec.', @mo),
  ('TR4 2.0 Flex 16V 4X2 Aut.', @mo),
  ('TR4 2.0 Flex 16V 4X2 Mec.', @mo),
  ('TR4 2.0/ 2.0 Flex 16V 4x4 Aut.', @mo),
  ('TR4 2.0/ 2.0 Flex 16V 4x4 Mec.', @mo),
  ('TR4 GLS 2.0 Flex 16V 4x4 Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Space');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Wagon GLS 2.0', @mo),
  ('Wagon GLS 2.4', @mo),
  ('Wagon GLXi 2.4 (Nova Série)', @mo),
  ('Wagon/ GLXi 2.4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Triton');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLS 2.4 CD 4x4 TB Diesel Aut.', @mo),
  ('GLS Tarmac 2.4 CD TB Aut.', @mo),
  ('HPE 2.4 CD 4x4 TB Diesel Aut.', @mo),
  ('HPE-S 2.4 CD 4x4 TB Diesel Aut.', @mo),
  ('Katana 2.4 CD 4x4 TB Diesel Aut.', @mo),
  ('Savana 2.4 CD 4x4 TB Diesel Aut.', @mo),
  ('SR80 2.4 CD 4x4 TB Aut.', @mo),
  ('Terra 2.4 CD 4x4 TB Diesel Aut.', @mo);

-- Miura
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Miura');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Picape', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Picape');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('BG-Truck CD Turbo Diesel', @mo);

-- NETA
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'NETA');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('AYA', @m),
  ('X', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'AYA');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Comfort 4S Aut. (Elétrico)', @mo),
  ('Luxury 4S Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('400 Comfort Aut. (Elétrico)', @mo),
  ('500 Comfort Aut. (Elétrico)', @mo),
  ('500 Luxury Aut. (Elétrico)', @mo);

-- Nissan
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Nissan');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('350Z', @m),
  ('Altima', @m),
  ('AX', @m),
  ('D-21', @m),
  ('Frontier', @m),
  ('GT-R', @m),
  ('Infinit', @m),
  ('Kait', @m),
  ('Kicks', @m),
  ('King-Cab', @m),
  ('Leaf', @m),
  ('Livina', @m),
  ('March', @m),
  ('Maxima', @m),
  ('Micra', @m),
  ('Murano', @m),
  ('NX', @m),
  ('Pathfinder', @m),
  ('Pick-Up', @m),
  ('Primera', @m),
  ('Quest', @m),
  ('Sentra', @m),
  ('Stanza', @m),
  ('SX', @m),
  ('Terrano', @m),
  ('Tiida', @m),
  ('Versa', @m),
  ('XTerra', @m),
  ('X-TRAIL', @m),
  ('ZX', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '350Z');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.5 V6 280cv/ 312cv 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Altima');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GXE 2.4 16V', @mo),
  ('SE 2.4 16V', @mo),
  ('SL 2.5 16V 4p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'AX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.5D Turbo Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'D-21');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Pick-Up CD 4x2/4x4 2.7 Diesel', @mo),
  ('Pick-Up CS 4x2/4x4 2.7 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Frontier');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ATTAC.CD 4x4 2.3 Bi-TB Die. Aut', @mo),
  ('AX 3.2 CD Diesel', @mo),
  ('AX CD 4x4 2.5 TB Interc. Diesel', @mo),
  ('DX 3.2 CD Diesel', @mo),
  ('LE ATTACK CD 4x4 2.5 TB Die.Aut', @mo),
  ('LE CD 4x4 2.3 Bi-TB Diesel Aut.', @mo),
  ('LE CD 4x4 2.5 TB dies.(Import.)', @mo),
  ('LE CD 4x4 2.5 TB Diesel Aut.', @mo),
  ('LE CD 4x4 2.5 TB Diesel Mec.', @mo),
  ('PLATI. CD 2.3 Bi-TB Dies.Aut.', @mo),
  ('PLATINUM CD 4x4 2.5 TB Diesel', @mo),
  ('PRO4X CD 4x4 2.3 Bi-TB Die. Aut', @mo),
  ('S CD 4x2 2.5 TB Diesel', @mo),
  ('S CD 4x4 2.3 TB Diesel Mec.', @mo),
  ('S CD 4x4 2.5 TB Diesel', @mo),
  ('SE ATTACK CD 4x2 2.5 TB Diesel', @mo),
  ('SE ATTACK CD 4x4 2.5 TB Diesel', @mo),
  ('SE CD 4x4 2.3 Bi-TB Diesel Aut.', @mo),
  ('SE Serrana CD 4x4 2.8 TB Dies', @mo),
  ('SE Vibe CD 2.8 TDI Dies.', @mo),
  ('SE/ SE ONE CD 4x2 2.8 TDI Dies', @mo),
  ('SE/SE Strik CD 4x2 2.5 TB Dies.', @mo),
  ('SE/SE Strik CD 4x4 2.5 TB Dies.', @mo),
  ('SE/SE Strik/ONE CD 4x4 2.8 Dies', @mo),
  ('SEL CD 4x4 2.5 TB Diesel', @mo),
  ('SEL CD 4x4 2.5 TB Diesel Aut.', @mo),
  ('SL CD 4x4 2.5TB Diesel Aut', @mo),
  ('SV AT. CD 4x4 2.5 TB Dies. Aut.', @mo),
  ('SV AT.CD 4x4 2.5 TB Diesel Mec.', @mo),
  ('SV ATTACK CD 4x2 2.5 TB Diesel', @mo),
  ('XE CD 4x4 2.5 TB Diesel', @mo),
  ('XE ATTACK CD 2.8 TDI Diesel', @mo),
  ('XE CD 4x2 2.5 TB Diesel', @mo),
  ('XE CD 4x4 2.3 Bi-TB Diesel Aut.', @mo),
  ('XE CS 4x2 2.8 TB Interc. Dies.', @mo),
  ('XE/ XE TIT. CD 4x2 2.8 TDI Dies', @mo),
  ('XE/ XE TIT. CD 4x4 2.8 TDI Dies', @mo),
  ('X-GEAR CD 4x4 2.3 Bi-TB Die.Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'GT-R');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.8 V6 BiTurbo Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Infinit');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Kait');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Active 1.6 16v Aut.', @mo),
  ('Advance 1.6 16v Aut.', @mo),
  ('Advance Plus 1.6 16v Aut.', @mo),
  ('Exclusive 1.6 16v Aut.', @mo),
  ('Sense 1.6 16v Aut.', @mo),
  ('Sense Plus 1.6 16v Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Kicks');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Active 1.6 16V Flex Aut.', @mo),
  ('Active S 1.6 16V Flex Aut.', @mo),
  ('Advance 1.0 Turbo Flex Aut.', @mo),
  ('Advance 1.6 16V Flex Aut.', @mo),
  ('Exclusive 1.0 Turbo Flex Aut.', @mo),
  ('Exclusive 1.6 16V Flex Aut.', @mo),
  ('Platinum 1.0 Turbo Flex Aut.', @mo),
  ('Play Active Plus 1.6 16V Flex Aut.', @mo),
  ('Play Advance Plus 1.6 16V Flex Aut', @mo),
  ('Play Sense 1.6 16V Flex Aut.', @mo),
  ('Rio 2016 1.6 16V FlexStar 5p Aut.', @mo),
  ('S 1.6 16V Flex 5p Aut.', @mo),
  ('S 1.6 16V FlexStar 5p Mec.', @mo),
  ('S Direct 1.6 16V Flex 5p Aut.', @mo),
  ('Sense 1.0 Turbo Flex Aut.', @mo),
  ('Sense 1.6 16V Flex Aut.', @mo),
  ('Sense 1.6 16V Flex Mec.', @mo),
  ('SL 1.6 16V FlexStar 5p Aut.', @mo),
  ('Special Ed. 1.6 16V Flex 5p Aut.', @mo),
  ('Special Ed.1.6 16V Flex 5p Mec.', @mo),
  ('SV 1.6 16V FlexStar 5p Aut.', @mo),
  ('SV Limited 1.6 16V Flex 5p Aut.', @mo),
  ('UCL 1.6 16V Flex 5p Aut.', @mo),
  ('XPlay 1.6 16V Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'King-Cab');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SE 4x4 3.0 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Leaf');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Livina');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V Flex Fuel 5p', @mo),
  ('1.8 16V Flex Fuel Aut.', @mo),
  ('GRAND 1.8 16V Flex Fuel Aut.', @mo),
  ('GRAND 1.8 16V Flex Fuel Mec.', @mo),
  ('GRAND S 1.8 16V Flex Fuel Aut.', @mo),
  ('GRAND S 1.8 16V Flex Fuel Mec.', @mo),
  ('GRAND SL 1.8 16V Flex Fuel Aut.', @mo),
  ('GRAND SL 1.8 16V Flex Fuel Mec', @mo),
  ('NIGHT&DAY 1.6 16V Flex Fuel Mec.', @mo),
  ('S 1.6 16V Flex Fuel Mec.', @mo),
  ('S 1.8 16V Flex Fuel Aut.', @mo),
  ('SL 1.6 16V Flex Fuel 5p', @mo),
  ('SL 1.8 16V Flex Fuel Aut.', @mo),
  ('X-GEAR 1.6 16V Flex Fuel Mec.', @mo),
  ('X-GEAR S 1.6 16V Flex Fuel', @mo),
  ('X-GEAR SL 1.6 16V Flex Fuel Mec.', @mo),
  ('X-GEAR SL/X-GEAR 1.8 Flex F. Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'March');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 12V Flex 5p', @mo),
  ('1.0 12V FlexStart 5p', @mo),
  ('1.0 16V Flex Fuel 5p', @mo),
  ('Rio2016 1.0 Flex Fuel 5p', @mo),
  ('Rio2016 1.6 Flex Fuel 5p', @mo),
  ('S 1.0 12V Flex 5p', @mo),
  ('S 1.0 16V Flex Fuel 5p', @mo),
  ('S 1.6 16V Flex Fuel 5p', @mo),
  ('S 1.6 16V FlexStart 5p', @mo),
  ('SL 1.6 16V Flex Fuel 5p', @mo),
  ('SL 1.6 16V FlexStart 5p Aut.', @mo),
  ('SL 1.6 16V FlexStart 5p Mec.', @mo),
  ('SR 1.6 16V Flex Fuel 5p', @mo),
  ('SV 1.0 12V Flex 5p', @mo),
  ('SV 1.0 16V Flex Fuel 5p', @mo),
  ('SV 1.6 16V Flex Fuel', @mo),
  ('SV 1.6 16V FlexStart 5p Aut.', @mo),
  ('SV 1.6 16V FlexStart 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Maxima');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('30G/ GLE 3.0 V6 24V', @mo),
  ('30GV Limited 3.0 V6 24V', @mo),
  ('30GV/30GV Aero/ GV 3.0 V6 24V', @mo),
  ('30J', @mo),
  ('GXE 3.0', @mo),
  ('SE 3.0 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Micra');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Murano');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SE 3.5 V6 24V 231cv Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'NX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2000', @mo),
  ('2000 Targa 2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Pathfinder');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LE 2.5 16V TDI Diesel Aut', @mo),
  ('LE 4.0 V6 24V 266cv Aut', @mo),
  ('SE 2.5 16V TDI Diesel Aut.', @mo),
  ('SE 3.3 V6 12V', @mo),
  ('SE 4.0 V6 24V 266cv Aut.', @mo),
  ('SE 4x4 3.0 12V Aut./Mec.', @mo),
  ('SE Luxo 3.3 V6 12V', @mo),
  ('SE Luxo 3.5 V6 24V 243cv', @mo),
  ('SE Titanium 3.3 V6 12V', @mo),
  ('XE 2.7 TB Diesel', @mo),
  ('XE 4x4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Pick-Up');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CD AX/ DX 4x4 Diesel', @mo),
  ('CS DX 4x4 Diesel', @mo),
  ('King Cab DX 2.7 4x2 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Primera');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GXE 2.0 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Quest');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GXE/ GLE/ SER', @mo),
  ('XE 3.0 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sentra');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0/ 2.0 Flex Fuel 16V Aut.', @mo),
  ('2.0/ 2.0 Flex Fuel 16V Mec.', @mo),
  ('Advance 2.0 16V Aut.', @mo),
  ('Exclu. Int. Premium 2.0 16V Aut.', @mo),
  ('Exclusive 2.0 16V Aut.', @mo),
  ('GLE', @mo),
  ('GSX/ EX', @mo),
  ('GXE/ SER', @mo),
  ('S 2.0 FlexStart 16V Aut.', @mo),
  ('S 2.0/ 2.0 Flex Fuel 16V Aut.', @mo),
  ('S 2.0/ 2.0 Flex Fuel 16V Mec.', @mo),
  ('SE 2.0 Flex 16V Aut.', @mo),
  ('SL 2.0 FlexStart 16V Aut.', @mo),
  ('SL 2.0/ 2.0 Flex Fuel 16V Aut.', @mo),
  ('SR 2.0 Flex Fuel 16V Aut.', @mo),
  ('SR 2.0 Flex Fuel 16V Mec.', @mo),
  ('SV 2.0 FlexStart 16V Aut.', @mo),
  ('UNIQUE 2.0 Flex Fuel 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Stanza');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('XE 2.4 12V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('240 2.4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Terrano');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('II SE 2.7 Diesel', @mo),
  ('II SLX 2.7 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tiida');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('S 1.8/1.8 Flex 16V Mec.', @mo),
  ('S 1.8/1.8 Flex 16V Aut.', @mo),
  ('Sedan 1.8 16V Flex Fuel 4p', @mo),
  ('Sedan 1.8 16V Flex Fuel 4p Aut.', @mo),
  ('SL 1.8/1.8 Flex 16V Mec.', @mo),
  ('SL 1.8/1.8 Flex 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Versa');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 12V FlexStart 4p Mec.', @mo),
  ('Advance 1.6 16V Flex Aut.', @mo),
  ('Exclusive 1.6 16V Flex Aut.', @mo),
  ('S 1.0 12V FlexStart 4p Mec.', @mo),
  ('S 1.6 16V Flex Fuel 4p Mec.', @mo),
  ('S 1.6 16V FlexStart 4p Mec.', @mo),
  ('Sense 1.6 16V Flex Aut.', @mo),
  ('Sense 1.6 16V Flex Mec.', @mo),
  ('SL 1.6 16V Flex Fuel 4p Mec.', @mo),
  ('SL 1.6 16V FlexStart 4p Aut.', @mo),
  ('SL 1.6 16V FlexStart 4p Mec.', @mo),
  ('SL Direct 1.6 16V Flex Aut.', @mo),
  ('Special Ed. 1.6 16V FlexStart Aut.', @mo),
  ('SR 1.6 16V Flex Aut.', @mo),
  ('SV 1.6 16V Flex Fuel 4p Mec.', @mo),
  ('SV 1.6 16V FlexStart 4p Aut.', @mo),
  ('SV 1.6 16V FlexStart 4p Mec.', @mo),
  ('UNIQUE 1.6 16V Flex 4p Mec.', @mo),
  ('UNIQUE 1.6 16V FlexStart 4p Aut.', @mo),
  ('V-DRIVE 1.0 12V Flex Mec.', @mo),
  ('V-DRIVE 1.6 16V Flex Mec.', @mo),
  ('V-DRIVE Esp.Ed. 1.6 16v Flex Aut.', @mo),
  ('V-DRIVE PLUS 1.6 16V Flex Aut.', @mo),
  ('V-DRIVE Premium 1.6 16v Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XTerra');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ECOTRIP 4x4 140cv 2.8 TB Int.Dies', @mo),
  ('SE 4x4 2.8 132/140cv TB Int.Dies.', @mo),
  ('XE 4x4 2.8 132cv TB Int. Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X-TRAIL');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GX 2.5 16V 180cv 5p', @mo),
  ('LE 2.0 16V 138cv Aut.', @mo),
  ('SE 2.0 16V 138cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ZX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('300 3.0 BI-Turbo', @mo);

-- Omoda
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Omoda');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('5', @m),
  ('7', @m),
  ('E5', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Luxury 1.5 TB FWD', @mo),
  ('Prestige 1.5 TB FWD', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '7');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Luxury 1.5 TB FWD', @mo),
  ('Prestige 1.5 TB FWD', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E5');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('FWD (Elétrico)', @mo);

-- Peugeot
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Peugeot');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('106', @m),
  ('2008', @m),
  ('205', @m),
  ('206', @m),
  ('207', @m),
  ('208', @m),
  ('3008', @m),
  ('306', @m),
  ('307', @m),
  ('308', @m),
  ('405', @m),
  ('406', @m),
  ('407', @m),
  ('408', @m),
  ('5008', @m),
  ('504', @m),
  ('505', @m),
  ('508', @m),
  ('605', @m),
  ('607', @m),
  ('806', @m),
  ('807', @m),
  ('Boxer', @m),
  ('e-2008', @m),
  ('e-208', @m),
  ('E-Expert', @m),
  ('Expert', @m),
  ('Hoggar', @m),
  ('Partner', @m),
  ('RCZ', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '106');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('KID 1.0', @mo),
  ('Passion 1.0 3p', @mo),
  ('Passion 1.0 5p', @mo),
  ('Quiksilver 1.0 3p', @mo),
  ('Selection 1.0 3p', @mo),
  ('Selection 1.0 5p', @mo),
  ('Soleil 1.0 3p', @mo),
  ('Soleil 1.0 5p', @mo),
  ('XN 3p e 5p', @mo),
  ('XT', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '2008');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Active 1.0 Turbo Flex 5p Aut.', @mo),
  ('Allure 1.0 Turbo 200 5p Aut.', @mo),
  ('Allure 1.0 Turbo Flex 5p Aut.', @mo),
  ('Allure 1.6 Flex 16V 5p Aut.', @mo),
  ('Allure 1.6 Flex 16V 5p Mec.', @mo),
  ('Allure Bus. 1.6 Flex 5p Aut.', @mo),
  ('Allure Essencial 1.6 Flex 16V Aut.', @mo),
  ('Allure Pack 1.6 Flex 16V Aut.', @mo),
  ('Allure Pack Bus. 1.6 Flex Aut.', @mo),
  ('Crossway 1.6 Flex 16V 5p Aut.', @mo),
  ('Griffe 1.6 Flex 16V 5p Aut.', @mo),
  ('Griffe 1.6 Flex 16V 5p Mec.', @mo),
  ('Griffe 1.6 Turbo Flex 16V 5p Aut.', @mo),
  ('Griffe 1.6 Turbo Flex 16V 5p Mec.', @mo),
  ('GT 1.0 Turbo 200 5p Aut.', @mo),
  ('GT 1.0 Turbo Flex 5p Aut.', @mo),
  ('Roadtrip 1.6 Flex 16V 5p Aut.', @mo),
  ('SKYWALKER 1.6 Turbo Flex 16V Aut.', @mo),
  ('Style 1.6 Flex 16V 5p Aut.', @mo),
  ('Style 1.6 Turbo Flex 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '205');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CJ Cabriolet', @mo),
  ('CTi Cabriolet 1.4', @mo),
  ('GTi 1.4', @mo),
  ('XSi/ Junior 1.4 3p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '206');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Allure 1.6 Flex 16V 3p', @mo),
  ('Allure 1.6 Flex 16V 5p', @mo),
  ('Automatic (feline)1.6 Flex 16V 5p', @mo),
  ('CC 1.6 16V 2p', @mo),
  ('Feline 1.4/ 1.4 Flex 8V 5p', @mo),
  ('Holiday 1.4 8V 75cv 3p', @mo),
  ('Holiday 1.4 8V 75cv 5p', @mo),
  ('Holiday 1.6 Flex 16V 3p', @mo),
  ('Holiday 1.6 Flex 16V 5p', @mo),
  ('Moonlight 1.4 Flex 8V 3p', @mo),
  ('Moonlight 1.4 Flex 8V 5p', @mo),
  ('Passion 1.6', @mo),
  ('Passion 1.6 16v 110cv 5p', @mo),
  ('Presence 1.4/ 1.4 Flex 8V 3p', @mo),
  ('Presence 1.4/ 1.4 Flex 8V 5p', @mo),
  ('Rallye 1.6', @mo),
  ('Rallye 1.6/ 1.6 Flex 16v 110cv 3p', @mo),
  ('Select./Presence 1.6/1.6 Flex 16V 5p', @mo),
  ('Selection 1.6 16V 110cv 3p', @mo),
  ('Selection/ Sensation 1.0 16v 3p', @mo),
  ('Selection/ Sensation 1.0 16v 5p', @mo),
  ('Sensation 1.4 Flex 8V 3p', @mo),
  ('Sensation 1.4 Flex 8V 5p', @mo),
  ('Soleil 1.0 16v 5p', @mo),
  ('Soleil 1.6 16v 110cv 5p', @mo),
  ('Soleil 1.6 3p', @mo),
  ('Soleil 1.6 5p', @mo),
  ('Soleil/Quiksilver 1.0 16V 3p', @mo),
  ('Soleil/Quiksilver 1.6 16V 110cv 3p', @mo),
  ('SW Automatic (feline)1.6 Flex 16V 5p', @mo),
  ('SW ESCAPADE 1.6 16V Flex 5p', @mo),
  ('SW Feline 1.6/ 1.6 Flex 16V 5p', @mo),
  ('SW Moonlight 1.4 Flex 8V 5p', @mo),
  ('SW Presence 1.4/ 1.4 Flex 8V 5p', @mo),
  ('SW Presence 1.6/1.6 Flex 16V 5p', @mo),
  ('Techno 1.0 16V 70cv 5p', @mo),
  ('Techno/ Feline 1.6/ 1.6 Flex 16V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '207');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Active 1.4 Flex 8V 5p', @mo),
  ('Blue Lion 1.4 Flex 8V 5p', @mo),
  ('QUIKSILVER 1.4 Flex 8V 3p', @mo),
  ('QUIKSILVER 1.4 Flex 8V 5p', @mo),
  ('QUIKSILVER 1.6 Flex 16V 5p', @mo),
  ('Sed. Passion XR Sport 1.4 Flex 8V 4p', @mo),
  ('Sedan Active 1.4 Flex 8V 4p', @mo),
  ('Sedan Allure 1.4 Flex 8v 4p', @mo),
  ('Sedan Passion XR 1.4 Flex 8V 4p', @mo),
  ('Sedan Passion XS 1.6 Flex 16V 4p', @mo),
  ('Sedan Passion XS 1.6 Flex 16V 4p Aut', @mo),
  ('SW ESCAPADE 1.6 16V Flex 5p', @mo),
  ('SW XR 1.4 Flex 8V 5p', @mo),
  ('SW XR Sport 1.4 Flex 8V 5p', @mo),
  ('SW XS 1.6 Flex 16V 5p Aut.', @mo),
  ('X-Line 1.4 Flex 8V 3p', @mo),
  ('X-Line 1.4 Flex 8V 5p', @mo),
  ('XR 1.4 Flex 8V 3p', @mo),
  ('XR 1.4 Flex 8V 5p', @mo),
  ('XR Sport 1.4 Flex 8V 3p', @mo),
  ('XR Sport 1.4 Flex 8V 5p', @mo),
  ('XS 1.6 Flex 16V 3p', @mo),
  ('XS 1.6 Flex 16V 5p', @mo),
  ('XS 1.6 Flex 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '208');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Active 1.0 Flex 5p Mec.', @mo),
  ('Active 1.0 Turbo 200 5p Aut.', @mo),
  ('Active 1.2 Flex 12V 5p Mec.', @mo),
  ('Active 1.6 Flex 16V 5p Aut.', @mo),
  ('Active Pack 1.2 Flex 12V 5p Mec.', @mo),
  ('Active Pack 1.6 Flex 16V 5p Aut.', @mo),
  ('Active/Active Pack 1.5 Flex 8V 5p', @mo),
  ('Allure 1.0 Turbo 200 5p Aut.', @mo),
  ('Allure 1.0 Turbo Flex 5p Aut.', @mo),
  ('Allure 1.2 Flex 12V 5p Mec.', @mo),
  ('Allure 1.5 Flex 8V 5p', @mo),
  ('Allure 1.6 Flex 16V 5p Aut.', @mo),
  ('Allure inconcert 1.5 Flex 8V 5p Mec.', @mo),
  ('Allure inconcert 1.6 Flex 16V 5p Aut', @mo),
  ('Griffe 1.0 Turbo Flex 5p Aut.', @mo),
  ('Griffe 1.6 Flex 16V 5p Aut.', @mo),
  ('Griffe 1.6 Flex 16V 5p Mec.', @mo),
  ('Griffe Bus. 1.6 Flex 5p Aut.', @mo),
  ('GT 1.0 Turbo 200 5p Aut.', @mo),
  ('GT 1.0 Turbo Flex 5p Aut.', @mo),
  ('GT 1.6 THP Flex 16V 5p Mec.', @mo),
  ('Inconcert 1.6 Flex 16V 5p Aut.', @mo),
  ('Like 1.0 Flex 6V 5p Mec.', @mo),
  ('Like 1.6 Flex 16V 5p Mec.', @mo),
  ('Like Essencial 1.6 Flex 16V 5p Mec.', @mo),
  ('Premier 1.6 Flex 16V 5p', @mo),
  ('Roadtrip 1.6 Flex 16V 5p Aut.', @mo),
  ('Sport 1.6 Flex 16V 5p Mec.', @mo),
  ('Style 1.0 Flex 6V 5p Mec.', @mo),
  ('Style 1.0 Turbo Flex 5p Aut.', @mo),
  ('URBANTECH1.6 Flex 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '3008');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Allure 1.6 Turbo 16V 5p Aut.', @mo),
  ('Griffe 1.6 Turbo 16V 5p Aut.', @mo),
  ('Griffe Pack 1.6 Turbo 16V 5p Aut.', @mo),
  ('GT Pack 1.6 Turbo 16V 5p Aut.', @mo),
  ('Roland Garros 1.6 Turbo 16V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '306');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Break Passion 1.8 16V', @mo),
  ('Cabriolet 1.8/ Mi 16V', @mo),
  ('Cabriolet 2.0', @mo),
  ('GTi 2.0 16V', @mo),
  ('Passion 1.8 16V', @mo),
  ('Passion Sedan 1.8 16V', @mo),
  ('Rallye 1.8 16V', @mo),
  ('S16 2.0 3p', @mo),
  ('Selection Hatch 1.8 16V', @mo),
  ('Selection Sedan 1.8 16V', @mo),
  ('Si/ SL 1.8', @mo),
  ('Soleil 1.8 16V 4p', @mo),
  ('Soleil 1.8 16V 2p', @mo),
  ('Soleil Break 1.8 16V 5p', @mo),
  ('Soleil Hatch 1.8 16V 5p', @mo),
  ('SR', @mo),
  ('XN 1.8', @mo),
  ('XR 1.8 / XR Break 1.8 16V', @mo),
  ('XS 1.6 3p/ ST 1.8i 4p', @mo),
  ('XSi 2.0 3/5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '307');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CC 2.0 16V 138cv 2p Mec.', @mo),
  ('CC 2.0 16V 2p Aut.', @mo),
  ('Feline 2.0/2.0 Flex 16V 5p Mec.', @mo),
  ('Feline/Griff/Premi. 2.0 Flex 5p Aut.', @mo),
  ('MILLESIM200 1.6 Flex 16V 5p', @mo),
  ('Passion 1.6 16V 110cv 5p', @mo),
  ('Passion 2.0 16V 138cv 5p', @mo),
  ('Presence 2.0 Flex 16V 5p Aut.', @mo),
  ('Rallye 1.6 16V 110cv 5p', @mo),
  ('Rallye 2.0 16V 138cv 5p', @mo),
  ('Rallye 2.0 16V 138cv 5p Aut.', @mo),
  ('Sed. Feline 2.0/2.0 Flex 16V 4p Mec.', @mo),
  ('Sed. Presence 1.6 Flex 16V 4p', @mo),
  ('Sed. Presence 2.0 Flex 16V 5p Aut.', @mo),
  ('Sed.Feline/Griff 2.0/2.0 Flex 4p Aut', @mo),
  ('Soleil/ Presence 1.6/1.6 Flex 16V 5p', @mo),
  ('SW 2.0 16V 138cv 5p Mec.', @mo),
  ('SW 2.0 16V 5p Aut.', @mo),
  ('SW Allure 2.0 16V 5p Aut.', @mo),
  ('SW Allure 2.0 16V 5p Mec.', @mo),
  ('SW Feline 2.0 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '308');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Active 1.6 Flex 16V 5p mec.', @mo),
  ('Allure 1.6 Flex 16V 5p Mec.', @mo),
  ('Allure 1.6 Turbo Flex 16V 5p Aut.', @mo),
  ('Allure 2.0 Flex 16V 5p Aut.', @mo),
  ('Allure 2.0 Flex 16V 5p Mec.', @mo),
  ('Bus. Pro 1.6 TB Flex 5p Aut.', @mo),
  ('Business 1.6 Turbo Flex 16V 5p Aut.', @mo),
  ('CC 1.6 Turbo 16V 2p Aut.', @mo),
  ('CC Roland Garros 1.6 Turbo16V 2p Aut', @mo),
  ('Feline 2.0 Flex 16V 5p Aut.', @mo),
  ('Feline/Griffe 1.6 Turbo 16V 5p Aut.', @mo),
  ('Griffe 1.6 Turbo Flex 16V 5p Aut.', @mo),
  ('QUIKSILVER 1.6 Flex 16V 5p Mec.', @mo),
  ('Roland Garros 1.6 TB Flex 16V 5p Aut', @mo),
  ('Roland Garros 1.6 Turbo 16V 5P', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '405');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLi/ GL 1.6', @mo),
  ('GRi 1.8', @mo),
  ('Mi 2.0 16V', @mo),
  ('SRi 1.8', @mo),
  ('SRi 2.0', @mo),
  ('SRi Break', @mo),
  ('STi', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '406');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Break 2.0 16V', @mo),
  ('Break 3.0 V6 24V', @mo),
  ('Break ST 2.0', @mo),
  ('Cupê 3.0 24V Aut.', @mo),
  ('Cupê 3.0 24V Mec.', @mo),
  ('Familiale 2.0 16V Aut.', @mo),
  ('Familiale 2.0 16V Mec.', @mo),
  ('Sedan 2.0 Aut.', @mo),
  ('Sedan 2.0 Mec.', @mo),
  ('Sedan 3.0 V6 24V', @mo),
  ('ST 2.0 16V Mec', @mo),
  ('ST/ SVA 2.0 16V Aut', @mo),
  ('SV 2.0 16V', @mo),
  ('SVA 3.0 24V', @mo),
  ('SVE 3.0 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '407');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sed. Allure 2.0 16V 4p Aut.', @mo),
  ('Sed. Feline 3.0 V6 211cv 4p Aut.', @mo),
  ('Sed. Griffe 3.0 V6 211cv 4p Aut.', @mo),
  ('Sedan 2.0 16V 138cv 4p Aut.', @mo),
  ('Sedan 3.0 V6 211cv 4p Aut.', @mo),
  ('SW 2.0 16V 5p Aut.', @mo),
  ('SW 3.0 V6 211cv 5p Aut.', @mo),
  ('SW Allure 2.0 16V 5p Aut.', @mo),
  ('SW Feline 3.0 V6 211cv 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '408');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sed. Bus. Pro 1.6 TB Flex Aut.', @mo),
  ('Sed. Bus./Allure 1.6 TB Flex 16V Aut', @mo),
  ('Sed. R.Garros 1.6 TB Flex 16V 4p Aut', @mo),
  ('Sedan Allure 2.0 Flex 16V 4p Aut.', @mo),
  ('Sedan Allure 2.0 Flex 16V 4p Mec.', @mo),
  ('Sedan Feline 2.0 Flex 16V 4p Aut.', @mo),
  ('Sedan Griffe 1.6 TB Flex 16V 4p Aut.', @mo),
  ('Sedan Griffe 1.6 Turbo 16V 4p Aut.', @mo),
  ('Sedan Griffe 2.0 Flex 16V 4p Aut.', @mo),
  ('Sedan Limited 2.0 Flex 16V 4p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '5008');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Griffe 1.6 Turbo 16V 5p Aut.', @mo),
  ('Griffe Pack 1.6 Turbo 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '504');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GD 2.3 Diesel', @mo),
  ('GRD 2.3 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '505');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SR/ SRi/ SRX', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '508');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('THP 1.6 Turbo 16V 4p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '605');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SRi 3.0', @mo),
  ('SRi/ SLi 2.0', @mo),
  ('SV 3.0 Aut.', @mo),
  ('SV-3 3.0 V6 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '607');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sedan 3.0 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '806');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ST Turbo', @mo),
  ('SV 2.0 Turbo', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '807');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 138cv 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Boxer');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.3 Furg.TB Dies. Curto/Médio', @mo),
  ('2.3 Furg.TB Dies. Méd/ LongoT.Alto', @mo),
  ('2.3 LH Executive 15/16L TB Diesel', @mo),
  ('2.3 Minibus 15/16L TB Diesel.', @mo),
  ('2.5 Diesel', @mo),
  ('2.8 10Lug. Diesel', @mo),
  ('2.8 Furg. TB Dies. Méd/LongoT.Alto', @mo),
  ('2.8 Furgão Dies/ TB Dies.curto/méd', @mo),
  ('2.8 Van Diesel/TB Diesel 15L/16L', @mo),
  ('Business Furgão 2.0 Turbo Diesel', @mo),
  ('Cargo 2.2 Turbo Diesel', @mo),
  ('Cargo Furgão 2.0 Turbo Diesel', @mo),
  ('Comfort 18L 2.2 Turbo', @mo),
  ('Furgão 2.2 Turbo Diesel', @mo),
  ('Luxo 16L 2.2 Turbo', @mo),
  ('Minibus 2.0 16L Turbo Diesel', @mo),
  ('Minibus Exec. 2.2 17L Turbo Diesel', @mo),
  ('Vidrado 2.2 Turbo Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'e-2008');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GT 5p Aut. ( Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'e-208');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GT 5p Aut. (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'E-Expert');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cargo 136cv (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Expert');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Business 1.6 Turbo Diesel', @mo),
  ('Business Pack 1.6 Turbo Diesel', @mo),
  ('Cargo 1.5 Turbo Diesel', @mo),
  ('Cargo 2.2 Turbo Diesel', @mo),
  ('Minibus 1.6 Turbo Diesel', @mo),
  ('VITRÉ 1.5 Turbo Diesel', @mo),
  ('VITRÉ 1.6 Turbo Diesel', @mo),
  ('VITRÉ 2.2 Turbo Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Hoggar');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Active 1.4 Flex 8V 2p', @mo),
  ('Allure 1.4 Flex 8V 2p', @mo),
  ('ESCAPADE 1.6 Flex 16V 2p', @mo),
  ('X-Line 1.4 Flex 8V 2p', @mo),
  ('XR 1.4 Flex 8V 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Partner');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('VAN 1.6 Flex 16V 5p', @mo),
  ('VAN ESCAPADE 1.6 Flex 16V 5p', @mo),
  ('Furgão 1.6 16V/ 1.6 16V Flex 3p', @mo),
  ('Furgão 1.8 3p', @mo),
  ('Rapid Busin. Pack 1.3 Flex Mec.', @mo),
  ('Rapid Busin. Pack 1.4 Flex Mec.', @mo),
  ('Rapid Busin.1.4 Flex Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RCZ');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 Turbo 16V 2p Aut.', @mo);

-- Plymouth
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Plymouth');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Gran Voyager', @m),
  ('Sundance', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Gran Voyager');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LE 2.5', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sundance');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5', @mo);

-- Pontiac
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Pontiac');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Trans-AM', @m),
  ('Trans-Sport', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Trans-AM');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('5.7 V8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Trans-Sport');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SE 3.1', @mo);

-- Porsche
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Porsche');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('718', @m),
  ('911', @m),
  ('928', @m),
  ('968', @m),
  ('Boxster', @m),
  ('Cayene', @m),
  ('Cayenne', @m),
  ('Cayman', @m),
  ('Macan', @m),
  ('Panamera', @m),
  ('Taycan', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '718');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Boxster 2.0 300cv', @mo),
  ('Boxster 25Anos 4.0 400cv', @mo),
  ('Boxster GTS 2.5 365cv', @mo),
  ('Boxster GTS 4.0 400cv', @mo),
  ('Boxster S 2.5 350cv', @mo),
  ('Boxster Spyder 4.0 420cv', @mo),
  ('Boxster Style Edition 2.0 300cv', @mo),
  ('Boxster T 2.0 300cv', @mo),
  ('Cayman 2.0 300cv', @mo),
  ('Cayman GT4 4.0 420cv', @mo),
  ('Cayman GT4 RS 4.0 500cv', @mo),
  ('Cayman GTS 2.5 365cv', @mo),
  ('Cayman GTS 4.0 400cv', @mo),
  ('Cayman S 2.5 350cv', @mo),
  ('Cayman Style Edition 2.0 300cv', @mo),
  ('Cayman T 2.0 300cv', @mo),
  ('Spyder 4.0 420cv', @mo),
  ('Spyder RS 4.0 500cv', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '911');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4 GTS Targa 3.0 24V (991)', @mo),
  ('Carrera 4 Cabriolet 3.0 (991)', @mo),
  ('Carrera 4 Coupe 3.0 (991)', @mo),
  ('Carrera 4 GTS Cabri. 3.0 24V (992)', @mo),
  ('Carrera 4 GTS Coupe 3.0 24V (992)', @mo),
  ('Carrera 4 GTS Coupe 3.8 24V (991)', @mo),
  ('Carrera 4 GTS Targa 3.8 24V (991)', @mo),
  ('Carrera 4S Cabriolet 3.0 (991/992)', @mo),
  ('Carrera 4S Cabriolet-4 3.6/3.8', @mo),
  ('Carrera 4S Coupe 3.0 (991/992)', @mo),
  ('Carrera 4S Coupe-4 3.6/3.8', @mo),
  ('Carrera Cabriolet 3.0 (991/992)', @mo),
  ('Carrera Cabriolet 3.4/ 3.6 Mec.', @mo),
  ('Carrera Cabriolet 3.4/ 3.6 Tiptronic', @mo),
  ('Carrera Cabriolet-4 3.4 Mec.', @mo),
  ('Carrera Cabriolet-4 3.4 Tiptronic', @mo),
  ('Carrera Coupe', @mo),
  ('Carrera Coupe 3.0 (991/992)', @mo),
  ('Carrera Coupe Black Edi. 3.6/3.4 24V', @mo),
  ('Carrera Coupe GTS 3.8 24V 408cv', @mo),
  ('Carrera Coupe Tiptronic', @mo),
  ('Carrera Coupe-4 3.4/ 3.6', @mo),
  ('Carrera Coupe-4 3.4/ 3.6 Tiptronic', @mo),
  ('Carrera Evo Cabriolet', @mo),
  ('Carrera Evo Cabriolet-4', @mo),
  ('Carrera Evo Coupe', @mo),
  ('Carrera Evo Coupe-4', @mo),
  ('Carrera GTS Cabriolet 3.0 (992)', @mo),
  ('Carrera GTS Cabriolet 3.6 (992)', @mo),
  ('Carrera GTS Cabriolet 3.8 24V (991)', @mo),
  ('Carrera GTS Coupe 3.0 (992)', @mo),
  ('Carrera GTS Coupe 3.6 (992) (Híb.)', @mo),
  ('Carrera GTS Coupe 3.8 24V (991)', @mo),
  ('Carrera S 50th Coupe 3.8 24V(991)', @mo),
  ('Carrera S Cabriolet 3.0 (991/992)', @mo),
  ('Carrera S Cabriolet 3.8 24V', @mo),
  ('Carrera S Cabriolet 3.8 24V (991)', @mo),
  ('Carrera S Coupe 3.0 (991/992)', @mo),
  ('Carrera S Coupe 3.8 24V', @mo),
  ('Carrera S Coupe 3.8 24V (991)', @mo),
  ('Carrera T 3.0', @mo),
  ('Carrera T Cabriolet 3.0', @mo),
  ('Dakar Coupe-4 3.0', @mo),
  ('GT2 RS 3.8 V6 700cv (991)', @mo),
  ('GT3 4.0 500cv/510cv (991/992)', @mo),
  ('GT3 RS', @mo),
  ('GT3/ GT2 Street', @mo),
  ('SPEEDSTER 4.0 510CV', @mo),
  ('Sport Classic 3.8 550cv', @mo),
  ('Targa 3.6', @mo),
  ('Targa 4 3.0 370cv (991)', @mo),
  ('Targa 4 GTS 3.0', @mo),
  ('Targa 4 GTS 3.6 (992)', @mo),
  ('Targa 4S', @mo),
  ('Targa 4S 3.0 420cv (991)', @mo),
  ('Turbo Cabriolet 3.6/3.8 (991/992)', @mo),
  ('Turbo Coupe 3.6/3.8 (991/992)', @mo),
  ('Turbo S Cabriolet 3.6 24V (992)', @mo),
  ('Turbo S Cabriolet 3.6/3.8(991/992)', @mo),
  ('Turbo S Coupe 3.6 24V (992)', @mo),
  ('Turbo S Coupe 3.6/3.8 24V (991/992)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '928');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GTS 5.4 32V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '968');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet 3.0', @mo),
  ('Coupe 3.0 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Boxster');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.9 255cv', @mo),
  ('2.7 265cv', @mo),
  ('GTS 3.4 330cv', @mo),
  ('Mec.', @mo),
  ('S', @mo),
  ('S 3.4 310cv', @mo),
  ('S 3.4 315/319cv', @mo),
  ('S Tiptronic', @mo),
  ('Spyder 3.4 320cv', @mo),
  ('Spyder 3.8 375cv', @mo),
  ('Tiptronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cayene');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Black Edition 3.0 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cayenne');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('3.0 V6 (Híbrido)', @mo),
  ('3.0 V6 340cv', @mo),
  ('Coupe', @mo),
  ('Coupe 3.0 V6 (Híbrido)', @mo),
  ('Coupe 3.0 V6 340cv', @mo),
  ('Coupe Black Edition 3.0 V6', @mo),
  ('Coupe Platinum Ed. 3.0 (Híbrido)', @mo),
  ('Coupe TB 4.0 V8 (Híbrido)', @mo),
  ('Coupe Turbo 4.0 V8 550cv', @mo),
  ('Coupe Turbo S 4.0 (Híbrido)', @mo),
  ('GTS 3.6 Bi-Turbo 440cv', @mo),
  ('GTS 4.0 500cv', @mo),
  ('GTS 4.8 405/420cv', @mo),
  ('GTS Coupe 4.0 500cv', @mo),
  ('Platinum Ed. 3.0 (Híbrido)', @mo),
  ('Platinum Ed. 3.6', @mo),
  ('S', @mo),
  ('S 2.9 Bi-Turbo V6 440cv', @mo),
  ('S 3.0 V6 (Híbrido)', @mo),
  ('S 3.6 Bi-Turbo 420cv', @mo),
  ('S 4.0 V8 474cv', @mo),
  ('S 4.5/4.8', @mo),
  ('S Black Edition 3.0 V6', @mo),
  ('S Coupe', @mo),
  ('S Coupe 3.0 V6 519cv (Híbrido)', @mo),
  ('S Coupe 4.0 V8 474cv', @mo),
  ('S Coupe Black Edition 3.0 V6', @mo),
  ('Turbo', @mo),
  ('Turbo 4.0 V8 (Híbrido)', @mo),
  ('Turbo 4.0 V8 550cv', @mo),
  ('Turbo 4.5/4.8', @mo),
  ('Turbo Coupe', @mo),
  ('Turbo GT 4.0 V8', @mo),
  ('Turbo S 4.0 V8 680cv (Híbrido)', @mo),
  ('Turbo S 4.5/4.8 32V', @mo),
  ('V6 3.2/3.6 24V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cayman');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.7/ 2.9', @mo),
  ('GT4 3.8 385cv', @mo),
  ('GTS 3.4 340cv', @mo),
  ('R 3.4 330cv', @mo),
  ('S 3.4', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Macan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('(Elétrico)', @mo),
  ('2.0 Turbo', @mo),
  ('3.6 Bi-Turbo 400cv', @mo),
  ('4 (Elétrico)', @mo),
  ('4S (Elétrico)', @mo),
  ('GTS', @mo),
  ('GTS 2.9 Bi-Turbo', @mo),
  ('GTS 3.0 Bi-Turbo 360cv', @mo),
  ('Performance 3.6 Bi-TB V6', @mo),
  ('S 2.9/3.0 Bi-Turbo', @mo),
  ('T 2.0 Turbo', @mo),
  ('Turbo (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Panamera');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 330cv', @mo),
  ('3.6 V6 300cv/310cv', @mo),
  ('4 2.9 (Híbrido)', @mo),
  ('4 3.0 330cv', @mo),
  ('4 Executive 2.9 462cv (Híbrido)', @mo),
  ('4 Executive 3.0 330cv', @mo),
  ('4 Plat.Edt 2.9 462cv (Híbrido)', @mo),
  ('4 Sport Tur. 2.9 462cv (Híb.)', @mo),
  ('4 Sport Turismo 3.0 330cv', @mo),
  ('4S 2.9 440cv', @mo),
  ('4S 2.9 560cv (Híbrido)', @mo),
  ('4S 4.8 400cv', @mo),
  ('4S Executive 2.9 440cv', @mo),
  ('4S Sport Turismo 2.9 440cv', @mo),
  ('Edition 3.6 v6 310cv', @mo),
  ('GT-S 4.8', @mo),
  ('S 3.0 Bi-Turbo 420cv', @mo),
  ('S 4.8 400cv', @mo),
  ('TB S Sport Turis. 4.0 (Híbrido)', @mo),
  ('Turbo 4.0 (Híbrido)', @mo),
  ('Turbo 4.0 550cv', @mo),
  ('Turbo 4.8 500cv/520cv', @mo),
  ('Turbo Executive 4.0 550cv', @mo),
  ('Turbo S 4.0 (Híbrido)', @mo),
  ('Turbo S 4.8', @mo),
  ('Turbo S Execul. 4.0 (Híbrido)', @mo),
  ('Turbo Sport Turismo 4.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Taycan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('(Elétrico)', @mo),
  ('4 Cross Turismo (Elétrico)', @mo),
  ('4S (Elétrico)', @mo),
  ('4S Black Edition', @mo),
  ('4S Cross Turismo (Elétrico)', @mo),
  ('GTS (Elétrico)', @mo),
  ('Turbo (Elétrico)', @mo),
  ('Turbo Cross Turismo (Elétrico)', @mo),
  ('Turbo GT (Elétrico)', @mo),
  ('Turbo S (Elétrico)', @mo);

-- RAM
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'RAM');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('1500', @m),
  ('2500', @m),
  ('3500', @m),
  ('Classic', @m),
  ('Dakota', @m),
  ('Rampage', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '1500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('BIG HORN 3.0 CD BI-TB 4x4 Aut.', @mo),
  ('LARAM. NIGHT ED. BI-TB 3.0 4x4 Aut.', @mo),
  ('LARAMIE 3.0 CD BI-TB 4x4 Aut.', @mo),
  ('LIMITED 5.7 CD 4x4 Aut.', @mo),
  ('LIMITED NIGHT EDITION 5.7 4x4 Aut.', @mo),
  ('REBEL 5.7 HEMI CD V8 4x4 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '2500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LARAM. 6.7 Ed. ABQM TB CD 4X4 Die.', @mo),
  ('LARAM. 6.7 NIGHT ED. TB CD 4x4 Die.', @mo),
  ('LARAM. 6.7 RODEO ED. TB CD 4x4 Die.', @mo),
  ('LARAMIE 6.7 TDI CD 4x4 Diesel', @mo),
  ('LARAMIE TROPIV. 6.7 4x4 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '3500');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LARAM.6.7 NIGHT ED.TB CD 4X4 Die.', @mo),
  ('LARAMIE 6.7 TB CD 4x4 Diesel', @mo),
  ('LIMITED LONGHORN 6.7 TB CD Diesel', @mo),
  ('YELLOWSTONE EDITION 6.7 TB CD Die.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Classic');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LARAMIE 5.7 CD V8 4X4 Aut.', @mo),
  ('LARAMIE NIGHT ED. 5.7 4X4 Aut.', @mo),
  ('R/T 5.7 CD V8 4X4 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Dakota');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('BIG HORN 2.2 TB CD 4X4 Aut.', @mo),
  ('LARAMIE 2.2 TB CD 4x4 Aut.', @mo),
  ('LARAMIE NIGHT EDITION 2.2 TB CD 4x4 Aut.', @mo),
  ('WARLOCK 2.2 TB CD 4x4 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Rampage');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('BIG HORN 2.2 TB CD 4X4 Die Aut.', @mo),
  ('LAR. HURR. 4 2.0 TB CD 4X4 Aut.', @mo),
  ('LARAMIE 2.0 TB CD 4X4 Die. Aut.', @mo),
  ('LARAMIE 2.0 TURBO CD 4X4 Aut.', @mo),
  ('LARAMIE 2.2 TB CD 4X4 Die. Aut.', @mo),
  ('R/T HURRIC. 4 2.0 TB CD 4X4 Aut.', @mo),
  ('R/T HURRICANE 2.0 TURBO CD 4X4 Aut.', @mo),
  ('REBEL 2.0 TB CD 4X4 Diesel Aut.', @mo),
  ('REBEL 2.2 TB CD 4X4 Diesel Aut.', @mo),
  ('REBEL HURR.4 2.0 TB CD 4X4 Aut.', @mo),
  ('REBEL IGNIT. 2.0 TB CD 4X4 Aut.', @mo),
  ('REBEL IGNITION 2.0 TB CD 4X4 Aut.', @mo);

-- RELY
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'RELY');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Link', @m),
  ('PICK-UP', @m),
  ('VAN', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Link');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.3 16V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'PICK-UP');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Q22B CS 1.0 2p', @mo),
  ('Q22D CS 1.0 2p', @mo),
  ('Q22E CD 1.0 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'VAN');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Q22 1.0 5p', @mo);

-- Renault
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Renault');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('19', @m),
  ('21', @m),
  ('Boreal', @m),
  ('Captur', @m),
  ('Clio', @m),
  ('Duster', @m),
  ('Express', @m),
  ('Fluence', @m),
  ('Kangoo', @m),
  ('Kardian', @m),
  ('Koleos', @m),
  ('Kwid', @m),
  ('Laguna', @m),
  ('Logan', @m),
  ('Master', @m),
  ('Megane', @m),
  ('Oroch', @m),
  ('Safrane', @m),
  ('Sandero', @m),
  ('Scénic', @m),
  ('Stepway', @m),
  ('Symbol', @m),
  ('Trafic', @m),
  ('Twingo', @m),
  ('ZOE', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '19');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('16S/ RT 16V', @mo),
  ('RN', @mo),
  ('RT 1.8/ 1.8i', @mo),
  ('RT 1.8/ 1.8i Conv.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '21');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GTX 2.0', @mo),
  ('Nevada GTX 2.2', @mo),
  ('Nevada TXE 2.2', @mo),
  ('TXE/ TXi 2.2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Boreal');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Evolution 1.3 Turbo 16V 5p Aut.', @mo),
  ('Iconic 1.3 Turbo 16V 5p Aut.', @mo),
  ('Techno 1.3 Turbo 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Captur');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Iconic 1.3 TB 16V Flex 5p Aut.', @mo),
  ('Intense 1.3 TB 16V Flex 5p Aut.', @mo),
  ('Intense 1.6 16V Flex 5p Aut.', @mo),
  ('Intense 2.0 16V Flex 5p Aut.', @mo),
  ('Intense Bose 1.6 16V Flex 5p Aut.', @mo),
  ('Intense Bose 2.0 16V Flex 5p Aut.', @mo),
  ('Life 1.6 16V Flex 5p Aut.', @mo),
  ('Zen 1.3 TB 16V Flex 5p Aut.', @mo),
  ('Zen 1.6 16V Flex 5p Aut.', @mo),
  ('Zen 1.6 16V Flex 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Clio');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Auth. /AIR Hi-Flex 1.6 16V 5p', @mo),
  ('Authentique 1.0 8V 3p', @mo),
  ('Authentique 1.0/1.0 Hi-Power 16V 3p', @mo),
  ('Authentique Hi-Flex 1.0 16V 3p', @mo),
  ('Authentique Hi-Flex 1.0 16V 5p', @mo),
  ('Authentique Hi-Flex 1.6 16V 3p', @mo),
  ('Campus Hi-Flex 1.0 16V 3p', @mo),
  ('Campus Hi-Flex 1.0 16V 5p', @mo),
  ('Dynamique 1.0/ 1.0 Hi-Power 16V 3p', @mo),
  ('Dynamique 1.6 16V 110cv 3p', @mo),
  ('Dynamique Hi-Flex 1.6 16V 3p', @mo),
  ('Expression 1.0 8V 60cv 3p', @mo),
  ('Expression 1.0/1.0 Hi-Power 16V 3p', @mo),
  ('Expression Hi-Flex 1.0 16V 3p', @mo),
  ('Expression Hi-Flex 1.0 16V 5p', @mo),
  ('GetUp Hi-Flex 1.0 16V 3p', @mo),
  ('GetUp Hi-Flex 1.0 16V 5p', @mo),
  ('Hi-Flex 1.0 16V 3p', @mo),
  ('Hi-Flex 1.0 16V 5p', @mo),
  ('Hi-Flex/ Expres. Hi-Flex 1.6 16V 3p', @mo),
  ('Hi-Flex/ Expres. Hi-Flex 1.6 16V 5p', @mo),
  ('Privilège Hi-Flex 1.0 16V 5p', @mo),
  ('Privilège Hi-Flex 1.6 16V 5p', @mo),
  ('RL / Yahoo/ Authent. 1.0 8V 5p', @mo),
  ('RL 1.6 3p/5p', @mo),
  ('RL Alizé/ Authent. 1.6 16V 110cv 5p', @mo),
  ('RL/ JP/Auth.1.0/1.0 Hi-Power 16V 5p', @mo),
  ('RN 1.6 3p (importado)', @mo),
  ('RN 1.6 5p', @mo),
  ('RN/ Expression 1.0 5p', @mo),
  ('RN/ Expression 1.6 16V 5p', @mo),
  ('RN/Alizé/Expr./1.0 Hi-Power 16V 5p', @mo),
  ('RT 1.6 5p', @mo),
  ('RT/ Privil. 1.0/1.0 Hi-Power 16V 5p', @mo),
  ('RT/ Privilège 1.6 16V 5p', @mo),
  ('Sed RT/ Privilège/ Botic 1.6 16V 4p', @mo),
  ('Sed. Alizé 1.6/ 1.6 Hi-Flex 16v 4p', @mo),
  ('Sed. Authentique Hi-Flex 1.0 16V 4p', @mo),
  ('Sed. Authentique Hi-Flex 1.6 16V 4p', @mo),
  ('Sed. Expression Hi-Flex 1.0 16V 4p', @mo),
  ('Sed. Hi-Flex/Exp.Hi-Flex 1.6 16V 4p', @mo),
  ('Sed. Privilège Hi-Flex 1.0 16V 4p', @mo),
  ('Sed. Privilège Hi-Flex 1.6 16V 4p', @mo),
  ('Sed.RL/Auth.1.0/1.0 Hi-Power 16V 4p', @mo),
  ('Sed.RN/Alizé/Botic./Exp.1.0 Hi-Pow.', @mo),
  ('Sed.RT/Privil.1.0/1.0 Hi-Pow.16V 4p', @mo),
  ('Sedan Authentique 1.6 16V 110cv 4p', @mo),
  ('Sedan Egeus Hi-Flex 1.0 16V 4p', @mo),
  ('Sedan Egeus Hi-Flex 1.6 16V 4p', @mo),
  ('Sedan RN/ Expression 1.6 16V 4p', @mo),
  ('SI 1.6 16V 4p', @mo),
  ('Tech Run 1.0 16v 70cv 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Duster');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 Hi-Flex 16V Mec.', @mo),
  ('Authent. 1.6 Flex 16V Aut.', @mo),
  ('DAKAR 4x2 1.6 Hi-Flex 16V Mec.', @mo),
  ('DAKAR 4x2 2.0 Hi-Flex 16V Aut.', @mo),
  ('DAKAR 4x4 2.0 Hi-Flex 16V Mec.', @mo),
  ('Dynamique 1.6 Flex 16V Aut.', @mo),
  ('Dynamique 1.6 Flex 16V Mec.', @mo),
  ('Dynamique 2.0 Flex 16V Aut.', @mo),
  ('Dynamique 2.0 Hi-Flex 16V Mec.', @mo),
  ('Dynamique 4x4 2.0 Hi-Flex 16V Mec', @mo),
  ('Expression 1.6 Flex 16V Aut.', @mo),
  ('Expression 1.6 Hi-Flex 16V Mec.', @mo),
  ('GoPro 1.6 16V Flex Aut.', @mo),
  ('GoPro 4x4 2.0 Hi-Flex 16V Mec.', @mo),
  ('Iconic 1.3 TB 16V Flex Aut.', @mo),
  ('Iconic 1.6 16V Flex Aut.', @mo),
  ('Iconic Plus 1.3 TB 16V Flex Aut.', @mo),
  ('Iconic Plus 1.6 16V Flex Aut.', @mo),
  ('Intense 1.6 16V Flex Aut.', @mo),
  ('Intense 1.6 16V Flex Mec.', @mo),
  ('Intense Plus 1.6 16V Flex Aut.', @mo),
  ('Intense Plus 1.6 16V Flex Mec.', @mo),
  ('OROCH Dyna. 1.6 Flex 16V Mec.', @mo),
  ('OROCH Dyna. 2.0 Flex 16V Aut.', @mo),
  ('OROCH Dyna. 2.0 Flex 16V Mec.', @mo),
  ('OROCH Express 1.6 Flex 16V Mec.', @mo),
  ('OROCH Expression 1.6 Flex 16V Mec', @mo),
  ('OUTDOOR 1.6 Hi-Flex 16V Mec.', @mo),
  ('TECHROAD 1.6 Hi-Flex 16V Mec.', @mo),
  ('TECHROAD 2.0 Hi-Flex 16V Aut.', @mo),
  ('TECHROAD 2.0 Hi-Flex 16V Mec.', @mo),
  ('TECHROAD 4X4 2.0 16V Mec.', @mo),
  ('Zen 1.6 16V Flex Aut.', @mo),
  ('Zen 1.6 16V Flex Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Express');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6/ RL 1.6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Fluence');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sed. Dyn. Plus 2.0 16V FLEX Aut.', @mo),
  ('Sed. Dynamique 2.0 16V FLEX Aut.', @mo),
  ('Sed. Dynamique 2.0 16V FLEX Mec.', @mo),
  ('Sedan Expres. 1.6 16V FLEX Mec.', @mo),
  ('Sedan GT Line 2.0 Flex Aut.', @mo),
  ('Sedan GT SPORT', @mo),
  ('Sedan Privilège 2.0 16V FLEX Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Kangoo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Advanced 1.6 16V Flex', @mo),
  ('Authentique 1.6 16V 95cv', @mo),
  ('Authentique Hi-Flex 1.6 16V', @mo),
  ('E-Tech Furgão (Elétrico)', @mo),
  ('Expres.SPORTWAY 1.6/1.6 Hi-Flex', @mo),
  ('Express Hi-Flex 1.6 16V', @mo),
  ('Express RL/ Express 1.0 16V/8V', @mo),
  ('Express RL/ Express 1.6 16V/8V', @mo),
  ('Expression Hi-Flex 1.6 16V 5p', @mo),
  ('RL 1.0 8V', @mo),
  ('RL 1.6 8V', @mo),
  ('RL/ Yahoo 1.0 16V 70cv', @mo),
  ('RN 1.0 8V', @mo),
  ('RN/ Yahoo/ Expression 1.0 16V 5p', @mo),
  ('RN/Expression 1.6 16V/1.6 8V 5p', @mo),
  ('RT 1.0 16V 70cv 5p', @mo),
  ('RT 1.6 16V/ 8V 90cv 5p', @mo),
  ('Z.E. Maxi Furgão (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Kardian');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Authentic 1.0 TB 12V 5p Aut.', @mo),
  ('Evolut. Flex 1.0 TB 12V 5p Aut.', @mo),
  ('Evolut. Flex 1.0 TB 12V 5p Mec.', @mo),
  ('Iconic 1.0 TB 12V 5p Aut.', @mo),
  ('Prem. Ed Flex 1.0 TB 12V 5p Aut.', @mo),
  ('Techno Flex 1.0 TB 12V 5p Aut.', @mo),
  ('Vibe 1.0 TB 12V 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Koleos');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('E-Tech 1.5 Turbo 16V 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Kwid');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('ConnecTV 1.0 Flex 12V Mec.', @mo),
  ('E-Tech Techno', @mo),
  ('Evolution 1.0 12V 5p Mec.', @mo),
  ('Iconic 1.0 Flex 12V 5p Mec.', @mo),
  ('Intense (Elétrico)', @mo),
  ('Intense 1.0 Flex 12V 5p Mec.', @mo),
  ('Life 1.0 Flex 12V 5p Mec.', @mo),
  ('OUTSIDER 1.0 Flex 12V 5p Mec.', @mo),
  ('Techno 1.0 12V 5p Mec.', @mo),
  ('Zen 1.0 Flex 12V 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Laguna');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Grand Tour Privilège 3.0 V6 210cv', @mo),
  ('Nevada RT/ RXE 2.0s 16V', @mo),
  ('Privilège 3.0 V6 24V 210cv 5p', @mo),
  ('RT 2.0', @mo),
  ('RXE 2.0s 8V/16V', @mo),
  ('V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Logan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Authentique Flex 1.0 12V 4p', @mo),
  ('Authentique Hi-Flex 1.0 16V 4p', @mo),
  ('Authentique Hi-Flex 1.6 8V 4p', @mo),
  ('Authentique Plus Hi-F. 1.0 16V 4p', @mo),
  ('Avantage Hi-Flex 1.0 16V 4p', @mo),
  ('Dyna. EasyR Hi-Flex 1.6 8V', @mo),
  ('Dynamique EasyR Flex 1.6 16V 4p', @mo),
  ('Dynamique Flex 1.6 16V 4p', @mo),
  ('Dynamique Hi-Flex 1.6 8V 4p', @mo),
  ('Exclusive EasyR Hi-Flex 1.6 8V 4p', @mo),
  ('Exclusive Hi-Flex 1.6 8V 4p', @mo),
  ('Expres. Avantage Flex 1.0 12v 4p', @mo),
  ('Expres. Avantage Flex 1.6 16V 4p', @mo),
  ('Expres. EasyR Hi-Flex 1.6 8V', @mo),
  ('Expres. P.Avant. Hi-Flex 1.6 8V 4p', @mo),
  ('Expres./Exp. UP Hi-Flex 1.0 16V 4p', @mo),
  ('Expression Easy R Flex 1.6 16V 4p', @mo),
  ('Expression Flex 1.0 12V 4p', @mo),
  ('Expression Flex 1.6 16V 4p', @mo),
  ('Expression Hi-Flex 1.6 16V 4p Aut', @mo),
  ('Expression Hi-Flex 1.6 8V 4p', @mo),
  ('Iconic Flex 1.6 16V 4p Aut.', @mo),
  ('Intense Flex 1.6 16V 4p Aut.', @mo),
  ('Life Flex 1.0 12V 4p Mec.', @mo),
  ('Privilège Hi-Flex 1.6 16V 4p', @mo),
  ('Privilège Hi-Flex 1.6 8V 4p', @mo),
  ('Zen Flex 1.0 12V 4p Mec.', @mo),
  ('Zen Flex 1.6 16V 4p Aut.', @mo),
  ('Zen Flex 1.6 16V 4p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Master');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.3 dCi Chassi 16V Diesel', @mo),
  ('2.3 dCi Executive Longo 16L Dies', @mo),
  ('2.3 dCi Extra F.Vitre 16V Diesel', @mo),
  ('2.3 dCi Extra Furgão 16V Diesel', @mo),
  ('2.3 dCi Extra Pro 16V Diesel', @mo),
  ('2.3 dCi Furgão 16V Diesel', @mo),
  ('2.3 dCi Grand F.Vitre16V Diesel', @mo),
  ('2.3 dCi Grand Furgão16V Diesel', @mo),
  ('2.3 dCi Grand Pro 16V Diesel', @mo),
  ('2.3 dCi Pro 16V Diesel', @mo),
  ('2.3 dCi STD Longo 16L Diesel', @mo),
  ('2.3 dCi STD Médio 16L Diesel', @mo),
  ('2.3 dCi STD Médio Esco. 20L Dies.', @mo),
  ('2.3 dCi VIP Longo 16L Diesel', @mo),
  ('2.3 dCi Vitre Furgão 16V Diesel', @mo),
  ('2.5 dCi 16V 115cv 13L Diesel', @mo),
  ('2.5 dCi 16V 115cv 16L Diesel', @mo),
  ('2.5 dCi Chassi 16V 115cv Diesel', @mo),
  ('2.5 dCi Escolar 115cv 16/19L Dies', @mo),
  ('2.5 dCi Executivo 115cv 16L Dies', @mo),
  ('2.5 dCi Furg. Medio/LongoTA Dies.', @mo),
  ('2.5 dCi FurgãoTB Curto Diesel', @mo),
  ('2.5 dCi Vitré 115cv Curto Diesel', @mo),
  ('2.5 dCi Vitré 115cv Longa Diesel', @mo),
  ('2.8 DTI 114cv 16L Diesel', @mo),
  ('2.8 DTI Chassi 114cv Diesel', @mo),
  ('2.8 DTI Furgão 114cv Diesel curto', @mo),
  ('2.8 DTI Furgão Dies.Longo Alto', @mo),
  ('2.8 Furgão 85cv Diesel curto', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Megane');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Coupé Cabriolet Dynamique 2.0 Aut', @mo),
  ('E-Tech (Elétrico)', @mo),
  ('G. Tour EXTREME 2.0 16V Aut.', @mo),
  ('G. Tour EXTREME 2.0 16V Mec.', @mo),
  ('G. Tour EXTREME Hi-Flex 1.6 Mec.', @mo),
  ('Grand Tour Dynam. Hi-Flex 1.6 16V', @mo),
  ('Grand Tour Dynamique 2.0 16V Aut.', @mo),
  ('Grand Tour Dynamique 2.0 16V Mec.', @mo),
  ('Grand Tour Expres.Hi-Flex 1.6 16V', @mo),
  ('Grand Tour Privilège 2.0 16V Aut.', @mo),
  ('Hatch RN 1.6', @mo),
  ('Hatch RT 1.6/RT/Alizé/Exp 1.6 16V', @mo),
  ('Hatch RXE 2.0', @mo),
  ('Hatch RXE/Egeus 1.6 16V', @mo),
  ('Sed. Expression 2.0 16V Aut.', @mo),
  ('Sed. Expression 2.0 16V Mec.', @mo),
  ('Sed. EXTREME 2.0 16V Aut.', @mo),
  ('Sed. EXTREME 2.0 16V Mec.', @mo),
  ('Sed. EXTREME HI-Flex 1.6 16V Mec.', @mo),
  ('Sedan Dynamique 2.0 16V Aut.', @mo),
  ('Sedan Dynamique 2.0 16V Mec.', @mo),
  ('Sedan Dynamique Hi-Flex 1.6 16V', @mo),
  ('Sedan Expression Hi-Flex 1.6 16V', @mo),
  ('Sedan Privilège 2.0 16V Aut', @mo),
  ('Sedan RT 2.0', @mo),
  ('Sedan RT/Alizé 1.6 16V', @mo),
  ('Sedan RXE/ Privilège 2.0 16V Mec', @mo),
  ('Sedan RXE/Egeus 2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Oroch');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Iconic 1.6 Flex 16V Mec.', @mo),
  ('Intense 1.6 Flex 16V Mec.', @mo),
  ('Outsider 1.3Tce Flex Aut.', @mo),
  ('Pro 1.6 Flex 16V Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Safrane');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('RXE', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sandero');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Auth. Plus Hi-Power 1.0 16V 5p', @mo),
  ('Authentique Flex 1.0 12V 5p', @mo),
  ('Authentique Hi-Flex 1.0 16V 5p', @mo),
  ('Authentique Hi-Flex 1.6 8V 5p', @mo),
  ('Authentique Hi-Power 1.0 16V 5p', @mo),
  ('Dyna. EasyR Hi-Flex 1.6 8V', @mo),
  ('Dynamique Easy R Flex 1.6 16V 5p', @mo),
  ('Dynamique Flex 1.6 16V 5p', @mo),
  ('Dynamique Hi-Power 1.6 8V 5p', @mo),
  ('Expres EasyR Hi-Flex 1.6 8V', @mo),
  ('Expres. P.Avant. Hi.P. 1.6 8V 5p', @mo),
  ('Expression EasyR Flex 1.6 16V 5p', @mo),
  ('Expression Flex 1.0 12V 5p', @mo),
  ('Expression Flex 1.6 16V 5p', @mo),
  ('Expression Hi-Flex 1.0 16V 5p', @mo),
  ('Expression Hi-Flex 1.6 8V 5p', @mo),
  ('Expression Hi-Power 1.0 16V 5p', @mo),
  ('Expression Hi-Power 1.6 8V 5p', @mo),
  ('GT Line Flex/RLI 1.6.16V 5p Aut.', @mo),
  ('GT line Hi-Flex 1.6 16V 4p', @mo),
  ('GT line Hi-Flex 1.6 8V 5p', @mo),
  ('GT line Hi-Power 1.6 8V 5p', @mo),
  ('GT line/RLIN Flex 1.0 12v 5p', @mo),
  ('GT line/RLIN Flex 1.6 16V 5p', @mo),
  ('Intense Flex 1.6 16V 5p Aut.', @mo),
  ('Life Flex 1.0 12V 5p Mec.', @mo),
  ('NOKIA Hi-Flex 1.6 16V 5p', @mo),
  ('Privilège Hi-Flex 1.6 16V 5p', @mo),
  ('Privilège Hi-Flex 1.6 16V 5p Aut', @mo),
  ('Privilège Hi-Flex 1.6 8V 5p', @mo),
  ('RS Racing Spirit Flex 2.0 16V 5p', @mo),
  ('S Edition Flex 1.0 12V 5p Mec.', @mo),
  ('SPORT RS 2.0 Flex 16V 5p', @mo),
  ('STEP. Easy R Dyn. Flex 1.6 16V', @mo),
  ('STEP. Easy R H-Power 1.6 8V', @mo),
  ('STEP. Easy R R.CURL H.P. 1.6 5p', @mo),
  ('STEP. R. CURL Hi-Power 1.6 8V 5p', @mo),
  ('STEPWAY Dynamiq. Flex 1.6 16V 5p', @mo),
  ('STEPWAY Easy R Flex 1.6 16V 5p', @mo),
  ('STEPWAY EXP. Flex 1.6 16V 5p', @mo),
  ('STEPWAY Flex 1.6 16V 5p', @mo),
  ('STEPWAY Hi-F. R. CURL 1.6 16V 5p', @mo),
  ('STEPWAY Hi-Flex 1.6 16V 5p', @mo),
  ('STEPWAY Hi-Flex 1.6 16V 5p Aut.', @mo),
  ('STEPWAY Hi-Power 1.6 8V 5p', @mo),
  ('STEPWAY Tweed HFlex 1.6 16V Aut', @mo),
  ('STEPWAY Tweed HFlex 1.6 8V 5p', @mo),
  ('TechRun Hi-Flex 1.0 16V 5p', @mo),
  ('vibe Flex 1.0 12V 5p', @mo),
  ('vibe Hi-Flex 1.6 8V 5p', @mo),
  ('Zen Flex 1.0 12V 5p Mec.', @mo),
  ('Zen Flex 1.6 16V 5p Aut.', @mo),
  ('Zen Flex 1.6 16V 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Scénic');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Alizé/ Expression 1.6 16V Mec.', @mo),
  ('Alizé/ Expression 2.0 16V 5p', @mo),
  ('Expression 1.6 16V Aut.', @mo),
  ('Grand Dynamique 2.0 16V 5p Aut.', @mo),
  ('Hi-Flex/Express. Hi-Flex 1.6 16V', @mo),
  ('Privilège Hi-Flex 1.6 16V', @mo),
  ('Privillège 1.6 16V Aut.', @mo),
  ('Privillège 2.0 Plus 16V 5p Aut', @mo),
  ('RT 2.0', @mo),
  ('RT 2.0 16V 5p Aut.', @mo),
  ('RT 2.0 16V 5p Mec.', @mo),
  ('RT/Auth/Auth/Kids Hi-Flex 1.6 16V', @mo),
  ('RXE 2.0 8V', @mo),
  ('RXE Egeus 2.0', @mo),
  ('RXE/ Privilège 1.6 16V Mec.', @mo),
  ('RXE/ Privilège 2.0 16V 5p Aut.', @mo),
  ('RXE/ Privilège 2.0 16V 5p Mec.', @mo),
  ('SPORTWAY Hi-Flex 1.6 16V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Stepway');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Iconic Flex 1.6 16V Aut.', @mo),
  ('Intense Flex 1.6 16V Aut.', @mo),
  ('Zen Flex 1.0 12V Mec.', @mo),
  ('Zen Flex 1.6 16V Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Symbol');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CONNECTION Hi-Flex 1.6 8V 4p', @mo),
  ('Expression Hi-Flex 1.6 16V 4p', @mo),
  ('Expression Hi-Flex 1.6 8V 4p', @mo),
  ('Privilège Hi-Flex 1.6 16V 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Trafic');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Furgão 2.0 98cv', @mo),
  ('Furgão Chassi Curto 2.2', @mo),
  ('Furgão Chassi Longo 2.2', @mo),
  ('Van 2.2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Twingo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 8V', @mo),
  ('1.2', @mo),
  ('Easy 1.2', @mo),
  ('Initiale 1.0 16V 70cv', @mo),
  ('Pack 1.0 16V 70cv', @mo),
  ('Pack 1.0 8V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ZOE');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Intense (Elétrico)', @mo),
  ('Life 92cv (Elétrico)', @mo),
  ('Ultimate 92cv (Elétrico)', @mo),
  ('Zen (Elétrico)', @mo);

-- Rolls-Royce
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Rolls-Royce');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Cullinan', @m),
  ('Dawn', @m),
  ('Ghost', @m),
  ('Phantom', @m),
  ('Wraith', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cullinan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.7 V12 Aut.', @mo),
  ('Black Badge 6.7 V12 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Dawn');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.6 V12 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ghost');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.6 V12 Aut.', @mo),
  ('6.7 V12 Aut.', @mo),
  ('ll 6.6 V12 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Phantom');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.7 V12 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Wraith');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('6.6 V12 Aut.', @mo);

-- Rover
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Rover');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Mini', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Mini');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cooper 1.3', @mo);

-- Saab
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Saab');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('9000', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '9000');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CD 2.3 Turbo', @mo);

-- Saturn
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Saturn');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('SL-2', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SL-2');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.9', @mo);

-- Seat
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Seat');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Cordoba', @m),
  ('Ibiza', @m),
  ('Inca', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cordoba');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6L', @mo),
  ('SXE 1.8 / GLX 1.8 4p', @mo),
  ('Vario 1.6L', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ibiza');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 16V 4p', @mo),
  ('1.0i 8V', @mo),
  ('1.6L', @mo),
  ('SXE/GLX 1.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Inca');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6L', @mo);

-- SERES
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'SERES');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Seres', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Seres');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3 BEV (Elétrico)', @mo),
  ('5 BEV (Elétrico)', @mo);

-- SHINERAY
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'SHINERAY');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Dtruck', @m),
  ('SY1020', @m),
  ('SY6370', @m),
  ('SY6390', @m),
  ('Tlux', @m),
  ('X30', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Dtruck');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CD 1.6 16V Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SY1020');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('T 20 TRUCKS BAU', @mo),
  ('T 22 TRUCKS CD', @mo),
  ('T20 TRUCKS', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SY6370');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('A7 PVAN', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SY6390');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('A9 CARGOV', @mo),
  ('A9 PVANS', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tlux');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V Mec.', @mo),
  ('CARGO 1.6 16V Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X30');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('VAN 1.3 16V Mec.', @mo);

-- smart
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'smart');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('fortwo', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'fortwo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('BRABUS cabrio 1.0 72kw', @mo),
  ('BRABUS Coupe 1.0 72kw', @mo),
  ('coupé/Brasil.Edition 1.0 mhd 71cv', @mo),
  ('passion cabrio 1.0 62kw/Tritop', @mo),
  ('passion coupé 1.0 62kw', @mo);

-- SSANGYONG
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'SSANGYONG');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Actyon', @m),
  ('Chairman', @m),
  ('Istana', @m),
  ('Korando', @m),
  ('Kyron', @m),
  ('Musso', @m),
  ('Rexton', @m),
  ('Tivoli', @m),
  ('XLV', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Actyon');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 141cv Diesel', @mo),
  ('2.3 16V 150cv Aut.', @mo),
  ('SP DLX 2.2 7 4x4 178cv Dies. Aut.', @mo),
  ('SPORTS 2.0 16V 141cv Diesel', @mo),
  ('SPORTS 2.0 16V 155cv Diesel', @mo),
  ('SPORTS 2.2 4x4 178cv TB Dies Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Chairman');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.2 V6 220cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Istana');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.9 95cv TB Diesel Int. 16Lug.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Korando');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V T.Diesel AWD Aut.', @mo),
  ('2.0 16V T.Diesel AWD Mec.', @mo),
  ('2.2 AWD 178cv TB Diesel Aut.', @mo),
  ('Canvas 2.9 TB Diesel Int. Aut.', @mo),
  ('Canvas 2.9 TB Diesel Int. Mec.', @mo),
  ('DLX 2.2 AWD 178cv TB Diesel Aut.', @mo),
  ('GL 2.9 TB Diesel Int. 120cv', @mo),
  ('GLX 2.9 TB Diesel Int. 120cv Aut', @mo),
  ('GLX 2.9 TB Diesel Int. 120cv Mec', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Kyron');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 141cv TDI Diesel Aut.', @mo),
  ('2.7 20V 165cv TDI Dies. Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Musso');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('DX 2.9 Diesel', @mo),
  ('GL 2.9 TB Diesel Int. 120cv', @mo),
  ('GLS 2.9 TB Diesel Int. 120cv Aut', @mo),
  ('GLS 3.2 V6 220cv 4x4 Aut.', @mo),
  ('GLX 2.9 TB Diesel Int. 120cv Aut', @mo),
  ('GLX 2.9 TB Diesel Int. 120cv Mec', @mo),
  ('Pick-Up GLX 2.9 4x4 CD TB Int.Dies', @mo),
  ('Pick-Up LX 2.9 4x4 CD TB Int.Dies.', @mo),
  ('SX 2.9 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Rexton');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('II 2.7 20V 165/186cv TDI Dies.Aut', @mo),
  ('II 3.2 V6 24V 220cv Aut.', @mo),
  ('RX 270 2.7 165cv Xdi Diesel Aut.', @mo),
  ('RX 290 2.9 120cv TB Int. Dies.Aut', @mo),
  ('RX 290 2.9 120cv TB Int. Dies.Mec', @mo),
  ('RX 320 3.2 V6 235cv Aut.', @mo),
  ('W 2.7 20V XDI Diesel Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tivoli');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V 128cv Aut.', @mo),
  ('DLX 1.6 16V 128cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XLV');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V 128cv Aut.', @mo),
  ('DLX 1.6 16V 128cv Aut.', @mo);

-- Subaru
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Subaru');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Forester', @m),
  ('Impreza', @m),
  ('Legacy', @m),
  ('Outback', @m),
  ('SVX', @m),
  ('Tribeca', @m),
  ('Vivio', @m),
  ('XV', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Forester');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16v 4x4 Turbo Aut.', @mo),
  ('2.0 4x4 Mec.', @mo),
  ('2.0 4x4 Turbo', @mo),
  ('2.0 L 16V 4x4 Aut.', @mo),
  ('2.0 -S e-BOXER 16V Aut. (Híb.)', @mo),
  ('2.0/2.0 S/2.0 ES 4x4 Aut.', @mo),
  ('XT 2.0 16V 4x4 Turbo Aut.', @mo),
  ('XT 2.5 16V 4x4 Turbo Aut.', @mo),
  ('XT S-EDITION 2.5 16V 4x4 TB Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Impreza');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.5 16V 115cv Aut.', @mo),
  ('1.5 16V 115cv Mec.', @mo),
  ('2.0 16V 160cv Aut.', @mo),
  ('2.0 16V 160cv Mec.', @mo),
  ('GL 1.6/1.8 16V', @mo),
  ('GL 2.0 4x2 Aut.', @mo),
  ('GL 2.0 4x2 Mec.', @mo),
  ('GL 2.0 4x4 Aut.', @mo),
  ('GL 2.0 4x4 Mec.', @mo),
  ('GL 4x4 1.8 16V', @mo),
  ('GL 4x4 2.0 16V', @mo),
  ('GT 2.0 Turbo', @mo),
  ('SD 2.0 16V 160cv Aut.', @mo),
  ('SD 2.0/2.0i-S AWD Aut.', @mo),
  ('SD GX 2.0 16v 4x4 4p Aut.', @mo),
  ('SD RX 2.0 4x4', @mo),
  ('SD WRX 2.0 16V TB 4x4', @mo),
  ('SD WRX 2.0 16V TB 4x4 Aut.', @mo),
  ('SD WRX 2.5 16V TB 4x4 4p', @mo),
  ('SD WRX STI 2.5 16V TB 4x4', @mo),
  ('SW GL 1.6/1.8/2.0 4x4 16V', @mo),
  ('SW GT 2.0 16V 4x4 Turbo Mec.', @mo),
  ('SW GX 2.0 16v 4x4 Aut.', @mo),
  ('SW WRX 2.0 16v 4x4 TB', @mo),
  ('SW WRX 2.5 16V TB 4x4 5p', @mo),
  ('WRX 2.5 16V TB 4x4 5p', @mo),
  ('WRX STI 2.5 16V TB 4x4', @mo),
  ('XV 2.0 16V 160cv Aut.', @mo),
  ('XV 2.0 16V 160cv Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Legacy');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 160cv Aut.', @mo),
  ('3.0 R H6 245cv Aut.', @mo),
  ('3.6 4x4 256cv Aut.', @mo),
  ('GL 1.8', @mo),
  ('GL 2.0/ GLS Mec', @mo),
  ('GL TW 2.0 4x2 Mec./Aut.', @mo),
  ('GL TW 2.0 4x4 Aut.', @mo),
  ('GL TW 2.0 4x4 Mec.', @mo),
  ('GL/ GLS 2.0 Aut.', @mo),
  ('GT 2.5 16V 280cv Aut.', @mo),
  ('GX 2.2 4x4', @mo),
  ('GX 2.5 4x4 Aut.', @mo),
  ('GX 2.5 4x4 Mec.', @mo),
  ('GX TW 2.2 4x4 Aut.', @mo),
  ('GX TW 2.2 4x4 Mec.', @mo),
  ('GX TW 2.5 4x4 Aut.', @mo),
  ('GX TW 2.5 4x4 Mec', @mo),
  ('SW 2.2', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Outback');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5 4x4 Aut.', @mo),
  ('2.5 4x4 Mec.', @mo),
  ('3.0 H6 SW 245cv Aut.', @mo),
  ('3.6 H6 SW Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SVX');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cupê 3.3 4x4 Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tribeca');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.6 24V 270cv 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Vivio');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SD GLI 3p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XV');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 L 16V 4x4 Aut.', @mo),
  ('2.0 S e-Boxer 16V 4x4 Aut.', @mo),
  ('2.0/2.0 S/2.0 ES 16V 4x4 Aut.', @mo);

-- Suzuki
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Suzuki');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Baleno', @m),
  ('e-Vitara', @m),
  ('Grand Vitara', @m),
  ('Ignis', @m),
  ('Jimny', @m),
  ('Samurai', @m),
  ('S-CROSS', @m),
  ('Sidekick', @m),
  ('Super', @m),
  ('Swift', @m),
  ('SX4', @m),
  ('Vitara', @m),
  ('Wagon', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Baleno');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V Aut.', @mo),
  ('1.6 16V Mec.', @mo),
  ('Wagon 1.6 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'e-Vitara');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4STYLE ALLGRIP', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Grand Vitara');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 16V Aut.', @mo),
  ('1.6 16V Mec.', @mo),
  ('2.0 16V 3p', @mo),
  ('2.0 16V 4x2/4x4 5p Aut.', @mo),
  ('2.0 16V 4x2/4x4 5p Mec.', @mo),
  ('2.0 16V 5p/Gold Aut. (Arg.)', @mo),
  ('2.0 16V 5p/Gold Mec. (Arg.)', @mo),
  ('2.0 16V Ed. Special 5p Aut.', @mo),
  ('2.0 16V Ed. Special 5p Mec.', @mo),
  ('2.0 TB-IC Diesel 4p', @mo),
  ('2.5 V6 5p Aut.', @mo),
  ('2.5 V6 5p Mec.', @mo),
  ('3.2 24V 4WD 5p Aut.', @mo),
  ('4SPORT 2.0 16V 4x2 5P Aut.', @mo),
  ('4SPORT 2.0 16V 4x4 5p Aut.', @mo),
  ('4SPORT 2.0 16V 4x4 5p Mec.', @mo),
  ('L.EDI. 2.0 16V 4x2/4x4 Aut.', @mo),
  ('S. EDITI. 2.0 16V 4x2 Aut.', @mo),
  ('Sport 2.0 16V Aut.', @mo),
  ('Sport 2.0 16V Mec.', @mo),
  ('XL_7 2.7 24V 173cv 4p Aut.', @mo),
  ('XL_7 2.7 24V 173cv 4p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Ignis');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.3 16V 82cv 4p Aut.', @mo),
  ('1.3 16V 82cv 4p Mec.', @mo),
  ('WRS 1.3 16V 82cv 4x4 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Jimny');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4S 1.3 16V', @mo),
  ('4SPORT DESERT 1.3 16V', @mo),
  ('4SPORT FOREST 1.3 16V', @mo),
  ('4SPORT/ 4WORK 1.3 16V', @mo),
  ('4STREET 1.3 16V', @mo),
  ('4SUN 1.3 16V', @mo),
  ('4WORK OFF ROAD 1.3 16V', @mo),
  ('CANVAS 4ALL 1.3 16V', @mo),
  ('CANVAS 4SPORT 1.3 16V', @mo),
  ('Sierra 4EXPEDITION ALLGRIP 1.5 Aut', @mo),
  ('Sierra 4SPORT ALLGRIP 1.5 16V Aut.', @mo),
  ('Sierra 4STYLE ALLGRIP 1.5 16V Aut.', @mo),
  ('Sierra 4YOU ALLGRIP 1.5 16V Aut.', @mo),
  ('Sierra 4YOU ALLGRIP 1.5 16V Mec.', @mo),
  ('Sierra 4YOU+ ALLGRIP 1.5 16V Aut.', @mo),
  ('Wide/ Jimny/4ALL 1.3 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Samurai');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('JX Canvas 1.3', @mo),
  ('JX Metal 1.3', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S-CROSS');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4STYLE 1.4 TB 16V Aut.', @mo),
  ('4STYLE ALLGRIP 1.4 TB 16V Aut.', @mo),
  ('4STYLE-S ALLGRIP 1.4 TB 16V Aut.', @mo),
  ('4YOU 1.6 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Sidekick');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Canvas', @mo),
  ('Metal', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Super');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Carry Van/ Furgão 1.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Swift');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GL', @mo),
  ('GTi 1.3 3p', @mo),
  ('GTI Convers. 16V', @mo),
  ('Hatch 1.0 3p e 5p', @mo),
  ('Hatch/ Sedan 1.3', @mo),
  ('Sedan 1.6 16V', @mo),
  ('Sport 1.6 16V 5p Mec.', @mo),
  ('Sport R 1.6 16V 5p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SX4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 16V 145cv 4WD 5p Aut.', @mo),
  ('2.0 16V 145cv 4WD 5p Mec.', @mo),
  ('S-CROSS ALLGRIP GLS 1.6 16V Aut.', @mo),
  ('S-CROSS ALLGRIP GLX 1.6 16V Aut.', @mo),
  ('S-CROSS GL 1.6 16V Mec.', @mo),
  ('S-CROSS GLX 1.6 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Vitara');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4ALL 1.6 16V Aut.', @mo),
  ('4ALL 1.6 16V Mec.', @mo),
  ('4SPORT 1.4 TB 16V Aut.', @mo),
  ('4SPORT ALLGRIP 1.4 TB 16V Aut.', @mo),
  ('4STYLE ALLGRIP 1.4 TB 16V Aut.', @mo),
  ('4YOU 1.6 16V Aut.', @mo),
  ('4YOU ALLGRIP 1.6 16V Aut.', @mo),
  ('JLX 1.6 16V 4x4 4p Aut.', @mo),
  ('JLX 1.6 16V 4x4 4p Mec.', @mo),
  ('JLX 2.0 V6 4x4', @mo),
  ('JLX Canvas 1.6 8V 2p', @mo),
  ('JLX Metal 1.6 8V 2p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Wagon');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('R+ 1.0 Mec.', @mo);

-- TAC
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'TAC');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Stark', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Stark');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.3 4WD 127cv TDI Diesel 3p', @mo);

-- Toyota
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Toyota');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Avalon', @m),
  ('Band', @m),
  ('bZ4X', @m),
  ('Camry', @m),
  ('Celica', @m),
  ('Corolla', @m),
  ('Corona', @m),
  ('Etios', @m),
  ('Hiace', @m),
  ('Hilux', @m),
  ('Land Cruiser', @m),
  ('MR-2', @m),
  ('Paseo', @m),
  ('Previa', @m),
  ('Prius', @m),
  ('RAV4', @m),
  ('Supra', @m),
  ('T-100', @m),
  ('Yaris', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Avalon');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('XLS 3.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Band');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Jipe 4x4 Sport 3.7 Diesel', @mo),
  ('Jipe Cap.de Aço Chas. Curto Diesel', @mo),
  ('Jipe Cap.de Aço Chas. Longo Diesel', @mo),
  ('Jipe Capota de Lona Diesel', @mo),
  ('Picape CD 2p Chassi Longo Diesel', @mo),
  ('Picape CD 4p Chassi Longo Diesel', @mo),
  ('Picape Chassi Curto Diesel', @mo),
  ('Picape Chassi Longo Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'bZ4X');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('AWD', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Camry');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LE', @mo),
  ('SW LE 2.2 16V', @mo),
  ('SW XLE 3.0 24V', @mo),
  ('XLE 2.5 16V Aut. (Híbrido)', @mo),
  ('XLE 3.0 24V 186cv', @mo),
  ('XLE 3.5 24V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Celica');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GT 2.2 16V', @mo),
  ('ST 1.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Corolla');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Altis 1.8 16V Aut. (Híbrido)', @mo),
  ('Altis Prem. 1.8 Aut. (Híbrido)', @mo),
  ('ALTIS/A.Premiu. 2.0 Flex 16V Aut', @mo),
  ('Cross GR-S 2.0 16V Flex Aut.', @mo),
  ('Cross SE 1.8 16V Aut. (Híbrido)', @mo),
  ('Cross XR 2.0 16V Flex Aut.', @mo),
  ('Cross XRE 2.0 16V Flex Aut.', @mo),
  ('Cross XRV 1.8 16V Aut. (Híbrido)', @mo),
  ('Cross XRX 1.8 16V Aut. (Híbrido)', @mo),
  ('Cross XRX 2.0 16V Flex Aut.', @mo),
  ('DX/ SW DX 1.6 16V', @mo),
  ('Dynamic 2.0 Flex 16V Aut.', @mo),
  ('Fielder SW 1.8/1.8 XEi Flex Aut.', @mo),
  ('Fielder SW 1.8/1.8 XEi Flex Mec', @mo),
  ('Fielder SW S 1.8 16V 136cv Aut', @mo),
  ('Fielder SW S 1.8 16V 136cv Mec', @mo),
  ('Fielder SW SE-G 1.8 Flex 16V Aut', @mo),
  ('GLi 1.6 16V', @mo),
  ('GLi 1.8 16V Aut.', @mo),
  ('GLi 1.8 Flex 16V Aut.', @mo),
  ('GLi 1.8 Flex 16V Mec.', @mo),
  ('GLi 2.0 16V Flex Aut.', @mo),
  ('GLi Upper 1.8 Flex 16V Aut.', @mo),
  ('GLi Upper Black P. 1.8 Flex Aut.', @mo),
  ('GR Circuit 1.6 Turbo 4x4 Mec', @mo),
  ('GR Core 1.6 Turbo 4x4 Mec', @mo),
  ('GR-Sport 2.0 Flex 16V Aut.', @mo),
  ('LE 1.8', @mo),
  ('LE 2.2 16V', @mo),
  ('S 1.8 16V 136cv Aut', @mo),
  ('S 1.8 16V 136cv Mec', @mo),
  ('SE-G 1.8 16V Mec.', @mo),
  ('SE-G 1.8/1.8 Flex 16V Aut.', @mo),
  ('SW LE 1.8/ XLi 1.6 16V', @mo),
  ('WG', @mo),
  ('XEi 1.8/1.8 Flex 16V Aut.', @mo),
  ('XEi 1.8/1.8 Flex 16V Mec.', @mo),
  ('XEi 2.0 Flex 16V Aut.', @mo),
  ('XLi 1.6 16V 110cv Aut.', @mo),
  ('XLi 1.6 16V 110cv Mec.', @mo),
  ('XLi 1.8/1.8 Flex 16V Aut.', @mo),
  ('XLi 1.8/1.8 Flex 16V Mec.', @mo),
  ('XRS 2.0 Flex 16V Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Corona');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Aut.', @mo),
  ('GLi Mec', @mo),
  ('Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Etios');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.3 Flex 16V 5p Mec.', @mo),
  ('CROSS 1.5 Flex 16V 5p Aut.', @mo),
  ('CROSS 1.5 Flex 16V 5p Mec.', @mo),
  ('PLATINUM 1.5 Flex 16V 4p Aut.', @mo),
  ('PLATINUM 1.5 Flex 16V 5p Mec.', @mo),
  ('PLATINUM Sed. 1.5 Flex 16V 4p Aut.', @mo),
  ('PLATINUM Sed. 1.5 Flex 16V 4p Mec.', @mo),
  ('READY! 1.5 Flex 16V 5p Aut.', @mo),
  ('X 1.3 Flex 16V 5p Aut.', @mo),
  ('X 1.3 Flex 16V 5p Mec.', @mo),
  ('X Plus 1.5 Flex 16V 5p Aut.', @mo),
  ('X Plus 1.5 Flex 16V 5p Mec.', @mo),
  ('X Plus Sedan 1.5 Flex 16V 4p Aut.', @mo),
  ('X Plus Sedan 1.5 Flex 16V 4p Mec.', @mo),
  ('X Sedan 1.5 Flex 16V 4p Aut.', @mo),
  ('X Sedan 1.5 Flex 16V 4p Mec.', @mo),
  ('XLS 1.5 Flex 16V 5p Mec.', @mo),
  ('XLS 1.5 Flex 5p Aut.', @mo),
  ('XLS Sedan 1.5 Flex 16V 4p Aut.', @mo),
  ('XLS Sedan 1.5 Flex 16V 4p Mec.', @mo),
  ('XS 1.3 Flex 16V 5p Mec.', @mo),
  ('XS 1.5 Flex 16V 5p Aut.', @mo),
  ('XS 1.5 Flex 16V 5p Mec.', @mo),
  ('XS Sedan 1.5 Flex 16V 4p Aut.', @mo),
  ('XS Sedan1.5 Flex 16V 4p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Hiace');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Furgão DX 2.8 TDI Aut.', @mo),
  ('Minibus DX 2.8 TDI 16L Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Hilux');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4x2 2.4 Diesel', @mo),
  ('4x2 2.8 Diesel', @mo),
  ('CD 4x2 2.4 Diesel', @mo),
  ('CD 4x4 2.7 16V Flex Mec.', @mo),
  ('CD 4x4 2.8 Diesel Aut.', @mo),
  ('CD 4x4 2.8 Diesel Mec.', @mo),
  ('CD Conquest 4x4 2.8 Die.Aut', @mo),
  ('CD D4-D 4x2 2.5 16V 102cv TB Dies.', @mo),
  ('CD D4-D 4x4 2.5 16V 102cv TB Dies.', @mo),
  ('CD D4-D 4x4 3.0 TDI Dies. Mec.', @mo),
  ('CD DLX 4x2 2.8 Diesel', @mo),
  ('CD DLX 4x4 2.8 Diesel', @mo),
  ('CD DX 4x2 2.7 16V 142cv', @mo),
  ('CD DX 4x2 3.0 8V 90cv Diesel', @mo),
  ('CD DX 4x4 3.0 8V 90cv Diesel', @mo),
  ('CD GR-S 4x4 2.8 TDI Dies. Aut.', @mo),
  ('CD GR-S 4x4 4.0 V6 234cv Aut.', @mo),
  ('CD Limited 4x4 3.0 TDI Diesel Aut.', @mo),
  ('CD SR 4x2 2.7 16V/2.7 Flex Aut.', @mo),
  ('CD SR 4x2 2.7 16V/2.7 Flex Mec.', @mo),
  ('CD SR 4x4 2.8 TDI Diesel Aut.', @mo),
  ('CD SR 4x4 3.0 8V 116cv TB Diesel', @mo),
  ('CD SR 4x4 3.0 8V 90cv Diesel', @mo),
  ('CD SR CHALL. 4x4 2.8 TDI Dies Aut.', @mo),
  ('CD SR D4-D 4x2 3.0 163cv TDI Dies.', @mo),
  ('CD SR D4-D 4x4 3.0 TDI Dies.', @mo),
  ('CD SR D4-D 4x4 3.0 TDI Dies Aut.', @mo),
  ('CD SR5 4x4 2.8 Diesel', @mo),
  ('CD SRV 4x2 2.7 16V 142cv', @mo),
  ('CD SRV 4x2 2.7 Flex 16V Aut.', @mo),
  ('CD SRV 4x2 3.0 8V 90cv Diesel', @mo),
  ('CD SRV 4x4 2.7 Flex 16V Aut.', @mo),
  ('CD SRV 4x4 2.8 TDI Diesel Aut.', @mo),
  ('CD SRV 4x4 3.0 8V 116cv TB Diesel', @mo),
  ('CD SRV D4-D 4x2 3.0 163cv TDI Dies', @mo),
  ('CD SRV D4-D 4x4 3.0 TDI Dies', @mo),
  ('CD SRV D4-D 4x4 3.0 TDI Diesel Aut', @mo),
  ('CD SRX 4x4 2.8 TDI 16V Diesel Aut.', @mo),
  ('CD SRX Limited 4x4 2.8 TDI Die.Aut', @mo),
  ('CD SRX Plus 4x4 2.8 TDI Die. Aut.', @mo),
  ('Chassi 4x4 2.8 TDI Diesel Aut.', @mo),
  ('Chassi 4x4 2.8 TDI Diesel Mec.', @mo),
  ('Chassi D4-D 4x4 2.5 102cv TB Dies.', @mo),
  ('Chassi D4-D 4x4 3.0 TDI Dies. Mec.', @mo),
  ('CS 4x4 2.4 Diesel', @mo),
  ('CS 4x4 2.8 TDI Diesel Aut.', @mo),
  ('CS 4x4 2.8 TDI Diesel Mec.', @mo),
  ('CS D4-D 4x2 2.5 16V 102cv TB Dies.', @mo),
  ('CS D4-D 4x4 2.5 16V 102cv TB Dies.', @mo),
  ('CS D4-D 4x4 3.0 TDI Dies. Mec.', @mo),
  ('CS DLX 4x2 2.8 Diesel', @mo),
  ('CS DLX 4x4 2.8 Diesel', @mo),
  ('CS DX 4x2 2.7 16V 142cv', @mo),
  ('CS DX 4x2 3.0 8V 90cv Diesel', @mo),
  ('CS DX 4x4 3.0 8V 90cv Diesel', @mo),
  ('CS SR5 4x4 2.8 Diesel', @mo),
  ('CS SRV 4x2 2.7 16V 142cv', @mo),
  ('SW4 2.7 16V', @mo),
  ('SW4 3.4 V6', @mo),
  ('SW4 4x4 2.4 8V', @mo),
  ('SW4 4x4 2.8 Diesel', @mo),
  ('SW4 4x4 3.0 12V V6', @mo),
  ('SW4 4x4 3.0 24V V6', @mo),
  ('SW4 4x4 3.0 8V TB Diesel', @mo),
  ('SW4 Diamond 2.8 TB 4x4 Die. Aut.', @mo),
  ('SW4 GRS 2.8 TB 4x4 Diesel Aut.', @mo),
  ('SW4 SR 4x2 2.7/ 2.7 Flex 16V Aut.', @mo),
  ('SW4 SR 4x2 2.7/2.7 Flex 16V Mec.', @mo),
  ('SW4 SR D4-D 4x4 3.0 TDI Dies. Aut', @mo),
  ('SW4 SRV 4x2 2.7 Flex 16V Aut.', @mo),
  ('SW4 SRV 4x4 4.0 V6 24V Aut.', @mo),
  ('SW4 SRV D4-D 4x4 3.0 TDI Dies. Aut', @mo),
  ('SW4 SRV D4-D 4x4 3.0 TDI Dies. Mec', @mo),
  ('SW4 SRX 4x4 2.8 TDI 16V Dies. Aut.', @mo),
  ('SW4 SRX 4x4 4.0 V6 24V Aut.', @mo),
  ('SW4 SRX Diamo. 4x4 2.8 TB Die Aut.', @mo),
  ('SW4 SRX Plat. 4x4 2.8 TB Die. Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Land Cruiser');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4WD 4.5 24V', @mo),
  ('Prado 3.0 4x4 TB Diesel Aut', @mo),
  ('Prado 3.0 4x4 TB Diesel Mec', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'MR-2');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Turbo 2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Paseo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Previa');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('LE 2.4 16V', @mo),
  ('LX 2.5', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Prius');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 16V 5p Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RAV4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 4x2 16V Aut.', @mo),
  ('2.0 4x4 16V Aut.', @mo),
  ('2.0 4x4 16V Mec.', @mo),
  ('2.0 HIGH 4x2 16V Aut.', @mo),
  ('2.0 TOP 4x2 16V Aut.', @mo),
  ('2.4 4x2 16V 170cv Aut.', @mo),
  ('2.4 4x4 16V 170cv Aut.', @mo),
  ('2.5 4x4 16V Aut.', @mo),
  ('2.5 S 4x4 Aut.', @mo),
  ('2.5 S Connect 4x4 Aut. (Híbrido)', @mo),
  ('2.5 SX 4x4 Aut.', @mo),
  ('2.5 SX Connect 4x4 Aut. (Híbrido)', @mo),
  ('2.5 XSE 4x4 Aut. (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Supra');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T-100');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.4 V6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Yaris');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cross XR 1.5 16V 5p Aut.', @mo),
  ('Cross XRE 1.5 16V 5p Aut.', @mo),
  ('Cross XRE 1.5 16V 5p Aut. (Híbrido)', @mo),
  ('Cross XRX 1.5 16V 5p Aut.', @mo),
  ('Cross XRX 1.5 16V 5p Aut. (Híbrido)', @mo),
  ('GR 1.6 Turbo 4x4 Aut.', @mo),
  ('GR 1.6 Turbo 4x4 Mec.', @mo),
  ('S 1.5 Flex 16V 5p Aut.', @mo),
  ('XL 1.3 Flex 16V 5p Aut.', @mo),
  ('XL 1.3 Flex 16V 5p Mec.', @mo),
  ('XL 1.5 Flex 16V 5p Aut.', @mo),
  ('XL Live 1.3 Flex 16V 5p Aut.', @mo),
  ('XL Live 1.3 Flex 16V 5p Mec.', @mo),
  ('XL Live Sedan 1.5 Flex 16V 4p Aut.', @mo),
  ('XL Live Sedan 1.5 Flex 16V 4p Mec.', @mo),
  ('XL Plus Con. 1.5 Flex 16V 5p Aut.', @mo),
  ('XL Plus Con. Sed. 1.5 Flex 16V Aut', @mo),
  ('XL Plus T. Sed. 1.5 Flex 16V Aut.', @mo),
  ('XL Plus Tech 1.3 Flex 16V Aut.', @mo),
  ('XL Sedan 1.5 Flex 16V 4p Aut.', @mo),
  ('XL Sedan 1.5 Flex 16V 4p Mec.', @mo),
  ('XLS 1.5 Flex 16V 5p Aut.', @mo),
  ('XLS Connect 1.5 Flex 16V 5p Aut.', @mo),
  ('XLS Connect Sed. 1.5 Flex 16V Aut.', @mo),
  ('XLS Sedan 1.5 Flex 16V 4p Aut.', @mo),
  ('XS 1.5 Flex 16V 5p Aut.', @mo),
  ('XS Connect 1.5 Flex 16V 5p Aut.', @mo),
  ('XS Connect Sedan 1.5 Flex 16V Aut.', @mo),
  ('XS Sedan 1.5 Flex 16V 4p Aut.', @mo),
  ('X-WAY 1.5 Flex 16V 5p Aut.', @mo),
  ('X-WAY Connect 1.5 Flex 16V 5p Aut.', @mo);

-- Troller
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Troller');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Pantanal', @m),
  ('RF Esport', @m),
  ('T-4', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Pantanal');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.0 TDI Elet. 4x2 CS Diesel', @mo),
  ('3.0 TDI Elet. 4x4 CS Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'RF Esport');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4x4 2.0', @mo),
  ('T-4 4x4 2.0 Cap. Lona', @mo),
  ('T-4 4x4 2.0 Cap. Rígida', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T-4');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('4x4 2.8 TB Int. Cap. Lona Diesel', @mo),
  ('4x4 2.8 TB Int. Cap. Rígida Diesel', @mo),
  ('4x4 3.0 TB Int. Cap. Lona Diesel', @mo),
  ('4x4 3.0 TB Int. Cap. Rígida Diesel', @mo),
  ('4x4 3.2 20V Tdi Cap. Rígida Diesel', @mo),
  ('4x4 3.2 Tdi Cap.Rígida Die. Aut.', @mo),
  ('4x4 3.2 TGV tdi Cap. Rígida Diesel', @mo),
  ('BOLD 4x4 3.2 Tdi Cap. Rígida Diesel', @mo),
  ('Connect 4x4 3.2 Tdi Cap.Rig. Diesel', @mo),
  ('Connect 4x4 3.2 Tdi Cap.Rig.Die.Aut.', @mo),
  ('DESERT STORM 4x4 3.0 TB Int Diesel', @mo),
  ('TRAIL 4x4 3.2 Tdi Cap. Ríg. Diesel', @mo),
  ('TX4 4x4 3.2 20V Cap. Rígido Diesel', @mo),
  ('TX4 4x4 3.2 20V Cap.Ríg Diesel Aut.', @mo),
  ('TX4 Connect 4x4 3.2 Cap.Ríg.Die.Aut.', @mo),
  ('TX4 Connect 4x4 3.2 Cap.Ríg.Die.Mec.', @mo);

-- Volvo
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Volvo');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('440', @m),
  ('460', @m),
  ('850', @m),
  ('940', @m),
  ('960', @m),
  ('C30', @m),
  ('C40', @m),
  ('C70', @m),
  ('EC40', @m),
  ('ES', @m),
  ('EX30', @m),
  ('EX40', @m),
  ('EX90', @m),
  ('S40', @m),
  ('S60', @m),
  ('S70', @m),
  ('S80', @m),
  ('S90', @m),
  ('V40', @m),
  ('V50', @m),
  ('V60', @m),
  ('V70', @m),
  ('XC', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '440');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Turbo 1.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '460');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLT 2.0/ Turbo 1.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '850');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLE 2.5 20V', @mo),
  ('GLE SW 20V', @mo),
  ('GLT 2.5 20V', @mo),
  ('GLT SW 2.5 20V', @mo),
  ('R SW 2.3 Turbo', @mo),
  ('Sedan', @mo),
  ('T-5 SW 2.5 BI-Turbo/ 2.3 Turbo', @mo),
  ('TURBO 20V/ R Turbo 2.3', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '940');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Turbo/ SW Turbo 3.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '960');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Sedan', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C30');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 145cv', @mo),
  ('2.4 170cv Aut', @mo),
  ('T-5 2.5 220/ 230cv Aut.', @mo),
  ('T-5 2.5 230cv Mec.', @mo),
  ('T-5 R-DESIGN 2.5 230cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C40');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Pure (Elétrico)', @mo),
  ('Recharge Plus (Elétrico)', @mo),
  ('Twin Ultimate (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'C70');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cabriolet', @mo),
  ('Cupê', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EC40');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Black Edition Ultra AWD P8', @mo),
  ('Plus P6 (Elétrico)', @mo),
  ('Ultra AWD P8 (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'ES');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('90 Performance Ultra AWD P8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EX30');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('E40 Core (Elétrico)', @mo),
  ('E40 Plus', @mo),
  ('E60 Core (Elétrico)', @mo),
  ('E60 Cross Country AWD', @mo),
  ('E60 Plus (Elétrico)', @mo),
  ('E60 Twin Ultra AWD', @mo),
  ('E60 Ultra (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EX40');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Black Edition Ultra AWD P8', @mo),
  ('Plus P6 (Elétrico)', @mo),
  ('Ultra P8 AWD (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EX90');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Twin Ultra AWD (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S40');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 Aut.', @mo),
  ('1.8 Mec.', @mo),
  ('2.0 Aut.', @mo),
  ('2.0 Mec.', @mo),
  ('2.0 T', @mo),
  ('2.4 140cv Aut.', @mo),
  ('2.4 170cv Aut.', @mo),
  ('T 2.0 Turbo Aut.', @mo),
  ('T-4', @mo),
  ('T-4 ARM Aut.', @mo),
  ('T-4 ARM Mec.', @mo),
  ('T-5 2.5 220/230cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S60');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('R 2.5 300cv Aut.', @mo),
  ('R 2.5 300cv Mec.', @mo),
  ('T 2.0 4p', @mo),
  ('T 2.4/ 2.5', @mo),
  ('T-4 1.6 180cv 4p', @mo),
  ('T-4 KINETIC 2.0 190cv 4p', @mo),
  ('T-4 MOMENTUM 2.0 190cv 4p', @mo),
  ('T-5 2.0 240cv 4p', @mo),
  ('T-5 2.3', @mo),
  ('T-5 INSCRIPTION 2.0 254cv 4p', @mo),
  ('T-5 KINETIC 2.0 245cv 4p', @mo),
  ('T-5 MOMENTUM 2.0 245cv 4p', @mo),
  ('T-5 R-DESIGN 2.0 240cv 4p', @mo),
  ('T-6 3.0 304cv AWD 4p', @mo),
  ('T-6 R-DESIGN 2.0 306cv FWD 4p', @mo),
  ('T-6 R-DESIGN 3.0 AWD 4p', @mo),
  ('T8 POLESTAR 2.0 (Híbrido)', @mo),
  ('T-8 R-DESIGN 2.0 407cv (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S70');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5', @mo),
  ('2.5 Aut.', @mo),
  ('R', @mo),
  ('R Aut.', @mo),
  ('T-5 2.3', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S80');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.9', @mo),
  ('2.9 ARM', @mo),
  ('3.2 238cv Aut.', @mo),
  ('4.4 V8 315cv AWD Aut.', @mo),
  ('T6 2.8 BI-Turbo', @mo),
  ('T6 2.8 BI-Turbo ARM', @mo),
  ('T-6 Executive 2.8', @mo),
  ('T-6 Executive ARM 2.8 24v', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'S90');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('T-8 INSCRIPT 2.0 AWD (Híbrido)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'V40');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 Aut.', @mo),
  ('1.8 Mec.', @mo),
  ('2.0', @mo),
  ('2.0 Aut.', @mo),
  ('2.0 Turbo', @mo),
  ('T-3 KINETIC 1.5 Aut.', @mo),
  ('T-4', @mo),
  ('T-4 2.0 Aut./Mec.', @mo),
  ('T-4 ARM Aut.', @mo),
  ('T-4 Cross Country 2.0 FWD Aut.', @mo),
  ('T-4 KINETIC 2.0 Aut.', @mo),
  ('T-4 MOMENTUM 2.0 Aut.', @mo),
  ('T-5 Cross Country 2.0 Awd Aut.', @mo),
  ('T-5 R-DESIGN 2.0 Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'V50');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.4 20V 140cv Aut.', @mo),
  ('2.4 20V 170cv Aut.', @mo),
  ('T-5 2.5 220cv Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'V60');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('T-4 KINETIC 2.0 190cv 5p', @mo),
  ('T-4 MOMENTUM 2.0 190cv 5p', @mo),
  ('T-5 KINETIC 2.0 245cv 5p', @mo),
  ('T-5 MOMENTUM 2.0 5p', @mo),
  ('T-5 R-DESIGN 2.0 5p', @mo),
  ('T-6 R-DESIGN 2.0 FWD 4p', @mo),
  ('T-6 R-DESIGN 3.0 AWD 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'V70');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.5', @mo),
  ('Cross Country 2.4', @mo),
  ('R 2.5 300cv AWD Aut.', @mo),
  ('R 2.5 300cv AWD Mec.', @mo),
  ('T 2.0 20v 180cv 4p Aut.', @mo),
  ('T 2.4', @mo),
  ('T 2.4/ 2.5 Premium', @mo),
  ('T5 2.3', @mo),
  ('XC/ XC 70', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'XC');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('40 Pure (Elétrico)', @mo),
  ('40 Recharge Plus (Elétrico)', @mo),
  ('40 T-4 2.0 190cv FWD', @mo),
  ('40 T-4 INSCRIPTION 2.0 190cv FWD', @mo),
  ('40 T-4 MOMENTUM 2.0 190cv FWD', @mo),
  ('40 T-5 INSC. EXPRE. 1.5 FWD (Híbrido)', @mo),
  ('40 T-5 INSCRIPTION 1.5 FWD (Híbrido)', @mo),
  ('40 T-5 MOMENT FIRST ED. 2.0 252cv AWD', @mo),
  ('40 T-5 MOMENTUM 1.5 FWD (Híbrido)', @mo),
  ('40 T-5 MOMENTUM 2.0 252cv AWD', @mo),
  ('40 T-5 R-DESIGN 1.5 FWD (Híbrido)', @mo),
  ('40 T-5 R-DESIGN 2.0 252cv AWD', @mo),
  ('40 T-5 R-DESIGN FIR. ED 2.0 252cv AWD', @mo),
  ('40 T-5 R-DESIGN SPE. ED 2.0 252cv AWD', @mo),
  ('40 Twin Ultimate (Elétrico)', @mo),
  ('60 2.0 T5 5p', @mo),
  ('60 3.0 AWD 5p', @mo),
  ('60 D-5 INSCRIPT 2.0 AWD Diesel 5p', @mo),
  ('60 D-5 KINETIC 2.4 AWD Diesel 5p', @mo),
  ('60 D-5 MOMENTUM 2.0 AWD Diesel 5p', @mo),
  ('60 D-5 MOMENTUM 2.4 AWD Diesel 5p', @mo),
  ('60 R-DESIGN 3.0 304cv AWD 5p', @mo),
  ('60 T-5 INSCRIPTION 2.0 245 cv FWD 5p', @mo),
  ('60 T-5 INSCRIPTION 2.0 AWD 5p', @mo),
  ('60 T-5 KINETIC 2.0 245cv FWD 5p', @mo),
  ('60 T-5 MOMENTUM 2.0 245cv FWD 5p', @mo),
  ('60 T-5 MOMENTUM 2.0 254cv AWD 5p', @mo),
  ('60 T-5 R-DESIGN 2.0 AWD 5p', @mo),
  ('60 T-5 R-DESIGN 2.0 FWD 5p', @mo),
  ('60 T-6 R-DESIGN 2.0 306cv FWD 5p', @mo),
  ('60 T-6 INSCRIPTION 2.0 FWD 5p', @mo),
  ('60 T-8 INSC. EXPRESS. 2.0 (Híbrido)', @mo),
  ('60 T-8 INSCRIPTION 2.0 (Híbrido)', @mo),
  ('60 T-8 MOMENTUM 2.0 (Híbrido)', @mo),
  ('60 T-8 Plus 2.0 AWD (Híbrido)', @mo),
  ('60 T-8 Pol. Eng. 2.0 AWD (Híbrido)', @mo),
  ('60 T-8 POLESTAR 2.0 (Híbrido)', @mo),
  ('60 T-8 R-DESIGN 2.0 (Híbrido)', @mo),
  ('60 T-8 Ultim.Dark 2.0 AWD (Híbrido)', @mo),
  ('60 T-8 Ultimate 2.0 AWD (Híbrido)', @mo),
  ('60 T-8 Ultra 2.0 AWD (Híbrido)', @mo),
  ('60 T-8 Ultra Dark 2.0 AWD (Híbrido)', @mo),
  ('90 2.5T 210cv AWD 5p', @mo),
  ('90 3.2 238cv AWD 5p', @mo),
  ('90 4.4 V8 315cv AWD 5p', @mo),
  ('90 D-5 INSCRIPTION 2.0 235cv Dies. 5p', @mo),
  ('90 D-5 MOMENTUM 2.0 235cv Diesel 5p', @mo),
  ('90 T6 2.9 BI-TB 272cv AWD 5p', @mo),
  ('90 T-6 FIRST EDITION 2.0 320cv 5p', @mo),
  ('90 T-6 INSCRIPTION 2.0 320CV 5p', @mo),
  ('90 T-6 MOMENTUM 2.0 320cv 5P', @mo),
  ('90 T-8 EXCELLENCE 2.0 (Híbrido)', @mo),
  ('90 T-8 INSC. EXPRESS. 2.0 (Híbrido)', @mo),
  ('90 T-8 INSCRIPT 2.0 (Híbrido)', @mo),
  ('90 T-8 MOMENTUM 2.0 (Híbrido)', @mo),
  ('90 T-8 Plus 2.0 AWD (Híbrido)', @mo),
  ('90 T-8 R-DESIGN 2.0 (Híbrido)', @mo),
  ('90 T-8 Ultim. Dark 2.0 AWD (Híbrido)', @mo),
  ('90 T-8 Ultimate 2.0 AWD (Híbrido)', @mo),
  ('90 T-8 Ultra 2.0 AWD (Híbrido)', @mo),
  ('90 T-8 Ultra Dark 2.0 AWD (Híbrido)', @mo);

-- VolksWagen
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'VolksWagen');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Amarok', @m),
  ('Apolo', @m),
  ('Bora', @m),
  ('Caravelle', @m),
  ('Corrado', @m),
  ('Crossfox', @m),
  ('Delivery', @m),
  ('EOS', @m),
  ('Eurovan', @m),
  ('Fox', @m),
  ('Fusca', @m),
  ('Gol', @m),
  ('Golf', @m),
  ('Grand Saveiro', @m),
  ('Jetta', @m),
  ('Kombi', @m),
  ('Logus', @m),
  ('New Beetle', @m),
  ('Nivus', @m),
  ('Parati', @m),
  ('Passat', @m),
  ('Pointer', @m),
  ('Polo', @m),
  ('Quantum', @m),
  ('Santana', @m),
  ('Saveiro', @m),
  ('SpaceCross', @m),
  ('Spacefox', @m),
  ('Taos', @m),
  ('T-Cross', @m),
  ('Tera', @m),
  ('Tiguan', @m),
  ('Touareg', @m),
  ('up!', @m),
  ('Van', @m),
  ('Virtus', @m),
  ('Voyage', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Amarok');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('CD2.0 16V/S CD2.0 16V TDI 4x2 Die', @mo),
  ('CD2.0 16V/S CD2.0 16V TDI 4x4 Die', @mo),
  ('Comfor. 3.0 V6 TDI 4x4 Dies. Aut.', @mo),
  ('Comfor. CD 2.0 TDI 4x4 Dies. Aut.', @mo),
  ('CS2.0 16V/S2.0 16V TDI 4x2 Diesel', @mo),
  ('CS2.0 16V/S2.0 16V TDI 4x4 Diesel', @mo),
  ('Extreme CD 3.0 4x4 TB Dies. Aut.', @mo),
  ('Hig. Extreme CD 2.0 4x4 Dies. Aut', @mo),
  ('Hig.ULTIMATE CD 2.0 4x4 Dies. Aut', @mo),
  ('Hig.ULTIMATE CD 2.0 4x4 Dies. Sport Aut', @mo),
  ('High.CD 2.0 16V TDI 4x4 Dies. Aut', @mo),
  ('Highline CD 2.0 16V TDI 4x4 Dies.', @mo),
  ('Highline CD 3.0 4x4 TB Dies. Aut.', @mo),
  ('SE CD 2.0 16V TDI 4x4 Diesel', @mo),
  ('T. Dark Label CD 2.0 4x4 Dies Aut', @mo),
  ('Trendline CD 2.0 16V TDI 4x4 Dies', @mo),
  ('Trendline CD 2.0 TDI 4X4 Dies Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Apolo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GL 1.8', @mo),
  ('GLS/ Vip 1.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Bora');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 8v Comfortline Aut.', @mo),
  ('2.0 8v Comfortline Mec.', @mo),
  ('2.0/ 2.0 Flex 8v Aut.', @mo),
  ('2.0/ 2.0 Flex 8v Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Caravelle');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.4 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Corrado');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 Turbo', @mo),
  ('G-60 2.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Crossfox');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 T. Flex 16V 5p', @mo),
  ('I MOTION 1.6 T. Flex 16V 5p', @mo),
  ('1.6 Mi Total Flex 8V 5p', @mo),
  ('I MOTION 1.6 Mi T. Flex 8V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Delivery');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Express Turbo Diesel (E6)', @mo),
  ('Express+ Turbo Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'EOS');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Cab. 2.0 Turbo FSI Tiptronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Eurovan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.4 Diesel', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Fox');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 Mi Total Flex 8V 3p', @mo),
  ('1.0 Mi Total Flex 8V 5p', @mo),
  ('1.6 Mi I MOTION Total Flex 8V 5p', @mo),
  ('1.6 Mi Total Flex 8V 5p', @mo),
  ('BLUEMOTION 1.0 Mi Total Flex 12V 3p', @mo),
  ('BLUEMOTION 1.0 Mi Total Flex 12V 5p', @mo),
  ('BlueMotion 1.6 Mi Total Flex 3p.', @mo),
  ('BlueMotion 1.6 Mi Total Flex 5p.', @mo),
  ('City 1.0 Mi/ 1.0Mi Total Flex 8V 5p', @mo),
  ('City 1.0Mi/ 1.0Mi Total Flex 8V 3p', @mo),
  ('Comfortline 1.0 Flex 12V 5p', @mo),
  ('Comfortline 1.0 Flex 8V 5p', @mo),
  ('Comfortline 1.6 Flex 8V 5p', @mo),
  ('Comfortline I Motion 1.6 Flex 8V 5p', @mo),
  ('Connect 1.6 Flex 8V 5p', @mo),
  ('Connect I Motion 1.6 Flex 8V 5p', @mo),
  ('extreme 1.6 Mi Total Flex 8V 5p', @mo),
  ('Highline I MOTION 1.6 Flex 16V 5p', @mo),
  ('Highline1.6 Flex 16V 5p', @mo),
  ('PEPPER 1.6 Flex 16V 5p', @mo),
  ('PEPPER I MOTION 1.6 Flex 16V 5p', @mo),
  ('Plus 1.0Mi/ 1.0Mi Total Flex 8V 3p', @mo),
  ('Plus 1.0Mi/ 1.0Mi Total Flex 8V 4p', @mo),
  ('Plus 1.6Mi/ 1.6Mi Total Flex 8V 3p', @mo),
  ('Plus 1.6Mi/ 1.6Mi Total Flex 8V 4p', @mo),
  ('PRIME/Hghi. IMOTION 1.6 T.Flex 8V 5p', @mo),
  ('PRIME/Higli. 1.6 Total Flex 8V 5p', @mo),
  ('Rock in Rio 1.6 Mi Total Flex 8V 5p', @mo),
  ('Route 1.0 Mi Total Flex 8V 3p', @mo),
  ('Route 1.0 Mi Total Flex 8V 5p', @mo),
  ('Route 1.6 Mi Total Flex 8V 3p', @mo),
  ('Route 1.6 Mi Total Flex 8V 5p', @mo),
  ('RUN 1.6 Flex 8V 5p', @mo),
  ('SELEÇÃO 1.0 Total Flex 8V 5p', @mo),
  ('SELEÇÃO 1.6 Total Flex 8V 5p', @mo),
  ('SELEÇÃO IMOTION 1.6 Mi T. Flex 8V 5p', @mo),
  ('Sportline/Sports 1.0 Tot.Flex 8V 4p', @mo),
  ('Sportline/Sports 1.0/1.0 Tot.Flex 3p', @mo),
  ('Sportline/Sports 1.6/1.6 Tot.Flex 3p', @mo),
  ('Sportline/Sports 1.6/1.6 Tot.Flex 4p', @mo),
  ('SUNRISE 1.0 Mi Total Flex 8V 5p', @mo),
  ('TRACK 1.0 Flex 12V 5p', @mo),
  ('Trendline 1.0 Flex 12V 5p', @mo),
  ('Trendline 1.0 Flex 8V 5p', @mo),
  ('Trendline 1.6 Flex 8V 5p', @mo),
  ('Xtreme 1.6 Flex 8V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Fusca');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Padrão', @mo),
  ('2.0 R-Line TSI 16V Aut.', @mo),
  ('2.0 TSI 16V Aut.', @mo),
  ('2.0 TSI 16V Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Gol');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('(novo) 1.0 Mi Total Flex 8V 2p', @mo),
  ('(novo) 1.0 Mi Total Flex 8V 4p', @mo),
  ('(novo) 1.6 Mi Total Flex 8V 2p', @mo),
  ('(novo) 1.6 Mi Total Flex 8V 4p', @mo),
  ('(novo) 1.6 Power/Highi T.Flex 8v 4P', @mo),
  ('1.0 Flex 12V 5p', @mo),
  ('1.0 Mi FUN/ Highway/ Sport 16V 2/4p', @mo),
  ('1.0 Plus 16v 2p', @mo),
  ('1.0 Plus 16v 4p', @mo),
  ('1.0 Plus 8v 2p', @mo),
  ('1.0 Plus 8v 4p', @mo),
  ('1.0 Power 16v 76cv 4p', @mo),
  ('1.0 Total Flex 8V 5p (25 Anos)', @mo),
  ('1.0 Trend/ Power 8V 2p', @mo),
  ('1.0 Trend/ Power 8V 4p', @mo),
  ('1.6 I MOTI.Power/Highli T.Flex 8V 4p', @mo),
  ('1.6 Mi I MOTION Total Flex 8V 3p', @mo),
  ('1.6 Mi Plus Total Flex 8V 2p', @mo),
  ('1.6 Mi Plus Total Flex 8V 4p', @mo),
  ('1.6 Mi Power Total Flex 8V 4p', @mo),
  ('1.6 Mi Rallye I MOTION T. Flex 8V 4p', @mo),
  ('1.6 Mi Rallye Total Flex 8V 4p', @mo),
  ('1.6 Mi/ 1.6i 2p', @mo),
  ('1.6 Mi/ Power 1.6 Mi 4p', @mo),
  ('1.6 MSI Flex 16V 5p Aut.', @mo),
  ('1.6 MSI Flex 8V 5p', @mo),
  ('1.8 Mi', @mo),
  ('1.8 Mi 4p', @mo),
  ('1.8 Mi Power Total Flex 8V 4p', @mo),
  ('1.8 Mi Rallye Total Flex 8V 4p', @mo),
  ('1000 (modelo antigo)', @mo),
  ('1000 Mi 16V 2p Turbo', @mo),
  ('1000 Mi 16V 4p Turbo', @mo),
  ('1000 Mi 16V/ Ouro 2p', @mo),
  ('1000 Mi 16V/ Ouro 4p', @mo),
  ('1000 Mi 2p / 1000i', @mo),
  ('1000 Mi 4p', @mo),
  ('1000 Mi Plus 16V 2p e 4p', @mo),
  ('1000 Mi Plus 8v 2p e 4p', @mo),
  ('1000i Plus 2p', @mo),
  ('2.0 Mi 2p', @mo),
  ('2.0 Mi 4p', @mo),
  ('BLACK 1.0 Mi Total Flex 8V 4p', @mo),
  ('City (Trend) 1.0 Mi Total Flex 8V 2p', @mo),
  ('City (Trend) 1.6 Mi T. Flex 8V 2p', @mo),
  ('City (Trend) 1.6 Mi T.Flex 8V 4p', @mo),
  ('City (Trend)/Titan 1.0 T. Flex 8V 4p', @mo),
  ('City 1.0 Mi 8V 2p', @mo),
  ('City 1.0 Mi 8V 4p', @mo),
  ('City 1.0 Total Flex 12V 2p', @mo),
  ('City 1.0 Total Flex 12V 4P', @mo),
  ('City 1.6 Mi 8V 2p', @mo),
  ('City 1.6 Mi 8V 4p', @mo),
  ('CL 1.6 Mi 2p e 4p', @mo),
  ('CL 1.8 Mi 2p e 4p', @mo),
  ('CLi / CL 1.8', @mo),
  ('CLi / CL/ Copa/ Stones 1.6', @mo),
  ('Comfort. I MOTION 1.6 T. Flex 8V 3p', @mo),
  ('Comfort. I MOTION 1.6 T. Flex 8V 5p', @mo),
  ('Comfortline 1.0 T. Flex 12V 5p', @mo),
  ('Comfortline 1.0 T. Flex 8V 3p', @mo),
  ('Comfortline 1.0 T. Flex 8V 5p', @mo),
  ('Comfortline 1.6 T. Flex 8V 3p', @mo),
  ('Comfortline 1.6 T. Flex 8V 5p', @mo),
  ('COPA 1.0 Mi Total Flex 8V 4p', @mo),
  ('COPA 1.6 Mi Total Flex 8V 4p', @mo),
  ('ECOMOTION 1.0 Mi Total Flex 8V 4p', @mo),
  ('ECOMOTION 1.0 Mi Total Flex 8V 2p', @mo),
  ('Furgao 1.0 mi', @mo),
  ('Furgão 1.6 Mi/ 1.6i/ 1.6', @mo),
  ('GL 1.6 Mi/Star 1.6 e 1.8/Atlanta 1.6', @mo),
  ('GL 1.8 Mi 2p e 4p', @mo),
  ('GLi / GL/ Atlanta 1.8', @mo),
  ('GLS 2.0 Mi', @mo),
  ('GT/GTS 1.8', @mo),
  ('GTi 2.0', @mo),
  ('GTi 2000 16V', @mo),
  ('I MOTION 1.6 Mi Total Flex 8V 4p', @mo),
  ('L 1.3/ L/ LS/ C/ S/ BX/ Plus 1.6', @mo),
  ('Last Edition 1.0 Flex 12V 5p', @mo),
  ('Plus 1.0 Mi Total Flex 2p', @mo),
  ('Plus 1.0 Mi Total Flex 4p', @mo),
  ('Rallye 1.6 T. Flex 16V 5p', @mo),
  ('Rallye I MOTION 1.6 T. Flex 16V 5p', @mo),
  ('Rock in Rio 1.0 Mi Total Flex 8V 5p', @mo),
  ('SELEÇÃO 1.0 Mi Total Flex 8V 5p', @mo),
  ('SELEÇÃO 1.6 I MOTION T.Flex 8V 5p', @mo),
  ('SELEÇÃO 1.6 Total Flex 8V 5p', @mo),
  ('Special 1.0 Mi 4p', @mo),
  ('Special 1.0 Total Flex 8V 3p', @mo),
  ('Special 1.0 Total Flex 8V 5p', @mo),
  ('Special 1.6 Mi 8V 99cv 2p', @mo),
  ('Special/ Special Xtreme 1.0 Mi 2p', @mo),
  ('TECH 1.0 Mi Total Flex 8V 2p', @mo),
  ('TECH 1.0 Mi Total Flex 8V 4p', @mo),
  ('TRACK 1.0 Mi Total Flex 8V 4p', @mo),
  ('TRACK 1.0 Total Flex 12V 5p', @mo),
  ('Trendline 1.0 T.Flex 12V 3p', @mo),
  ('Trendline 1.0 T.Flex 12V 5p', @mo),
  ('Trendline 1.0 T.Flex 8V 3p', @mo),
  ('Trendline 1.0 T.Flex 8V 5p', @mo),
  ('Trendline 1.6 T.Flex 8V 3p', @mo),
  ('Trendline 1.6 T.Flex 8V 5p', @mo),
  ('Trendline I Motion 1.6 T. Flex 8V 3p', @mo),
  ('Trendline I MOTION 1.6 T. Flex 8V 5p', @mo),
  ('TSi 1.8/ 1.8Mi', @mo),
  ('TSi 2000 2p e 4p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Golf');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('BLACK EDITON 2.0 Mi T. Flex 8V Tip', @mo),
  ('TECH 1.6 Mi Total Flex 8V 4p', @mo),
  ('1.6 Mi Total Flex 8V 4p', @mo),
  ('1.6 Mi Trip/ Sport 101cv 8V', @mo),
  ('1.6Mi/ 1.6Mi Gener./Black & Silver', @mo),
  ('1.8 Mi Sport 150cv Turbo Mec/Aut.', @mo),
  ('2.0/ 2.0 Mi Flex Aut/Tiptronic.', @mo),
  ('2.0/ 2.0 Mi Flex Comfortline Aut.', @mo),
  ('2.0/ 2.0 Mi Flex Comfortline/ Sport', @mo),
  ('2.0/2.0 T. Flex Mec.(Black & Silv)', @mo),
  ('Comfort. 200 TSI 1.0 Flex 12V Aut.', @mo),
  ('Comfortline 1.0 TSI Total Flex Mec.', @mo),
  ('Comfortline 1.4 TSI 140cv Aut.', @mo),
  ('Comfortline 1.4 TSI 140cv Mec.', @mo),
  ('Comfortline 1.6 MSI Total Flex Aut.', @mo),
  ('Comfortline 1.6 MSI Total Flex Mec.', @mo),
  ('Flash 1.6 Mi/1.6 Mi Tot. Flex 8V 4p', @mo),
  ('GL 1.8/ 2.0i 4p', @mo),
  ('GLX 2.0 4p', @mo),
  ('GT 2.0 Mi T. Flex 8V 4p Tiptronic', @mo),
  ('GT 2.0 Mi Total Flex 8V 4p', @mo),
  ('GTE TSI 1.4 16V Híbrido Aut.', @mo),
  ('GTi 1.8 Mi 180/193cv Turbo 4p Mec.', @mo),
  ('GTi 1.8 Mi 180/193cv Turbo 4p Tip.', @mo),
  ('GTi 1.8 Mi 20V 2p Turbo Mec.', @mo),
  ('GTi 1.8 Mi 20V Turbo 2p Aut.', @mo),
  ('GTi 1.8 Mi 20V Turbo 4p Aut.', @mo),
  ('GTi 1.8 Mi 20V Turbo 4p Mec.', @mo),
  ('GTI 1.8 Turbo', @mo),
  ('GTi 2.0', @mo),
  ('GTi 2.0 TSI 220cv Aut.', @mo),
  ('GTi 350 TSI 2.0 230cv 16V Aut.', @mo),
  ('GTi Cabrio 2.0 Mi', @mo),
  ('GTI VR6/ Golf 2.8 VR6', @mo),
  ('Highline 1.4 TSI 140cv Aut.', @mo),
  ('Highline 1.4 TSI 140cv Mec.', @mo),
  ('Highline 1.4 TSI Total Flex Aut.', @mo),
  ('Highline 1.4 TSI Total Flex Mec.', @mo),
  ('Highline 250 TSI 1.4 Flex 16V Aut.', @mo),
  ('SILVER EDIT. 2.0 Mi T.Flex 8v Mec.', @mo),
  ('SILVER EDIT. 2.0 Mi T.Flex 8V Tip.', @mo),
  ('Sportline 1.6 Mi Total Flex 8V 4p', @mo),
  ('Sportline 2.0 Mi Total F. 8V Tip.', @mo),
  ('Variant Comf. 250 1.4 TSI Flex Aut.', @mo),
  ('Variant Comfort. 1.4 TSI T.Flex Aut', @mo),
  ('Variant Comfortline 1.4 TSI Aut.', @mo),
  ('Variant Comfortline 1.4 TSI Mec.', @mo),
  ('Variant High. 250 1.4 TSI Flex Aut.', @mo),
  ('Variant Highli. 1.4 TSI T.Flex Aut', @mo),
  ('Variant Highline 1.4 TSI Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Grand Saveiro');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Xtreme/Street 1.6/1.8/2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Jetta');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('GLX III 2.8 VR6', @mo),
  ('2.5 20V 150/170cv Tiptronic', @mo),
  ('250 TSI 1.4 flex 16v Aut.', @mo),
  ('Comfort. 250 TSI 1.4 Flex 16v Aut.', @mo),
  ('Comfortline 2.0 T.Flex 8V 4p Mec.', @mo),
  ('Comfortline 1.4 TSI 16V 4p Aut.', @mo),
  ('Comfortline 2.0 T.Flex 8V 4p Tipt.', @mo),
  ('GLI 350 TSI 2.0 16V 4p Aut.', @mo),
  ('Highline 2.0 TSI 16V 4p Tiptronic', @mo),
  ('R-Line 250 TSI 1.4 Flex 16V Aut.', @mo),
  ('Trendline 1.4 TSI 16V 4p Aut.', @mo),
  ('Trendline 1.4 TSI 16V 4p Mec.', @mo),
  ('Trendline 2.0 T.Flex 8V 4p Tip.', @mo),
  ('Variant 2.5 20V 170cv Tiptronic', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Kombi');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Carat', @mo),
  ('Escolar 1.6 MPi', @mo),
  ('Escolar/50 anos 1.4 Mi Total Flex', @mo),
  ('Furgão', @mo),
  ('Furgão 1.4 Mi Total Flex 8V', @mo),
  ('Furgão Diesel', @mo),
  ('LAST EDITION 56 1.4 Mi Total Flex', @mo),
  ('Lotação 1.4 Mi Total Flex 8V', @mo),
  ('Lotação 1.6 MPi', @mo),
  ('Pick-Up', @mo),
  ('Pick-Up Diesel', @mo),
  ('Standard 1.4 Mi Total Flex 8V', @mo),
  ('Standard/ Luxo/ Série Prata', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Logus');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 / CLi / CL/ GL', @mo),
  ('1.8 / CLi / CL', @mo),
  ('GLi / GL 1.8', @mo),
  ('GLS 1.8', @mo),
  ('GLSi / GLS 2000', @mo),
  ('Wolfsburg Edition 2000i', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'New Beetle');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('2.0 Mi Mec./Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Nivus');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Comfortline 1.0 200 TSI Flex Aut.', @mo),
  ('GTS 1.4 250 TSI Flex Aut.', @mo),
  ('Highline 1.0 200 TSI Flex Aut.', @mo),
  ('Launching Ed. 1.0 200 TSI Flex Aut', @mo),
  ('Sense 1.0 200 TSI Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Parati');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 Mi FUN/ SunSet 16V 4p', @mo),
  ('1.0 Mi Plus 16v 4p', @mo),
  ('1.0 Mi Summer 16v 4p', @mo),
  ('1.0 Mi Tour 16V 76cv 4p', @mo),
  ('1.6 Mi Plus Total Flex 8V 4p', @mo),
  ('1.6 Mi/ 1.6 Mi City', @mo),
  ('1.6Mi/1.6Mi City/T.Field T.Flex', @mo),
  ('1.8 Mi City Total Flex 8V 4p', @mo),
  ('1.8 Mi CROSSOVER Total Flex 8V 4p', @mo),
  ('1.8 Mi Plus Total Flex 8V 4p', @mo),
  ('1.8 Mi T. Field Total Flex 8V 4p', @mo),
  ('1.8 Mi Tour 8V 99cv 4p', @mo),
  ('1.8 Mi/ 1.8 Mi Plus', @mo),
  ('1000 Mi 16V 2p e 4p', @mo),
  ('1000 Mi 16V 4p Turbo', @mo),
  ('2.0 Mi Tour 8V 112cv 4p', @mo),
  ('2.0 Mi/ 2.0 Mi Track & Field', @mo),
  ('C 1.6/ CL 1.6 Mi 2p e 4p', @mo),
  ('CL 1.8 Mi 2p e 4p', @mo),
  ('CLi / CL/ Atlanta 1.6', @mo),
  ('CLi / CL/ Atlanta 1.8', @mo),
  ('COMFORTLINE 1.6 Mi Tot.Flex 8V 4p', @mo),
  ('COMFORTLINE 1.8 Mi Tot.Flex 8V 4p', @mo),
  ('CROSSOVER 2.0 8V/ 1.0 16V TB 4p', @mo),
  ('Evidence 1.8 8V/ 1.0 16V TB 4p', @mo),
  ('GL 1.6 Mi/ 1.6/ GLS/ Club 1.6', @mo),
  ('GL 1.8 Mi/ Club 1.8 Mi 2p e 4p', @mo),
  ('GLi / GL 1.8', @mo),
  ('GLS 2.0 Mi 2/4p', @mo),
  ('GLSi 2.0 / GLS/ Surf 1.8', @mo),
  ('GTi 2.0 Mi 16V', @mo),
  ('Plus/ LS/ S', @mo),
  ('SURF 1.6 Mi Total Flex', @mo),
  ('SURF 1.8 Mi Total Flex', @mo),
  ('TITAN 1.6 Mi Total Flex 8V 4p', @mo),
  ('Utility 1.8 8V/ 1.0 Turbo 16V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Passat');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('L/LS/LSe/GL/GLS/TS/Fla/Vill/Plus', @mo),
  ('1.8 Aut.', @mo),
  ('1.8 Mec.', @mo),
  ('1.8 Tiptronic', @mo),
  ('2.0', @mo),
  ('2.0 FSI Tiptronic', @mo),
  ('2.8 V6 Mec.', @mo),
  ('2.8 V6 Protect Tiptronic', @mo),
  ('2.8 V6 Tiptronic', @mo),
  ('3.2 V6 FSI 24V 250cv Tip.', @mo),
  ('CC 2.0 TSI 211cv Tiptronic', @mo),
  ('CC 3.6 V6 FSI 300cv Tiptronic', @mo),
  ('Comfortline 2.0 TSI 220cv Tip.', @mo),
  ('Highline 2.0 TSI 220cv Tip.', @mo),
  ('Pointer GTS', @mo),
  ('R-Line TB 2.0 TSI Tiptronic 4p', @mo),
  ('TB 2.0 FSI/TSI 211cv Tiptronic 4p', @mo),
  ('Turbo 1.8 Mec.', @mo),
  ('Turbo 1.8 Tiptronic', @mo),
  ('Variant 2.0 FSI 150cv Tiptron.5p', @mo),
  ('Variant 1.8 Aut.', @mo),
  ('Variant 1.8 Mec.', @mo),
  ('Variant 2.0', @mo),
  ('Variant 2.8 V6', @mo),
  ('Variant 2.8 V6 Tiptronic', @mo),
  ('Variant 3.2 V6 FSI 24V 250cv Tip.', @mo),
  ('Variant R-Line TB 2.0 TSI Tip. 5p', @mo),
  ('Variant Turbo 1.8', @mo),
  ('Variant Turbo 1.8 Tiptronic', @mo),
  ('Variant Turbo 2.0 FSI Tiptron. 5p', @mo),
  ('Variant VR6 2.8', @mo),
  ('VR6 2.8', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Pointer');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 / CLi', @mo),
  ('GLi 1.8', @mo),
  ('GLi 2.0', @mo),
  ('GTi 2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Polo');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 Flex 12V 5p', @mo),
  ('1.0 Mi 79cv 16V 5p', @mo),
  ('1.0 MPI Flex 12V 5p', @mo),
  ('1.0 TSI Flex 12V 5p', @mo),
  ('1.6 E-Flex 8V 5p', @mo),
  ('1.6 Mi/ S.Ouro 1.6Mi 101cv 8V 5p', @mo),
  ('1.6 Mi/S.Ouro 1.6 Mi Tot.Flex 8V 5p', @mo),
  ('1.6 MSI Flex 16V 5p', @mo),
  ('1.6 MSI Total Flex 16V 5p Aut.', @mo),
  ('2.0 Mi 116cv 8V 5p', @mo),
  ('BLUEMOTION 1.6 Total Flex 8V 5p', @mo),
  ('Classic 1.0 Mi 16v 65cv 4p', @mo),
  ('Classic/ Special 1.8 Mi', @mo),
  ('Comfort. 200 TSI 1.0 Flex 12V Aut.', @mo),
  ('Comfortline TSI 1.0 Flex 12V Aut.', @mo),
  ('GT 2.0 Mi Total Flex 8V 5p', @mo),
  ('GTI 1.8 Mi 150cv 20V Turbo 3p', @mo),
  ('GTS 1.4 TSI 16V Flex', @mo),
  ('Highline 200 TSI 1.0 Flex 12V Aut.', @mo),
  ('Highline TSI 1.0 Flex 12V Aut.', @mo),
  ('I MOTION 1.6 Total Flex 5p', @mo),
  ('Next 1.6 Mi 101cv 8V 5p', @mo),
  ('Robust 1.0 Flex 12V 5p', @mo),
  ('Sed. COMFORT. 1.6 Mi Tot. Flex 8v', @mo),
  ('Sed./Sed. COMF. 2.0/2.0 Flex 8V 4p', @mo),
  ('Sed.COMFORT. I MOTION 1.6 T.Flex 4p', @mo),
  ('Sedan 1.6 Mi 101cv 8V 4p', @mo),
  ('Sedan 1.6 Mi Total Flex 8V 4p', @mo),
  ('Sedan Evidence 1.6 Mi T.Flex 8v 4p', @mo),
  ('Sedan I MOTION 1.6 Total Flex 4p', @mo),
  ('Sense TSI 1.0 Flex 12V Aut', @mo),
  ('SPORTLINE 1.6 Mi Total Flex 8V 5p', @mo),
  ('Sportline 2.0 Mi Total Flex 8V 5p', @mo),
  ('SPORTLINE I MOTION 1.6 T.Flex 5p', @mo),
  ('Track 1.0 Flex 12V 5p', @mo),
  ('Track First Edition 1.0 Flex 12V 5p', @mo),
  ('Track Rock in Rio 1.0 Flex 12V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Quantum');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 Mi/ 1.8i', @mo),
  ('2.0 Mi', @mo),
  ('CLi / CL / C/ CS/ CD/ CG 1.8/2.0', @mo),
  ('Evidence 2.0 Mi', @mo),
  ('Exclusive 2.0 Mi', @mo),
  ('GLi / GL 1.8/ 2.0', @mo),
  ('GLSi / GLS 1.8/Sport/ Family 2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Santana');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.8 Mi', @mo),
  ('2.0 Mi 2p e 4p', @mo),
  ('CLi /CL /C 1.8/2.0 /SU 2.0 2p/4p', @mo),
  ('COMFORTLINE 1.8 Mi 8V 4p', @mo),
  ('CS/CD/CG', @mo),
  ('Evidenc 2.0 MI', @mo),
  ('Exclusiv 2.0 Mi/ Executivo 2.0i', @mo),
  ('GLi / GL/ Sport 1.8/ 2.0', @mo),
  ('GLSi / GLS 1.8/ 2.0', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Saveiro');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 Mi Total Flex 8V CE', @mo),
  ('1.6 Mi/ 1.6 Mi Total Flex 8V', @mo),
  ('1.6 Mi/ 1.6Mi City Total Flex 8V', @mo),
  ('1.8 Mi', @mo),
  ('2.0 Mi', @mo),
  ('City 1.8 Mi Total Flex 8V', @mo),
  ('CL 1.6 Mi / CL/ C 1.6', @mo),
  ('CL/ Summer 1.8 Mi e 1.8', @mo),
  ('CROSS 1.6 Mi Total Flex 8V CE', @mo),
  ('CROSS 1.6 T. Flex 16V CE', @mo),
  ('CROSS 1.6 T.Flex 16V CD', @mo),
  ('CROSSOVER 1.6 Mi Total Flex 8V', @mo),
  ('CROSSOVER 1.8 Mi 8V', @mo),
  ('CROSSOVER 1.8 Mi Total Flex 8V', @mo),
  ('Diesel (todas)', @mo),
  ('Extreme 1.6 Flex 16V CD', @mo),
  ('FUN 1.8 99cv/ City e S.Surf 1.6', @mo),
  ('GL 1.8Mi e 1.6/GL/LS/S/ Sunset', @mo),
  ('Highline 1.6 T. Flex 8V CD', @mo),
  ('Pepper 1.6 Flex 8V CD', @mo),
  ('Pepper 1.6 Flex 8V CE', @mo),
  ('Robust 1.6 Total Flex 16V', @mo),
  ('Robust 1.6 Total Flex 16V CD', @mo),
  ('Robust 1.6 Total Flex 8V', @mo),
  ('Robust 1.6 Total Flex 8V CD', @mo),
  ('Rock in Rio 1.6 Total Flex 8V CD', @mo),
  ('SPORTLINE 1.6 Mi Total Flex 8V', @mo),
  ('SPORTLINE 1.8 Mi Total Flex 8V', @mo),
  ('Startline 1.6 T.Flex 8V', @mo),
  ('Super Surf 1.8 Mi 8V 99cv', @mo),
  ('Super Surf 1.6 Mi Total Flex 8V', @mo),
  ('Super Surf 1.8 Mi Total Flex 8V', @mo),
  ('SURF 1.6 Mi Total Flex 2p', @mo),
  ('SURF 1.8 Mi Total Flex 2p', @mo),
  ('TITAN 1.6 Mi Total Flex 2p', @mo),
  ('Trendline 1.6 T.Flex 8V', @mo),
  ('Trendline 1.6 T.Flex 8V CD', @mo),
  ('Trendline 1.6 T.Flex 8V CE', @mo),
  ('Trendline 1.6 Total Flex 16V', @mo),
  ('TROOPER 1.6 Mi Total Flex 8V', @mo),
  ('TROOPER 1.6 Mi Total Flex 8V CE', @mo),
  ('TSi 2.0 Mi', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'SpaceCross');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 Mi Total Flex 16V', @mo),
  ('1.6 Mi Total Flex 8V', @mo),
  ('I MOTION 1.6 Mi T. Flex 16V', @mo),
  ('I MOTION 1.6 Mi Total Flex 8V', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Spacefox');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('SPORTLINE/HIGHLINE 1.6 T.Flex', @mo),
  ('TREND I MOTION 1.6 T. Flex 8V', @mo),
  ('1.6 Trendline I MOT. T.Flex 8V', @mo),
  ('1.6 Trendline Total Flex 8v 5p', @mo),
  ('1.6/ 1.6 Trend Total Flex 8V 5p', @mo),
  ('COMF. I MOTION 1.6 Flex 8V 5p', @mo),
  ('COMFORTLINE 1.6 Mi T.Flex 8V 5p', @mo),
  ('HIGHLINE 1.6 T.Flex 16V', @mo),
  ('HIGHLINE I MOT. 1.6 T.Flex 16V', @mo),
  ('Route 1.6 Mi T.Flex 5p', @mo),
  ('SPORTLINE/HIGHLINE I MOTION 1.6', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Taos');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Comfortline 1.4 250 TSI Flex Aut.', @mo),
  ('Highline 1.4 250 TSI Flex Aut.', @mo),
  ('Launching Ed. 1.4 250 TSI Flex Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'T-Cross');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 TSI Flex 12V 5p Mec.', @mo),
  ('200 TSI 1.0 Flex 12V 5p Aut.', @mo),
  ('Comfor. 200 TSI 1.0 Flex 5p Aut.', @mo),
  ('Ext. 250 TSI 1.4 Flex 16V 5p Aut', @mo),
  ('Hig. 250 TSI 1.4 Flex 16V 5p Aut', @mo),
  ('Rock in Rio 200 TSI 1.0 5p Aut.', @mo),
  ('Sense 200 TSI 1.0 Flex 5p Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tera');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 170 TSI Flex 12V 5p Mec.', @mo),
  ('1.0 MPI Flex 12V 5p Mec.', @mo),
  ('Comfort 1.0 170 TSI Flex 12V 5p Aut', @mo),
  ('High 1.0 170 TSI Flex 12V 5p Aut', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Tiguan');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.4 TSI 16V 150cv 5p', @mo),
  ('2.0 TSI 16V 200cv Tiptronic 5p', @mo),
  ('Allspac 250 TSI 1.4 Flex', @mo),
  ('Allspac Comf 250 TSI 1.4 Flex', @mo),
  ('Allspac R-Line 300 TSI 2.0', @mo),
  ('Allspac R-Line 350 TSI 2.0 4x4', @mo),
  ('R-Line 2.0 350 TSI 4Motion Aut.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Touareg');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('3.2 24V V6 Tiptronic 5p', @mo),
  ('3.6 24V V6 280cv Tiptronic 5p', @mo),
  ('4.2 32V V8 Tiptronic 5p', @mo),
  ('R-Line 4.2 V8 360cv Tiptronic 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'up!');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.0 Total Flex 12V 5p', @mo),
  ('black/white/red 1.0 T. Flex 12V 5p', @mo),
  ('black/white/red 1.0 TSI TFlex 12V 5p', @mo),
  ('black/white/red I MOTION 1.0 Flex 5p', @mo),
  ('Connect 1.0 TSI Total Flex 12V 5p', @mo),
  ('cross 1.0 T. Flex 12V 5p', @mo),
  ('cross 1.0 TSI Total Flex 12V 5p', @mo),
  ('cross I MOTION 1.0 T.Flex 12V 5p', @mo),
  ('high 1.0 Total Flex 12V 5p', @mo),
  ('high 1.0 TSI Total Flex 12V 5p', @mo),
  ('high I MOTION 1.0 T. Flex 12V 5p', @mo),
  ('move 1.0 T. Flex 12V 3p', @mo),
  ('move 1.0 Total Flex 12V 5p', @mo),
  ('move 1.0 TSI Total Flex 12V 5p', @mo),
  ('move I MOTION 1.0 T. Flex 12V 3p', @mo),
  ('move I MOTION 1.0 T. Flex 12V 5p', @mo),
  ('Pepper 1.0 TSI T.Flex 12V 5p', @mo),
  ('Run 1.0 Total Flex 12V 5p', @mo),
  ('Run I MOTION 1.0 Total Flex 12V 5p', @mo),
  ('SPEED 1.0 TSI T. Flex 12V 5p', @mo),
  ('take 1.0 T. Flex 12V 3p', @mo),
  ('take 1.0 Total Flex 12V 5p', @mo),
  ('track 1.0 Total Flex 12V 5p', @mo),
  ('Xtreme 1.0 TSI Total Flex 12V 5p', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Van');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 Mi (furgão)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Virtus');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 MSI Flex 16V 4p Aut.', @mo),
  ('1.6 MSI Flex 16V 5p Mec.', @mo),
  ('Comfort. 200 TSI 1.0 Flex 12V Aut', @mo),
  ('Exclusive 250TSI 1.4 Flex 16V Aut', @mo),
  ('GTS 1.4 TSI 16V Flex 4p', @mo),
  ('Highline 200 TSI 1.0 Flex 12V Aut', @mo),
  ('Sense 1.0 Flex 12V 5p Mec.', @mo),
  ('Sense 1.6 Flex 16V 5p Aut.', @mo),
  ('TSI 1.0 Flex 12V 4p Aut.', @mo),
  ('TSI 1.0 Flex 12V 4p Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Voyage');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Trendline 1.0 T.Flex 8V 4p', @mo),
  ('1.0 Flex 12V 4p', @mo),
  ('1.0/1.0 City Mi Total Flex 8V 4p', @mo),
  ('1.6 MSI Flex 16V 4p Aut.', @mo),
  ('1.6 MSI Flex 8V 4p', @mo),
  ('1.6/1.6 City Mi Total Flex 8V 4p', @mo),
  ('C/CL/Fox 1.6', @mo),
  ('CL 1.8', @mo),
  ('COMF/Highli. 1.6 T.Flex 8V 4p', @mo),
  ('Comfortline 1.0 T.Flex 8V 4p', @mo),
  ('Comfortline 1.0 T.Flex 12V 4p', @mo),
  ('Evidence 1.6 Total Flex 8V 4p', @mo),
  ('GL 1.8 4p (Argentino)', @mo),
  ('GL/ Special 1.6/ 1.8', @mo),
  ('I MOTION Trendline 1.6 T.Flex 8V', @mo),
  ('I MOTION 1.6 Mi Total Flex 8V', @mo),
  ('I MOTION COMF/Hghli.1.6 T.Flex 8V', @mo),
  ('I MOTION Evidence 1.6 T.Flex 8V', @mo),
  ('I MOTION TREND 1.6 Mi T. Flex 8V', @mo),
  ('L/LS/Plus/GLS/S/Sport/Super L.Ang', @mo),
  ('SELEÇÃO 1.0 Mi Total Flex 8V 4p', @mo),
  ('SELEÇÃO 1.6 I MOTION T.Flex 8V 4p', @mo),
  ('SELEÇÃO 1.6 Total Flex 8V 4p', @mo),
  ('TREND 1.6 Mi Total Flex 8V 4p', @mo),
  ('Trendline 1.0 T.Flex 12V 4p', @mo),
  ('Trendline 1.6 T.Flex 8V 4p', @mo);

-- Wake
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Wake');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Cross', @m),
  ('Street', @m),
  ('Way', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Cross');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('TSI 1.0 TB 12V Flex Mec.', @mo),
  ('W 1.0 12V Flex Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Street');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('TSI 1.0 TB 12V Flex Mec.', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Way');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('1.6 Total Flex 8V Mec.', @mo),
  ('1.8 Total Flex 8V Mec.', @mo);

-- Walk
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'Walk');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('Buggy', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'Buggy');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Walk Sport 1.6 8V 58cv', @mo);

-- ZEEKR
SET @m = (SELECT id_marca FROM tb_marca WHERE nome = 'ZEEKR');
INSERT IGNORE INTO tb_modelo (nome, id_marca) VALUES
  ('001', @m),
  ('7X', @m),
  ('X', @m);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '001');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Flagship AWD (Elétrico)', @mo),
  ('Premium AWD (Elétrico)', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = '7X');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Flagship AWD', @mo);
SET @mo = (SELECT id_modelo FROM tb_modelo WHERE id_marca = @m AND nome = 'X');
INSERT IGNORE INTO tb_versao (nome, id_modelo) VALUES
  ('Flagship AWD (Elétrico)', @mo),
  ('Premium (Elétrico)', @mo);

