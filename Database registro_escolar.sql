CREATE DATABASE registro_escolar;
USE registro_escolar;
CREATE TABLE tb_estudantes(
	id_aluno INT NOT NULL AUTO_INCREMENT, 
	nome VARCHAR (50) NOT NULL, 
	idade DOUBLE NOT NULL, 
	serie VARCHAR (255) NOT NULL, 
	nota DOUBLE NOT NULL,
    status VARCHAR (50) NOT NULL,
    PRIMARY KEY (id_aluno)
    );
    
INSERT INTO tb_estudantes (nome,idade,serie,nota,status)
VALUES
('SANDRO SILVA LIMA', '17', '3ª ENSINO MÉDIO', '9.5', 'APROVADO'),
('FERNANDO SILVA LIMA', '17', '3ª ENSINO MÉDIO', '8', 'APROVADO'),
('CAROLINA SILVA LIMA', '18', '2ª ENSINO MÉDIO', '4', 'REPROVADO'),
('CAMILA SILVA LIMA', '18', '2ª ENSINO MÉDIO', '4', 'REPROVADO'),
('CLEMILDA SILVA', '62', '8ª FUNDAMENTAL', '3', 'REPROVADO'),
('SONIA REGINA', '17', '3ª ENSINO MÉDIO', '7.5', 'APROVADO'),
('ELLEN REGINA', '17', '3ª ENSINO MÉDIO', '5', 'APROVADO'),
('LUANA SILVA LIMA PEREIRA', '11', '5ª FUNDAMENTAL', '10', 'APROVADO');

SELECT nome, nota FROM tb_estudantes WHERE nota > 7;
SELECT nome, nota FROM tb_estudantes WHERE nota < 7;
UPDATE tb_estudantes SET nome = "BERNARDO DALTRO DE LIMA" WHERE id_aluno = 7;

SELECT * FROM tb_estudantes
