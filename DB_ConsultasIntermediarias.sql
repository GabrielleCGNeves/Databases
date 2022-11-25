mysql -u root -p < script_bd2_chevrowagen.sql

<> #DIFERENTE
#deixar sempre o texto em apostrofos

SELECT * FROM clientes WHERE nomecliente LIKE 'j%';
SELECT * FROM clientes WHERE nomecliente LIKE '%j%';
SELECT * FROM clientes WHERE nomecliente LIKE '%j';
SELECT * FROM clientes WHERE nomecliente LIKE '_o%'; #um nome que a segunda letra é 'o'
SELECT * FROM clientes WHERE nomecliente LIKE '__n%';  #dois caracteres antes da letra 'n'

SELECT vendas.idvenda, vendas.datavenda, clientes.nomecliente
FROM vendas, clientes; #o sql multiplica a quantidade de linha com a quantidade de coluna


SELECT idvenda, datavenda, nomecliente 
FROM vendas, clientes
WHERE vendas.idcliente = clientes.idcliente;

SELECT idvenda, datavenda, nomecliente FROM vendas 
INNER JOIN clientes ON vendas.idcliente = clientes.idcliente;

SELECT idveiculo, fabricante FROM veiculos;

SELECT idveiculo AS 'codigo', fabricante FROM veiculos; #mudar o apelido da tabela na visualização

#^
SELECT veiculos.idveiculo AS 'codigo', veiculos.fabricante FROM veiculos;

#^
SELECT carros.idveiculo AS 'codigo', carros.fabricante FROM veiculos AS carros; #mudar o nome da tabela

SELECT v.idvenda, v.datavenda, c.nomecliente FROM vendas AS v 
INNER JOIN clientes AS c ON v.idcliente = c.idcliente
ORDER BY v.idvenda;

