-- Création de la base Tifosi, l'utilisateur et les privilèges

CREATE DATABASE IF NOT EXISTS tifosi CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE tifosi;
CREATE USER 'tifosi'@'localhost' IDENTIFIED BY 'TifosiFoccacia'; 
GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi'@'localhost';
FLUSH PRIVILEGES;

-- Tables Primaires

CREATE TABLE ingredient (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE client (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL ,
    email VARCHAR(150) NOT NULL UNIQUE,
    code_postal INT NOT NULL 
)

CREATE TABLE marque (
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE focaccia (
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE,
    prix DECIMAL(5,2) NOT NULL
);

CREATE TABLE menu (
    id_menu INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE,
    prix DECIMAL(5,2) NOT NULL
);

CREATE TABLE boisson (
    id_table INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE
)

-- Table relationnels avec clé étrangère

CREATE TABLE comprend (
    id_focaccia INT NOT NULL,
    id_ingredient INT NOT NULL,
    quantite INT NOT NULL,
    PRIMARY KEY (id_focaccia, id_ingredient),
    CONSTRAINT fk_comprend_focaccia FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    CONSTRAINT fk_comprend_ingredient FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
)

CREATE TABLE est_constitue (
    id_menu INT NOT NULL,
    id_focaccia INT NOT NULL,
    PRIMARY KEY (id_menu, id_focaccia),
    CONSTRAINT fk_est_constitue_menu FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
    CONSTRAINT fk_est_constitue_focaccia FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);

CREATE TABLE achete (
    id_menu INT NOT NULL,
    id_client INT NOT NULL,
    date_achat Date NOT NULL,
    PRIMARY KEY (id_menu, id_client),
    CONSTRAINT fk_achete_menu FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
    CONSTRAINT fk_achete_client FOREIGN KEY (id_client) REFERENCES client(id_client)
)

CREATE TABLE contient (
    id_menu INT NOT NULL,
    id_boisson INT NOT NULL,
    PRIMARY KEY (id_menu, id_boisson),
    CONSTRAINT fk_contient_menu FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
    CONSTRAINT fk_contient_boisson FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
);

CREATE TABLE appartient(
id_boisson INT NOT NULL,
id_marque INT NOT NULL,
PRIMARY KEY (id_boisson, id_marque),
CONSTRAINT fk_appartient_boisson FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson),
CONSTRAINT fk_appartient_marque FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
)


