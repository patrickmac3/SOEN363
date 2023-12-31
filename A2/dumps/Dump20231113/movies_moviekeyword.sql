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
-- Table structure for table `moviekeyword`
--

DROP TABLE IF EXISTS `moviekeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moviekeyword` (
  `keyword_id` int NOT NULL,
  `movie_id` varchar(9) NOT NULL,
  UNIQUE KEY `keyword_id` (`keyword_id`,`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `moviekeyword_ibfk_1` FOREIGN KEY (`keyword_id`) REFERENCES `keyword` (`id`) ON DELETE CASCADE,
  CONSTRAINT `moviekeyword_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`imdb_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviekeyword`
--

LOCK TABLES `moviekeyword` WRITE;
/*!40000 ALTER TABLE `moviekeyword` DISABLE KEYS */;
INSERT INTO `moviekeyword` VALUES (236,'0027977'),(237,'0027977'),(238,'0027977'),(239,'0027977'),(240,'0027977'),(217,'0034583'),(218,'0034583'),(219,'0034583'),(220,'0034583'),(101,'0038650'),(102,'0038650'),(103,'0038650'),(104,'0038650'),(105,'0038650'),(106,'0047478'),(107,'0047478'),(108,'0047478'),(109,'0047478'),(110,'0047478'),(26,'0050083'),(27,'0050083'),(28,'0050083'),(29,'0050083'),(30,'0050083'),(166,'0054215'),(167,'0054215'),(168,'0054215'),(169,'0054215'),(170,'0054215'),(228,'0056058'),(229,'0056058'),(230,'0056058'),(51,'0060196'),(52,'0060196'),(53,'0060196'),(54,'0060196'),(55,'0060196'),(241,'0064116'),(242,'0064116'),(243,'0064116'),(244,'0064116'),(245,'0064116'),(11,'0068646'),(12,'0068646'),(13,'0068646'),(14,'0068646'),(15,'0068646'),(21,'0071562'),(22,'0071562'),(23,'0071562'),(24,'0071562'),(25,'0071562'),(91,'0073486'),(92,'0073486'),(93,'0073486'),(94,'0073486'),(95,'0073486'),(141,'0076759'),(142,'0076759'),(143,'0076759'),(144,'0076759'),(145,'0076759'),(76,'0080684'),(77,'0080684'),(78,'0080684'),(79,'0080684'),(80,'0080684'),(152,'0088763'),(153,'0088763'),(155,'0088763'),(221,'0095327'),(222,'0095327'),(224,'0095327'),(225,'0095327'),(246,'0095765'),(247,'0095765'),(248,'0095765'),(249,'0095765'),(250,'0095765'),(86,'0099685'),(89,'0099685'),(90,'0099685'),(112,'0102926'),(114,'0102926'),(115,'0102926'),(146,'0103064'),(147,'0103064'),(148,'0103064'),(149,'0103064'),(150,'0103064'),(31,'0108052'),(32,'0108052'),(33,'0108052'),(34,'0108052'),(35,'0108052'),(1,'0109830'),(2,'0109830'),(3,'0109830'),(4,'0109830'),(5,'0109830'),(181,'0110357'),(182,'0110357'),(183,'0110357'),(184,'0110357'),(185,'0110357'),(176,'0110413'),(178,'0110413'),(179,'0110413'),(180,'0110413'),(41,'0110912'),(42,'0110912'),(43,'0110912'),(44,'0110912'),(45,'0110912'),(6,'0111161'),(7,'0111161'),(8,'0111161'),(9,'0111161'),(10,'0111161'),(96,'0114369'),(97,'0114369'),(99,'0114369'),(100,'0114369'),(212,'0114814'),(213,'0114814'),(214,'0114814'),(215,'0114814'),(132,'0118799'),(133,'0118799'),(135,'0118799'),(191,'0120586'),(193,'0120586'),(194,'0120586'),(195,'0120586'),(136,'0120689'),(137,'0120689'),(138,'0120689'),(139,'0120689'),(140,'0120689'),(47,'0120737'),(50,'0120737'),(116,'0120815'),(117,'0120815'),(118,'0120815'),(119,'0120815'),(120,'0120815'),(81,'0133093'),(82,'0133093'),(83,'0133093'),(84,'0133093'),(85,'0133093'),(61,'0137523'),(62,'0137523'),(63,'0137523'),(64,'0137523'),(65,'0137523'),(36,'0167260'),(37,'0167260'),(38,'0167260'),(39,'0167260'),(40,'0167260'),(67,'0167261'),(70,'0167261'),(186,'0172495'),(187,'0172495'),(188,'0172495'),(189,'0172495'),(190,'0172495'),(156,'0245429'),(157,'0245429'),(158,'0245429'),(159,'0245429'),(160,'0245429'),(162,'0253474'),(163,'0253474'),(164,'0253474'),(165,'0253474'),(121,'0317248'),(122,'0317248'),(123,'0317248'),(124,'0317248'),(125,'0317248'),(196,'0407887'),(197,'0407887'),(198,'0407887'),(200,'0407887'),(16,'0468569'),(17,'0468569'),(18,'0468569'),(19,'0468569'),(20,'0468569'),(206,'0482571'),(207,'0482571'),(208,'0482571'),(209,'0482571'),(210,'0482571'),(126,'0816692'),(127,'0816692'),(128,'0816692'),(129,'0816692'),(130,'0816692'),(71,'1375666'),(72,'1375666'),(73,'1375666'),(74,'1375666'),(231,'1675434'),(233,'1675434'),(234,'1675434'),(235,'1675434'),(201,'2582802'),(202,'2582802'),(203,'2582802'),(204,'2582802'),(205,'2582802'),(171,'6751668'),(172,'6751668'),(173,'6751668'),(174,'6751668'),(175,'6751668'),(56,'9362722'),(57,'9362722'),(58,'9362722'),(59,'9362722'),(60,'9362722');
/*!40000 ALTER TABLE `moviekeyword` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-13 20:27:40
