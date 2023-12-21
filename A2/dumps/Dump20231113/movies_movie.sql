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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imdb_id` varchar(9) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `rating` varchar(10) NOT NULL,
  `release_year` year NOT NULL,
  `runtime` int NOT NULL,
  `AKAs` varchar(100) NOT NULL,
  `number_of_reviews` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `imdb_id` (`imdb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'0109830','Forrest Gump','The history of the United States from the 1950s to the \'70s unfolds from the perspective of an Alabama man with an IQ of 75, who yearns to be reunited with his childhood sweetheart.','8.8',1994,142,'阿甘正传 (China, Mandarin title)',2195047),(2,'0111161','The Shawshank Redemption','Over the course of several years, two convicts form a friendship, seeking consolation and, eventually, redemption through basic compassion.','9.3',1994,142,'Rita Hayworth and Shawshank Redemption (United States)',2818470),(3,'0068646','The Godfather','Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.','9.2',1972,175,'Mario Puzo\'s The Godfather (United States)',1964291),(4,'0468569','The Dark Knight','When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.','9.0',2008,152,'Rory\'s First Kiss (United States)',2799986),(5,'0071562','The Godfather Part II','The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.','9.0',1974,202,'The Second Godfather (United States)',1333581),(6,'0050083','12 Angry Men','The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict.','9.0',1957,96,'Twelve Angry Men (United States)',839925),(7,'0108052','Schindler\'s List','In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.','9.0',1993,195,'La lista de Schindler (United States, Spanish title)',1416732),(8,'0167260','The Lord of the Rings: The Return of the King','Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.','9.0',2003,201,'The Return of the King (New Zealand, English title)',1930130),(9,'0110912','Pulp Fiction','The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.','8.9',1994,154,'Black Mask (United States)',2161338),(10,'0120737','The Lord of the Rings: The Fellowship of the Ring','A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.','8.8',2001,178,'The Fellowship of the Ring (United States)',1957197),(11,'0060196','The Good, the Bad and the Ugly','A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.','8.8',1966,161,'I due magnifici straccioni (Italy)',794151),(12,'9362722','Spider-Man: Across the Spider-Verse','Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.','8.7',2023,140,'Spider-Man: Across the Spider-Verse - Part One (United States)',293627),(13,'0137523','Fight Club','An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.','8.8',1999,139,'El club de la lucha (Spain)',2253504),(14,'0167261','The Lord of the Rings: The Two Towers','While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.','8.8',2002,179,'The Two Towers (United States)',1740458),(15,'1375666','Inception','A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.','8.8',2010,148,'Oliver\'s Arrow (United States)',2485184),(16,'0080684','Star Wars: Episode V - The Empire Strikes Back','After the Rebels are overpowered by the Empire, Luke Skywalker begins his Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader and bounty hunter Boba Fett.','8.7',1980,124,'Star Wars: The Empire Strikes Back (United States)',1350398),(17,'0133093','The Matrix','When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth-the life he knows is the elaborate deception of an evil cyber-intelligence.','8.7',1999,136,'Matrix (Japan, English title)',2003757),(18,'0099685','Goodfellas','The story of Henry Hill and his life in the mafia, covering his relationship with his wife Karen and his mob partners Jimmy Conway and Tommy DeVito.','8.7',1990,145,'Good Fellas (United States)',1224353),(19,'0073486','One Flew Over the Cuckoo\'s Nest','In the Fall of 1963, a Korean War veteran and criminal pleads insanity and is admitted to a mental institution, where he rallies up the scared patients against the tyrannical nurse.','8.7',1975,133,'Cuckoo\'s Nest (World-wide, English title)',1049627),(20,'0114369','Se7en','Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.','8.6',1995,127,'The Seven Deadly Sins (United States)',1747992),(21,'0038650','It\'s a Wonderful Life','An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.','8.6',1946,130,'The Greatest Gift (United States)',481948),(22,'0047478','Seven Samurai','Farmers from a village exploited by bandits hire a veteran samurai for protection, who gathers six other samurai to join him.','8.6',1954,207,'Shichi-nin no samurai (Japan)',360009),(23,'0102926','The Silence of the Lambs','A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.','8.6',1991,118,'Silence of the Lambs (United States)',1507054),(24,'0120815','Saving Private Ryan','Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.','8.6',1998,169,'Private Ryan (Japan, English title)',1460101),(25,'0317248','City of God','In the slums of Rio, two kids\' paths diverge as one struggles to become a photographer and the other a kingpin.','8.6',2002,130,'La cité de Dieu (France)',785883),(26,'0816692','Interstellar','When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.','8.7',2014,169,'Untitled Steven Spielberg Space Project (United States)',2010659),(27,'0118799','Life Is Beautiful','When an open-minded Jewish waiter and his son become victims of the Holocaust, he uses a perfect mixture of will, humor and imagination to protect his son from the dangers around their camp.','8.6',1997,116,'Life Is Beautiful (Canada, English title)',727162),(28,'0120689','The Green Mile','A tale set on death row in a Southern jail, where gentle giant John possesses the mysterious power to heal people\'s ailments. When the lead guard, Paul, recognizes John\'s gift, he tries to help stave off the condemned man\'s execution.','8.6',1999,189,'Stephen King\'s The Green Mile (United States)',1370895),(29,'0076759','Star Wars: Episode IV - A New Hope','Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.','8.6',1977,121,'La guerra de las estrellas (United States, Spanish title)',1421565),(30,'0103064','Terminator 2: Judgment Day','A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her ten year old son John from an even more advanced and powerful cyborg.','8.6',1991,137,'Terminator 2: Judgment Day 3D (United States)',1148798),(31,'0088763','Back to the Future','Marty McFly, a 17-year-old high school student, is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.','8.5',1985,116,'Retour vers le futur (France)',1272997),(32,'0245429','Spirited Away','During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches and spirits, a world where humans are changed into beasts.','8.6',2001,125,'Sen (Japan)',817860),(33,'0253474','The Pianist','A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.','8.5',2002,150,'Le pianiste (France)',885665),(34,'0054215','Psycho','A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run and checks into a remote motel run by a young man under the domination of his mother.','8.5',1960,109,'Alfred Hitchcock\'s Psycho (United States)',704212),(35,'6751668','Parasite','Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.','8.5',2019,132,'Parasite (Canada, English title)',901489),(36,'0110413','Léon: The Professional','12-year-old Mathilda is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin\'s trade.','8.5',1994,110,'Léon: The Professional (United States)',1216906),(37,'0110357','The Lion King','Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.','8.5',1994,88,'The Lion King 3D (United States, English title)',1113822),(38,'0172495','Gladiator','A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.','8.5',2000,155,'The Gladiators (United States)',1574607),(39,'0120586','American History X','Living a life marked by violence, neo-Nazi Derek finally goes to prison after killing two black youths. Upon his release, Derek vows to change; he hopes to prevent his brother, Danny, who idolizes Derek, from following in his footsteps.','8.5',1998,119,'美国X档案 (China, Mandarin title)',1164907),(40,'0407887','The Departed','An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.','8.5',2006,151,'無間道風雲 (Hong Kong, Cantonese title)',1389644),(41,'2582802','Whiplash','A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.','8.5',2014,106,'爆裂鼓手 (China, Mandarin title)',943598),(42,'0482571','The Prestige','After a tragic accident, two stage magicians in 1890s London engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.','8.5',2006,130,'Le Prestige (France)',1406349),(43,'0114814','The Usual Suspects','The sole survivor of a pier shoot-out tells the story of how a notorious criminal influenced the events that began with five criminals meeting in a seemingly random police lineup.','8.5',1995,106,'Die üblichen Verdächtigen (Germany)',1124862),(44,'0034583','Casablanca','A cynical expatriate American cafe owner struggles to decide whether or not to help his former lover and her fugitive husband escape the Nazis in French Morocco.','8.5',1942,102,'Everybody Comes to Rick\'s (United States)',594966),(45,'0095327','Grave of the Fireflies','A young boy and his little sister struggle to survive in Japan during World War II.','8.5',1988,89,'火垂るの墓（1988） (Japan, Japanese title)',298779),(46,'0056058','Harakiri','When a ronin requesting seppuku at a feudal lord\'s palace is told of the brutal suicide of another ronin who previously visited, he reveals how their pasts are intertwined - and in doing so challenges the clan\'s integrity.','8.6',1962,133,'切腹 (Japan, Japanese title)',64903),(47,'1675434','The Intouchables','After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.','8.5',2011,112,'The Intouchables (Singapore, English title)',905085),(48,'0027977','Modern Times','The Tramp struggles to live in modern industrial society with the help of a young homeless woman.','8.5',1936,87,'The Masses (United States)',254172),(49,'0064116','Once Upon a Time in the West','A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.','8.5',1968,166,'Once Upon a Time in the West (United States)',343359),(50,'0095765','Cinema Paradiso','A filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinema\'s projectionist.','8.5',1988,155,'Le Cinema Paradis (France)',275891);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
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
