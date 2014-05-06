CREATE DATABASE arpegeResto;
USE arpegeResto;

CREATE TABLE Site (
ID_Site VARCHAR(5) NOT NULL,
Libelle_Site VARCHAR (20),
Nb_Stand INT(2),
PRIMARY KEY (ID_Site));

INSERT INTO Site (ID_Site, Libelle_Site, Nb_Stand) VALUES ("PAR05", "Levallois", 4);

CREATE TABLE Utilisateur (
ID_Utilisateur VARCHAR(7),
Nom VARCHAR(20),
Prenom VARCHAR(15),
NumBadge INT(4),
MotDePasse VARCHAR(30),
PRIMARY KEY (ID_Utilisateur));

INSERT INTO Utilisateur (ID_Utilisateur, Nom, Prenom, NumBadge, MotDePasse) VALUES ("I078580", "Vacquerel", "Bruno", 4665, "azerty");
INSERT INTO Utilisateur (ID_Utilisateur, Nom, Prenom, NumBadge, MotDePasse) VALUES ("I300187", "Dupont", "Jean", 3689, "azerty");
INSERT INTO Utilisateur (ID_Utilisateur, Nom, Prenom, NumBadge, MotDePasse) VALUES ("I002687", "Mate", "Eric", 2662, "azerty");

/*  Non utile dans la configuration actuelle
CREATE TABLE Admin (
ID_Admin INT(2) NOT NULL AUTO_INCREMENT,
ID_Utilisateur VARCHAR(7),
PRIMARY KEY (ID_Admin),
FOREIGN KEY (ID_Utilisateur) references Utilisateur(ID_Utilisateur));

CREATE TABLE User(
ID_User INT(2) NOT NULL AUTO_INCREMENT,
ID_Utilisateur VARCHAR(7),
PRIMARY KEY (ID_User),
FOREIGN KEY (ID_Utilisateur) references Utilisateur(ID_Utilisateur));

CREATE TABLE Responsable_Site (
ID_Responsable_Site INT(2) NOT NULL AUTO_INCREMENT,
ID_Utilisateur VARCHAR(7),
PRIMARY KEY (ID_Responsable_Site),
FOREIGN KEY (ID_Utilisateur) references Utilisateur(ID_Utilisateur));*/


CREATE TABLE Stand (
ID_Stand INT(2) NOT NULL AUTO_INCREMENT,
ID_Site VARCHAR(5) NOT NULL,
Libelle_Stand VARCHAR(20),
PRIMARY KEY (ID_Stand),
FOREIGN KEY (ID_Site) references Site(ID_Site));

INSERT INTO Stand (ID_Stand, ID_Site, Libelle_Stand) VALUES ("PAR05", "Rouge");
INSERT INTO Stand (ID_Stand, ID_Site, Libelle_Stand) VALUES ("PAR05", "Bleu");
INSERT INTO Stand (ID_Stand, ID_Site, Libelle_Stand) VALUES ("PAR05", "Prune");
INSERT INTO Stand (ID_Stand, ID_Site, Libelle_Stand) VALUES ("PAR05", "Vert");

CREATE TABLE Cafeteria(
ID_Cafeteria INT(2) NOT NULL AUTO_INCREMENT,
ID_Site VARCHAR(5) NOT NULL,
Libelle_Cafeteria VARCHAR(20),
PRIMARY KEY (ID_Cafeteria),
FOREIGN KEY (ID_Site) references Site(ID_Site));

CREATE TABLE Plat (
ID_Plat INT(3) NOT NULL AUTO_INCREMENT,
Libelle_Plat VARCHAR(30),
Prix_Plat FLOAT (4),
ID_Stand  INT(2) NOT NULL,
Clics_Plat int (4),
PRIMARY KEY (ID_Plat));

INSERT INTO Plat (Libelle_Plat, Prix_Plat, ID_Stand, Clics_Plat) VALUES ("Hamburger", 3.95, 1, 0);
INSERT INTO Plat (Libelle_Plat, Prix_Plat, ID_Stand, Clics_Plat) VALUES ("Cuisse de Poulet Braisé", 4.35, 1, 0);
INSERT INTO Plat (Libelle_Plat, Prix_Plat, ID_Stand, Clics_Plat) VALUES ("Escalope de Veau", 4.85, 1, 0);
INSERT INTO Plat (Libelle_Plat, Prix_Plat, ID_Stand, Clics_Plat) VALUES ("Steack Haché", 2.38, 2, 0);
INSERT INTO Plat (Libelle_Plat, Prix_Plat, ID_Stand, Clics_Plat) VALUES ("Brochette de Boeuf", 4.60, 2, 0);
INSERT INTO Plat (Libelle_Plat, Prix_Plat, ID_Stand, Clics_Plat) VALUES ("Légumes Gratinés", 1.85, 2, 0);
INSERT INTO Plat (Libelle_Plat, Prix_Plat, ID_Stand, Clics_Plat) VALUES ("Raviolis 3 Fromages", 3.25, 0, 3, 0);
INSERT INTO Plat (Libelle_Plat, Prix_Plat, ID_Stand, Clics_Plat) VALUES ("Pizza Bolognaise", 3, 3, 0);
INSERT INTO Plat (Libelle_Plat, Prix_Plat, ID_Stand, Clics_Plat) VALUES ("Lasagne", 3.20, 3, 0);
INSERT INTO Plat (Libelle_Plat, Prix_Plat, ID_Stand, Clics_Plat) VALUES ("Filet de Saumon", 4.10, 4, 0);
INSERT INTO Plat (Libelle_Plat, Prix_Plat, ID_Stand, Clics_Plat) VALUES ("Filet de Lieu", 3.75, 4, 0);
INSERT INTO Plat (Libelle_Plat, Prix_Plat, ID_Stand, Clics_Plat) VALUES ("Roti de Porc", 3.60, 4, 0);



