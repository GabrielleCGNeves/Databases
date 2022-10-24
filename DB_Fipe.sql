mysql -u root -h localhost -p
#Gabriel Victor Cepeda
#Gabrielle Carvalho Gonçalves das Neves

CREATE DATABASE File;
Use File;

CREATE TABLE Carros(
	codCarro INT NOT NULL PRIMARY KEY,
	fabricante VARCHAR(10) NOT NULL,
	modelo VARCHAR(50) NOT NULL,
	ano VARCHAR(4) NOT NULL,
	preco DECIMAL(10,2) NOT NULL
);


#CONSULTAS
SELECT * FROM Carros;
SELECT codCarro, modelo, ano FROM Carros;
SELECT * FROM Carros ORDER BY modelo ASC;
SELECT * FROM Carros ORDER BY preco DESC;
SELECT modelo, ano, preco FROM Carros ORDER BY fabricante ASC;

INSERT INTO Carros VALUES
(1, 'BMW', 'X5 3.0 4x4', '2010', 733800.00);

INSERT INTO Carros VALUES
(2, 'BMW', 'X5 3.0 4x4', '2009', 68783.00),
(3, 'BMW', 'X5 3.0 4x4', '2008', 65167.00),
(4, 'BMW', 'X5 3.0 4x4', '2007', 53747.00);

INSERT INTO Carros VALUES
(5, 'BMW', '323i/iA Exclusive', '2000', 36358.00),
(6, 'BMW', '323i/iA Exclusive', '1999', 33973.00),
(7, 'BMW', '323i/iA Exclusive', '1998', 30816.00),
(8, 'BMW', '323i/iA Exclusive', '1997', 24384.00);

INSERT INTO Carros VALUES
(9, 'BMW', '750iA', '2006', 99811.00),
(10, 'BMW', '750iA', '2010', 166967.00),
(11, 'BMW', '750iA', '2012', 213580.00),
(12, 'BMW', '750iA', '2014', 278546.00);

INSERT INTO Carros VALUES
(13, 'BMW', 'X6 XDRIVE 50i 4.4 407cv Bi-Turbo', '2015', 296840.00),
(14, 'BMW', 'X6 XDRIVE 50i 4.4 407cv Bi-Turbo', '2014', 206249.00),
(15, 'BMW', 'X6 XDRIVE 50i 4.4 407cv Bi-Turbo', '2013', 200592.00),
(16, 'BMW', 'X6 XDRIVE 50i 4.4 407cv Bi-Turbo', '2014', 173837.00),
(17, 'BMW', 'M3 Sedan 4.0 32V', '2012', 225824.00),
(18, 'BMW', 'M3 Sedan 4.0 32V', '2011', 219631.00),
(19, 'BMW', 'M3 Sedan 4.0 32V', '2010', 189507.00),
(20, 'BMW', 'M3 Sedan 4.0 32V', '2009', 179440.00);


INSERT INTO Carros VALUES
(21, 'Toyota', 'Band.Jipe Cap.de Aço Chas. Curto Diesel' , '2001 ', 77114.00 ),
(22, 'Toyota', 'Band.Jipe Cap.de Aço Chas. Curto Diesel', '2000', 68767.00),
(23, 'Toyota', 'Band.Jipe Cap.de Aço Chas. Curto Diesel' ,'1999', 63997.00),
(24, 'Toyota', 'Band.Jipe Cap.de Aço Chas. Curto Diesel', '1997', 55454.00),

(25, 'Toyota','Band.Jipe Capota de Lona Diesel','1997', 47018.00),
(26, 'Toyota','Band.Jipe Capota de Lona Diesel','1996', 45737.00),
(27, 'Toyota','Band.Jipe Capota de Lona Diesel','1995', 44491.00),
(28, 'Toyota','Band.Jipe Capota de Lona Diesel','1994', 43279.00),

