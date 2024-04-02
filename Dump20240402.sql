-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: siteweb
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `Address_Id` int(11) DEFAULT NULL,
  `Address_Name` text DEFAULT NULL,
  `Address_City` text DEFAULT NULL,
  `Address_Postal_Code` text DEFAULT NULL,
  `Address_Deleted_At` text DEFAULT NULL,
  `Business_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'13 Avenue Simone Veil','Nice','06200','',55),(2,'13  Avenue Villeurbane','Lyon','69000','',55),(3,'13 Avenue Orleans','Orleans','45100','',55),(4,'13 Avenue Nanterre','Nanterre','92200','',55),(5,'13 Avenue Rennes','Rennes','35000','',55),(6,'13 Rue de Londres','Paris','75000','',1),(7,'14 Rue de Londres','Paris','75000','',2),(8,'15 Rue de Londres','Paris','75000','',3),(9,'16 Rue de Londres','Paris','75000','',4),(10,'17 Rue de Londres','Paris','75000','',5),(11,'18 Rue de Londres','Paris','75000','',6),(12,'19 Rue de Londres','Paris','75000','',7),(13,'20 Rue de Londres','Paris','75000','',8),(14,'21 Rue de Londres','Paris','75000','',9),(15,'22 Rue de Londres','Paris','75000','',10),(16,'23 Rue de Londres','Paris','75000','',11),(17,'24 Rue de Londres','Paris','75000','',12),(18,'25 Rue de Londres','Paris','75000','',13),(19,'26 Rue de Londres','Paris','75000','',14),(20,'27 Rue de Londres','Paris','75000','',15),(21,'28 Rue du Général Leclerc','Paris','75000','',16),(22,'29 Rue du Général Leclerc','Paris','75000','',17),(23,'30 Rue de Salan','Paris','75000','',18),(24,'31 Rue du Général Degaulle','Paris','75000','',19),(25,'32 Rue du Général Degaulle','Paris','75000','',20),(26,'33 Rue du Général Degaulle','Paris','75000','',21),(27,'34 Rue du Général Degaulle','Paris','75000','',22),(28,'35 Rue du Général Degaulle','Paris','75000','',23),(29,'36 Rue des Champs','Paris','75000','',24),(30,'37 Rue des Champs','Paris','75000','',25),(31,'38 Rue des Champs','Paris','75000','',26),(32,'39 Rue des Champs','Paris','75000','',27),(33,'40 Rue des Champs','Paris','75000','',28),(34,'41 Rue de Londres','Paris','75000','',29),(35,'42 Rue du Commerce','Paris','75000','',30),(36,'43 Rue de Perpignan','Paris','75000','',31),(37,'44 Rue de Claira','Paris','75000','',32),(38,'45 Rue de Phillipe ','Paris','75000','',33),(39,'46 Rue de Charlemagne','Paris','75000','',34),(40,'47 Rue de César','Paris','75000','',35),(41,'48 Rue de Napoléon','Paris','75000','',36),(42,'49 Rue de Sevran','Paris','75000','',37),(43,'50 Rue Saint Germain','Paris','75000','',38),(44,'51 Rue Saint Paul','Paris','75000','',39),(45,'52 Rue Saint Pierre','Paris','75000','',40),(46,'53 Rue Saint Louis','Paris','75000','',41),(47,'54 Rue Saint Phillipe','Paris','75000','',42),(48,'55 Avenue Saint George','Paris','75000','',43),(49,'56 Rue du Parc','Paris','75000','',44),(50,'57 Rue de Louis XIV','Paris','75000','',45),(51,'58 Rue Jean-Jaurès','Paris','75000','',46),(52,'59 Rue de Lyon','Paris','75000','',47),(53,'60 Rue de Neuilly','Paris','75000','',48),(54,'61 Rue de Lille','Paris','75000','',49),(55,'62 Rue de  Sophia','Paris','75000','',50),(56,'63 Rue du Commerce','Lyon','75000','',51),(57,'64 Rue de Villeurbanne','Lyon','69000','',0),(58,'65 Rue Edouard Herriot','Lyon','69000','',0),(59,'66 Rue Edouard Herriot','Lyon','69000','',0),(60,'67 Rue Edouard Herriot','Lyon','69000','',0),(61,'68 Rue Edouard Herriot','Lyon','69000','',0),(62,'69 Rue Edouard Herriot','Lyon','69000','',0),(63,'70 Rue Edouard Herriot','Lyon','69000','',0),(64,'71 Rue Edouard Herriot','Lyon','69000','',0),(65,'72 Rue Edouard Herriot','Lyon','69000','',0),(66,'73 Rue Edouard Herriot','Lyon','69000','',0),(67,'74 Rue Edouard Herriot','Lyon','69000','',0),(68,'75 Rue Edouard Herriot','Lyon','69000','',0),(69,'76 Rue Edouard Herriot','Lyon','69000','',0),(70,'77 Rue Edouard Herriot','Lyon','69000','',0),(71,'78 Rue Edouard Herriot','Lyon','69000','',0),(72,'79 Rue Royale','Orleans','45100','',0),(73,'80 Rue Royale','Orleans','45100','',0),(74,'81 Rue Royale','Orleans','45100','',0),(75,'82 Rue Royale','Orleans','45100','',0),(76,'83 Rue Royale','Orleans','45100','',0),(77,'84 Rue Royale','Orleans','45100','',0),(78,'85 Rue Royale','Orleans','45100','',0),(79,'86 Rue Royale','Orleans','45100','',0),(80,'87 Rue Royale','Orleans','45100','',0),(81,'88 Rue Royale','Orleans','45100','',0),(82,'89 Rue Royale','Orleans','45100','',0),(83,'90 Rue Royale','Orleans','45100','',0),(84,'91 Rue Royale','Orleans','45100','',0),(85,'92 Rue Royale','Orleans','45100','',0),(86,'93 Rue Royale','Orleans','45100','',0),(87,'94 Rue Royale','Orleans','45100','',0),(88,'95 Rue Royale','Orleans','45100','',0),(89,'96 Rue Ampere','Nanterre','92200','',0),(90,'97 Rue Ampere','Nanterre','92200','',0),(91,'98 Rue Ampere','Nanterre','92200','',0),(92,'99 Rue Ampere','Nanterre','92200','',0),(93,'100 Rue Ampere','Nanterre','92200','',0),(94,'101 Rue Ampere','Nanterre','92200','',0),(95,'102 Rue Ampere','Nanterre','92200','',0),(96,'103 Rue Ampere','Nanterre','92200','',0),(97,'104 Rue Ampere','Nanterre','92200','',0),(98,'105 Avenue Simone Veil','Nice','06200','',0),(99,'106 Avenue Simone Veil','Nice','06200','',0),(100,'107 Avenue Simone Veil','Nice','06200','',0),(101,'108 Avenue Simone Veil','Nice','06200','',0),(102,'109 Avenue Magnan','Nice','06210','',0),(103,'110 Avenue Jean Medecin','Nice','06300','',0),(104,'111 Boulevard Wilson','Antibes','06410','',0),(105,'112 Avenue de la Vallière','Nice','06100','',0),(106,'113 Avenue de la Vallière','Nice','06100','',0),(107,'114 Avenue de la Vallière','Nice','06100','',0);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Profile_Id` int(11) DEFAULT NULL,
  `MyUnknownColumn` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (0,''),(1,'');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appliance`
--

DROP TABLE IF EXISTS `appliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appliance` (
  `Appliance_Id` int(11) DEFAULT NULL,
  `Appliance_Cv` text DEFAULT NULL,
  `Appliance_Letter` text DEFAULT NULL,
  `Appliance_Deleted_At` text DEFAULT NULL,
  `Offer_Id` int(11) DEFAULT NULL,
  `Profile_Id` int(11) DEFAULT NULL,
  `MyUnknownColumn` text DEFAULT NULL,
  `MyUnknownColumn_[0]` text DEFAULT NULL,
  `MyUnknownColumn_[1]` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appliance`
