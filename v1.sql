-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `a`
--

DROP TABLE IF EXISTS `a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a` (
  `ID_utilisateur` int NOT NULL,
  `ID_competence` int NOT NULL,
  PRIMARY KEY (`ID_utilisateur`,`ID_competence`),
  KEY `ID_competence` (`ID_competence`),
  CONSTRAINT `a_ibfk_1` FOREIGN KEY (`ID_utilisateur`) REFERENCES `eleve` (`ID_utilisateur`),
  CONSTRAINT `a_ibfk_2` FOREIGN KEY (`ID_competence`) REFERENCES `competence` (`ID_competence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a`
--

LOCK TABLES `a` WRITE;
/*!40000 ALTER TABLE `a` DISABLE KEYS */;
/*!40000 ALTER TABLE `a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acceder`
--

DROP TABLE IF EXISTS `acceder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acceder` (
  `ID_promotion` int NOT NULL,
  `ID_offre` int NOT NULL,
  PRIMARY KEY (`ID_promotion`,`ID_offre`),
  KEY `ID_offre` (`ID_offre`),
  CONSTRAINT `acceder_ibfk_1` FOREIGN KEY (`ID_promotion`) REFERENCES `promotion` (`ID_promotion`),
  CONSTRAINT `acceder_ibfk_2` FOREIGN KEY (`ID_offre`) REFERENCES `offre` (`ID_offre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acceder`
--

LOCK TABLES `acceder` WRITE;
/*!40000 ALTER TABLE `acceder` DISABLE KEYS */;
INSERT INTO `acceder` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `acceder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `ID_utilisateur` int NOT NULL,
  PRIMARY KEY (`ID_utilisateur`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`ID_utilisateur`) REFERENCES `utilisateur` (`ID_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adresse` (
  `ID_adresse` int NOT NULL,
  `Nom_de_l_adresse` varchar(255) DEFAULT NULL,
  `Code_postal` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `date_de_suppression` date DEFAULT NULL,
  `ID_entreprise` int DEFAULT NULL,
  PRIMARY KEY (`ID_adresse`),
  KEY `ID_entreprise` (`ID_entreprise`),
  CONSTRAINT `adresse_ibfk_1` FOREIGN KEY (`ID_entreprise`) REFERENCES `entreprise` (`ID_entreprise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (1,'123 rue de la Technologie','75001','Paris','France',NULL,1),(2,'456 avenue de la Construction','13000','Marseille','France',NULL,2),(3,'789 boulevard de l\'Innovation','69001','Lyon','France',NULL,3),(4,'101 rue des Technologies Avancées','33000','Bordeaux','France',NULL,4),(5,'234 avenue de la Révolution Numérique','54000','Nancy','France',NULL,5),(6,'567 chemin de la Modernité','21000','Dijon','France',NULL,6),(7,'890 rue de l\'Électronique','59000','Lille','France',NULL,7),(8,'111 boulevard de l\'Internet','35000','Rennes','France',NULL,8),(9,'222 avenue de l\'Intelligence Artificielle','44000','Nantes','France',NULL,9),(10,'333 rue de la Cyber Sécurité','22000','Saint-Brieuc','France',NULL,10),(11,'444 avenue de la Blockchain','68000','Strasbourg','France',NULL,11),(12,'555 boulevard de la Robotique','17000','La Rochelle','France',NULL,12),(13,'666 rue des Nouvelles Technologies','66000','Perpignan','France',NULL,13),(14,'777 avenue de la Data Science','10000','Troyes','France',NULL,14),(15,'888 boulevard de la Dématérialisation','13001','Aix-en-Provence','France',NULL,15),(16,'999 rue de la Convergence','59000','Lille','France',NULL,16),(17,'1234 avenue de l\'Ingénierie','31000','Toulouse','France',NULL,17),(18,'5678 boulevard de l\'Informatique','44000','Nantes','France',NULL,18),(19,'9012 rue des Réseaux','35000','Rennes','France',NULL,19),(20,'3456 avenue de la Programmation','33000','Bordeaux','France',NULL,20),(21,'7890 boulevard du Développement','69000','Lyon','France',NULL,21),(22,'1234 rue de l\'Analyse','13000','Marseille','France',NULL,22),(23,'5678 avenue de la Cryptographie','54000','Nancy','France',NULL,23),(24,'9012 boulevard de l\'Optimisation','21000','Dijon','France',NULL,24),(25,'3456 rue du Cloud','59000','Lille','France',NULL,25),(26,'7890 avenue de la Modélisation','35000','Rennes','France',NULL,26),(27,'1234 boulevard de l\'Infrastructure','22000','Saint-Brieuc','France',NULL,27),(28,'5678 rue des Algorithmes','68000','Strasbourg','France',NULL,28),(29,'9012 avenue de la Sécurité','17000','La Rochelle','France',NULL,29),(30,'3456 boulevard du Big Data','66000','Perpignan','France',NULL,30),(31,'7890 rue de la Virtualisation','10000','Troyes','France',NULL,31),(32,'1234 avenue de l\'Automatisation','13001','Aix-en-Provence','France',NULL,32),(33,'5678 boulevard de la Business Intelligence','31000','Toulouse','France',NULL,33),(34,'9012 rue de la Transformation Digitale','44000','Nantes','France',NULL,34),(35,'3456 avenue de la Cybersécurité','33000','Bordeaux','France',NULL,35),(36,'7890 boulevard de l\'IA','69000','Lyon','France',NULL,36),(37,'1234 rue des Données','13000','Marseille','France',NULL,37),(38,'5678 avenue de la Robotic Process Automation','54000','Nancy','France',NULL,38),(39,'9012 boulevard de la Blockchain','21000','Dijon','France',NULL,39),(40,'3456 rue de la DevOps','59000','Lille','France',NULL,40),(41,'7890 avenue du Cloud Computing','35000','Rennes','France',NULL,41),(42,'1234 boulevard de l\'Ingénierie des Données','22000','Saint-Brieuc','France',NULL,42),(43,'5678 rue de la Business Analytics','68000','Strasbourg','France',NULL,43),(44,'9012 avenue de la Gestion de Projet','17000','La Rochelle','France',NULL,44),(45,'3456 boulevard de l\'Ingénierie Logicielle','66000','Perpignan','France',NULL,45),(46,'7890 rue de la Maintenance Informatique','10000','Troyes','France',NULL,46),(47,'1234 avenue de la Programmation Orientée Objet','13001','Aix-en-Provence','France',NULL,47),(48,'5678 boulevard de la Méthodologie Agile','31000','Toulouse','France',NULL,48),(49,'9012 rue de l\'Analyse de Données','44000','Nantes','France',NULL,49),(50,'3456 avenue de la Sécurité des Systèmes d\'Information','33000','Bordeaux','France',NULL,50);
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avis`
--

DROP TABLE IF EXISTS `avis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avis` (
  `ID_avis` int NOT NULL,
  `Note` decimal(3,1) DEFAULT NULL,
  `Commentaires` text,
  `date_de_suppression` date DEFAULT NULL,
  `ID_entreprise` int DEFAULT NULL,
  `ID_utilisateur` int DEFAULT NULL,
  PRIMARY KEY (`ID_avis`),
  KEY `ID_entreprise` (`ID_entreprise`),
  KEY `ID_utilisateur` (`ID_utilisateur`),
  CONSTRAINT `avis_ibfk_1` FOREIGN KEY (`ID_entreprise`) REFERENCES `entreprise` (`ID_entreprise`),
  CONSTRAINT `avis_ibfk_2` FOREIGN KEY (`ID_utilisateur`) REFERENCES `utilisateur` (`ID_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avis`
--

LOCK TABLES `avis` WRITE;
/*!40000 ALTER TABLE `avis` DISABLE KEYS */;
INSERT INTO `avis` VALUES 
(1,4.5,'Excellente culture d\'entreprise.',NULL,1,1),
(2,4.0,'Projets stimulants et équipe dynamique.',NULL,2,2),
(3,3.8,'Bonne ambiance de travail mais manque de développement professionnel.',NULL,3,3),
(4,4.2,'Environnement stimulant et équipe collaborative.',NULL,4,4),
(5,4.7,'Entreprise innovante et opportunités de croissance.',NULL,5,5),
(6,3.5,'Ambiance agréable mais manque de communication interne.',NULL,6,6),
(7,4.8,'Leadership fort et reconnaissance des efforts des employés.',NULL,7,7),
(8,4.3,'Projets variés et possibilités d\'apprentissage.',NULL,8,8),
(9,3.9,'Environnement de travail convivial mais manque de perspectives d\'évolution.',NULL,9,9),
(10,4.6,'Culture d\'entreprise inclusive et valeurs fortes.',NULL,10,10),
(11,3.7,'Manque de soutien de la direction mais bonne collaboration entre collègues.',NULL,11,11),
(12,4.1,'Opportunités de développement professionnel et culture d\'entreprise positive.',NULL,12,12),
(13,4.4,'Bonne ambiance mais processus de décision parfois lents.',NULL,13,13),
(14,4.9,'Environnement de travail stimulant et perspectives d\'avancement.',NULL,14,14),
(15,3.6,'Manque de reconnaissance et de valorisation des employés.',NULL,15,15),
(16,4.2,'Équipe dynamique et projets intéressants.',NULL,16,16),
(17,4.7,'Entreprise axée sur l\'innovation et la collaboration.',NULL,17,17),
(18,3.8,'Culture d\'entreprise positive mais manque de transparence.',NULL,18,18),
(19,4.5,'Opportunités de formation et d\'évolution professionnelle.',NULL,19,19),
(20,4.0,'Ambiance agréable mais manque de visibilité sur les projets futurs.',NULL,20,20),
(21,4.8,'Leadership inspirant et valeurs d\'entreprise fortes.',NULL,21,21),
(22,4.3,'Projets innovants et équipe motivée.',NULL,22,22),
(23,3.9,'Environnement de travail convivial mais manque de flexibilité.',NULL,23,23),
(24,4.6,'Culture d\'entreprise inclusive et esprit d\'équipe.',NULL,24,24),
(25,3.7,'Manque de communication interne mais bonne ambiance.',NULL,25,25),
(26,4.1,'Opportunités d\'apprentissage et de développement professionnel.',NULL,26,26),
(27,4.4,'Bonne reconnaissance des employés et ambiance collaborative.',NULL,27,27),
(28,4.9,'Culture d\'entreprise axée sur l\'innovation et la créativité.',NULL,28,28),
(29,3.6,'Processus décisionnels parfois lents mais bonne ambiance de travail.',NULL,29,29),
(30,4.2,'Équipe dynamique et projets stimulants.',NULL,30,30),
(31,4.7,'Entreprise axée sur l\'innovation et la croissance.',NULL,31,31),
(32,3.8,'Environnement de travail agréable mais manque de perspectives d\'évolution.',NULL,32,32),
(33,4.5,'Leadership fort et reconnaissance des talents.',NULL,33,33),
(34,4.0,'Projets variés et équipe collaborative.',NULL,34,34),
(35,4.8,'Culture d\'entreprise inspirante et valeurs fortes.',NULL,35,35),
(36,4.3,'Opportunités de développement professionnel et ambiance conviviale.',NULL,36,36),
(37,3.9,'Manque de communication interne mais bonne cohésion d\'équipe.',NULL,37,37),
(38,4.6,'Leadership motivant et culture d\'entreprise inclusive.',NULL,38,38),
(39,3.7,'Processus décisionnels parfois lents mais bon équilibre vie professionnelle-vie personnelle.',NULL,39,39),
(40,4.1,'Projets stimulants et opportunités de formation.',NULL,40,40),
(41,4.4,'Bonne ambiance de travail et reconnaissance des efforts.',NULL,41,41),
(42,4.9,'Entreprise innovante et équipe talentueuse.',NULL,42,42),
(43,3.6,'Manque de transparence sur les décisions mais bonne ambiance de travail.',NULL,43,43),
(44,4.2,'Projets intéressants et équipe dynamique.',NULL,44,44),
(45,4.7,'Culture d\'entreprise axée sur l\'innovation et la collaboration.',NULL,45,45),
(46,3.8,'Environnement de travail convivial mais manque de flexibilité horaire.',NULL,46,46),
(47,4.5,'Leadership inspirant et opportunités de développement.',NULL,47,47),
(48,4.0,'Équipe motivée et projets variés.',NULL,48,48),
(49,4.8,'Culture d\'entreprise positive et valeurs partagées.',NULL,49,49),
(50,4.3,'Opportunités de croissance professionnelle et bonne ambiance de travail.',NULL,50,50);
/*!40000 ALTER TABLE `avis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campus`
--

DROP TABLE IF EXISTS `campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campus` (
  `ID_campus` int NOT NULL,
  `Nom_Campus` varchar(255) DEFAULT NULL,
  `ID_adresse` int DEFAULT NULL,
  PRIMARY KEY (`ID_campus`),
  KEY `ID_adresse` (`ID_adresse`),
  CONSTRAINT `campus_ibfk_1` FOREIGN KEY (`ID_adresse`) REFERENCES `adresse` (`ID_adresse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus`
--

LOCK TABLES `campus` WRITE;
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
INSERT INTO `campus` VALUES (1,'Campus Paris',1),(2,'Campus Marseille',2),(3,'Campus Lyon',1),(4,'Campus Bordeaux',2),(5,'Campus Toulouse',1),(6,'Campus Lille',2),(7,'Campus Nantes',1),(8,'Campus Strasbourg',2),(9,'Campus Rennes',1),(10,'Campus Nice',2),(11,'Campus Montpellier',1),(12,'Campus Nancy',2),(13,'Campus Grenoble',1),(14,'Campus Dijon',2),(15,'Campus Angers',1),(16,'Campus Tours',2),(17,'Campus Rouen',1),(18,'Campus Avignon',2),(19,'Campus Poitiers',1),(20,'Campus Reims',2),(21,'Campus Metz',1),(22,'Campus Caen',2),(23,'Campus Clermont-Ferrand',1),(24,'Campus Brest',2),(25,'Campus Limoges',1),(26,'Campus Annecy',2),(27,'Campus La Rochelle',1),(28,'Campus Perpignan',2),(29,'Campus Besançon',1),(30,'Campus Pau',2),(31,'Campus Mulhouse',1),(32,'Campus Troyes',2),(33,'Campus Antibes',1),(34,'Campus Le Mans',2),(35,'Campus Saint-Étienne',1),(36,'Campus Quimper',2),(37,'Campus Saint-Nazaire',1),(38,'Campus Valence',2),(39,'Campus Chambéry',1),(40,'Campus Cannes',2),(41,'Campus Évreux',1),(42,'Campus Bayonne',2),(43,'Campus Tarbes',1),(44,'Campus Aurillac',2),(45,'Campus Albi',1),(46,'Campus Béziers',2),(47,'Campus Roanne',1),(48,'Campus Saint-Brieuc',2),(49,'Campus Arras',1),(50,'Campus Colmar',2);
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidature`
--

DROP TABLE IF EXISTS `candidature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidature` (
  `ID_candidature` int NOT NULL,
  `CV` varchar(255),
  `Secteur` varchar(255) DEFAULT NULL,
  `lettre` text,
  `date_de_suppression` date DEFAULT NULL,
  `ID_offre` int DEFAULT NULL,
  `ID_utilisateur` int DEFAULT NULL,
  PRIMARY KEY (`ID_candidature`),
  KEY `ID_offre` (`ID_offre`),
  KEY `ID_utilisateur` (`ID_utilisateur`),
  CONSTRAINT `candidature_ibfk_1` FOREIGN KEY (`ID_offre`) REFERENCES `offre` (`ID_offre`),
  CONSTRAINT `candidature_ibfk_2` FOREIGN KEY (`ID_utilisateur`) REFERENCES `utilisateur` (`ID_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidature`
--

LOCK TABLES `candidature` WRITE;
/*!40000 ALTER TABLE `candidature` DISABLE KEYS */;
INSERT INTO `candidature` VALUES (1,NULL,'IT','Très intéressé par le poste de développeur.',NULL,1,3),(2,NULL,'Construction','Passionné par les projets de construction.',NULL,2,4),(3,NULL,'Finance','Motivé pour contribuer en tant qu'analyste financier.',NULL,3,5),(4,NULL,'IT','Enthousiaste à l'idée de rejoindre en tant que développeur Full Stack.',NULL,4,6),(5,NULL,'Énergie','Intéressé par les opportunités dans les énergies renouvelables.',NULL,5,7),(6,NULL,'Design','Aspirant à mettre en œuvre des concepts de design d'intérieur innovants.',NULL,6,8),(7,NULL,'Sécurité','Désireux de participer à la protection des données en tant qu'analyste en cybersécurité.',NULL,7,9),(8,NULL,'Construction','Attiré par les défis du poste de chef de projet construction.',NULL,8,10),(9,NULL,'IT','Passionné par le développement Python et ses applications.',NULL,9,11),(10,NULL,'Design','Intéressé par la création de paysages uniques en tant qu'architecte paysagiste.',NULL,10,12),(11,NULL,'Finance','Enthousiaste à l'idée de contribuer en tant qu'analyste financier.',NULL,11,13),(12,NULL,'IT','Motivé pour rejoindre en tant que développeur Full Stack.',NULL,12,14),(13,NULL,'Énergie','Intéressé par les projets d'énergie renouvelable.',NULL,13,15),(14,NULL,'Design','Passionné par l'innovation dans le design d'intérieur.',NULL,14,16),(15,NULL,'Sécurité','Enthousiaste à l'idée de contribuer à la cybersécurité.',NULL,15,17),(16,NULL,'Construction','Intéressé par les défis du poste de chef de projet construction.',NULL,16,18),(17,NULL,'IT','Motivé pour travailler en tant que développeur Python.',NULL,17,19),(18,NULL,'Design','Attiré par les projets de conception de paysages.',NULL,18,20),(19,NULL,'Finance','Passionné par l'analyse financière.',NULL,19,21),(20,NULL,'IT','Intéressé par les opportunités de développement logiciel.',NULL,20,22),(21,NULL,'Énergie','Enthousiaste à l'idée de contribuer aux projets d'énergie renouvelable.',NULL,21,23),(22,NULL,'Design','Passionné par le design d'intérieur.',NULL,22,24),(23,NULL,'Sécurité','Motivé pour travailler dans le domaine de la cybersécurité.',NULL,23,25),(24,NULL,'Construction','Attiré par les opportunités dans le domaine de la construction.',NULL,24,26),(25,NULL,'IT','Enthousiaste à l'idée de contribuer en tant que développeur Full Stack.',NULL,25,27);
/*!40000 ALTER TABLE `candidature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competence`
--

DROP TABLE IF EXISTS `competence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competence` (
  `ID_competence` int NOT NULL,
  `nom_competence` varchar(255) DEFAULT NULL,
  `niveau_competence` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_competence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competence`
--

LOCK TABLES `competence` WRITE;
/*!40000 ALTER TABLE `competence` DISABLE KEYS */;
INSERT INTO `competence` VALUES 
(1,'Programmation Java','Avancé'),
(2,'Base de données SQL','Intermédiaire'),
(3,'Gestion de projet','Débutant'),
(4,'Développement web','Avancé'),
(5,'Conception UX/UI','Intermédiaire'),
(6,'Sécurité informatique','Avancé'),
(7,'Analyse financière','Avancé'),
(8,'Génie civil','Intermédiaire'),
(9,'Conception architecturale','Avancé'),
(10,'Énergie renouvelable','Débutant'),
(11,'Marketing digital','Intermédiaire'),
(12,'Contrôle de qualité','Avancé'),
(13,'Développement mobile','Intermédiaire'),
(14,'Laboratoire d\'analyse','Débutant'),
(15,'Électricité','Avancé'),
(16,'Développement logiciel','Avancé'),
(17,'Électronique','Intermédiaire'),
(18,'Support technique','Débutant'),
(19,'Programmation C++','Avancé'),
(20,'Gestion des ressources humaines','Avancé'),
(21,'Design graphique','Intermédiaire'),
(22,'Analyse financière','Avancé'),
(23,'Bureau d\'études','Intermédiaire'),
(24,'Gestion système','Débutant'),
(25,'Réseaux informatiques','Avancé'),
(26,'Marketing','Avancé'),
(27,'Analyse de données','Intermédiaire'),
(28,'Communication','Avancé'),
(29,'Administration système','Intermédiaire'),
(30,'Programmation Python','Avancé'),
(31,'Analyse de marché','Débutant'),
(32,'Génie mécanique','Avancé'),
(33,'Analyse statistique','Intermédiaire'),
(34,'Administration de bases de données','Avancé'),
(35,'Gestion de projet','Avancé'),
(36,'Développement d\'applications','Intermédiaire'),
(37,'Économie','Avancé'),
(38,'Génie électrique','Intermédiaire'),
(39,'Rédaction','Avancé'),
(40,'Infrastructure réseau','Avancé'),
(41,'Conception de produits','Intermédiaire'),
(42,'Service client','Débutant'),
(43,'Intelligence artificielle','Avancé'),
(44,'Management','Avancé'),
(45,'Conception mécanique','Intermédiaire'),
(46,'Analyse de risques','Avancé'),
(47,'Conception électronique','Intermédiaire'),
(48,'Développement logiciel embarqué','Avancé'),
(49,'Maintenance informatique','Intermédiaire'),
(50,'Communication visuelle','Avancé');
/*!40000 ALTER TABLE `competence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contient`
--

DROP TABLE IF EXISTS `contient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contient` (
  `ID_offre` int NOT NULL,
  `ID_wishlist` int NOT NULL,
  PRIMARY KEY (`ID_offre`,`ID_wishlist`),
  KEY `ID_wishlist` (`ID_wishlist`),
  CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`ID_offre`) REFERENCES `offre` (`ID_offre`),
  CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`ID_wishlist`) REFERENCES `wishlist` (`ID_wishlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contient`
--

LOCK TABLES `contient` WRITE;
/*!40000 ALTER TABLE `contient` DISABLE KEYS */;
 INSERT INTO `contient` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),
(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),
(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),
(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);

/*!40000 ALTER TABLE `contient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eleve`
--

DROP TABLE IF EXISTS `eleve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eleve` (
  `ID_utilisateur` int NOT NULL,
  `ID_promotion` int DEFAULT NULL,
  PRIMARY KEY (`ID_utilisateur`),
  KEY `ID_promotion` (`ID_promotion`),
  CONSTRAINT `eleve_ibfk_1` FOREIGN KEY (`ID_utilisateur`) REFERENCES `utilisateur` (`ID_utilisateur`),
  CONSTRAINT `eleve_ibfk_2` FOREIGN KEY (`ID_promotion`) REFERENCES `promotion` (`ID_promotion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eleve`
--

LOCK TABLES `eleve` WRITE;
/*!40000 ALTER TABLE `eleve` DISABLE KEYS */;
INSERT INTO `eleve` VALUES (3,1),(5,1),(4,2),(6, 2),(7, 24),(8, 37),(9, 10),(10, 45),(11, 30),(12, 19),(13, 12),(14, 6),(15, 48),(16, 28),(17, 43),(18, 18),(19, 49),(20, 38),(21, 22),(22, 39),(23, 16),(24, 8),(25, 41),(26, 20),(27, 25),(28, 36),(29, 42),(30, 4),(31, 27),(32, 11),(33, 47),(34, 33),(35, 35),(36, 7),(37, 50),(38, 15),(39, 32),(40, 9),(41, 5),(42, 44),(43, 34),(44, 13),(45, 26),(46, 3),(47, 23),(48, 46),(49, 31),(50, 14);
/*!40000 ALTER TABLE `eleve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entreprise` (
  `ID_entreprise` int NOT NULL,
  `Entreprise` varchar(255) DEFAULT NULL,
  `Description` text,
  `Secteur_activite` varchar(255) DEFAULT NULL,
  `banniere_entreprise` varchar(255),
  `photo_entreprise` varchar(255),
  `date_de_suppression` date DEFAULT NULL,
  `ID_utilisateur` int DEFAULT NULL,
  PRIMARY KEY (`ID_entreprise`),
  KEY `ID_utilisateur` (`ID_utilisateur`),
  CONSTRAINT `entreprise_ibfk_1` FOREIGN KEY (`ID_utilisateur`) REFERENCES `utilisateur` (`ID_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entreprise`
--

LOCK TABLES `entreprise` WRITE;
/*!40000 ALTER TABLE `entreprise` DISABLE KEYS */;
INSERT INTO `entreprise` VALUES(1,'Tech Solutions','Solutions technologiques innovantes','Technologie de l’information',NULL,NULL,NULL,1),(2,'Bâtiments Pro','Construction et rénovation','BTP',NULL,NULL,NULL,2),(3,'Nouvelle Tech','Nouvelles solutions technologiques innovantes','Technologie de l’information',NULL,NULL,NULL,3),(4,'Innovatech','Innovation au cœur de nos services','Technologie de l’information',NULL,NULL,NULL,4),(5,'Construction Pro','Spécialistes en construction et rénovation','BTP',NULL,NULL,NULL,5),(6,'Éco Construction','Construction respectueuse de l’environnement','BTP',NULL,NULL,NULL,1),(7,'Solutions Avancées','Des solutions avancées pour vos besoins','Technologie de l’information',NULL,NULL,NULL,2),(8,'ModernTech','Technologie moderne pour des solutions rapides','Technologie de l’information',NULL,NULL,NULL,3),(9,'Build It','Construire l’avenir avec nous','BTP',NULL,NULL,NULL,4),(10,'Info Innovate','Innovation continue dans le domaine de la technologie','Technologie de l’information',NULL,NULL,NULL,5),(11,'Urban Tech','Technologie pour les villes intelligentes','Technologie de l’information',NULL,NULL,NULL,1),(12,'Bâtiments Futur','Construire le futur ensemble','BTP',NULL,NULL,NULL,2),(13,'TechGenius','Solutions technologiques pour tous les besoins','Technologie de l’information',NULL,NULL,NULL,3),(14,'Constructeurs Pro','Professionnels de la construction','BTP',NULL,NULL,NULL,4),(15,'Digital Solutions','Solutions numériques pour votre entreprise','Technologie de l’information',NULL,NULL,NULL,5),(16,'Green Buildings','Construire écologique pour un avenir durable','BTP',NULL,NULL,NULL,1),(17,'Innovative Solutions','Des solutions innovantes pour vos défis','Technologie de l’information',NULL,NULL,NULL,2),(18,'FutureTech','Créer l’avenir avec la technologie','Technologie de l’information',NULL,NULL,NULL,3),(19,'Urban Builders','Construire des villes pour demain','BTP',NULL,NULL,NULL,4),(20,'TechExperts','Experts en technologie à votre service','Technologie de l’information',NULL,NULL,NULL,5),(21,'Smart Construction','Construire intelligemment pour un monde meilleur','BTP',NULL,NULL,NULL,1),(22,'NextGen Tech','La prochaine génération de solutions technologiques','Technologie de l’information',NULL,NULL,NULL,2),(23,'Pro Build','Construire professionnellement pour des résultats de qualité','BTP',NULL,NULL,NULL,3),(24,'Tech Innovators','Innovation constante dans le domaine de la technologie','Technologie de l’information',NULL,NULL,NULL,4),(25,'Green Tech','Technologie pour un environnement plus vert','Technologie de l’information',NULL,NULL,NULL,5),(26,'City Builders','Construire des cités pour les générations futures','BTP',NULL,NULL,NULL,1),(27,'Advanced Solutions','Solutions avancées pour des défis complexes','Technologie de l’information',NULL,NULL,NULL,2),(28,'Eco Builders','Construire de manière respectueuse de l’environnement','BTP',NULL,NULL,NULL,3),(29,'Digital Innovators','Innovation numérique pour un monde connecté','Technologie de l’information',NULL,NULL,NULL,4),(30,'Construction Experts','Experts en construction pour des projets réussis','BTP',NULL,NULL,NULL,5),(31,'Tech Leaders','Leaders dans le domaine de la technologie','Technologie de l’information',NULL,NULL,NULL,1),(32,'Urban Development','Développement urbain pour des villes plus durables','BTP',NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `entreprise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habite`
--

DROP TABLE IF EXISTS `habite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habite` (
  `ID_utilisateur` int NOT NULL,
  `ID_adresse` int NOT NULL,
  PRIMARY KEY (`ID_utilisateur`,`ID_adresse`),
  KEY `ID_adresse` (`ID_adresse`),
  CONSTRAINT `habite_ibfk_1` FOREIGN KEY (`ID_utilisateur`) REFERENCES `utilisateur` (`ID_utilisateur`),
  CONSTRAINT `habite_ibfk_2` FOREIGN KEY (`ID_adresse`) REFERENCES `adresse` (`ID_adresse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habite`
--

LOCK TABLES `habite` WRITE;
/*!40000 ALTER TABLE `habite` DISABLE KEYS */;
INSERT INTO `habite` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),
(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),
(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),
(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `habite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `necessite`
--

DROP TABLE IF EXISTS `necessite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `necessite` (
  `ID_offre` int NOT NULL,
  `ID_competence` int NOT NULL,
  PRIMARY KEY (`ID_offre`,`ID_competence`),
  KEY `ID_competence` (`ID_competence`),
  CONSTRAINT `necessite_ibfk_1` FOREIGN KEY (`ID_offre`) REFERENCES `offre` (`ID_offre`),
  CONSTRAINT `necessite_ibfk_2` FOREIGN KEY (`ID_competence`) REFERENCES `competence` (`ID_competence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `necessite`
--

LOCK TABLES `necessite` WRITE;
/*!40000 ALTER TABLE `necessite` DISABLE KEYS */;
INSERT INTO `necessite` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),
(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),
(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),
(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `necessite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offre`
--

DROP TABLE IF EXISTS `offre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offre` (
  `ID_offre` int NOT NULL,
  `nom_de_l_offre` varchar(255) DEFAULT NULL,
  `description_de_l_offre` varchar(1024) DEFAULT NULL,
  `date_de_l_offre` date DEFAULT NULL,
  `date_debut_offre` date DEFAULT NULL,
  `duree_de_l_offre` varchar(255) DEFAULT NULL,
  `salaire` decimal(10,2) DEFAULT NULL,
  `nombre_de_places` int DEFAULT NULL,
  `nombre_de_places_prises` int DEFAULT NULL,
  `date_de_suppression` date DEFAULT NULL,
  `ID_entreprise` int DEFAULT NULL,
  `ID_utilisateur` int DEFAULT NULL,
  PRIMARY KEY (`ID_offre`),
  KEY `ID_entreprise` (`ID_entreprise`),
  KEY `ID_utilisateur` (`ID_utilisateur`),
  CONSTRAINT `offre_ibfk_1` FOREIGN KEY (`ID_entreprise`) REFERENCES `entreprise` (`ID_entreprise`),
  CONSTRAINT `offre_ibfk_2` FOREIGN KEY (`ID_utilisateur`) REFERENCES `utilisateur` (`ID_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offre`
--

LOCK TABLES `offre` WRITE;
/*!40000 ALTER TABLE `offre` DISABLE KEYS */;
INSERT INTO `offre` VALUES 
(5,'Ingénieur DevOps','En tant qu\'ingénieur DevOps, vous serez responsable de la mise en place et de la gestion des pipelines d\'intégration continue et de déploiement pour garantir le déploiement efficace et fiable des applications. Vous travaillerez en étroite collaboration avec les équipes de développement et d\'exploitation pour automatiser les processus de déploiement et améliorer l\'efficacité opérationnelle.','2024-06-10','2024-07-10','10 semaines',1050,3,2,NULL,5,5),
(6,'Designer UX/UI','En tant que designer UX/UI, vous serez chargé de créer des interfaces utilisateur intuitives et attrayantes pour nos applications web et mobiles. Vous travaillerez en étroite collaboration avec les équipes de développement pour comprendre les besoins des utilisateurs et concevoir des expériences utilisateur optimales. Vous devrez maîtriser les outils de conception tels que Sketch, Figma ou Adobe XD, ainsi que les principes de conception centrée sur l\'utilisateur.','2024-07-10','2024-08-10','8 semaines',920,2,1,NULL,6,6),
(7,'Ingénieur Système','En tant qu\'ingénieur système, vous serez chargé de concevoir, mettre en œuvre et maintenir l\'infrastructure informatique de notre entreprise. Vous travaillerez en étroite collaboration avec les équipes de développement pour garantir la disponibilité, la fiabilité et la sécurité des systèmes. Vous devrez posséder des compétences solides en administration système, ainsi qu\'une compréhension approfondie des réseaux et des systèmes d\'exploitation.','2024-08-10','2024-09-10','4 semaines',800,3,2,NULL,7,7),
(8,'Analyste financier','En tant qu\'analyste financier, vous serez responsable de l\'analyse des données financières, de la modélisation et de la préparation des rapports pour aider à prendre des décisions commerciales éclairées. Vous travaillerez en étroite collaboration avec les équipes de direction pour comprendre les performances financières de l\'entreprise et recommander des stratégies d\'amélioration. Vous devrez posséder d\'excellentes compétences analytiques et une solide connaissance des principes comptables et financiers.','2024-09-10','2024-10-10','6 semaines',1050,4,3,NULL,8,8),
(9,'Développeur Fullstack','En tant que développeur Fullstack, vous serez responsable du développement et de la maintenance à la fois du frontend et du backend de nos applications web. Vous travaillerez en étroite collaboration avec les équipes de développement pour assurer la cohérence et la performance de l\'application dans son ensemble. Vous devrez maîtriser les langages et les frameworks frontend et backend, ainsi que les bases de données et les principes de sécurité informatique.','2024-10-10','2024-11-10','8 semaines',980,3,2,NULL,9,9),
(10,'Chef de Projet IT','En tant que chef de projet IT, vous serez responsable de la planification, de la coordination et de l\'exécution de projets informatiques de bout en bout. Vous travaillerez en étroite collaboration avec les équipes techniques et fonctionnelles pour garantir la livraison dans les délais et le respect du budget. Vous devrez posséder d\'excellentes compétences en gestion de projet, en communication et en résolution de problèmes.','2024-11-10','2024-12-10','12 semaines',1100,4,3,NULL,10,10),
(11,'Ingénieur en Intelligence Artificielle','En tant qu\'ingénieur en Intelligence Artificielle, vous serez responsable de la conception, du développement et de la mise en œuvre de solutions basées sur l\'IA pour résoudre des problèmes complexes. Vous travaillerez en étroite collaboration avec les équipes de recherche et de développement pour développer des modèles d\'apprentissage automatique et des algorithmes d\'IA innovants. Vous devrez posséder une solide compréhension des mathématiques et des techniques d\'apprentissage automatique, ainsi que des compétences en programmation.','2024-12-10','2025-01-10','8 semaines',1250,3,2,NULL,11,11),
(12,'Développeur Mobile','En tant que développeur mobile, vous serez responsable du développement d\'applications mobiles pour iOS et Android. Vous travaillerez en étroite collaboration avec les concepteurs UX/UI pour transformer les maquettes en applications fonctionnelles et esthétiques. Vous devrez maîtriser les langages de programmation tels que Swift pour iOS et Kotlin pour Android, ainsi que les frameworks de développement mobiles comme Flutter ou React Native.','2025-01-10','2025-02-10','6 semaines',1050,2,1,NULL,12,12),
(13,'Administrateur de Base de Données','En tant qu\'administrateur de base de données, vous serez responsable de la gestion, de la maintenance et de l\'optimisation des bases de données de l\'entreprise. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des structures de données efficaces et garantir la disponibilité et la sécurité des données. Vous devrez posséder des compétences approfondies en SQL, ainsi qu\'une expérience pratique avec les systèmes de gestion de bases de données comme MySQL, Oracle ou SQL Server.','2025-02-10','2025-03-10','8 semaines',980,3,2,NULL,13,13),
(14,'Architecte Logiciel','En tant qu\'architecte logiciel, vous serez responsable de la conception et de l\'architecture des solutions logicielles de l\'entreprise. Vous travaillerez en étroite collaboration avec les équipes de développement pour définir l\'architecture technique, choisir les technologies appropriées et garantir la qualité et la scalabilité du système. Vous devrez posséder une solide expérience dans la conception de systèmes distribués, ainsi qu\'une expertise dans les technologies émergentes comme les conteneurs et les microservices.','2025-03-10','2025-04-10','8 semaines',1250,4,3,NULL,14,14),
(15,'Analyste de Données','En tant qu\'analyste de données, vous serez chargé de collecter, d\'analyser et de visualiser les données pour fournir des informations exploitables à l\'entreprise. Vous travaillerez en étroite collaboration avec les équipes métier pour comprendre leurs besoins en matière d\'analyse de données et développer des solutions adaptées. Vous devrez posséder des compétences en extraction, transformation et chargement de données (ETL), ainsi qu\'une expérience pratique avec des outils d\'analyse de données comme Python, R ou Tableau.','2025-04-10','2025-05-10','6 semaines',980,3,2,NULL,15,15),
(16,'Responsable Qualité','En tant que responsable qualité, vous serez chargé de mettre en place et de maintenir un système de gestion de la qualité pour assurer la conformité des produits et des processus aux normes et réglementations en vigueur. Vous travaillerez en étroite collaboration avec les équipes de production pour mettre en œuvre des processus d\'assurance qualité et d\'amélioration continue. Vous devrez posséder des compétences en gestion de la qualité, ainsi qu\'une connaissance des normes ISO et des méthodologies d\'audit.','2025-05-10','2025-06-10','8 semaines',1100,4,3,NULL,16,16),
(17,'Développeur Python','En tant que développeur Python, vous serez responsable du développement et de la maintenance d\'applications et de scripts basés sur le langage de programmation Python. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des solutions techniques efficaces et évolutives. Vous devrez maîtriser les principaux frameworks Python tels que Django et Flask, ainsi que les outils de développement et de gestion de code source.','2025-06-10','2025-07-10','8 semaines',980,3,2,NULL,17,17),
(18,'Scrum Master','En tant que Scrum Master, vous serez responsable de faciliter le processus de développement Agile au sein de l\'équipe. Vous travaillerez en étroite collaboration avec les équipes de développement pour les aider à adopter les pratiques Agile, à résoudre les obstacles et à améliorer leur efficacité. Vous devrez posséder une solide compréhension des principes Agile et une expérience pratique en tant que Scrum Master.','2025-07-10','2025-08-10','6 semaines',920,3,1,NULL,18,18),
(19,'Analyste de Sécurité Informatique','En tant qu\'analyste de sécurité informatique, vous serez chargé de protéger les systèmes informatiques et les données de l\'entreprise contre les menaces et les cyberattaques. Vous travaillerez en étroite collaboration avec les équipes de sécurité pour détecter et répondre aux incidents de sécurité, ainsi que pour mettre en place des mesures préventives. Vous devrez posséder des compétences en analyse de risques, en surveillance de la sécurité et en forensique informatique, ainsi qu\'une connaissance approfondie des normes de sécurité et des outils de sécurité informatique.','2025-08-10','2025-09-10','8 semaines',1100,4,3,NULL,19,19),
(20,'Développeur Ruby on Rails','En tant que développeur Ruby on Rails, vous serez responsable du développement et de la maintenance d\'applications web basées sur le framework Ruby on Rails. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des solutions techniques robustes et évolutives. Vous devrez maîtriser Ruby ainsi que les principaux concepts de Rails, ainsi que les outils de développement et de gestion de code source.','2025-09-10','2025-10-10','8 semaines',980,3,2,NULL,20,20),
(21,'Responsable des Ressources Humaines','En tant que responsable des ressources humaines, vous serez chargé de gérer tous les aspects des ressources humaines de l\'entreprise, y compris le recrutement, la formation, la gestion des performances et la conformité réglementaire. Vous travaillerez en étroite collaboration avec les cadres supérieurs pour élaborer et mettre en œuvre des stratégies RH efficaces. Vous devrez posséder d\'excellentes compétences en communication, en gestion du personnel et en résolution de problèmes.','2025-10-10','2025-11-10','8 semaines',1100,4,3,NULL,21,21),
(22,'Développeur PHP','En tant que développeur PHP, vous serez responsable du développement et de la maintenance d\'applications web dynamiques basées sur le langage de programmation PHP. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des solutions techniques efficaces et évolutives. Vous devrez maîtriser les principaux frameworks PHP tels que Laravel et Symfony, ainsi que les bases de données et les outils de développement web.','2025-11-10','2025-12-10','8 semaines',980,3,2,NULL,22,22),
(23,'Chef de Produit','En tant que chef de produit, vous serez responsable du développement et de la gestion des produits de l\'entreprise, de la conception à la commercialisation. Vous travaillerez en étroite collaboration avec les équipes de développement, de marketing et de vente pour définir la stratégie de produit, recueillir les besoins des clients et superviser le cycle de vie du produit. Vous devrez posséder d\'excellentes compétences en gestion de projet, en analyse de marché et en leadership.','2025-12-10','2026-01-10','8 semaines',1250,4,3,NULL,23,23),
(24,'Développeur C++','En tant que développeur C++, vous serez responsable du développement et de la maintenance de logiciels utilisant le langage de programmation C++. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des solutions techniques efficaces et robustes. Vous devrez maîtriser les principes de la programmation orientée objet, ainsi que les concepts avancés de C++ et les techniques de débogage.','2026-01-10','2026-02-10','8 semaines',980,3,2,NULL,24,24),
(25,'Analyste Commercial','En tant qu\'analyste commercial, vous serez chargé de collecter, d\'analyser et de présenter des données pour aider à prendre des décisions commerciales éclairées. Vous travaillerez en étroite collaboration avec les équipes de vente et de marketing pour comprendre les tendances du marché, évaluer les performances des produits et identifier les opportunités de croissance. Vous devrez posséder d\'excellentes compétences analytiques, ainsi qu\'une solide compréhension des principes commerciaux.','2026-02-10','2026-03-10','8 semaines',1100,4,3,NULL,25,25),
(26,'Développeur Swift','En tant que développeur Swift, vous serez responsable du développement d\'applications pour les appareils iOS. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des applications performantes et conviviales. Vous devrez maîtriser le langage de programmation Swift, ainsi que les principaux frameworks iOS comme UIKit et SwiftUI.','2026-03-10','2026-04-10','8 semaines',980,3,2,NULL,26,26),
(27,'Administrateur Réseau','En tant qu\'administrateur réseau, vous serez responsable de la configuration, de la maintenance et de la sécurité des réseaux informatiques de l\'entreprise. Vous travaillerez en étroite collaboration avec les équipes de technologie de l\'information pour garantir la disponibilité et la performance du réseau. Vous devrez posséder des compétences en administration de systemes et une compréhension approfondie des protocoles réseau et des technologies de sécurité.','2026-04-10','2026-05-10','8 semaines',980,3,2,NULL,27,27),
(28,'Chef de Projet Marketing','En tant que chef de projet marketing, vous serez responsable de la planification, de la coordination et de l'exécution des campagnes marketing de l'entreprise. Vous travaillerez en étroite collaboration avec les équipes de marketing pour élaborer des stratégies marketing efficaces et atteindre les objectifs de l'entreprise. Vous devrez posséder d'excellentes compétences en gestion de projet, ainsi qu'une connaissance approfondie du marketing digital et des techniques de communication.','2026-05-10','2026-06-10','8 semaines',1100,4,3,NULL,28,28),
(29,'Développeur Angular','En tant que développeur Angular, vous serez responsable du développement d'applications web basées sur le framework Angular. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des applications robustes et évolutives. Vous devrez maîtriser Angular ainsi que les langages web front-end comme HTML, CSS et JavaScript.','2026-06-10','2026-07-10','8 semaines',980,3,2,NULL,29,29),
(30,'Responsable des Opérations','En tant que responsable des opérations, vous serez chargé de superviser les opérations quotidiennes de l'entreprise pour garantir l'efficacité opérationnelle et la satisfaction des clients. Vous travaillerez en étroite collaboration avec les équipes de production, de logistique et de service client pour optimiser les processus et résoudre les problèmes opérationnels. Vous devrez posséder d'excellentes compétences en gestion opérationnelle, ainsi qu'une capacité à prendre des décisions rapidement et efficacement.','2026-07-10','2026-08-10','8 semaines',1100,4,3,NULL,30,30),
(31,'Développeur TypeScript','En tant que développeur TypeScript, vous serez responsable du développement d'applications web basées sur le langage TypeScript. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des applications modernes et performantes. Vous devrez maîtriser TypeScript ainsi que les principaux frameworks frontend comme Angular ou React.','2026-08-10','2026-09-10','8 semaines',980,3,2,NULL,31,31),
(32,'Responsable Marketing Digital','En tant que responsable marketing digital, vous serez chargé de définir et de mettre en œuvre la stratégie de marketing digital de l'entreprise. Vous travaillerez en étroite collaboration avec les équipes de marketing pour développer des campagnes en ligne efficaces et atteindre les objectifs de l'entreprise en termes de génération de leads et de notoriété de la marque. Vous devrez posséder une solide connaissance du marketing digital, ainsi que des compétences en analyse de données et en gestion de projet.','2026-09-10','2026-10-10','8 semaines',1100,4,3,NULL,32,32),
(33,'Développeur React','En tant que développeur React, vous serez responsable du développement d'applications web basées sur le framework React. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des interfaces utilisateur modernes et réactives. Vous devrez maîtriser React ainsi que les langages web front-end comme HTML, CSS et JavaScript.','2026-10-10','2026-11-10','8 semaines',980,3,2,NULL,33,33),
(34,'Responsable des Ventes','En tant que responsable des ventes, vous serez chargé de superviser l'équipe de vente de l'entreprise et d'atteindre les objectifs de vente fixés. Vous travaillerez en étroite collaboration avec les équipes de marketing pour développer des stratégies de vente efficaces et avec les clients pour comprendre leurs besoins et leurs préoccupations. Vous devrez posséder d'excellentes compétences en leadership, en communication et en négociation.','2026-11-10','2026-12-10','8 semaines',1100,4,3,NULL,34,34),
(35,'Développeur Vue.js','En tant que développeur Vue.js, vous serez responsable du développement d'applications web basées sur le framework Vue.js. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des interfaces utilisateur interactives et dynamiques. Vous devrez maîtriser Vue.js ainsi que les langages web front-end comme HTML, CSS et JavaScript.','2026-12-10','2027-01-10','8 semaines',980,3,2,NULL,35,35),
(36,'Chef de Projet Digital','En tant que chef de projet digital, vous serez responsable de la gestion des projets numériques de l'entreprise, de la conception à la mise en œuvre. Vous travaillerez en étroite collaboration avec les équipes de développement, de design et de marketing pour livrer des solutions numériques innovantes et réussies. Vous devrez posséder d'excellentes compétences en gestion de projet, ainsi qu'une solide compréhension des technologies numériques et des tendances du marché.','2027-01-10','2027-02-10','8 semaines',1250,4,3,NULL,36,36),
(37,'Développeur Go','En tant que développeur Go, vous serez responsable du développement d'applications et de services basés sur le langage de programmation Go. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des solutions efficaces et évolutives. Vous devrez maîtriser Go ainsi que les principaux concepts de programmation concurrente et les technologies de cloud computing.','2027-02-10','2027-03-10','8 semaines',980,3,2,NULL,37,37),
(38,'Chef de Produit Digital','En tant que chef de produit digital, vous serez responsable du développement et de la gestion des produits numériques de l'entreprise, de la conception à la commercialisation. Vous travaillerez en étroite collaboration avec les équipes de développement, de design et de marketing pour élaborer des stratégies de produit efficaces et atteindre les objectifs commerciaux de l'entreprise. Vous devrez posséder d'excellentes compétences en gestion de produit, ainsi qu'une solide compréhension des technologies numériques et des tendances du marché.','2027-03-10','2027-04-10','8 semaines',1250,4,3,NULL,38,38),
(39,'Ingénieur Cloud','En tant qu'ingénieur cloud, vous serez responsable de la conception, du déploiement et de la gestion de l'infrastructure cloud de l'entreprise. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des architectures cloud évolutives et sécurisées. Vous devrez posséder une solide expérience dans les technologies de cloud computing, ainsi qu'une connaissance approfondie des services cloud tels que AWS, Azure ou Google Cloud Platform.','2027-04-10','2027-05-10','8 semaines',1100,4,3,NULL,39,39),
(40,'Développeur Rust','En tant que développeur Rust, vous serez responsable du développement d'applications système sécurisées et performantes. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des solutions robustes et évolutives. Vous devrez maîtriser le langage de programmation Rust ainsi que les principaux concepts de la programmation système et de la sécurité informatique.','2027-05-10','2027-06-10','8 semaines',980,3,2,NULL,40,40),
(41,'Responsable de la Stratégie Digitale','En tant que responsable de la stratégie digitale, vous serez responsable de la définition et de la mise en œuvre de la stratégie numérique de l'entreprise. Vous travaillerez en étroite collaboration avec les cadres supérieurs pour identifier les opportunités de croissance et développer des initiatives numériques innovantes. Vous devrez posséder d'excellentes compétences en stratégie d'entreprise, ainsi qu'une solide compréhension des technologies numériques et des tendances du marché.','2027-06-10','2027-07-10','8 semaines',1250,4,3,NULL,41,41),
(42,'Développeur.NET','En tant que développeur .NET, vous serez responsable du développement d'applications basées sur la plateforme .NET de Microsoft. Vous travaillerez en étroite collaboration avec les équipes de développement pour concevoir des solutions techniques robustes et évolutives. Vous devrez maîtriser les langages de programmation comme C# ainsi que les principaux frameworks .NET.','2027-07-10','2027-08-10','8 semaines',980,3,2,NULL,42,42),
(43,'Responsable de l'Expérience Client','En tant que responsable de l'expérience client, vous serez responsable de la définition et de la mise en œuvre de la stratégie d'expérience client de l'entreprise. Vous travaillerez en étroite collaboration avec les équipes de vente, de marketing et de service client pour offrir une expérience client exceptionnelle à toutes les étapes du parcours client. Vous devrez posséder d'excellentes compétences en analyse de l'expérience client, ainsi qu'une compréhension approfondie des besoins et des préférences des clients.','2027-08-10','2027-09-10','8 semaines',1100,4,3,NULL,43,43),
(44,'Développeur Flutter','En tant que développeur Flutter, vous serez responsable du développement d'applications mobiles multiplateformes à l'aide du framework Flutter. Vous travaillerez en étroite collaboration avec les équipes de développement pour créer des expériences utilisateur fluides et performantes. Vous devrez maîtriser Dart ainsi que les principaux concepts de Flutter et du développement mobile.','2027-09-10','2027-10-10','8 semaines',980,3,2,NULL,44,44),
(45,'Responsable des Partenariats','En tant que responsable des partenariats, vous serez responsable de la gestion et du développement des partenariats stratégiques de l'entreprise. Vous travaillerez en étroite collaboration avec les équipes de direction pour identifier les opportunités de partenariat, négocier des accords et gérer les relations avec les partenaires. Vous devrez posséder d'excellentes compétences en négociation, en communication et en gestion de relation client.','2027-10-10','2027-11-10','8 semaines',1100,4,3,NULL,45,45),
(46,'Développeur Machine Learning','En tant que développeur en apprentissage automatique, vous serez responsable du développement et de la mise en œuvre de modèles d'apprentissage automatique pour résoudre des problèmes commerciaux complexes. Vous travaillerez en étroite collaboration avec les équipes de données et de développement pour collecter, préparer et analyser les données, puis construire et déployer des modèles d'apprentissage automatique efficaces.','2027-11-10','2027-12-10','8 semaines',1250,3,2,NULL,46,46),
(47,'Chef de Produit Technique','En tant que chef de produit technique, vous serez responsable du développement et de la gestion des produits technologiques de l'entreprise. Vous travaillerez en étroite collaboration avec les équipes de développement pour définir la vision du produit, établir la feuille de route et superviser le cycle de vie du produit. Vous devrez posséder d'excellentes compétences en gestion de produit, ainsi qu'une solide compréhension des technologies et des tendances du marché.','2027-12-10','2028-01-10','8 semaines',1250,4,3,NULL,47,47),
(48,'Ingénieur en Sécurité des Systèmes','En tant qu'ingénieur en sécurité des systèmes, vous serez responsable de la conception, de la mise en œuvre et de la gestion des mesures de sécurité informatique pour protéger les systèmes de l'entreprise contre les menaces et les cyberattaques. Vous travaillerez en étroite collaboration avec les équipes de technologie de l'information pour évaluer les risques, élaborer des stratégies de sécurité et mettre en œuvre des solutions de sécurité efficaces.','2028-01-10','2028-02-10','8 semaines',1100,3,2,NULL,48,48),
(49,'Responsable du Développement Commercial','En tant que responsable du développement commercial, vous serez responsable de la croissance des revenus et de l'expansion du portefeuille client de l'entreprise. Vous travaillerez en étroite collaboration avec les équipes de vente pour identifier les opportunités commerciales, développer des relations avec les clients et négocier des contrats. Vous devrez posséder d'excellentes compétences en vente, ainsi qu'une compréhension approfondie du marché et des produits de l'entreprise.','2028-02-10','2028-03-10','8 semaines',1100,4,3,NULL,49,49),
(50,'Développeur Unity','En tant que développeur Unity, vous serez responsable du développement de jeux et d'applications interactives utilisant le moteur de jeu Unity. Vous travaillerez en étroite collaboration avec les concepteurs de jeux pour créer des expériences immersives et captivantes. Vous devrez maîtriser C# ainsi que les outils et les fonctionnalités de développement de Unity.','2028-03-10','2028-04-10','8 semaines',980,3,2,NULL,50,50);

/*!40000 ALTER TABLE `offre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offre_evaluation`
--

DROP TABLE IF EXISTS `offre_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offre_evaluation` (
  `ID_offre` int NOT NULL,
  `ID_avis` int NOT NULL,
  PRIMARY KEY (`ID_offre`,`ID_avis`),
  KEY `ID_avis` (`ID_avis`),
  CONSTRAINT `offre_evaluation_ibfk_1` FOREIGN KEY (`ID_offre`) REFERENCES `offre` (`ID_offre`),
  CONSTRAINT `offre_evaluation_ibfk_2` FOREIGN KEY (`ID_avis`) REFERENCES `avis` (`ID_avis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offre_evaluation`
--

LOCK TABLES `offre_evaluation` WRITE;
/*!40000 ALTER TABLE `offre_evaluation` DISABLE KEYS */;
INSERT INTO `offre_evaluation` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),
(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),
(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),
(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `offre_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilote`
--

DROP TABLE IF EXISTS `pilote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pilote` (
  `ID_utilisateur` int NOT NULL,
  PRIMARY KEY (`ID_utilisateur`),
  CONSTRAINT `pilote_ibfk_1` FOREIGN KEY (`ID_utilisateur`) REFERENCES `utilisateur` (`ID_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilote`
--

LOCK TABLES `pilote` WRITE;
/*!40000 ALTER TABLE `pilote` DISABLE KEYS */;
INSERT INTO `pilote` VALUES (2),(51),(52),(53),(54) ;
/*!40000 ALTER TABLE `pilote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `ID_promotion` int NOT NULL,
  `Nom_promotion` varchar(255) DEFAULT NULL,
  `Specialite` varchar(255) DEFAULT NULL,
  `Annee_promotion` int DEFAULT NULL,
  `ID_utilisateur` int DEFAULT NULL,
  `ID_campus` int DEFAULT NULL,
  PRIMARY KEY (`ID_promotion`),
  KEY `ID_utilisateur` (`ID_utilisateur`),
  KEY `ID_campus` (`ID_campus`),
  CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`ID_utilisateur`) REFERENCES `utilisateur` (`ID_utilisateur`),
  CONSTRAINT `promotion_ibfk_2` FOREIGN KEY (`ID_campus`) REFERENCES `campus` (`ID_campus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES 
(1,'Promotion 2024','Informatique',2024,NULL,1),
(2,'Promotion 2025','S3E',2025,NULL,2),
(3,'Promotion 2024','Généraliste',2024,NULL,3),
(4,'Promotion 2025','BTP',2025,NULL,4),
(5,'Promotion 2024','Informatique',2024,NULL,5),
(6,'Promotion 2025','S3E',2025,NULL,6),
(7,'Promotion 2024','Généraliste',2024,NULL,7),
(8,'Promotion 2025','BTP',2025,NULL,8),
(9,'Promotion 2024','Informatique',2024,NULL,9),
(10,'Promotion 2025','S3E',2025,NULL,10),
(11,'Promotion 2024','Généraliste',2024,NULL,11),
(12,'Promotion 2025','BTP',2025,NULL,12),
(13,'Promotion 2024','Informatique',2024,NULL,13),
(14,'Promotion 2025','S3E',2025,NULL,14),
(15,'Promotion 2024','Généraliste',2024,NULL,15),
(16,'Promotion 2025','BTP',2025,NULL,16),
(17,'Promotion 2024','Informatique',2024,NULL,17),
(18,'Promotion 2025','S3E',2025,NULL,18),
(19,'Promotion 2024','Généraliste',2024,NULL,19),
(20,'Promotion 2025','BTP',2025,NULL,20),
(21,'Promotion 2024','Informatique',2024,NULL,21),
(22,'Promotion 2025','S3E',2025,NULL,22),
(23,'Promotion 2024','Généraliste',2024,NULL,23),
(24,'Promotion 2025','BTP',2025,NULL,24),
(25,'Promotion 2024','Informatique',2024,NULL,25),
(26,'Promotion 2025','S3E',2025,NULL,26),
(27,'Promotion 2024','Généraliste',2024,NULL,27),
(28,'Promotion 2025','BTP',2025,NULL,28),
(29,'Promotion 2024','Informatique',2024,NULL,29),
(30,'Promotion 2025','S3E',2025,NULL,30),
(31,'Promotion 2024','Généraliste',2024,NULL,31),
(32,'Promotion 2025','BTP',2025,NULL,32),
(33,'Promotion 2024','Informatique',2024,NULL,33),
(34,'Promotion 2025','S3E',2025,NULL,34),
(35,'Promotion 2024','Généraliste',2024,NULL,35),
(36,'Promotion 2025','BTP',2025,NULL,36),
(37,'Promotion 2024','Informatique',2024,NULL,37),
(38,'Promotion 2025','S3E',2025,NULL,38),
(39,'Promotion 2024','Généraliste',2024,NULL,39),
(40,'Promotion 2025','BTP',2025,NULL,40),
(41,'Promotion 2024','Informatique',2024,NULL,41),
(42,'Promotion 2025','S3E',2025,NULL,42),
(43,'Promotion 2024','Généraliste',2024,NULL,43),
(44,'Promotion 2025','BTP',2025,NULL,44),
(45,'Promotion 2024','Informatique',2024,NULL,45),
(46,'Promotion 2025','S3E',2025,NULL,46),
(47,'Promotion 2024','Généraliste',2024,NULL,47),
(48,'Promotion 2025','BTP',2025,NULL,48),
(49,'Promotion 2024','Informatique',2024,NULL,49),
(50,'Promotion 2025','S3E',2025,NULL,50);

/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur` (
  `ID_utilisateur` int NOT NULL,
  `Prenom` varchar(255) DEFAULT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `date_de_naissance` date DEFAULT NULL,
  `photo_profil` varchar(255),
  `banniere` varchar(255),
  `date_de_suppression` date DEFAULT NULL,
  PRIMARY KEY (`ID_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES 
(1,'Alice','Durand','alice.duran@viacesi.fr','pass123','1990-05-21',NULL,NULL,NULL),
(2,'Bob','Martin','bob.martin@viacesi.fr','pass456','1988-11-11',NULL,NULL,NULL),
(3,'Carole','Petit','carole.petit@viacesi.fr','pass789','1992-02-07',NULL,NULL,NULL),
(4,'David','Leroy','david.leroy@viacesi.fr','pass101','1993-03-08',NULL,NULL,NULL),
(5,'Eva','Joly','eva.joly@viacesi.fr','pass202','1987-07-14',NULL,NULL,NULL),
(6,'Fabien','Dubois','fabien.dubois@viacesi.fr','pass123','1990-05-21',NULL,NULL,NULL),
(7,'Géraldine','Lefevre','geraldine.lefevre@viacesi.fr','pass456','1988-11-11',NULL,NULL,NULL),
(8,'Hugo','Roux','hugo.roux@viacesi.fr','pass789','1992-02-07',NULL,NULL,NULL),
(9,'Isabelle','Moreau','isabelle.moreau@viacesi.fr','pass101','1993-03-08',NULL,NULL,NULL),
(10,'Jonathan','Lecomte','jonathan.lecomte@viacesi.fr','pass202','1987-07-14',NULL,NULL,NULL),
(11,'Karim','Girard','karim.girard@viacesi.fr','pass123','1990-05-21',NULL,NULL,NULL),
(12,'Léa','Lemoine','lea.lemoine@viacesi.fr','pass456','1988-11-11',NULL,NULL,NULL),
(13,'Marine','Dupuis','marine.dupuis@viacesi.fr','pass789','1992-02-07',NULL,NULL,NULL),
(14,'Nicolas','Roy','nicolas.roy@viacesi.fr','pass101','1993-03-08',NULL,NULL,NULL),
(15,'Ophélie','Brun','ophelie.brun@viacesi.fr','pass202','1987-07-14',NULL,NULL,NULL),
(16,'Paul','Lefebvre','paul.lefebvre@viacesi.fr','pass123','1990-05-21',NULL,NULL,NULL),
(17,'Quentin','Mercier','quentin.mercier@viacesi.fr','pass456','1988-11-11',NULL,NULL,NULL),
(18,'Rachel','Guérin','rachel.guerin@viacesi.fr','pass789','1992-02-07',NULL,NULL,NULL),
(19,'Sébastien','Leroux','sebastien.leroux@viacesi.fr','pass101','1993-03-08',NULL,NULL,NULL),
(20,'Thomas','Dupont','thomas.dupont@viacesi.fr','pass202','1987-07-14',NULL,NULL,NULL),
(21,'Ulysse','Fournier','ulysse.fournier@viacesi.fr','pass123','1990-05-21',NULL,NULL,NULL),
(22,'Valérie','Lecompte','valerie.lecompte@viacesi.fr','pass456','1988-11-11',NULL,NULL,NULL),
(23,'Wendy','Millet','wendy.millet@viacesi.fr','pass789','1992-02-07',NULL,NULL,NULL),
(24,'Xavier','Perrin','xavier.perrin@viacesi.fr','pass101','1993-03-08',NULL,NULL,NULL),
(25,'Yann','Renard','yann.renard@viacesi.fr','pass202','1987-07-14',NULL,NULL,NULL),
(26,'Zoé','Bertrand','zoe.bertrand@viacesi.fr','pass123','1990-05-21',NULL,NULL,NULL),
(27,'Antoine','Lemoine','antoine.lemoine@viacesi.fr','pass456','1988-11-11',NULL,NULL,NULL),
(28,'Béatrice','Morin','beatrice.morin@viacesi.fr','pass789','1992-02-07',NULL,NULL,NULL),
(29,'Camille','Renaud','camille.renaud@viacesi.fr','pass101','1993-03-08',NULL,NULL,NULL),
(30,'Dominique','Simon','dominique.simon@viacesi.fr','pass202','1987-07-14',NULL,NULL,NULL),
(31,'Émilie','Girard','emilie.girard@viacesi.fr','pass123','1990-05-21',NULL,NULL,NULL),
(32,'Frédéric','Lefèvre','frederic.lefevre@viacesi.fr','pass456','1988-11-11',NULL,NULL,NULL),
(33,'Gérard','Moreau','gerard.moreau@viacesi.fr','pass789','1992-02-07',NULL,NULL,NULL),
(34,'Hélène','Dupont','helene.dupont@viacesi.fr','pass101','1993-03-08',NULL,NULL,NULL),
(35,'Isaac','Roy','isaac.roy@viacesi.fr','pass202','1987-07-14',NULL,NULL,NULL),
(36,'Juliette','Brun','juliette.brun@viacesi.fr','pass123','1990-05-21',NULL,NULL,NULL),
(37,'Kevin','Lefebvre','kevin.lefebvre@viacesi.fr','pass456','1988-11-11',NULL,NULL,NULL),
(38,'Laure','Mercier','laure.mercier@viacesi.fr','pass789','1992-02-07',NULL,NULL,NULL),
(39,'Maxime','Guérin','maxime.guerin@viacesi.fr','pass101','1993-03-08',NULL,NULL,NULL),
(40,'Nathalie','Leroux','nathalie.leroux@viacesi.fr','pass202','1987-07-14',NULL,NULL,NULL),
(41,'Olivier','Dupont','olivier.dupont@viacesi.fr','pass123','1990-05-21',NULL,NULL,NULL),
(42,'Pascal','Fournier','pascal.fournier@viacesi.fr','pass456','1988-11-11',NULL,NULL,NULL),
(43,'Quentin','Lecompte','quentin.lecompte@viacesi.fr','pass789','1992-02-07',NULL,NULL,NULL),
(44,'Romain','Millet','romain.millet@viacesi.fr','pass101','1993-03-08',NULL,NULL,NULL),
(45,'Sophie','Perrin','sophie.perrin@viacesi.fr','pass202','1987-07-14',NULL,NULL,NULL),
(46,'Théo','Renard','theo.renard@viacesi.fr','pass123','1990-05-21',NULL,NULL,NULL),
(47,'Ulysse','Bertrand','ulysse.bertrand@viacesi.fr','pass456','1988-11-11',NULL,NULL,NULL),
(48,'Valérie','Lemoine','valerie.lemoine@viacesi.fr','pass789','1992-02-07',NULL,NULL,NULL),
(49,'Laurent','Pouleto','laurent.pouleto@viacesi.fr','pass542','2000-04-02',NULL,NULL,NULL),
(50,'William','Martin','william.martin@viacesi.fr','pass123','1990-05-21',NULL,NULL,NULL),
(51,'Xavier','Girard','xavier.girard@viacesi.fr','pass456','1988-11-11',NULL,NULL,NULL),
(52,'Yasmine','Lefevre','yasmine.lefevre@viacesi.fr','pass789','1992-02-07',NULL,NULL,NULL),
(53,'Zoé','Moreau','zoe.moreau@viacesi.fr','pass101','1993-03-08',NULL,NULL,NULL),
(54,'Arthur','Dupuis','arthur.dupuis@viacesi.fr','pass202','1987-07-14',NULL,NULL,NULL);
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `ID_wishlist` int NOT NULL,
  `ID_utilisateur` int DEFAULT NULL,
  PRIMARY KEY (`ID_wishlist`),
  KEY `ID_utilisateur` (`ID_utilisateur`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`ID_utilisateur`) REFERENCES `utilisateur` (`ID_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),
(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),
(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),
(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06 16:36:10
