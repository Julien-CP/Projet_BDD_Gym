-- Recherche des noms et prenoms des adhérents qui ont un un abonnement Ultimate
select Nom_Adhérent, Prénom_Adhérent 
from Adhérent, Avoir where Avoir.ID_Adhérent = Adhérent.ID_Adhérent 
and Avoir.Formule_Abonnement = "Ultimate";

-- Recherche du RIB des adhérents
select Nom_Adhérent, Prénom_Adhérent, RIB 
from Adhérent, Avoir 
where Avoir.ID_Adhérent = Adhérent.ID_Adhérent;


-- Recherche des noms et prenoms des adhérents qui ont étaient parrainés et/ou étaient parrains
select GROUP_CONCAT(distinct Parrain.Nom_Adhérent, ' ', Parrain.Prénom_Adhérent order by Parrain.Nom_Adhérent, Parrain.Prénom_Adhérent separator ', ') as Adhérents_Parrains,
 GROUP_CONCAT(distinct Parrainé.Nom_Adhérent, ' ', Parrainé.Prénom_Adhérent order by Parrainé.Nom_Adhérent, Parrainé.Prénom_Adhérent separator ', ') as Adhérents_Parrainés
from Adhérent as Parrain
join Parrainer on Parrain.ID_Adhérent = Parrainer.ID_Adhérent
join Adhérent as Parrainé on Parrainer.ID_Adhérent_1 = Parrainé.ID_Adhérent
group by Parrain.Nom_Adhérent, Parrain.Prénom_Adhérent;

-- Recherche d'une personne non adhérente
select * 
from Adhérent 
where Prénom_Adhérent = "Bob" 
and Nom_Adhérent = "Razozcki";

-- Selection des adhérents par odre décroissant en fonction de l'âge
select Nom_Adhérent, Prénom_Adhérent, Age_Adhérent 
from Adhérent 
order by Age_Adhérent 
desc;


-- Affichage des abonnements avec les sports inclus et les prix
select Abonnement.Formule_Abonnement, Prix_Formule, GROUP_CONCAT(Nom_Sport order by Nom_Sport separator ', ') 
as Sports_Disponibles
from Abonnement, Permettre, Sport 
where Abonnement.Formule_Abonnement = Permettre.Formule_Abonnement 
and Permettre.ID_Sport = Sport.ID_Sport
group by Abonnement.Formule_Abonnement, Prix_Formule;

-- Informations de la salle 
select Nom_Salle, Capacité, Horaire_Ouverture, Horaire_Fermeture, Numéro_Rue, Nom_Rue, Ville, Code_Postal 
from Salle_de_sport, Adresse 
where Salle_de_sport.ID_Adresse = Adresse.ID_Adresse;

-- Recherche des adhérents habitant à Vitry
select Nom_Adhérent, Prénom_Adhérent, Age_Adhérent, Sexe_Adhérent, Mail_Adhérent, Numéro_Rue, Nom_Rue, Ville, Code_Postal 
from Adhérent, Adresse 
where Adhérent.ID_Adresse = Adresse.ID_Adresse 
and Adresse.Ville = "Vitry";


-- Compter le nombre d'adhérent pour chaque abonnement
SELECT Formule_Abonnement, COUNT(*) AS Nombre_Adhérents
FROM Avoir
GROUP BY Formule_Abonnement;

-- Nombre total d'adhérents dans chaque ville
SELECT Adresse.Ville, COUNT(Adhérent.ID_Adhérent) AS Nombre_Adhérents
FROM Adhérent
JOIN Adresse ON Adhérent.ID_Adresse = Adresse.ID_Adresse
GROUP BY Adresse.Ville;

-- Affiche le nombre d'adhérent par domaine de mail
SELECT SUBSTRING_INDEX(Mail_Adhérent, '@', -1) AS Domaine, COUNT(*) AS Nombre_de_Personnes
FROM Adhérent
GROUP BY Domaine;

SELECT Nom_Adhérent, Prénom_Adhérent, Age_Adhérent, (SELECT AVG(Age_Adhérent)
    FROM Adhérent) as Moyenne_Age
FROM Adhérent
WHERE Age_Adhérent > (
    SELECT AVG(Age_Adhérent)
    FROM Adhérent);