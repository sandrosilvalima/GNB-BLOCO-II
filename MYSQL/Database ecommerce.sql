CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE tb_produtos(
	ID INT NOT NULL AUTO_INCREMENT,
	nome_produto VARCHAR (50), 
	fabricante VARCHAR (50), 
	preco_unitario DOUBLE, 
	quantidade INT, 
	tipo VARCHAR (50),
    PRIMARY KEY (ID)
    );
    
INSERT INTO tb_produtos (nome_produto,fabricante,preco_unitario,quantidade,tipo)
VALUES
('SMARTPHONE XIAOMI POCO X3', 'XIAOMI', '1599.99', '100', 'CELULAR'),
('FRITADEIRA SEM ÓLEO', 'MONDIAL', '350.9', '50', 'ELETROPORTÁTEIS'),
('CONSOLE PLAYSTATION 5', 'SONY', '6999.99', '25', 'VIDEOGAME'),
('ECHO DOT ALEXA 3ªGERAÇÃO', 'AMAZON', '236.65', '100', 'ELETRÔNICOS'),
('VENTILADOR TURBO', 'ARNO', '200.00', '100', 'ELETRÔNICOS'),
('CONSOLE XBOX SERIES S', 'MICROSOFT', '2699.99', '50', 'VIDEOGAME'),
('TV 50 POLEGADAS 4K', 'LG', '2999.99', '100', 'ELETRÔNICOS'),
('MOUSE SEM FIO', 'MULTILASER', '59.99', '100', 'ELETRÔNICOS');

SELECT nome_produto, preco_unitario FROM tb_produtos WHERE preco_unitario > 500;
SELECT nome_produto, preco_unitario FROM tb_produtos WHERE preco_unitario < 500;
UPDATE tb_produtos SET quantidade = 100 WHERE ID = 6;
SELECT * FROM tb_produtos;