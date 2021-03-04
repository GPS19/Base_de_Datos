-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: Taxis
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1,'Barcelona'),(2,'CDMX'),(3,'Canberra'),(4,'Vancouver');
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cobros`
--

DROP TABLE IF EXISTS `cobros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobros` (
  `id_viaje` int DEFAULT NULL,
  `id_direccion_origen` int DEFAULT NULL,
  `id_direccion_destino` int DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  KEY `id_viaje` (`id_viaje`),
  KEY `id_direccion_origen` (`id_direccion_origen`),
  KEY `id_direccion_destino` (`id_direccion_destino`),
  CONSTRAINT `cobros_ibfk_1` FOREIGN KEY (`id_viaje`) REFERENCES `viajes` (`id_viaje`),
  CONSTRAINT `cobros_ibfk_2` FOREIGN KEY (`id_direccion_origen`) REFERENCES `direcciones` (`id_direccion`),
  CONSTRAINT `cobros_ibfk_3` FOREIGN KEY (`id_direccion_destino`) REFERENCES `direcciones` (`id_direccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cobros`
--

LOCK TABLES `cobros` WRITE;
/*!40000 ALTER TABLE `cobros` DISABLE KEYS */;
INSERT INTO `cobros` VALUES (46,6,6,1),(91,3,3,1),(21,7,1,82),(37,6,6,1),(66,8,3,122.5),(15,1,8,41.5),(37,4,2,82),(81,4,1,41.5),(95,5,3,82),(69,8,2,82),(81,4,7,122.5),(99,4,3,122.5),(76,3,2,41.5),(19,4,6,82),(67,2,5,41.5),(78,7,7,1),(80,6,2,1),(57,7,1,82),(2,8,4,1),(95,3,5,82),(37,6,6,1),(6,3,6,41.5),(29,2,6,1),(6,7,7,1),(85,4,4,1),(70,1,7,82),(69,2,7,41.5),(34,1,7,82),(19,8,7,122.5),(44,6,1,41.5),(97,4,2,82),(68,5,2,41.5),(32,7,4,122.5),(96,6,1,41.5),(57,3,1,82),(10,2,4,82),(13,5,4,41.5),(79,4,4,1),(96,3,1,82),(58,2,7,41.5),(59,6,8,82),(25,8,1,41.5),(91,7,5,82),(72,4,3,122.5),(62,7,8,122.5),(49,5,4,41.5),(22,4,7,122.5),(74,2,7,41.5),(8,8,5,41.5),(22,8,6,82),(71,8,4,1),(69,4,7,122.5),(92,7,3,1),(98,7,7,1),(36,2,1,41.5),(12,5,5,1),(58,4,2,82),(71,4,6,82),(69,8,4,1),(46,2,6,1),(81,5,6,41.5),(65,6,5,41.5),(77,2,2,1),(28,5,8,41.5),(27,7,2,41.5),(43,2,3,41.5),(76,3,5,82),(63,6,6,1),(86,2,6,1),(59,2,6,1),(52,1,7,82),(12,5,7,82),(3,8,1,41.5),(69,5,8,41.5),(88,7,1,82),(42,1,8,41.5),(85,8,2,82),(27,2,2,1),(92,8,7,122.5),(32,3,4,122.5),(64,5,6,41.5),(98,7,6,41.5),(28,1,4,41.5),(6,5,6,41.5),(35,2,1,41.5),(97,1,7,82),(58,7,7,1),(29,8,1,41.5),(17,3,4,122.5),(77,6,5,41.5),(65,8,5,41.5),(74,3,4,122.5),(33,7,1,82),(68,4,4,1),(90,6,3,41.5),(57,3,8,122.5),(96,2,7,41.5),(45,4,5,41.5),(17,7,1,82),(84,7,5,82);
/*!40000 ALTER TABLE `cobros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigospostales`
--

DROP TABLE IF EXISTS `codigospostales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codigospostales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_ciudad` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_ciudad` (`id_ciudad`),
  CONSTRAINT `codigospostales_ibfk_1` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigospostales`
--

LOCK TABLES `codigospostales` WRITE;
/*!40000 ALTER TABLE `codigospostales` DISABLE KEYS */;
INSERT INTO `codigospostales` VALUES (1,1),(5,1),(2,2),(6,2),(3,3),(7,3),(4,4),(8,4);
/*!40000 ALTER TABLE `codigospostales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `conductor_viajes`
--

