mysql -u root -h localhost -p
#Gabrielle Carvalho Gonçalves das Neves
#Higor Gomes Rocha

CREATE DATABASE tijolobuster;
USE tijolobuster;

CREATE TABLE Clientes(
	IdCliente INT NOT NULL PRIMARY KEY,
	NomeCliente VARCHAR(50) NOT NULL,
	Endereco VARCHAR(50) NOT NULL,
	Telefone VARCHAR(11) NOT NULL
);

CREATE TABLE Alugueis(
	CodAluguel INT NOT NULL PRIMARY KEY,
	DataAluguel DATETIME NOT NULL,
	DataDevolucao DATE NOT NULL,
	IdCliente INT NOT NULL,
	CONSTRAINT Fk_IdCli FOREIGN KEY(IdCliente)
	REFERENCES Clientes(IdCliente)
);

#Alteração de DATETIME para TIME
ALTER TABLE Alugueis
CHANGE COLUMN DataAluguel DataAluguel DATE NOT NULL;

CREATE TABLE Filmes(
	IdFilme INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR(30) NOT NULL,
	Genero VARCHAR(20) NOT NULL,
	Idioma VARCHAR(30) NOT NULL,
	Preco DECIMAL(5,2) NOT NULL
);

CREATE TABLE ItensAlugados(
	CodAluguel INT NOT NULL,
	IdFilme INT NOT NULL,
	QtdeEstoque TINYINT NOT NULL,
	CONSTRAINT PK_Chaves PRIMARY KEY (CodAluguel, IdFilme),
	CONSTRAINT Fk_CodAluguel FOREIGN KEY (CodAluguel)
	REFERENCES Alugueis(CodAluguel),
	CONSTRAINT Fk_Itens FOREIGN KEY (IdFilme)
	REFERENCES Filmes(IdFilme)
);



#Alteração dos Campos
ALTER TABLE Clientes
ADD COLUMN Estado VARCHAR(2) NOT NULL;

ALTER TABLE ItensAlugados
DROP COLUMN QtdeEstoque;



#Inserção de Dados
INSERT INTO Clientes VALUES 
(1, "Alberto Pasquilini", "Rua do Ouvidor", "3838-4000", "SP"),
(2, "Emma Gordon", "Rua Jose Bonefacio", "2424-1000", "SP"),
(3, "Getúlio Vargas", "Rua Gotemburgo", "3738-8008", "RJ"),
(4, "John Locke", "Rua Sao Sebastiao", "5760-6070", "MG"),
(5, "Nicolau Maquiavel", "Rua Francisco Eugenio", "3700-8000", "SP");

INSERT INTO Filmes VALUES 
(1, "Sherlock Holmes", "Ação e Aventura", "Ingles", 9.85),
(2, "Planeta 51", "Infantil", "Portugues", 4.95),
(3, "Zumbilandia", "Comedia", "Ingles", 4.95),
(4, "Bastardos Inglórios", "Ação e aventura", "Ingles", 7.50),
(5, "Alvin e os Esquilos 2", "Infantil", "Portugues", 4.95);

INSERT INTO Alugueis VALUES
(1, "2021-08-16", "2021-08-18", 2),
(3, "2021-08-16", "2021-08-18", 4),
(5, "2021-08-17", "2021-08-19", 1),
(7, "2021-08-19", "2021-08-21", 3),
(9, "2021-08-19", "2021-08-21", 5);

INSERT INTO ItensAlugados VALUES
(1, 2),
(1, 4),
(3, 3);

INSERT INTO ItensAlugados VALUES
(5, 1),
(5, 2),
(5, 5),
(7, 4),
(9, 1),
(9, 3);

SELECT * FROM Filmes ORDER BY Preco DESC;
SELECT NomeCliente, Telefone FROM Clientes ORDER BY Estado;
SELECT * FROM ItensAlugados ORDER BY IdFilme;