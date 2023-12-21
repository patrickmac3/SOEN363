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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imdb_id` varchar(9) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`,`imdb_id`),
  UNIQUE KEY `imdb_id` (`imdb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'0000158','Tom Hanks'),(2,'0931508','Rebecca Williams'),(3,'0000398','Sally Field'),(4,'0000709','Robert Zemeckis'),(5,'0343165','Winston Groom'),(6,'0744839','Eric Roth'),(7,'0000209','Tim Robbins'),(8,'0000151','Morgan Freeman'),(9,'0348409','Bob Gunton'),(10,'0001104','Frank Darabont'),(11,'0000175','Stephen King'),(13,'0000008','Marlon Brando'),(14,'0000199','Al Pacino'),(15,'0001001','James Caan'),(16,'0000338','Francis Ford Coppola'),(17,'0701374','Mario Puzo'),(19,'0000288','Christian Bale'),(20,'0005132','Heath Ledger'),(21,'0001173','Aaron Eckhart'),(22,'0634240','Christopher Nolan'),(23,'0634300','Jonathan Nolan'),(26,'0000380','Robert Duvall'),(27,'0000473','Diane Keaton'),(31,'0000842','Martin Balsam'),(32,'0275835','John Fiedler'),(33,'0002011','Lee J. Cobb'),(34,'0001486','Sidney Lumet'),(35,'0741627','Reginald Rose'),(37,'0000553','Liam Neeson'),(38,'0001426','Ben Kingsley'),(39,'0000146','Ralph Fiennes'),(40,'0000229','Steven Spielberg'),(41,'0447745','Thomas Keneally'),(42,'0001873','Steven Zaillian'),(43,'0032370','Noel Appleby'),(44,'0040012','Ali Astin'),(45,'0000276','Sean Astin'),(46,'0001392','Peter Jackson'),(47,'0866058','J.R.R. Tolkien'),(48,'0909638','Fran Walsh'),(49,'0000619','Tim Roth'),(50,'0001625','Amanda Plummer'),(51,'0522503','Laura Lovelace'),(52,'0000233','Quentin Tarantino'),(54,'0000812','Roger Avary'),(55,'0397102','Alan Howard'),(61,'0908919','Eli Wallach'),(62,'0000142','Clint Eastwood'),(63,'0001812','Lee Van Cleef'),(64,'0001466','Sergio Leone'),(65,'0898812','Luciano Vincenzoni'),(67,'4271336','Shameik Moore'),(68,'2794962','Hailee Steinfeld'),(69,'3109964','Brian Tyree Henry'),(70,'1690966','Joaquim Dos Santos'),(71,'5358492','Kemp Powers'),(72,'1042511','Justin K. Thompson'),(73,'0520488','Phil Lord'),(74,'0588087','Christopher Miller'),(75,'1709264','Dave Callaham'),(76,'0001570','Edward Norton'),(77,'0000093','Brad Pitt'),(78,'0001533','Meat Loaf'),(79,'0000399','David Fincher'),(80,'0657333','Chuck Palahniuk'),(81,'0880243','Jim Uhls'),(82,'0021600','Bruce Allpress'),(84,'0045324','John Bach'),(88,'0000138','Leonardo DiCaprio'),(89,'0330687','Joseph Gordon-Levitt'),(90,'0680983','Elliot Page'),(93,'0000434','Mark Hamill'),(94,'0000148','Harrison Ford'),(95,'0000402','Carrie Fisher'),(96,'0449984','Irvin Kershner'),(97,'0102824','Leigh Brackett'),(98,'0001410','Lawrence Kasdan'),(99,'0000206','Keanu Reeves'),(100,'0000401','Laurence Fishburne'),(101,'0005251','Carrie-Anne Moss'),(102,'0905154','Lana Wachowski'),(103,'0905152','Lilly Wachowski'),(106,'0000134','Robert De Niro'),(107,'0000501','Ray Liotta'),(108,'0000582','Joe Pesci'),(109,'0000217','Martin Scorsese'),(110,'0683380','Nicholas Pileggi'),(112,'0077720','Michael Berryman'),(113,'0110480','Peter Brocco'),(114,'0111954','Dean R. Brooks'),(115,'0001232','Milos Forman'),(116,'0369142','Lawrence Hauben'),(117,'0325743','Bo Goldman'),(119,'0001825','Andrew Kevin Walker'),(120,'0669254','Daniel Zacapa'),(123,'0000071','James Stewart'),(124,'0001656','Donna Reed'),(125,'0000859','Lionel Barrymore'),(126,'0001008','Frank Capra'),(127,'0329304','Frances Goodrich'),(128,'0352443','Albert Hackett'),(130,'0001536','Toshirô Mifune'),(131,'0793766','Takashi Shimura'),(132,'0875477','Keiko Tsushima'),(133,'0000041','Akira Kurosawa'),(135,'0368074','Shinobu Hashimoto'),(136,'0644823','Hideo Oguni'),(137,'0000149','Jodie Foster'),(138,'0000164','Anthony Hopkins'),(139,'0001277','Scott Glenn'),(140,'0001129','Jonathan Demme'),(141,'0365383','Thomas Harris'),(142,'0848217','Ted Tally'),(144,'0001744','Tom Sizemore'),(145,'0122653','Edward Burns'),(147,'0734441','Robert Rodat'),(148,'1179105','Alexandre Rodrigues'),(149,'1129884','Leandro Firmino'),(150,'1249574','Phellipe Haagensen'),(151,'0576987','Fernando Meirelles'),(152,'0526199','Kátia Lund'),(153,'0513130','Paulo Lins'),(154,'1130251','Bráulio Mantovani'),(155,'0000995','Ellen Burstyn'),(156,'0000190','Matthew McConaughey'),(157,'3237775','Mackenzie Foy'),(161,'0000905','Roberto Benigni'),(162,'0000971','Nicoletta Braschi'),(163,'0134493','Giorgio Cantarini'),(165,'0148437','Vincenzo Cerami'),(168,'0001556','David Morse'),(169,'0001372','Bonnie Hunt'),(176,'0000184','George Lucas'),(178,'0000216','Arnold Schwarzenegger'),(179,'0000157','Linda Hamilton'),(180,'0000411','Edward Furlong'),(181,'0000116','James Cameron'),(183,'0936537','William Wisher'),(184,'0000150','Michael J. Fox'),(185,'0000502','Christopher Lloyd'),(186,'0000670','Lea Thompson'),(189,'0301826','Bob Gale'),(190,'0383708','Rumi Hiiragi'),(191,'0997115','Miyu Irino'),(192,'0622412','Mari Natsuki'),(193,'0594503','Hayao Miyazaki'),(195,'0004778','Adrien Brody'),(196,'0288976','Emilia Fox'),(197,'0954076','Michal Zebrowski'),(198,'0000591','Roman Polanski'),(199,'0367838','Ronald Harwood'),(200,'0844262','Wladyslaw Szpilman'),(201,'0000578','Anthony Perkins'),(202,'0587256','Vera Miles'),(203,'0001260','John Gavin'),(204,'0000033','Alfred Hitchcock'),(205,'0825010','Joseph Stefano'),(206,'0088645','Robert Bloch'),(207,'0814280','Song Kang-ho'),(208,'1310525','Lee Sun-kyun'),(209,'1856097','Cho Yeo-jeong'),(210,'0094435','Bong Joon Ho'),(213,'0000606','Jean Reno'),(214,'0000198','Gary Oldman'),(215,'0000204','Natalie Portman'),(216,'0000108','Luc Besson'),(218,'0000100','Rowan Atkinson'),(219,'0000111','Matthew Broderick'),(220,'0129295','Niketa Calame-Harris'),(221,'0021249','Roger Allers'),(222,'0591450','Rob Minkoff'),(223,'0575293','Irene Mecchi'),(224,'0731271','Jonathan Roberts'),(225,'0941314','Linda Woolverton'),(226,'0000128','Russell Crowe'),(227,'0001618','Joaquin Phoenix'),(228,'0001567','Connie Nielsen'),(229,'0000631','Ridley Scott'),(230,'0291905','David Franzoni'),(234,'0000350','Beverly D\'Angelo'),(235,'0443411','Tony Kaye'),(236,'0571346','David McKenna'),(238,'0000354','Matt Damon'),(239,'0000197','Jack Nicholson'),(241,'1184258','William Monahan'),(242,'0538320','Alan Mak'),(243,'1886602','Miles Teller'),(244,'0799777','J.K. Simmons'),(245,'0001663','Paul Reiser'),(246,'3227090','Damien Chazelle'),(248,'0413168','Hugh Jackman'),(250,'0000323','Michael Caine'),(254,'0000286','Stephen Baldwin'),(255,'0000321','Gabriel Byrne'),(256,'0001125','Benicio Del Toro'),(257,'0001741','Bryan Singer'),(258,'0003160','Christopher McQuarrie'),(259,'0000007','Humphrey Bogart'),(260,'0000006','Ingrid Bergman'),(261,'0002134','Paul Henreid'),(262,'0002031','Michael Curtiz'),(263,'0258493','Julius J. Epstein'),(264,'0258525','Philip G. Epstein'),(265,'0462321','Howard Koch'),(266,'0851302','Tsutomu Tatsumi'),(267,'0794186','Ayano Shiraishi'),(268,'0794002','Yoshiko Shinohara'),(269,'0847223','Isao Takahata'),(270,'0636435','Akiyuki Nosaka'),(272,'0619938','Tatsuya Nakadai'),(273,'0410968','Akira Ishihama'),(274,'0412615','Shima Iwashita'),(275,'0462030','Masaki Kobayashi'),(276,'0847668','Yasuhiko Takiguchi'),(278,'0167388','François Cluzet'),(279,'1082477','Omar Sy'),(280,'0494504','Anne Le Ny'),(281,'0619923','Olivier Nakache'),(282,'0865918','Éric Toledano'),(285,'0000122','Charles Chaplin'),(286,'0002104','Paulette Goddard'),(287,'0074788','Henry Bergman'),(290,'0001012','Claudia Cardinale'),(291,'0000020','Henry Fonda'),(292,'0001673','Jason Robards'),(294,'0006872','Sergio Donati'),(296,'0041066','Antonella Attili'),(297,'0134073','Enzo Cannavale'),(298,'0199774','Isa Danieli'),(299,'0868153','Giuseppe Tornatore');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
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