--

LOCK TABLES `appliance` WRITE;
/*!40000 ALTER TABLE `appliance` DISABLE KEYS */;
INSERT INTO `appliance` VALUES (1,NULL,NULL,NULL,1,5,'','',''),(2,NULL,NULL,NULL,2,6,'','',''),(3,NULL,NULL,NULL,2,7,'','',''),(4,NULL,NULL,NULL,2,8,'','',''),(5,NULL,NULL,NULL,2,9,'','',''),(6,NULL,NULL,NULL,2,10,'','','²'),(7,NULL,NULL,NULL,2,11,'','',''),(8,NULL,NULL,NULL,2,12,'','',''),(9,NULL,NULL,NULL,2,13,'','',''),(10,NULL,NULL,NULL,2,14,'','',''),(11,NULL,NULL,NULL,2,15,'','',''),(12,NULL,NULL,NULL,2,16,'','',''),(13,NULL,NULL,NULL,2,17,'','',''),(14,NULL,NULL,NULL,7,18,'','',''),(15,NULL,NULL,NULL,10,19,'','',''),(16,NULL,NULL,NULL,11,20,'','',''),(17,NULL,NULL,NULL,15,21,'','',''),(18,NULL,NULL,NULL,47,22,'','',''),(19,NULL,NULL,NULL,45,23,'','',''),(20,NULL,NULL,NULL,50,24,'','',''),(21,NULL,NULL,NULL,5,25,'','',''),(22,NULL,NULL,NULL,9,26,'','',''),(23,NULL,NULL,NULL,25,27,'','',''),(24,NULL,NULL,NULL,11,28,'','',''),(25,NULL,NULL,NULL,46,29,'','',''),(26,NULL,NULL,NULL,33,30,'','',''),(27,NULL,NULL,NULL,32,31,'','',''),(28,NULL,NULL,NULL,41,32,'','',''),(29,NULL,NULL,NULL,44,33,'','',''),(30,NULL,NULL,NULL,38,34,'','',''),(31,NULL,NULL,NULL,37,35,'','',''),(32,NULL,NULL,NULL,11,36,'','',''),(33,NULL,NULL,NULL,14,37,'','',''),(34,NULL,NULL,NULL,18,38,'','',''),(35,NULL,NULL,NULL,19,39,'','',''),(36,NULL,NULL,NULL,23,40,'','',''),(37,NULL,NULL,NULL,19,41,'','',''),(38,NULL,NULL,NULL,23,42,'','',''),(39,NULL,NULL,NULL,23,43,'','',''),(40,NULL,NULL,NULL,23,44,'','',''),(41,NULL,NULL,NULL,4,45,'','',''),(42,NULL,NULL,NULL,4,46,'','',''),(43,NULL,NULL,NULL,4,47,'','',''),(44,NULL,NULL,NULL,7,48,'','',''),(45,NULL,NULL,NULL,7,49,'','',''),(46,NULL,NULL,NULL,7,50,'','',''),(47,NULL,NULL,NULL,8,51,'','','');
/*!40000 ALTER TABLE `appliance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business` (
  `Business_Id` int(11) DEFAULT NULL,
  `Business_Name` text DEFAULT NULL,
  `Business_Description` text DEFAULT NULL,
  `Business_Sector` text DEFAULT NULL,
  `Business_Banner_Link` text DEFAULT NULL,
  `Business_Picture_Link` text DEFAULT NULL,
  `Business_Deleted_At` text DEFAULT NULL,
  `Profile_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES (1,'Google','Leader mondial des moteurs de recherche, Google propose également une large gamme de produits et services, allant des applications de productivité aux technologies d\'intelligence artificielle.','Technologie de l\'information et des services',NULL,NULL,NULL,3),(2,'Microsoft','Société multinationale renommée pour ses logiciels informatiques, ses services cloud et ses produits matériels.','Technologie de l\'information et des services',NULL,NULL,NULL,3),(3,'Apple','Connu pour ses produits électroniques grand public, y compris l\'iPhone, l\'iPad, les Mac et les services associés.','Technologie de l\'information et des services',NULL,NULL,NULL,3),(4,'Amazon','Plus grande plateforme de commerce électronique au monde, proposant également des services de cloud computing, de streaming et de distribution de contenu.','Commerce électronique, cloud computing',NULL,NULL,NULL,3),(5,'Facebook','Réseau social mondial permettant aux utilisateurs de se connecter, de partager du contenu et de communiquer.','Réseaux sociaux',NULL,NULL,NULL,3),(6,'IBM','Entreprise technologique proposant des services de cloud computing, d\'informatique cognitive et de solutions pour les entreprises.','Cloud computing, intelligence artificielle',NULL,NULL,NULL,3),(7,'Intel','Fabricant de semi-conducteurs, principalement connu pour ses processeurs informatiques.','Semi-conducteurs',NULL,NULL,NULL,3),(8,'Cisco Systems','Spécialisé dans les technologies de réseau, les équipements et les services pour les entreprises et les fournisseurs de services.','Technologie de l\'information et des services',NULL,NULL,NULL,3),(9,'Oracle Corporation','Fournisseur majeur de logiciels et de solutions cloud pour les entreprises, notamment dans les domaines des bases de données et des applications d\'entreprise.','Logiciels d\'entreprise, cloud computing',NULL,NULL,NULL,3),(10,'Adobe Inc.','Connu pour ses logiciels de création et de publication, y compris Photoshop, Illustrator et Acrobat.','Logiciels d\'entreprise, création et édition',NULL,NULL,NULL,3),(11,'Nvidia','Société de technologie spécialisée dans les processeurs graphiques (GPU) et les unités de traitement graphique (GPU).','Semi-conducteurs, technologie informatique',NULL,NULL,NULL,3),(12,'SAP','Fournisseur de logiciels de gestion d\'entreprise, notamment des solutions ERP et CRM.','Logiciels d\'entreprise',NULL,NULL,NULL,3),(13,'Dell Technologies','Fabricant d\'ordinateurs personnels, de serveurs, de stockage de données et de services associés.','Matériel informatique',NULL,NULL,NULL,3),(14,'HP Inc.','Fabricant d\'imprimantes, d\'ordinateurs personnels et d\'autres produits technologiques.','Matériel informatique, périphériques',NULL,NULL,NULL,3),(15,'Salesforce','Fournisseur de solutions de gestion de la relation client (CRM) basées sur le cloud.','Logiciels d\'entreprise, cloud computing',NULL,NULL,NULL,3),(16,'VMware','Spécialisé dans les logiciels de virtualisation, les infrastructures cloud et les solutions de mobilité.','Virtualisation, cloud computing',NULL,NULL,NULL,3),(17,'Tencent','Entreprise chinoise proposant une gamme de services Internet, notamment des jeux, des médias sociaux et des services financiers.','Technologie de l\'information et des services, divertissement',NULL,NULL,NULL,3),(18,'Alibaba Group','Plateforme de commerce électronique, de cloud computing et de services Internet, principalement en Chine.','Commerce électronique, cloud computing, services Internet',NULL,NULL,NULL,3),(19,'Accenture','Cabinet de conseil en management, services technologiques et externalisation.','Conseil en management, services technologiques',NULL,NULL,NULL,3),(20,'Netflix','Plateforme de streaming de films, de séries télévisées et de contenus originaux.','Divertissement, médias',NULL,NULL,NULL,3),(21,'Thales Group','Thales Group - Thales est un leader mondial des hautes technologies pour les marchés de l\'aérospatiale, du transport, de la défense et de la sécurité.','Aérospatiale, défense et sécurité.',NULL,NULL,NULL,4),(22,'Airbus Helicopters','Airbus Helicopters - Airbus Helicopters est le premier fabricant mondial d\'hélicoptères, proposant une large gamme de produits pour différents besoins civils et militaires.','Aérospatiale.',NULL,NULL,NULL,4),(23,'Amadeus IT Group','Amadeus IT Group - Amadeus IT Group est une société technologique spécialisée dans les solutions de voyage, fournissant des services de réservation, de distribution et de gestion pour l\'industrie du tourisme.','Technologie de voyage.',NULL,NULL,NULL,4),(24,'Ubisoft Entertainment','Ubisoft Entertainment - Ubisoft est une entreprise de développement et d\'édition de jeux vidéo, connue pour des franchises populaires telles que Assassin\'s Creed, Far Cry et Just Dance.','Jeux vidéo et divertissement.',NULL,NULL,NULL,4),(25,'Société Générale Group','Société Générale Group - Société Générale est l\'une des principales banques européennes, offrant une gamme complète de services financiers pour les particuliers, les entreprises et les institutions.','Services financiers.',NULL,NULL,NULL,4),(26,'Orange S.A.','Orange S.A. - Orange est l\'un des principaux opérateurs de télécommunications au monde, offrant des services de téléphonie mobile, d\'Internet et de télévision à des millions de clients.','Télécommunications.',NULL,NULL,NULL,4),(27,'Capgemini','Capgemini - Capgemini est une entreprise de services numériques et de conseil, proposant des solutions en matière de technologies de l\'information, de gestion et de transformation numérique.','Services numériques et conseil.',NULL,NULL,NULL,4),(28,'Altran Technologies','Altran Technologies - Altran est un leader mondial de l\'ingénierie et du conseil en innovation, offrant des services dans divers domaines technologiques, notamment l\'automobile, l\'aérospatiale et les télécommunications.','Ingénierie et conseil en innovation.',NULL,NULL,NULL,4),(29,'EDF Energy','EDF Energy - EDF Energy est un fournisseur d\'électricité et de gaz, engagé dans la production d\'énergie propre et le développement de solutions durables pour l\'avenir.','Énergie.',NULL,NULL,NULL,4),(30,'Cannes Lions International Festival of Creativity','Cannes Lions International Festival of Creativity - Le Festival international de la créativité de Cannes est un événement mondial majeur pour les professionnels de la publicité et du marketing, célébrant l\'innovation et l\'excellence créative.','Publicité et marketing.',NULL,NULL,NULL,4),(31,'Nice-Matin','Nice-Matin - Nice-Matin est un journal régional français couvrant l\'actualité de la région Provence-Alpes-Côte d\'Azur.','Médias et journalisme.',NULL,NULL,NULL,4),(32,'Sophia Antipolis','Sophia Antipolis - Sophia Antipolis est un parc technologique situé sur la Côte d\'Azur, abritant de nombreuses entreprises et centres de recherche dans les domaines de la technologie et de l\'innovation.','Technologie et innovation.',NULL,NULL,NULL,4),(33,'SOPRA Steria Group','SOPRA Steria Group - SOPRA Steria est un groupe de services informatiques et de conseil, offrant des solutions numériques et des services de transformation pour les entreprises et les organisations.','Services informatiques et de conseil.',NULL,NULL,NULL,4),(34,'ETS Global','ETS Global - ETS Global est une entreprise spécialisée dans l\'évaluation des compétences linguistiques et académiques, proposant des tests standardisés comme le TOEFL et le GRE.','Évaluation linguistique et académique.',NULL,NULL,NULL,4),(35,'Cannes Yachting Festival','Cannes Yachting Festival - Le Festival de la plaisance de Cannes est l\'un des plus grands salons nautiques au monde, présentant une large gamme de yachts et de bateaux de luxe.','Nautisme et plaisance.',NULL,NULL,NULL,4),(36,'Decathlon','Decathlon - Decathlon est une chaîne de magasins d\'articles de sport, proposant une large gamme de produits et d\'équipements pour différentes activités sportives.','Articles de sport et équipements.',NULL,NULL,NULL,4),(37,'INRAE - Institut national de recherche pour l\'agriculture, l\'alimentation et l\'environnement','INRAE - Institut national de recherche pour l\'agriculture, l\'alimentation et l\'environnement - L\'INRAE est un institut de recherche français dédié à l\'étude de l\'agriculture, de l\'alimentation et de l\'environnement, contribuant à la compréhension des enjeux agricoles et environnementaux.','Recherche agricole et environnementale.',NULL,NULL,NULL,4),(38,'Groupe Casino','Groupe Casino - Le Groupe Casino est un groupe de distribution français, exploitant une variété de magasins et de supermarchés sous différentes marques.','Distribution.',NULL,NULL,NULL,4),(39,'Acropolis','Acropolis - Acropolis est un centre de congrès et d\'expositions situé à Nice, accueillant des événements professionnels, culturels et scientifiques de grande envergure.','Gestion d\'événements et de congrès.',NULL,NULL,NULL,4),(40,'Digital Campus','Digital Campus - Digital Campus est une école supérieure spécialisée dans les métiers du numérique, offrant des formations en développement web, design graphique et marketing digital.','Éducation et formation en numérique.',NULL,NULL,NULL,4),(41,'Baticoncept','Entreprise spécialisée dans la construction de bâtiments écologiques et durables, offrant des solutions innovantes pour un avenir meilleur.','Construction résidentielle',NULL,NULL,NULL,4),(42,'Constructions du Futur','Constructions du Futur s\'engage à réaliser des projets de construction alliant modernité, qualité et respect de l\'environnement.','Construction commerciale',NULL,NULL,NULL,4),(43,'BTP Innovations','BTP Innovations est une entreprise à la pointe de la technologie, offrant des solutions novatrices pour les défis de la construction.','Construction industrielle',NULL,NULL,NULL,4),(44,'Urbanisme & Construction','Urbanisme & Construction œuvre à la réalisation d\'espaces urbains harmonieux et fonctionnels, intégrant les besoins des communautés locales.','Travaux publics',NULL,NULL,NULL,4),(45,'ProBat','ProBat est spécialisé dans la construction de bâtiments industriels et commerciaux, répondant aux exigences les plus élevées en matière de qualité et de sécurité.','Rénovation et restauration',NULL,NULL,NULL,4),(46,'Bâtiments et Travaux Publics','Bâtiments et Travaux Publics est une entreprise polyvalente, capable de réaliser des projets de construction de grande envergure dans tous les domaines du BTP.','Construction écologique',NULL,NULL,NULL,4),(47,'Constructions Durables','Constructions Durables s\'engage à construire des bâtiments respectueux de l\'environnement, en utilisant des matériaux écologiques et des techniques de construction durables.','Urbanisme et aménagement urbain',NULL,NULL,NULL,4),(48,'EcoConstruction','EcoConstruction est spécialisée dans les projets de construction écologique, favorisant l\'utilisation de matériaux naturels et renouvelables.','Construction durable',NULL,NULL,NULL,4),(49,'BTP Excellence','BTP Excellence vise l\'excellence dans tous ses projets de construction, en mettant l\'accent sur la qualité, la sécurité et la satisfaction client.','Génie civil',NULL,NULL,NULL,4),(50,'Rénovation & Patrimoine','Rénovation & Patrimoine est spécialisée dans la restauration et la préservation du patrimoine architectural, en respectant les techniques traditionnelles et les normes de conservation.','Construction de bâtiments spécialisés',NULL,NULL,NULL,4);
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `center`
--

DROP TABLE IF EXISTS `center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `center` (
  `Centre_Id` int(11) DEFAULT NULL,
  `Center_Name` text DEFAULT NULL,
  `Address_Id` int(11) DEFAULT NULL
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
  `Offer_Id` int(11) DEFAULT NULL,
  `Wishlist_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contains`
--

LOCK TABLES `contains` WRITE;
/*!40000 ALTER TABLE `contains` DISABLE KEYS */;
INSERT INTO `contains` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `contains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `got`
--

DROP TABLE IF EXISTS `got`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `got` (
  `Profile_Id` int(11) DEFAULT NULL,
  `Skill_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `got`
