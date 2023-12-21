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
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `id` int NOT NULL,
  `imdb_id` varchar(9) NOT NULL,
  PRIMARY KEY (`imdb_id`),
  KEY `id` (`id`,`imdb_id`),
  CONSTRAINT `director_ibfk_1` FOREIGN KEY (`id`, `imdb_id`) REFERENCES `person` (`id`, `imdb_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'0000158'),(4,'0000709'),(10,'0001104'),(16,'0000338'),(22,'0634240'),(34,'0001486'),(40,'0000229'),(46,'0001392'),(52,'0000233'),(64,'0001466'),(70,'1690966'),(71,'5358492'),(72,'1042511'),(79,'0000399'),(96,'0449984'),(102,'0905154'),(103,'0905152'),(109,'0000217'),(115,'0001232'),(126,'0001008'),(133,'0000041'),(140,'0001129'),(151,'0576987'),(152,'0526199'),(176,'0000184'),(181,'0000116'),(193,'0594503'),(198,'0000591'),(204,'0000033'),(210,'0094435'),(216,'0000108'),(221,'0021249'),(222,'0591450'),(229,'0000631'),(235,'0443411'),(246,'3227090'),(257,'0001741'),(262,'0002031'),(269,'0847223'),(275,'0462030'),(281,'0619923'),(282,'0865918'),(299,'0868153');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-13 20:27:41
