mysql -u root -h localhost -p

CREATE DATABASE nentendo; 

CREATE TABLE Pokemons( 
    PokeID INT NOT NULL PRIMARY KEY, 
    Nome VARCHAR(50) NOT NULL, 
    Altura DECIMAL(4,2) NOT NULL, 
    Peso DECIMAL(4,2) NOT NULL, 
    Categoria VARCHAR(20) NOT NULL, 
    Tipo VARCHAR (30) NOT NULL, 
    Fraquezas VARCHAR (30) NOT NULL 
); 


#Alteração de Colunas na Tabela
ALTER TABLE Pokemons 
ADD COLUMN Genero CHAR AFTER Peso, 
ADD COLUMN Habilidades VARCHAR(30) AFTER Categoria; 

ALTER TABLE Pokemons 
MODIFY COLUMN Fraquezas VARCHAR(50) NOT NULL; 


#Inserção de Dados
INSERT INTO `pokemons` VALUES 
(4, "Charmander", 0.6, 8.5, "M", "Lizard", "Blaze", "Fire", "Water, Ground, Rock"), 
(807, "Zeraora", 1.5, 44.5, "U", "Thunderclap", "Volt Absorb", "Electric", "Ground"), 
(25, "Pikachu", 0.4, 6.0, "F", "Mouse", "Static", "Electric", "Ground"), 
(26, "Raichu", 0.8, 30, "M", "Mouse", "Static", "Electric", "Ground"), 
(815, "Cinderace", 1.4, 33, "F", "Striker", "Blaze", "Fire", "Water, Ground, Rock"), 
(282, "Gardevoir", 1.6, 48.4, "F", "Embrace", "Synchronize, Trace", "Psychic, Fairy", "Ghost, Steel, Poison"), 
(448, "Lucario", 1.2, 54, "M", "Aura", "Inner Focus, Steadfast", "Fighting, Steel", "Fire, Fightning, Ground"), 
(150, "Mewtwo", 2, 122, "U", "Genetic", "Pressure", "Psychic", "Ghost, Dark, Bug"), 
(132, "Ditto", 0.3, 4.0, "U", "Transform", "Limber", "Normal", "Fightning"), 
(493, "Arceus", 3.2, 320, "U", "Alpha", "Multitype", "Normal", "Fightning"), 
(384, "Rayquaza", 7.0, 206.5, "U", "Sky High", "Air Lock", "Dragon, Flying", "Fairy, Dragon, Ice, Rock"), 
(382, "Kyogre", 4.5, 352, "U", "Sea Basin", "Drizzle", "Water", "Grass, Electric"), 
(716, "Xerneas", 3, 215, "M", "Life", "Fairy Aura", "Fairy", "Steel, Poison"), 
(80, "Slowbro", 1.6, 78.5, "F", "Hermit Crab", "Oblivious, Own Tempo", "Water, Psychic", "Ghost, Dark, Grass, Electric, Bug"), 
(197, "Umbreon", 1, 27, "M", "Moonlight", "Synchronize", "Dark", "Fairy, Bug, Fightning"), 
(63, "Abra", 0.9, 19.5, "F", "Psi", "Inner Focus, Synchronize", "Psychic", "Ghost, Dark, Bug"), 
(39, "Jigglypuff", 0.5, 5.5, "M", "Balloon", "Cute Charm, Competitive", "Normal, Fairy", "Steel, Poison"); 
(178, "Xatu", 1.5, 15, "M", "Mystic", "Synchronize, Early Bird", "Psychic, Flying", "Ghost, Dark, Eletric, Ice, Rock"), 
(133, "Eevee", 0.3, 6.5, "F", "Evolution", "Run Away, Adaptability", "Normal", "Fighting"), 
(1, "Bulbasaur", 0.7, 6.9, "M", "Seed", "Overgrow", "Grass, Poison", "Fire, Psychic, Flying, Ice"), 
(7, "Squirtle", 0.5, 9, "M", "Tiny Turtle","Torrent", "Water", "Grass, Eletric"), 
(570, "Zorua", 0.7, 12.5, "F", "Tricky Fox", "Illusion", "Dark", "Fairy, Bug, Fighting"), 
(226, "Mantine", 2.1, 220, "M", "Kite", "Water Absorve, Swift Swim", "Water, Flying", "Eletric, Rock"), 
(707, "Klefki", 0.2, 3, "F", "Key Ring", "Prankster", "Steel, Fairy", "Fire, Ground"), 
(877, "Morpeko", 0.3, 3, "M", "Two-Sided", "Hunger Switch", "Eletric, Dark", "Fairy, Bug, Fighting, Ground"), 
(183, "Marill", 0.4, 8.5, "F", "Aqua Mouse", "Thick Fat, Huge Power","Water, Fairy", "Grass, Eletric, Poison"), 
(58, "Meowth", 0.4, 4.2, "M", "Scratch Cat", "Pickup, Technician", "Normal", "Fighting"), 
(728, "Popplio", 0.4, 7.5, "F", "Sea Lion", "Torrent", "Water", "Grass, Eletric"), 
(380, "Latias", 1.4, 40, "F", "Eon", "Levitate", "Dragon, Psychic", "Ghost, Ice, Dragon, Dark, Fairy, Bub"), 
(37, "Vulpix", 0.6, 9.9, "M", "Fox", "Flash Fire", "Fire", "Water, Ground, Rock"); 


#Comandos de Exibição
SELECT * FROM pokemons ORDER BY Tipo DESC; 
SELECT PokeID, Nome FROM Pokemons ORDER BY Peso; 
