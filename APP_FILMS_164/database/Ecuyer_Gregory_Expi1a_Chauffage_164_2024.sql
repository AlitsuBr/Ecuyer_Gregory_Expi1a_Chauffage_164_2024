-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour ecuyer_gregory_expi1a_chauffage_164_2024
DROP DATABASE IF EXISTS `ecuyer_gregory_expi1a_chauffage_164_2024`;
CREATE DATABASE IF NOT EXISTS `ecuyer_gregory_expi1a_chauffage_164_2024` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecuyer_gregory_expi1a_chauffage_164_2024`;

-- Listage de la structure de table ecuyer_gregory_expi1a_chauffage_164_2024. t_client
DROP TABLE IF EXISTS `t_client`;
CREATE TABLE IF NOT EXISTS `t_client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecuyer_gregory_expi1a_chauffage_164_2024.t_client : ~15 rows (environ)
INSERT INTO `t_client` (`id_client`, `nom`, `prenom`, `adresse`, `telephone`, `email`) VALUES
	(1, 'Ecuyer', 'Gregory', 'Rue des Liserons, 3', '0792534321', 'gregorycarvalho3@gmail.com'),
	(2, 'Valente', 'Catarina', 'General Guison', '', NULL),
	(3, 'Rama', 'Adrian', NULL, NULL, NULL),
	(4, 'Dubois', 'Marie', 'Avenue des Champs', '0781234567', 'marie.dubois@example.com'),
	(5, 'Garcia', 'Pablo', 'Calle de la Rosa, 12', '', 'pablo.garcia@example.com'),
	(6, 'Müller', 'Sophie', 'Via Roma 1', '0765432198', 'sophie.mueller@example.com'),
	(7, 'Rossi', 'Giuseppe', 'Via Roma, 10', '', 'giuseppe.rossi@example.com'),
	(8, 'Petrov', 'Ivan', 'Via Roma, 15', '0998765432', 'ivan.petrov@example.com'),
	(9, 'Smith', 'John', '123 Main Street', '0712345678', 'john.smith@example.com'),
	(10, 'Chen', 'Wei', '456 Zhongshan Road', '', 'wei.chen@example.com'),
	(11, 'Kumar', 'Priya', '789 Gandhi Marg', '0801234567', 'priya.kumar@example.com'),
	(12, 'Johnson', 'Emily', '456 Elm Street', '', 'emily.johnson@example.com'),
	(13, 'Kim', 'Min-Joon', '123 Gangnam-gu Street', '0709876543', 'minjoon.kim@example.com'),
	(14, 'Hernandez', 'Maria', '789 Avenida de Mayo', '', 'maria.hernandez@example.com'),
	(15, 'Yamamoto', 'Takeshi', '123 Ginza', '0812345678', 'takeshi.yamamoto@example.com');

