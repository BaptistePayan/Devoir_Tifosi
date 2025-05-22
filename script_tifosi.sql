CREATE DATABASE IF NOT EXISTS tifosi CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE tifosi;
CREATE USER 'tifosi'@'localhost' IDENTIFIED BY 'TifosiFoccacia'; 
GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi'@'localhost';
FLUSH PRIVILEGES;