(29, 'Toyota','Band.Picape Chassi Curto Diesel','2001', 42817.00),
(30, 'Toyota','Band.Picape Chassi Curto Diesel','2000', 37316.00),
(31, 'Toyota','Band.Picape Chassi Curto Diesel','1999', 36299.00),
(32, 'Toyota','Band.Picape Chassi Curto Diesel','1998', 35302.00),

(33, 'Toyota','Band.Picape CD 2p Chassi Longo Diesel','2001', 60166.00),
(34, 'Toyota','Band.Picape CD 2p Chassi Longo Diesel','2000', 58515.00),
(35, 'Toyota','Band.Picape CD 2p Chassi Longo Diesel','1999', 55611.00),
(36, 'Toyota','Band.Picape CD 2p Chassi Longo Diesel','1998', 53894.00),

(37, 'Toyota','Hilux SW4 4x4 3.0 8V TB Diesel','2002', 55268.00),
(38, 'Toyota','Hilux SW4 4x4 3.0 8V TB Diesel','2001', 53147.00),
(39, 'Toyota','Hilux SW4 4x4 3.0 8V TB Diesel','2000', 51325.00),
(40, 'Toyota','Hilux SW4 4x4 3.0 8V TB Diesel','1999', 46767.00);


INSERT INTO Carros VALUES
(41, 'CHANA', 'Utility 1.0 8V 53cv (Furgão)', '2009', 13186.00),
(42, 'CHANA', 'Utility 1.0 8V 53cv (Furgão)', '2008', 12376.00),
(43, 'CHANA', 'Utility 1.0 8V 53cv (Furgão)', '2007', 10478.00),
(44, 'CHANA', 'Utility 1.0 8V 53cv (Furgão)', '2006', 10189.00),

(45, 'CHANA', 'Family 1.0 8V 53cv (Perua)', '2006', 11320.00),
(46, 'CHANA', 'Family 1.0 8V 53cv (Perua)', '2007', 11685.00),
(47, 'CHANA', 'Family 1.0 8V 53cv (Perua)', '2008', 13635.00),
(48, 'CHANA', 'Family 1.0 8V 53cv (Perua)', '2009', 14144.00),

(49, 'CHANA', 'CE 1.0 8V 53cv (Pick-Up)', '2012', 22854.00),
(50, 'CHANA', 'CE 1.0 8V 53cv (Pick-Up)', '2011', 19465.00),
(51, 'CHANA', 'CE 1.0 8V 53cv (Pick-Up)', '2010', 15452.00),
(52, 'CHANA', 'CE 1.0 8V 53cv (Pick-Up)', '2009', 14887.00),

(53, 'CHANA', 'Cargo 1.0 8V 53cv (Pick-Up)', '2008', 11136.00),
(54, 'CHANA', 'Cargo 1.0 8V 53cv (Pick-Up)', '2009', 11608.00),
(55, 'CHANA', 'Cargo 1.0 8V 53cv (Pick-Up)', '2010', 14380.00),
(56, 'CHANA', 'Cargo 1.0 8V 53cv (Pick-Up)', '2011', 19311.00),

(57, 'CHANA', 'Cargo CD 1.0 8V 53cv (Pick-Up)', '2007', 11216.00),
(58, 'CHANA', 'Cargo CD 1.0 8V 53cv (Pick-Up)', '2008', 13408.00),
(59, 'CHANA', 'Cargo CD 1.0 8V 53cv (Pick-Up)', '2009', 15174.00),
(60, 'CHANA', 'Cargo CD 1.0 8V 53cv (Pick-Up)', '2010', 15616.00);


INSERT INTO Carros VALUES

(61, 'Suzuki','Vitara JLX Metal 1.6 8V 2p','1999',35110.00),
(62, 'Suzuki','Vitara JLX Metal 1.6 8V 2p','1998',33051.00),
(63, 'Suzuki','Vitara JLX Metal 1.6 8V 2p','1997',32144.00),
(64, 'Suzuki','Vitara JLX Metal 1.6 8V 2p','1996',28938.00),

