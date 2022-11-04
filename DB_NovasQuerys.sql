mysql -u root -h localhost -p

#Dentro do SQL existe uma função de auto encremento que pode ser aplicada SOMENTE nas chaves primárias. Exemplo da QUERY:
#IdCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
# ^ Na inserção de dados, esse valor deverá ser informado como null.
#Desvantagem = quando deletados valores, os números não são substituidos. Para zerar o increment é preciso gerar um novo seed
#Exemplo de geração de seed ->


# =Comando de modificações (DB_tijolobuster_GabrielleCarvalho_HigorGomes)
#Integridade Referencial: quando a chave faz referência em outra tabela não é possível deletála direto



	#COMANDO DELETE

#Apaga todos os dados da tabela
DELETE FROM ItensAlugados

#Apaga uma coluna da tabela
* DELETE FROM Filmes WHERE IdFilme = 5; 
* DELETE FROM Filmes WHERE Preco = '4.95';
* DELETE FROM Filmes WHERE IdFilme <= '4'; #OPERADPRES RELACIONAIS
* DELETE FROM Filmes WHERE IdFilme BETWEEN 7 AND 9; #incluindo 7 & 9



	#COMANDO UPDATE

#Mudando o registro de uma coluna
* UPDATE Clientes 
SET NomeCliente = 'Leandro' 
WHERE IdCliente = 3;


#Alterando vários campos
* UPDATE Clientes
SET NomeCliente = 'Lucas', Endereco = 'Rua 8', Telefone = null
WHERE IdCliente = 5;


#Usando outras chaves como referência (Neste caso mudará os dois registros que possuem RJ)
* UPDATE Clientes
SET Endereco = 'Avenida'
WHERE Estado = 'RJ';