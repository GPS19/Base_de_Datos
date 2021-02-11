-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: Ejemplo
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `Album`
--

DROP TABLE IF EXISTS `Album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Album` (
  `albumID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `number_of_songs` int DEFAULT NULL,
  `total_duration` int DEFAULT NULL,
  `genre` varchar(30) DEFAULT NULL,
  `id_artist` int NOT NULL,
  PRIMARY KEY (`albumID`),
  KEY `artistIDA_idx` (`id_artist`),
  CONSTRAINT `artistIDA` FOREIGN KEY (`id_artist`) REFERENCES `Artist` (`artistID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Album`
--

LOCK TABLES `Album` WRITE;
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
INSERT INTO `Album` VALUES (1,'Sgt. Pepper’s Lonely Heart’s Club Band',1982,10,1200,'7',1),(2,'The Dark Side of the Moon',1969,10,1200,'5',2),(3,'Thriller',2015,10,1200,'10',3),(4,'Led Zeppelin IV',1978,10,1200,'5',4),(5,'The Joshua Tree',2013,10,1200,'0',5),(6,'Exile on Main St.',2000,10,1200,'6',6),(7,'Tapestry',1973,10,1200,'9',7),(8,'Highway 61 Revisited',2009,10,1200,'1',8),(9,'Pet Sounds',2002,10,1200,'10',9),(10,'Nevermind',1995,10,1200,'6',10),(11,'Ten',1998,10,1200,'2',11),(12,'Abbey Road',1979,10,1200,'8',1),(13,'Supernatural',2018,10,1200,'4',12),(14,'Metallica',1979,10,1200,'6',13),(15,'Born to Run',2013,10,1200,'5',14),(16,'Purple Rain',2002,10,1200,'5',15),(17,'Back in Black',1983,10,1200,'10',16),(18,'Let it Bleed',1981,10,1200,'4',6),(19,'Doors',2006,10,1200,'1',17),(20,'American Beauty',1977,10,1200,'2',18),(21,'Come on Over',1994,10,1200,'9',19),(22,'Who\'s Next',1975,10,1200,'7',20),(23,'Songs in the Key of Life',1974,10,1200,'6',21),(24,'Rumours',1985,10,1200,'5',22),(25,'The Wall',1970,10,1200,'5',2);
/*!40000 ALTER TABLE `Album` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-10 18:38:05
