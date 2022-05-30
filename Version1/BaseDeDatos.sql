-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: db-tesis.cqi6qn6eiicl.us-east-1.rds.amazonaws.com    Database: tesis
-- ------------------------------------------------------
-- Server version	8.0.27

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `alimento`
--

DROP TABLE IF EXISTS `alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alimento` (
  `id_alimento` bigint NOT NULL AUTO_INCREMENT,
  `estado` bit(1) DEFAULT NULL,
  `nombre_espanol` varchar(255) DEFAULT NULL,
  `nombre_ingles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_alimento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bioma`
--

DROP TABLE IF EXISTS `bioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bioma` (
  `id_bioma` bigint NOT NULL AUTO_INCREMENT,
  `nombre_espanol` varchar(255) DEFAULT NULL,
  `nombre_ingles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_bioma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deporte`
--

DROP TABLE IF EXISTS `deporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deporte` (
  `id_deporte` bigint NOT NULL AUTO_INCREMENT,
  `estado` bit(1) DEFAULT NULL,
  `nombre_espanol` varchar(255) DEFAULT NULL,
  `nombre_ingles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_deporte`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enfermedad`
--

DROP TABLE IF EXISTS `enfermedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermedad` (
  `id_enfermedad` bigint NOT NULL AUTO_INCREMENT,
  `estado` bit(1) DEFAULT NULL,
  `nombre_espanol` varchar(255) DEFAULT NULL,
  `nombre_ingles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_enfermedad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estudio`
--

DROP TABLE IF EXISTS `estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudio` (
  `id_estudio` bigint NOT NULL AUTO_INCREMENT,
  `ncbisample_classification` varchar(255) DEFAULT NULL,
  `bioma` varchar(255) DEFAULT NULL,
  `descripcion_espanol` varchar(255) DEFAULT NULL,
  `descripcion_ingles` varchar(255) DEFAULT NULL,
  `en_curso` bit(1) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `fecha_fin` datetime(6) DEFAULT NULL,
  `fecha_inicio` datetime(6) DEFAULT NULL,
  `fuente` varchar(255) DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `metodo_secuenciacion` varchar(255) DEFAULT NULL,
  `nombre_espanol` varchar(255) DEFAULT NULL,
  `nombre_ingles` varchar(255) DEFAULT NULL,
  `resultados` varchar(255) DEFAULT NULL,
  `id_usuario` bigint DEFAULT NULL,
  `id_pais` bigint DEFAULT NULL,
  PRIMARY KEY (`id_estudio`),
  KEY `FK9ivma2s038155357ywfwnxdu0` (`id_usuario`),
  KEY `FKr393i5xsvqik1kpg0aw5t4jk` (`id_pais`),
  CONSTRAINT `FK9ivma2s038155357ywfwnxdu0` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `FKr393i5xsvqik1kpg0aw5t4jk` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `farmaco`
--

DROP TABLE IF EXISTS `farmaco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmaco` (
  `id_farmaco` bigint NOT NULL AUTO_INCREMENT,
  `estado` bit(1) DEFAULT NULL,
  `nombre_espanol` varchar(255) DEFAULT NULL,
  `nombre_ingles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_farmaco`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frecuencia`
--

DROP TABLE IF EXISTS `frecuencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frecuencia` (
  `id_frecuencia` bigint NOT NULL AUTO_INCREMENT,
  `nombre_espanol` varchar(255) DEFAULT NULL,
  `nombre_ingles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_frecuencia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `id_material` bigint NOT NULL AUTO_INCREMENT,
  `nombre_espanol` varchar(255) DEFAULT NULL,
  `nombre_ingles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id_pais` bigint NOT NULL AUTO_INCREMENT,
  `estado` bit(1) DEFAULT NULL,
  `nombre_espanol` varchar(255) DEFAULT NULL,
  `nombre_ingles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id_rol` bigint NOT NULL AUTO_INCREMENT,
  `nombre_espanol` varchar(255) DEFAULT NULL,
  `nombre_ingles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` bigint NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(255) DEFAULT NULL,
  `correo_electronico` varchar(255) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `fecha_nacimiento` datetime(6) DEFAULT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `numero_documento` varchar(255) DEFAULT NULL,
  `peso` int DEFAULT NULL,
  `talla` int DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `id_pais` bigint DEFAULT NULL,
  `id_rol` bigint DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `FKsc507r4jpstq91ou0jv9derm5` (`id_pais`),
  KEY `FKmyv3138vvci6kaq3y5kt4cntu` (`id_rol`),
  CONSTRAINT `FKmyv3138vvci6kaq3y5kt4cntu` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  CONSTRAINT `FKsc507r4jpstq91ou0jv9derm5` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario_alimento`
--

DROP TABLE IF EXISTS `usuario_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_alimento` (
  `id_usuario_alimento` bigint NOT NULL AUTO_INCREMENT,
  `cantidad` int DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `id_enfermedad` bigint DEFAULT NULL,
  `id_usuario` bigint DEFAULT NULL,
  PRIMARY KEY (`id_usuario_alimento`),
  KEY `FK1u5i0l13best0aj530lhy57dc` (`id_enfermedad`),
  KEY `FK9m325708yvsqt9dko6725dkf7` (`id_usuario`),
  CONSTRAINT `FK1u5i0l13best0aj530lhy57dc` FOREIGN KEY (`id_enfermedad`) REFERENCES `alimento` (`id_alimento`),
  CONSTRAINT `FK9m325708yvsqt9dko6725dkf7` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario_deporte`
--

DROP TABLE IF EXISTS `usuario_deporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_deporte` (
  `id_usuario_deporte` bigint NOT NULL AUTO_INCREMENT,
  `fecha_inicio` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `id_deporte` bigint DEFAULT NULL,
  `id_frecuencia` bigint DEFAULT NULL,
  `id_usuario` bigint DEFAULT NULL,
  PRIMARY KEY (`id_usuario_deporte`),
  KEY `FKq6gimta8ul3othspsp78ce53x` (`id_deporte`),
  KEY `FKfnk1rcvs4n7q2rp7nq26kuj1t` (`id_frecuencia`),
  KEY `FK5p11t1s9jv7yix49sgne244pm` (`id_usuario`),
  CONSTRAINT `FK5p11t1s9jv7yix49sgne244pm` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `FKfnk1rcvs4n7q2rp7nq26kuj1t` FOREIGN KEY (`id_frecuencia`) REFERENCES `frecuencia` (`id_frecuencia`),
  CONSTRAINT `FKq6gimta8ul3othspsp78ce53x` FOREIGN KEY (`id_deporte`) REFERENCES `deporte` (`id_deporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario_enfermedad`
--

DROP TABLE IF EXISTS `usuario_enfermedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_enfermedad` (
  `id_usuario_enfermedad` bigint NOT NULL AUTO_INCREMENT,
  `estado` bit(1) DEFAULT NULL,
  `fecha_deteccion` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `id_enfermedad` bigint DEFAULT NULL,
  `id_usuario` bigint DEFAULT NULL,
  PRIMARY KEY (`id_usuario_enfermedad`),
  KEY `FK6njmyeuowk6hxv8mveccftcp3` (`id_enfermedad`),
  KEY `FKc99sbsh7fg67iirqsqqiwt8at` (`id_usuario`),
  CONSTRAINT `FK6njmyeuowk6hxv8mveccftcp3` FOREIGN KEY (`id_enfermedad`) REFERENCES `enfermedad` (`id_enfermedad`),
  CONSTRAINT `FKc99sbsh7fg67iirqsqqiwt8at` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario_estudio`
--

DROP TABLE IF EXISTS `usuario_estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_estudio` (
  `id_usuario_estudio` bigint NOT NULL AUTO_INCREMENT,
  `id_estudio` bigint DEFAULT NULL,
  `id_usuario` bigint DEFAULT NULL,
  PRIMARY KEY (`id_usuario_estudio`),
  KEY `FK6b10w6p03nrkb83xqerulslye` (`id_estudio`),
  KEY `FKko19tua627c4v0qcv8tlek21f` (`id_usuario`),
  CONSTRAINT `FK6b10w6p03nrkb83xqerulslye` FOREIGN KEY (`id_estudio`) REFERENCES `estudio` (`id_estudio`),
  CONSTRAINT `FKko19tua627c4v0qcv8tlek21f` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario_farmaco`
--

DROP TABLE IF EXISTS `usuario_farmaco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_farmaco` (
  `id_usuario_farmaco` bigint NOT NULL AUTO_INCREMENT,
  `cantidad` int DEFAULT NULL,
  `dosis` int DEFAULT NULL,
  `fecha_inicio` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `id_enfermedad` bigint DEFAULT NULL,
  `id_frecuencia` bigint DEFAULT NULL,
  `id_usuario` bigint DEFAULT NULL,
  PRIMARY KEY (`id_usuario_farmaco`),
  KEY `FKt38mid01bly49pw8cbfb05awq` (`id_enfermedad`),
  KEY `FKo2oew3h3kjtfra37xr8e4i0ub` (`id_frecuencia`),
  KEY `FK91i5cb6wtayuy601uigt90ibx` (`id_usuario`),
  CONSTRAINT `FK91i5cb6wtayuy601uigt90ibx` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `FKo2oew3h3kjtfra37xr8e4i0ub` FOREIGN KEY (`id_frecuencia`) REFERENCES `frecuencia` (`id_frecuencia`),
  CONSTRAINT `FKt38mid01bly49pw8cbfb05awq` FOREIGN KEY (`id_enfermedad`) REFERENCES `farmaco` (`id_farmaco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-04 21:42:19
