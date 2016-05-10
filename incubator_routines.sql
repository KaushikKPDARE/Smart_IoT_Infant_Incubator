CREATE DATABASE  IF NOT EXISTS `incubator` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `incubator`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: incubator
-- ------------------------------------------------------
-- Server version	5.6.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `doc_view`
--

DROP TABLE IF EXISTS `doc_view`;
/*!50001 DROP VIEW IF EXISTS `doc_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `doc_view` AS SELECT 
 1 AS `INCUBATOR_NO`,
 1 AS `TIME`,
 1 AS `weight`,
 1 AS `baby_temp`,
 1 AS `NAME`*/;
SET character_set_client = @saved_cs_client;
SELECT *FROM `doc_view`;
--
-- Temporary view structure for view `physician_assist_view`
--

DROP TABLE IF EXISTS `physician_assist_view`;
/*!50001 DROP VIEW IF EXISTS `physician_assist_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `physician_assist_view` AS SELECT 
 1 AS `INCUBATOR_NO`,
 1 AS `TIME`,
 1 AS `temperature`,
 1 AS `oxygen`,
 1 AS `humidity`,
 1 AS `NAME`*/;
SET character_set_client = @saved_cs_client;
SELECT *FROM `physician_assist_view`;
--
-- Temporary view structure for view `pat_view`
--

DROP TABLE IF EXISTS `pat_view`;
/*!50001 DROP VIEW IF EXISTS `pat_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pat_view` AS SELECT 
 1 AS `INCUBATOR_NO`,
 1 AS `TIME`,
 1 AS `STATUS`,
 1 AS `NAME`*/;
SET character_set_client = @saved_cs_client;
SELECT *FROM `pat_view`;
--
-- Final view structure for view `doc_view`
--

/*!50001 DROP VIEW IF EXISTS `doc_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `doc_view` AS (select distinct `d`.`INCUBATOR_NO` AS `INCUBATOR_NO`,`d`.`TIME` AS `TIME`,`d`.`WEIGHT` AS `weight`,`d`.`BABY_TEMP` AS `baby_temp`,`per`.`NAME` AS `NAME` from (`data_collected` `d` join `person` `per` on((`d`.`PATIENT_ID` = `per`.`PERSON_ID`))) where `per`.`PERSON_ID` in (select `patient`.`PERSON_ID` from `patient`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `physician_assist_view`
--

/*!50001 DROP VIEW IF EXISTS `physician_assist_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `physician_assist_view` AS (select distinct `d`.`INCUBATOR_NO` AS `INCUBATOR_NO`,`d`.`TIME` AS `TIME`,`d`.`TEMPERATURE` AS `temperature`,`d`.`OXYGEN` AS `oxygen`,`d`.`HUMIDITY` AS `humidity`,`per`.`NAME` AS `NAME` from (`data_collected` `d` join `person` `per` on((`d`.`PA_ID` = `per`.`PERSON_ID`))) where `per`.`PERSON_ID` in (select `employee`.`PERSON_ID` from `employee`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pat_view`
--

/*!50001 DROP VIEW IF EXISTS `pat_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pat_view` AS (select distinct `d`.`INCUBATOR_NO` AS `INCUBATOR_NO`,`d`.`TIME` AS `TIME`,`d`.`STATUS` AS `STATUS`,`per`.`NAME` AS `NAME` from (`data_collected` `d` join `person` `per` on((`d`.`PERSON_ID` = `per`.`PERSON_ID`))) where `per`.`PERSON_ID` in (select `employee`.`PERSON_ID` from `employee`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'incubator'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `Backup_Table1` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `Backup_Table` ON SCHEDULE EVERY 30 DAY STARTS '2016-04-27 04:04:07' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Takes backup every day' DO BEGIN
    SET @sql_text = 
   CONCAT (
   "SELECT * FROM `INCUBATOR` INTO OUTFILE 'C:\Users\kpdar\Desktop\backup"
   , DATE_FORMAT( NOW(), '%Y%m%d')
   , "backup.csv'"
);
PREPARE backup1 FROM @sql_text;
 EXECUTE backup1;    
 END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'incubator'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_person` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_person1`(SSN VARCHAR(45) ,PERSON_ID INT, NAME VARCHAR(45), AGE INT(11), ADDRESS VARCHAR(45), CONTACT VARCHAR(45))
BEGIN

 INSERT INTO `INCUBATOR`.`PERSON` VALUES(@SSN, @PERSON_ID, @NAME, @AGE, @ADDRESS, @CONTACT);

   

    SELECT *FROM PERSON WHERE PERSON_ID = (SELECT MAX(PERSON_ID) FROM PERSON);
     
    
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-27  4:42:47
