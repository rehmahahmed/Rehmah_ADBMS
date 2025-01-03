-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: practical_2
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `ACT_ID` int NOT NULL,
  `ACT_NAME` varchar(20) DEFAULT NULL,
  `ACT_GENDER` char(1) DEFAULT NULL,
  PRIMARY KEY (`ACT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (301,'ANUSHKA','F'),(302,'PRABHAS','M'),(303,'PUNITH','M'),(304,'JERMY','M');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advising`
--

DROP TABLE IF EXISTS `advising`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advising` (
  `stno` int NOT NULL,
  `empno` int NOT NULL,
  PRIMARY KEY (`stno`,`empno`),
  KEY `empno` (`empno`),
  CONSTRAINT `advising_ibfk_1` FOREIGN KEY (`stno`) REFERENCES `students` (`stno`),
  CONSTRAINT `advising_ibfk_2` FOREIGN KEY (`empno`) REFERENCES `instructors` (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advising`
--

LOCK TABLES `advising` WRITE;
/*!40000 ALTER TABLE `advising` DISABLE KEYS */;
INSERT INTO `advising` VALUES (1,101),(2,102),(3,103);
/*!40000 ALTER TABLE `advising` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `cno` int NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `cr` int DEFAULT NULL,
  `cap` int DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Math101',3,30),(2,'CS210',4,25),(3,'Physics101',3,20);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `grade` int DEFAULT NULL,
  `salesman_id` int DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `salesman_id` (`salesman_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`salesman_id`) REFERENCES `salesman` (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (3001,'Brad Guran','London',NULL,NULL),(3002,'Nick Rimando','New York',100,5001),(3003,'Joxy Altidor','Moncow',200,5007),(3004,'Fabian Johns','Paris',300,5006),(3005,'Graham Fuel','California',200,5002),(3007,'Brad Davis','New York',200,5001),(3008,'Julian Green','London',300,5002),(3009,'Geoff Camero','Berlin',100,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `DIR_ID` int NOT NULL,
  `DIR_NAME` varchar(20) DEFAULT NULL,
  `DIR_PHONE` bigint DEFAULT NULL,
  PRIMARY KEY (`DIR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (60,'RAJAMOULI',8751611001),(61,'HITCHCOCK',7766138911),(62,'FARAN',9986776531),(63,'STEVEN SPIELBERG',8989776530);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `stno` int NOT NULL,
  `empno` int DEFAULT NULL,
  `cno` int DEFAULT NULL,
  `sem` varchar(10) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `grade` int DEFAULT NULL,
  PRIMARY KEY (`stno`),
  KEY `empno` (`empno`),
  KEY `cno` (`cno`),
  CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`stno`) REFERENCES `students` (`stno`),
  CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`empno`) REFERENCES `instructors` (`empno`),
  CONSTRAINT `grades_ibfk_3` FOREIGN KEY (`cno`) REFERENCES `courses` (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,101,1,'Fall',2021,85),(2,102,2,'Fall',2021,92),(3,103,3,'Fall',2021,78);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructors` (
  `empno` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `rank` varchar(50) DEFAULT NULL,
  `roomno` varchar(10) DEFAULT NULL,
  `telno` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES (101,'abc','A','R1','112233'),(102,'efg','B','R2','112233'),(103,'xyz','C','R3','112233');
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_cast`
--

DROP TABLE IF EXISTS `movie_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_cast` (
  `ACT_ID` int NOT NULL,
  `MOV_ID` int NOT NULL,
  `ROLE_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ACT_ID`,`MOV_ID`),
  KEY `MOV_ID` (`MOV_ID`),
  CONSTRAINT `movie_cast_ibfk_1` FOREIGN KEY (`ACT_ID`) REFERENCES `actor` (`ACT_ID`),
  CONSTRAINT `movie_cast_ibfk_2` FOREIGN KEY (`MOV_ID`) REFERENCES `movies` (`MOV_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_cast`
--

LOCK TABLES `movie_cast` WRITE;
/*!40000 ALTER TABLE `movie_cast` DISABLE KEYS */;
INSERT INTO `movie_cast` VALUES (301,1001,'HEROINE'),(301,1002,'HEROINE'),(303,1002,'GUEST'),(303,1003,'HERO'),(304,1004,'HERO');
/*!40000 ALTER TABLE `movie_cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `MOV_ID` int NOT NULL,
  `MOV_TITLE` varchar(25) DEFAULT NULL,
  `MOV_YEAR` int DEFAULT NULL,
  `MOV_LANG` varchar(12) DEFAULT NULL,
  `DIR_ID` int DEFAULT NULL,
  PRIMARY KEY (`MOV_ID`),
  KEY `DIR_ID` (`DIR_ID`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`DIR_ID`) REFERENCES `director` (`DIR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1001,'BAHUBALI-2',2017,'TELAGU',60),(1002,'BAHUBALI-1',2015,'TELAGU',60),(1003,'AKASH',2008,'KANNADA',61),(1004,'WAR HORSE',2011,'ENGLISH',63);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_no` int NOT NULL,
  `purch_amt` float DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `salesman_id` int DEFAULT NULL,
  PRIMARY KEY (`order_no`),
  KEY `customer_id` (`customer_id`),
  KEY `salesman_id` (`salesman_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`salesman_id`) REFERENCES `salesman` (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (70001,150.5,'2016-10-05',3005,5002),(70002,65.26,'2016-10-05',3002,5001),(70003,2480.4,'2016-10-10',3009,NULL),(70004,110.5,'2016-08-17',3009,NULL),(70005,2400.6,'2016-07-27',3007,5001),(70007,948.5,'2016-09-10',3005,5002),(70008,5760,'2016-09-10',3002,5001),(70009,270.65,'2016-09-10',3001,NULL),(70010,1983.43,'2016-10-10',3004,5006),(70011,75.29,'2016-08-17',3003,5007),(70012,250.45,'2016-06-27',3008,5002);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `MOV_ID` int NOT NULL,
  `REV_STARS` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`MOV_ID`),
  CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`MOV_ID`) REFERENCES `movies` (`MOV_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1001,'4'),(1002,'2'),(1003,'5'),(1004,'5');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesman`
--

DROP TABLE IF EXISTS `salesman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesman` (
  `salesman_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `commission` float DEFAULT NULL,
  PRIMARY KEY (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesman`
--

LOCK TABLES `salesman` WRITE;
/*!40000 ALTER TABLE `salesman` DISABLE KEYS */;
INSERT INTO `salesman` VALUES (5001,'James Hooq','New York',0.15),(5002,'Nail Knite','Paris',0.13),(5003,'Lauson Hen',NULL,0.12),(5005,'Pit Alex','London',0.11),(5006,'Mc Lyon','Paris',0.14),(5007,'Paul Adam','Rome',0.13);
/*!40000 ALTER TABLE `salesman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `stno` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`stno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Rehmah','Mumbai','Thane','MH','401107'),(2,'Tom','Mumbai','Thane','MH','401107'),(3,'someoneelse','Mumbai','Thane','MH','401107');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-02 18:18:50
