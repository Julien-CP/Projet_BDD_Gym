-- Association des données de la salle de sport
insert into Adresse value (1,"Paris",75000,"Rue Basic Frite",1);
insert into Salle_de_Sport value (1,"Malloc Your Muscle Paris",200,"06:00:00","23:00:00",1);
insert into Sport value (1,"Musculation"),(2,"Cardio"),(3,"Combat"),(4,"Escalade");
insert into Abonnement value ("Basic",19.99),("Premium",29.99),("Ultimate",39.99);
insert into Permettre value 
(1,"Basic"),(2,"Basic"),
(1,"Premium"),(2,"Premium"),(3,"Premium"),
(1,"Ultimate"),(2,"Ultimate"),(3,"Ultimate"),(4,"Ultimate");
insert into Proposer value
(1,"Basic"),(1,"Premium"),(1,"Ultimate");


-- Création du premier adhérent
insert into Adresse value (2,"Vitry",94400,"Rue de la Fraternité",31);
insert into Adhérent value (1,"Chan Peng","Julien",20,"Homme","julien.chanpeng@gmail.com",null,2); 
insert into Avoir value (1,"Ultimate","FR0000000000000000000000001","Mensuel",NULL);

-- Création du second adhérent
insert into Adresse value (3,"Paris",75013,"Rue Damesme",53);
insert into Adhérent value (2,"Assouad","Adrien",20,"Homme","adrien.assouad@efrei.net",null,3); 
insert into Avoir value (2,"Ultimate","FR0000000000000000000000002","Annuel",NULL);

-- Création du système de parrainage avec le 1er et le 2e adhérent
insert into Parrainer value (1,2);
update Adhérent set Réduction = 10 where ID_Adhérent = 1;
update Adhérent set Réduction = 5 where ID_Adhérent = 2;

-- Création du troisième adhérent
insert into Adresse value (4,"Vitry",94400,"Voie Schumann",35);
insert into Adhérent value (3,"Bial","Thibault",20,"Homme","thibault.bial@icloud.com",null,4); 
insert into Avoir value (3,"Basic","FR0000000000000000000000003","Annuel",NULL);

-- Création du système de parrainage avec le 2e et le 3e adhérent
insert into Parrainer value (2,3);
update Adhérent set Réduction = 10 where ID_Adhérent = 2;
update Adhérent set Réduction = 5 where ID_Adhérent = 3;

-- Création du quatrième adhérent
insert into Adhérent value (4,"Chan Peng","Arnaud",22,"Homme","arnaud.chanpeng@outlook.fr",null,2); 
insert into Avoir value (4,"Premium","FR0000000000000000000000004","Mensuel",NULL);

-- Création du cinquième adhérent
insert into Adresse value (5,"Villejuif",94800,"Avenue de la République",32);
insert into Adhérent value (5,"Chabchoub","Kamel",40,"Homme","kamel.chabchoub@efrei.net",null,5); 
insert into Avoir value (5,"Premium","FR0000000000000000000000005","Mensuel",NULL);

-- Création du sixième adhérent
insert into Adresse values (6,"Paris",75013,"Avenue de France", 91);
insert into Adhérent values (6,"Dupont","Cécile",40,"Femme","cecile.dupont@efrei.net",null,6); 
insert into Avoir values (6,"Ultimate","FR0000000000000000000000006","Mensuel",NULL);

-- Création du septième adhérent
insert into Adresse values (7,"Fontenay-sous-Bois",94120,"Rue de Verdun", 12);
insert into Adhérent values (7,"Leroy","Marc",25,"Homme","leroy.marc@gmail.com",null,7); 
insert into Avoir values (7,"Premium","FR0000000000000000000000007","Mensuel",NULL);

-- Création du huitième adhérent
insert into Adresse values (8,"Vincennes",94300,"Avenue Daumesnil", 44);
insert into Adhérent values (8,"Durand","Sophie",30,"Femme","sophie.durand@yahoo.fr",null,8); 
insert into Avoir values (8,"Basic","FR0000000000000000000000008","Annuel",NULL);

-- Création du neuvième adhérent
insert into Adresse values (9,"Ivry-sur-Seine",94200,"Rue Jean Jacques Rousseau", 20);
insert into Adhérent values (9,"Garcia","Pierre",35,"Homme","pierre.garcia@efrei.net",null,9); 
insert into Avoir values (9,"Ultimate","FR0000000000000000000000009","Mensuel",NULL);

-- Création du dixième adhérent
insert into Adresse values (10,"Alfortville",94140,"Rue Victor Hugo", 8);
insert into Adhérent values (10,"Lefevre","Laura",28,"Femme","laura.lefevre@outlook.fr",null,10); 
insert into Avoir values (10,"Premium","FR0000000000000000000000010","Mensuel",NULL);

-- Création du onzième adhérent
insert into Adresse values (11,"Charenton-le-Pont",94220,"Rue du Pont", 15);
insert into Adhérent values (11,"Dupont","Nicolas",32,"Homme","nicolas.dupont@yahoo.fr",null,11); 
insert into Avoir values (11,"Basic","FR0000000000000000000000011","Annuel",NULL);

-- Création du douzième adhérent
insert into Adresse values (12,"Le Kremlin-Bicêtre",94270,"Avenue Eugène Thomas", 5);
insert into Adhérent values (12,"Martin","Claire",27,"Femme","claire.martin@yahoo.fr",null,12); 
insert into Avoir values (12,"Ultimate","FR0000000000000000000000012","Mensuel",NULL);

