CREATE DATABASE  IF NOT EXISTS `lms1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lms1`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: lms1
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `sl_no` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'j','j');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `sl_no` int NOT NULL AUTO_INCREMENT,
  `author_name` varchar(300) NOT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_table`
--

DROP TABLE IF EXISTS `book_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_table` (
  `book_sl_no` varchar(300) NOT NULL,
  `book_title` varchar(300) NOT NULL,
  `category_name` varchar(300) DEFAULT NULL,
  `category_num` varchar(10) DEFAULT NULL,
  `author_name` varchar(300) DEFAULT NULL,
  `author_num` varchar(10) DEFAULT NULL,
  `publisher_name` varchar(300) DEFAULT NULL,
  `publisher_num` varchar(10) DEFAULT NULL,
  `edition` varchar(100) DEFAULT NULL,
  `volume` varchar(100) DEFAULT NULL,
  `ean_code` varchar(300) DEFAULT NULL,
  `isbn` varchar(300) DEFAULT NULL,
  `price` varchar(300) DEFAULT NULL,
  `purchase_date` varchar(300) DEFAULT NULL,
  `language` varchar(300) DEFAULT NULL,
  `total_book_in_library` int DEFAULT NULL,
  `total_book_available` int DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL,
  `edited_on` varchar(100) DEFAULT NULL,
  `added_by` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`book_sl_no`),
  UNIQUE KEY `book_title` (`book_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_table`
--

LOCK TABLES `book_table` WRITE;
/*!40000 ALTER TABLE `book_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `sl_no` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(300) NOT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventry_table`
--

DROP TABLE IF EXISTS `inventry_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventry_table` (
  `sl_no` varchar(300) NOT NULL,
  `book_sl_no` varchar(300) NOT NULL,
  `book_title` varchar(500) NOT NULL,
  `count` int NOT NULL,
  `added_on` varchar(100) NOT NULL,
  `added_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `book_sl_no` (`book_sl_no`),
  CONSTRAINT `inventry_table_ibfk_1` FOREIGN KEY (`book_sl_no`) REFERENCES `book_table` (`book_sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventry_table`
--

LOCK TABLES `inventry_table` WRITE;
/*!40000 ALTER TABLE `inventry_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventry_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_book`
--

DROP TABLE IF EXISTS `issue_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_book` (
  `issue_sl_no` varchar(50) NOT NULL,
  `student_id` varchar(300) NOT NULL,
  `admission_no` varchar(300) NOT NULL,
  `student_name` varchar(300) NOT NULL,
  `book_title` varchar(500) NOT NULL,
  `book_sl_no` varchar(100) NOT NULL,
  `barcode` varchar(300) NOT NULL,
  `issue_date` varchar(300) NOT NULL,
  `renew_date1` varchar(300) DEFAULT NULL,
  `renew_date2` varchar(300) DEFAULT NULL,
  `renew_date3` varchar(300) DEFAULT NULL,
  `renew_date4` varchar(300) DEFAULT NULL,
  `renew_date5` varchar(300) DEFAULT NULL,
  `return_date` varchar(300) DEFAULT NULL,
  `returned_date` varchar(300) DEFAULT NULL,
  `status` varchar(300) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`issue_sl_no`),
  UNIQUE KEY `issue_sl_no` (`issue_sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_book`
--

LOCK TABLES `issue_book` WRITE;
/*!40000 ALTER TABLE `issue_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `last_inventry`
--

DROP TABLE IF EXISTS `last_inventry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `last_inventry` (
  `sl_no` int NOT NULL AUTO_INCREMENT,
  `bar_code` int NOT NULL,
  `book_sl_no` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `last_inventry`
--

LOCK TABLES `last_inventry` WRITE;
/*!40000 ALTER TABLE `last_inventry` DISABLE KEYS */;
/*!40000 ALTER TABLE `last_inventry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `sl_no` int NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(300) NOT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_book_id`
--

DROP TABLE IF EXISTS `sequence_book_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence_book_id` (
  `sl_no` int NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence_book_id`
--

LOCK TABLES `sequence_book_id` WRITE;
/*!40000 ALTER TABLE `sequence_book_id` DISABLE KEYS */;
INSERT INTO `sequence_book_id` VALUES (1000);
/*!40000 ALTER TABLE `sequence_book_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_inventry_id`
--

DROP TABLE IF EXISTS `sequence_inventry_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence_inventry_id` (
  `sl_no` int NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence_inventry_id`
--

LOCK TABLES `sequence_inventry_id` WRITE;
/*!40000 ALTER TABLE `sequence_inventry_id` DISABLE KEYS */;
INSERT INTO `sequence_inventry_id` VALUES (1);
/*!40000 ALTER TABLE `sequence_inventry_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_student_id`
--

DROP TABLE IF EXISTS `sequence_student_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence_student_id` (
  `sl_no` int NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence_student_id`
--

LOCK TABLES `sequence_student_id` WRITE;
/*!40000 ALTER TABLE `sequence_student_id` DISABLE KEYS */;
INSERT INTO `sequence_student_id` VALUES (2);
/*!40000 ALTER TABLE `sequence_student_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serial_number`
--

DROP TABLE IF EXISTS `serial_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serial_number` (
  `sl_no` int NOT NULL AUTO_INCREMENT,
  `invertry_sl_no` varchar(300) NOT NULL,
  `book_title` varchar(500) DEFAULT NULL,
  `book_sl_no` varchar(300) NOT NULL,
  `bar_code` varchar(300) NOT NULL,
  `book_status` varchar(300) NOT NULL,
  `added_on` varchar(100) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `shelf` varchar(300) DEFAULT NULL,
  `rack` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  UNIQUE KEY `bar_code` (`bar_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serial_number`
--

LOCK TABLES `serial_number` WRITE;
/*!40000 ALTER TABLE `serial_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `serial_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_table`
--

DROP TABLE IF EXISTS `student_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_table` (
  `student_id` varchar(300) NOT NULL,
  `admission_no` varchar(300) NOT NULL,
  `student_name` varchar(300) NOT NULL,
  `profile` varchar(300) DEFAULT NULL,
  `grade` varchar(300) DEFAULT NULL,
  `section` varchar(300) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `added_on` varchar(300) DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id` (`student_id`),
  UNIQUE KEY `admission_no` (`admission_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_table`
--

LOCK TABLES `student_table` WRITE;
/*!40000 ALTER TABLE `student_table` DISABLE KEYS */;
INSERT INTO `student_table` VALUES ('MESSTU1','01','lasa','i am student','2','primary',NULL,'01-May-2020 12:26:03 PM',1);
/*!40000 ALTER TABLE `student_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lms1'
--

--
-- Dumping routines for database 'lms1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-01 15:18:37
