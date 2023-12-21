-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `id` int NOT NULL,
  `imdb_id` varchar(9) NOT NULL,
  PRIMARY KEY (`imdb_id`),
  UNIQUE KEY `imdb_id` (`imdb_id`),
  KEY `id` (`id`,`imdb_id`),
  CONSTRAINT `actor_ibfk_1` FOREIGN KEY (`id`, `imdb_id`) REFERENCES `person` (`id`, `imdb_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'0000158'),(2,'0931508'),(3,'0000398'),(7,'0000209'),(8,'0000151'),(9,'0348409'),(13,'0000008'),(14,'0000199'),(15,'0001001'),(19,'0000288'),(20,'0005132'),(21,'0001173'),(26,'0000380'),(27,'0000473'),(31,'0000842'),(32,'0275835'),(33,'0002011'),(37,'0000553'),(38,'0001426'),(39,'0000146'),(43,'0032370'),(44,'0040012'),(45,'0000276'),(49,'0000619'),(50,'0001625'),(51,'0522503'),(55,'0397102'),(61,'0908919'),(62,'0000142'),(63,'0001812'),(67,'4271336'),(68,'2794962'),(69,'3109964'),(76,'0001570'),(77,'0000093'),(78,'0001533'),(82,'0021600'),(84,'0045324'),(88,'0000138'),(89,'0330687'),(90,'0680983'),(93,'0000434'),(94,'0000148'),(95,'0000402'),(99,'0000206'),(100,'0000401'),(101,'0005251'),(106,'0000134'),(107,'0000501'),(108,'0000582'),(112,'0077720'),(113,'0110480'),(114,'0111954'),(119,'0001825'),(120,'0669254'),(123,'0000071'),(124,'0001656'),(125,'0000859'),(130,'0001536'),(131,'0793766'),(132,'0875477'),(137,'0000149'),(138,'0000164'),(139,'0001277'),(144,'0001744'),(145,'0122653'),(148,'1179105'),(149,'1129884'),(150,'1249574'),(155,'0000995'),(156,'0000190'),(157,'3237775'),(161,'0000905'),(162,'0000971'),(163,'0134493'),(168,'0001556'),(169,'0001372'),(178,'0000216'),(179,'0000157'),(180,'0000411'),(184,'0000150'),(185,'0000502'),(186,'0000670'),(190,'0383708'),(191,'0997115'),(192,'0622412'),(195,'0004778'),(196,'0288976'),(197,'0954076'),(201,'0000578'),(202,'0587256'),(203,'0001260'),(207,'0814280'),(208,'1310525'),(209,'1856097'),(213,'0000606'),(214,'0000198'),(215,'0000204'),(218,'0000100'),(219,'0000111'),(220,'0129295'),(226,'0000128'),(227,'0001618'),(228,'0001567'),(234,'0000350'),(238,'0000354'),(239,'0000197'),(243,'1886602'),(244,'0799777'),(245,'0001663'),(248,'0413168'),(250,'0000323'),(254,'0000286'),(255,'0000321'),(256,'0001125'),(259,'0000007'),(260,'0000006'),(261,'0002134'),(266,'0851302'),(267,'0794186'),(268,'0794002'),(272,'0619938'),(273,'0410968'),(274,'0412615'),(278,'0167388'),(279,'1082477'),(280,'0494504'),(285,'0000122'),(286,'0002104'),(287,'0074788'),(290,'0001012'),(291,'0000020'),(292,'0001673'),(296,'0041066'),(297,'0134073'),(298,'0199774');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-13 20:27:39