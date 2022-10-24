CREATE DATABASE editora;
USE editora;

CREATE TABLE Livrarias (
IdLivraria int NOT NULL,
NomeLivraria VARCHAR(30) NOT NULL,
ENDERECO VARCHAR (50) NOT NULL,
CNPJ VARCHAR(13) NOT NULL,
CONSTRAINT PK_Livraria PRIMARY KEY (IDLivraria),
CONSTRAINT UN_CNPJ UNIQUE (CNPJ)
);

CREATE TABLE NotasFiscais(
CodigoVenda int NOT NULL,
DataVenda Datetime NOT NULL,
IdLivraria Int NOT NULL,
CONSTRAINT PK_CodigoVenda PRIMARY KEY (CodigoVenda),
CONSTRAINT PK_IdLivraria FOREIGN KEY (IDLivraria)
REFERENCES Livrarias(IdLivraria)
);

CREATE TABLE Livros (
IdLivro int NOT NULL,
TituloLivro VARCHAR(50) NOT NULL,
Autor VARCHAR(50) NOT NULL,
PrecoUnitario DECIMAL (5,2) NOT NULL,
CONSTRAINT PK_IdLivro PRIMARY KEY (IdLivro)
);

CREATE TABLE ItensNF (
CodigoVenda int NOT NULL,
IdLivro int NOT NULL,
QtdeVendida int NOT NULL,
CONSTRAINT FK_CodigoVenda FOREIGN KEY(CodigoVenda)
REFERENCES NotasFiscais(CodigoVenda),
CONSTRAINT FK_IdLivro FOREIGN KEY (IdLivro)
REFERENCES Livros(IdLivro)
);


CREATE DATABASE locadora;
USE locadora;

CREATE TABLE Clientes(
IdCliente int NOT NULL,
NomeCliente VARCHAR(50) NOT NULL,
Endereco VARCHAR(50) NOT NULL,
CPF VARCHAR(11) NOT NULL,
Telefone VARCHAR (14) NOT NULL,
CONSTRAINT PK_IdCliente PRIMARY KEY (IdCliente)
);

CREATE TABLE Alugueis (
Comprovante int NOT NULL,
Data Datetime NOT NULL,
Devolucao Datetime NOT NULL,
IdCiente int NOT NULL,
CONSTRAINT PK_Comprovante PRIMARY KEY (Comprovante),
CONSTRAINT FK_IdCliente FOREIGN KEY (IdCiente)
REFERENCES Clientes(IdCliente)
);

CREATE TABLE Filmes(
IdFilme int NOT NULL,
Titulo VARCHAR (30) NOT NULL,
Genero VARCHAR (20) NOT NULL,
Idioma VARCHAR (15) NOT NULL,
Preco DECIMAL (5,2) NOT NULL,
CONSTRAINT PK_IdFilme PRIMARY KEY (IdFilme)
);

CREATE TABLE ItensAlugados(
Comprovante int NOT NULL,
IdFilme int NOT NULL,
QtdeEstoque int NOT NULL,
CONSTRAINT FK_Comprovante FOREIGN KEY(Comprovante)
REFERENCES Alugueis(Comprovante),
CONSTRAINT FK_IdFilme FOREIGN KEY(IdFilme)
REFERENCES Filmes(IdFilme)
);