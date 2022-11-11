mysql -u root -h localhost -p
#Gabriel Victor Cepeda
#Gabrielle Carvalho Gonçalves das Neves


#1. Criação e uso do database
CREATE DATABASE digivice;
USE digivice


#2. Criação da Tabela
CREATE TABLE Digimons(
	DigiCode INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Nivel VARCHAR(15) NOT NULL,
	Tipo VARCHAR(30) NOT NULL,
	Atributo VARCHAR(30) NOT NULL,
	Peso INT NOT NULL
);


#3. Preencha a tabela comno mínimo 20 digimons
INSERT INTO Digimons VALUES
(null, 'Agumon', 'Child', 'Reptile', 'Vaccine', 20),
(null, 'Airdramon', 'Adult', 'Mythical Beast', 'Vaccine', 20),
(null, 'Allomon', 'Adult', 'Dinosaur', 'Free', 26),
(null, 'Alphamon', 'Ultimate', 'Holy Knight', 'Vaccine', 70),
(null, 'Angemon', 'Adult', 'Angel', 'Vaccine', 20),
(null, 'Gabumon', 'Child', 'Beast', 'Vaccine', 15),
(null, 'Guilmon', 'Child', 'Reptile', 'Virus', 10),
(null, 'Gazimon', 'Child', 'Mammal', 'Virus', 15),
(null, 'Gottsumon', 'Adult', 'Mineral', 'Data', 20),
(null, 'Gomamon', 'Child', 'Marine Animal','Vaccine', 20),
(null, 'Zurumon', 'Baby I', 'Slime', 'Free', 4),
(null, 'Xuanwomon', 'Ultimate', 'Holy Beast', 'Vaccine, Virus', 25),
(null, 'Volcdramon', 'Perfect', 'Dragon', 'Data', 20),
(null, 'Sunflowmon', 'Adult', 'Plant', 'Data', 20),
(null, 'Woodmon', 'Adult', 'Plant', 'Virus', 18),
(null, 'Redvegimon', 'Adult', 'Plant', 'Virus', 12),
(null, 'Tokomon', 'Baby ii', 'Lesser', 'Free', 10),
(null, 'Tobucatmon', 'Adult', 'Puppet', 'Data', 17),
(null, 'Togemon', 'Adult', 'Plant', 'Virus', 20),
(null, 'Tailon', 'Child', 'Holy Beast', 'Vaccine', 20);


#Verificando se a inserção não deu erro
SELECT * FROM Digimons;


#4. Modifique o tipo do Digimonde código 12 para Madeira.
UPDATE Digimons
SET Tipo = 'Madeira'
WHERE DigiCode = 12;

#5. Modifique o tipo de todos os digimonsPlanta(Plant) para Folha.
UPDATE Digimons
SET Tipo = 'Folha'
WHERE Tipo = 'Plant';

#6. Apague o registro de código 18.
DELETE FROM Digimons WHERE DigiCode = 18;

#7. Apague os registros de códigos entre 5 e 11.
DELETE FROM Digimons WHERE DigiCode BETWEEN 5 AND 11;

#8. Realize uma consulta a todos os dados da tabela ordenado pelo tipo em ordem decrescente.
SELECT * FROM Digimons ORDER BY Tipo DESC;