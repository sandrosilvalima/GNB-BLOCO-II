CREATE DATABASE db_farmacia;
USE db_farmacia;

CREATE TABLE tb_categoria (
	ID INT NOT NULL AUTO_INCREMENT,
	medicamentos VARCHAR (255) NOT NULL,
    genéricos VARCHAR(255) NOT NULL,
    saúde VARCHAR (255) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE tb_produto(
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
	preco DECIMAL (4,2),
    quantidade INT (100),
	tipo VARCHAR (50),
    código INT (100),
    descricao VARCHAR (255),
    fk_ID INT,
    FOREIGN KEY (fk_ID) REFERENCES tb_categoria(ID)
    );
    
INSERT INTO tb_categoria (medicamentos, genéricos, saúde)
VALUES
('ALERGIAS', 'DOR', 'ALIMENTOS DIET'),
('DIABETES', 'MICOSES', 'DIAGNÓSTICO'),
('COLESTEROL', 'DOENÇA DOS OSSOS', 'HIGIENTE ÍNTIMA'),
('OLHOS', 'GRIPE', 'ACESSÓRIOS PARA SAÚDE'),
('PELE', 'INFECÇÕES', 'ALIMENTOS');

INSERT INTO tb_produto (preco, quantidade, tipo, código, descricao)
VALUES
(4.99, '10', 'COMPRIMIDO', '50088', 'ANALGÉSICO DORFLEX'),
(5.37, '30', 'COMPRIMIDO', '798322', 'METFORMINA 850MG - PRATI DONADUZZI - GENÉRICO'),
(9.56, '100', 'LÍQUIDO', '801221', 'ADOÇANTE ZERO CAL SUCRALOSE 100ML'),
(6.99, '30', 'COMPRIMIDO', '6304', 'SINVASTATINA 20MG - SANDOZ - GENÉRICO'),
(4.99, '30', 'CÁPSULAS', '797183', 'ISOTRETINOÍNA 20MG 30 CÁPSULAS (C2) - BAUSCH - GENÉRICO'),
(20.53, '15', 'LÍQUIDO', '9969', 'LACRIMA PLUS COLÍRIO 15ML'),
(28.49, '30', 'COMPRIMIDO', '800724', 'MONTELUCASTE 10MG - BIOSINTÉTICA - GENÉRICO'),
(99.77, '30', 'COMPRIMIDO', '797774', 'TRAYENTA 5MG');

SELECT descricao, preco FROM tb_produto WHERE preco > 50.00;
SELECT preco, descricao FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;
SELECT descricao FROM tb_produto WHERE descricao LIKE "%B%";
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.id_produto = tb_categoria.ID;
SELECT tipo, descricao FROM tb_produto WHERE tipo = 'COMPRIMIDO';