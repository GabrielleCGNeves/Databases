mysql -u root -h localhost -p

CREATE DATABASE IF NOT EXISTS Escola;
USE Escola;

SELECT * FROM Alunos;
SELECT * FROM Alunos ORDER BY nomeAluno DESC;
SELECT * FROM Alunos WHERE idAluno = 1;
SELECT email FROM Alunos WHERE idAluno = 1;

CREATE TABLE Alunos(
	idAluno INT NOT NULL,
	nomeAluno VARCHAR(50) NOT NULL,
	endereco VARCHAR(50) NOT NULL,
	email VARCHAR(80) NOT NULL,
	PRIMARY KEY (idAluno)
);

ALTER TABLE Alunos
MODIFY COLUMN email VARCHAR(60) NULL;

INSERT INTO Alunos VALUES 


(4, 'Wersington Sacramento', 'Autodromo', 'wesington@gmail.com', 20),
(5, 'Walssimon Sacramento', 'Autodromo', 'walssimon@gmail.com', 20);

INSERT INTO Alunos VALUES
(1, 'Higor Gomes Dias Rocha', 'Interlagos', 'higorgomes@gmail.com', 17),
(2, 'Gabrielle Carvalho Gonçalves das Neves', 'Grajau', 'gabrielleneves@gmail.com', 18),
(3, 'Andre Neves', 'Piraporinha', 'andreneves@etec.sp.gov.br', 19),
(4, 'Juliana Sabino Lourenço Silva', 'Rua 1', 'juliana.silva1536@etec.sp.gov.br', 20),
(5, 'Ademir Rafael Pereira', 'Rua 1','ademir.pereira@etec.sp.gov.br', 33),
(6, 'Shelton Leonel dos Santos', 'Rua 1', 'shelton.santos@etec.sp.gov.br', 24),
(7 , 'Yasmin Marques Tito', 'Rua Bahia', 'yasmin.tito2@etec.sp.gov.br', 22),
(8, 'Gabriel Victor Cepeda', 'Rua Ângelo', 'gabriel.cepeda@etec.sp.gov.br', 23),
(9, 'Joyce Rufino Pereira', 'Rua 1', 'joyce.pereira45@etec.sp.gov.br', 21),
(10, 'André de Souza Neves', 'Rua 1', 'andre.neves30@etec.sp.gov.br', 19),
(11, 'Wersington dos Santos Silva Sacramento', 'rua Angelo José Ribeiro', 'wersington.sacramento@etec.sp.gov.br', 21),
(12, 'Gustavo Henrique Silva Santos', 'Rua 1', 'gustavo.santos1167@etec.sp.gov.br', 17),
(13, 'Jonathan Pereira dos Santos', 'Rua 1', 'menor_gatinho_2006@yahoo.com.br', 24),
(14, 'Matheus Holanda Santos', 'Rua 1', 'Matheus.santos1358@etec.sp.gov.br', 18),
(15, 'Luiz Henrique Lemos Oliveira', 'Rua 1', 'luiz.oliveira547@etec.sp.gov.br', 18),
(16, 'Raquell Dezotti Tristão de Oliveira', 'Rua 1', 'raqdezotti@gmail.com', 16),
(17, 'Nathan de Macedo', 'Rua 1', 'nathanmacedo02@gmail.com', 18),
(18, 'Phelipe Queiroz Santos Chagas', 'Rua 1', 'Phelipe.chagas@etec.sp.gov.br',18),
(19, 'Danilo Hideo Yamamoto', 'Rua 1',  'danilo.yamamoto@etec.sp.gov.br',  16),
(20, 'Vitor Moreira Araujo', 'Rua 1', 'vitor.araujo75@etec.sp.gov.br', 21),
(21, 'Kelly Fonseca de França', 'Rua 1', 'Kelly.franca@Etec.sp.gov.br', 24),
(22, 'Armando Rodrigues Filho', 'Rua 1', 'armando.rodrigues@etec.sp.gov.br', 50),
(23, 'Jéssica Anjos Dos Santos', 'Rua 1', 'jessica.santos1317@etec.sp.gov.br', 18),
(24, 'Sophia Cruz Sodré', 'Al. Santo Amaro', 'sophia.sodre@etec.sp.gov.br', 21),
(25, 'Guilherme Gomes de Sousa', 'Rua 1', 'guilherme.sousa654@etec.sp.gov.br', 24),
(26, 'Alison Rodrigo Camargo Duarte', 'Rua 1', 'alison.duarte01@etec.sp.gov.br', 26),
(27, 'Kaua Pithan Motta', 'Rua 1', 'kaua.motta01@etec.sp.gpv.br', 18),
(28, 'Jonathan da Silva Santos', 'Rua 1', 'jonathan.2008@hotmail.com', 19),
(29, 'Douglas Medeiros de Oliveira', 'Rua 1', 'Douglas.oliveira290@etec.sp.gov.br', 18);

ALTER TABLE Alunos
ADD COLUMN Idade INT NULL;

SELECT * FROM Alunos;
SELECT * FROM Alunos ORDER BY nomeAluno ASC;
SELECT * FROM Alunos order by Idade DESC;
SELECT idAluno, email, idade FROM Alunos ORDER BY nomeAluno ASC;