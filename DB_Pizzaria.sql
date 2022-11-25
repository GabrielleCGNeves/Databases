mysql -u root -h localhost -p
#Gabrielle Carvalho Gonçalves das Neves
#Higor Gomes Rocha

CREATE DATABASE pizzaria;
USE pizzaria;


    #CRIAÇÃO DAS TABELAS

CREATE TABLE TB_Cliente(
    cli_idCli INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cli_nome VARCHAR(30) NOT NULL,
    cli_numero VARCHAR(13) NOT NULL,
    cli_endereco VARCHAR(50) NULL
);

CREATE TABLE TB_Pizza(
    piz_idPizza INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    piz_nome VARCHAR(50) NOT NULL,
    piz_ingredientes VARCHAR(50) NOT NULL,
    piz_preco DECIMAL(5,2) NOT NULL
);

CREATE TABLE TB_Bebida(
    beb_idBeb INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    beb_nome VARCHAR(50) NOT NULL,
    beb_preco DECIMAL(4,2) NOT NULL
);

CREATE TABLE TB_Pedido(
    ped_idPed INT NOT NULL,
    cli_idCli INT NOT NULL,
    ped_valorTotal DECIMAL(5,2) NOT NULL,
    CONSTRAINT PK_ChaveMult PRIMARY KEY(ped_idPed, cli_idCli),
    CONSTRAINT FK_Cliente FOREIGN KEY(cli_idCli)
    REFERENCES TB_Cliente(cli_idCli)
);

CREATE TABLE TB_ItensPedido(
    ped_idPed INT NOT NULL,
    piz_idPizza INT NOT NULL,
    beb_idBeb INT NULL,
    CONSTRAINT FK_Ped FOREIGN KEY(ped_idPed)
    REFERENCES TB_Pedido(ped_idPed),
    CONSTRAINT FK_Piz FOREIGN KEY(piz_idPizza)
    REFERENCES TB_Pizza(piz_idPizza),
    CONSTRAINT FK_Beb FOREIGN KEY(beb_idBeb)
    REFERENCES TB_Bebida(beb_idBeb)
);



    #INSERÇÃO DE Dados

INSERT INTO TB_Cliente VALUES
(null, 'Carlos Henrique', '1190000-0000', null),
(null, 'Ana Beatriz', '1190000-0001', 'Jd Metropole, 471'),
(null, 'Marcos Walter', '1190000-0002', 'Jd Oriental, 23'),
(null, 'Luiz Gustavo', '1190000-0003', null),
(null, 'Raquel Cardoso', '1190000-0004', 'Av Leopoldina, 1897');


INSERT INTO TB_Pizza VALUES
(null, 'Mussarella', 'Mussarela, tomate, oregano', 34.50),
(null, 'Quatro Queijos', 'Mussarela, Caturpiry, Parmesao, Cheddar', 42.69),
(null, 'Palmito', 'Mussarela e Palmito', 31.99),
(null, 'Romeu e Julieta', 'Mussarela e Goiabada', 37.95),
(null, 'Chocolate', 'Chocolate ao leite', 41.69);


INSERT INTO TB_Bebida VALUES
(null, 'Itubaina 2L', 7.99),
(null, 'Coca-Cola 2L', 11.99),
(null, 'Fanta Uva 1.5l', 10.99),
(null, 'Guarana Antartica 2L', 8.99),
(null, 'Dolly Guarana 2L', 6.99);


#idPed, idCli, valorFinal
INSERT INTO TB_Pedido VALUES
(1, 4, 97.17),
(2, 3, 96.66),
(3, 5, 98.62),
(4, 1, 87.43),
(5, 2, 86.92);


#idPed, idCli, idBeb 
INSERT INTO TB_ItensPedido VALUES
(1, 2, 1),
(1, 1, 2),
(2, 5, 3),
(2, 3, 2),
(3, 4, 3),
(3, 2, 5),
(4, 4, 1),
(4, 1, 5),
(5, 3, 1),
(5, 4, 4);

