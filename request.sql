-- requête test de logique

-- Focaccias par ordre alphabétique croissant
SELECT nom_focaccia FROM focaccia ORDER BY nom_focaccia ASC;

-- Nombre total d'ingrédients
SELECT COUNT(*) FROM ingredient;

-- Prix moyens des Focaccia
SELECT AVG(prix) FROM focaccia;

-- Liste des boissons avec leur marque, triée par nom de boisson
SELECT boisson.nom_boisson, marque.nom_marque
FROM boisson
JOIN marque ON boisson.marque = marque.nom_marque
ORDER BY boisson.nom_boisson ASC;

-- Liste des ingrédients pour la raclaccia
SELECT ingrédients
FROM focaccia
WHERE nom_focaccia = 'Raclaccia'

-- Nom et le nb d'ingrédients pour chaque focaccia
SELECT nom_focaccia, LENGTH(ingrédients) - LENGTH(REPLACE(ingrédients, ',', ''))
+ 1 AS nb_ingrédients
FROM focaccia;

-- Focaccia avec le plus d'ingrédients
SELECT nom_focaccia
FROM focaccia
ORDER BY LENGTH(`ingrédients`) - LENGTH(REPLACE(`ingrédients`, ',', '')
+ 1) DESC
LIMIT 1;

-- Focaccia qui contient de l'Ail
SELECT nom_focaccia
FROM focaccia
WHERE ingrédients LIKE '%ail%';

-- Ingrédients inutilisé
SELECT nom_ingredient
FROM ingredient
WHERE NOT EXISTS (
SELECT 1
FROM focaccia
Where focaccia.ingrédients LIKE CONCAT ('%',
ingredient.nom_ingredient, '%')
);

-- Focaccia sans Champignon
SELECT nom_focaccia
FROM focaccia
WHERE ingrédients NOT LIKE '%champignon%';


