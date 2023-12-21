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
-- Table structure for table `movielan`
--

DROP TABLE IF EXISTS `movielan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movielan` (
  `movie_id` varchar(9) NOT NULL,
  `lan` varchar(50) NOT NULL,
  UNIQUE KEY `movie_id` (`movie_id`,`lan`),
  KEY `lan` (`lan`),
  CONSTRAINT `movielan_ibfk_1` FOREIGN KEY (`lan`) REFERENCES `lan` (`lan`) ON DELETE CASCADE,
  CONSTRAINT `movielan_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`imdb_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movielan`
--

LOCK TABLES `movielan` WRITE;
/*!40000 ALTER TABLE `movielan` DISABLE KEYS */;
INSERT INTO `movielan` VALUES ('0407887','Cantonese'),('0120815','Czech'),('0027977','English'),('0034583','English'),('0038650','English'),('0050083','English'),('0054215','English'),('0064116','English'),('0068646','English'),('0071562','English'),('0073486','English'),('0076759','English'),('0080684','English'),('0088763','English'),('0099685','English'),('0102926','English'),('0103064','English'),('0108052','English'),('0109830','English'),('0110357','English'),('0110413','English'),('0110912','English'),('0111161','English'),('0114369','English'),('0114814','English'),('0118799','English'),('0120586','English'),('0120689','English'),('0120737','English'),('0120815','English'),('0133093','English'),('0137523','English'),('0167260','English'),('0167261','English'),('0172495','English'),('0253474','English'),('0407887','English'),('0468569','English'),('0482571','English'),('0816692','English'),('1375666','English'),('1675434','English'),('2582802','English'),('6751668','English'),('9362722','English'),('0034583','French'),('0038650','French'),('0110413','French'),('0110912','French'),('0114814','French'),('0120689','French'),('0120815','French'),('1375666','French'),('1675434','French'),('0034583','German'),('0108052','German'),('0118799','German'),('0120815','German'),('0253474','German'),('0108052','Hebrew'),('0114814','Hungarian'),('0034583','Italian'),('0060196','Italian'),('0064116','Italian'),('0068646','Italian'),('0071562','Italian'),('0095765','Italian'),('0099685','Italian'),('0110413','Italian'),('0118799','Italian'),('0047478','Japanese'),('0056058','Japanese'),('0095327','Japanese'),('0245429','Japanese'),('1375666','Japanese'),('6751668','Korean'),('0068646','Latin'),('0071562','Latin'),('0102926','Latin'),('0108052','Latin'),('0468569','Mandarin'),('0167260','Old English'),('0167261','Old English'),('0108052','Polish'),('0317248','Portuguese'),('0167260','Quenya'),('0034583','Russian'),('0253474','Russian'),('0071562','Sicilian'),('0120737','Sindarin'),('0167260','Sindarin'),('0167261','Sindarin'),('0064116','Spanish'),('0071562','Spanish'),('0103064','Spanish'),('0110912','Spanish'),('0114814','Spanish'),('0110357','Swahili'),('0110357','Xhosa'),('0110357','Zulu');
/*!40000 ALTER TABLE `movielan` ENABLE KEYS */;
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
