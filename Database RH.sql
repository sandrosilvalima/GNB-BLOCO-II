CREATE DATABASE rh;
USE rh;
CREATE TABLE tb_colaboradores(
    matricula INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR (50),
    sexo VARCHAR (20),
    nascimento DATE,
    estado_civil VARCHAR (20),
    salario DECIMAL (6,2),
    PRIMARY KEY (matricula)
    );
    
INSERT INTO tb_colaboradores (nome,sexo,nascimento,estado_civil,salario)
VALUES
('SANDRO', 'MASCULINO', 1993-06-06, 'CASADO', 2601.00),
('FERNANDO', 'MASCULINO', 1993-06-06, 'SOLTEIRO', 1700.75),
('SONIA', 'FEMININO', 1979-01-07, 'CASADA', 3458.98),
('ELEN', 'FEMININO', 1998-06-28, 'CASADO', 1100.00),
('LEONARDO', 'MASCULINO', 1983-11-29, 'CASADO', 4567.35);

SELECT nome, salario FROM tb_colaboradores WHERE salario > 2000;
SELECT nome, salario FROM tb_colaboradores WHERE salario < 2000;
UPDATE tb_colaboradores SET estado_civil = 'SOLTEIRA' WHERE matricula = 4;
SELECT * FROM tb_colaboradores;
	













