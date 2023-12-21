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
-- Table structure for table `keyword`
--

DROP TABLE IF EXISTS `keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyword` (
  `id` int NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword`
--

LOCK TABLES `keyword` WRITE;
/*!40000 ALTER TABLE `keyword` DISABLE KEYS */;
INSERT INTO `keyword` VALUES (107,'16th century'),(137,'1930s'),(22,'1950s'),(237,'actor director writer'),(181,'africa'),(72,'ambiguous ending'),(104,'angel on earth'),(62,'anti establishment'),(220,'anti nazi'),(244,'arizona territory'),(148,'artificial intelligence'),(81,'artificial reality'),(180,'assassin'),(127,'astronaut'),(115,'bad guy wins'),(165,'based on autobiography'),(2,'based on book'),(57,'based on comic'),(3,'based on novel'),(7,'based on the works of stephen king'),(108,'battle'),(190,'battlefield'),(249,'blind man'),(124,'brazil'),(231,'caregiver'),(219,'casablanca morocco'),(160,'child protagonist'),(102,'christmas'),(247,'cinema'),(53,'civil war'),(171,'class differences'),(20,'clown'),(189,'combat'),(23,'corrupt politician'),(29,'courtroom'),(13,'crime family'),(213,'criminal'),(212,'criminal mastermind'),(24,'cuban revolution'),(195,'curb stomping'),(118,'d day'),(16,'dc comics'),(210,'death by drowning'),(138,'death row'),(136,'death row inmate'),(153,'delorean'),(97,'detective'),(27,'dialogue driven'),(233,'disabled person'),(71,'dream'),(45,'drug dealing'),(44,'drug overdose'),(43,'drug use'),(202,'drummer'),(79,'duel'),(84,'dystopia'),(50,'elf'),(201,'emotional abuse'),(94,'escape'),(8,'escape from prison'),(236,'factory'),(76,'famous twist'),(129,'father daughter relationship'),(125,'favela'),(246,'film projectionist'),(224,'firefly'),(248,'flashback'),(221,'food'),(243,'former prostitute'),(174,'fraud'),(9,'friendship between men'),(147,'future'),(142,'galactic war'),(123,'gang'),(86,'gangster'),(35,'german'),(187,'gladiator'),(139,'good versus evil'),(65,'group therapy'),(103,'guardian angel'),(241,'harmonica'),(193,'hatred'),(163,'hiding a jew'),(176,'hitman'),(39,'hobbit'),(31,'holocaust'),(175,'house'),(206,'illusion'),(239,'industry'),(63,'insomnia'),(198,'irish mafia'),(240,'jail'),(109,'japan'),(204,'jazz music'),(34,'jew'),(133,'jewish'),(36,'journey'),(26,'jury'),(179,'killer child'),(182,'king'),(25,'lake tahoe nevada'),(144,'lightsaber'),(183,'lion'),(178,'loss of family'),(217,'love triangle'),(11,'mafia'),(209,'magic'),(207,'magician'),(55,'man with no name'),(170,'maniac'),(56,'marvel comics'),(93,'mental illness'),(91,'mental institution'),(38,'middle earth'),(74,'mindbender'),(70,'mission'),(90,'mob'),(197,'mobster'),(169,'money'),(18,'moral dilemma'),(166,'motel'),(149,'mother son relationship'),(64,'multiple personality disorder'),(59,'multiverse'),(28,'murder'),(99,'murder investigation'),(205,'music school'),(238,'music score composed by director'),(95,'native american'),(32,'nazi'),(33,'nazi concentration camp'),(132,'nazi occupation'),(191,'neo nazi'),(218,'nightclub'),(41,'nonlinear timeline'),(250,'nostalgia'),(92,'nurse'),(110,'old woman'),(225,'older brother younger sister'),(37,'orc'),(14,'organized crime'),(222,'orphan'),(42,'overdose'),(158,'parent child relationship'),(77,'part of trilogy'),(12,'patriarch'),(121,'photographer'),(162,'pianist'),(172,'plot twist'),(196,'police'),(85,'post apocalypse'),(229,'poverty'),(185,'prince'),(143,'princess'),(6,'prison'),(114,'psycho thriller'),(17,'psychopath'),(234,'quadriplegia'),(47,'quest'),(194,'racism'),(141,'rebellion'),(80,'rescue'),(117,'rescue mission'),(21,'revenge'),(235,'rich poor'),(40,'ring'),(89,'rise and fall'),(15,'rise to power'),(208,'rivalry'),(186,'roman empire'),(150,'sacrifice'),(106,'samurai'),(126,'saving the world'),(200,'scene of the crime'),(58,'second part'),(230,'seppuku'),(96,'serial killer'),(100,'severed head'),(184,'shakespearean'),(51,'shootout'),(242,'showdown'),(167,'shower'),(5,'shrimp boat'),(83,'simulated reality'),(188,'slavery'),(122,'slum'),(105,'small town'),(101,'small town life'),(173,'social satire'),(145,'space opera'),(128,'space travel'),(52,'spaghetti western'),(60,'spider man character'),(159,'spirit world'),(168,'stabbed with a knife'),(112,'stuck in a well'),(156,'studio ghibli'),(73,'subconscious'),(228,'suicide'),(19,'superhero'),(61,'surprise ending'),(164,'survival'),(214,'suspect'),(135,'tank'),(203,'teacher student relationship'),(78,'the force'),(54,'third in trilogy'),(152,'time machine'),(146,'time travel'),(155,'time travel comedy'),(30,'trial'),(157,'turned into a pig'),(120,'u.s. army'),(215,'unreliable narrator'),(140,'urinary tract infection'),(4,'vietnam'),(1,'vietnam war'),(82,'war with machines'),(67,'wizard'),(116,'world war two'),(130,'wormhole'),(10,'wrongful conviction'),(119,'year 1944'),(245,'yuma territorial prison');
/*!40000 ALTER TABLE `keyword` ENABLE KEYS */;
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