-- Listage de la structure de table ecuyer_gregory_expi1a_chauffage_164_2024. t_client_avoir_t_facturation
DROP TABLE IF EXISTS `t_client_avoir_t_facturation`;
CREATE TABLE IF NOT EXISTS `t_client_avoir_t_facturation` (
  `fk_client` int NOT NULL,
  `fk_facturation` int NOT NULL,
  KEY `t_client_avoir_t_facturation` (`fk_client`),
  KEY `t_facturation_avoir_t_client` (`fk_facturation`),
  CONSTRAINT `t_client_avoir_t_facturation` FOREIGN KEY (`fk_client`) REFERENCES `t_client` (`id_client`),
  CONSTRAINT `t_facturation_avoir_t_client` FOREIGN KEY (`fk_facturation`) REFERENCES `t_facturation` (`id_facture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table ecuyer_gregory_expi1a_chauffage_164_2024.t_client_avoir_t_facturation : ~17 rows (environ)
INSERT INTO `t_client_avoir_t_facturation` (`fk_client`, `fk_facturation`) VALUES
	(2, 2),
	(1, 1),
	(2, 3),
	(2, 4),
	(3, 5),
	(4, 6),
	(5, 7),
	(6, 8),
	(7, 9),
	(8, 10),
	(9, 11),
	(10, 12),
	(11, 13),
	(12, 14),
	(13, 15),
	(14, 16),
	(15, 17);

-- Listage de la structure de table ecuyer_gregory_expi1a_chauffage_164_2024. t_client_avoir_t_installation
DROP TABLE IF EXISTS `t_client_avoir_t_installation`;
CREATE TABLE IF NOT EXISTS `t_client_avoir_t_installation` (
  `fk_client` int NOT NULL,
  `fk_installation` int NOT NULL,
  KEY `t_client_avoir_t_installation` (`fk_client`),
  KEY `t_installation_avoir_t_client` (`fk_installation`),
  CONSTRAINT `t_client_avoir_t_installation` FOREIGN KEY (`fk_client`) REFERENCES `t_client` (`id_client`),
  CONSTRAINT `t_installation_avoir_t_client` FOREIGN KEY (`fk_installation`) REFERENCES `t_installation` (`id_installation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table ecuyer_gregory_expi1a_chauffage_164_2024.t_client_avoir_t_installation : ~18 rows (environ)
INSERT INTO `t_client_avoir_t_installation` (`fk_client`, `fk_installation`) VALUES
	(1, 1),
	(2, 1),
	(1, 2),
	(2, 3),
	(2, 4),
	(3, 5),
	(4, 6),
	(5, 7),
	(6, 8),
	(7, 9),
	(8, 10),
	(9, 11),
	(10, 12),
	(11, 13),
	(12, 14),
	(13, 15),
	(14, 16),
	(15, 17);

-- Listage de la structure de table ecuyer_gregory_expi1a_chauffage_164_2024. t_consommation
DROP TABLE IF EXISTS `t_consommation`;
CREATE TABLE IF NOT EXISTS `t_consommation` (
  `id_consommation` int NOT NULL AUTO_INCREMENT,
  `fk_installation` int DEFAULT NULL,
  `fk_combustible` int DEFAULT NULL,
  `date_releve` date DEFAULT NULL,
  `consommation` decimal(10,2) DEFAULT NULL,
  `temperature` decimal(5,2) DEFAULT NULL,
  `efficacite_energetique` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id_consommation`),
  KEY `t_consommation_avoir_t_installation` (`fk_installation`),
  KEY `t_consommation_avoir_t_combustible` (`fk_combustible`),
  CONSTRAINT `t_consommation_avoir_t_combustible` FOREIGN KEY (`fk_combustible`) REFERENCES `t_installation` (`combustible`),
  CONSTRAINT `t_consommation_avoir_t_installation` FOREIGN KEY (`fk_installation`) REFERENCES `t_installation` (`id_installation`)
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecuyer_gregory_expi1a_chauffage_164_2024.t_consommation : ~17 rows (environ)
INSERT INTO `t_consommation` (`id_consommation`, `fk_installation`, `fk_combustible`, `date_releve`, `consommation`, `temperature`, `efficacite_energetique`) VALUES
	(1, NULL, NULL, '2024-01-25', 2.50, 5.00, 3.00),
	(2, NULL, NULL, '2024-02-01', 3.20, 6.50, 4.00),
	(3, NULL, NULL, '2024-02-02', 2.80, 4.80, 3.50),
	(4, NULL, NULL, '2024-02-03', 3.60, 7.20, 4.20),
	(5, NULL, NULL, '2024-02-04', 2.30, 3.80, 2.90),
	(6, NULL, NULL, '2024-02-05', 2.70, 5.20, 3.30),
	(7, NULL, NULL, '2024-02-06', 3.10, 6.10, 3.80),
	(8, NULL, NULL, '2024-02-07', 3.40, 5.90, 4.00),
	(9, NULL, NULL, '2024-02-08', 2.90, 5.50, 3.60),
	(10, NULL, NULL, '2024-02-09', 3.70, 7.00, 4.50),
	(11, NULL, NULL, '2024-02-10', 2.60, 4.60, 3.20),
	(12, NULL, NULL, '2024-02-11', 3.50, 6.30, 4.10),
	(13, NULL, NULL, '2024-02-12', 2.40, 5.00, 3.10),
	(14, NULL, NULL, '2024-02-13', 3.00, 5.80, 3.70),
	(15, NULL, NULL, '2024-02-14', 2.80, 5.40, 3.50),
	(16, NULL, NULL, '2024-02-15', 3.20, 6.70, 4.00),
	(17, NULL, NULL, '2024-02-16', 2.90, 5.70, 3.60);

-- Listage de la structure de table ecuyer_gregory_expi1a_chauffage_164_2024. t_employer
DROP TABLE IF EXISTS `t_employer`;
CREATE TABLE IF NOT EXISTS `t_employer` (
  `id_employer` int NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_employer`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecuyer_gregory_expi1a_chauffage_164_2024.t_employer : ~2 rows (environ)
INSERT INTO `t_employer` (`id_employer`, `prenom`, `nom`) VALUES
	(1, 'Johann', 'Ecuyer'),
	(2, 'André', 'Ecuyer');

-- Listage de la structure de table ecuyer_gregory_expi1a_chauffage_164_2024. t_facturation
DROP TABLE IF EXISTS `t_facturation`;
CREATE TABLE IF NOT EXISTS `t_facturation` (
  `id_facture` int NOT NULL AUTO_INCREMENT,
  `fk_client` int DEFAULT NULL,
  `fk_installation` int DEFAULT NULL,
  `montant` decimal(10,2) DEFAULT NULL,
  `date_facturation` date DEFAULT NULL,
  `statut_paiement` varchar(20) DEFAULT NULL,
  `historique_paiements` text,
  PRIMARY KEY (`id_facture`),
  KEY `ID_Client` (`fk_client`),
  KEY `t_facturation_avoir_installation_t_installation` (`fk_installation`),
  CONSTRAINT `t_facturation_avoir_installation_t_installation` FOREIGN KEY (`fk_installation`) REFERENCES `t_installation` (`id_installation`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecuyer_gregory_expi1a_chauffage_164_2024.t_facturation : ~17 rows (environ)
INSERT INTO `t_facturation` (`id_facture`, `fk_client`, `fk_installation`, `montant`, `date_facturation`, `statut_paiement`, `historique_paiements`) VALUES
	(1, 1, 1, 250.00, '2024-01-31', 'Pas payé', NULL),
	(2, 2, 1, 350.00, '2024-02-07', 'Payé', NULL),
	(3, 2, 3, 350.00, '2024-03-05', 'En attente', NULL),
	(4, 2, 4, 400.00, '2024-03-20', 'Pas payé', NULL),
	(5, 3, 5, 450.00, '2024-04-05', 'En attente', NULL),
	(6, 4, 6, 500.00, '2024-04-20', 'Pas payé', NULL),
	(7, 5, 7, 550.00, '2024-05-05', 'En attente', NULL),
	(8, 6, 8, 600.00, '2024-05-20', 'Pas payé', NULL),
	(9, 7, 9, 650.00, '2024-06-05', 'En attente', NULL),
	(10, 8, 10, 700.00, '2024-06-20', 'Pas payé', NULL),
	(11, 9, 11, 750.00, '2024-07-05', 'En attente', NULL),
	(12, 10, 12, 800.00, '2024-07-20', 'Pas payé', NULL),
	(13, 11, 13, 850.00, '2024-08-05', 'En attente', NULL),
	(14, 12, 14, 900.00, '2024-08-20', 'Pas payé', NULL),
	(15, 13, 15, 950.00, '2024-09-05', 'En attente', NULL),
	(16, 14, 16, 1000.00, '2024-09-20', 'Pas payé', NULL),
	(17, 15, 17, 1050.00, '2024-10-05', 'En attente', NULL);

-- Listage de la structure de table ecuyer_gregory_expi1a_chauffage_164_2024. t_installation
DROP TABLE IF EXISTS `t_installation`;
CREATE TABLE IF NOT EXISTS `t_installation` (
  `id_installation` int NOT NULL AUTO_INCREMENT,
  `fk_client` int DEFAULT NULL,
  `combustible` int DEFAULT NULL,
  `type_chauffage` varchar(50) DEFAULT NULL,
  `modele_chauffage` varchar(50) DEFAULT NULL,
  `date_installation` date DEFAULT NULL,
  `capacite` varchar(50) DEFAULT NULL,
  `marque` int DEFAULT NULL,
  `puissance` smallint DEFAULT NULL,
  `fournisseur` int DEFAULT NULL,
  PRIMARY KEY (`id_installation`),
  KEY `t_installation_avoir_client_t_client` (`fk_client`),
  KEY `combustible` (`combustible`),
  CONSTRAINT `t_installation_avoir_client_t_client` FOREIGN KEY (`fk_client`) REFERENCES `t_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecuyer_gregory_expi1a_chauffage_164_2024.t_installation : ~19 rows (environ)
INSERT INTO `t_installation` (`id_installation`, `fk_client`, `combustible`, `type_chauffage`, `modele_chauffage`, `date_installation`, `capacite`, `marque`, `puissance`, `fournisseur`) VALUES
	(1, 1, NULL, 'Electrique', 'NL50', '2024-01-16', '1000Litres', NULL, NULL, NULL),
	(2, 2, 2, 'Gaz', 'GX200', '2024-02-25', '500Litres', NULL, NULL, NULL),
	(3, 3, 1, 'Electrique', 'EL100', '2024-03-10', '750Litres', NULL, NULL, NULL),
	(4, 4, 3, 'Fioul', 'FO500', '2024-04-05', '1200Litres', NULL, NULL, NULL),
	(5, 5, 2, 'Gaz', 'GX300', '2024-05-20', '800Litres', NULL, NULL, NULL),
	(6, 6, 1, 'Electrique', 'EL200', '2024-06-15', '1000Litres', NULL, NULL, NULL),
	(7, 7, 3, 'Fioul', 'FO700', '2024-07-10', '1500Litres', NULL, NULL, NULL),
	(8, 8, 2, 'Gaz', 'GX400', '2024-08-25', '900Litres', NULL, NULL, NULL),
	(9, 9, 1, 'Electrique', 'EL300', '2024-09-20', '1100Litres', NULL, NULL, NULL),
	(10, 10, 3, 'Fioul', 'FO900', '2024-10-05', '1800Litres', NULL, NULL, NULL),
	(11, 2, NULL, 'Gaz', 'GX200', '2024-02-25', '500Litres', NULL, NULL, NULL),
	(12, 3, NULL, 'Electrique', 'EL100', '2024-03-10', '750Litres', NULL, NULL, NULL),
	(13, 4, NULL, 'Fioul', 'FO500', '2024-04-05', '1200Litres', NULL, NULL, NULL),
	(14, 5, NULL, 'Gaz', 'GX300', '2024-05-20', '800Litres', NULL, NULL, NULL),
	(15, 6, NULL, 'Electrique', 'EL200', '2024-06-15', '1000Litres', NULL, NULL, NULL),
	(16, 7, NULL, 'Fioul', 'FO700', '2024-07-10', '1500Litres', NULL, NULL, NULL),
	(17, 8, NULL, 'Gaz', 'GX400', '2024-08-25', '900Litres', NULL, NULL, NULL),
	(18, 9, NULL, 'Electrique', 'EL300', '2024-09-20', '1100Litres', NULL, NULL, NULL),
	(19, 10, NULL, 'Fioul', 'FO900', '2024-10-05', '1800Litres', NULL, NULL, NULL);

-- Listage de la structure de table ecuyer_gregory_expi1a_chauffage_164_2024. t_maintenance
DROP TABLE IF EXISTS `t_maintenance`;
CREATE TABLE IF NOT EXISTS `t_maintenance` (
  `id_maintenance` int NOT NULL AUTO_INCREMENT,
  `fk_installation` int DEFAULT NULL,
  `date_maintenance` date DEFAULT NULL,
  `description` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `pieces_remplacees` varchar(100) DEFAULT NULL,
  `cout` decimal(10,2) DEFAULT NULL,
  `tache_employer` int DEFAULT NULL,
  PRIMARY KEY (`id_maintenance`),
  KEY `t_maintenance_avoir_installation_t_installation` (`fk_installation`),
  KEY `tache_employer` (`tache_employer`),
  CONSTRAINT `t_maintenance_avoir_employer_t_employer` FOREIGN KEY (`tache_employer`) REFERENCES `t_employer` (`id_employer`),
  CONSTRAINT `t_maintenance_avoir_installation_t_installation` FOREIGN KEY (`fk_installation`) REFERENCES `t_installation` (`id_installation`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecuyer_gregory_expi1a_chauffage_164_2024.t_maintenance : ~17 rows (environ)
INSERT INTO `t_maintenance` (`id_maintenance`, `fk_installation`, `date_maintenance`, `description`, `pieces_remplacees`, `cout`, `tache_employer`) VALUES
	(1, 1, '2024-02-28', 'Test', 'Chaudière', 15000.00, 1),
	(2, 2, '2024-03-15', 'Réparation du chauffage', 'Thermostat', 8000.00, 2),
	(3, 3, '2024-04-01', 'Entretien annuel', 'Filtre à air', 5000.00, 1),
	(4, 4, '2024-04-15', 'Réparation de la chaudière', 'Brûleur', 10000.00, 2),
	(5, 5, '2024-05-01', 'Maintenance préventive', 'Sonde de température', 3000.00, 1),
	(6, 6, '2024-05-15', 'Réparation du système', 'Soupape de sécurité', 7000.00, 2),
	(7, 7, '2024-06-01', 'Vérification de routine', 'Échangeur de chaleur', 4000.00, 1),
	(8, 8, '2024-06-15', 'Réparation du radiateur', 'Thermocouple', 6000.00, 2),
	(9, 9, '2024-07-01', 'Entretien de printemps', 'Pompe à eau', 4500.00, 1),
	(10, 10, '2024-07-15', 'Réparation de la conduite de gaz', 'Vanne de gaz', 8500.00, 2),
	(11, 11, '2024-08-01', 'Diagnostic du système', 'Tableau de contrôle', 5500.00, 1),
	(12, 12, '2024-08-15', 'Réparation de la fuite', 'Joint de tuyau', 6500.00, 2),
	(13, 13, '2024-09-01', 'Entretien d automne', 'Electrode d allumage', 4800.00, 1),
	(14, 14, '2024-09-15', 'Réparation du circuit électrique', 'Relais', 7200.00, 2),
	(15, 15, '2024-10-01', 'Révision générale', 'Tuyauterie', 9000.00, 1),
	(16, 16, '2024-10-15', 'Réparation du système de ventilation', 'Ventilateur', 5800.00, 2),
	(17, 17, '2024-11-01', 'Entretien d hiver', 'Gicleur de carburant', 5200.00, 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
