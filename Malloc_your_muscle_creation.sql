-- Création de la table Sport
CREATE TABLE Sport(
   ID_Sport INT,
   Nom_Sport VARCHAR(50) NOT NULL,
   PRIMARY KEY(ID_Sport)
);

-- Création de la table Abonnement
CREATE TABLE Abonnement(
   Formule_Abonnement VARCHAR(50),
   Prix_Formule DOUBLE NOT NULL,
   PRIMARY KEY(Formule_Abonnement)
);


-- Création de la table Adresse
CREATE TABLE Adresse(
   ID_Adresse INT,
   Ville VARCHAR(50) NOT NULL,
   Code_Postal INT NOT NULL,
   Nom_Rue VARCHAR(50) NOT NULL,
   Numéro_Rue INT NOT NULL,
   PRIMARY KEY(ID_Adresse)
);

-- Création de la table Salle_de_sport
CREATE TABLE Salle_de_sport(
   ID_Salle INT,
   Nom_Salle VARCHAR(50) NOT NULL,
   Capacité INT NOT NULL,
   Horaire_Ouverture TIME NOT NULL,
   Horaire_Fermeture TIME NOT NULL,
   ID_Adresse INT NOT NULL,
   PRIMARY KEY(ID_Salle),
   UNIQUE(ID_Adresse),
   FOREIGN KEY(ID_Adresse) REFERENCES Adresse(ID_Adresse)
);

-- Création de la table Adhérent
CREATE TABLE Adhérent(
   ID_Adhérent INT,
   Nom_Adhérent VARCHAR(50) NOT NULL,
   Prénom_Adhérent VARCHAR(50) NOT NULL,
   Age_Adhérent INT NOT NULL,
   Sexe_Adhérent VARCHAR(50) NOT NULL,
   Mail_Adhérent VARCHAR(50) NOT NULL,
   Réduction INT,
   ID_Adresse INT NOT NULL,
   PRIMARY KEY(ID_Adhérent),
   FOREIGN KEY(ID_Adresse) REFERENCES Adresse(ID_Adresse)
);

-- Création de la table Permettre
CREATE TABLE Permettre(
   ID_Sport INT,
   Formule_Abonnement VARCHAR(50),
   PRIMARY KEY(ID_Sport, Formule_Abonnement),
   FOREIGN KEY(ID_Sport) REFERENCES Sport(ID_Sport),
   FOREIGN KEY(Formule_Abonnement) REFERENCES Abonnement(Formule_Abonnement)
);

-- Création de la table Proposer
CREATE TABLE Proposer(
   ID_Salle INT,
   Formule_Abonnement VARCHAR(50),
   PRIMARY KEY(ID_Salle, Formule_Abonnement),
   FOREIGN KEY(ID_Salle) REFERENCES Salle_de_sport(ID_Salle),
   FOREIGN KEY(Formule_Abonnement) REFERENCES Abonnement(Formule_Abonnement)
);

-- Création de la table Parrainer
CREATE TABLE Parrainer(
   ID_Adhérent INT,
   ID_Adhérent_1 INT,
   PRIMARY KEY(ID_Adhérent, ID_Adhérent_1),
   FOREIGN KEY(ID_Adhérent) REFERENCES Adhérent(ID_Adhérent),
   FOREIGN KEY(ID_Adhérent_1) REFERENCES Adhérent(ID_Adhérent)
);

-- Création de la table Avoir
CREATE TABLE Avoir(
   ID_Adhérent INT,
   Formule_Abonnement VARCHAR(50),
   RIB VARCHAR(50) NOT NULL,
   Fréquence_Paiement VARCHAR(50) NOT NULL,
   Code_Réduction INT,
   PRIMARY KEY(ID_Adhérent, Formule_Abonnement),
   FOREIGN KEY(ID_Adhérent) REFERENCES Adhérent(ID_Adhérent),
   FOREIGN KEY(Formule_Abonnement) REFERENCES Abonnement(Formule_Abonnement)
);