(65, 'Suzuki','Swift Hatch 1.0 3p e 5p','1999',10225.00),
(66, 'Suzuki','Swift Hatch 1.0 3p e 5p','1998',9946.00),
(67, 'Suzuki','Swift Hatch 1.0 3p e 5p','1997',9672.00),
(68, 'Suzuki','Swift Hatch 1.0 3p e 5p','1996',8306.00),

(69, 'Suzuki','Samurai JX Canvas 1.3','1999',30029.00),
(70, 'Suzuki','Samurai JX Canvas 1.3','1998',28859.00),
(71, 'Suzuki','Samurai JX Canvas 1.3','1997',27965.00),
(72, 'Suzuki','Samurai JX Canvas 1.3','1996',27254.00),

(73, 'Suzuki','Baleno 1.6 16V Aut.','1999', 9852.00),
(74, 'Suzuki','Baleno 1.6 16V Aut.','1998', 8961.00),
(75, 'Suzuki','Baleno 1.6 16V Aut.','1997', 8714.00),
(76, 'Suzuki','Baleno 1.6 16V Aut.','1996', 6918.00),

(77, 'Suzuki','Baleno 1.6 16V Mec.','2000', 8803.00),
(78, 'Suzuki','Baleno 1.6 16V Mec.','1999', 8241.00),
(79, 'Suzuki','Baleno 1.6 16V Mec.','1998', 7319.00),
(80, 'Suzuki','Baleno 1.6 16V Mec.','1997', 7118.00);

INSERT INTO Carros VALUES
(81, 'Peugeot', '2008 Crossway 1.6 Flex 16V 5p Aut', '2020', 98752.00),
(82, 'Peugeot', '2008 Crossway 1.6 Flex 16V 5p Aut', '2019', 81250.00),
(83, 'Peugeot', '2008 Crossway 1.6 Flex 16V 5p Aut', '2018', 79042.00),
(84, 'Peugeot', '2008 Crossway 1.6 Flex 16V 5p Aut', '2017', 65895.00),

(85, 'Peugeot', '2008 Allure 1.6 Flex 16V 5p Mec.', '2020', 79216.00),
(86, 'Peugeot', '2008 Allure 1.6 Flex 16V 5p Mec.', '2019', 70816.00),
(87, 'Peugeot', '2008 Allure 1.6 Flex 16V 5p Mec.', '2018', 64653.00),
(88, 'Peugeot', '2008 Allure 1.6 Flex 16V 5p Mec.', '2017', 58692.00),

(89, 'Peugeot', '5008 Griffe Pack 1.6 Turbo 16V 5p Aut.', '2020', 202304.00),
(90, 'Peugeot', '5008 Griffe Pack 1.6 Turbo 16V 5p Aut.', '2019', 168803.00),
(91, 'Peugeot', '5008 Griffe Pack 1.6 Turbo 16V 5p Aut.', '2018', 162021.00),
(92, 'Peugeot', '5008 Griffe Pack 1.6 Turbo 16V 5p Aut.', '2017', 148870.00),

(93, 'Peugeot','206 Presence 1.4/ 1.4 Flex 8V 5p','2008', 14161.00),
(94, 'Peugeot','206 Presence 1.4/ 1.4 Flex 8V 5p','2007', 13365.00),
(95, 'Peugeot','206 Presence 1.4/ 1.4 Flex 8V 5p','2006', 12696.00),
(96, 'Peugeot','206 Presence 1.4/ 1.4 Flex 8V 5p','2005', 10910.00),

(97, 'Peugeot','206 Presence 1.4/ 1.4 Flex 8V 5p','2008', 14379.00),
(98, 'Peugeot','206 Feline 1.4/ 1.4 Flex 8V 5p','2007', 13630.00),
(99, 'Peugeot','206 Presence 1.4/ 1.4 Flex 8V 5p','2006', 12699.00),
(100, 'Peugeot','206 Presence 1.4/ 1.4 Flex 8V 5p','2005', 11943.00);

