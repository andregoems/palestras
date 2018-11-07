-- criando banco de dados
create database demo_transformacao; 

-- use nova tabelas
use demo_transformacao ;

-- criando das tabelas
CREATE TABLE comprador (
    id_comprador INT,
    nome VARCHAR(200),
    Estado VARCHAR(5),
    idade INT,
    estado_civil VARCHAR(5)
);


CREATE TABLE comprador (
             id_comprador INT,
    nome VARCHAR(200),
    Estado VARCHAR(5),
    idade INT,
    estado_civil VARCHAR(30)
);

CREATE TABLE venda (
    id_venda INT,
    valor_venda INT,
    id_comprador INT
);

-- SHOW VARIABLES LIKE 'secure_file_priv';

	LOAD DATA INFILE "comprador.csv"
	INTO TABLE comprador
	COLUMNS TERMINATED BY ';'
	OPTIONALLY ENCLOSED BY '"'
	ESCAPED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;
    

	LOAD DATA INFILE "venda.csv"
	INTO TABLE venda
	COLUMNS TERMINATED BY ';'
	OPTIONALLY ENCLOSED BY '"'
	ESCAPED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;
    