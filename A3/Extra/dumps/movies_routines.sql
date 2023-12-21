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
-- Temporary view structure for view `actor_details`
--

DROP TABLE IF EXISTS `actor_details`;
/*!50001 DROP VIEW IF EXISTS `actor_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `actor_details` AS SELECT 
 1 AS `imdb_id`,
 1 AS `movie_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `persona`,
 1 AS `movie_title`,
 1 AS `movie_release_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `people`
--

DROP TABLE IF EXISTS `people`;
/*!50001 DROP VIEW IF EXISTS `people`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `people` AS SELECT 
 1 AS `IMDb Key`,
 1 AS `Name`,
 1 AS `Is Actor`,
 1 AS `Is Director`,
 1 AS `Is Creator`,
 1 AS `Total Number of Movies`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `keyword_details`
--

DROP TABLE IF EXISTS `keyword_details`;
/*!50001 DROP VIEW IF EXISTS `keyword_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `keyword_details` AS SELECT 
 1 AS `movie_title`,
 1 AS `movie_release_year`,
 1 AS `keyword`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `movie_summary`
--

DROP TABLE IF EXISTS `movie_summary`;
/*!50001 DROP VIEW IF EXISTS `movie_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `movie_summary` AS SELECT 
 1 AS `imdb_id`,
 1 AS `title`,
 1 AS `description`,
 1 AS `rating`,
 1 AS `contentRating`,
 1 AS `runtime`,
 1 AS `number_of_keywords`,
 1 AS `number_of_countries`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `movie_details`
--

DROP TABLE IF EXISTS `movie_details`;
/*!50001 DROP VIEW IF EXISTS `movie_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `movie_details` AS SELECT 
 1 AS `id`,
 1 AS `imdb_id`,
 1 AS `title`,
 1 AS `description`,
 1 AS `rating`,
 1 AS `runtime`,
 1 AS `release_year`,
 1 AS `genres`,
 1 AS `languages`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `country_details`
--

DROP TABLE IF EXISTS `country_details`;
/*!50001 DROP VIEW IF EXISTS `country_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `country_details` AS SELECT 
 1 AS `country`,
 1 AS `country_code`,
 1 AS `movie_title`,
 1 AS `movie_release_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `actor_details`
--

/*!50001 DROP VIEW IF EXISTS `actor_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `actor_details` AS select `p`.`imdb_id` AS `imdb_id`,`ai`.`movie_id` AS `movie_id`,substring_index(`p`.`name`,' ',1) AS `first_name`,substring_index(`p`.`name`,' ',-(1)) AS `last_name`,`ai`.`persona` AS `persona`,`m`.`title` AS `movie_title`,`m`.`release_year` AS `movie_release_year` from (((`person` `p` join `actor` `a` on((`p`.`imdb_id` = `a`.`imdb_id`))) join `acts_in` `ai` on((`a`.`imdb_id` = `ai`.`actor_id`))) join `movie` `m` on((`m`.`imdb_id` = `ai`.`movie_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `people`
--

/*!50001 DROP VIEW IF EXISTS `people`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `people` AS select `p`.`imdb_id` AS `IMDb Key`,`p`.`name` AS `Name`,(case when (`a`.`id` is not null) then 'Yes' else 'No' end) AS `Is Actor`,(case when (`d`.`id` is not null) then 'Yes' else 'No' end) AS `Is Director`,(case when (`c`.`id` is not null) then 'Yes' else 'No' end) AS `Is Creator`,((count(distinct `a`.`id`) + count(distinct `d`.`id`)) + count(distinct `c`.`id`)) AS `Total Number of Movies` from ((((((`person` `p` left join `actor` `a` on(((`p`.`id` = `a`.`id`) and (`p`.`imdb_id` = `a`.`imdb_id`)))) left join `director` `d` on(((`p`.`id` = `d`.`id`) and (`p`.`imdb_id` = `d`.`imdb_id`)))) left join `creator` `c` on(((`p`.`id` = `c`.`id`) and (`p`.`imdb_id` = `c`.`imdb_id`)))) left join `acts_in` `ai` on((`p`.`imdb_id` = `ai`.`actor_id`))) left join `directed` `di` on((`p`.`imdb_id` = `di`.`director_id`))) left join `created` `cr` on((`p`.`imdb_id` = `cr`.`creator_id`))) group by `p`.`imdb_id`,`p`.`name`,`a`.`id`,`d`.`id`,`c`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `keyword_details`
--

/*!50001 DROP VIEW IF EXISTS `keyword_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `keyword_details` AS select `m`.`title` AS `movie_title`,`m`.`release_year` AS `movie_release_year`,`k`.`keyword` AS `keyword` from ((`keyword` `k` join `moviekeyword` `mk` on((`mk`.`keyword_id` = `k`.`id`))) join `movie` `m` on((`m`.`imdb_id` = `mk`.`movie_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `movie_summary`
--

/*!50001 DROP VIEW IF EXISTS `movie_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `movie_summary` AS select `m`.`imdb_id` AS `imdb_id`,`m`.`title` AS `title`,`m`.`description` AS `description`,`m`.`rating` AS `rating`,`cr`.`contentRating` AS `contentRating`,`m`.`runtime` AS `runtime`,count(distinct `mk`.`keyword_id`) AS `number_of_keywords`,count(distinct `mc`.`country`) AS `number_of_countries` from (((`movie` `m` join `contentrating` `cr` on((`m`.`imdb_id` = `cr`.`movie_id`))) left join `moviekeyword` `mk` on((`m`.`imdb_id` = `mk`.`movie_id`))) left join `moviecountry` `mc` on((`m`.`imdb_id` = `mc`.`movie_id`))) group by `m`.`imdb_id`,`m`.`title`,`m`.`description`,`m`.`rating`,`cr`.`contentRating`,`m`.`runtime` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `movie_details`
--

/*!50001 DROP VIEW IF EXISTS `movie_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `movie_details` AS select `m`.`id` AS `id`,`m`.`imdb_id` AS `imdb_id`,`m`.`title` AS `title`,`m`.`description` AS `description`,`m`.`rating` AS `rating`,`m`.`runtime` AS `runtime`,`m`.`release_year` AS `release_year`,group_concat(distinct `g`.`genre` separator ',') AS `genres`,group_concat(distinct `ml`.`lan` separator ',') AS `languages` from (((`movie` `m` left join `moviegenre` `mg` on((`m`.`imdb_id` = `mg`.`movie_id`))) left join `genre` `g` on((`mg`.`genre_id` = `g`.`id`))) left join `movielan` `ml` on((`m`.`imdb_id` = `ml`.`movie_id`))) group by `m`.`id`,`m`.`imdb_id`,`m`.`title`,`m`.`description`,`m`.`rating`,`m`.`release_year`,`m`.`runtime` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `country_details`
--

/*!50001 DROP VIEW IF EXISTS `country_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `country_details` AS select `mc`.`country` AS `country`,`c`.`country_code` AS `country_code`,`m`.`title` AS `movie_title`,`m`.`release_year` AS `movie_release_year` from ((`moviecountry` `mc` join `country` `c` on((`mc`.`country` = `c`.`country`))) join `movie` `m` on((`m`.`imdb_id` = `mc`.`movie_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-29  1:24:42
