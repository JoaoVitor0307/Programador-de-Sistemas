 --Criação de Tabela
 CREATE TABLE usuario(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(45),
    cpf VARCHAR(14),
    email VARCHAR(45),
    senha VARCHAR(45)
 );
ALTER TABLE usuario ADD idade INT;
ALTER TABLE usuario DROP COLUMN idade; 


INSERT INTO usuario(nome, cpf , senha, email) VALUES
('Clodowalto', '987.654.321-00', 'clo321', 'clodowalto666@gmail.com'),
('Kleberson', '123.456.789-10', 'kleklê123', 'kleberson777@gmail.com');

UPDATE usuario SET nome="Ribamar" WHERE usuario id-2;

DELETE FROM usuario WHERE id=2;

SELECT * FROM usuario;
SELECT * FROM usuario WHERE nome LIKE "Ribamar";
SELECT * FROM usuario WHERE id BETWEEN 1 AND 3 ORDER BY nome; 

CREATE TABLE regiao(
   id INT NOT NULL AUTO_INCREMENT,
   nome VARCHAR (45)
);

INSERT INTO regiao (nome) VALUES 
('Noroeste'),
('Sul');

CREATE TABLE cidade(
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   Nome VARCHAR (60) NOT NULL,
   CEP VARCHAR (15),
   Estado CHAR (2),
   Id-regiao-fk INT,
   FOREIGN KEY (Id-regiao-fk) REFERENCES regiao (id)
);

INSERT INTO cidade(Nome, Regiao, CEP, Estado, Id-regiao-fk) VALUES
('Nova Londrina', '87970-000', 'PR', 1),
('Marilena', '87970-000' 'PR', 1),
('Palmas', '85555-000' 'PR', 2);

SELECT  cidade.nome, regiao.nome
FROM cidade INNER JOIN regiao 
ON cidade.id-regiao-fk = regiao.id;

CREATE TABLE ponto_focal (
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   nome VARCHAR (45),
   razao_social VARCHAR (45),
   tipo VARCHAR (45),
   cnpj_cpf VARCHAR (45),
   endereco VARCHAR (255),
   telefone VARCHAR (45),
   celular VARCHAR (45),
   email VARCHAR (45),
   id_cidade_fk INT,
   FOREIGN (id_cidade_fk) REFERENCES cidade (id) 
);

INSERT INTO ponto_focal (nome, razao_social, tipo, cnpj_cpf, endereco, telefone, celular, emial, id_cidade_fk) VALUES
('Feclopes', 'Feclopes LTDA', 'Privada', '12.345.111/99', 'Rua das Flores, 123', '(44) 1234-5678', 'feclopes@gmail.com', 1),
('Assístencia Social', 'Assístencia LTDA', 'Pública', '11.222.333/0001-01', 'Av. Central, 450', '(44)98844-5623', 'assistenciasolcia@gmail.com', 2 );

CREATE TABLE area(
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT
   nome VARCHAR(15) NOT NULL,
   numero INT  
);
INSERT INTO area(nome, numero) VALUES
('Tecnologia', 010101),
('Gastronomia', 123123),
('Gestão', 111111);

CREATE TABLE venda(
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   data Date,
   origem VARCHAR (255),
   obs VARCHAR (255),
   id_ponto_focal_fk INT, ,
   id_area_fk INT,
   FOREIGN KEY (id_ponto_focal_fk) REFERENCES ponto_focal(id),
   FOREIGN KEY (id_area_fk) REFERENCES area(id)
);

INSERT INTO venda (data, origem, obs, id_ponto_focal_fk, id_area_fk) VALUES
('2025-07-30', 'Instagram', 'Venda a vista', 1, 3),
('2025-07-28', 'Evento da Prefeitura', 'Vendido para meu PREFEITO', 2, 1);

SELECT cidade.nome, area.nome
FROM cidade INNER JOIN ponto_focal
ON cidade.id = ponto_focal.id_cidade_fk
INNER JOIN venda
ON ponto_focal.id = id_ponto_focal_fk
INNER JOIN area
ON area.id = venda.id_area_fk;

SELECT * FROM ponto_focal
WHERE tipo LIKE 'Privada';


