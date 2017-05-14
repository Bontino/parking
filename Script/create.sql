CREATE TABLE MEMBRE
(id_membre int(5) NOT NULL AUTO_INCREMENT,
nom varchar(25),
prenom varchar(25),
constraint pk_membre primary key(id_membre));

CREATE TABLE UTILISATEUR
(id_uti int(5) NOT NULL AUTO_INCREMENT,
identifiant varchar(25) NOT NULL,
mdp int(10) NOT NULL,
nom varchar(25),
prenom varchar(25),
adresse varchar(25),
cp int(5),
tel int(10),
mail varchar(50),
statut int(1),
motcle varchar(20),
constraint pk_uti primary key(id_uti));

CREATE TABLE ATTENTE
(num_attente int(3) NOT NULL AUTO_INCREMENT,
id_uti int(5) NOT NULL,
dateDebut date NOT NULL,
dateFin date NOT NULL,
statut int(2),
num_place int(2),
constraint pk_attente primary key(num_attente));

CREATE TABLE PLACE
(num_place int(2),
statut int(1),
constraint pk_place primary key(num_place));

CREATE TABLE LISTE_ATTENTE
(id_listattente int(3),
num_attente int(3),
constraint pk_listattente primary key(id_listattente));