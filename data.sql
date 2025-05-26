-- Importation des données dans mes tables

LOAD DATA INFILE '/Applications/XAMPP/xamppfiles/temp/focaccia.csv'
INTO TABLE focaccia
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_focaccia, nom_focaccia, prix, ingrédients);

LOAD DATA INFILE '/Applications/XAMPP/xamppfiles/temp/ingredient.csv'
INTO TABLE ingredient
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_ingredient, nom_ingredient);

LOAD DATA INFILE '/Applications/XAMPP/xamppfiles/temp/boisson.csv'
INTO TABLE boisson
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_boisson, nom_boisson, marque);

LOAD DATA INFILE '/Applications/XAMPP/xamppfiles/temp/marque.csv'
INTO TABLE marque
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_marque, nom_marque);

-- Ajout manuel des données quantité dans la table ingrédient

UPDATE ingredient
SET quantite = 2
WHERE id_ingredient = 1;

UPDATE ingredient
SET quantite = 40
WHERE id_ingredient = 2;

UPDATE ingredient
SET quantite = 20
WHERE id_ingredient = 3;

UPDATE ingredient
SET quantite = 80
WHERE id_ingredient = 4;

UPDATE ingredient
SET quantite = 200
WHERE id_ingredient = 5;

UPDATE ingredient
SET quantite = 200
WHERE id_ingredient = 6;

UPDATE ingredient
SET quantite = 40
WHERE id_ingredient = 7;

UPDATE ingredient
SET quantite = 50
WHERE id_ingredient = 8;

UPDATE ingredient
SET quantite = 20
WHERE id_ingredient = 9;

UPDATE ingredient
SET quantite = 50
WHERE id_ingredient = 10;

UPDATE ingredient
SET quantite = 50
WHERE id_ingredient = 11;

UPDATE ingredient
SET quantite = 80
WHERE id_ingredient = 12;

UPDATE ingredient
SET quantite = 80
WHERE id_ingredient = 13;

UPDATE ingredient
SET quantite = 50
WHERE id_ingredient = 14;

UPDATE ingredient
SET quantite = 20
WHERE id_ingredient = 15;

UPDATE ingredient
SET quantite = 20
WHERE id_ingredient = 16;

UPDATE ingredient
SET quantite = 20
WHERE id_ingredient = 17;

UPDATE ingredient
SET quantite = 50
WHERE id_ingredient = 18;

UPDATE ingredient
SET quantite = 2
WHERE id_ingredient = 19;

UPDATE ingredient
SET quantite = 1
WHERE id_ingredient = 20;

UPDATE ingredient
SET quantite = 80
WHERE id_ingredient = 21;

UPDATE ingredient
SET quantite = 50
WHERE id_ingredient = 22;

UPDATE ingredient
SET quantite = 80
WHERE id_ingredient = 23;

UPDATE ingredient
SET quantite = 40
WHERE id_ingredient = 24;

UPDATE ingredient
SET quantite = 50
WHERE id_ingredient = 25;

