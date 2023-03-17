#mysql -u root -h localhost -p
#Gabrielle Carvalho Gonçalves das Neves

#1. Realize uma consulta à tabela Produtos que exiba os produtos que custem entre R$ 9,00 e
R$ 15,00.

SELECT * FROM produtos WHERE PrecoUnitario BETWEEN 9 AND 15;


#2.Realize uma consulta à tabela Clientes que exiba os clientes que tenham o nome entre a
letra A e C.

SELECT * FROM clientes WHERE NomeCliente BETWEEN 'a%' AND 'c%';


#3. Realize uma consulta à tabela Produtos limitando a 2 registros apenas o resultado

SELECT * FROM produtos LIMIT 2;


#4. Exiba o menor valor da tabela Produtos.
SELECT MIN(PrecoUnitario) FROM produtos;


#5. Exiba o maior valor da tabela Produtos.

SELECT MAX(PrecoUnitario) FROM produtos;


#6. Exiba o maior valor da tabela Produtos, só que desta vez exibindo ‘Maior valor’ como o nome da coluna.

SELECT MAX(PrecoUnitario) AS 'Maior Valor' FROM produtos;


#7. Exiba o número total de registros da tabela Produtos.

SELECT COUNT(*) FROM Produtos;


#8. Exiba a média dos preços da tabela Produtos.

SELECT AVG(PrecoUnitario) FROM Produtos;


#9. Exiba a somatória dos preços da tabela Produtos

SELECT SUM(PrecoUnitario) FROM Produtos;


#10. Realize uma consulta as tabelas ItensVendidos e Produtos. Veja orientações:
-- todos os campos de Itensvendidos
-- calcular o subtotal
-- ordenar por IDVenda

SELECT *, IDProduto * QtdeVendida AS 'Subtotal' 
FROM itensvendidos 
ORDER BY IDVenda;


#11. Realize uma consulta as tabelas ItensVendidos e Produtos. Veja orientações:
-- campo IDVenda (itensvendidos) e chama-lo de Venda
-- campo NomeProduto (produtos) e chama-lo de Nome
-- campo QtdeVendida (itensvendidos) e chama-lo de Qtde
-- campo PrecoUnitario (produtos) e chama-lo de Preco
-- cálculo de subtotal e chama-lo de Subtotal
-- chamar ItensVendidos de iv
-- chamar Produtos de c

SELECT IDVenda AS 'Venda', NomeProduto AS 'Nome', QtdeVendida AS 'Qtde', PrecoUnitario AS 'Preco', QtdeVendida * PrecoUnitario AS 'Subtotal'
FROM ItensVendidos AS iv
INNER JOIN Produtos AS c
ON iv.IDProduto = c.IDProduto;