DROP DATABASE IF EXISTS locadora; #Deleta o banco de dados caso já exista
CREATE DATABASE IF NOT EXISTS locadora; #Cria o banco de dados se não já existir com esse nome

CONSTRAINT UN_Locadora UNIQUE KEY (CNPJ) #Define uma chave única


#show tables;
#desc Cliente;

CREATE TABLE Loja(
IDLoja INT NOT NULL PRIMARY KEY, #É possivel declarar chave primária e única sem  o constraint
CNPJ VARCHAR (18) NOT NULL UNIQUE KEY
);


#Atividade02. Criação de tabela com chaves estrangeiras


CREATE DATABASE locacaoCarros;
use locacaoCarros;



CREATE TABLE Marca (
IdMarca INT NOT NULL PRIMARY KEY,
marcaDesc VARCHAR (50) NOT NULL
);



CREATE TABLE Modelo(
IdModelo INT NOT NULL PRIMARY KEY,
modeloDesc VARCHAR(50) NOT NULL
);



CREATE TABLE Automovel(
IdAuto INT NOT NULL PRIMARY KEY,
IdMarca INT NOT NULL,
IdModelo INT NOT NULL,
autoNome VARCHAR(50),
CONSTRAINT FK_IdMarca FOREIGN KEY (IdMarca)
REFERENCES Marca(IdMarca),
CONSTRAINT FK_IdModelo FOREIGN KEY (IdModelo)
REFERENCES Modelo(IdModelo)
);



CREATE TABLE Cliente (
idCliente INT NOT NULL PRIMARY KEY,
clienteNome VARCHAR(50) NOT NULL,
clienteEmail VARCHAR(70) NOT NULL,
clienteCpf 	VARCHAR(14) NOT NULL UNIQUE KEY,
clienteEndereco VARCHAR(50)NOT NULL,
clienteN INT NOT NULL UNIQUE KEY,
clienteComplemento VARCHAR(50) NOT NULL,
clienteCidade VARCHAR(50),
clienteEstado VARCHAR(2),
dtCadastro DATETIME NOT NULL
);



CREATE TABLE Locacao (
IdLocacao INT NOT NULL PRIMARY KEY,
IdAuto INT NOT NULL,
idCliente INT NOT NULL,
locacaoKm INT NOT NULL,
dtCadastro DATETIME NOT NULL,
CONSTRAINT FK_IdCliente FOREIGN KEY (IdCliente)
REFERENCES Cliente(IdCliente),
CONSTRAINT FK_IdAuto FOREIGN KEY (IdAuto)
REFERENCES Automovel(IdAuto)
);