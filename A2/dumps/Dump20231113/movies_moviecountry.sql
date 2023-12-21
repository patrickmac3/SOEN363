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
-- Table structure for table `moviecountry`
--

DROP TABLE IF EXISTS `moviecountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moviecountry` (
  `country` varchar(50) NOT NULL,
  `movie_id` varchar(9) NOT NULL,
  UNIQUE KEY `country` (`country`,`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `moviecountry_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`country`) ON DELETE CASCADE,
  CONSTRAINT `moviecountry_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`imdb_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviecountry`
--

LOCK TABLES `moviecountry` WRITE;
/*!40000 ALTER TABLE `moviecountry` DISABLE KEYS */;
INSERT INTO `moviecountry` VALUES ('United States','0027977'),('United States','0034583'),('United States','0038650'),('Japan','0047478'),('United States','0050083'),('United States','0054215'),('Japan','0056058'),('Italy','0060196'),('Spain','0060196'),('West Germany','0060196'),('Italy','0064116'),('United States','0064116'),('United States','0068646'),('United States','0071562'),('United States','0073486'),('United States','0076759'),('United States','0080684'),('United States','0088763'),('Japan','0095327'),('France','0095765'),('Italy','0095765'),('United States','0099685'),('United States','0102926'),('United States','0103064'),('United States','0108052'),('United States','0109830'),('United States','0110357'),('France','0110413'),('United States','0110413'),('United States','0110912'),('United States','0111161'),('United States','0114369'),('Germany','0114814'),('United States','0114814'),('Italy','0118799'),('United States','0120586'),('United States','0120689'),('New Zealand','0120737'),('United States','0120737'),('United States','0120815'),('Australia','0133093'),('United States','0133093'),('Germany','0137523'),('United States','0137523'),('New Zealand','0167260'),('United States','0167260'),('New Zealand','0167261'),('United States','0167261'),('Malta','0172495'),('Morocco','0172495'),('United Kingdom','0172495'),('United States','0172495'),('Japan','0245429'),('France','0253474'),('Germany','0253474'),('Poland','0253474'),('United Kingdom','0253474'),('United States','0253474'),('Brazil','0317248'),('France','0317248'),('Germany','0317248'),('Hong Kong','0407887'),('United States','0407887'),('United Kingdom','0468569'),('United States','0468569'),('United Kingdom','0482571'),('United States','0482571'),('Canada','0816692'),('United Kingdom','0816692'),('United States','0816692'),('United Kingdom','1375666'),('United States','1375666'),('France','1675434'),('United States','2582802'),('South Korea','6751668'),('United States','9362722');
/*!40000 ALTER TABLE `moviecountry` ENABLE KEYS */;
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
