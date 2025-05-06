-- Age minimum requis
Alter table Adhérent
Add constraint CHK_AGE check (Age_Adhérent >= 16);

-- Syntaxe du mail
Alter table Adhérent
ADD CONSTRAINT CHK_MAIL CHECK (
    Mail_Adhérent LIKE '%@icloud.com' OR
    Mail_Adhérent LIKE '%@yahoo.fr' OR
    Mail_Adhérent LIKE '%@outlook.fr' OR
    Mail_Adhérent LIKE '%@gmail.com' OR
    Mail_Adhérent LIKE '%@efrei.net'
);

-- Syntaxe du RIB (27 caractères)
Alter table Avoir
Add constraint CHK_RIB check(LEFT(RIB, 2) = "FR" AND length(RIB) = 27);

-- Vérification du paiement de l'abonnement
Alter table Avoir
Add constraint CHK_FREQUENTE check(Fréquence_Paiement in ("Mensuel","Annuel"));

-- Vérification du choix de l'abonnement
Alter table Abonnement
Add constraint CHEK_ABONNEMENT check (Formule_Abonnement in ("Basic","Premium","Ultimate"));


