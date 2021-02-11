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
-- Table structure for table `follow_artist`
--

DROP TABLE IF EXISTS `follow_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow_artist` (
  `id_user` int NOT NULL,
  `id_artist` int NOT NULL,
  KEY `userIDAR_idx` (`id_user`),
  KEY `artistID_idx` (`id_artist`),
  CONSTRAINT `artistID` FOREIGN KEY (`id_artist`) REFERENCES `Artist` (`artistID`),
  CONSTRAINT `userIDAR` FOREIGN KEY (`id_user`) REFERENCES `Users` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow_artist`
--

LOCK TABLES `follow_artist` WRITE;
/*!40000 ALTER TABLE `follow_artist` DISABLE KEYS */;
INSERT INTO `follow_artist` VALUES (7,7),(7,15),(3,10),(8,5),(4,15),(9,20),(9,19),(2,20),(8,11),(6,15),(8,18),(4,8),(4,10),(10,15),(1,22),(6,19),(2,12),(1,10),(9,22),(2,7),(3,4),(9,5),(4,18),(2,11),(6,3),(7,7),(5,8),(9,13),(6,11),(5,13),(2,6),(4,10),(9,10),(1,14),(9,8),(8,10),(10,21),(8,17),(3,3),(9,9),(1,4),(3,11),(1,6),(6,19),(1,6),(4,16),(3,18),(10,19),(6,21),(1,16);
/*!40000 ALTER TABLE `follow_artist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-10 18:38:06