-- Création du treizième adhérent
insert into Adresse values (13,"Gentilly",94250,"Rue de la Divisions Leclerc", 18);
insert into Adhérent values (13,"Petit","Philippe",29,"Homme","philippe.petit@efrei.net",null,13); 
insert into Avoir values (13,"Premium","FR0000000000000000000000013","Mensuel",NULL);

-- Création du quatorzième adhérent
insert into Adresse values (14,"Maisons-Alfort",94700,"Rue Auguste Blanqui", 21);
insert into Adhérent values (14,"Roux","Marie",31,"Femme","marie.roux@gmail.com",null,14); 
insert into Avoir values (14,"Basic","FR0000000000000000000000014","Annuel",NULL);

-- Création du quinzième adhérent
insert into Adresse values (15,"Saint-Mandé",94160,"Avenue du Général de Gaulle", 9);
insert into Adhérent values (15,"Lecomte","David",33,"Homme","david.lecomte@gmail.com",null,15); 
insert into Avoir values (15,"Ultimate","FR0000000000000000000000015","Mensuel",NULL);

-- Création du seizième adhérent
insert into Adresse values (16,"Nogent-sur-Marne",94130,"Rue de Plaisance", 25);
insert into Adhérent values (16,"Fournier","Isabelle",29,"Femme","isabelle.fournier@yahoo.fr",null,16); 
insert into Avoir values (16,"Premium","FR0000000000000000000000016","Annuel",NULL);

-- Création du dix-septième adhérent
insert into Adresse values (17,"Joinville-le-Pont",94340,"Rue Chapsal", 17);
insert into Adhérent values (17,"Lemoine","Alexandre",26,"Homme","alexandre.lemoine@yahoo.fr",null,17); 
insert into Avoir values (17,"Basic","FR0000000000000000000000017","Mensuel",NULL);

-- Création du dix-huitième adhérent
insert into Adresse values (18,"Arcueil",94110,"Avenue Laplace", 11);
insert into Adhérent values (18,"Girard","Sylvie",34,"Femme","sylvie.girard@outlook.fr",null,18); 
insert into Avoir values (18,"Ultimate","FR0000000000000000000000018","Annuel",NULL);

-- Création du dix-neuvième adhérent
insert into Adresse values (19,"Le Perreux-sur-Marne",94170,"Rue de la Paix", 14);
insert into Adhérent values (19,"Moreau","Thomas",30,"Homme","thomas.moreau@icloud.com",null,19); 
insert into Avoir values (19,"Premium","FR0000000000000000000000019","Mensuel",NULL);

-- Création du vingtième adhérent
insert into Adresse values (20,"Chennevières-sur-Marne",94430,"Avenue de la République", 16);
insert into Adhérent values (20,"Leroux","Caroline",28,"Femme","caroline.leroux@icloud.com",null,20); 
insert into Avoir values (20,"Basic","FR0000000000000000000000020","Annuel",NULL);

-- Création du vingt-et-unième adhérent
insert into Adresse values (21,"Vitry",94400,"Rue Gagnée",3);
insert into Adhérent values (21,"Garcia","Manon",26,"Femme","manon.garcia@icloud.com",null,21); 
insert into Avoir values (21,"Ultimate","FR0000000000000000000000021","Mensuel",NULL);

-- Création du vingt-deuxième adhérent
insert into Adhérent values (22,"Garcia","Thomas",24,"Homme","thomas.garcia@gmail.com",null,21); 
insert into Avoir values (22,"Basic","FR0000000000000000000000022","Annuel",NULL);

-- Création du système de parrainage avec le 1er et le 2e adhérent
insert into Parrainer value (21,22);
update Adhérent set Réduction = 10 where ID_Adhérent = 21;
update Adhérent set Réduction = 5 where ID_Adhérent = 22;

-- Création du vingt-troisième adhérent
insert into Adresse values (23,"Le Kremlin-Bicêtre",94270,"Rue Okabe",10);
insert into Adhérent values (23,"Moreau","Lucie",29,"Femme","lucie.moreau@yahoo.fr",null,23); 
insert into Avoir values (23,"Ultimate","FR0000000000000000000000023","Mensuel",NULL);

-- Création du vingt-quatrième adhérent
insert into Adhérent values (24,"Moreau","Mathieu",31,"Homme","mathieu.moreau@icloud.com",null,23); 
insert into Avoir values (24,"Premium","FR0000000000000000000000024","Mensuel",NULL);

-- Création du système de parrainage avec le 1er et le 2e adhérent
insert into Parrainer value (23,24);
update Adhérent set Réduction = 10 where ID_Adhérent = 23;
update Adhérent set Réduction = 5 where ID_Adhérent = 24;

-- Création du vingt-cinquième adhérent
insert into Adresse values (25,"Charenton-le-Pont",94220,"Rue du Golmon", 11);
insert into Adhérent values (25,"Dupuis","Emma",27,"Femme","emma.dupuis@gmail.com",null,25); 
insert into Avoir values (25,"Ultimate","FR0000000000000000000000025","Annuel",NULL);





-- Vérification des contraintes lors du peuplement
update Adhérent set Age_Adhérent =  12 where ID_Adhérent = 1;

update Adhérent set Mail_Adhérent = "ju.peng@wanadoo.de" where ID_Adhérent = 1;

update Avoir set RIB = "DE0000000000000000000000005" where ID_Adhérent = 1;

update Avoir set RIB = "FR000000000000000005" where ID_Adhérent = 1;

update Avoir set Fréquence_Paiement = "Hebdomadaire" where ID_Adhérent = 1;

update Adhérent set Formule_Abonnement = "Supreme" where ID_Adhérent = 1;



