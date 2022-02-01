-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: reqres
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `accountid` int NOT NULL,
  `tokenid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercolors`
--

DROP TABLE IF EXISTS `usercolors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usercolors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `year` int NOT NULL,
  `color` varchar(50) NOT NULL,
  `pantone_value` varchar(50) NOT NULL,
  `Userid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid_idx` (`Userid`),
  CONSTRAINT `userid` FOREIGN KEY (`Userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercolors`
--

LOCK TABLES `usercolors` WRITE;
/*!40000 ALTER TABLE `usercolors` DISABLE KEYS */;
INSERT INTO `usercolors` VALUES (1,'cerulean',2000,'#98B2D1','15-4020',1),(2,'fuchsia rose',2001,'#C74375','17-2031',2),(3,'true red',2002,'#BF1932','19-1664',3),(4,'aqua sky',2003,'#7BC4C4','14-4811',4),(5,'tigerlily',2004,'#E2583E','17-1456',5),(6,'blue turquoise',2005,'#53B0AE','15-5217',6),(7,'sand dollar',2006,'#DECDBE','13-1106',7),(8,'chili pepper',2007,'#9B1B30','19-1557',8),(9,'blue iris',2008,'#5A5B9F','18-3943',9),(10,'mimosa',2009,'#F0C05A','14-0848',10),(11,'turquoise',2010,'#45B5AA','15-5519',11),(12,'honeysuckle',2011,'#D94F70','18-2120',12);
/*!40000 ALTER TABLE `usercolors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userjobs`
--

DROP TABLE IF EXISTS `userjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userjobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `job` varchar(100) NOT NULL,
  `jobid` int NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userjobs`
--

LOCK TABLES `userjobs` WRITE;
/*!40000 ALTER TABLE `userjobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `userjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `userid_UNIQUE` (`userid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'george.bluth@reqres.in','George','Bluth','https://reqres.in/img/faces/1-image.jpg',1),(2,'janet.weaver@reqres.in','Janet','Weaver','https://reqres.in/img/faces/2-image.jpg',2),(3,'emma.wong@reqres.in','Emma','Wong','https://reqres.in/img/faces/3-image.jpg',3),(4,'eve.holt@reqres.in','Eve','Holt','https://reqres.in/img/faces/4-image.jpg',4),(5,'charles.morris@reqres.in','Charles','Morris','https://reqres.in/img/faces/5-image.jpg',5),(6,'tracey.ramos@reqres.in','Tracey','Ramos','https://reqres.in/img/faces/6-image.jpg',6),(8,'michael.lawson@reqres.in','Michael','Lawson','https://reqres.in/img/faces/7-image.jpg',7),(9,'lindsay.ferguson@reqres.in','Lindsay','Ferguson','https://reqres.in/img/faces/8-image.jpg',8),(10,'tobias.funke@reqres.in','Tobias','Funke','https://reqres.in/img/faces/9-image.jpg',9),(11,'byron.fields@reqres.in','Byron','Fields','https://reqres.in/img/faces/10-image.jpg',10),(12,'george.edwards@reqres.in','George','Edwards','https://reqres.in/img/faces/11-image.jpg',11),(13,'rachel.howell@reqres.in','Rachel','Howell','https://reqres.in/img/faces/12-image.jpg',12);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'reqres'
--
/*!50003 DROP PROCEDURE IF EXISTS `addaccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addaccount`(IN myemail varchar(100), IN mypassword varchar(100), IN myaccountid INT, IN mytokenid varchar(100))
BEGIN
	INSERT INTO accounts (email, password, accountid, tokenid)
    VALUES (myemail, MD5(mypassword), myaccountid, mytokenid);
    SELECT email, password, accountid, tokenid from accounts where accountid = myaccountid;
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

-- Dump completed on 2022-02-01 17:05:56