DROP TABLE IF EXISTS `conductor_viajes`;
/*!50001 DROP VIEW IF EXISTS `conductor_viajes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `conductor_viajes` AS SELECT 
 1 AS `nombre`,
 1 AS `Total de viajes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `conductores`
--

DROP TABLE IF EXISTS `conductores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductores`
--

LOCK TABLES `conductores` WRITE;
/*!40000 ALTER TABLE `conductores` DISABLE KEYS */;
INSERT INTO `conductores` VALUES (1,'Gabriel','Dichi'),(2,'Gianluca','Pirgolini'),(3,'Santiago','Kühn'),(4,'Pablo','Yamamaster');
/*!40000 ALTER TABLE `conductores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `id_direccion` int NOT NULL AUTO_INCREMENT,
  `nombreCalle` varchar(20) NOT NULL,
  `numExt` int NOT NULL,
  `numInt` int DEFAULT NULL,
  `id_codigoPostal` int DEFAULT NULL,
  PRIMARY KEY (`id_direccion`),
  KEY `id_codigoPostal` (`id_codigoPostal`),
  CONSTRAINT `direcciones_ibfk_1` FOREIGN KEY (`id_codigoPostal`) REFERENCES `codigospostales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,'Carrer de Mallorca',401,0,1),(2,'C. d\'Arístides M',12,8,5),(3,'Cuauhtemoc',38,2,2),(4,'Iglesia',2,1203,6),(5,'Le Proutier',453,12,3),(6,'Commonwealth Ave',2601,0,7),(7,'Oak St',5251,21,4),(8,'Un banco',321,32,8);
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ganancias_mes_año`
--

DROP TABLE IF EXISTS `ganancias_mes_año`;
/*!50001 DROP VIEW IF EXISTS `ganancias_mes_año`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ganancias_mes_año` AS SELECT 
 1 AS `Mes_Año`,
 1 AS `SUM(cantidad)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pasajeros`
--

DROP TABLE IF EXISTS `pasajeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasajeros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasajeros`
--

LOCK TABLES `pasajeros` WRITE;
/*!40000 ALTER TABLE `pasajeros` DISABLE KEYS */;
INSERT INTO `pasajeros` VALUES (1,'Octavio','Navarro'),(2,'Javier','Corona'),(3,'Rodrigo','Perez'),(4,'Margarita','Zavala');
/*!40000 ALTER TABLE `pasajeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vehiculo_viajes`
--

DROP TABLE IF EXISTS `vehiculo_viajes`;
/*!50001 DROP VIEW IF EXISTS `vehiculo_viajes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vehiculo_viajes` AS SELECT 
 1 AS `placa_id`,
 1 AS `Total de viajes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculos` (
  `placa_id` varchar(10) NOT NULL,
  `marca` varchar(15) NOT NULL,
  `sub_marca` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`placa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` VALUES ('AYN45D','Volkswagen','Audi'),('BFJA87JA','General Motors','Chevrolet'),('NCBJDS292','TATA','Land Rover'),('PYZ1982','Tesla','Model S');
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes`
--

DROP TABLE IF EXISTS `viajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes` (
  `id_viaje` int NOT NULL AUTO_INCREMENT,
  `id_conductor` int DEFAULT NULL,
  `id_pasajero` int DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  PRIMARY KEY (`id_viaje`),
  KEY `id_conductor` (`id_conductor`),
  KEY `id_pasajero` (`id_pasajero`),
  KEY `placa` (`placa`),
  CONSTRAINT `viajes_ibfk_1` FOREIGN KEY (`id_conductor`) REFERENCES `conductores` (`id`),
  CONSTRAINT `viajes_ibfk_2` FOREIGN KEY (`id_pasajero`) REFERENCES `pasajeros` (`id`),
  CONSTRAINT `viajes_ibfk_3` FOREIGN KEY (`placa`) REFERENCES `vehiculos` (`placa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes`
--

LOCK TABLES `viajes` WRITE;
/*!40000 ALTER TABLE `viajes` DISABLE KEYS */;
INSERT INTO `viajes` VALUES (1,2,4,'BFJA87JA','2020-05-13 03:16:47'),(2,4,1,'BFJA87JA','2020-11-01 11:36:36'),(3,1,1,'BFJA87JA','2019-03-10 14:27:27'),(4,2,1,'AYN45D','2019-01-15 09:46:17'),(5,2,2,'BFJA87JA','2020-05-26 08:03:22'),(6,3,4,'BFJA87JA','2019-07-28 02:28:08'),(7,4,2,'NCBJDS292','2019-08-07 17:18:52'),(8,2,1,'PYZ1982','2020-10-05 13:18:01'),(9,1,4,'BFJA87JA','2019-05-09 03:17:15'),(10,4,4,'AYN45D','2019-04-10 18:13:22'),(11,2,3,'AYN45D','2019-10-09 00:09:58'),(12,3,4,'AYN45D','2020-01-19 22:29:48'),(13,3,2,'BFJA87JA','2020-11-04 09:31:04'),(14,3,2,'NCBJDS292','2019-03-17 15:10:43'),(15,2,2,'BFJA87JA','2019-06-04 13:30:34'),(16,3,2,'BFJA87JA','2019-10-21 20:31:10'),(17,1,1,'PYZ1982','2020-06-13 22:38:53'),(18,2,4,'PYZ1982','2019-01-16 12:29:50'),(19,3,3,'AYN45D','2019-05-24 03:47:34'),(20,4,3,'BFJA87JA','2019-05-08 11:53:52'),(21,4,3,'PYZ1982','2020-10-12 16:38:33'),(22,4,3,'BFJA87JA','2020-02-26 04:36:46'),(23,3,3,'BFJA87JA','2020-11-02 08:26:52'),(24,1,2,'AYN45D','2020-11-28 09:04:30'),(25,3,3,'PYZ1982','2019-12-09 04:41:30'),(26,3,1,'NCBJDS292','2019-06-17 06:31:49'),(27,1,1,'NCBJDS292','2019-11-27 13:19:54'),(28,1,4,'BFJA87JA','2019-12-17 00:30:55'),(29,3,4,'BFJA87JA','2019-07-04 21:05:45'),(30,1,1,'NCBJDS292','2019-07-14 02:42:05'),(31,1,1,'PYZ1982','2020-09-06 13:31:35'),(32,3,1,'BFJA87JA','2020-12-27 18:57:25'),(33,3,2,'BFJA87JA','2020-04-28 02:23:27'),(34,2,2,'PYZ1982','2019-05-09 20:26:22'),(35,1,2,'AYN45D','2019-03-02 00:38:12'),(36,4,2,'AYN45D','2020-11-25 01:20:55'),(37,2,4,'NCBJDS292','2020-07-04 13:38:58'),(38,2,1,'BFJA87JA','2019-08-30 07:27:08'),(39,4,1,'NCBJDS292','2020-09-17 06:25:11'),(40,3,2,'BFJA87JA','2020-02-09 13:09:35'),(41,2,1,'NCBJDS292','2020-05-28 09:12:41'),(42,2,1,'NCBJDS292','2019-06-21 18:44:44'),(43,3,3,'AYN45D','2020-04-16 10:55:45'),(44,1,2,'BFJA87JA','2020-12-29 17:55:27'),(45,3,4,'BFJA87JA','2020-01-28 04:01:46'),(46,2,1,'BFJA87JA','2019-12-24 03:02:22'),(47,1,2,'BFJA87JA','2019-12-17 08:18:44'),(48,1,3,'AYN45D','2020-02-24 11:42:08'),(49,3,2,'AYN45D','2020-09-04 04:18:28'),(50,2,4,'NCBJDS292','2019-03-06 16:04:49'),(51,1,1,'BFJA87JA','2019-04-05 05:10:37'),(52,2,1,'BFJA87JA','2019-11-17 05:54:07'),(53,4,2,'BFJA87JA','2020-10-15 06:02:34'),(54,2,4,'BFJA87JA','2019-03-07 10:13:44'),(55,3,4,'AYN45D','2019-04-08 00:37:37'),(56,2,4,'NCBJDS292','2019-09-05 10:01:04'),(57,4,3,'PYZ1982','2019-01-13 02:46:15'),(58,1,4,'AYN45D','2019-03-06 07:36:27'),(59,3,3,'NCBJDS292','2020-11-17 10:11:45'),(60,3,1,'AYN45D','2020-08-01 22:56:58'),(61,1,4,'PYZ1982','2019-10-02 06:55:04'),(62,4,1,'PYZ1982','2020-06-13 16:19:24'),(63,1,3,'BFJA87JA','2020-10-19 22:02:21'),(64,2,2,'AYN45D','2019-04-29 09:06:37'),(65,4,3,'AYN45D','2019-10-04 19:13:21'),(66,3,1,'BFJA87JA','2019-11-20 02:21:20'),(67,2,1,'NCBJDS292','2020-04-14 14:11:10'),(68,1,1,'AYN45D','2020-08-07 04:14:39'),(69,3,2,'AYN45D','2020-04-22 21:58:38'),(70,3,1,'BFJA87JA','2019-04-16 02:47:40'),(71,2,1,'AYN45D','2019-06-27 18:36:29'),(72,4,2,'BFJA87JA','2019-07-12 09:35:14'),(73,2,1,'PYZ1982','2020-04-05 07:20:53'),(74,2,2,'BFJA87JA','2020-10-18 16:04:26'),(75,1,4,'BFJA87JA','2020-04-29 15:41:22'),(76,3,3,'BFJA87JA','2019-11-13 07:24:44'),(77,1,1,'PYZ1982','2020-09-27 18:24:29'),(78,2,1,'PYZ1982','2019-09-02 21:38:07'),(79,3,3,'NCBJDS292','2019-04-22 18:57:29'),(80,3,4,'NCBJDS292','2020-10-08 11:15:13'),(81,4,1,'BFJA87JA','2020-11-06 22:58:07'),(82,4,4,'BFJA87JA','2020-06-15 11:51:04'),(83,1,4,'NCBJDS292','2020-11-01 04:13:21'),(84,3,2,'BFJA87JA','2019-08-14 01:41:52'),(85,4,4,'PYZ1982','2020-08-10 14:44:30'),(86,4,1,'AYN45D','2020-08-27 22:53:33'),(87,4,3,'NCBJDS292','2019-09-25 05:02:17'),(88,3,3,'NCBJDS292','2019-09-10 16:03:33'),(89,3,3,'BFJA87JA','2020-09-16 22:40:06'),(90,2,1,'PYZ1982','2020-06-28 21:52:34'),(91,3,2,'PYZ1982','2019-01-14 20:31:50'),(92,4,4,'PYZ1982','2020-09-21 21:45:43'),(93,3,3,'NCBJDS292','2020-10-11 09:12:33'),(94,2,4,'BFJA87JA','2020-09-27 03:21:50'),(95,1,1,'BFJA87JA','2020-10-26 13:24:53'),(96,4,4,'BFJA87JA','2020-09-10 11:34:19'),(97,2,3,'AYN45D','2020-04-02 18:44:25'),(98,1,1,'AYN45D','2019-04-09 13:31:49'),(99,3,4,'BFJA87JA','2019-10-10 03:25:37'),(100,4,1,'AYN45D','2019-08-02 07:24:55');
/*!40000 ALTER TABLE `viajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `viajesitos`
--

DROP TABLE IF EXISTS `viajesitos`;
/*!50001 DROP VIEW IF EXISTS `viajesitos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viajesitos` AS SELECT 
 1 AS `id_viaje`,
 1 AS `Conductor`,
 1 AS `Pasajero`,
 1 AS `Placa`,
 1 AS `Fecha y Hora`,
 1 AS `Dirección origen`,
 1 AS `Dirección Destino`,
 1 AS `Cantidad del viaje`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `conductor_viajes`
--

/*!50001 DROP VIEW IF EXISTS `conductor_viajes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `conductor_viajes` AS select `conductores`.`nombre` AS `nombre`,count(0) AS `Total de viajes` from (`conductores` join `viajes` on((`viajes`.`id_conductor` = `conductores`.`id`))) group by `conductores`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ganancias_mes_año`
--

/*!50001 DROP VIEW IF EXISTS `ganancias_mes_año`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ganancias_mes_año` AS select concat(month(`viajes`.`fecha_hora`),' - ',year(`viajes`.`fecha_hora`)) AS `Mes_Año`,sum(`cobros`.`cantidad`) AS `SUM(cantidad)` from (`viajes` join `cobros` on((`cobros`.`id_viaje` = `viajes`.`id_viaje`))) group by `Mes_Año` order by concat(month(`viajes`.`fecha_hora`),' - ',year(`viajes`.`fecha_hora`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehiculo_viajes`
--

/*!50001 DROP VIEW IF EXISTS `vehiculo_viajes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehiculo_viajes` AS select `vehiculos`.`placa_id` AS `placa_id`,count(0) AS `Total de viajes` from (`vehiculos` join `viajes` on((`viajes`.`placa` = `vehiculos`.`placa_id`))) group by `vehiculos`.`placa_id` order by count(0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viajesitos`
--

/*!50001 DROP VIEW IF EXISTS `viajesitos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viajesitos` AS select `viajes`.`id_viaje` AS `id_viaje`,concat(`conductores`.`nombre`,' ',`conductores`.`apellido`) AS `Conductor`,concat(`pasajeros`.`nombre`,' ',`pasajeros`.`apellido`) AS `Pasajero`,`viajes`.`placa` AS `Placa`,`viajes`.`fecha_hora` AS `Fecha y Hora`,concat(`direcciones`.`nombreCalle`,' ',`direcciones`.`numExt`,' ',`direcciones`.`numInt`,' ',`codigospostales`.`id`,' ',`ciudades`.`nombre`) AS `Dirección origen`,concat(`direcciones`.`nombreCalle`,' ',`direcciones`.`numExt`,' ',`direcciones`.`numInt`,' ',`codigospostales`.`id`,' ',`ciudades`.`nombre`) AS `Dirección Destino`,`cobros`.`cantidad` AS `Cantidad del viaje` from ((((((`viajes` join `conductores` on((`viajes`.`id_conductor` = `conductores`.`id`))) join `pasajeros` on((`viajes`.`id_pasajero` = `pasajeros`.`id`))) join `cobros` on((`viajes`.`id_viaje` = `cobros`.`id_viaje`))) join `direcciones` on((`cobros`.`id_direccion_origen` = `direcciones`.`id_direccion`))) join `codigospostales` on((`codigospostales`.`id` = `direcciones`.`id_codigoPostal`))) join `ciudades` on((`ciudades`.`id` = `codigospostales`.`id_ciudad`))) */;
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

-- Dump completed on 2021-03-03 19:57:18
