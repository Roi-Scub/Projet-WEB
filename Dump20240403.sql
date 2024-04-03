-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: site_web
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access` (
  `Promotion_Id` int(11) NOT NULL,
  `Offer_Id` int(11) NOT NULL,
  PRIMARY KEY (`Promotion_Id`,`Offer_Id`),
  KEY `Offer_Id` (`Offer_Id`),
  CONSTRAINT `access_ibfk_1` FOREIGN KEY (`Promotion_Id`) REFERENCES `promotion` (`Promotion_Id`),
  CONSTRAINT `access_ibfk_2` FOREIGN KEY (`Offer_Id`) REFERENCES `offer` (`Offer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` VALUES (1,1),(1,14),(1,27),(1,40),(2,2),(2,15),(2,28),(2,41),(3,3),(3,16),(3,29),(3,42),(4,4),(4,17),(4,30),(4,43),(5,5),(5,18),(5,31),(5,44),(6,6),(6,19),(6,32),(6,45),(7,7),(7,20),(7,33),(7,46),(8,8),(8,21),(8,34),(8,47),(9,9),(9,22),(9,35),(9,48),(10,10),(10,23),(10,36),(10,49),(11,11),(11,24),(11,37),(11,50),(12,12),(12,25),(12,38),(13,13),(13,26),(13,39);
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `Address_Id` int(11) NOT NULL,
  `Address_Name` varchar(255) DEFAULT NULL,
  `Address_City` varchar(255) DEFAULT NULL,
  `Address_Postal_Code` varchar(6) DEFAULT NULL,
  `Address_Deleted_At` datetime DEFAULT NULL,
  `Business_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Address_Id`),
  KEY `Business_Id` (`Business_Id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`Business_Id`) REFERENCES `business` (`Business_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL,NULL),(20,NULL,NULL,NULL,NULL,NULL),(21,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,NULL,NULL,NULL),(25,NULL,NULL,NULL,NULL,NULL),(26,NULL,NULL,NULL,NULL,NULL),(27,NULL,NULL,NULL,NULL,NULL),(28,NULL,NULL,NULL,NULL,NULL),(29,NULL,NULL,NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL,NULL),(33,NULL,NULL,NULL,NULL,NULL),(34,NULL,NULL,NULL,NULL,NULL),(35,NULL,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,NULL,NULL),(37,NULL,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,NULL,NULL),(39,NULL,NULL,NULL,NULL,NULL),(40,NULL,NULL,NULL,NULL,NULL),(41,NULL,NULL,NULL,NULL,NULL),(42,NULL,NULL,NULL,NULL,NULL),(43,NULL,NULL,NULL,NULL,NULL),(44,NULL,NULL,NULL,NULL,NULL),(45,NULL,NULL,NULL,NULL,NULL),(46,NULL,NULL,NULL,NULL,NULL),(47,NULL,NULL,NULL,NULL,NULL),(48,NULL,NULL,NULL,NULL,NULL),(49,NULL,NULL,NULL,NULL,NULL),(50,NULL,NULL,NULL,NULL,NULL),(51,NULL,NULL,NULL,NULL,NULL),(52,NULL,NULL,NULL,NULL,NULL),(53,NULL,NULL,NULL,NULL,NULL),(54,NULL,NULL,NULL,NULL,NULL),(55,NULL,NULL,NULL,NULL,NULL),(56,NULL,NULL,NULL,NULL,NULL),(57,NULL,NULL,NULL,NULL,NULL),(58,NULL,NULL,NULL,NULL,NULL),(59,NULL,NULL,NULL,NULL,NULL),(60,NULL,NULL,NULL,NULL,NULL),(61,NULL,NULL,NULL,NULL,NULL),(62,NULL,NULL,NULL,NULL,NULL),(63,NULL,NULL,NULL,NULL,NULL),(64,NULL,NULL,NULL,NULL,NULL),(65,NULL,NULL,NULL,NULL,NULL),(66,NULL,NULL,NULL,NULL,NULL),(67,NULL,NULL,NULL,NULL,NULL),(68,NULL,NULL,NULL,NULL,NULL),(69,NULL,NULL,NULL,NULL,NULL),(70,NULL,NULL,NULL,NULL,NULL),(71,NULL,NULL,NULL,NULL,NULL),(72,NULL,NULL,NULL,NULL,NULL),(73,NULL,NULL,NULL,NULL,NULL),(74,NULL,NULL,NULL,NULL,NULL),(75,NULL,NULL,NULL,NULL,NULL),(76,NULL,NULL,NULL,NULL,NULL),(77,NULL,NULL,NULL,NULL,NULL),(78,NULL,NULL,NULL,NULL,NULL),(79,NULL,NULL,NULL,NULL,NULL),(80,NULL,NULL,NULL,NULL,NULL),(81,NULL,NULL,NULL,NULL,NULL),(82,NULL,NULL,NULL,NULL,NULL),(83,NULL,NULL,NULL,NULL,NULL),(84,NULL,NULL,NULL,NULL,NULL),(85,NULL,NULL,NULL,NULL,NULL),(86,NULL,NULL,NULL,NULL,NULL),(87,NULL,NULL,NULL,NULL,NULL),(88,NULL,NULL,NULL,NULL,NULL),(89,NULL,NULL,NULL,NULL,NULL),(90,NULL,NULL,NULL,NULL,NULL),(91,NULL,NULL,NULL,NULL,NULL),(92,NULL,NULL,NULL,NULL,NULL),(93,NULL,NULL,NULL,NULL,NULL),(94,NULL,NULL,NULL,NULL,NULL),(95,NULL,NULL,NULL,NULL,NULL),(96,NULL,NULL,NULL,NULL,NULL),(97,NULL,NULL,NULL,NULL,NULL),(98,NULL,NULL,NULL,NULL,NULL),(99,NULL,NULL,NULL,NULL,NULL),(100,NULL,NULL,NULL,NULL,NULL),(101,NULL,NULL,NULL,NULL,NULL),(102,NULL,NULL,NULL,NULL,NULL),(103,NULL,NULL,NULL,NULL,NULL),(104,NULL,NULL,NULL,NULL,NULL),(105,NULL,NULL,NULL,NULL,NULL),(106,NULL,NULL,NULL,NULL,NULL),(107,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Profile_Id` int(11) NOT NULL,
  PRIMARY KEY (`Profile_Id`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Profile_Id`) REFERENCES `profile` (`Profile_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
-- Table structure for table `appliance`
--

DROP TABLE IF EXISTS `appliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appliance` (
  `Appliance_Id` int(11) NOT NULL,
  `Appliance_Cv` varchar(1500) DEFAULT NULL,
  `Appliance_Letter` varchar(1500) DEFAULT NULL,
  `Appliance_Deleted_At` datetime DEFAULT NULL,
  `Profile_Id` int(11) NOT NULL,
  `Offer_Id` int(11) NOT NULL,
  PRIMARY KEY (`Appliance_Id`),
  KEY `Profile_Id` (`Profile_Id`),
  KEY `Offer_Id` (`Offer_Id`),
  CONSTRAINT `appliance_ibfk_1` FOREIGN KEY (`Profile_Id`) REFERENCES `student` (`Profile_Id`),
  CONSTRAINT `appliance_ibfk_2` FOREIGN KEY (`Offer_Id`) REFERENCES `offer` (`Offer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appliance`
--

LOCK TABLES `appliance` WRITE;
/*!40000 ALTER TABLE `appliance` DISABLE KEYS */;
INSERT INTO `appliance` VALUES (1,NULL,NULL,NULL,5,1),(2,NULL,NULL,NULL,6,2),(3,NULL,NULL,NULL,7,2),(4,NULL,NULL,NULL,8,2),(5,NULL,NULL,NULL,9,2),(6,NULL,NULL,NULL,10,2),(7,NULL,NULL,NULL,11,2),(8,NULL,NULL,NULL,12,2),(9,NULL,NULL,NULL,13,2),(10,NULL,NULL,NULL,14,2),(11,NULL,NULL,NULL,15,2),(12,NULL,NULL,NULL,16,2),(13,NULL,NULL,NULL,17,2),(14,NULL,NULL,NULL,18,7),(15,NULL,NULL,NULL,19,10),(16,NULL,NULL,NULL,20,11),(17,NULL,NULL,NULL,21,15),(18,NULL,NULL,NULL,22,47),(19,NULL,NULL,NULL,23,45),(20,NULL,NULL,NULL,24,50),(21,NULL,NULL,NULL,25,5),(22,NULL,NULL,NULL,26,9),(23,NULL,NULL,NULL,27,25),(24,NULL,NULL,NULL,28,11),(25,NULL,NULL,NULL,29,46),(26,NULL,NULL,NULL,30,33),(27,NULL,NULL,NULL,31,32),(28,NULL,NULL,NULL,32,41),(29,NULL,NULL,NULL,33,44),(30,NULL,NULL,NULL,34,38),(31,NULL,NULL,NULL,35,37),(32,NULL,NULL,NULL,36,11),(33,NULL,NULL,NULL,37,14),(34,NULL,NULL,NULL,38,18),(35,NULL,NULL,NULL,39,19),(36,NULL,NULL,NULL,40,23),(37,NULL,NULL,NULL,41,19),(38,NULL,NULL,NULL,42,23),(39,NULL,NULL,NULL,43,23),(40,NULL,NULL,NULL,44,23),(41,NULL,NULL,NULL,45,4),(42,NULL,NULL,NULL,46,4),(43,NULL,NULL,NULL,47,4),(44,NULL,NULL,NULL,48,7),(45,NULL,NULL,NULL,49,7),(46,NULL,NULL,NULL,50,7);
/*!40000 ALTER TABLE `appliance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business` (
  `Business_Id` int(11) NOT NULL,
  `Business_Name` varchar(255) DEFAULT NULL,
  `Business_Description` varchar(1500) DEFAULT NULL,
  `Business_Sector` varchar(50) DEFAULT NULL,
  `Business_Picture_Link` varchar(255) DEFAULT NULL,
  `Business_Banner_Link` varchar(255) DEFAULT NULL,
  `Business_Deleted_At` datetime DEFAULT NULL,
  `Profile_Id` int(11) NOT NULL,
  PRIMARY KEY (`Business_Id`),
  KEY `Profile_Id` (`Profile_Id`),
  CONSTRAINT `business_ibfk_1` FOREIGN KEY (`Profile_Id`) REFERENCES `pilote` (`Profile_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES (1,'Google','Leader mondial des moteurs de recherche, Google propose également une large gamme de produits et services, allant des applications de productivité aux technologies d\'intelligence artificielle.','Technologie de l\'information et des services',NULL,NULL,NULL,3),(2,'Microsoft','Société multinationale renommée pour ses logiciels informatiques, ses services cloud et ses produits matériels.','Technologie de l\'information et des services',NULL,NULL,NULL,3),(3,'Apple','Connu pour ses produits électroniques grand public, y compris l\'iPhone, l\'iPad, les Mac et les services associés.','Technologie de l\'information et des services',NULL,NULL,NULL,3),(4,'Amazon','Plus grande plateforme de commerce électronique au monde, proposant également des services de cloud computing, de streaming et de distribution de contenu.','Commerce électronique, cloud computing',NULL,NULL,NULL,3),(5,'Facebook','Réseau social mondial permettant aux utilisateurs de se connecter, de partager du contenu et de communiquer.','Réseaux sociaux',NULL,NULL,NULL,3),(6,'IBM','Entreprise technologique proposant des services de cloud computing, d\'informatique cognitive et de solutions pour les entreprises.','Cloud computing, intelligence artificielle',NULL,NULL,NULL,3),(7,'Intel','Fabricant de semi-conducteurs, principalement connu pour ses processeurs informatiques.','Semi-conducteurs',NULL,NULL,NULL,3),(8,'Cisco Systems','Spécialisé dans les technologies de réseau, les équipements et les services pour les entreprises et les fournisseurs de services.','Technologie de l\'information et des services',NULL,NULL,NULL,3),(9,'Oracle Corporation','Fournisseur majeur de logiciels et de solutions cloud pour les entreprises, notamment dans les domaines des bases de données et des applications d\'entreprise.','Logiciels d\'entreprise, cloud computing',NULL,NULL,NULL,3),(10,'Adobe Inc.','Connu pour ses logiciels de création et de publication, y compris Photoshop, Illustrator et Acrobat.','Logiciels d\'entreprise, création et édition',NULL,NULL,NULL,3),(11,'Nvidia','Société de technologie spécialisée dans les processeurs graphiques (GPU) et les unités de traitement graphique (GPU).','Semi-conducteurs, technologie informatique',NULL,NULL,NULL,3),(12,'SAP','Fournisseur de logiciels de gestion d\'entreprise, notamment des solutions ERP et CRM.','Logiciels d\'entreprise',NULL,NULL,NULL,3),(13,'Dell Technologies','Fabricant d\'ordinateurs personnels, de serveurs, de stockage de données et de services associés.','Matériel informatique',NULL,NULL,NULL,3),(14,'HP Inc.','Fabricant d\'imprimantes, d\'ordinateurs personnels et d\'autres produits technologiques.','Matériel informatique, périphériques',NULL,NULL,NULL,3),(15,'Salesforce','Fournisseur de solutions de gestion de la relation client (CRM) basées sur le cloud.','Logiciels d\'entreprise, cloud computing',NULL,NULL,NULL,3),(16,'VMware','Spécialisé dans les logiciels de virtualisation, les infrastructures cloud et les solutions de mobilité.','Virtualisation, cloud computing',NULL,NULL,NULL,3),(17,'Tencent','Entreprise chinoise proposant une gamme de services Internet, notamment des jeux, des médias sociaux et des services financiers.','Technologie de l\'information et des services, dive',NULL,NULL,NULL,3),(18,'Alibaba Group','Plateforme de commerce électronique, de cloud computing et de services Internet, principalement en Chine.','Commerce électronique, cloud computing, services I',NULL,NULL,NULL,3),(19,'Accenture','Cabinet de conseil en management, services technologiques et externalisation.','Conseil en management, services technologiques',NULL,NULL,NULL,3),(20,'Netflix','Plateforme de streaming de films, de séries télévisées et de contenus originaux.','Divertissement, médias',NULL,NULL,NULL,3),(21,'Thales Group','Thales Group - Thales est un leader mondial des hautes technologies pour les marchés de l\'aérospatiale, du transport, de la défense et de la sécurité.','Aérospatiale, défense et sécurité.',NULL,NULL,NULL,4),(22,'Airbus Helicopters','Airbus Helicopters - Airbus Helicopters est le premier fabricant mondial d\'hélicoptères, proposant une large gamme de produits pour différents besoins civils et militaires.','Aérospatiale.',NULL,NULL,NULL,4),(23,'Amadeus IT Group','Amadeus IT Group - Amadeus IT Group est une société technologique spécialisée dans les solutions de voyage, fournissant des services de réservation, de distribution et de gestion pour l\'industrie du tourisme.','Technologie de voyage.',NULL,NULL,NULL,4),(24,'Ubisoft Entertainment','Ubisoft Entertainment - Ubisoft est une entreprise de développement et d\'édition de jeux vidéo, connue pour des franchises populaires telles que Assassin\'s Creed, Far Cry et Just Dance.','Jeux vidéo et divertissement.',NULL,NULL,NULL,4),(25,'Société Générale Group','Société Générale Group - Société Générale est l\'une des principales banques européennes, offrant une gamme complète de services financiers pour les particuliers, les entreprises et les institutions.','Services financiers.',NULL,NULL,NULL,4),(26,'Orange S.A.','Orange S.A. - Orange est l\'un des principaux opérateurs de télécommunications au monde, offrant des services de téléphonie mobile, d\'Internet et de télévision à des millions de clients.','Télécommunications.',NULL,NULL,NULL,4),(27,'Capgemini','Capgemini - Capgemini est une entreprise de services numériques et de conseil, proposant des solutions en matière de technologies de l\'information, de gestion et de transformation numérique.','Services numériques et conseil.',NULL,NULL,NULL,4),(28,'Altran Technologies','Altran Technologies - Altran est un leader mondial de l\'ingénierie et du conseil en innovation, offrant des services dans divers domaines technologiques, notamment l\'automobile, l\'aérospatiale et les télécommunications.','Ingénierie et conseil en innovation.',NULL,NULL,NULL,4),(29,'EDF Energy','EDF Energy - EDF Energy est un fournisseur d\'électricité et de gaz, engagé dans la production d\'énergie propre et le développement de solutions durables pour l\'avenir.','Énergie.',NULL,NULL,NULL,4),(30,'Cannes Lions International Festival of Creativity','Cannes Lions International Festival of Creativity - Le Festival international de la créativité de Cannes est un événement mondial majeur pour les professionnels de la publicité et du marketing, célébrant l\'innovation et l\'excellence créative.','Publicité et marketing.',NULL,NULL,NULL,4),(31,'Nice-Matin','Nice-Matin - Nice-Matin est un journal régional français couvrant l\'actualité de la région Provence-Alpes-Côte d\'Azur.','Médias et journalisme.',NULL,NULL,NULL,4),(32,'Sophia Antipolis','Sophia Antipolis - Sophia Antipolis est un parc technologique situé sur la Côte d\'Azur, abritant de nombreuses entreprises et centres de recherche dans les domaines de la technologie et de l\'innovation.','Technologie et innovation.',NULL,NULL,NULL,4),(33,'SOPRA Steria Group','SOPRA Steria Group - SOPRA Steria est un groupe de services informatiques et de conseil, offrant des solutions numériques et des services de transformation pour les entreprises et les organisations.','Services informatiques et de conseil.',NULL,NULL,NULL,4),(34,'ETS Global','ETS Global - ETS Global est une entreprise spécialisée dans l\'évaluation des compétences linguistiques et académiques, proposant des tests standardisés comme le TOEFL et le GRE.','Évaluation linguistique et académique.',NULL,NULL,NULL,4),(35,'Cannes Yachting Festival','Cannes Yachting Festival - Le Festival de la plaisance de Cannes est l\'un des plus grands salons nautiques au monde, présentant une large gamme de yachts et de bateaux de luxe.','Nautisme et plaisance.',NULL,NULL,NULL,4),(36,'Decathlon','Decathlon - Decathlon est une chaîne de magasins d\'articles de sport, proposant une large gamme de produits et d\'équipements pour différentes activités sportives.','Articles de sport et équipements.',NULL,NULL,NULL,4),(37,'INRAE - Institut national de recherche pour l\'agriculture, l\'alimentation et l\'environnement','INRAE - Institut national de recherche pour l\'agriculture, l\'alimentation et l\'environnement - L\'INRAE est un institut de recherche français dédié à l\'étude de l\'agriculture, de l\'alimentation et de l\'environnement, contribuant à la compréhension des enjeux agricoles et environnementaux.','Recherche agricole et environnementale.',NULL,NULL,NULL,4),(38,'Groupe Casino','Groupe Casino - Le Groupe Casino est un groupe de distribution français, exploitant une variété de magasins et de supermarchés sous différentes marques.','Distribution.',NULL,NULL,NULL,4),(39,'Acropolis','Acropolis - Acropolis est un centre de congrès et d\'expositions situé à Nice, accueillant des événements professionnels, culturels et scientifiques de grande envergure.','Gestion d\'événements et de congrès.',NULL,NULL,NULL,4),(40,'Digital Campus','Digital Campus - Digital Campus est une école supérieure spécialisée dans les métiers du numérique, offrant des formations en développement web, design graphique et marketing digital.','Éducation et formation en numérique.',NULL,NULL,NULL,4),(41,'Baticoncept','Entreprise spécialisée dans la construction de bâtiments écologiques et durables, offrant des solutions innovantes pour un avenir meilleur.','Construction résidentielle',NULL,NULL,NULL,4),(42,'Constructions du Futur','Constructions du Futur s\'engage à réaliser des projets de construction alliant modernité, qualité et respect de l\'environnement.','Construction commerciale',NULL,NULL,NULL,4),(43,'BTP Innovations','BTP Innovations est une entreprise à la pointe de la technologie, offrant des solutions novatrices pour les défis de la construction.','Construction industrielle',NULL,NULL,NULL,4),(44,'Urbanisme & Construction','Urbanisme & Construction œuvre à la réalisation d\'espaces urbains harmonieux et fonctionnels, intégrant les besoins des communautés locales.','Travaux publics',NULL,NULL,NULL,4),(45,'ProBat','ProBat est spécialisé dans la construction de bâtiments industriels et commerciaux, répondant aux exigences les plus élevées en matière de qualité et de sécurité.','Rénovation et restauration',NULL,NULL,NULL,4),(46,'Bâtiments et Travaux Publics','Bâtiments et Travaux Publics est une entreprise polyvalente, capable de réaliser des projets de construction de grande envergure dans tous les domaines du BTP.','Construction écologique',NULL,NULL,NULL,4),(47,'Constructions Durables','Constructions Durables s\'engage à construire des bâtiments respectueux de l\'environnement, en utilisant des matériaux écologiques et des techniques de construction durables.','Urbanisme et aménagement urbain',NULL,NULL,NULL,4),(48,'EcoConstruction','EcoConstruction est spécialisée dans les projets de construction écologique, favorisant l\'utilisation de matériaux naturels et renouvelables.','Construction durable',NULL,NULL,NULL,4),(49,'BTP Excellence','BTP Excellence vise l\'excellence dans tous ses projets de construction, en mettant l\'accent sur la qualité, la sécurité et la satisfaction client.','Génie civil',NULL,NULL,NULL,4),(50,'Rénovation & Patrimoine','Rénovation & Patrimoine est spécialisée dans la restauration et la préservation du patrimoine architectural, en respectant les techniques traditionnelles et les normes de conservation.','Construction de bâtiments spécialisés',NULL,NULL,NULL,4);
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `center`
--

DROP TABLE IF EXISTS `center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `center` (
  `Center_Id` int(11) NOT NULL,
  `Center_Name` varchar(255) DEFAULT NULL,
  `Address_Id` int(11) NOT NULL,
  PRIMARY KEY (`Center_Id`),
  UNIQUE KEY `Adress_Id` (`Address_Id`),
  CONSTRAINT `center_ibfk_1` FOREIGN KEY (`Address_Id`) REFERENCES `address` (`Address_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `center`
--

LOCK TABLES `center` WRITE;
/*!40000 ALTER TABLE `center` DISABLE KEYS */;
INSERT INTO `center` VALUES (1,'CESI_NICE',1),(2,'CESI_LYON',2),(3,'CESI_ORLEANS',3),(4,'CESI_NANTERRE',4),(5,'CESI_RENNES',5);
/*!40000 ALTER TABLE `center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contains`
--

DROP TABLE IF EXISTS `contains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contains` (
  `Wishlist_Id` int(11) NOT NULL,
  `Offer_Id` int(11) NOT NULL,
  PRIMARY KEY (`Wishlist_Id`,`Offer_Id`),
  KEY `Offer_Id` (`Offer_Id`),
  CONSTRAINT `contains_ibfk_1` FOREIGN KEY (`Wishlist_Id`) REFERENCES `wishlist` (`Wishlist_Id`),
  CONSTRAINT `contains_ibfk_2` FOREIGN KEY (`Offer_Id`) REFERENCES `offer` (`Offer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contains`
--

LOCK TABLES `contains` WRITE;
/*!40000 ALTER TABLE `contains` DISABLE KEYS */;
INSERT INTO `contains` VALUES (6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `contains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `got`
--

DROP TABLE IF EXISTS `got`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `got` (
  `Skill_Id` int(11) NOT NULL,
  `Profile_Id` int(11) NOT NULL,
  PRIMARY KEY (`Skill_Id`,`Profile_Id`),
  KEY `Profile_Id` (`Profile_Id`),
  CONSTRAINT `got_ibfk_1` FOREIGN KEY (`Skill_Id`) REFERENCES `skill` (`Skill_Id`),
  CONSTRAINT `got_ibfk_2` FOREIGN KEY (`Profile_Id`) REFERENCES `student` (`Profile_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `got`
--

LOCK TABLES `got` WRITE;
/*!40000 ALTER TABLE `got` DISABLE KEYS */;
INSERT INTO `got` VALUES (6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `got` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live`
--

DROP TABLE IF EXISTS `live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `live` (
  `Profile_Id` int(11) NOT NULL,
  `Address_Id` int(11) NOT NULL,
  PRIMARY KEY (`Profile_Id`,`Address_Id`),
  KEY `live_ibfk_2` (`Address_Id`),
  CONSTRAINT `live_ibfk_1` FOREIGN KEY (`Profile_Id`) REFERENCES `profile` (`Profile_Id`),
  CONSTRAINT `live_ibfk_2` FOREIGN KEY (`Address_Id`) REFERENCES `address` (`Address_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live`
--

LOCK TABLES `live` WRITE;
/*!40000 ALTER TABLE `live` DISABLE KEYS */;
INSERT INTO `live` VALUES (1,57),(2,58),(3,59),(4,60),(5,61),(6,62),(7,63),(8,64),(9,65),(10,66),(11,67),(12,68),(13,69),(14,70),(15,71),(16,72),(17,73),(18,74),(19,75),(20,76),(21,77),(22,78),(23,79),(24,80),(25,81),(26,82),(27,83),(28,84),(29,85),(30,86),(31,87),(32,88),(33,89),(34,90),(35,91),(36,92),(37,93),(38,94),(39,95),(40,96),(41,97),(42,98),(43,99),(44,100),(45,101),(46,102),(47,103),(48,104),(49,105),(50,106),(51,107);
/*!40000 ALTER TABLE `live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `need`
--

DROP TABLE IF EXISTS `need`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `need` (
  `Offer_Id` int(11) NOT NULL,
  `Skill_Id` int(11) NOT NULL,
  PRIMARY KEY (`Offer_Id`,`Skill_Id`),
  KEY `Skill_Id` (`Skill_Id`),
  CONSTRAINT `need_ibfk_1` FOREIGN KEY (`Offer_Id`) REFERENCES `offer` (`Offer_Id`),
  CONSTRAINT `need_ibfk_2` FOREIGN KEY (`Skill_Id`) REFERENCES `skill` (`Skill_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `need`
--

LOCK TABLES `need` WRITE;
/*!40000 ALTER TABLE `need` DISABLE KEYS */;
INSERT INTO `need` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `need` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `Notice_Id` int(11) NOT NULL,
  `Notice_Grade` decimal(15,2) DEFAULT NULL,
  `Notice_Comment` varchar(255) DEFAULT NULL,
  `Business_Id` int(11) NOT NULL,
  `Profile_Id` int(11) NOT NULL,
  PRIMARY KEY (`Notice_Id`),
  KEY `Business_Id` (`Business_Id`),
  KEY `Profile_Id` (`Profile_Id`),
  CONSTRAINT `notice_ibfk_1` FOREIGN KEY (`Business_Id`) REFERENCES `business` (`Business_Id`),
  CONSTRAINT `notice_ibfk_2` FOREIGN KEY (`Profile_Id`) REFERENCES `profile` (`Profile_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,4.50,'\'Excellente culture d\'entreprise.\'',1,8),(2,4.00,'\'Projets stimulants et équipe dynamique.\'',2,7),(3,3.80,'\'Bonne ambiance de travail mais manque de développement professionnel.\'',3,51),(4,4.20,'\'Environnement stimulant et équipe collaborative.\'',4,50),(5,4.70,'\'Entreprise innovante et opportunités de croissance.\'',5,5),(6,3.50,'\'Ambiance agréable mais manque de communication interne.\'',6,6),(7,4.80,'\'Leadership fort et reconnaissance des efforts des employés.\'',7,7),(8,4.30,'\'Projets variés et possibilités d\'apprentissage.\'',8,8),(9,3.90,'\'Environnement de travail convivial mais manque de perspectives d\'évolution.\'',9,9),(10,4.60,'\'Culture d\'entreprise inclusive et valeurs fortes.\'',10,10),(11,3.70,'\'Manque de soutien de la direction mais bonne collaboration entre collègues.\'',11,11),(12,4.10,'\'Opportunités de développement professionnel et culture d\'entreprise positive.\'',12,12),(13,4.40,'\'Bonne ambiance mais processus de décision parfois lents.\'',13,13),(14,4.90,'\'Environnement de travail stimulant et perspectives d\'avancement.\'',14,14),(15,3.60,'\'Manque de reconnaissance et de valorisation des employés.\'',15,15),(16,4.20,'\'Équipe dynamique et projets intéressants.\'',16,16),(17,4.70,'\'Entreprise axée sur l\'innovation et la collaboration.\'',17,17),(18,3.80,'\'Culture d\'entreprise positive mais manque de transparence.\'',18,18),(19,4.50,'\'Opportunités de formation et d\'évolution professionnelle.\'',19,19),(20,4.00,'\'Ambiance agréable mais manque de visibilité sur les projets futurs.\'',20,20),(21,4.80,'\'Leadership inspirant et valeurs d\'entreprise fortes.\'',21,21),(22,4.30,'\'Projets innovants et équipe motivée.\'',22,22),(23,3.90,'\'Environnement de travail convivial mais manque de flexibilité.\'',23,23),(24,4.60,'\'Culture d\'entreprise inclusive et esprit d\'équipe.\'',24,24),(25,3.70,'\'Manque de communication interne mais bonne ambiance.\'',25,25),(26,4.10,'\'Opportunités d\'apprentissage et de développement professionnel.\'',26,26),(27,4.40,'\'Bonne reconnaissance des employés et ambiance collaborative.\'',27,27),(28,4.90,'\'Culture d\'entreprise axée sur l\'innovation et la créativité.\'',28,28),(29,3.60,'\'Processus décisionnels parfois lents mais bonne ambiance de travail.\'',29,29),(30,4.20,'\'Équipe dynamique et projets stimulants.\'',30,30),(31,4.70,'\'Entreprise axée sur l\'innovation et la croissance.\'',31,31),(32,3.80,'\'Environnement de travail agréable mais manque de perspectives d\'évolution.\'',32,32),(33,4.50,'\'Leadership fort et reconnaissance des talents.\'',33,33),(34,4.00,'\'Projets variés et équipe collaborative.\'',34,34),(35,4.80,'\'Culture d\'entreprise inspirante et valeurs fortes.\'',35,35),(36,4.30,'\'Opportunités de développement professionnel et ambiance conviviale.\'',36,36),(37,3.90,'\'Manque de communication interne mais bonne cohésion d\'équipe.\'',37,37),(38,4.60,'\'Leadership motivant et culture d\'entreprise inclusive.\'',38,38),(39,3.70,'\'Processus décisionnels parfois lents mais bon équilibre vie professionnelle-vie personnelle.\'',39,39),(40,4.10,'\'Projets stimulants et opportunités de formation.\'',40,40),(41,4.40,'\'Bonne ambiance de travail et reconnaissance des efforts.\'',41,41),(42,4.90,'\'Entreprise innovante et équipe talentueuse.\'',42,42),(43,3.60,'\'Manque de transparence sur les décisions mais bonne ambiance de travail.\'',43,43),(44,4.20,'\'Projets intéressants et équipe dynamique.\'',44,44),(45,4.70,'\'Culture d\'entreprise axée sur l\'innovation et la collaboration.\'',45,45),(46,3.80,'\'Environnement de travail convivial mais manque de flexibilité horaire.\'',46,46),(47,4.50,'\'Leadership inspirant et opportunités de développement.\'',47,47),(48,4.00,'\'Équipe motivée et projets variés.\'',48,48),(49,4.80,'\'Culture d\'entreprise positive et valeurs partagées.\'',49,49),(50,4.30,'\'Opportunités de croissance professionnelle et bonne ambiance de travail.\'',50,50);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer` (
  `Offer_Id` int(11) NOT NULL,
  `Offer_Name` varchar(100) DEFAULT NULL,
  `Offer_Description` varchar(1500) DEFAULT NULL,
  `Offer_Date` date DEFAULT NULL,
  `Offer_Start_Date` date DEFAULT NULL,
  `Offer_Duration` int(11) DEFAULT NULL,
  `Offer_Salary` decimal(15,2) DEFAULT NULL,
  `Offer_Number_Of_Places` int(11) DEFAULT NULL,
  `Offer_Number_Of_Places_Taken` int(11) DEFAULT NULL,
  `Offer_Deleted_At` datetime DEFAULT NULL,
  `Business_Id` int(11) NOT NULL,
  `Profile_Id` int(11) NOT NULL,
  PRIMARY KEY (`Offer_Id`),
  KEY `Business_Id` (`Business_Id`),
  KEY `Profile_Id` (`Profile_Id`),
  CONSTRAINT `offer_ibfk_1` FOREIGN KEY (`Business_Id`) REFERENCES `business` (`Business_Id`),
  CONSTRAINT `offer_ibfk_2` FOREIGN KEY (`Profile_Id`) REFERENCES `pilote` (`Profile_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer`
--

LOCK TABLES `offer` WRITE;
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
INSERT INTO `offer` VALUES (1,'Développeur Full Stack','Concevez et développez des applications web complètes, de la base de données au frontend.','2024-03-14','2024-05-18',8,600.00,3,1,NULL,1,3),(2,'Ingénieur en sécurité informatique','Assurez la sécurité des systèmes d\'information en mettant en place des mesures de protection avancées.','2024-03-15','2025-06-21',12,700.00,3,0,NULL,2,3),(3,'Analyste de données','Analysez de vastes ensembles de données pour extraire des informations précieuses et prendre des décisions éclairées.','2024-03-16','2024-08-07',8,750.00,4,1,NULL,3,3),(4,'Administrateur systèmes et réseaux','Gérez et maintenez l\'infrastructure informatique d\'une entreprise, garantissant une connectivité et une disponibilité optimales.','2024-03-17','2024-10-30',16,550.00,3,0,NULL,4,3),(5,'Développeur mobile iOS/Android','Créez des applications mobiles performantes pour les plateformes iOS et Android.','2024-03-18','2025-04-01',12,650.00,5,2,NULL,5,3),(6,'Architecte cloud','Concevez des solutions d\'infrastructure cloud évolutives et sécurisées pour les entreprises.','2024-03-19','2024-06-21',8,800.00,4,3,NULL,6,3),(7,'Spécialiste en intelligence artificielle','Exploitez le potentiel de l\'intelligence artificielle pour développer des systèmes intelligents et autonomes.','2024-03-20','2024-11-07',12,500.00,2,1,NULL,7,3),(8,'Ingénieur DevOps','Mettez en place des pipelines d\'intégration et de déploiement continus pour accélérer le cycle de développement logiciel.','2024-03-21','2025-10-25',8,750.00,5,2,NULL,8,3),(9,'Chef de projet informatique','Supervisez la réalisation de projets informatiques, de la conception à la livraison.','2024-03-22','2024-11-15',16,850.00,3,1,NULL,9,3),(10,'Consultant en informatique décisionnelle','Utilisez des outils de Business Intelligence pour aider les entreprises à prendre des décisions stratégiques basées sur les données.','2024-03-23','2024-12-23',12,550.00,4,3,NULL,10,3),(11,'Développeur web frontend','Créez des interfaces utilisateur dynamiques et réactives pour les applications web.','2024-03-24','2025-08-17',8,700.00,1,0,NULL,11,3),(12,'Expert en cybersécurité','Protégez les systèmes informatiques contre les menaces extérieures en identifiant et en contrant les cyberattaques.','2024-03-25','2024-07-02',12,900.00,3,2,NULL,12,3),(13,'Développeur Java','Développez des applications robustes et performantes en utilisant le langage de programmation Java.','2024-03-26','2025-07-03',16,600.00,2,1,NULL,13,3),(14,'Ingénieur en virtualisation','Mettez en place des environnements de virtualisation pour optimiser l\'utilisation des ressources matérielles.','2024-03-27','2025-09-11',8,750.00,5,2,NULL,14,3),(15,'Analyste financier en technologies de l\'information','Analysez les données financières à l\'aide d\'outils spécialisés pour fournir des informations précieuses aux entreprises.','2024-03-28','2025-01-07',12,950.00,2,1,NULL,15,3),(16,'Administrateur de bases de données','Assurez la disponibilité et la performance des bases de données critiques pour les opérations commerciales.','2024-03-29','2024-03-29',8,500.00,4,3,NULL,16,3),(17,'Développeur Python','Programmez des applications polyvalentes en utilisant le langage de programmation Python.','2024-03-30','2025-09-21',16,700.00,1,0,NULL,17,3),(18,'Technicien support informatique','Fournissez un support technique de premier niveau aux utilisateurs, résolvant efficacement les problèmes informatiques.','2024-03-31','2024-07-10',12,1000.00,3,2,NULL,18,3),(19,'Analyste de système','Analysez les besoins des utilisateurs finaux pour concevoir des systèmes informatiques répondant à leurs exigences.','2024-04-01','2025-11-10',8,550.00,2,0,NULL,19,3),(20,'Développeur de jeux vidéo','Créez des expériences de jeu immersives en développant des jeux vidéo captivants et divertissants.','2024-04-02','2024-08-22',16,720.00,3,1,NULL,20,3),(21,'Ingénieur Projet','Gérer et coordonner des projets techniques de développement de produits ou de processus.','2024-03-14','2024-02-02',8,600.00,3,0,NULL,21,4),(22,'Ingénieur Qualité','Mettre en place des procédures et des normes de qualité pour garantir la conformité des produits.','2024-03-15','2025-07-25',12,700.00,4,1,NULL,22,4),(23,'Ingénieur R&D','Participer à la recherche et au développement de nouvelles technologies ou de nouveaux produits.','2024-03-16','2024-12-29',8,750.00,3,0,NULL,23,4),(24,'Ingénieur Processus','Analyser et optimiser les processus de fabrication pour améliorer l\'efficacité et la rentabilité.','2024-03-17','2025-02-02',16,550.00,5,2,NULL,24,4),(25,'Ingénieur Production','Superviser les opérations de production pour assurer la qualité et le respect des délais.','2024-03-18','2024-05-06',12,650.00,4,3,NULL,25,4),(26,'Ingénieur Maintenance','Assurer la maintenance préventive et corrective des équipements industriels.','2024-03-19','2024-09-05',8,800.00,2,1,NULL,26,4),(27,'Ingénieur Amélioration Continue','Identifier et mettre en œuvre des solutions visant à améliorer continuellement les processus.','2024-03-20','2025-03-09',12,500.00,5,2,NULL,27,4),(28,'Ingénieur Fiabilité','Évaluer la fiabilité des équipements et proposer des actions préventives.','2024-03-21','2024-03-11',8,750.00,3,1,NULL,28,4),(29,'Ingénieur Méthodes','Développer et mettre en place des méthodes de travail efficaces et innovantes.','2024-03-22','2024-04-30',16,850.00,4,3,NULL,29,4),(30,'Ingénieur Industrialisation','Participer à l\'industrialisation de nouveaux produits ou processus de production.','2024-03-23','2025-02-11',12,550.00,1,0,NULL,30,4),(31,'Ingénieur Supply Chain','Optimiser la gestion des flux de production et de distribution des produits.','2024-03-24','2025-01-27',8,700.00,3,2,NULL,31,4),(32,'Ingénieur Logistique','Organiser et superviser les activités logistiques liées à la chaîne d\'approvisionnement.','2024-03-25','2024-01-25',12,900.00,2,1,NULL,32,4),(33,'Ingénieur Optimisation des Coûts','Identifier et mettre en place des actions visant à réduire les coûts de production.','2024-03-26','2025-06-29',16,600.00,5,2,NULL,33,4),(34,'Ingénieur Planification','Planifier les activités de production en fonction des capacités et des ressources disponibles.','2024-03-27','2025-11-29',8,750.00,2,1,NULL,34,4),(35,'Ingénieur Validation','Valider les performances et la conformité des produits selon les spécifications techniques.','2024-03-28','2024-02-20',12,950.00,4,3,NULL,35,4),(36,'Ingénieur Technico-commercial','Assurer le suivi commercial des projets techniques et proposer des solutions adaptées aux clients.','2024-03-29','2024-06-01',8,500.00,1,0,NULL,36,4),(37,'Ingénieur Innovation','Participer à la veille technologique et à l\'identification des opportunités d\'innovation.','2024-03-30','2025-09-21',16,700.00,3,2,NULL,37,4),(38,'Ingénieur Conception','Concevoir et développer des produits en tenant compte des contraintes techniques et économiques.','2024-03-31','2024-09-28',12,1000.00,2,0,NULL,38,4),(39,'Ingénieur Système','Définir et mettre en place des architectures système répondant aux besoins des clients.','2024-04-01','2025-12-23',8,550.00,3,1,NULL,39,4),(40,'Ingénieur Exploitation','Assurer l\'exploitation et la maintenance des équipements industriels et des infrastructures.','2024-04-02','2024-10-10',16,720.00,3,0,NULL,40,4),(41,'Ingénieur Travaux','Superviser et coordonner les travaux de construction sur les chantiers.','2024-03-14','2025-06-09',8,600.00,4,1,NULL,41,4),(42,'Ingénieur Génie Civil','Concevoir et dimensionner les ouvrages de génie civil en respectant les normes et réglementations en vigueur.','2024-03-15','2024-04-15',12,700.00,3,0,NULL,42,4),(43,'Ingénieur Structure','Calculer les structures et les éléments de construction pour garantir leur stabilité et leur durabilité.','2024-03-16','2024-11-23',8,750.00,5,2,NULL,43,4),(44,'Ingénieur Bâtiment','Réaliser des études de faisabilité et des plans d\'exécution pour les projets de construction.','2024-03-17','2025-08-29',16,550.00,4,3,NULL,44,4),(45,'Ingénieur VRD (Voirie et Réseaux Divers)','Concevoir les bâtiments en intégrant les aspects architecturaux, techniques et fonctionnels.','2024-03-18','2025-10-06',12,650.00,2,1,NULL,45,4),(46,'Ingénieur Hydraulique','Planifier et coordonner les travaux de voirie et les réseaux de distribution des fluides.','2024-03-19','2025-03-17',8,800.00,5,2,NULL,46,4),(47,'Ingénieur Électricité','Concevoir les installations électriques en tenant compte des normes de sécurité et de performance.','2024-03-20','2025-05-17',12,500.00,3,1,NULL,47,4),(48,'Ingénieur Énergies Renouvelables','Étudier et mettre en place des solutions pour optimiser la consommation énergétique des bâtiments.','2024-03-21','2025-12-14',8,750.00,4,3,NULL,48,4),(49,'Ingénieur Acoustique','Évaluer et atténuer les nuisances sonores dans les projets de construction.','2024-03-22','2025-05-25',16,850.00,1,0,NULL,49,4),(50,'Ingénieur Sécurité et Prévention des Risques','Assurer la sécurité des chantiers et la prévention des risques professionnels.','2024-03-23','2024-08-15',12,550.00,3,2,NULL,50,4);
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer_grade`
--

DROP TABLE IF EXISTS `offer_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer_grade` (
  `Notice_Id` int(11) NOT NULL,
  `Offer_Id` int(11) NOT NULL,
  PRIMARY KEY (`Notice_Id`,`Offer_Id`),
  KEY `Offer_Id` (`Offer_Id`),
  CONSTRAINT `offer_grade_ibfk_1` FOREIGN KEY (`Notice_Id`) REFERENCES `notice` (`Notice_Id`),
  CONSTRAINT `offer_grade_ibfk_2` FOREIGN KEY (`Offer_Id`) REFERENCES `offer` (`Offer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer_grade`
--

LOCK TABLES `offer_grade` WRITE;
/*!40000 ALTER TABLE `offer_grade` DISABLE KEYS */;
INSERT INTO `offer_grade` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `offer_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilote`
--

DROP TABLE IF EXISTS `pilote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pilote` (
  `Profile_Id` int(11) NOT NULL,
  PRIMARY KEY (`Profile_Id`),
  CONSTRAINT `pilote_ibfk_1` FOREIGN KEY (`Profile_Id`) REFERENCES `profile` (`Profile_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilote`
--

LOCK TABLES `pilote` WRITE;
/*!40000 ALTER TABLE `pilote` DISABLE KEYS */;
INSERT INTO `pilote` VALUES (2),(3),(4);
/*!40000 ALTER TABLE `pilote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `Profile_Id` int(11) NOT NULL,
  `Profile_First_Name` varchar(30) DEFAULT NULL,
  `Profile_Last_Name` varchar(30) DEFAULT NULL,
  `Profile_Login` varchar(20) DEFAULT NULL,
  `Profile_Password` varchar(250) DEFAULT NULL,
  `Profile_Banner_Link` varchar(255) DEFAULT NULL,
  `Proflie_Picture_Link` varchar(255) DEFAULT NULL,
  `Profile_Deleted_At` datetime DEFAULT NULL,
  PRIMARY KEY (`Profile_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'Alice','Durant','alice.duran@viacesi.','Alice.D','','','0000-00-00 00:00:00'),(2,'Sylvain','Bonturi','sylvain.bouturi@viac','hash_123','','','0000-00-00 00:00:00'),(3,'Vinh','Vho ','vinh.vho@viacesi.fr','Vinh.V','','','0000-00-00 00:00:00'),(4,'Youssef','Abou-Msallem','youssef.abou-msallem','Youssef.A','','','0000-00-00 00:00:00'),(5,'Alban','Renard','alban.renard@viacesi','Alban.M','','','0000-00-00 00:00:00'),(6,'Tim','Vinciguerra','tim.vinciguerra@viac','Tim.V','','','0000-00-00 00:00:00'),(7,'Ethan','Jouvin','ethan.jouvin@viacesi','Ethan.J','','','0000-00-00 00:00:00'),(8,'Gabriel','Ricard','gabriel.ricardon@via','Gabriel.R','','','0000-00-00 00:00:00'),(9,'Joris','Claude','joris.claude@viacesi','Joris.C ','','','0000-00-00 00:00:00'),(10,'Brice','Delachaise','brice.delachaise@via','Brice.D','','','0000-00-00 00:00:00'),(11,'Yohan','Linossier','yohan.linossier@viac','Yohan.L','','','0000-00-00 00:00:00'),(12,'Romuald','Aversenq','romuald.aversenq@via','Romuald.A','','','0000-00-00 00:00:00'),(13,'Elias','OuinOuin','elias.ouinouin@viace','Elias.O','','','0000-00-00 00:00:00'),(14,'Philmiass','Desloques','philmiass.desloques@','Phileas.D','','','0000-00-00 00:00:00'),(15,'Nicolas','Lepetit','nicolas.lepetit@viac','Nicolas.L','','','0000-00-00 00:00:00'),(16,'Logan','Lemmerdeur','logan.lemmerdeur@via','Logan.L','','','0000-00-00 00:00:00'),(17,'Corentin','Perez','corentin.perez@viace','Corentin.P','','','0000-00-00 00:00:00'),(18,'Joao','Brillante','joao.brillante@viace','Joao.B','','','0000-00-00 00:00:00'),(19,'Dorian','Chabreviere','dorian.chabreviere@v','Dorian.C','','','0000-00-00 00:00:00'),(20,'Mathys','Hanbayat','mathys.hanbayat@viac','Mathys.H','','','0000-00-00 00:00:00'),(21,'Kylian','Dupuit','kylian.dupuit@viaces','Kylian.D','','','0000-00-00 00:00:00'),(22,'Thiago','Vincente','thiago.vincente@viac','Thiago.V','','','0000-00-00 00:00:00'),(23,'Axel','Letourneur','axel.letourner@viace','Axel.L','','','0000-00-00 00:00:00'),(24,'Justine','Salort','justine.salort@viace','Justine.S','','','0000-00-00 00:00:00'),(25,'Arnaud','Bouyer','arnaud.bouyer@viaces','Arnaud.B','','','0000-00-00 00:00:00'),(26,'Julien','Roll','julien.roll@viacesi.','Julien.R','','','0000-00-00 00:00:00'),(27,'Hugo','Raze','hugo.raze@viacesi.fr','Hugo.R','','','0000-00-00 00:00:00'),(28,'Alois','Kamber','alois.kamber@viacesi','Alois.K','','','0000-00-00 00:00:00'),(29,'Guillaume','Bedmar','guillaume.bedmar@via','Guillaume.B','','','0000-00-00 00:00:00'),(30,'Mathis','Trimoreau','mathis.trimoreau@via','Mathis.T','','','0000-00-00 00:00:00'),(31,'Alexandra','Auric','alexandra.auric@viac','Alexandra.A','','','0000-00-00 00:00:00'),(32,'Malaury','Brown','malaury.brown@viaces','Malaury.B','','','0000-00-00 00:00:00'),(33,'Jordan','Zebo','jordan.zebo@viacesi.','Jordan.Z','','','0000-00-00 00:00:00'),(34,'Cedric','Doumbe','cedric.doumbe@viaces','Cedric.D','','','0000-00-00 00:00:00'),(35,'Baysangur','Chamsoudinov','baysangur.chamsoudin','Baysangur.C','','','0000-00-00 00:00:00'),(36,'Conor','Mc-Gregor','conor.mc-gregor@viac','Conor.M','','','0000-00-00 00:00:00'),(37,'Benoit','Saint-Denis','benoit.saint-denis@v','Benoit.S','','','0000-00-00 00:00:00'),(38,'Gwen','Garen','gwen.garen@viacesi.f','Gwen.G','','','0000-00-00 00:00:00'),(39,'Dustin','Poirier','dustin.poirier@viace','Dustin.P','','','0000-00-00 00:00:00'),(40,'Jamal','Musiala','jamal.musiala@viaces','Jamal.M','','','0000-00-00 00:00:00'),(41,'Omar','Darmoul','omar.darmoul@viacesi','Omar.D','','','0000-00-00 00:00:00'),(42,'Karim','Rouis','karim.rouis@viacesi.','Karim.R','','','0000-00-00 00:00:00'),(43,'Romain','Filist','romain.filist@viaces','Romain.F','','','0000-00-00 00:00:00'),(44,'Romain','Zazzera','romain.zazzera@viace','Romain.Z','','','0000-00-00 00:00:00'),(45,'Wiktor','Stark','wiktor.stark@viacesi','Wiktor.S','','','0000-00-00 00:00:00'),(46,'Kamaru','Usman','kamaru.usman@viacesi','Kamaru.U','','','0000-00-00 00:00:00'),(47,'Bassem','Bada','bassem.bada@viacesi.','Bassem.B','','','0000-00-00 00:00:00'),(48,'Ryadh','Kibou','ryadh.kibou@viacesi.','Ryadh.K','','','0000-00-00 00:00:00'),(49,'Ines','Bezouza','ines.bezouza@viacesi','Ines.B','','','0000-00-00 00:00:00'),(50,'Miguel','Matioli','miguel.matioli@viace','Miguel.M','','','0000-00-00 00:00:00'),(51,'Kylian','Mbappe','kylian.mbappe@viaces','Kylian.M','','','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `Promotion_Id` int(11) NOT NULL,
  `Promotion_Name` varchar(255) DEFAULT NULL,
  `Promotion_Speciality` varchar(50) DEFAULT NULL,
  `Promotion_Year` int(11) DEFAULT NULL,
  `Center_Id` int(11) NOT NULL,
  `Profile_Id` int(11) NOT NULL,
  PRIMARY KEY (`Promotion_Id`),
  KEY `Center_Id` (`Center_Id`),
  KEY `Profile_Id` (`Profile_Id`),
  CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`Center_Id`) REFERENCES `center` (`Center_Id`),
  CONSTRAINT `promotion_ibfk_2` FOREIGN KEY (`Profile_Id`) REFERENCES `pilote` (`Profile_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'CPIA1','GENERALISTE',2022,1,2),(2,'CPIA2_BTP','BTP',2021,1,4),(3,'CPIA2_INFO','INFO',2021,1,3),(4,'CPIA2_GENE','GENERALISTE',2021,2,4),(5,'CPIA3_BTP','BTP',2020,2,4),(6,'CPIA3_INFO','INFO',2020,3,3),(7,'CPIA3_GENE','GENERALISTE',2020,3,4),(8,'CPIA4_INFO','INFO',2019,4,3),(9,'CPIA4_GENE','GENERALISTE',2019,3,4),(10,'CPIA4_BTP','BTP',2019,3,4),(11,'CPIA5_INFO','INFO',2018,3,3),(12,'CPIA5_BTP','BTP',2018,2,4),(13,'CPIA5_GENE','GENERALISTE',2018,1,4);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `Skill_Id` int(11) NOT NULL,
  `Skill_Name` varchar(255) DEFAULT NULL,
  `Skill_Level` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Skill_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'Programmation en Java','Avancé'),(2,'Conception de bases de données relationnelles','Avancé'),(3,'Analyse statistique ','Intermédiaire'),(4,'Développement web avec HTML, CSS, JavaScript','Avancé'),(5,'Gestion de projet','Avancé'),(6,'Maîtrise de Microsoft Excel','Débutant'),(7,'Conception UX/UI','Intermédiaire'),(8,'Programmation en Python','Avancé'),(9,'Analyse financière','Intermédiaire'),(10,'Gestion du temps','Débutant'),(11,'Communication écrite','Avancé'),(12,'Développement d\'applications mobiles','Intermédiaire'),(13,'Conception de réseaux informatiques','Intermédiaire'),(14,'Maîtrise de Microsoft Word','Avancé'),(15,'Programmation en C++','Avancé'),(16,'Résolution de problèmes complexes','Intermédiaire'),(17,'Connaissance en marketing digital','Débutant'),(18,'Utilisation de logiciels de CAO','Avancé'),(19,'Programmation en Ruby','Débutant'),(20,'Analyse de données géospatiales','Intermédiaire'),(21,'Leadership d\'équipe','Débutant'),(22,'Utilisation de systèmes ERP','Avancé'),(23,'Communication efficace','Débutant'),(24,'Résolution de problèmes','Avancé'),(25,'Esprit d\'équipe','Intermédiaire'),(26,'Adaptabilité','Débutant'),(27,'Pensée critique','Intermédiaire'),(28,'Organisation','Intermédiaire'),(29,'Gestion du temps','Avancé'),(30,'Leadership','Avancé'),(31,'Créativité','Débutant'),(32,'Capacité d\'apprentissage rapide','Avancé'),(33,'Gestion du stress','Avancé'),(34,'Prise de décision','Avancé'),(35,'Compétences interpersonnelles','Intermédiaire'),(36,'Autonomie','Avancé'),(37,'Travail collaboratif','Débutant'),(38,'Capacité à travailler sous pression','Avancé'),(39,'Priorisation des tâches','Avancé'),(40,'Flexibilité','Intermédiaire'),(41,'Empathie','Débutant'),(42,'Pensée analytique','Débutant'),(43,'Fiabilité','Intermédiaire'),(44,'Persévérance','Avancé'),(45,'Innovation','Débutant'),(46,'Gestion des conflits','Intermédiaire'),(47,'Sens de l\'initiative','Débutant'),(48,'Fiabilité','Intermédiaire'),(49,'Sens de l\'éthique professionnelle','Intermédiaire'),(50,'Capacité à prendre des initiatives','Avancé'),(51,'Adaptation au changement','Avancé'),(52,'Leadership situationnel','Avancé'),(53,'Organisation d\'événements','Intermédiaire'),(54,'Négociation','Intermédiaire'),(55,'Sens du détail','Intermédiaire'),(56,'Compétences en présentation','Avancé'),(57,'Gestion de projet','Avancé'),(58,'Analyse des données','Débutant'),(59,'Gestion des documents','Débutant'),(60,'Connaissance des outils informatiques','Débutant'),(61,'Esprit d\'entreprise','Avancé'),(62,'Création de réseaux professionnels','Avancé'),(63,'Gestion des relations client','Intermédiaire');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Profile_Id` int(11) NOT NULL,
  `Promotion_Id` int(11) NOT NULL,
  PRIMARY KEY (`Profile_Id`),
  KEY `Promotion_Id` (`Promotion_Id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Profile_Id`) REFERENCES `profile` (`Profile_Id`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`Promotion_Id`) REFERENCES `promotion` (`Promotion_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (5,1),(21,1),(28,1),(44,1),(6,2),(8,2),(13,2),(22,2),(29,2),(31,2),(36,2),(45,2),(7,3),(9,3),(23,3),(30,3),(32,3),(46,3),(14,4),(24,4),(37,4),(47,4),(15,5),(25,5),(38,5),(48,5),(16,6),(26,6),(39,6),(49,6),(17,7),(27,7),(40,7),(50,7),(18,8),(41,8),(19,9),(42,9),(20,10),(43,10),(11,11),(34,11),(12,12),(35,12),(10,13),(33,13);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `Wishlist_Id` int(11) NOT NULL,
  `Profile_Id` int(11) NOT NULL,
  PRIMARY KEY (`Wishlist_Id`),
  UNIQUE KEY `Profile_Id` (`Profile_Id`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`Profile_Id`) REFERENCES `student` (`Profile_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
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

-- Dump completed on 2024-04-03 16:02:38
