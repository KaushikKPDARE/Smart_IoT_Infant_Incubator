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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `PATIENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `WARD_NO` varchar(45) DEFAULT NULL,
  `PERSON_ID` int(11) NOT NULL,
  PRIMARY KEY (`PATIENT_ID`,`PERSON_ID`),
  KEY `PERSON_ID_idx` (`PERSON_ID`),
  CONSTRAINT `PERSON_IDPAT` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
START TRANSACTION;
SAVEPOINT savepoint5;
INSERT INTO `patient` VALUES (1,'1',1),(2,'1',2),(3,'2',3),(4,'2',4),(5,'3',5),(6,'3',6),(7,'4',7),(8,'4',8),(9,'5',9),(10,'5',10),(11,'6',11),(12,'6',12),(13,'7',13),(14,'7',14),(15,'8',15),(16,'8',16),(17,'9',17),(18,'9',18),(19,'10',19),(20,'10',20),(21,'11',21),(22,'11',22),(23,'12',23),(24,'12',24),(25,'13',25),(26,'13',26),(27,'14',27),(28,'14',28),(29,'15',29),(30,'15',30);
COMMIT;
SELECT *FROM `patient`;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-27  4:42:45
