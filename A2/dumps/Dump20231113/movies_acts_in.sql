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
-- Table structure for table `acts_in`
--

DROP TABLE IF EXISTS `acts_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acts_in` (
  `actor_id` varchar(9) DEFAULT NULL,
  `movie_id` varchar(9) NOT NULL,
  `persona` varchar(50) NOT NULL,
  KEY `actor_id` (`actor_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `acts_in_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`imdb_id`) ON DELETE SET NULL,
  CONSTRAINT `acts_in_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`imdb_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acts_in`
--

LOCK TABLES `acts_in` WRITE;
/*!40000 ALTER TABLE `acts_in` DISABLE KEYS */;
INSERT INTO `acts_in` VALUES ('0000158','0109830','Forrest Gump'),('0931508','0109830','Nurse at Park Bench'),('0000398','0109830','Mrs. Gump'),('0000209','0111161','Andy Dufresne'),('0000151','0111161','Ellis Boyd \'Red\' Redding'),('0348409','0111161','Warden Norton'),('0000008','0068646','Don Vito Corleone'),('0000199','0068646','Michael Corleone'),('0001001','0068646','Sonny Corleone'),('0000288','0468569','Bruce Wayne / Batman'),('0005132','0468569','Joker'),('0001173','0468569','Harvey Dent'),('0000199','0071562','Michael'),('0000380','0071562','Tom Hagen'),('0000473','0071562','Kay'),('0000842','0050083','Juror 1'),('0275835','0050083','Juror 2'),('0002011','0050083','Juror 3'),('0000553','0108052','Oskar Schindler'),('0001426','0108052','Itzhak Stern'),('0000146','0108052','Amon Goeth'),('0032370','0167260','Everard Proudfoot'),('0040012','0167260','Elanor Gamgee'),('0000276','0167260','Sam'),('0000619','0110912','Pumpkin'),('0001625','0110912','Honey Bunny'),('0522503','0110912','Waitress'),('0397102','0120737','Voice of the Ring'),('0032370','0120737','Everard Proudfoot'),('0000276','0120737','Sam'),('0908919','0060196','Tuco'),('0000142','0060196','Blondie'),('0001812','0060196','Sentenza / Angel Eyes'),('4271336','9362722','Miles Morales'),('2794962','9362722','Gwen Stacy'),('3109964','9362722','Jeff Morales'),('0001570','0137523','Narrator'),('0000093','0137523','Tyler Durden'),('0001533','0137523','Robert Paulsen'),('0021600','0167261','Aldor'),('0000276','0167261','Sam'),('0045324','0167261','Madril'),('0000138','1375666','Cobb'),('0330687','1375666','Arthur'),('0680983','1375666','Ariadne'),('0000434','0080684','Luke Skywalker'),('0000148','0080684','Han Solo'),('0000402','0080684','Princess Leia'),('0000206','0133093','Neo'),('0000401','0133093','Morpheus'),('0005251','0133093','Trinity'),('0000134','0099685','James Conway'),('0000501','0099685','Henry Hill'),('0000582','0099685','Tommy DeVito'),('0077720','0073486','Ellis'),('0110480','0073486','Col. Matterson'),('0111954','0073486','Dr. Spivey'),('0000151','0114369','Somerset'),('0001825','0114369','Dead Man at 1st Crime Scene'),('0669254','0114369','Detective Taylor at First Murder'),('0000071','0038650','George Bailey'),('0001656','0038650','Mary Hatch'),('0000859','0038650','Mr. Potter'),('0001536','0047478','Kikuchiyo'),('0793766','0047478','Kambei Shimada'),('0875477','0047478','Shino'),('0000149','0102926','Clarice Starling'),('0000164','0102926','Dr. Hannibal Lecter'),('0001277','0102926','Jack Crawford'),('0000158','0120815','Captain Miller'),('0001744','0120815','Sergeant Horvath'),('0122653','0120815','Private Reiben'),('1179105','0317248','Buscapé - Rocket'),('1129884','0317248','Zé Pequeno - Li\'l Zé'),('1249574','0317248','Bené - Benny'),('0000995','0816692','Murph'),('0000190','0816692','Cooper'),('3237775','0816692','Murph'),('0000905','0118799','Guido'),('0000971','0118799','Dora'),('0134493','0118799','Giosué'),('0000158','0120689','Paul Edgecomb'),('0001556','0120689','Brutus \'Brutal\' Howell'),('0001372','0120689','Jan Edgecomb'),('0000434','0076759','Luke Skywalker'),('0000148','0076759','Han Solo'),('0000402','0076759','Princess Leia Organa'),('0000216','0103064','The Terminator'),('0000157','0103064','Sarah Connor'),('0000411','0103064','John Connor'),('0000150','0088763','Marty McFly'),('0000502','0088763','Dr. Emmett Brown'),('0000670','0088763','Lorraine Baines'),('0383708','0245429','Chihiro Ogino / Sen'),('0997115','0245429','Haku'),('0622412','0245429','Yubaba / Zeniba'),('0004778','0253474','Wladyslaw Szpilman'),('0288976','0253474','Dorota'),('0954076','0253474','Jurek'),('0000578','0054215','Norman Bates'),('0587256','0054215','Lila Crane'),('0001260','0054215','Sam Loomis'),('0814280','6751668','Ki Taek'),('1310525','6751668','Dong Ik'),('1856097','6751668','Yeon Kyo'),('0000606','0110413','Leon'),('0000198','0110413','Stansfield'),('0000204','0110413','Mathilda'),('0000100','0110357','Zazu'),('0000111','0110357','Simba'),('0129295','0110357','Young Nala'),('0000128','0172495','Maximus'),('0001618','0172495','Commodus'),('0001567','0172495','Lucilla'),('0001570','0120586','Derek'),('0000411','0120586','Danny'),('0000350','0120586','Doris'),('0000138','0407887','Billy'),('0000354','0407887','Colin'),('0000197','0407887','Costello'),('1886602','2582802','Andrew'),('0799777','2582802','Fletcher'),('0001663','2582802','Jim Neimann'),('0413168','0482571','Robert Angier'),('0000288','0482571','Alfred Borden'),('0000323','0482571','Cutter'),('0000286','0114814','McManus'),('0000321','0114814','Keaton'),('0001125','0114814','Fenster'),('0000007','0034583','Rick Blaine'),('0000006','0034583','Ilsa Lund'),('0002134','0034583','Victor Laszlo'),('0851302','0095327','Seita'),('0794186','0095327','Setsuko'),('0794002','0095327','Mother'),('0619938','0056058','Hanshiro Tsugumo'),('0410968','0056058','Motome Chijiiwa'),('0412615','0056058','Miho Tsugumo'),('0167388','1675434','Philippe'),('1082477','1675434','Driss'),('0494504','1675434','Yvonne'),('0000122','0027977','A Factory Worker'),('0002104','0027977','A Gamin'),('0074788','0027977','Cafe Proprietor'),('0001012','0064116','Jill McBain'),('0000020','0064116','Frank'),('0001673','0064116','Manuel \'Cheyenne\' Gutiérrez'),('0041066','0095765','Maria Di Vita - Younger'),('0134073','0095765','Spaccafico'),('0199774','0095765','Anna');
/*!40000 ALTER TABLE `acts_in` ENABLE KEYS */;
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
