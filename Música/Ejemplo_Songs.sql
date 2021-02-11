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
-- Table structure for table `Songs`
--

DROP TABLE IF EXISTS `Songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Songs` (
  `songID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `id_album` int NOT NULL,
  PRIMARY KEY (`songID`),
  KEY `albumIDS_idx` (`id_album`),
  CONSTRAINT `albumIDS` FOREIGN KEY (`id_album`) REFERENCES `Album` (`albumID`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Songs`
--

LOCK TABLES `Songs` WRITE;
/*!40000 ALTER TABLE `Songs` DISABLE KEYS */;
INSERT INTO `Songs` VALUES (1,'George',120,1),(2,'Dustin',120,2),(3,'Richard',120,3),(4,'Brian',120,4),(5,'Sherry',120,5),(6,'Veronica',120,6),(7,'Jackson',120,7),(8,'Shawn',120,8),(9,'Anthony',120,9),(10,'Benjamin',120,10),(11,'John',120,11),(12,'Ethel',120,12),(13,'Edward',120,13),(14,'Charles',120,14),(15,'Martin',120,15),(16,'Joseph',120,16),(17,'William',120,17),(18,'Myra',120,18),(19,'Prince',120,19),(20,'Dolores',120,20),(21,'Jeffrey',120,21),(22,'Susie',120,22),(23,'Elizabeth',120,23),(24,'Daisy',120,24),(25,'Rebecca',120,25),(26,'Rogelio',120,1),(27,'Bobby',120,2),(28,'Kristal',120,3),(29,'Ralph',120,4),(30,'Doris',120,5),(31,'Jonathan',120,6),(32,'Thomas',120,7),(33,'Rodney',120,8),(34,'Loren',120,9),(35,'Helen',120,10),(36,'Jerome',120,11),(37,'Michael',120,12),(38,'Barbara',120,13),(39,'Michael',120,14),(40,'Bennie',120,15),(41,'Rhonda',120,16),(42,'Terri',120,17),(43,'William',120,18),(44,'Jennifer',120,19),(45,'James',120,20),(46,'Joseph',120,21),(47,'David',120,22),(48,'Joseph',120,23),(49,'Heather',120,24),(50,'Kenneth',120,25),(51,'Alia',120,1),(52,'Isaac',120,2),(53,'Laurie',120,3),(54,'Michelle',120,4),(55,'Johnnie',120,5),(56,'Jennifer',120,6),(57,'George',120,7),(58,'Alejandro',120,8),(59,'Allan',120,9),(60,'Tracy',120,10),(61,'Remedios',120,11),(62,'Jimmy',120,12),(63,'Arlene',120,13),(64,'Heather',120,14),(65,'Susan',120,15),(66,'Marylee',120,16),(67,'Keith',120,17),(68,'Matthew',120,18),(69,'Matthew',120,19),(70,'Mildred',120,20),(71,'Charles',120,21),(72,'Wayne',120,22),(73,'Michael',120,23),(74,'Olivia',120,24),(75,'John',120,25),(76,'Inez',120,1),(77,'Leslie',120,2),(78,'Regina',120,3),(79,'Darren',120,4),(80,'Andy',120,5),(81,'Gale',120,6),(82,'Kathy',120,7),(83,'John',120,8),(84,'Fidel',120,9),(85,'Rolando',120,10),(86,'Jennifer',120,11),(87,'Harold',120,12),(88,'Joanna',120,13),(89,'Susan',120,14),(90,'Ricardo',120,15),(91,'April',120,16),(92,'Holli',120,17),(93,'Gordon',120,18),(94,'Mildred',120,19),(95,'Julie',120,20),(96,'James',120,21),(97,'Charlotte',120,22),(98,'Mary',120,23),(99,'Diane',120,24),(100,'Leila',120,25),(101,'Todd',120,1),(102,'Daniel',120,2),(103,'Caroline',120,3),(104,'Jay',120,4),(105,'Evelyn',120,5),(106,'Tiara',120,6),(107,'Elizabeth',120,7),(108,'Claire',120,8),(109,'Donald',120,9),(110,'Robert',120,10),(111,'Tiffany',120,11),(112,'Jake',120,12),(113,'Rebecca',120,13),(114,'Gene',120,14),(115,'Lucille',120,15),(116,'Andrew',120,16),(117,'Diane',120,17),(118,'Jeffrey',120,18),(119,'Carlos',120,19),(120,'Winter',120,20),(121,'Amy',120,21),(122,'Nicholas',120,22),(123,'Gloria',120,23),(124,'John',120,24),(125,'Toshia',120,25),(126,'Michael',120,1),(127,'Thomas',120,2),(128,'Lincoln',120,3),(129,'June',120,4),(130,'Rosa',120,5),(131,'Robert',120,6),(132,'Rodger',120,7),(133,'Doris',120,8),(134,'Elma',120,9),(135,'Melissa',120,10),(136,'Rickey',120,11),(137,'Kathleen',120,12),(138,'Denise',120,13),(139,'Arthur',120,14),(140,'Joseph',120,15),(141,'Amanda',120,16),(142,'Conrad',120,17),(143,'John',120,18),(144,'Lauren',120,19),(145,'Mary',120,20),(146,'Betty',120,21),(147,'John',120,22),(148,'Willis',120,23),(149,'Emil',120,24),(150,'Anne',120,25),(151,'Irene',120,1),(152,'Lance',120,2),(153,'Lonnie',120,3),(154,'Rhonda',120,4),(155,'Edward',120,5),(156,'Selma',120,6),(157,'Stewart',120,7),(158,'Harold',120,8),(159,'Jessie',120,9),(160,'Sarah',120,10),(161,'Roger',120,11),(162,'Karen',120,12),(163,'Charles',120,13),(164,'Stephanie',120,14),(165,'Amelia',120,15),(166,'Judith',120,16),(167,'Leo',120,17),(168,'Lolita',120,18),(169,'Emma',120,19),(170,'Todd',120,20),(171,'Anthony',120,21),(172,'Danielle',120,22),(173,'Hazel',120,23),(174,'Lacey',120,24),(175,'Delphine',120,25),(176,'Samuel',120,1),(177,'Betty',120,2),(178,'Betty',120,3),(179,'Sean',120,4),(180,'Keven',120,5),(181,'Samuel',120,6),(182,'Edna',120,7),(183,'Daniel',120,8),(184,'David',120,9),(185,'Cory',120,10),(186,'Elizabeth',120,11),(187,'Michael',120,12),(188,'Roger',120,13),(189,'Latoya',120,14),(190,'Ana',120,15),(191,'Pamela',120,16),(192,'Paul',120,17),(193,'Frank',120,18),(194,'Roxanne',120,19),(195,'Barbara',120,20),(196,'Patricia',120,21),(197,'Holly',120,22),(198,'Wanda',120,23),(199,'Juanita',120,24),(200,'Lorraine',120,25),(201,'Jake',120,1),(202,'Ruth',120,2),(203,'Walter',120,3),(204,'Lee',120,4),(205,'Charles',120,5),(206,'Ramiro',120,6),(207,'Hector',120,7),(208,'Joe',120,8),(209,'Angel',120,9),(210,'Theresa',120,10),(211,'Michael',120,11),(212,'Dorothy',120,12),(213,'Linda',120,13),(214,'Jason',120,14),(215,'Stella',120,15),(216,'Haley',120,16),(217,'Heather',120,17),(218,'Craig',120,18),(219,'Roberta',120,19),(220,'Lonnie',120,20),(221,'Alice',120,21),(222,'Madelyn',120,22),(223,'James',120,23),(224,'Carol',120,24),(225,'Catherine',120,25),(226,'Doretha',120,1),(227,'Suzanne',120,2),(228,'Richard',120,3),(229,'Jennifer',120,4),(230,'Kevin',120,5),(231,'Mark',120,6),(232,'James',120,7),(233,'William',120,8),(234,'Noemi',120,9),(235,'Robert',120,10),(236,'Kenneth',120,11),(237,'Robert',120,12),(238,'Patricia',120,13),(239,'Ida',120,14),(240,'Gregory',120,15),(241,'Arthur',120,16),(242,'Frank',120,17),(243,'Susan',120,18),(244,'Rita',120,19),(245,'Francisco',120,20),(246,'Anna',120,21),(247,'Barbara',120,22),(248,'Jess',120,23),(249,'Gary',120,24),(250,'Darius',120,25);
/*!40000 ALTER TABLE `Songs` ENABLE KEYS */;
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