CREATE TABLE Accompagnement (
ID_Accompagnement INT NOT NULL AUTO_INCREMENT,
Libelle_Accompagnement VARCHAR(30),
Prix_Accompagnement FLOAT(4),
Type_Accompagnement INT(1),
PRIMARY KEY (ID_Accompagnement));

INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( 'Toast Saumon', '2.30', 1);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( 'Salade Saison', '1.10', 1);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Assiette Charcuterie", 1.80, 1);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Wrap", 1.95, 1);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Emmental", 1.10, 2);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Saint-Nectaire", 1.10, 2);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Bleu d'Auvergne", 1.10, 2);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Reblochon", 1.10, 2);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Tartre Citron Meringué", 2, 3);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Salade de Fruit", 1.80, 3);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Fromage blanc, coulis fruits rouge", 1, 3); 
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Danone Activia", 0.80, 3);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Coca-Cola", 0.90, 4);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Vittel", 0.80, 4);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "San-Pellegrino", 0.80, 4);
INSERT INTO Accompagnement (Libelle_Accompagnement, Prix_Accompagnement, Type_Accompagnement)  VALUES ( "Amstel", 2, 4);



/* Non utile dans la situation actuelle
CREATE TABLE MenuStand (
ID_Menu_Stand INT(10) NOT NULL AUTO_INCREMENT,
ID_Stand INT(2),
ID_Plat INT(3),
ID_Accompagnement INT(3),
Libelle_Menu_Stand VARCHAR (250),
Prix_Plat FLOAT (4),
Prix_Accompagnement FLOAT (4),
Prix_Total FLOAT (5),
PRIMARY KEY (ID_Menu_Stand),
FOREIGN KEY (ID_Stand) references Stand(ID_Stand),
FOREIGN KEY (ID_Plat) references Plat(ID_Plat),
FOREIGN KEY (ID_Accompagnement) references Accompagnement(ID_Accompagnement)); */

CREATE TABLE IF NOT EXISTS `Menu_Cafeteria` (
`ID_Menu` int(11) NOT NULL AUTO_INCREMENT,
`Code_Menu` varchar(60) NOT NULL,
`Libelle_Menu` varchar(60) NOT NULL,
`Description_Menu` tinytext NOT NULL,
`Prix_Menu` float(5) NOT NULL,
PRIMARY KEY (`ID_Menu`),
UNIQUE KEY `Code_Menu` (`Code_Menu`)
) AUTO_INCREMENT=1 ;

INSERT INTO Menu_Cafeteria (Code_Menu, Libelle_Menu, Description_Menu, Prix_Menu) VALUES ( "CF001", "Sandwich Poulet Crudité", "Baguette tradition avec du poulet braisé et des tomates fraiche", 2.50);
INSERT INTO Menu_Cafeteria (Code_Menu, Libelle_Menu, Description_Menu, Prix_Menu) VALUES ( "CF002", "Sandwich Jambon Fromage", "Baguette tradition avec du jambon et du fromage AOC", 1.80);
INSERT INTO Menu_Cafeteria (Code_Menu, Libelle_Menu, Description_Menu, Prix_Menu) VALUES ( "CF003", "Pain Bagnat Thon Oeuf Crudité", "Pain moelleux avec du thon des oeufs et de la salade, thomate et maïs frais", 2.80);
INSERT INTO Menu_Cafeteria (Code_Menu, Libelle_Menu, Description_Menu, Prix_Menu) VALUES ( "CF004", "Pain Bagnat Poulet Cheddar Oignon", "Pain moelleux avec du poulet braisé cheddar fondu et des oignons grilés", 3.00);
INSERT INTO Menu_Cafeteria (Code_Menu, Libelle_Menu, Description_Menu, Prix_Menu) VALUES ( "CF005", "Salade Pâtes Roquette Bacon Parmesan", "Salade de de pâtes avec de la salade roquette du bacon grillé et du parmesan", 2.90);
INSERT INTO Menu_Cafeteria (Code_Menu, Libelle_Menu, Description_Menu, Prix_Menu) VALUES ( "CF006", "Wrap Poulet Curry", "Galette de blé avec du poulet mariné au curry", 2.00);
INSERT INTO Menu_Cafeteria (Code_Menu, Libelle_Menu, Description_Menu, Prix_Menu) VALUES ( "CF007", "Wrap Chorizo grillé Crudité", "Galette de blé avec du chorizo grillé et un accompagnement de plusieurs cruditées",  2.50);

/* A refléchir
CREATE TABLE Commande (
ID_Commande INT(4) NOT NULL AUTO_INCREMENT,
//Code_Menu INT(4) NOT NULL,
Libelle_Commande VARCHAR(150),
//Nb_Article INT(3),
Formule boolean,
Prix_Total FLOAT(5),
PRIMARY KEY (ID_Commande),
FOREIGN KEY (ID_Menu) references Menu_Cafeteria(ID_Menu)); */

CREATE TABLE Details (
ID_Commande INT(4) NOT NULL AUTO_INCREMENT,
Code_Menu INT(4) NOT NULL,


CREATE TABLE LivreOr (
ID_Commentaire INT(4) NOT NULL AUTO_INCREMENT,
Pseudo VARCHAR(20),
Commentaire VARCHAR(300),
PRIMARY KEY (ID_Commentaire));


CREATE TABLE commandes (
	`ID_Commande` INT(5) NOT NULL AUTO_INCREMENT,
	`Code_Menu` varchar(60) NOT NULL,
	`Libelle_Menu` varchar(60) NOT NULL,
	`Prix_Menu` float(5) NOT NULL,
	PRIMARY KEY(ID_Commande));

