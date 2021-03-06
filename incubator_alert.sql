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
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alert` (
  `ALERT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INCUBATOR_NUMBER` int(11) DEFAULT NULL,
  `ALERT_MESSAGE` varchar(45) DEFAULT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `OPTIMUM_OXYGEN` decimal(8,2) DEFAULT NULL,
  `OPTIMUM_HUMIDITY` decimal(8,2) DEFAULT NULL,
  `OPTIMUM_TEMPERATURE` decimal(8,2) DEFAULT NULL,
  `RAW_DATA_ID` int(11) DEFAULT NULL,
  `PERSON_ID` int(11) NOT NULL,
  PRIMARY KEY (`ALERT_ID`),
  KEY `INC_NUM_idx` (`INCUBATOR_NUMBER`),
  KEY `EMP_ID_idx` (`EMPLOYEE_ID`),
  KEY `RAW_DATA_idx` (`RAW_DATA_ID`),
  KEY `PERSON_ALERT` (`PERSON_ID`),
  CONSTRAINT `EMP_ID` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `INC_NUM` FOREIGN KEY (`INCUBATOR_NUMBER`) REFERENCES `incubator` (`INCUBATOR_NUMBER`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PERSON_ALERT` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `RAW_DATA` FOREIGN KEY (`RAW_DATA_ID`) REFERENCES `data_collected` (`RAW_DATA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert`
--

LOCK TABLES `alert` WRITE;
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
START TRANSACTION;
SAVEPOINT savepoint1;
INSERT INTO `alert` VALUES (1,1,'OXYGEN AND HUMIDITY',6,50.00,55.00,0.00,2,1),(2,2,'OXYGEN, HUMIDITY AND TEMPERATURE',7,50.00,55.00,90.00,4,2),(3,5,'OXYGEN AND HUMIDITY',10,50.00,55.00,0.00,10,5),(4,6,'OXYGEN, HUMIDITY AND TEMPERATURE',6,50.00,55.00,90.00,12,6),(5,9,'OXYGEN AND HUMIDITY',9,50.00,55.00,0.00,18,9),(6,10,'OXYGEN, HUMIDITY AND TEMPERATURE',10,50.00,55.00,90.00,20,10),(7,13,'OXYGEN AND HUMIDITY',8,50.00,55.00,0.00,26,13),(8,14,'OXYGEN, HUMIDITY AND TEMPERATURE',9,50.00,55.00,90.00,28,14),(9,17,'OXYGEN AND HUMIDITY',7,50.00,55.00,0.00,34,17),(10,18,'OXYGEN, HUMIDITY AND TEMPERATURE',8,50.00,55.00,90.00,36,18);
COMMIT;
UPDATE `alert` SET `ALERT_MESSAGE` = 'OXYGEN' WHERE `ALERT_ID` = 2;
ROLLBACK;
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
SELECT *FROM `alert`;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-27  4:42:46
