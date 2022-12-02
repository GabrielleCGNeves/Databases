#mysql -u root -h localhost -p
#Gabrielle Carvalho Gonçalves das Neves

#1. Crie um banco de dados com seu RM.
CREATE DATABASE `22846`;
Use `22846`;

#2. Crie as tabelas a seguir neste banco de dados:
CREATE TABLE TB_Cliente(
	cli_codCli INT NOT NULL PRIMARY KEY,
	cli_nome VARCHAR(30) NOT NULL,
	cli_cpf VARCHAR(13) NOT NULL
);


CREATE TABLE TB_Pedido(
	ped_codPed INT NOT NULL PRIMARY KEY,
	ped_dataPedido DATETIME NOT NULL,
	cli_codCli INT NOT NULL,
	CONSTRAINT FK_Cliente FOREIGN KEY(cli_codCli)
    REFERENCES TB_Cliente(cli_codCli)
);


CREATE TABLE TB_Produto(
	prod_codProd INT NOT NULL PRIMARY KEY,
	prod_nome VARCHAR(30) NOT NULL,
	prod_precoUnitario DECIMAL(6,2) NOT NULL
);


CREATE TABLE TB_ItensPedido(
	ped_codPed INT NOT NULL,
	prod_codProd INT NOT NULL,
	ite_qtdeVenda TINYINT NOT NULL,
	CONSTRAINT PK_ChaveMult PRIMARY KEY(ped_codPed, prod_codProd),
    CONSTRAINT FK_Prod FOREIGN KEY(prod_codProd)
    REFERENCES TB_Produto(prod_codProd)
);


#3. Preencha a tabela Clientes com no mínimo 5 clientes.
INSERT INTO TB_Cliente VALUES
(1, 'Ana Lima', '12075410011'),
(2, 'Bernardo Anjos', '26744827103'),
(3, 'Lucas Duarte', '35525028905'),
(4, 'Carolina Albuquerque', '47789640208'),
(5, 'Matheus Pereira', '37522994284');


#4. Preencha a tabela Produtos com no mínimo 5 produtos (os produtos devem ser acessórios de
informática como, por exemplo, mouse, teclado, etc).
INSERT INTO TB_Produto VALUES
(1, 'Mouse', 15.00),
(2, 'Teclado Mecânico', 249.99),
(3, 'Pendrive', 15.00),
(4, 'Monitor 1980p', 150.00),
(5, 'Webcam Logitech', 50.00);


#5. Preencha a tabela Pedidos com no mínimo 5 pedidos (onde cada pedido deve possuir entre 2-3 itens).
INSERT INTO TB_Pedido VALUES
(1, '20230112', 2),
(2, '20230335', 4),
(3, '20230337', 5),
(4, '20230408', 3),
(5, '20230429', 1);

INSERT INTO TB_ItensPedido VALUES
(1, 3, 2),
(1, 4, 1),
(2, 2, 2),
(2, 1, 2),
(3, 5, 1),
(3, 3, 2),
(4, 4, 1),
(4, 2, 4),
(5, 1, 3),
(5, 5, 1);



	#CONSULTAS

#6. Realize uma consulta à tabela Clientes que liste todos os clientes onde o nome comece com a letra B.
SELECT * FROM TB_Cliente WHERE cli_nome LIKE 'b%';

#7. Realize uma consulta à tabela Produtos que liste todos os produtos com preço entre R$ 10,00 e R$ 50, 00.
SELECT * FROM TB_Produto WHERE prod_precoUnitario BETWEEN '10.00' AND '50.00';

#8. Realize uma consulta aos pedidos que exiba: CodigoPedido, DataPedido e NomeCliente.
SELECT ped_codPed, ped_dataPedido, cli_nome FROM TB_Pedido
INNER JOIN TB_Cliente;

#9. Realize uma consulta aos itens pedidos que exiba: CodigoPedido, NomeProduto, PrecoUnitario e QtdeVendida.
SELECT ped_codPed, prod_nome, prod_precoUnitario, ite_qtdeVenda FROM TB_ItensPedido
INNER JOIN TB_Produto;