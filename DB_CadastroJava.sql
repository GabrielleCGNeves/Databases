#mysql -u root -h localhost -p
#ErickSantos12
#Gabrielle Carvalho Gonçalves das Neves

CREATE DATABASE DB_CadastroJava;
USE DB_CadastroJava;

CREATE TABLE TB_Cliente(
	cli_cod INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	cli_nome VARCHAR(255) NOT NULL,
	cli_email VARCHAR(255) NOT NULL,
	cli_tel VARCHAR(255) DEFAULT NULL
);
