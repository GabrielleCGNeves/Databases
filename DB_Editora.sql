#mysql -u root -h localhost -p
#Gabrielle Carvalho Gonçalves das Neves

# 1. Realize uma consulta à tabela Livros que exiba os livros que custem entre R$ 50,00 e R$100,00.
SELECT * FROM Livros WHERE PrecoUnitario BETWEEN 50 AND 100;

# 2. Realize uma consulta à tabela Livrarias que exiba as livrarias que tenham o nome entre a letra C e J.
SELECT * FROM Livrarias WHERE NomeLivraria BETWEEN 'C' AND 'J';

# 3. Realize uma consulta à tabela Livros limitando a 5 registros apenas o resultado.
SELECT * FROM Livros LIMIT 5;

# 4. Exiba o menor valor da tabela Livros.
SELECT MIN(PrecoUnitario) FROM Livros;

# 5. Exiba o maior valor da tabela Livros.
SELECT MAX(PrecoUnitario) FROM Livros;

# 6. Exiba o menor autor da tabela Livros.
SELECT autor FROM livros ORDER BY CHAR_LENGTH(autor) LIMIT 1;

# 7. Exiba o maior título da tabela Livros.
SELECT titulolivro FROM livros ORDER BY CHAR_LENGTH(titulolivro) DESC LIMIT 1;

# 8. Exiba o número total de registros da tabela Livros.
SELECT COUNT(*) AS 'QtdeRegistro' FROM Livros;

# 9. Exiba a média dos preços da tabela Livros.
SELECT AVG(PrecoUnitario) AS 'PrecoMedioLivro' FROM LIVROS;

# 10. Exiba a somatória das quantidades vendidas da tabela ItensNF;
SELECT SUM(QtdeVendida) AS 'QtdeTotal' FROM ItensNF;


# 11. Realize uma consulta as tabelas Livrarias e NotasFiscais. Veja orientações:
-- campo IDVenda (notasfiscais) e chama-lo de Venda
-- campo DataVenda (notasfiscais) e chama-lo de Data
-- campo NomeLivraria (livrarias) e chama-lo de Nome
-- campo Telefone (livrarias) e chama-lo de Contato
-- chamar NotasFiscais de nf
-- chamar Livrarias de la

SELECT IDVenda AS 'Venda', DataVenda AS 'Data', nomelivraria AS 'Nome', Telefone AS 'Contato'
FROM NotasFiscais AS nf
INNER JOIN Livrarias AS la
ON nf.IDLivraria = la.IDLivraria;


# 12. Realize uma consulta as tabelas ItensNF e Livros. Veja orientações:
-- campo IDVenda (itensnf) e chama-lo de Venda
-- campo TituloLivro (livros) e chama-lo de Titulo
-- campo QtdeVendida (itensnf) e chama-lo de Qtde
-- campo PrecoUnitario (livros) e chama-lo de Valor
-- chamar ItensNF de inf
-- chamar Livros de lo

SELECT IDVenda AS 'Venda', TituloLivro AS 'Titulo', QtdeVendida AS 'Qtde', PrecoUnitario AS 'Valor'
FROM ItensNF AS inf
INNER JOIN Livros as lo
ON inf.idLivro - lo.idLivro;


# 13. Realize uma consulta as tabelas ItensNF e Livros. Veja orientações:

-- campo IDVenda (itensnf) e chama-lo de Venda
-- campo TituloLivro (livros) e chama-lo de Titulo
-- campo QtdeVendida (itensnf) e chama-lo de Qtde
-- campo PrecoUnitario (livros) e chama-lo de Valor
-- calcular subtotal e chama-lo de Subtotal
-- chamar ItensNF de inf
-- chamar Livros de lo

SELECT IDVenda AS 'Venda', TituloLivro AS 'Titulo', QtdeVendida AS 'Qtde', PrecoUnitario AS 'Valor', QtdeVendida * PrecoUnitario AS 'Subtotal'
FROM itensnf AS inf
INNER JOIN Livros AS lo
ON inf.idLivro = lo.idLivro;


# 14. Realize uma consulta as tabelas ItensNF e Livros. Veja orientações:
-- campo IDVenda (itensnf) e chama-lo de Venda
-- campo TituloLivro (livros) e chama-lo de Titulo
-- calcular subtotal e chama-lo de Subtotal
-- chamar ItensNF de inf
-- chamar Livros de lo
-- limitar a 5 resultados

SELECT IDVenda AS 'Venda', TituloLivro AS 'Titulo', QtdeVendida * PrecoUnitario as 'Subtotal'
FROM Livros AS lo
INNER JOIN ItensNF AS inf
ON lo.idLivro = inf.idLivro
LIMIT 5;


# 15. Realize uma consulta as tabelas ItensNF e Livros. Veja orientações:
-- campo IDVenda (itensnf) e chama-lo de Venda
-- campo TituloLivro (livros) e chama-lo de Titulo
-- calcular subtotal e chama-lo de Subtotal
-- chamar ItensNF de inf
-- chamar Livros de lo
-- limitar aos 3 maiores subtotaiS

SELECT idvenda as 'Venda', titulolivro as 'Titulo', QtdeVendida * PrecoUnitario as 'Subtotal'
FROM itensnf as inf
INNER JOIN livros as lo
ON inf.idLivro = lo.idLivro
ORDER BY Subtotal DESC LIMIT 3;
