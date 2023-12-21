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
-- Table structure for table `contentrating`
--

DROP TABLE IF EXISTS `contentrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contentrating` (
  `contentRating` varchar(5) NOT NULL,
  `movie_id` varchar(9) NOT NULL,
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `contentrating_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`imdb_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentrating`
--

LOCK TABLES `contentrating` WRITE;
/*!40000 ALTER TABLE `contentrating` DISABLE KEYS */;
INSERT INTO `contentrating` VALUES ('G','0109830'),('13+','0111161'),('13+','0068646'),('PG','0468569'),('13+','0071562'),('PG','0050083'),('14A','0108052'),('G','0167260'),('16+','0110912'),('14A','0120737'),('14+','0060196'),('G','9362722'),('18+','0137523'),('14A','0167261'),('G','1375666'),('PG','0080684'),('13+','0133093'),('13+','0099685'),('13+','0073486'),('16+','0114369'),('G','0038650'),('G','0047478'),('18+','0102926'),('13+','0120815'),('18A','0317248'),('G','0816692'),('PG','0118799'),('13+','0120689'),('G','0076759'),('18A','0103064'),('G','0088763'),('PG','0245429'),('13+','0253474'),('13+','0054215'),('14A','6751668'),('16+','0110413'),('G','0110357'),('13+','0172495'),('16+','0120586'),('18A','0407887'),('13+','2582802'),('G','0482571'),('13+','0114814'),('G','0034583'),('G','0095327'),('PG','0056058'),('14A','1675434'),('G','0027977'),('13+','0064116'),('G','0095765');
/*!40000 ALTER TABLE `contentrating` ENABLE KEYS */;
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
