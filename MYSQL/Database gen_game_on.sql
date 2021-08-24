CREATE DATABASE gen_game_on;
USE gen_game_on;

CREATE TABLE tb_classe (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    turma INT NOT NULL,
	bloco INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagem(
	id_person INT NOT NULL AUTO_INCREMENT,
	heroi VARCHAR(255) NOT NULL,
    nivel VARCHAR (255) NOT NULL,
	ataque INT NOT NULL,
    defesa INT NOT NULL,
    descricao VARCHAR (255) NOT NULL,
    fk_classe INT,
    PRIMARY KEY(id_person),
    FOREIGN KEY (fk_classe) REFERENCES tb_classe(id)
    );
    
INSERT INTO tb_classe (nome, turma, bloco)
VALUES
('SANDRO', 29, 2),
('JULIO PIMONT', 29, 2),
('DEBORAH', 29, 2),
('LUCAS SILVA', 29, 2),
('CRIS', 29, 2);

INSERT INTO tb_personagem (heroi, nivel, ataque, defesa, descricao)
VALUES
('GUERREIRO', 1, 1800, 2000, 'COMBATE CORPORAL COM ESPADAS'),
('GUERREIRO', 2, 2500, 1500, 'ALTA RESISTÊNCIA'),
('ARQUEIRO', 3, 2200, 1000, 'BAIXA RESISTÊNCIA'),
('CAÇADOR', 4, 3000, 1200, 'ALTA DANO'),
('MAGO', 29, 5000, 1300, 'ALTÍSSIMO DANO'),
('BRUXO', 7, 4500, 1250, 'ATAQUE À DISTÂNCIA'),
('SACERDOTE', 5, 3000, 1500, 'BAIXA RESISTÊNCIA'),
('SACERDOTE', 9, 500, 500, 'SUPORTE AO GRUPO');

SELECT heroi, ataque FROM tb_personagem WHERE ataque > 2000;
SELECT heroi, defesa FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
SELECT heroi FROM tb_personagem WHERE heroi LIKE "%C%";
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.nivel = tb_classe.id;
SELECT heroi, ataque FROM tb_personagem WHERE heroi = 'GUERREIRO';