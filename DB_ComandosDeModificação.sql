mysql -u root -h localhost -p

#Alterar valores diretamente na tabela sem usar o drop table
ALTER TABLE nome_da_tabela #
ADD COLUMN definições da tabela FIRST/AFTER nome_campo

MODIFY COLUMN  campo tipo(tamanho) NULL/NOT NULL;

ALTER TABLE nome_da_tabela
CHANGE COLUMN nome_campo novo_nome definições de criação;

ALTER TABLE nome_da_tabela
RENAME TO novo_nome_da_tabela;

ALTER TABLE nome_da_tabela
DROP COLUMN nome_campo;

ALTER TABLE nome_da_tabela
ADD CONSTRAINT nome_chave tipo_chave (nome_campo);

ALTER TABLE nome_da_tabela
ADD	CONSTRAINT nome_chave tipo_chave (nome_campo)
REFERENCES tabela_primaria(campo_chave_primaria);


			---//---


DROP DATABASE IF EXISTS megafarma;
CREATE DATABASE IF NOT EXISTS megafarma;

USE megafarma;

CREATE TABLE Clientes (
	NomeCliente VARCHAR(30) NOT NULL,
	CPFCliente VARCHAR(14) NOT NULL,
	CorFavorita VARCHAR(20) NOT NULL
);

CREATE TABLE Pedidos(
	IdVenda INT NOT NULL PRIMARY KEY,
	DataDoBagulho DATETIME NOT NULL,
	IdCliente INT NOT NULL
);

ALTER TABLE Clientes
ADD COLUMN IdCliente INT NOT NULL FIRST; #Caso a tabela já estivesse preenchida não é possível usar not null

ALTER TABLE Clientes
ADD COLUMN Endereco VARCHAR (10) NULL AFTER CPFCliente;

ALTER TABLE Clientes 
MODIFY COLUMN Endereco VARCHAR(50) NOT NULL;

ALTER TABLE Clientes
MODIFY COLUMN CorFavorita TINYINT NOT NULL;

ALTER TABLE Pedidos
CHANGE COLUMN DataDoBagulho DataVenda DATETIME NOT NULL;

ALTER TABLE Pedidos
RENAME TO Vendas;

ALTER TABLE Clientes
DROP COLUMN CorFavorita; 

ALTER TABLE Clientes
ADD CONSTRAINT Pk_Clientes PRIMARY KEY (IdCliente);

ALTER TABLE Vendas
ADD CONSTRAINT Fk_vendas_clientes FOREIGN KEY (IdCliente)
REFERENCES Clientes(IdCliente);

#ERRO
ALTER TABLE Clientes
ADD COLUMN Bairro VARCHAR(30) NOT NULL, 
ADD COLUMN Cidade VARCHAR(40) NOT NULL,
ADD	COLUMN Estado CHAR(2) NOT NULL,
ADD CONSTRAINT uk_clientes UNIQUE KEY (CPFCliente);
#ERRO

