# Malloc Your Muscle - Base de Données pour Salle de Sport

Projet réalisé dans le cadre du cours *Introduction aux bases de données* — L2 Informatique à EFREI Paris

## Présentation

Le projet vise à concevoir et implémenter une base de données pour une salle de sport fictive nommée **Malloc Your Muscle**. L’objectif est de faciliter la gestion des adhérents, abonnements, sports proposés et emplacements des salles.

Inspiré des grandes chaînes comme *Fitness Park* et *Basic Fit*, ce projet couvre toute la chaîne de conception, du modèle conceptuel à l’implémentation de la base de données sur MySQL.

## Membres du projet

- Julien CHAN PENG
- Adrien ASSOUAD

## Contenu du projet

- `Malloc_your_muscle_JeuxDonnées.sql` – Données d'exemple (25 adhérents)
- `Malloc_your_muscle_ContraintesValidation.sql` – Contraintes d'intégrité et de validation
- `Malloc_your_muscle_exploration.sql` – Requêtes SQL d'exploration
- `projetlooping.loo` – Modèle conceptuel de données (MCD) sur Looping
- `Projet_BDD_Gym_Rapport.pdf` – Rapport complet (modèles, choix, résultats)

## Modélisation

### Modèle conceptuel (E/A)
- Entités : Adhérent, Adresse, Salle, Abonnement, Sport
- Associations : Avoir, Permettre, Proposer, Parrainer

### Modèle logique (MLD)
- Normalisation appliquée
- Attributs avec types, clés primaires et étrangères
- Contraintes métier intégrées (âge minimum, format RIB, email, etc.)

## Contraintes implémentées

- Âge minimum de 16 ans pour s’inscrire
- RIB de 27 caractères, commençant par `FR`
- Paiement mensuel ou annuel uniquement
- Abonnements valides : `Basic`, `Premium`, `Ultimate`
- Email formaté correctement
- Réduction appliquée uniquement en cas de parrainage

## Requêtes SQL

Plusieurs requêtes ont été créées pour :
- Afficher les RIB des adhérents
- Tester la robustesse en cas d'entrée incorrecte
- Calculer des statistiques (ex : moyenne des âges)
- Vérifier les relations d’abonnement, parrainage, etc.

## Améliorations futures

- Gestion multi-salles dans différentes villes
- Ajout de coachs assignés à des adhérents
- Intégration de nouvelles options d’abonnement
- Interface utilisateur (web ou app) pour consultation

## Enseignements

Ce projet m'a permis de :
- Appliquer la théorie sur les modèles conceptuels/logiques
- Comprendre les contraintes d'intégrité en SQL
- S’exercer à l’optimisation et à l’écriture de requêtes
- Se familiariser avec MySQL Workbench

