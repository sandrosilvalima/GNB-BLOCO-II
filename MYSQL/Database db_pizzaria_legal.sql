CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
	pizza INT NOT NULL AUTO_INCREMENT,
	tradicionais VARCHAR (255) NOT NULL,
    classicas VARCHAR(255) NOT NULL,
    exclusivas VARCHAR (255) NOT NULL,
    PRIMARY KEY (pizza)
);

CREATE TABLE tb_pizza(
	id_pizza INT AUTO_INCREMENT PRIMARY KEY,
	preco DECIMAL (4,2),
    tamanho VARCHAR (255),
	meio_a_meio CHAR (1),
    tipo_massa VARCHAR (10),
    descricao VARCHAR (255),
    fk_pizza INT,
    FOREIGN KEY (fk_pizza) REFERENCES tb_categoria(pizza)
    );
    
INSERT INTO tb_categoria (tradicionais, classicas, exclusivas)
VALUES
('NAPOLITANA', 'DOIS QUEIJOS GARLIC', 'BRASILEIRA'),
('MUSSARELA', 'CALÁBRIA', 'VEGETARIANA'),
('CALABRESA', 'PEPPERONI', 'COUNTRY'),
('PORTUGUESA', '2 QUEIJOS', 'SUPREME'),
('MARGUERITA', '4 QUEIJOS', 'BACON');

INSERT INTO tb_pizza (preco, tamanho, meio_a_meio, tipo_massa, descricao)
VALUES
(49.99, 'GRANDE', 'N', 'FINA', 'Parmesão, exclusiva mussarela Pizza Hut, rodelas de tomates, orégano e alho'),
(69.99, 'GRANDE', 'S', 'GROSSA', 'Calabresa acompanhada de cebola, azeitonas verdes e mussarela'),
(29.99, 'PEQUENA', 'N', 'FINA', 'Exclusiva mussarela Pizza Hut coberta com tomates fatiados com um toque de manjericão'),
(39.99, 'GRANDE', 'N', 'GROSSA', 'Queijo mussarela servido sobre molho de tomates especial Pizza Hut'),
(40.99, 'PEQUENA', 'N', 'FINA', 'Mussarela Pizza Hut, tiras de requeijão e alho'),
(25.99, 'PEQUENA', 'S', 'FINA', 'Frango desfiado, exclusiva mussarela Pizza Hut e requeijão cremoso'),
(80.99, 'GRANDE', 'S', 'GROSSA', 'Molho de tomate, mussarela, presunto, Catupiry e azeitonas verdes'),
(55.99, 'GRANDE', 'N', 'FINA', 'Molho de tomate, mussarela, fatias de bacon e milho selecionado');

SELECT id_pizza, preco, descricao FROM tb_pizza WHERE preco > 45.00;
SELECT id_pizza, preco, descricao FROM tb_pizza WHERE preco BETWEEN 29.00 AND 60.00;
SELECT tradicionais FROM tb_categoria WHERE tradicionais LIKE "%C%";
SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.pizza = tb_pizza.id_pizza;
SELECT tamanho, descricao FROM tb_pizza WHERE tamanho = 'GRANDE';