--

LOCK TABLES `got` WRITE;
/*!40000 ALTER TABLE `got` DISABLE KEYS */;
INSERT INTO `got` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `got` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_offer`
--

DROP TABLE IF EXISTS `grade_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade_offer` (
  `Offer_Id` int(11) DEFAULT NULL,
  `Notice_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_offer`
--

LOCK TABLES `grade_offer` WRITE;
/*!40000 ALTER TABLE `grade_offer` DISABLE KEYS */;
INSERT INTO `grade_offer` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `grade_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live`
--

DROP TABLE IF EXISTS `live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `live` (
  `Profile_Id` int(11) DEFAULT NULL,
  `Address_Id` int(11) DEFAULT NULL
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
  `Offer_Id` int(11) DEFAULT NULL,
  `Skill_Id` int(11) DEFAULT NULL
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
  `Notice_Id` int(11) DEFAULT NULL,
  `Notice_Grade` double DEFAULT NULL,
  `Notice_Comment` text DEFAULT NULL,
  `Business_Id` int(11) DEFAULT NULL,
  `Profile_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,4.5,'Excellente culture dentreprise.\'',1,8),(2,4,'Projets stimulants et équipe dynamique.',2,7),(3,3.8,'Bonne ambiance de travail mais manque de développement professionnel.',3,51),(4,4.2,'Environnement stimulant et équipe collaborative.',4,50),(5,4.7,'Entreprise innovante et opportunités de croissance.',5,5),(6,3.5,'Ambiance agréable mais manque de communication interne.',6,6),(7,4.8,'Leadership fort et reconnaissance des efforts des employés.',7,7),(8,4.3,'Projets variés et possibilités dapprentissage.\'',8,8),(9,3.9,'Environnement de travail convivial mais manque de perspectives dévolution.\'',9,9),(10,4.6,'Culture dentreprise inclusive et valeurs fortes.\'',10,10),(11,3.7,'Manque de soutien de la direction mais bonne collaboration entre collègues.',11,11),(12,4.1,'Opportunités de développement professionnel et culture dentreprise positive.\'',12,12),(13,4.4,'Bonne ambiance mais processus de décision parfois lents.',13,13),(14,4.9,'Environnement de travail stimulant et perspectives davancement.\'',14,14),(15,3.6,'Manque de reconnaissance et de valorisation des employés.',15,15),(16,4.2,'Équipe dynamique et projets intéressants.',16,16),(17,4.7,'Entreprise axée sur linnovation et la collaboration.\'',17,17),(18,3.8,'Culture dentreprise positive mais manque de transparence.\'',18,18),(19,4.5,'Opportunités de formation et dévolution professionnelle.\'',19,19),(20,4,'Ambiance agréable mais manque de visibilité sur les projets futurs.',20,20),(21,4.8,'Leadership inspirant et valeurs dentreprise fortes.\'',21,21),(22,4.3,'Projets innovants et équipe motivée.',22,22),(23,3.9,'Environnement de travail convivial mais manque de flexibilité.',23,23),(24,4.6,'Culture dentreprise inclusive et esprit d\'équipe.\'',24,24),(25,3.7,'Manque de communication interne mais bonne ambiance.',25,25),(26,4.1,'Opportunités dapprentissage et de développement professionnel.\'',26,26),(27,4.4,'Bonne reconnaissance des employés et ambiance collaborative.',27,27),(28,4.9,'Culture dentreprise axée sur l\'innovation et la créativité.\'',28,28),(29,3.6,'Processus décisionnels parfois lents mais bonne ambiance de travail.',29,29),(30,4.2,'Équipe dynamique et projets stimulants.',30,30),(31,4.7,'Entreprise axée sur linnovation et la croissance.\'',31,31),(32,3.8,'Environnement de travail agréable mais manque de perspectives dévolution.\'',32,32),(33,4.5,'Leadership fort et reconnaissance des talents.',33,33),(34,4,'Projets variés et équipe collaborative.',34,34),(35,4.8,'Culture dentreprise inspirante et valeurs fortes.\'',35,35),(36,4.3,'Opportunités de développement professionnel et ambiance conviviale.',36,36),(37,3.9,'Manque de communication interne mais bonne cohésion déquipe.\'',37,37),(38,4.6,'Leadership motivant et culture dentreprise inclusive.\'',38,38),(39,3.7,'Processus décisionnels parfois lents mais bon équilibre vie professionnelle-vie personnelle.',39,39),(40,4.1,'Projets stimulants et opportunités de formation.',40,40),(41,4.4,'Bonne ambiance de travail et reconnaissance des efforts.',41,41),(42,4.9,'Entreprise innovante et équipe talentueuse.',42,42),(43,3.6,'Manque de transparence sur les décisions mais bonne ambiance de travail.',43,43),(44,4.2,'Projets intéressants et équipe dynamique.',44,44),(45,4.7,'Culture dentreprise axée sur l\'innovation et la collaboration.\'',45,45),(46,3.8,'Environnement de travail convivial mais manque de flexibilité horaire.',46,46),(47,4.5,'Leadership inspirant et opportunités de développement.',47,47),(48,4,'Équipe motivée et projets variés.',48,48),(49,4.8,'Culture dentreprise positive et valeurs partagées.\'',49,49),(50,4.3,'Opportunités de croissance professionnelle et bonne ambiance de travail.',50,50);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer` (
  `Offer_Id` int(11) DEFAULT NULL,
  `Offer_Name` text DEFAULT NULL,
  `Offer_Description` text DEFAULT NULL,
  `Offer_Date` text DEFAULT NULL,
  `Offer_Start_Date` text DEFAULT NULL,
  `Offer_Duration` text DEFAULT NULL,
  `Offer_Salary` text DEFAULT NULL,
  `Offer_Number_Of_Places` int(11) DEFAULT NULL,
  `Offer_Number_Of_Places_Taken` int(11) DEFAULT NULL,
  `Offer_Deleted_At` text DEFAULT NULL,
  `Compagny_Id` int(11) DEFAULT NULL,
  `Profile_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer`
--

LOCK TABLES `offer` WRITE;
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
INSERT INTO `offer` VALUES (1,'Développeur Full Stack','Concevez et développez des applications web complètes, de la base de données au frontend.','3/14/2024','5/18/2024','8 semaines','$600 ',3,1,NULL,1,3),(2,'Ingénieur en sécurité informatique','Assurez la sécurité des systèmes d\'information en mettant en place des mesures de protection avancées.','3/15/2024','6/21/2025','12 semaines','$700 ',3,0,NULL,2,3),(3,'Analyste de données','Analysez de vastes ensembles de données pour extraire des informations précieuses et prendre des décisions éclairées.','3/16/2024','8/7/2024','8 semaines','$750 ',4,1,NULL,3,3),(4,'Administrateur systèmes et réseaux','Gérez et maintenez l\'infrastructure informatique d\'une entreprise, garantissant une connectivité et une disponibilité optimales.','3/17/2024','10/30/2024','16 semaines','$550 ',3,0,NULL,4,3),(5,'Développeur mobile iOS/Android','Créez des applications mobiles performantes pour les plateformes iOS et Android.','3/18/2024','4/1/2025','12 semaines','$650 ',5,2,NULL,5,3),(6,'Architecte cloud','Concevez des solutions d\'infrastructure cloud évolutives et sécurisées pour les entreprises.','3/19/2024','6/21/2024','8 semaines','$800 ',4,3,NULL,6,3),(7,'Spécialiste en intelligence artificielle','Exploitez le potentiel de l\'intelligence artificielle pour développer des systèmes intelligents et autonomes.','3/20/2024','11/7/2024','12 semaines','$500 ',2,1,NULL,7,3),(8,'Ingénieur DevOps','Mettez en place des pipelines d\'intégration et de déploiement continus pour accélérer le cycle de développement logiciel.','3/21/2024','10/25/2025','8 semaines','$750 ',5,2,NULL,8,3),(9,'Chef de projet informatique','Supervisez la réalisation de projets informatiques, de la conception à la livraison.','3/22/2024','11/15/2024','16 semaines','$850 ',3,1,NULL,9,3),(10,'Consultant en informatique décisionnelle','Utilisez des outils de Business Intelligence pour aider les entreprises à prendre des décisions stratégiques basées sur les données.','3/23/2024','12/23/2024','12 semaines','$550 ',4,3,NULL,10,3),(11,'Développeur web frontend','Créez des interfaces utilisateur dynamiques et réactives pour les applications web.','3/24/2024','8/17/2025','8 semaines','$700 ',1,0,NULL,11,3),(12,'Expert en cybersécurité','Protégez les systèmes informatiques contre les menaces extérieures en identifiant et en contrant les cyberattaques.','3/25/2024','7/2/2024','12 semaines','$900 ',3,2,NULL,12,3),(13,'Développeur Java','Développez des applications robustes et performantes en utilisant le langage de programmation Java.','3/26/2024','7/3/2025','16 semaines','$600 ',2,1,NULL,13,3),(14,'Ingénieur en virtualisation','Mettez en place des environnements de virtualisation pour optimiser l\'utilisation des ressources matérielles.','3/27/2024','9/11/2025','8 semaines','$750 ',5,2,NULL,14,3),(15,'Analyste financier en technologies de l\'information','Analysez les données financières à l\'aide d\'outils spécialisés pour fournir des informations précieuses aux entreprises.','3/28/2024','1/7/2025','12 semaines','$950 ',2,1,NULL,15,3),(16,'Administrateur de bases de données','Assurez la disponibilité et la performance des bases de données critiques pour les opérations commerciales.','3/29/2024','3/29/2024','8 semaines','$500 ',4,3,NULL,16,3),(17,'Développeur Python','Programmez des applications polyvalentes en utilisant le langage de programmation Python.','3/30/2024','9/21/2025','16 semaines','$700 ',1,0,NULL,17,3),(18,'Technicien support informatique','Fournissez un support technique de premier niveau aux utilisateurs, résolvant efficacement les problèmes informatiques.','3/31/2024','7/10/2024','12 semaines','$1,000 ',3,2,NULL,18,3),(19,'Analyste de système','Analysez les besoins des utilisateurs finaux pour concevoir des systèmes informatiques répondant à leurs exigences.','4/1/2024','11/10/2025','8 semaines','$550 ',2,0,NULL,19,3),(20,'Développeur de jeux vidéo','Créez des expériences de jeu immersives en développant des jeux vidéo captivants et divertissants.','4/2/2024','8/22/2024','16 semaines','$720 ',3,1,NULL,20,3),(21,'Ingénieur Projet','Gérer et coordonner des projets techniques de développement de produits ou de processus.','3/14/2024','2/2/2024','8 semaines','$600 ',3,0,NULL,21,4),(22,'Ingénieur Qualité','Mettre en place des procédures et des normes de qualité pour garantir la conformité des produits.','3/15/2024','7/25/2025','12 semaines','$700 ',4,1,NULL,22,4),(23,'Ingénieur R&D','Participer à la recherche et au développement de nouvelles technologies ou de nouveaux produits.','3/16/2024','12/29/2024','8 semaines','$750 ',3,0,NULL,23,4),(24,'Ingénieur Processus','Analyser et optimiser les processus de fabrication pour améliorer l\'efficacité et la rentabilité.','3/17/2024','2/2/2025','16 semaines','$550 ',5,2,NULL,24,4),(25,'Ingénieur Production','Superviser les opérations de production pour assurer la qualité et le respect des délais.','3/18/2024','5/6/2024','12 semaines','$650 ',4,3,NULL,25,4),(26,'Ingénieur Maintenance','Assurer la maintenance préventive et corrective des équipements industriels.','3/19/2024','9/5/2024','8 semaines','$800 ',2,1,NULL,26,4),(27,'Ingénieur Amélioration Continue','Identifier et mettre en œuvre des solutions visant à améliorer continuellement les processus.','3/20/2024','3/9/2025','12 semaines','$500 ',5,2,NULL,27,4),(28,'Ingénieur Fiabilité','Évaluer la fiabilité des équipements et proposer des actions préventives.','3/21/2024','3/11/2024','8 semaines','$750 ',3,1,NULL,28,4),(29,'Ingénieur Méthodes','Développer et mettre en place des méthodes de travail efficaces et innovantes.','3/22/2024','4/30/2024','16 semaines','$850 ',4,3,NULL,29,4),(30,'Ingénieur Industrialisation','Participer à l\'industrialisation de nouveaux produits ou processus de production.','3/23/2024','2/11/2025','12 semaines','$550 ',1,0,NULL,30,4),(31,'Ingénieur Supply Chain','Optimiser la gestion des flux de production et de distribution des produits.','3/24/2024','1/27/2025','8 semaines','$700 ',3,2,NULL,31,4),(32,'Ingénieur Logistique','Organiser et superviser les activités logistiques liées à la chaîne d\'approvisionnement.','3/25/2024','1/25/2024','12 semaines','$900 ',2,1,NULL,32,4),(33,'Ingénieur Optimisation des Coûts','Identifier et mettre en place des actions visant à réduire les coûts de production.','3/26/2024','6/29/2025','16 semaines','$600 ',5,2,NULL,33,4),(34,'Ingénieur Planification','Planifier les activités de production en fonction des capacités et des ressources disponibles.','3/27/2024','11/29/2025','8 semaines','$750 ',2,1,NULL,34,4),(35,'Ingénieur Validation','Valider les performances et la conformité des produits selon les spécifications techniques.','3/28/2024','2/20/2024','12 semaines','$950 ',4,3,NULL,35,4),(36,'Ingénieur Technico-commercial','Assurer le suivi commercial des projets techniques et proposer des solutions adaptées aux clients.','3/29/2024','6/1/2024','8 semaines','$500 ',1,0,NULL,36,4),(37,'Ingénieur Innovation','Participer à la veille technologique et à l\'identification des opportunités d\'innovation.','3/30/2024','9/21/2025','16 semaines','$700 ',3,2,NULL,37,4),(38,'Ingénieur Conception','Concevoir et développer des produits en tenant compte des contraintes techniques et économiques.','3/31/2024','9/28/2024','12 semaines','$1,000 ',2,0,NULL,38,4),(39,'Ingénieur Système','Définir et mettre en place des architectures système répondant aux besoins des clients.','4/1/2024','12/23/2025','8 semaines','$550 ',3,1,NULL,39,4),(40,'Ingénieur Exploitation','Assurer l\'exploitation et la maintenance des équipements industriels et des infrastructures.','4/2/2024','10/10/2024','16 semaines','$720 ',3,0,NULL,40,4),(41,'Ingénieur Travaux','Superviser et coordonner les travaux de construction sur les chantiers.','3/14/2024','6/9/2025','8 semaines','$600 ',4,1,NULL,41,4),(42,'Ingénieur Génie Civil','Concevoir et dimensionner les ouvrages de génie civil en respectant les normes et réglementations en vigueur.','3/15/2024','4/15/2024','12 semaines','$700 ',3,0,NULL,42,4),(43,'Ingénieur Structure','Calculer les structures et les éléments de construction pour garantir leur stabilité et leur durabilité.','3/16/2024','11/23/2024','8 semaines','$750 ',5,2,NULL,43,4),(44,'Ingénieur Bâtiment','Réaliser des études de faisabilité et des plans d\'exécution pour les projets de construction.','3/17/2024','8/29/2025','16 semaines','$550 ',4,3,NULL,44,4),(45,'Ingénieur VRD (Voirie et Réseaux Divers)','Concevoir les bâtiments en intégrant les aspects architecturaux, techniques et fonctionnels.','3/18/2024','10/6/2025','12 semaines','$650 ',2,1,NULL,45,4),(46,'Ingénieur Hydraulique','Planifier et coordonner les travaux de voirie et les réseaux de distribution des fluides.','3/19/2024','3/17/2025','8 semaines','$800 ',5,2,NULL,46,4),(47,'Ingénieur Électricité','Concevoir les installations électriques en tenant compte des normes de sécurité et de performance.','3/20/2024','5/17/2025','12 semaines','$500 ',3,1,NULL,47,4),(48,'Ingénieur Énergies Renouvelables','Étudier et mettre en place des solutions pour optimiser la consommation énergétique des bâtiments.','3/21/2024','12/14/2025','8 semaines','$750 ',4,3,NULL,48,4),(49,'Ingénieur Acoustique','Évaluer et atténuer les nuisances sonores dans les projets de construction.','3/22/2024','5/25/2025','16 semaines','$850 ',1,0,NULL,49,4),(50,'Ingénieur Sécurité et Prévention des Risques','Assurer la sécurité des chantiers et la prévention des risques professionnels.','3/23/2024','8/15/2024','12 semaines','$550 ',3,2,NULL,50,4),(0,'','','','','','',0,0,'',0,0),(0,'','','','','','',0,0,'',0,0),(0,'','','','','','',0,0,'',0,0),(0,'','','','','','',0,0,'',0,0),(0,'','','','','','',0,0,'',0,0),(0,'','','','','','',0,0,'',0,0),(0,'','','','','','',0,0,'',0,0),(0,'','','','','','',0,0,'',0,0),(0,'','','','','','',0,0,'',0,0),(0,'','','','','','',0,0,'',0,0);
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilote`
--

DROP TABLE IF EXISTS `pilote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pilote` (
  `Profile_Id` int(11) DEFAULT NULL,
  `MyUnknownColumn` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilote`
--

LOCK TABLES `pilote` WRITE;
/*!40000 ALTER TABLE `pilote` DISABLE KEYS */;
INSERT INTO `pilote` VALUES (0,''),(2,''),(3,''),(4,'');
/*!40000 ALTER TABLE `pilote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `Profile_Id` int(11) DEFAULT NULL,
  `Profile_First_Name` text DEFAULT NULL,
  `Profile_Last_Name` text DEFAULT NULL,
  `Profile_Login` text DEFAULT NULL,
  `Profile_Password` text DEFAULT NULL,
  `Profile_Picture_Link` text DEFAULT NULL,
  `Profile_Banner_Link` text DEFAULT NULL,
  `Profile_Deleted_At` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'Alice','Durant','alice.duran@viacesi.fr','Alice.D','','',''),(2,'Sylvain','Bonturi','sylvain.bouturi@viacesi.fr','hash_123','','',''),(3,'Vinh','Vho ','vinh.vho@viacesi.fr','Vinh.V','','',''),(4,'Youssef','Abou-Msallem','youssef.abou-msallem@viacesi.fr','Youssef.A','','',''),(5,'Alban','Renard','alban.renard@viacesi.fr','Alban.M','','',''),(6,'Tim','Vinciguerra','tim.vinciguerra@viacesi.fr','Tim.V','','',''),(7,'Ethan','Jouvin','ethan.jouvin@viacesi.fr','Ethan.J','','',''),(8,'Gabriel','Ricard','gabriel.ricardon@viacesi.fr','Gabriel.R','','',''),(9,'Joris','Claude','joris.claude@viacesi.fr','Joris.C ','','',''),(10,'Brice','Delachaise','brice.delachaise@viacesi.fr','Brice.D','','',''),(11,'Yohan','Linossier','yohan.linossier@viacesi.fr','Yohan.L','','',''),(12,'Romuald','Aversenq','romuald.aversenq@viacesi.fr','Romuald.A','','',''),(13,'Elias','OuinOuin','elias.ouinouin@viacesi.fr','Elias.O','','',''),(14,'Philmiass','Desloques','philmiass.desloques@viacesi.fr','Phileas.D','','',''),(15,'Nicolas','Lepetit','nicolas.lepetit@viacesi.fr','Nicolas.L','','',''),(16,'Logan','Lemmerdeur','logan.lemmerdeur@viacesi.fr','Logan.L','','',''),(17,'Corentin','Perez','corentin.perez@viacesi.fr','Corentin.P','','',''),(18,'Joao','Brillante','joao.brillante@viacesi.fr','Joao.B','','',''),(19,'Dorian','Chabreviere','dorian.chabreviere@viacesi.fr','Dorian.C','','',''),(20,'Mathys','Hanbayat','mathys.hanbayat@viacesi.fr','Mathys.H','','',''),(21,'Kylian','Dupuit','kylian.dupuit@viacesi.fr','Kylian.D','','',''),(22,'Thiago','Vincente','thiago.vincente@viacesi.fr','Thiago.V','','',''),(23,'Axel','Letourneur','axel.letourner@viacesi.fr','Axel.L','','',''),(24,'Justine','Salort','justine.salort@viacesi.fr','Justine.S','','',''),(25,'Arnaud','Bouyer','arnaud.bouyer@viacesi.fr','Arnaud.B','','',''),(26,'Julien','Roll','julien.roll@viacesi.fr','Julien.R','','',''),(27,'Hugo','Raze','hugo.raze@viacesi.fr','Hugo.R','','',''),(28,'Alois','Kamber','alois.kamber@viacesi.fr','Alois.K','','',''),(29,'Guillaume','Bedmar','guillaume.bedmar@viacesi.fr','Guillaume.B','','',''),(30,'Mathis','Trimoreau','mathis.trimoreau@viacesi.fr','Mathis.T','','',''),(31,'Alexandra','Auric','alexandra.auric@viacesi.fr','Alexandra.A','','',''),(32,'Malaury','Brown','malaury.brown@viacesi.fr','Malaury.B','','',''),(33,'Jordan','Zebo','jordan.zebo@viacesi.fr','Jordan.Z','','',''),(34,'Cedric','Doumbe','cedric.doumbe@viacesi.fr','Cedric.D','','',''),(35,'Baysangur','Chamsoudinov','baysangur.chamsoudinov@viacesi.fr','Baysangur.C','','',''),(36,'Conor','Mc-Gregor','conor.mc-gregor@viacesi.fr','Conor.M','','',''),(37,'Benoit','Saint-Denis','benoit.saint-denis@viacesi.fr','Benoit.S','','',''),(38,'Gwen','Garen','gwen.garen@viacesi.fr','Gwen.G','','',''),(39,'Dustin','Poirier','dustin.poirier@viacesi.fr','Dustin.P','','',''),(40,'Jamal','Musiala','jamal.musiala@viacesi.fr','Jamal.M','','',''),(41,'Omar','Darmoul','omar.darmoul@viacesi.fr','Omar.D','','',''),(42,'Karim','Rouis','karim.rouis@viacesi.fr','Karim.R','','',''),(43,'Romain','Filist','romain.filist@viacesi.fr','Romain.F','','',''),(44,'Romain','Zazzera','romain.zazzera@viacesi.fr','Romain.Z','','',''),(45,'Wiktor','Stark','wiktor.stark@viacesi.fr','Wiktor.S','','',''),(46,'Kamaru','Usman','kamaru.usman@viacesi.fr','Kamaru.U','','',''),(47,'Bassem','Bada','bassem.bada@viacesi.fr','Bassem.B','','',''),(48,'Ryadh','Kibou','ryadh.kibou@viacesi.fr','Ryadh.K','','',''),(49,'Ines','Bezouza','ines.bezouza@viacesi.fr','Ines.B','','',''),(50,'Miguel','Matioli','miguel.matioli@viacesi.fr','Miguel.M','','',''),(51,'Kylian','Mbappe','kylian.mbappe@viacesi.fr','Kylian.M','','','');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `Promotion_Id` int(11) DEFAULT NULL,
  `Promotion_Name` text DEFAULT NULL,
  `Promotion_Speciality` text DEFAULT NULL,
  `Promotion_Year` int(11) DEFAULT NULL,
  `Profile_Id` int(11) DEFAULT NULL,
  `Center_Id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'CPIA1','GENERALISTE',2022,2,''),(2,'CPIA2_BTP','BTP',2021,4,''),(3,'CPIA2_INFO','INFO',2021,3,''),(4,'CPIA2_GENE','GENERALISTE',2021,4,''),(5,'CPIA3_BTP','BTP',2020,4,''),(6,'CPIA3_INFO','INFO',2020,3,''),(7,'CPIA3_GENE','GENERALISTE',2020,4,''),(8,'CPIA4_INFO','INFO',2019,3,''),(9,'CPIA4_GENE','GENERALISTE',2019,4,''),(10,'CPIA4_BTP','BTP',2019,4,''),(11,'CPIA5_INFO','INFO',2018,3,''),(12,'CPIA5_BTP','BTP',2018,4,''),(13,'CPIA5_GENE','GENERALISTE',2018,4,'');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `Skill_Id` int(11) DEFAULT NULL,
  `Skill_Name` text DEFAULT NULL,
  `Skill_Level` text DEFAULT NULL
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
  `Profile_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (0),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `Wishlist_Id` int(11) DEFAULT NULL,
  `Profile_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13);
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

-- Dump completed on 2024-04-02  9:22:30
