CREATE DATABASE  IF NOT EXISTS `dilg-hris` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dilg-hris`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: dilg-hris
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `applicationforleave`
--

DROP TABLE IF EXISTS `applicationforleave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicationforleave` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'sa mga ID iniwan ko muna ganyan di ko alam eh. hahaha',
  `emp_id` varchar(6) DEFAULT NULL,
  `typeOfLeave` enum('Sick','Vacation','Maternity','Forced','Terminal','Rehabilitation','CSC-SPL','Other') DEFAULT NULL COMMENT 'Not sure.',
  `location` varchar(250) DEFAULT NULL,
  `sickInfo` varchar(350) DEFAULT NULL,
  `noOfWorkingDays` int(2) DEFAULT NULL,
  `inclusiveDates` varchar(100) DEFAULT NULL COMMENT 'Varchar lang siguro pwede dito di pwede data type na date. hahaha.',
  `dateOfapplication` varchar(100) DEFAULT NULL,
  `status` enum('Accepted','Declined') DEFAULT NULL COMMENT 'Not sure. Hahhaa.',
  PRIMARY KEY (`app_id`),
  KEY `fk_applicationforleave_1_idx` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationforleave`
--

LOCK TABLES `applicationforleave` WRITE;
/*!40000 ALTER TABLE `applicationforleave` DISABLE KEYS */;
INSERT INTO `applicationforleave` VALUES (1,'E-1873','Vacation','Zamar','N/A',3,'2017-3-12','2017-3-15','Accepted'),(2,'E-1874','Sick','N/A','Fever',3,'2017-3-12','2017-3-15','Accepted'),(3,'E-1875','Maternity','N/A','N/A',30,'2017-3-15','2017-4-24','Accepted'),(4,'E-1876','Terminal','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(5,'E-1877','Forced','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(6,'E-1878','CSC-SPL','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(7,'E-1879','Rehabilitation','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(8,'E-1880','Vacation','Cagayan','N/A',3,'2017-3-12','2017-3-15','Accepted'),(9,'E-1881','Sick','N/A','Fever',3,'2017-3-12','2017-3-15','Accepted'),(10,'E-1882','Maternity','N/A','N/A',30,'2017-3-15','2017-4-24','Accepted'),(11,'E-1883','Terminal','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(12,'E-1884','Forced','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(13,'E-1885','CSC-SPL','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(14,'E-1886','Rehabilitation','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(15,'E-1887','Vacation','Bulacan','N/A',3,'2017-3-12','2017-3-15','Accepted'),(16,'E-1888','Sick','N/A','Colds',3,'2017-3-12','2017-3-15','Accepted'),(17,'E-1889','Maternity','N/A','N/A',30,'2017-3-15','2017-4-24','Accepted'),(18,'E-1890','Terminal','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(19,'E-1891','Forced','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(20,'E-1892','Vacation','Cebu','N/A',3,'2017-3-12','2017-3-15','Accepted'),(21,'E-1893','Sick','N/A','Headache',3,'2017-3-12','2017-3-15','Accepted'),(22,'E-1894','Forced','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(23,'E-1895','Terminal','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(24,'E-1896','Maternity','N/A','N/A',30,'2017-3-15','2017-4-24','Accepted'),(25,'E-1897','Vacation','London','N/A',3,'2017-3-12','2017-3-15','Accepted'),(26,'E-1898','Sick','N/A','Stomach Pain',3,'2017-3-12','2017-3-15','Accepted'),(27,'E-1899','Terminal','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(28,'E-1900','Maternity','N/A','N/A',30,'2017-3-15','2017-4-24','Accepted'),(29,'E-1901','Forced','N/A','N/A',0,NULL,'2017-3-14','Accepted'),(30,'E-1902','Vacation','Isabella','N/A',3,'2017-3-12','2017-3-15','Accepted'),(31,'E-1903','Sick','N/A','Chicken Pox',3,'2017-3-12','2017-3-15','Declined'),(32,'E-1904','Terminal','N/A','N/A',0,NULL,'2017-3-14','Declined'),(33,'E-1905','CSC-SPL','N/A','N/A',30,'2017-3-15','2017-4-24','Declined'),(34,'E-1906','Sick','N/A','Fever',3,'2017-3-12','2017-3-15','Declined'),(35,'E-1907','Forced','N/A','N/A',0,NULL,'2017-3-14','Declined'),(36,'E-1908','Vacation','Ilocon Sur','N/A',3,'2017-3-12','2017-3-15','Declined'),(37,'E-1909','Terminal','N/A','N/A',0,NULL,'2017-3-14','Declined'),(38,'E-1910','Maternity','N/A','N/A',30,'2017-3-15','2017-4-24','Declined'),(39,'E-1911','Sick','N/A','Dengue',3,'2017-3-12','2017-3-15','Declined'),(40,'E-1912','Vacation','Quezon','N/A',3,'2017-3-12','2017-3-15','Declined'),(41,'E-1913','Sick','N/A','Home',3,'2017-3-12','2017-3-15','Declined'),(42,'E-1914','Rehabilitation','N/A','N/A',0,NULL,'2017-3-14','Declined'),(43,'E-1915','Maternity','N/A','N/A',30,'2017-3-15','2017-4-24','Declined'),(44,'E-1916','Terminal','N/A','N/A',0,NULL,'2017-3-14','Declined'),(45,'E-1917','Forced','N/A','N/A',0,NULL,'2017-3-14','Declined'),(46,'E-1918','Forced','N/A','N/A',0,NULL,'2017-3-14','Declined'),(47,'E-1919','Vacation','Manila','N/A',3,'2017-3-12','2017-3-15','Declined'),(48,'E-1920','Sick','N/A','Cancer',3,'2017-3-12','2017-3-15','Declined'),(49,'E-1921','Vacation','Boracay','N/A',3,'2017-3-12','2017-3-15','Declined'),(50,'E-1922','Sick','N/A','Toothache',3,'2017-3-12','2017-3-12','Declined');
/*!40000 ALTER TABLE `applicationforleave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `children`
--

DROP TABLE IF EXISTS `children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `children` (
  `family_id` int(11) NOT NULL,
  `emp_id` varchar(6) NOT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  PRIMARY KEY (`family_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `children`
--

LOCK TABLES `children` WRITE;
/*!40000 ALTER TABLE `children` DISABLE KEYS */;
INSERT INTO `children` VALUES (1,'E-1873','Wellington Lebsack','2011-04-21'),(2,'E-1874','Titus Auer','2001-07-09'),(3,'E-1875','Toby Cole','2012-02-14'),(4,'E-1876','Ephraim Wunsch','2015-04-05'),(5,'E-1877','Julio Stiedemann','1993-01-27'),(6,'E-1878','Grayce Lemke','2007-12-12'),(7,'E-1879','Else Grady','1985-10-26'),(8,'E-1880','Krista Kris','2009-09-22'),(9,'E-1881','Lilian Cruickshank','1994-10-18'),(10,'E-1882','Ona Jacobs','1986-09-25'),(11,'E-1883','Laney Gerlach','1999-09-03'),(12,'E-1884','Aric Stanton','2014-08-27'),(13,'E-1885','Chadrick Herzog','1976-08-19'),(14,'E-1886','Jamar Weimann','2009-04-04'),(15,'E-1887','Lafayette Herman Sr.','1999-01-24'),(16,'E-1888','Verner O\'Kon','1993-12-01'),(17,'E-1889','Julianne Barton III','2000-11-18'),(18,'E-1890','Karlie Beier','1997-10-22'),(19,'E-1891','Daron Waelchi','2001-10-17'),(20,'E-1892','Hiram Luettgen','1983-11-29'),(21,'E-1893','Isaac Jacobson','2007-05-14'),(22,'E-1894','Carey King Jr.','1985-06-27'),(23,'E-1895','Rex Barton','2002-10-27'),(24,'E-1896','Daren Abbott','2007-07-03'),(25,'E-1897','Kasey Johns','1999-11-20'),(26,'E-1898','Joannie Cartwright III','1991-01-11'),(27,'E-1899','Cullen Mertz','1974-03-30'),(28,'E-1900','Dorcas Batz','1980-05-18'),(29,'E-1901','Eli Leffler','2017-08-11'),(30,'E-1902','Cristian Gulgowski','1975-06-07'),(31,'E-1903','Antwan Champlin','1978-02-09'),(32,'E-1904','Jameson Parker','2008-03-20'),(33,'E-1905','Linda Lemke','1994-02-07'),(34,'E-1906','Lucile Stoltenberg','1994-07-07'),(35,'E-1907','Kaitlyn Hartmann','1971-05-30'),(36,'E-1908','Joshuah Wehner Jr.','1992-05-16'),(37,'E-1909','Evan Heaney','1984-10-16'),(38,'E-1910','Lesley Bergnaum','2001-10-31'),(39,'E-1911','Eloisa Feil','2016-05-06'),(40,'E-1912','Maxwell Ferry IV','2013-07-19'),(41,'E-1913','Benjamin Zulauf','1976-10-12'),(42,'E-1914','Tremayne Towne','1999-10-23'),(43,'E-1915','Ricardo Frami II','2000-12-04'),(44,'E-1916','Carolanne Yundt','1973-06-16'),(45,'E-1917','Lilyan Mayer','2010-10-02'),(46,'E-1918','Hailey O\'Hara','1982-10-25'),(47,'E-1919','Kory Schroeder','1990-10-18'),(48,'E-1920','ay Ebert','2014-05-22'),(49,'E-1921','Hilton O\'Reilly','1996-02-27'),(50,'E-1922','Iliana Bode','1982-06-25');
/*!40000 ALTER TABLE `children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `civilserviceeligibility`
--

DROP TABLE IF EXISTS `civilserviceeligibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `civilserviceeligibility` (
  `civilService_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'di ko alam kung paano id system. hahah.',
  `emp_id` varchar(6) DEFAULT NULL,
  `civilServiceName` varchar(150) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL COMMENT 'Hmm not sure. Percentage (if applicable) daw tapos yung mga iba nakasulat ''Passed''.',
  `dateOfExamination` date DEFAULT NULL,
  `placeOfExamination` varchar(45) DEFAULT NULL,
  `licenseNumber` varchar(25) DEFAULT NULL COMMENT 'number with dashes kaya varchar ginamit ko. hahaha',
  `licenseDateOfValidity` date DEFAULT NULL,
  PRIMARY KEY (`civilService_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4051 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `civilserviceeligibility`
--

LOCK TABLES `civilserviceeligibility` WRITE;
/*!40000 ALTER TABLE `civilserviceeligibility` DISABLE KEYS */;
INSERT INTO `civilserviceeligibility` VALUES (4001,'E-1873','Career Service Eligibility - Professional','80.27%','0000-00-00','Civil Service Commission - CAR','05-014767','0000-00-00'),(4002,'E-1874','Career Service Eligibility - Professional','81.27%','0000-00-00','Civil Service Commission - CAR','05-014768','0000-00-00'),(4003,'E-1875','Career Service Eligibility - Professional','82.27%','0000-00-00','Civil Service Commission - CAR','05-014769','0000-00-00'),(4004,'E-1876','Career Service Eligibility - Professional','83.27%','0000-00-00','Civil Service Commission - CAR','05-014770','0000-00-00'),(4005,'E-1877','Career Service Eligibility - Professional','84.27%','0000-00-00','Civil Service Commission - CAR','05-014771','0000-00-00'),(4006,'E-1878','Career Service Eligibility - Professional','85.27%','0000-00-00','Civil Service Commission - CAR','05-014772','0000-00-00'),(4007,'E-1879','Career Service Eligibility - Professional','86.27%','0000-00-00','Civil Service Commission - CAR','05-014773','0000-00-00'),(4008,'E-1880','Career Service Eligibility - Professional','87.27%','0000-00-00','Civil Service Commission - CAR','05-014774','0000-00-00'),(4009,'E-1881','Career Service Eligibility - Professional','88.27%','0000-00-00','Civil Service Commission - CAR','05-014775','0000-00-00'),(4010,'E-1882','Career Service Eligibility - Professional','89.27%','0000-00-00','Civil Service Commission - CAR','05-014776','0000-00-00'),(4011,'E-1883','Career Service Eligibility - Professional','90.27%','0000-00-00','Civil Service Commission - CAR','05-014777','0000-00-00'),(4012,'E-1884','Career Service Eligibility - Professional','91.27%','0000-00-00','Civil Service Commission - CAR','05-014778','0000-00-00'),(4013,'E-1885','Career Service Eligibility - Professional','92.27%','0000-00-00','Civil Service Commission - CAR','05-014779','0000-00-00'),(4014,'E-1886','Career Service Eligibility - Professional','93.27%','0000-00-00','Civil Service Commission - CAR','05-014780','0000-00-00'),(4015,'E-1887','Career Service Eligibility - Professional','94.27%','0000-00-00','Civil Service Commission - CAR','05-014781','0000-00-00'),(4016,'E-1888','Career Service Eligibility - Professional','95.27%','0000-00-00','Civil Service Commission - CAR','05-014782','0000-00-00'),(4017,'E-1889','Career Service Eligibility - Professional','96.27%','0000-00-00','Civil Service Commission - CAR','05-014783','0000-00-00'),(4018,'E-1890','Career Service Eligibility - Professional','97.27%','0000-00-00','Civil Service Commission - CAR','05-014784','0000-00-00'),(4019,'E-1891','Career Service Eligibility - ProfessiCareer Service Eligibility - Professionalonal','98.27%','0000-00-00','Civil Service Commission - CAR','05-014785','0000-00-00'),(4020,'E-1892','Career Service Eligibility - ProfessionalCareer Service Eligibility - Professional','80.27%','0000-00-00','Civil Service Commission - CAR','05-014786','0000-00-00'),(4021,'E-1893','Career Service Eligibility - Professional','81.27%','0000-00-00','Civil Service Commission - CAR','05-014787','0000-00-00'),(4022,'E-1894','Career Service Eligibility - Professional','82.27%','0000-00-00','Civil Service Commission - CAR','05-014788','0000-00-00'),(4023,'E-1895','Career Service Eligibility - Professional','83.27%','0000-00-00','Civil Service Commission - CAR','05-014789','0000-00-00'),(4024,'E-1896','Career Service Eligibility - Professional','84.27%','0000-00-00','Civil Service Commission - CAR','05-014790','0000-00-00'),(4025,'E-1897','Career Service Eligibility - Professional','85.27%','0000-00-00','Civil Service Commission - CAR','05-014791','0000-00-00'),(4026,'E-1898','Career Service Eligibility - Professional','86.27%','0000-00-00','Civil Service Commission - CAR','05-014792','0000-00-00'),(4027,'E-1899','Career Service Eligibility - Professional','87.27%','0000-00-00','Civil Service Commission - CAR','05-014793','0000-00-00'),(4028,'E-1900','Career Service Eligibility - Professional','88.27%','0000-00-00','Civil Service Commission - CAR','05-014794','0000-00-00'),(4029,'E-1901','Career Service Eligibility - Professional','89.27%','0000-00-00','Civil Service Commission - CAR','05-014795','0000-00-00'),(4030,'E-1902','Career Service Eligibility - Professional','90.27%','0000-00-00','Civil Service Commission - CAR','05-014796','0000-00-00'),(4031,'E-1903','Career Service Eligibility - Professional','91.27%','0000-00-00','Civil Service Commission - CAR','05-014797','0000-00-00'),(4032,'E-1904','Career Service Eligibility - Professional','92.27%','0000-00-00','Civil Service Commission - CAR','05-014798','0000-00-00'),(4033,'E-1905','Career Service Eligibility - Professional','93.27%','0000-00-00','Civil Service Commission - CAR','05-014799','0000-00-00'),(4034,'E-1906','Career Service Eligibility - Professional','94.27%','0000-00-00','Civil Service Commission - CAR','05-014800','0000-00-00'),(4035,'E-1907','Career Service Eligibility - Professional','95.27%','0000-00-00','Civil Service Commission - CAR','05-014801','0000-00-00'),(4036,'E-1908','Career Service Eligibility - Professional','96.27%','0000-00-00','Civil Service Commission - CAR','05-014802','0000-00-00'),(4037,'E-1909','Career Service Eligibility - Professional','97.27%','0000-00-00','Civil Service Commission - CAR','05-014803','0000-00-00'),(4038,'E-1910','Career Service Eligibility - Professional','98.27%','0000-00-00','Civil Service Commission - CAR','05-014804','0000-00-00'),(4039,'E-1911','Career Service Eligibility - Professional','99.27%','0000-00-00','Civil Service Commission - CAR','05-014805','0000-00-00'),(4040,'E-1912','Career Service Eligibility - Professional','80.27%','0000-00-00','Civil Service Commission - CAR','05-014806','0000-00-00'),(4041,'E-1913','Career Service Eligibility - Professional','81.27%','0000-00-00','Civil Service Commission - CAR','05-014807','0000-00-00'),(4042,'E-1914','Career Service Eligibility - Professional','82.27%','0000-00-00','Civil Service Commission - CAR','05-014808','0000-00-00'),(4043,'E-1915','Career Service Eligibility - Professional','83.27%','0000-00-00','Civil Service Commission - CAR','05-014809','0000-00-00'),(4044,'E-1916','Career Service Eligibility - Professional','84.27%','0000-00-00','Civil Service Commission - CAR','05-014810','0000-00-00'),(4045,'E-1917','Career Service Eligibility - Professional','85.27%','0000-00-00','Civil Service Commission - CAR','05-014811','0000-00-00'),(4046,'E-1918','Career Service Eligibility - Professional','86.27%','0000-00-00','Civil Service Commission - CAR','05-014812','0000-00-00'),(4047,'E-1919','Career Service Eligibility - Professional','87.27%','0000-00-00','Civil Service Commission - CAR','05-014813','0000-00-00'),(4048,'E-1920','Career Service Eligibility - Professional','88.27%','0000-00-00','Civil Service Commission - CAR','05-014814','0000-00-00'),(4049,'E-1921','Career Service Eligibility - Professional','89.27%','0000-00-00','Civil Service Commission - CAR','05-014815','0000-00-00'),(4050,'E-1922','Career Service Eligibility - Professional','90.27%','0000-00-00','Civil Service Commission - CAR','05-014816','0000-00-00');
/*!40000 ALTER TABLE `civilserviceeligibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division` (
  `division_id` int(11) NOT NULL AUTO_INCREMENT,
  `division` enum('ORD','FAD','LGCDD','LGMED') DEFAULT NULL COMMENT 'ORD - Office of the Regional Director\nFAD - Finance and Administrative Division\nLGCDD - Local Government Capacity Development Division\nLGMED - Local Government Monitoring and Evaluation Division\n\nKaya inalis ko na yung divisions code? Kapag sa system natin kumpleto pangalan na. ',
  `province` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`division_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21005 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (21001,'ORD',NULL),(21002,'FAD',NULL),(21003,'LGCDD',NULL),(21004,'LGMED',NULL);
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationalbackground`
--

DROP TABLE IF EXISTS `educationalbackground`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educationalbackground` (
  `educ_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'di ko rin alam id system natin. ',
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Di ko sure yung sa data ype. Binase ko lang yun nasa PDS. ',
  `level` enum('Elementary','Secondary','Vocational/Trade Course','College','Graduate Studies') DEFAULT NULL,
  `nameOfSchool` varchar(200) DEFAULT NULL,
  `basicEducationDegreeCourse` varchar(100) DEFAULT NULL,
  `periodOfAttendanceFrom` year(4) DEFAULT NULL,
  `periodOfAttendanceTo` year(4) DEFAULT NULL,
  `highestLevelEarnedUnits` int(2) DEFAULT NULL,
  `yearGraduated` year(4) DEFAULT NULL,
  `scholarshipsAcademicHonorsReceived` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`educ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2152 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationalbackground`
--

LOCK TABLES `educationalbackground` WRITE;
/*!40000 ALTER TABLE `educationalbackground` DISABLE KEYS */;
INSERT INTO `educationalbackground` VALUES (2001,'E-1873','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,'Best in Academics'),(2002,'E-1873','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,'Best in Academics'),(2003,'E-1873','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,'Cum Laude'),(2004,'E-1874','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2005,'E-1874','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2006,'E-1874','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2008,'E-1875','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2009,'E-1875','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2010,'E-1875','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2011,'E-1876','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2012,'E-1876','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2013,'E-1876','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2014,'E-1877','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2015,'E-1877','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2016,'E-1877','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2017,'E-1878','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2018,'E-1878','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2019,'E-1878','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2020,'E-1879','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2021,'E-1879','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2022,'E-1879','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2023,'E-1880','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2024,'E-1880','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2025,'E-1880','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2026,'E-1881','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2027,'E-1881','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2028,'E-1881','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2029,'E-1882','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2030,'E-1882','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2031,'E-1882','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2032,'E-1883','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2033,'E-1883','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2034,'E-1883','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2035,'E-1884','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2036,'E-1884','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2037,'E-1884','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2038,'E-1885','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2039,'E-1885','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2040,'E-1885','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2041,'E-1886','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2042,'E-1886','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2043,'E-1886','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2044,'E-1887','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2045,'E-1887','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2046,'E-1887','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2047,'E-1888','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2048,'E-1888','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2049,'E-1888','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2050,'E-1889','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2051,'E-1889','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2052,'E-1889','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2053,'E-1890','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2054,'E-1890','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2055,'E-1890','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2056,'E-1891','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2057,'E-1891','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2058,'E-1891','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2059,'E-1892','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2060,'E-1892','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2061,'E-1892','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2062,'E-1893','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2063,'E-1893','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2064,'E-1893','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2065,'E-1894','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2066,'E-1894','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2067,'E-1894','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2068,'E-1895','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2069,'E-1895','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2070,'E-1895','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2071,'E-1896','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2072,'E-1896','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2073,'E-1896','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2074,'E-1897','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2075,'E-1897','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2076,'E-1897','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2077,'E-1898','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2078,'E-1898','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2079,'E-1898','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2080,'E-1899','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2081,'E-1899','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2082,'E-1899','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2083,'E-1900','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2084,'E-1900','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2085,'E-1900','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2086,'E-1901','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2087,'E-1901','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2088,'E-1901','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2089,'E-1902','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2090,'E-1902','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2091,'E-1902','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2092,'E-1903','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2093,'E-1903','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2094,'E-1903','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2095,'E-1904','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2096,'E-1904','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2097,'E-1904','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2098,'E-1905','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2099,'E-1905','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2100,'E-1905','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2101,'E-1906','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2102,'E-1906','','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2103,'E-1906','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2104,'E-1907','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2105,'E-1907','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2106,'E-1907','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2107,'E-1908','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2108,'E-1908','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2109,'E-1908','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2110,'E-1909','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2111,'E-1909','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2112,'E-1909','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2113,'E-1910','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2114,'E-1910','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2115,'E-1910','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2116,'E-1911','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2117,'E-1911','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2118,'E-1911','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2119,'E-1912','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2120,'E-1912','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2121,'E-1912','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2122,'E-1913','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2123,'E-1913','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2124,'E-1913','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2125,'E-1914','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2126,'E-1914','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2127,'E-1914','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2128,'E-1915','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2129,'E-1915','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2130,'E-1915','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2131,'E-1916','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2132,'E-1916','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2133,'E-1916','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2134,'E-1917','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2135,'E-1917','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2136,'E-1917','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2137,'E-1918','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2138,'E-1918','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2139,'E-1918','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2140,'E-1919','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2141,'E-1919','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2142,'E-1919','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2143,'E-1920','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2144,'E-1920','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2145,'E-1920','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2146,'E-1921','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2147,'E-1921','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2148,'E-1921','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(2149,'E-1922','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(2150,'E-1922','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(2151,'E-1922','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `educationalbackground` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `emp_id` varchar(6) NOT NULL COMMENT 'Agency Employee ID ni sir Zaldy is E-1873 kaya di ako sure kung ilang VARCHAR ba yung ilalagay ko diyan, nilagay ko 6.',
  `lastname` varchar(45) DEFAULT NULL,
  `givenname` varchar(45) DEFAULT NULL,
  `middlename` varchar(45) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `placeOfBirth` varchar(45) DEFAULT NULL,
  `sex` enum('M','F') DEFAULT NULL COMMENT 'M = Male\nF = Female',
  `civilStatus` enum('Single','Married','Widowed') DEFAULT NULL COMMENT 'Heto yung mga nakalagay na Civil Status sa PDS.\nSingle, Married, Widowed, Separated, Other/s:\n\nAhmm di ko alam hmmm. Enum? Paano kaya yung "Other/s:" incase?\n\nPero for the mean time yung apat muna? Hahaha.',
  `height` float DEFAULT NULL COMMENT 'Sa PDS yung Height nila nilalagay nila as "m - meters". Example na height dun 1.68 M. \n\nFloat muna? Hahaha.\n\nSuggestion dito nung nagtanong sa stackoverflow either float or double daw.\nReference: https://stackoverflow.com/questions/11145355/mysql-field-type-for-weight-and-height-data',
  `weight` float DEFAULT NULL COMMENT 'Sa PDS yung Height nila nilalagay nila as "m - meters". Example na height dun 1.68 M. \n\nFloat muna? Hahaha.\n\nSuggestion dito nung nagtanong sa stackoverflow either float or double daw.\nReference: https://stackoverflow.com/questions/11145355/mysql-field-type-for-weight-and-height-data',
  `bloodtype` enum('A','B','AB','O') DEFAULT NULL COMMENT 'Four Main Blood Groups:\n1. Type A\n2. Type B\n3. Type AB\n4. Type O\n\nReference: http://kidshealth.org/en/teens/blood-types.html',
  `gsis` varchar(26) DEFAULT NULL COMMENT 'Hmmm sa GSIS No., PAG-IBIG No., Philhealth No., SSS No., at Tin No. May numbers with dashes sila \nparang yung 1290-0051-8410 at 19-000827615-7 etc. \n\nSabi dun sa mga nabasa ko eh kung ganun daw dapat character-based type daw gamitin. Di gaano sure. Hahaha. For now Varchar(26) muna? Pwede niyo pa naman baguhin kung ilan.\n\nReferences: \nhttps://stackoverflow.com/questions/11788092/best-datatype-for-a-variable-that-holders-numbers-and-a-dash\n\nhttps://social.msdn.microsoft.com/Forums/sqlserver/en-US/391818e6-24ec-4f84-afe5-27545fa3275e/what-is-the-data-type-that-allows-dashes?forum=sqlgetstarted',
  `pagibig` varchar(26) DEFAULT NULL COMMENT 'Hmmm sa GSIS No., PAG-IBIG No., Philhealth No., SSS No., at Tin No. May numbers with dashes sila \nparang yung 1290-0051-8410 at 19-000827615-7 etc. \n\nSabi dun sa mga nabasa ko eh kung ganun daw dapat character-based type daw gamitin. Di gaano sure. Hahaha. For now Varchar(26) muna? Pwede niyo pa naman baguhin kung ilan.\n\nReferences: \nhttps://stackoverflow.com/questions/11788092/best-datatype-for-a-variable-that-holders-numbers-and-a-dash\n\nhttps://social.msdn.microsoft.com/Forums/sqlserver/en-US/391818e6-24ec-4f84-afe5-27545fa3275e/what-is-the-data-type-that-allows-dashes?forum=sqlgetstarted',
  `sss` varchar(26) DEFAULT NULL COMMENT 'Hmmm sa GSIS No., PAG-IBIG No., Philhealth No., SSS No., at Tin No. May numbers with dashes sila \nparang yung 1290-0051-8410 at 19-000827615-7 etc. \n\nSabi dun sa mga nabasa ko eh kung ganun daw dapat character-based type daw gamitin. Di gaano sure. Hahaha. For now Varchar(26) muna? Pwede niyo pa naman baguhin kung ilan.\n\nReferences: \nhttps://stackoverflow.com/questions/11788092/best-datatype-for-a-variable-that-holders-numbers-and-a-dash\n\nhttps://social.msdn.microsoft.com/Forums/sqlserver/en-US/391818e6-24ec-4f84-afe5-27545fa3275e/what-is-the-data-type-that-allows-dashes?forum=sqlgetstarted',
  `tin` varchar(26) DEFAULT NULL COMMENT 'Hmmm sa GSIS No., PAG-IBIG No., Philhealth No., SSS No., at Tin No. May numbers with dashes sila \nparang yung 1290-0051-8410 at 19-000827615-7 etc. \n\nSabi dun sa mga nabasa ko eh kung ganun daw dapat character-based type daw gamitin. Di gaano sure. Hahaha. For now Varchar(26) muna? Pwede niyo pa naman baguhin kung ilan.\n\nReferences: \nhttps://stackoverflow.com/questions/11788092/best-datatype-for-a-variable-that-holders-numbers-and-a-dash\n\nhttps://social.msdn.microsoft.com/Forums/sqlserver/en-US/391818e6-24ec-4f84-afe5-27545fa3275e/what-is-the-data-type-that-allows-dashes?forum=sqlgetstarted',
  `citizenship` varchar(45) DEFAULT NULL COMMENT 'not sure. hahaha. Baka varchar.',
  `residentialAddressHouseBlockLotNo` varchar(6) DEFAULT NULL,
  `residentialAddressStreet` varchar(45) DEFAULT NULL COMMENT 'Di ako sure kung ilang varchar.',
  `residentialAddressSubdivisionVillage` varchar(45) DEFAULT NULL COMMENT 'Di ako sure kung ilang varchar.',
  `residentialAddressBarangay` varchar(45) DEFAULT NULL COMMENT 'Di ako sure kung ilang varchar.',
  `residentialAddressCityMunicipality` varchar(45) DEFAULT NULL COMMENT 'Di ako sure kung ilang varchar.',
  `residentialAddressProvince` varchar(45) DEFAULT NULL COMMENT 'Di ako sure kung ilang varchar.',
  `residentialAddressZipcode` varchar(4) DEFAULT NULL COMMENT 'Hmmm. Not sure dami kong nakikita sa internet na INT daw or VARCHAR. \n\nPero usually zip codes sa atin 4 numbers lang diba? hahhaa.',
  `permanentAddressHouseBlockLotNo` varchar(6) DEFAULT NULL,
  `permanentAddressStreet` varchar(45) DEFAULT NULL,
  `permanentAddressSubdivisionVillage` varchar(45) DEFAULT NULL,
  `permanentAddressBarangay` varchar(45) DEFAULT NULL,
  `permanentAddressCityMunicipality` varchar(45) DEFAULT NULL,
  `permanentAddressProvince` varchar(45) DEFAULT NULL,
  `permanentAddressZipcode` varchar(4) DEFAULT NULL,
  `telephoneNo` varchar(13) DEFAULT NULL COMMENT 'Incase na mag (045)491-3791\nnot sure. hahhaa. Incase na may ganyan. Pwede din palitan.',
  `mobileNo` varchar(13) DEFAULT NULL COMMENT 'Incase na mag- +6390XXXXXXXX siya? Hahaha',
  `emailaddress` varchar(45) DEFAULT NULL,
  `citizenship_country` varchar(45) DEFAULT NULL,
  `citizenship_info` varchar(45) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `status` enum('Active','Resigned','Terminated','Deceased') DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('E-1873','Pangan','Saldy','Santos','1989-12-30','Baguio','M','Married',1.68,75,'O','CM-2052757		','1290-0052-8340		','01-1224965-2		','7968-51-7438','Filipino','9','Magsaysay Drive','','Loakan Proper','Baguio','Benguet','2600','9','Magsaysay Drive','','Loakan Proper','Baguio City','Benguet','2600','','9251031313','saldypapatiw@gmail.com','Philippines','N/A',20001,'Active'),('E-1874','Guevarra','Rodel','Dela Cruz','1993-11-17','Baguio','M','Widowed',1.54,68,'O','LK-7114903','1290-9565-5357','36-6976822-2','2993-82-7442','Filipino','25','Abanao Street','','Abanao','Baguio','Bradtkehaven','3390','22','Gulgowski Roads Apt. 372','','Keeling Pine Apt. 641','Baguio City','East Jenifer','8638','','9552128270','GuevarraRodel@gmail.com','Philippines','N/A',20002,'Active'),('E-1875','Alvares','Devan','Parker','1975-04-08','San Fernando City','F','Widowed',1.72,72,'A','ZQ-3821080','1290-5144-4322','97-5191716-9','3300-78-4158','Filipino','53','Asin Road Street','','Asin Road','Baguio','Rippinland','7986','12','Jaquelin Mountains Apt. 218','','Cassin Plaza','Baguio City','Albaburgh','8861','','9998948366','AlvaresDevan@gmail.com','Philippines','N/A',20003,'Active'),('E-1876','Ouano','Yazmin','Kulubot','1995-04-06','Baguio','M','Widowed',1.22,54,'O','OK-9130351','1290-5289-6804','62-7662411-3','6076-13-6836','Filipino','37','Baguio Tuding Street','','Baguio Tuding','Baguio','Hansenside','5829','11','Leda Forge Suite 288','','Schumm Falls','Baguio City','Randybury','8874','','9717151261','OuanoYazmin@gmail.com','Philippines','N/A',20004,'Active'),('E-1877','Diwata','Natalio','Sason','1978-12-08','Baguio','F','Widowed',1.45,61,'B','XW-1805912','1290-2053-5251','25-1383132-6','1876-01-1848','Filipino','28','Assumption Street','','Assumption','Baguio','West Rolando','7915','9','Delbert Forges','','Irma Trail Suite 688','Baguio City','Terryside','255','','9659306417','DiwataNatalio@gmail.com','Philippines','N/A',20005,'Active'),('E-1878','Tejada','Ashton','Chuakay','1992-03-22','Urdaneta City','M','Married',1.23,62,'A','VY-938899','1290-2160-1922','51-5232954-3','8547-94-7988','Filipino','88','Bado Dangwa Street','','Bado Dangwa','Baguio','Loyhaven','2025','75','Keeling Harbor Apt. 581','','Grady Lakes Suite 756','Baguio City','Klockoshire','6618','','9007409460','TejadaAshton@gmail.com','Philippines','N/A',20006,'Active'),('E-1879','Bernardino','Palmira','Sarip','1994-05-15','Baguio','M','Single',1.47,66,'B','EN-9239650','1290-7549-7138','54-2505454-5','6786-51-3074','Filipino','9','Luding Street','','Luding','Baguio','South Clement','3960','77','Rylee Route','','Grimes Radial','Baguio City','Port Goldenchester','2586','','9991972535','BernardinoPalmira@gmail.com','Philippines','N/A',20007,'Active'),('E-1880','Pizarro','Bartolo','Tangco','1974-01-01','Baguio','F','Married',1.78,63,'B','QQ-7387188','1290-5908-1220','71-7897971-3','6742-28-2038','Filipino','59','Loakan Street','','Loakan','Baguio','South Parkerport','1635','3','Jerde Prairie','','Tevin Viaduct Suite 100','Baguio City','Port May','701','','9208635731','PizarroBartolo@gmail.com','Philippines','N/A',20008,'Active'),('E-1881','Otterson','Nancy','Kaunlaran','1972-10-04','Baguio','M','Married',1.25,77,'AB','QU-7387189','1290-5908-1221','71-7897971-4','8976-81-4451','Filipino','60','Bakakeng Street','','Bakakeng','Baguio','South Parkerport','1636','4','Jerde Prairie','','Tevin Viaduct Suite 100','Baguio City','Port May','702','','9959811612','OttersonNancy@gmail.com','Philippines','N/A',20009,'Active'),('E-1882','Bridwell','Primero','Wood','1968-09-26','Baguio','M','Single',1.67,71,'B','VT-6556160','1290-7422-2277','51-6524995-4','9068-88-2926','Filipino','73','Bayan Park Street','','Aurora hill','Baguio','West Kristoferbury','1360','32','Kris Park','','Stracke Gateway','Baguio City','Cleoraton','8491','','9144369361','BridwellPrimero@gmail.com','Philippines','N/A',20010,'Active'),('E-1883','Korhonen','Mya','Songcuya','1969-10-14','Baguio','F','Widowed',1.11,51,'A','HO-1959213','1290-3617-8683','58-7410806-2','8448-94-9765','Filipino','34','Kuhn Causeway','','Syble Vista','Baguio','South Sammy','8109','93','Goodwin Trail','','Genevieve Islands','Baguio City','New Keven','8376','','9865365691','KorhonenMya@gmail.com','Philippines','N/A',20011,'Active'),('E-1884','Moak','Gregory','Congco','1996-11-17','Baguio','M','Married',1.21,58,'AB','LD-6171835','1210-2595-9644','85-6052351-2','9473-60-5340','Filipino','99','Ward Avenue','','Dooley Extension Suite','Baguio','Corkerybury','1542','99','Jast Avenue Apt. 471','','Kulas Camp','Baguio City','South Amandaburgh','3960','','9534941340','MoakGregory@gmail.com','Philippines','N/A',20012,'Active'),('E-1885','Blanco','Keyla','Budi','1990-09-10','Baguio','M','Widowed',1.52,69,'B','QE-8719980','1210-645-2978','73-4355881-2','865-09-3522','Filipino','31','Jude Springs','','Alexa Glen Suite ','Baguio','Labadieburgh','3976','79','Elody Harbors','','Lynch Ferry','Baguio City','Kelsiehaven','9731','','9377999794','BlancoKeyla@gmail.com','Philippines','N/A',20013,'Active'),('E-1886','Duarte','Armani','Bengzon','1988-10-27','Baguio','F','Married',1.07,64,'B','HV-7098209','1210-1583-5901','53-8462676-5','1647-90-6998','Filipino','52','McClure Forges','','Norris Ranch Suite ','Baguio','South Veronicafurt','9129','15','Emmie Locks Suite 974','','Homenick Mills Apt. 048','Baguio City','Klinghaven','7394','','9938489615','DuarteArmani@gmail.com','Philippines','N/A',20014,'Active'),('E-1887','Degayo','Regan','Pinagpala','1965-02-09','Baguio','M','Married',1.32,59,'O','PY-5352250','1210-8955-6488','82-1582645-2','4080-33-1704','Filipino','58','Pinkie Squares','','Lueilwitz Spurs','Baguio','New Melynaland','7955','73','Carli Summit Apt. 291','','Bartell Land Apt. 646','Baguio City','East Freddymouth','7424','','9780758720','DegayoRegan@gmail.com','Philippines','N/A',20015,'Active'),('E-1888','Luz','Journey','Acbar','1981-01-25','Baguio','M','Married',1.42,50,'AB','PA-5352251','1210-8955-6489','87-1528826-3','6628-05-8828','Filipino','59','Pinkie Squares','','Lueilwitz Spurs','Baguio','New Melynaland','7956','74','Carli Summit Apt. 291','','Bartell Land Apt. 646','Baguio City','East Freddymouth','7425','','9450468517','LuzJourney@gmail.com','Philippines','N/A',20016,'Active'),('E-1889','Acebedo','Stuart','Ibrahim','1991-06-25','Baguio','M','Single',1.33,51,'A','CR-1829469','1210-7472-1103','61-1382294-1','6062-51-5546','Filipino','80','Kshlerin Groves Suite ','','Hansen Station','Baguio','Lake Kelsiside','7819','63','Harmon Squares','','Mante Trafficway','Baguio City','South Edd','8921','','9337210114','AcebedoStuart@gmail.com','Philippines','N/A',20017,'Active'),('E-1890','Randon','Sasha','Gray','1968-05-19','Baguio','M','Single',1.43,49,'AB','CQ-1829470','1210-7490-9471','45-5721364-4','6016-03-7262','Filipino','57','Destany Greens','','Ondricka Shoals','Baguio','Simeonmouth','8694','58','Kiehn Streets Apt. 058','','Deven Canyon','Baguio City','North Kielside','3296','','9554733385','RandonSasha@gmail.com','Philippines','N/A',20018,'Active'),('E-1891','Iriberri','Florita','Copanggo','1981-10-23','Baguio','M','Married',1.29,69,'A','FQ-2245810','1209-3479-1840','71-6800782-5','3589-77-9652','Filipino','71','Hassan Drive','','Jacobi Freeway','Baguio','Daynemouth','8567','16','Keebler Parkways Suite 468','','Champlin Valleys Apt. 510','Baguio City','Croninmouth','1662','','9416148520','IriberriFlorita@gmail.com','Philippines','N/A',20019,'Active'),('E-1892','Cuenca','Katelin','Yoshikawa','1978-09-05','Baguio','M','Married',1.19,61,'A','LJ-3455055','1209-2268-5276','42-8208414-9','5905-31-8753','Filipino','59','Odie Fort','','Dasia Plain','Baguio','West Holliechester','1517','65','Dolly Burg','','Nader Locks Suite 427','Baguio City','East Medaberg','6218','','9001713591','CuencaKatelin@gmail.com','Philippines','N/A',20020,'Active'),('E-1893','Medoza','German','Cosalan','1965-05-21','Baguio','F','Widowed',1.28,50,'B','JJ-2157770','1209-4228-3437','17-3386211-5','7513-57-1518','Filipino','40','Dach Estate','','Crona Islands','Baguio','East Emie','4619','67','Harber Crossing','','Pfannerstill Point','Baguio City','Framiberg','9507','','9712470887','MedozaGerman@gmail.com','Philippines','N/A',20021,'Active'),('E-1894','Urbina','Gracie','Bannet','1967-08-13','Dagupan City','F','Widowed',1.18,58,'A','XQ-5946559','1209-2436-4681','12-8703793-2','9420-99-2526','Filipino','27','Eveline Island','','Neal Camp','Baguio','Littlehaven','5809','1','Cristopher Crossing','','Krista Cliffs Suite 074','Baguio City','Waelchiville','7326','','9530066178','UrbinaGracie@gmail.com','Philippines','N/A',20022,'Active'),('E-1895','Yao','Monique','Mori','1977-05-20','Baguio','M','Single',1.23,76,'O','JV-2128476','1209-9814-2712','91-4445025-7','2369-45-6316','Filipino','47','Madyson Prairie','','Lakin Keys Suite ','Baguio','Rolfsonton','5312','69','Wiza Hollow','','Bode Neck','Baguio City','West Amiebury','3688','','9588829533','YaoMonique@gmail.com','Philippines','N/A',20023,'Active'),('E-1896','Deseo','Kenyon','Manese','1976-06-26','Baguio','F','Widowed',1.12,80,'A','AM-1535639','1209-4202-3064','22-9986444-8','3145-05-3336','Filipino','75','Gust Fort','','Muller Prairie','Baguio','North Delia','2585','25','Juliet Brook','','Maryse Parkways','Baguio City','Krajcikton','3459','','9341581677','DeseoKenyo@gmail.com','Philippines','N/A',20024,'Active'),('E-1897','Alcazar','Jazmine','Bahadi','1967-03-21','Baguio','F','Married',1.24,81,'AB','EF-667758','1201-2488-3729','90-3449346-7','651-39-9671','Filipino','38','Cummings Shoals','','Cumming Shoals','Baguio','Elizabethmouth','8802','76','Purdy Crossroad Suite 542','','Weldon Via','Baguio City','Albertamouth','355','','9444115910','AlcazarJazmine@gmail.com','Philippines','N/A',20025,'Active'),('E-1898','Chavez','Tabitha','Ongsioco','1981-05-15','Baguio','F','Widowed',1.25,69,'A','IZ-7141459','1210-2887-1172','71-5391204-0','8739-03-1627','Filipino','44','Tillman Circle','','Raymundo Run','Baguio','Guiseppebury','2584','80','Sarina Brook Apt. 078','','Lucy Row','Baguio City','Lake Gretchenfurt','8295','','9199279572','ChavezTabitha@gmail.com','Philippines','N/A',20026,'Active'),('E-1899','Ventura','Syed','Manyakes','1981-07-15','Baguio','M','Widowed',1.15,68,'B','NQ-7727123','1210-8746-8635','34-8543985-9','3971-20-9732','Filipino','53','Mavin Drive','','Kieran Mountain','Baguio','Dudleyhaven','7908','89','Hilton Crest Apt. 859','','Collier Point','Baguio City','Beattymouth','6228','','9121606906','VenturaSyed@gmail.com','Philippines','N/A',20027,'Active'),('E-1900','Barrameda','Rica','Sinclair','1976-08-06','Baguio','F','Married',1.43,65,'O','AA-1837567','1290-1673-8380','49-4762229-9','5675-67-6129','Filipino','40','Ford Inlet','','Lueilwitz Trail','Baguio','Zemlakstad','7444','12','Mayra Bypass','','Wisozk Greens Suite 020','Baguio City','Lake Grace','7637','','9909353527','BarramedaRica@gmail.com','Philippines','N/A',20028,'Active'),('E-1901','Montederamos','Titus','Sato','1992-03-18','Baguio','M','Widowed',1.17,52,'AB','VR-1039864','1290-5300-354','89-1321785-0','7240-98-7551','Filipino','16','Wilderman Lodge Suite ','','Harber Island','Baguio','Port Cortez','1565','48','Pouros Extension','','Stanton Orchard','Baguio City','New Ellieland','8274','','9100057974','MontederamosTitus@gmail.com','Philippines','N/A',20029,'Active'),('E-1902','Gonzales','Yamanarita','Magbantay','1987-08-13','Baguio','M','Widowed',1.21,56,'A','IZ-1170959','1290-7037-2045','34-8493412-3','7272-32-9639','Filipino','54','Cale Squares Suite ','','Brandt Mission','Baguio','East Frieda','440','50','Jasmin Dale Apt. 009','','Brandt Square Suite 287','Baguio City','Lake Sigurd','7881','','9841301049','GonzalesYamanarita@gmail.com ','Philippines','N/A',20030,'Active'),('E-1903','Pinero','Devante','Limjap','1976-04-24','Baguio','M','Widowed',1.2,49,'O','MY-9375773','1209-1813-4861','50-7139626-0','3428-27-6351','Filipino','97','Percy Common Apt. 917','','Angelo Locks Apt. 418','Baguio','Wunschstad','1143','47','Milan Cliff','','Kohler Shoal','Baguio City','Ankundingfurt','6997','','9720788370','PineroDevante@gmail.com','Philippines','N/A',20031,'Active'),('E-1904','Sambrano','Rafael','Puti','1966-12-16','Baguio','M','Married',1.1,51,'AB','OO-7432053','1210-6944-2405','61-2947216-2','2637-64-9040','Filipino','86','Centers Apt. 191','','Boehm Port','Baguio','Koryshire','757','95','Lonny Causeway Suite 933','','Purdy Islands','Baguio City','West Ottiliechester','2353','','9864119020','SambranoRafael@gmail.com','Philippines','N/A',20032,'Active'),('E-1905','Montilla','Roano','Tanjuanto','1979-06-18','Baguio','M','Widowed',1.16,61,'O','MK-5990818','1201-8651-8709','34-5697749-8','4049-19-8458','Filipino','23','Durgan Village Apt. 706','','Hessel Rapid Apt. 032','Baguio','Trantowchester','1036','99','Mante Forges','','Albert Union','Baguio City','Lake Gregoria','7095','','9474221474','MontillaRoano@gmail.com','Philippines','N/A',20033,'Active'),('E-1906','Soler','Aldo','Jaiden','1991-04-06','Baguio','F','Widowed',1.19,71,'A','YU-1446880','1210-6150-3019','87-7801042-9','496-85-7954','Filipino','68','Thelma Throughway','','Maggio Via','Baguio','Albertostad','2709','87','Alva Light Suite 975','','Medhurst Streets','Baguio City','Okunevamouth','8488','','9665434232','SolerAldo@gmail.com','Philippines','N/A',20034,'Active'),('E-1907','Beunaflor','Reagan','Magos','1964-07-09','Baguio','M','Married',1.2,77,'A','BD-8364791','1209-172-828','81-6820276-1','7917-87-9436','Filipino','28','Jaycee Grove Apt. 781','','Schowalter Ways','Baguio','Schinnerview','4325','47','Noemy Circle','','Gutmann Roads','Baguio City','Eunachester','3698','','9759871770','BeunaflorReagan@gmail.com','Philippines','N/A',20035,'Active'),('E-1908','Osorio','Estela','Baltar','1983-09-15','Baguio','F','Widowed',1.17,72,'O','RO-6755044','1210-9020-2995','50-1087692-5','5146-33-6669','Filipino','28','Casper Fall','','Abagail Ridge Suite 175','Baguio','Mayamouth','9283','23','Bud Curve','','Dickinson Crossing','Baguio City','Adelinefurt','3687','','9554475545','OsorioEstela@gmail.com','Philippines','N/A',20036,'Active'),('E-1909','Alejo','Macy','Calim','1981-08-10','Baguio','M','Widowed',1.3,78,'A','TD-6463347','1290-9797-5356','94-4660624-4','9176-80-4728','Filipino','49','Rose Radial Suite 801','','Crona Parks','Baguio','Pfefferville','896','45','Naomi Glens Apt. 980','','Adrien Cape','Baguio City','West Benton','1454','','9096261928','AlejoMacy@gmail.com','Philippines','N/A',20037,'Active'),('E-1910','Vilela','Samir','Eva','1990-02-21','Baguio','F','Married',1.39,70,'O','CA-9228338','1209-6311-7296','89-8850717-2','5431-41-6551','Filipino','37','Sipes Stravenue','','Brown Trail Suite 259','Baguio','New Victoria','5536','65','Bruen Corner Apt. 423','','Dickinson Passage','Baguio City','Lake Zacherychester','6869','','9987208946','VilelaSamir@gmail.com','Philippines','N/A',20038,'Active'),('E-1911','Villamor','Colby','Camara','1996-07-30','Baguio','F','Single',1.33,68,'AB','IS-675848','1210-4529-9836','59-8963385-4','9635-48-5830','Filipino','67','Luettgen Falls','','Jessyca Oval','Baguio','South Sid','9922','50','Lehner Mountains Apt. 550','','Bahringer Falls Suite 130','Baguio City','Roseview','751','','9378468504','VillamorColby@gmail.com','Philippines','N/A',20039,'Active'),('E-1912','Santilla','Elyssa','Marapao','1979-11-28','Baguio','F','Married',1.26,61,'AB','QN-9381180','1204-6057-2600','45-7856302-1','6026-88-5165','Filipino','35','Veum Inlet Suite 720','','Joaquin Bridge Apt. 938','Baguio','Lake Axel','7901','70','Haylie Heights Suite 046','','Myriam Roads','Baguio City','Port Bonitaview','3633','','9060500337','SantillaElyssa@gmail.com','Philippines','N/A',20040,'Active'),('E-1913','Rana','Rianna','Cader','1993-10-10','Baguio','M','Single',1.4,54,'B','IK-3825930','1209-5124-7440','21-4161771-2','3941-62-0630','Filipino','58','Predovic Manor Suite 259','','Burnice Brook','Baguio','Gretaside','5684','42','Renner Stravenue Suite 491','','Harley Dale','Baguio City','South Floridaside','7297','','9438972068','RanaRianna@gmail.com','Philippines','N/A',20041,'Active'),('E-1914','Barcelona','Landon','Japos','1963-08-22','Baguio','M','Widowed',1.25,81,'A','EV-7736901','1208-5489-442','95-8453247-7','6130-43-2029','Filipino','57','Toy Road','','Vernice Shores Apt. 831','Baguio','New Rosalindahaven','5069','80','Waelchi Union Suite 579','','Damaris Crossroad Apt. 936','Baguio City','Kellyhaven','2959','','9827559409','BarcelonaLandon@gmail.com','Philippines','N/A',20042,'Active'),('E-1915','Francisco','Kristopher','Maglaya','1971-04-30','Baguio','F','Married',1.16,78,'A','EN-7736902','1210-5489-443','95-8453246-8','8816-32-6602','Filipino','58','Toy Road','','Vernice Shores Apt. 831','Baguio','New Rosalindahaven','5070','81','Waelchi Union Suite 579','','Damaris Crossroad Apt. 936','Baguio City','Kellyhaven','2960','','9092252242','FranciscoKristopher@gmail.com','Philippines','N/A',20043,'Active'),('E-1916','Alcazar','Blaine','Dilanggen','1981-06-18','Baguio','M','Single',1.5,67,'A','EV-7736903','1209-2039-3597','87-7939212-4','4737-62-8608','Filipino','87','Mueller Mall','','Schaefer Highway','Baguio','East Orvalmouth','7373','29','Kub Plaza Suite 375','','Jerald Knoll Apt. 124','Baguio City','Boehmport','2563','','9939005399','AlcazarBlaine@gmail.com','Philippines','N/A',20044,'Active'),('E-1917','Elorza','Yumaris','Ynaya','1992-08-02','Baguio','M','Married',1.34,54,'O','YJ-5785299','1204-6848-6307','57-6296145-9','4503-77-5859','Filipino','66','Kautzer Fields','','Arielle Gateway','Baguio','New Tracey','7967','9','Conner Corner','','Caitlyn Harbor Apt. 845','Baguio City','Hayesview','4208','','9914039474','ElorzaYumaris@gmail.com','Philippines','N/A',20045,'Active'),('E-1918','Caballero','Lexus','Joson','1967-11-12','Baguio','M','Widowed',1.51,75,'AB','WR-8663388','1290-7925-3601','62-4270931-1','4836-59-0543','Filipino','63','Paolo Hollow Suite 934','','Rowland Crescent','Baguio','Veronaville','9542','19','Stroman Pass Suite 178','','Roman Gardens','Baguio City','Kuhlmanmouth','4515','','9728115988','CaballeroLexus@gmail.com','Philippines','N/A',20046,'Active'),('E-1919','Evangelista','Norman','Tiko','1981-03-31','Baguio','M','Widowed',1.11,65,'AB','WF-4736401','1290-653-3705','63-3371627-1','4897-01-4724','Filipino','87','Frieda Valleys Apt. 081','','Christiansen Trace','Baguio','New Saigefort','6531','33','Magdalen View','','Reichert Common Apt. 472','Baguio City','Lake Enosstad','6100','','9912158169','EvangelistaNorman@gmail.com','Philippines','N/A',20047,'Active'),('E-1920','Guerra','Rashad','Makadaan','1994-10-17','Baguio','M','Single',1.24,71,'AB','IB-3325613','1204-8475-777','97-3467855-3','1721-06-5304','Filipino','63','Florida Trace','','Lazaro Port','Baguio','Hassieport','1290','95','Stehr Lodge Suite 132','','Mertz Corner Apt. 292','Baguio City','Marcusberg','6624','','9941159506','GuerraRashad@gmail.com','Philippines','N/A',20048,'Active'),('E-1921','Miranda','Chito','Parokya','1982-09-27','Baguio','M','Married',1.31,64,'A','GH-5676289','1210-7200-6863','94-2578412-9','6834-34-8645','Filipino','13','Bode Shore','','Kub Flat','Baguio','Haskellberg','6821','79','Bertha Plaza','','Connelly Dale','Baguio City','North Xanderstad','4963','','9317264192','MirandaChito@gmail.com','Philippines','N/A',20049,'Active'),('E-1922','Leano','Suelita','Malagar','1964-11-24','Baguio','M','Married',1.3,61,'A','JM-4049822','1209-393-9438','55-6407657-3','247-61-5798','Filipino','92','Stoltenberg Heights','','Monserrate Lane','Baguio','Demarcuschester','2753','12','Monahan Road Apt. 419','','Bayer Turnpike Suite 986','Baguio City','Mertzmouth','9443','','9096537287','MirandaChito@gmail.com','Philippines','N/A',20050,'Active');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empvolu`
--

DROP TABLE IF EXISTS `empvolu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empvolu` (
  `voluntaryWork_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'di ako sure sa mga ID. Hahaha',
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Binase ko lang yung emp_id sa PDS natin.',
  `position_title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`voluntaryWork_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6051 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empvolu`
--

LOCK TABLES `empvolu` WRITE;
/*!40000 ALTER TABLE `empvolu` DISABLE KEYS */;
INSERT INTO `empvolu` VALUES (6001,'E-1873',''),(6002,'E-1874',''),(6003,'E-1875',''),(6004,'E-1876',''),(6005,'E-1877',''),(6006,'E-1878',''),(6007,'E-1879',''),(6008,'E-1880',''),(6009,'E-1881',''),(6010,'E-1882',''),(6011,'E-1883',''),(6012,'E-1884',''),(6013,'E-1885',''),(6014,'E-1886',''),(6015,'E-1887',''),(6016,'E-1888',''),(6017,'E-1889',''),(6018,'E-1890',''),(6019,'E-1891',''),(6020,'E-1892',''),(6021,'E-1893',''),(6022,'E-1894',''),(6023,'E-1895',''),(6024,'E-1896',''),(6025,'E-1897',''),(6026,'E-1898',''),(6027,'E-1899',''),(6028,'E-1900',''),(6029,'E-1901',''),(6030,'E-1902',''),(6031,'E-1903',''),(6032,'E-1904',''),(6033,'E-1905',''),(6034,'E-1906',''),(6035,'E-1907',''),(6036,'E-1908',''),(6037,'E-1909',''),(6038,'E-1910',''),(6039,'E-1911',''),(6040,'E-1912',''),(6041,'E-1913',''),(6042,'E-1914',''),(6043,'E-1915',''),(6044,'E-1916',''),(6045,'E-1917',''),(6046,'E-1918',''),(6047,'E-1919',''),(6048,'E-1920',''),(6049,'E-1921',''),(6050,'E-1922','');
/*!40000 ALTER TABLE `empvolu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empwork`
--

DROP TABLE IF EXISTS `empwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empwork` (
  `workExperience_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Di ko sure sa ID. hahhaa.',
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Binase ko lang yung emp_id sa PDS.',
  `year` year(4) DEFAULT NULL,
  PRIMARY KEY (`workExperience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empwork`
--

LOCK TABLES `empwork` WRITE;
/*!40000 ALTER TABLE `empwork` DISABLE KEYS */;
/*!40000 ALTER TABLE `empwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familybackground`
--

DROP TABLE IF EXISTS `familybackground`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familybackground` (
  `family_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(6) DEFAULT NULL,
  `spouseName` varchar(45) DEFAULT NULL,
  `spouseDateOfBirth` varchar(45) DEFAULT NULL,
  `spouseOccupation` varchar(45) DEFAULT NULL,
  `spouseEmployerBusiness` varchar(45) DEFAULT NULL,
  `spouseBusinessAddress` varchar(45) DEFAULT NULL,
  `spouseTelephoneNo` varchar(13) DEFAULT NULL,
  `fatherName` varchar(45) DEFAULT NULL,
  `motherName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`family_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familybackground`
--

LOCK TABLES `familybackground` WRITE;
/*!40000 ALTER TABLE `familybackground` DISABLE KEYS */;
INSERT INTO `familybackground` VALUES (1,'E-1873','Uy, Javy Brillantez','1985-3-2','N/A','N/A','N/A','N/A','Papat-iw, Ignacio Lidawan Sr.','Bugtong, Josefina Ramirez'),(2,'E-1874','Fatima Quitzon','1983-3-4','Teacher','Baguio Central School','Yandoc St','710407','Duncan Mohr','Mia Blanda'),(3,'E-1875','Blaise Schuster','1985-5-2','Architect','JENMEN ENGINEERING',' B316, Lopez Building, Session Road','62511','Lazaro Gerlach','Dianna Dickens'),(4,'E-1876','Prof. Dexter Kuhn III','1987-3-2','College Professor','University of the Cordilleras','Gov. Pack Rd','100491','Emiliano Wisoky','Aida West'),(5,'E-1877','Dr. Johnathon Blick IV','1975-5-2','Cardiologist','Baguio General Hospital','Baguio General Hospital Driveway','97324','Silas Smitham','Valerie Ruecker'),(6,'E-1878','Dr. Ricardo Schuppe','1975-3-2','Neurologist','Baguio General Hospital','Baguio General Hospital Driveway','535050','Jake Ebert','Chanel Weissnat'),(7,'E-1879','Garrison Jast','1985-3-2','N/A','N/A','N/A','N/A','Donnell Stokes','Bridget Schuppe IV'),(8,'E-1880','Nelson Hansen','1985-3-2','Teacher','Baguio Central School','Yandoc St','76346','Edison Witting Sr.','Shemar Jast'),(9,'E-1881','Chadrick Boyle','1985-3-2','Civil Engineer','RSN Engineering and Construction','6 Loakan Proper','220206','Darrel Grant','Genesis Grady'),(10,'E-1882','Sabryna Howe','1985-3-2','N/A','N/A','N/A','N/A','Scotty Gerhold','Amelia Kovacek'),(11,'E-1883','Johnathon D\'Amore','1985-3-2','Architect','JENMEN ENGINEERING',' B316, Lopez Building, Session Road','417947','Herbert Fay','Shea Dickinson I'),(12,'E-1884','Arne Nicolas','1985-3-2','IT','Linkage Web Development','First Road, Quezon Hill','731196',' Emmitt D\'Amore ','Flossie Friesen'),(13,'E-1885','Lucile Kemmer','1985-3-2','N/A','N/A','N/A','N/A','Kristopher Kihn','Marjorie Thiel II'),(14,'E-1886','Jarret Gusikowski','1985-3-2','Chef','KALAPAW','Engineer\'s Hill, Baguio City','466874','Trent Conroy I','Bella Metz'),(15,'E-1887','Dr. Rudy Zulauf','1985-3-2','Cardiologist','Baguio General Hospital','Baguio General Hospital Driveway','220813','Aric Keeling','Pamela Hessel'),(16,'E-1888','Aisha Lehner','1985-3-2','HR manager','Teleperformance Baguio','Harrison Rd, Baguio','239211','Vinnie Moen','Laisha Ullrich'),(17,'E-1889','Gabriel Rutherford Jr.','1985-3-2','N/A','N/A','N/A','N/A','Reese Swaniawski','Gertrude Runte'),(18,'E-1890','Mollie Kautzer','1985-3-2','HR manager','Teleperformance Baguio','Harrison Rd, Baguio','535545','Hal Stokes','Liza Watsica II'),(19,'E-1891','Hope Hegmann','1985-3-2','HR manager','Teleperformance Baguio','Harrison Rd, Baguio','454549','Reuben Kihn I','Hope Roob'),(20,'E-1892','Ulises Boyle','1985-3-2','Architect','JENMEN ENGINEERING',' B316, Lopez Building, Session Road','714678','Louvenia Graham','Leonora Hilll'),(21,'E-1893','Prof. Zane Wiegand','1985-3-2','College Professor','University of the Cordilleras','Gov. Pack Rd','746504','Shane Boyle','Mercedes Emmerich Jr.'),(22,'E-1894','Mr. Monserrate Parisian','1985-3-2','Civil Engineer','RSN Engineering and Construction','6 Loakan Proper','626845','Orin Johnston','Libby Kerluke'),(23,'E-1895','Chaim Harvey IV','1985-3-2','Electrical Engineer',' Anguitay Electrical Engineering Services','Pico Road, La Trinidad, Baguio City','891900','Myles Cummings','Jade Hauck V'),(24,'E-1896','Kathryn Mitchell DDS','1985-3-2','IT','Linkage Web Development','First Road, Quezon Hill','85499','Patrick Schmidt III','Miss Emely Windler Jr.'),(25,'E-1897','Prof. William Torphy I','1985-3-2','College Professor','University of the Cordilleras','Gov. Pack Rd','694889','Ross Effertz','Claudia Cruickshank'),(26,'E-1898','Flossie Heller','1985-3-2','Journalist','ABS-CBN Corporation Baguio','Quezon Hill Rd 1, Baguio','185433','Murphy Oberbrunner','Melyna Wehner'),(27,'E-1899','Mr. Rodger Labadie III','1985-3-2','N/A','N/A','N/A','N/A','Barrett Donnelly','Bettye Rippin'),(28,'E-1900','Jeramy Bernier','1985-3-2','N/A','N/A','N/A','N/A','Ewell Shanahan','Josianne Waelchi III'),(29,'E-1901','Jamel Powlowski','1985-3-2','Librarian','Baguio City Public Library','Kisad Rd, Baguio','773237','Modesto Schultz','Aniya Shanahan'),(30,'E-1902','Krystal Bednar','1985-3-2','Law Clerk','Carino Law Office','Legarda Road, Baguio City','88946','Amparo Koelpin','Alayna Friesen'),(31,'E-1903','Prof. Daija White IV','1985-3-2','College Professor','University Of Baguio','Anacleto St','980331','Stephan Conroy','Laurence Cremin'),(32,'E-1904','Prof. Kenyatta Luettgen','1985-3-2','College Professor','University Of Baguio','Anacleto St','54770','Eliseo Watsica','Stephanie McKenzie'),(33,'E-1905','Trycia Mertz','1985-3-2','Make up Artist','DAVID\'S SALON','4th Floor, Porta Vaga Main Building','611438','Oren Renner','Erica Botsford'),(34,'E-1906','Nikolas Braun','1985-3-2','Civil Engineer','RSN Engineering and Construction','6 Loakan Proper','442824','Soledad Hahn','Magdalen Roberts'),(35,'E-1907','Miss Annie Bogan MD','1985-3-2','Electrical Engineer','Anguitay Electrical Engineering Services','Pico Road, La Trinidad, Baguio City','351748','Buddy Luettgen','Lorna Rau I'),(36,'E-1908','Jordan Fadel DVM','1985-3-2','IT','Linkage Web Development','First Road, Quezon Hill','952329','Garnett Cassin','Francisca Barrows'),(37,'E-1909','Prof. Joel Hilll MD','1985-3-2','College Professor','University Of Baguio','Anacleto St','792075','Korey Nikolaus V','Elenor Greenholt'),(38,'E-1910','Linda Corwin','1985-3-2','Microbiologist','Baguio General Hospital','Baguio General Hospital Driveway','851959','Vince Witting','Ciara Lubowitz'),(39,'E-1911','Bria Reynolds III','1985-3-2','Music Teacher','MUSAR MUSIC',' Lower Ground Floor, SM City','904823','Isac Wilderman','Hildegard Funk'),(40,'E-1912','Susan Daugherty','1985-3-2','N/A','N/A','N/A','261093','Andrew Sipes','Leta Grant'),(41,'E-1913','Earline Kozey','1985-3-2','N/A','N/A','N/A','480892','Clovis Russel Jr.','Hilda Auer'),(42,'E-1914','Daniela Hermiston','1985-3-2','N/A','N/A','N/A','682990','Ashton Leuschke II','Freda Mueller'),(43,'E-1915','Vada Powlowski Sr.','1985-3-2','Architect','ARViL Studio','126b Egi Albergo Hotel, Baguio City','920484','Kade Bradtke','Reta Altenwerth'),(44,'E-1916','Hannah Rosenbaum','1985-3-2','Business Manager','Vel similique eos velit.','Voluptatum et saepe quo.','814254','Josue Heidenreich','Mafalda Hoeger'),(45,'E-1917','Dr. Tevin Macejkovic Jr.','1985-3-2','Dermatologist','Baguio General Hospital','Baguio General Hospital Driveway','532278','Celestino Hickle','Letitia Medhurst'),(46,'E-1918','Oswald Bartoletti','1985-3-2','N/A','N/A','N/A','57375','Oliver Runte V','Flossie Kulas'),(47,'E-1919','Makenna Roberts Jr.','1985-3-2','Pharmacist','Baguio General Hospital','Baguio General Hospital Driveway','731036','Myrl Keebler I','Teresa Konopelski'),(48,'E-1920','Prof. Barrett Schaefer','1985-3-2','College Professor','University Of Baguio','Anacleto St','820873','Giles Wolff I','Nicole Jast'),(49,'E-1921','Ellis Bosco','1985-3-2','N/A','N/A','N/A','N/A','Trace Marquardt','Carlotta Kozey'),(50,'E-1922','Albertha Leannon','1985-3-2','N/A','N/A','N/A','N/A','Devante Morissette','Ivah Bergstrom'),(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `familybackground` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_ledger`
--

DROP TABLE IF EXISTS `leave_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_ledger` (
  `ledger_id` varchar(45) NOT NULL COMMENT 'Di ko muna nilagyan ng maayos na datatype.',
  `emp_id` varchar(6) DEFAULT NULL,
  `app_id` varchar(45) DEFAULT NULL COMMENT 'Di ko muna nilagyan ng maayos na datatype.',
  `vacationAvailedLeaves` varchar(45) DEFAULT NULL COMMENT 'Di ko sure to. Nilalalagay kasi nila dito yung inclusive date and SPL (Special Leave parang ganun) yung mga abbreviations kung anong kind of leave talaga siya. ',
  `vacationNoOfAbsence` int(2) DEFAULT NULL COMMENT 'Di ko sure to. Nilalalagay kasi nila dito yung inclusive date and SPL (Special Leave parang ganun) yung mga abbreviations kung anong kind of leave talaga siya. ',
  `tardiness` int(2) DEFAULT NULL COMMENT 'Di ko sure to. Nilalalagay kasi nila dito yung inclusive date and SPL (Special Leave parang ganun) yung mga abbreviations kung anong kind of leave talaga siya. ',
  `vacationEarned` float DEFAULT NULL,
  `vacationBalance` float DEFAULT NULL,
  `vacationAbsenceWithPay` int(2) DEFAULT NULL COMMENT 'Di ko sure binase ko lang dun sa form.',
  `vacationAbscencesWithoutPay` int(2) DEFAULT NULL COMMENT 'Di ko sure binase ko lang dun sa form.',
  `sickAvailedLeaves` varchar(45) DEFAULT NULL COMMENT 'Di ko sure to. Nilalalagay kasi nila dito yung inclusive date and SPL (Special Leave parang ganun) yung mga abbreviations kung anong kind of leave talaga siya. ',
  `sickNoOfAbsenceTardiness` varchar(45) DEFAULT NULL COMMENT 'Di ko sure to. Nilalalagay kasi nila dito yung inclusive date and SPL (Special Leave parang ganun) yung mga abbreviations kung anong kind of leave talaga siya. ',
  `sickEarned` float DEFAULT NULL,
  `sickBalance` float DEFAULT NULL,
  `sickAbsenceWithPay` int(2) DEFAULT NULL,
  `sickAbsencesWithoutPay` int(2) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  PRIMARY KEY (`ledger_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_ledger`
--

LOCK TABLES `leave_ledger` WRITE;
/*!40000 ALTER TABLE `leave_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_info`
--

DROP TABLE IF EXISTS `other_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_info` (
  `info_id` int(11) NOT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `skillsAndHobbies` varchar(45) DEFAULT NULL,
  `nonAcademicDistinction` varchar(45) DEFAULT NULL,
  `membership` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_info`
--

LOCK TABLES `other_info` WRITE;
/*!40000 ALTER TABLE `other_info` DISABLE KEYS */;
INSERT INTO `other_info` VALUES (12001,'E-1873','Supervision for Database Administrator','TESDA Computer Hardware Servicing NC-II','Association of DILG Regional IT Officers'),(12002,'E-1874','','',''),(12003,'E-1875','','',''),(12004,'E-1876','','',''),(12005,'E-1877','','',''),(12006,'E-1878','','',''),(12007,'E-1879','','',''),(12008,'E-1880','','',''),(12009,'E-1881','','',''),(12010,'E-1882','','',''),(12011,'E-1883','','',''),(12012,'E-1884','','',''),(12013,'E-1885','','',''),(12014,'E-1886','','',''),(12015,'E-1887','','',''),(12016,'E-1888','','',''),(12017,'E-1889','','',''),(12018,'E-1890','','',''),(12019,'E-1891','','',''),(12020,'E-1892','','',''),(12021,'E-1893','','',''),(12022,'E-1894','','',''),(12023,'E-1895','','',''),(12024,'E-1896','','',''),(12025,'E-1897','','',''),(12026,'E-1898','','',''),(12027,'E-1899','','',''),(12028,'E-1900','','',''),(12029,'E-1901','','',''),(12030,'E-1902','','',''),(12031,'E-1903','','',''),(12032,'E-1904','','',''),(12033,'E-1905','','',''),(12034,'E-1906','','',''),(12035,'E-1907','','',''),(12036,'E-1908','','',''),(12037,'E-1909','','',''),(12038,'E-1910','','',''),(12039,'E-1911','','',''),(12040,'E-1912','','',''),(12041,'E-1913','','',''),(12042,'E-1914','','',''),(12043,'E-1915','','',''),(12044,'E-1916','','',''),(12045,'E-1917','','',''),(12046,'E-1918','','',''),(12047,'E-1919','','',''),(12048,'E-1920','','',''),(12049,'E-1921','','',''),(12050,'E-1922','','','');
/*!40000 ALTER TABLE `other_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pds_employee_response`
--

DROP TABLE IF EXISTS `pds_employee_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pds_employee_response` (
  `PdsEmployeeResponse_id` int(11) NOT NULL COMMENT 'Pinabayaan ko muna ganito. di ko alam id system natin. hahahaha. ',
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Binase ko ulit dun sa PDS yung emp_id. ',
  `no34ResponseA` enum('Y','N') DEFAULT NULL COMMENT 'Y - Yes\nN - No',
  `no34ResponseB` enum('Y','N') DEFAULT NULL COMMENT 'Y - Yes\nN - No',
  `no34ResponseDetails` varchar(45) DEFAULT NULL,
  `no35ResponseA` enum('Y','N') DEFAULT NULL COMMENT 'Y - Yes\nN - No',
  `no35ResponseB` enum('Y','N') DEFAULT NULL COMMENT 'Y - Yes\nN - No',
  `no35Details` varchar(45) DEFAULT NULL,
  `no36Response` enum('Y','N') DEFAULT NULL COMMENT 'Y - Yes\nN - No',
  `no36ResponseDetails` varchar(45) DEFAULT NULL,
  `no37Response` enum('Y','N') DEFAULT NULL COMMENT 'Y - Yes\nN - No',
  `no37Details` varchar(45) DEFAULT NULL,
  `no38ResponseA` enum('Y','N') DEFAULT NULL COMMENT 'Y - Yes\nN - No',
  `no38ResponseADetails` varchar(45) DEFAULT NULL,
  `no38ResponseB` enum('Y','N') DEFAULT NULL COMMENT 'Y - Yes\nN - No',
  `no38ResponseBDetails` varchar(45) DEFAULT NULL,
  `no39Response` enum('Y','N') DEFAULT NULL COMMENT 'Y - Yes\nN - No',
  `no39ResponseDetails` varchar(45) DEFAULT NULL,
  `no40ResponseA` enum('Y','N') DEFAULT NULL COMMENT 'Y - Yes\nN - No',
  `no40ResponseADetails` varchar(45) DEFAULT NULL,
  `no40ResponseB` enum('Y','N') DEFAULT NULL COMMENT 'Y - Yes\nN - No',
  `no40ResponseBDetails` varchar(45) DEFAULT NULL,
  `no40ResponseC` enum('Y','N') DEFAULT NULL COMMENT 'Y - Yes\nN - No',
  `no40ResponseCDetails` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PdsEmployeeResponse_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pds_employee_response`
--

LOCK TABLES `pds_employee_response` WRITE;
/*!40000 ALTER TABLE `pds_employee_response` DISABLE KEYS */;
INSERT INTO `pds_employee_response` VALUES (16050,'E-1922','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16049,'E-1921','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16048,'E-1920','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','Y',''),(16047,'E-1919','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16046,'E-1918','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16045,'E-1917','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16044,'E-1916','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16043,'E-1915','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16042,'E-1914','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16041,'E-1913','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','Y',''),(16040,'E-1912','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16039,'E-1911','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16038,'E-1910','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16037,'E-1909','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16036,'E-1908','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16035,'E-1907','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16034,'E-1906','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16033,'E-1905','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16032,'E-1904','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16031,'E-1903','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16030,'E-1902','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16029,'E-1901','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16028,'E-1900','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16027,'E-1899','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16026,'E-1898','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16025,'E-1897','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16024,'E-1896','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16023,'E-1895','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16022,'E-1894','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16021,'E-1893','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','Y',''),(16020,'E-1892','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16019,'E-1891','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16018,'E-1890','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16017,'E-1889','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16016,'E-1888','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16015,'E-1887','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16014,'E-1886','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16013,'E-1885','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','Y',''),(16012,'E-1884','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16011,'E-1883','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16010,'E-1882','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16009,'E-1881','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','Y',''),(16008,'E-1880','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16007,'E-1879','N','N','','N','N','','N','','N','','N','','N','','N','','N','','N','','N',''),(16006,'E-1878','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16005,'E-1877','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16004,'E-1876','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16003,'E-1875','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16002,'E-1874','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N',''),(16001,'E-1873','N','N','','N','N','','N','','N','','N','','N','','N','','Y','','N','','N','');
/*!40000 ALTER TABLE `pds_employee_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantilla`
--

DROP TABLE IF EXISTS `plantilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plantilla` (
  `plantilla_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'di ko muna nilagyan to kasi di ako sure dun sa numbering system natin. ',
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Binase ko lang dun sa employee id dun sa PDS ni Sir Zaldy.',
  `position_id` varchar(45) DEFAULT NULL COMMENT 'di ko sure.',
  `division_id` varchar(45) DEFAULT NULL COMMENT 'di ko sure.',
  `itemNumber` varchar(30) DEFAULT NULL COMMENT 'Binase ko yung bilang dun sa Plantilla. 24 yung pinakamahaba dun pero ginaw ako ng 30 para sure. ',
  `positionTitle` varchar(45) DEFAULT NULL COMMENT 'hmmm. Suggestion ko lang. Di kaya pwedeng kunin to sa position na table? kasi ginawa ko ginawa kong foreign key yung position_id sa mga employees.\nKasi dun sa posiiton table nilagyan ko ng ''Salary Grade'' na column yun. nawawala kasi yung salary grade natin. Hahaha. diba gusto ni sir na pwede mag-iba siya ng suweldo depende sa salary grade.\n\nDouble check na lang siguro to. Basta nagdagdag ako ng column na "Salary Grade" at "Salary". Tapos nag-foreign key ako dun sa Primary key ng position table dun sa employee. ',
  `salaryGrade` int(2) DEFAULT NULL COMMENT 'Same sa positionTitle na comment.\nhmmm. Suggestion ko lang. Di kaya pwedeng kunin to sa position na table? kasi ginawa ko ginawa kong foreign key yung position_id sa mga employees.\nKasi dun sa posiiton table nilagyan ko ng ''Salary Grade'' na column yun. nawawala kasi yung salary grade natin. Hahaha. diba gusto ni sir na pwede mag-iba siya ng suweldo depende sa salary grade.\n\nDouble check na lang siguro to. Basta nagdagdag ako ng column na "Salary Grade" at "Salary". Tapos nag-foreign key ako dun sa Primary key ng position table dun sa employee. ',
  `authorized_sal` int(7) DEFAULT NULL COMMENT 'hetong authorized sal heto ba yung ita-times 12 yung suweldo niya na naka-associate sa salary grade niya? \n\nDi ko sure. pacheck na lang ulit. Hahaha.\nGinawa kong INT (7) kasi konti na lang aabot na 1 million per year yung suweldo nung iba. Hahaha.',
  `actual_sal` int(7) DEFAULT NULL,
  `step_increment` varchar(3) DEFAULT NULL COMMENT 'Nag-uumpisa siya ng "0" (zero) yung code nito kaya ginaw ako siyang varchar.',
  `area_code` varchar(45) DEFAULT NULL,
  `plantillacol` varchar(45) DEFAULT NULL,
  `area_type` enum('R') DEFAULT NULL COMMENT 'May ibang area type pa ba? "R" lang ba talaga ba? Di ko na sure. Nakalimutan ko na. hahaha',
  `level` enum('K','S','A') DEFAULT NULL COMMENT 'Nakalimutan ko yung mga ibang area type. Hmmmp. hahaha. Yan lang ba. Alam ko marami to eh. hahaha. ',
  `ppaAttribution` varchar(15) DEFAULT NULL COMMENT 'Binase ko yung bilang dun sa sample plantilla natin. ',
  `civil` varchar(6) DEFAULT NULL COMMENT '6 Characters nakita kong pinakamahaba. ginawa kong ten para sure. mga ''RA1080'' pa ko nakita eh. Hahaha.\n\nSakit sa ulo ng plantilla. hahahahahaha.',
  PRIMARY KEY (`plantilla_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30051 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantilla`
--

LOCK TABLES `plantilla` WRITE;
/*!40000 ALTER TABLE `plantilla` DISABLE KEYS */;
INSERT INTO `plantilla` VALUES (30001,'','','','','',0,0,0,'','','','','','',''),(30002,'','','','','',0,0,0,'','','','','','',''),(30003,'','','','','',0,0,0,'','','','','','',''),(30004,'','','','','',0,0,0,'','','','','','',''),(30005,'','','','','',0,0,0,'','','','','','',''),(30006,'','','','','',0,0,0,'','','','','','',''),(30007,'','','','','',0,0,0,'','','','','','',''),(30008,'','','','','',0,0,0,'','','','','','',''),(30009,'','','','','',0,0,0,'','','','','','',''),(30010,'','','','','',0,0,0,'','','','','','',''),(30011,'','','','','',0,0,0,'','','','','','',''),(30012,'','','','','',0,0,0,'','','','','','',''),(30013,'','','','','',0,0,0,'','','','','','',''),(30014,'','','','','',0,0,0,'','','','','','',''),(30015,'','','','','',0,0,0,'','','','','','',''),(30016,'','','','','',0,0,0,'','','','','','',''),(30017,'','','','','',0,0,0,'','','','','','',''),(30018,'','','','','',0,0,0,'','','','','','',''),(30019,'','','','','',0,0,0,'','','','','','',''),(30020,'','','','','',0,0,0,'','','','','','',''),(30021,'','','','','',0,0,0,'','','','','','',''),(30022,'','','','','',0,0,0,'','','','','','',''),(30023,'','','','','',0,0,0,'','','','','','',''),(30024,'','','','','',0,0,0,'','','','','','',''),(30025,'','','','','',0,0,0,'','','','','','',''),(30026,'','','','','',0,0,0,'','','','','','',''),(30027,'','','','','',0,0,0,'','','','','','',''),(30028,'','','','','',0,0,0,'','','','','','',''),(30029,'','','','','',0,0,0,'','','','','','',''),(30030,'','','','','',0,0,0,'','','','','','',''),(30031,'','','','','',0,0,0,'','','','','','',''),(30032,'','','','','',0,0,0,'','','','','','',''),(30033,'','','','','',0,0,0,'','','','','','',''),(30034,'','','','','',0,0,0,'','','','','','',''),(30035,'','','','','',0,0,0,'','','','','','',''),(30036,'','','','','',0,0,0,'','','','','','',''),(30037,'','','','','',0,0,0,'','','','','','',''),(30038,'','','','','',0,0,0,'','','','','','',''),(30039,'','','','','',0,0,0,'','','','','','',''),(30040,'','','','','',0,0,0,'','','','','','',''),(30041,'','','','','',0,0,0,'','','','','','',''),(30042,'','','','','',0,0,0,'','','','','','',''),(30043,'','','','','',0,0,0,'','','','','','',''),(30044,'','','','','',0,0,0,'','','','','','',''),(30045,'','','','','',0,0,0,'','','','','','',''),(30046,'','','','','',0,0,0,'','','','','','',''),(30047,'','','','','',0,0,0,'','','','','','',''),(30048,'','','','','',0,0,0,'','','','','','',''),(30049,'','','','','',0,0,0,'','','','','','',''),(30050,'','','','','',0,0,0,'','','','','','','');
/*!40000 ALTER TABLE `plantilla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(45) DEFAULT NULL,
  `salary_grade` int(2) DEFAULT NULL,
  `salary` int(6) DEFAULT NULL COMMENT 'Heto yung per month? hahaha. Kaya 6 digits lang. Di ko sure.\n\nDouble check na lang. Hahaha.',
  `division_id` int(11) DEFAULT NULL,
  `status` enum('O','U') DEFAULT NULL,
  PRIMARY KEY (`position_id`),
  KEY `fk_position_1_idx` (`division_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20051 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (20001,'Position 1',1,9478,21002,NULL),(20002,'Position 2',2,10159,21003,NULL),(20003,'Position 3',3,10883,21003,NULL),(20004,'Position 4',4,11658,21002,NULL),(20005,'Position 5',5,12488,21003,NULL),(20006,'Position 6',6,13378,21001,NULL),(20007,'Position 7',7,14331,21004,NULL),(20008,'Position 8',8,15368,21002,NULL),(20009,'Position 9',9,16512,21003,NULL),(20010,'Position 10',10,17730,21003,NULL),(20011,'Position 11',11,19077,21004,NULL),(20012,'Position 12',12,20651,21004,NULL),(20013,'Position 13',13,22328,21004,NULL),(20014,'Position 14',14,24141,21002,NULL),(20015,'Position 15',15,26192,21002,NULL),(20016,'Position 16',16,28417,21001,NULL),(20017,'Position 17',17,30831,21002,NULL),(20018,'Position 18',18,33452,21003,NULL),(20019,'Position 19',19,36409,21004,NULL),(20020,'Position 19',19,36409,21004,NULL),(20021,'Position 20',20,38000,21003,NULL),(20022,'Position 1',1,9478,21004,NULL),(20023,'Position 2',2,10159,21004,NULL),(20024,'Position 1',1,9478,21003,NULL),(20025,'Position 2',2,10159,21001,NULL),(20026,'Position 3',3,10883,21002,NULL),(20027,'Position 4',4,11658,21002,NULL),(20028,'Position 1',1,9478,21004,NULL),(20029,'Position 2',2,10159,21002,NULL),(20030,'Position 2',2,10159,21004,NULL),(20031,'Position 3',3,10883,21004,NULL),(20032,'Position 3',3,10883,21003,NULL),(20033,'Position 4',4,11658,21004,NULL),(20034,'Position 4',4,11658,21002,NULL),(20035,'Position 20',20,38000,21001,NULL),(20036,'Position 20',20,38000,21004,NULL),(20037,'Position 20',20,38000,21003,NULL),(20038,'Position 5',5,12488,21001,NULL),(20039,'Position 5',5,12488,21004,NULL),(20040,'Position 5',5,12488,21003,NULL),(20041,'Position 10',10,17730,21001,NULL),(20042,'Position 10',10,17730,21004,NULL),(20043,'Position 10',10,17730,21003,NULL),(20044,'Position 15',15,26192,21001,NULL),(20045,'Position 15',15,26192,21004,NULL),(20046,'Position 15',15,26192,21001,NULL),(20047,'Position 15',15,26192,21004,NULL),(20048,'Position 16',16,28417,21003,NULL),(20049,'Position 16',16,28417,21002,NULL),(20050,'Position 16',16,28417,21004,NULL);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `references` (
  `reference_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Binase ko ulit dun sa PDS. Hahaha',
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephoneNo` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14053 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references`
--

LOCK TABLES `references` WRITE;
/*!40000 ALTER TABLE `references` DISABLE KEYS */;
INSERT INTO `references` VALUES (14001,'E-1873','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14002,'E-1873','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14003,'E-1873','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14004,'E-1874','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14005,'E-1875','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14006,'E-1876','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14007,'E-1877','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14008,'E-1878','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14009,'E-1879','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14010,'E-1880','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14011,'E-1881','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14012,'E-1882','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14013,'E-1883','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14014,'E-1884','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14015,'E-1885','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14016,'E-1886','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14017,'E-1887','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14018,'E-1888','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14019,'E-1889','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14020,'E-1890','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14021,'E-1891','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14022,'E-1892','Director John M. Castaneda, Ceso III','DILG CAR Regional Office, Baguio City','0939-935-2304'),(14023,'E-1893','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14024,'E-1894','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14025,'E-1895','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14026,'E-1896','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14027,'E-1897','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14028,'E-1898','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14029,'E-1899','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14030,'E-1900','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14031,'E-1901','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14032,'E-1902','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14033,'E-1903','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14034,'E-1904','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14035,'E-1905','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14036,'E-1906','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14037,'E-1907','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14038,'E-1908','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14039,'E-1909','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14040,'E-1910','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14041,'E-1911','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14042,'E-1912','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14043,'E-1913','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14044,'E-1914','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14045,'E-1915','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(14046,'E-1916','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14047,'E-1917','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(14048,'E-1918','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0939-935-2304'),(14049,'E-1919','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, CagDILG Region 2, Tuguegarao City, Cagayanayan','0947-594-6630'),(14050,'E-1920','Director Mario L. Iringan, CESO V','DILG Region 2, Tuguegarao City, Cagayan','0917-899-7919'),(14051,'E-1921','Director John M. Castaneda, Ceso III','DILG CAR Regional Office, Baguio City','0939-935-2304'),(14052,'E-1922','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919');
/*!40000 ALTER TABLE `references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_schedule`
--

DROP TABLE IF EXISTS `salary_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_schedule` (
  `salaryschedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `salaryschedule_years` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`salaryschedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26051 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_schedule`
--

LOCK TABLES `salary_schedule` WRITE;
/*!40000 ALTER TABLE `salary_schedule` DISABLE KEYS */;
INSERT INTO `salary_schedule` VALUES (26001,'2016-2019'),(26002,'2020-2023'),(26003,'2024-2027'),(26004,'2028-2031'),(26005,'2032-2035'),(26006,'2036-2039'),(26007,'2040-2043'),(26008,'2044-2047'),(26009,'2048-2051'),(26010,'2052-2055'),(26011,''),(26012,''),(26013,''),(26014,''),(26015,''),(26016,''),(26017,''),(26018,''),(26019,''),(26020,''),(26021,''),(26022,''),(26023,''),(26024,''),(26025,''),(26026,''),(26027,''),(26028,''),(26029,''),(26030,''),(26031,''),(26032,''),(26033,''),(26034,''),(26035,''),(26036,''),(26037,''),(26038,''),(26039,''),(26040,''),(26041,''),(26042,''),(26043,''),(26044,''),(26045,''),(26046,''),(26047,''),(26048,''),(26049,''),(26050,'');
/*!40000 ALTER TABLE `salary_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_record`
--

DROP TABLE IF EXISTS `service_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_record` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Ini-skip ko to di ko pa alam ID system natin. hahaha',
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Binase ko sa PDS.',
  `startJobDate` date DEFAULT NULL,
  `endJobDate` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL COMMENT 'Binyaan ko muna yung bilang. ',
  `status` varchar(45) DEFAULT NULL COMMENT 'Binayaan ko muna yung bilang. ',
  `annualSalary` int(7) DEFAULT NULL COMMENT 'Di ko sure to. Hahaha. ginawa ko muna 7. Hahaha. ',
  `division` varchar(45) DEFAULT NULL COMMENT 'Binayaan ko muna yung bilang.',
  `branch` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL COMMENT 'Binayaan ko muna yung bilang. hahaha.',
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22230 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_record`
--

LOCK TABLES `service_record` WRITE;
/*!40000 ALTER TABLE `service_record` DISABLE KEYS */;
INSERT INTO `service_record` VALUES (22001,'E-1873','2012-01-02','2016-12-31','Admin Aide IV','Perm.',141,'DILG-CAR','National','Original Appointment'),(22002,'E-1873','2017-01-01','Present','-do-','-do-',147,'-do-','-do-','NBC 568'),(22003,'E-1874','2010-06-24','2011-05-31','LGOO V','Perm',348,'DILG-CAR','Nat?l','NBC 524'),(22004,'E-1874','2011-06-01','2012-05-31','-do-','-do-',393,'-do-','-do-','NBC 530'),(22005,'E-1874','2012-06-01','2013-03-24','-do-','-do-',438,'-do-','-do-','NBC 540'),(22006,'E-1874','2013-03-25','2015-12-31','-do-','-do-',443,'-do-','-do-','Longevity [Step 2]'),(22007,'E-1874','2016-01-01','2016-03-24','-do-','-do-',483,'-do-','-do-','NBC 562'),(22008,'E-1874','2016-03-25','2016-12-31','-do-','-do-',489,'-do-','-do-','Longevity [Step 3]'),(22009,'E-1874','2017-01-01','Present','-do-','-do-',123,'-do-','-do-','NBC 568'),(22010,'E-1875','2011-12-19','2015-01-04','AdA VI','Perm.',456,'PAO','Nat?l','Original Appointment'),(22011,'E-1875','2015-01-05','2016-10-17','AdAs I','Perm',653,'PAO','-do-','Promotion'),(22012,'E-1875','2011-10-19','2016-12-31','LGOO II','-do-',267,'DILG-CAR','National','Transfer'),(22013,'E-1875','2017-01-01','Present','-do-','-do-',279,'-do-','-do-','NBC 568'),(22014,'E-1876','1989-06-28','1990-06-27','LGOO II','Temp',45,'DLG-CAR','National','Orig. Appointment'),(22015,'E-1876','1989-07-01','1991-07-31','-do-','Perm',45,'-do-','-do-','Change of Status'),(22016,'E-1876','1990-06-28','1993-12-31','LGOO V','-do-',81,'-do-','-do-','Promotion'),(22017,'E-1876','1991-08-01','1994-07-31','-do-','-do-',89,'DILG-CAR','-do-','NBC 568'),(22018,'E-1876','1994-01-01','Present','-do-','-do-',90,'-do-','-do-','Longevity'),(22019,'E-1877','2014-10-01','2015-12-31','LGOO II','Permanent',257,'DILG-CAR','National','Original Appointment'),(22020,'E-1877','2016-01-01','2016-12-31','-do-','-do-',267,'-do-','-do-','NBC 562'),(22021,'E-1877','2017-01-01','2017-09-30','-do-','-do-',279,'-do-','-do-','NBC 568'),(22022,'E-1877','2017-10-01','Present','-do-','-do-',282,'-do-','-do-','Longevity Step 2'),(22023,'E-1878','1989-06-28','1989-06-30','MGOO','Temp.',423,'DLG-CAR','National','Original Appt'),(22024,'E-1878','1989-07-01','1989-06-27','LGOO V','-do-',81,'-do-','-do-','NBC 568'),(22025,'E-1878','0000-00-00','1993-06-27','-do-','Perm.',81,'-do-','-do-','Change Status'),(22026,'E-1878','1993-06-28','1993-12-31','-do-','-do-',564,'DILG-CAR','-do-','NBC 568'),(22027,'E-1878','0000-00-00','1994-12-31','-do-','-do-',90,'-do-','-do-','NBC 568'),(22028,'E-1878','0000-00-00','1995-05-31','-do-','-do-',102,'-do-','-do-','NBC 568'),(22029,'E-1878','0000-00-00','Present','-do-','-do-',102,'-do-','-do-','Reorganization'),(22030,'E-1879','2012-01-02','2012-05-31','Admin Aide IV','Permanent',124,'DILG-CAR','National','Original Appointment'),(22031,'E-1879','2012-06-01','2013-04-10','-do-','-do-',134,'-do-','-do-','NBC 540'),(22032,'E-1879','2013-04-11','2015-06-29','LGOO II','-do-',257,'-do-','-do-','Promotion'),(22033,'E-1879','2015-06-30','2015-12-31','LGOO V','-do-',438,'-do-','-do-','Promotion'),(22034,'E-1879','2016-01-01','2016-12-31','-do-','-do-',477,'-do-','-do-','NBC 562'),(22035,'E-1879','2017-01-01','Present','-do-','-do-',519,'-do-','-do-','NBC 568'),(22036,'E-1880','2005-02-10','2006-03-30','UTW I','Perm.',60,'DILG-CAR','National','Original Appt'),(22037,'E-1880','2006-03-31','2007-06-30','Admin Aide I','-do-',60,'-do-','-do-','Conversion'),(22038,'E-1880','2007-07-01','2008-02-09','-do-','-do-',67,'-do-','-do-','NBC 511'),(22039,'E-1880','2008-02-10','Present','-do-','-do-',68,'-do-','-do-','Longevity [Step 2]'),(22040,'E-1881','1980-07-01','1982-12-31','Clerk/Typist','Casual',68,'Virginia Tobacco, Bangued, Abra','','NBC 568'),(22041,'E-1881','1983-01-02','1985-12-15','Prop. Cost','-do-',68,'-do-','-do-','NBC 568'),(22042,'E-1881','1986-08-16','1986-12-31','Clerk/ Typist','-do-',68,'Mayor?s Office','Dolores, Abra','NBC 568'),(22043,'E-1881','1987-01-02','1987-12-31','Pri. Sec. I','Co-Term.',68,'-do-','-do-','NBC 568'),(22044,'E-1881','1988-01-02','Present','-do-','-do-',76,'-do-','-do-','NBC 568'),(22045,'E-1882','1989-06-28','1989-06-30','BGOO I','Perm',35,'DILG-CAR ','Nat l','Original Appt'),(22046,'E-1882','1989-07-01','1992-02-02','LGOO II','-do-',45,'-do-','-do-','NBC 568'),(22047,'E-1882','1992-02-03','1993-12-31','LGOO V','-do-',81,'DILG-CAR','-do-','Promotion'),(22048,'E-1882','1994-01-01','1994-12-31','-do-','-do-',89,'-do-','-do-','NBC 568'),(22049,'E-1882','1995-01-01','1995-02-02','-do-','-do-',101,'-do-','-do-','NBC 568'),(22050,'E-1882','1995-02-03','1995-05-31','-do-','-do-',102,'-do-','-do-','Longevity'),(22051,'E-1882','1995-06-01','Present','-do-','-do-',102,'-do-','-do-','Reorganization'),(22052,'E-1883','2012-09-05','2014-09-30','LGOO II','Permanent',257,'DILG-CAR','National','Original Appointment'),(22053,'E-1883','2014-10-01','2014-11-02','LGOO V','-do-',438,'-do-','-do-','Promotion'),(22054,'E-1883','2014-11-03','2015-12-31','-do-','-do-',438,'DILG-Abra','-do-','Reassignment'),(22055,'E-1883','2016-01-01','2016-12-31','-do-','-do-',477,'-do-','-do-','NBC 562'),(22056,'E-1883','2017-01-01','2017-09-30','-do-','-do-',519,'-do-','-do-','NBC 568'),(22057,'E-1883','2017-10-01','Present','-do-','do-',526,'-do-','-do-','Longevity Step 2'),(22058,'E-1884','2011-04-01','2011-05-31','LGOO VI','-do-',395,'-do-','-do-','Reclassification (EO 366)'),(22059,'E-1884','2011-06-01','2012-05-31','-do-','-do-',453,'-do-','-do-','NBC 530'),(22060,'E-1884','2012-06-01','2014-03-31','-do-','-do-',511,'-do-','-do-','NBC 540'),(22061,'E-1884','2014-04-01','2014-10-16','-do-','-do-',517,'-do-','-do-','Longevity [Step 2]'),(22062,'E-1884','2014-10-17','2015-12-31','OIC-PD','-do-',517,'-do-','-do-','Designation'),(22063,'E-1884','2016-01-01','2016-02-01','OIC-PD','-do-',576,'-do-','-do-','NBC 562'),(22064,'E-1884','2016-02-02','2016-12-31','Acting LGOO VIII','-do-',812,'-do-','-do-','Promotion'),(22065,'E-1884','2017-01-01','Present','-do-','-do-',947,'-do-','-do-','NBC 568'),(22066,'E-1885','1997-10-28','1997-10-31','LGOO V','-do-',155,'-do-','-do-','Promotion'),(22067,'E-1885','1997-11-01','1999-12-31','-do-','-do-',184,'-do-','-do-','NBC 568'),(22068,'E-1885','1900-01-01','2000-10-27','-do-','-do-',203,'-do-','-do-','NBC 468'),(22069,'E-1885','2000-10-28','2001-06-30','-do-','-do-',208,'-do-','-do-','Longevity [Step 2]'),(22070,'E-1885','2001-07-01','Present','-do-','-do-',218,'-do-','-do-','NBC 474'),(22071,'E-1886','2006-03-31','2007-03-12','Admin Aide III','-do-',81,'-do-','-do-','Conversion'),(22072,'E-1886','2007-03-13','2007-06-30','-do-','-do-',84,'-do-','-do-','Longevity'),(22073,'E-1886','2007-07-01','2008-06-30','-do-','-do-',92,'-do-','-do-','NBC 511'),(22074,'E-1886','2008-07-01','2009-06-30','-do-','-do-',101,'-do-','-do-','NBC 516'),(22075,'E-1886','2009-07-01','2010-03-12','-do-','-do-',109,'-do-','-do-','NBC 521 '),(22076,'E-1886','2010-03-13','Present','-do-','-do-',111,'-do-','-do-','Longevity (8)'),(22077,'E-1887','1991-08-12','1993-12-13','CK II','Perm.',27,'DILG-CAR','National','Original Appt'),(22078,'E-1887','1994-01-01','1994-08-11','-do-','-do-',36,'-do-','-do-','NBC 568'),(22079,'E-1887','1994-08-12','1994-11-06','-do-','-do-',36,'-do-','-do-','NBC 568'),(22080,'E-1887','1994-11-07','1994-12-31','LGOO II','Temp.',54,'-do-','-do-','Promotion'),(22081,'E-1887','1995-01-01','1995-05-31','-do-','-do-',66,'-do-','-do-','NBC 568'),(22082,'E-1887','1995-06-01','Present','-do-','-do-',66,'-do-','-do-','Reorganization'),(22083,'E-1888','1997-06-02','1997-10-31','Teacher I','Perm',231,'BCNHS/DECS','National','Original Appt'),(22084,'E-1888','1997-11-01','1999-08-01','-do-','-do-',103,'-do-','-do-','NBC 568'),(22085,'E-1888','1999-08-02','1999-12-31','Clerk III','-do-',79,'DILG-CAR','-do-','Transfer '),(22086,'E-1888','2000-01-01','2000-02-02','-do-','-do-',86,'-do-','-do-','NBC 468'),(22087,'E-1888','2000-02-03','2001-06-30','LGOO II','-do-',135,'-do-','-do-','Promotion'),(22088,'E-1888','2001-07-01','Present','-do-','-do-',142,'-do-','-do-','NBC 474'),(22089,'E-1889','2004-08-27','2006-03-30','CLERK II','-do-',74,'DILG-CAR','Nat?l','Original Appt'),(22090,'E-1889','2006-03-31','2007-06-30','ADA IV','-do-',74,'-do-','-do-','Conversion'),(22091,'E-1889','2007-07-01','2008-06-30','-do-','-do-',86,'-do-','-do-','NBC 511'),(22092,'E-1889','2007-07-01','2008-06-30','-do-','-do-',88,'-do-','-do-','Longevity'),(22093,'E-1889','2007-07-01','2009-06-30','-do-','-do-',97,'-do-','-do-','NBC 516'),(22094,'E-1889','2009-07-01','2010-06-23','-do-','-do-',106,'-do-','-do-','NBC 521 '),(22095,'E-1889','2010-06-24','2010-08-26','-do-','-do-',116,'-do-','-do-','NBC 524'),(22096,'E-1889','2010-08-27','Present','-do-','-do-',123,'-do-','-do-','Longevity'),(22097,'E-1890','1996-06-18','1996-12-31','LGOO II','Perm.',123,'DILG-CAR','Nat?l','Original Appt'),(22098,'E-1890','1997-01-01','0000-00-00','-do-','-do-',103,'-do-','-do-','NBC 568'),(22099,'E-1891','2014-10-16','2015-12-31','LGOO II','Permanent',257,'DILG-CAR','National','Original Appointment'),(22100,'E-1891','2016-01-01','2016-12-31','-do-','-do-',267,'-do-','-do-','NBC 562'),(22101,'E-1891','2017-01-01','2017-10-15','-do-','-do-',279,'-do-','-do-','NBC 568'),(22102,'E-1891','2017-10-16','Present','-do-','-do-',282,'-do-','-do-','Longevity Step 2'),(22103,'E-1892','1985-03-13','1985-06-30','Mason','Casual',18,'MPWH','Nat?l.','NBC 568'),(22104,'E-1892','1985-07-01','1985-12-31','CE Aide II','-do-',26,'-do-','-do-','NBC 568'),(22105,'E-1892','1986-01-01','1986-04-20','-do-','-do-',231,'-do-','-do-','NBC 568'),(22106,'E-1892','1986-09-16','1987-12-13','Foreman','-do-',24,'DPWH','-do-','NBC 568'),(22107,'E-1892','1987-12-14','1988-05-13','-do-','-do-',38,'-do-','-do-','NBC 568'),(22108,'E-1892','1988-08-16','Present','CE Aide II','-do-',42,'-do-','-do-','NBC 568'),(22109,'E-1893','2004-08-16','2005-01-31','Clerk II','Perm',43,'DILG-CAR','Nat?l','Original Appt.'),(22110,'E-1893','2005-02-01','2006-03-30','Strkpr II','-do-',91,'-do-','-do-','Promotion'),(22111,'E-1893','2006-03-31','Present','Admin Aide VI','-do-',91,'-do-','-do-','Conversion'),(22112,'E-1894','1994-10-01','1996-01-15','Budget Aide','Perm.',1,'Boliney','Local','Original Appt'),(22113,'E-1894','1996-01-16','Present','LGOO II','-do-',83,'DILG-CAR','Nat?l.','Transfer'),(22114,'E-1895','1994-12-16','1994-12-31','Mun. Accountant','Temp.',79,'Sallapadan','LGU','Original Appt'),(22115,'E-1895','1995-01-01','1995-06-30','-do-','-do-',79,'-do-','-do-','NBC 568'),(22116,'E-1895','1995-07-01','1996-12-31','-do-','-do-',87,'-do-','-do-','NBC 568'),(22117,'E-1895','1997-01-01','Present','-do-','-do-',99,'-do-','-do-','NBC 568'),(22118,'E-1896','2013-09-26','2015-11-09','Revenue Collection Clerk I','Perm.',129,'Prov?l Treasurer?s Ofc','Local-PGU Abra','Original Appointment'),(22119,'E-1896','2015-11-10','2015-12-31','AdA VI (Clerk III)','-do-',155,'DILG-CAR','National','Transfer'),(22120,'E-1896','2016-01-01','2016-12-31','-do-','-do-',160,'-do-','-do-','NBC 562'),(22121,'E-1896','2017-01-01','Present','-do-','-do-',166,'-do-','-do-','NBC 568'),(22122,'E-1897','2016-01-04','2016-03-22','AdAs II','Perm.',124,'LGU-Dolores','Local','Original Appointment'),(22123,'E-1897','2016-03-23','2016-12-31','AdA IV (Clerk II)','-do-',139,'DILG-CAR','National','Transfer'),(22124,'E-1897','2017-01-01','Present','-do-','-do-',145,'-do-','-do-','NBC 568'),(22125,'E-1898','2014-10-13','2015-10-15','Admin Aide IV','Permanent',124,'DILG-CAR','National','Original Appointment'),(22126,'E-1898','2015-10-16','2015-12-31','LGOO II','-do-',234,'-do-','-do-','Promotion'),(22127,'E-1898','2016-01-01','2016-12-31','-do-','-do-',267,'-do-','-do-','NBC 562'),(22128,'E-1898','2017-01-01','Present','-do-','-do-',279,'-do-','-do-','NBC 568'),(22129,'E-1899','1990-10-01','1991-01-03','Psychologists','Contr.',123,'DSWD','','NBC 568'),(22130,'E-1899','1991-02-02','1993-03-30','Anchorwoman','-do-',2,'INSAT','','NBC 568'),(22131,'E-1899','1992-07-01','1992-07-21','Coordinator','-do-',56,'NMYC','','NBC 568'),(22132,'E-1899','1995-06-01','1995-04-03','OIC-Guid','-do-',87,'CCDC','','NBC 568'),(22133,'E-1899','1997-02-05','Present','Clerk II','Perm.',67,'DILG-CAR','Nat?l.','Orig. Appt.'),(22134,'E-1900','1989-06-28','1989-06-30','BGOO I','Temp.',35,'DLG-CAR','Nat l','Original Appt'),(22135,'E-1900','1989-07-01','1990-05-01','LGOO II','-do-',45,'-do-','-do-','NBC 568'),(22136,'E-1900','1990-05-02','Present','LGOO V','Perm.',81,'-do-','-do-','Promo./Upgrading'),(22137,'E-1901','1986-10-16','1987-02-28','Laborer','Casual',42,'DPWH-Abra','National','NBC 568'),(22138,'E-1901','1987-03-01','1987-10-09','Clerical Aide','-do-',42,'-do-','-do-','NBC 568'),(22139,'E-1901','1987-10-12','1987-12-13','-do-','-do-',54,'-do-','-do-','NBC 568'),(22140,'E-1901','1987-12-14','1988-05-13','-do-','-do-',54,'-do-','-do-','NBC 568'),(22141,'E-1901','1988-05-16','1988-06-22','-do-','-do-',66,'-do-','-do-','NBC 568'),(22142,'E-1901','1988-08-01','1989-06-30','-do-','-do-',79,'-do-','-do-','NBC 568'),(22143,'E-1901','1989-07-01','1990-06-30','CK I','-do-',81,'-do-','-do-','NBC 568'),(22144,'E-1901','1990-07-01','1990-12-31','CK II','-do-',95,'-do-','-do-','NBC 568'),(22145,'E-1901','1991-01-01','1991-09-02','CK III','-do-',104,'-do-','-do-','NBC 568'),(22146,'E-1901','1991-09-03','Present','AC III','Perm.',107,'DILG-CAR','-do-','Original Appt'),(22147,'E-1902','1914-03-10','2015-06-30','ADA VI','Permanent',155,'DILG-CAR','National','Original Appt.'),(22148,'E-1902','2015-07-01','2015-12-31','LGOO II','-do-',257,'-do-','-do-','Promotion'),(22149,'E-1902','2016-01-01','2016-12-31','LGOO II','-do-',267,'-do-','-do-','NBC 562'),(22150,'E-1902','2017-01-01','Present','-do-','-do-',279,'-do-','-do-','NBC 568'),(22151,'E-1903','1989-06-28','1989-06-30','BGOO I','Perm.',34,'DLG-CAR','National','Original Appt'),(22152,'E-1903','1989-07-01','1992-02-02','LGOO II','-do-',45,'-do-','-do-','NBC 568'),(22153,'E-1903','1992-02-03','Present','LGOO V','-do-',81,'DILG-CAR','-do-','Promotion'),(22154,'E-1904','1994-01-01','1994-12-31','LGOO V','Perm.',89,'-do-','-do-','NBC 568'),(22155,'E-1904','1995-01-01','1995-02-02','-do-','-do-',101,'-do-','-do-','NBC 568'),(22156,'E-1904','1995-02-03','Present','-do-','-do-',102,'-do-','-do-','Longevity'),(22157,'E-1905','2005-05-09','2007-06-30','Admin Aide IV','Permanent',70,'PCDO, Abra','Local','Original Appointment'),(22158,'E-1905','2007-07-01','2008-07-31','-do-','-do-',77,'-do-','-do-','NBC 511'),(22159,'E-1905','2008-08-01','2009-12-31','-do-','-do-',85,'-do-','-do-','NBC 516'),(22160,'E-1905','2010-01-01','Present','-do-','-do-',94,'-do-','-do-','NBC 521'),(22161,'E-1906','2014-10-01','2015-12-31','LGOO II','-do-',257,'DILG-CAR','National','Demotion'),(22162,'E-1906','2016-01-01','2016-12-31','-do-','-do-',267,'-do-','-do-','NBC 562'),(22163,'E-1906','2017-01-01','2017-09-30','-do-','-do-',279,'-do-','-do-','NBC 568'),(22164,'E-1906','2017-10-01','0000-00-00','-do-','-do-',282,'-do-','-do-','Longevity Step 2'),(22165,'E-1907','2007-03-29','2007-06-30','LGOO V','-do-',213,'-do-','-do-','Promotion '),(22166,'E-1907','2007-07-01','2008-06-30','-do-','-do-',234,'-do-','-do-','NBC 511'),(22167,'E-1907','2008-07-01','2009-06-30','-do-','-do-',258,'-do-','-do-','NBC 516'),(22168,'E-1907','2009-07-01','0000-00-00','-do-','-do-',303,'-do-','-do-','NBC 521 '),(22169,'E-1908','2009-03-02','2009-06-30','LGOO V','-do-',258,'-do-','-do-','Promotion'),(22170,'E-1908','2009-07-01','2010-06-23','-do-','-do-',303,'-do-','-do-','NBC 521 '),(22171,'E-1908','2010-06-24','2011-05-31','-do-','-do-',34,'-do-','-do-','NBC 524'),(22172,'E-1908','2011-06-01','2012-03-01','-do-','-do-',393,'-do-','-do-','NBC 530'),(22173,'E-1908','2012-03-02','Present','-do-','-do-',398,'-do-','-do-','Longevity [Step 2]'),(22174,'E-1909','1996-02-05','1996-12-31','LGOO II','Perm.',83,'DLG-CAR','National','Original Appt'),(22175,'E-1909','1997-01-01','1997-10-31','-do-','-do.',103,'-do-','-do-','NBC 568'),(22176,'E-1909','1997-11-01','1999-02-04','-do-','-do-',122,'-do-','-do-','NBC 568'),(22177,'E-1909','1999-02-05','1999-12-31','-do-','-do-',126,'-do-','-do-','Longevity'),(22178,'E-1909','2000-01-01','Present','-do-','-do-',138,'-do-','-do-','NBC 468 '),(22179,'E-1910','2010-12-01','2011-11-30','Sr. Bookkeeper','Temp',9,'LGU-Luba, Abra','Local','Original Appt'),(22180,'E-1910','2011-12-01','2012-04-30','-do-','Perm',9,'-do-','-do-','NBC 568'),(22181,'E-1910','1912-12-03','2012-12-31','-do-','-do-',114,'-do-','-do-','Reemployment'),(22182,'E-1910','2013-01-01','Present','-do-','-do-',116,'-do-','-do-','NBC 540'),(22183,'E-1911','2013-04-08','2015-10-11','LGOO II','-do-',257,'DILG-CAR','National','Transfer'),(22184,'E-1911','2015-10-12','2015-12-31','LGOO V','-do-',438,'-do-','-do-','Promotion'),(22185,'E-1911','2016-01-01','2016-12-31','-do-','-do-',477,'-do-','-do-','NBC 562'),(22186,'E-1911','2017-01-01','Present','-do-','-do-',519,'-do-','-do-','NBC 568'),(22187,'E-1912','1991-11-08','1991-12-09','Stat. I','Temp.',39,'DILG-CAR','Nat?l.','Original Appt'),(22188,'E-1912','1991-12-10','1992-02-13','Sec II','-do-',35,'-do-','-do-','NBC 568'),(22189,'E-1912','1992-01-11','1993-02-28','LGOO II','-do-',45,'-do-','-do-','NBC 568'),(22190,'E-1912','1992-02-12','Present','-do-','Perm.',45,'-do-','-do-','Change of Status'),(22191,'E-1913','1989-06-28','1989-06-30','BGOO I','Temp.',35,'DLG-CAR','National','Orig. Appointment'),(22192,'E-1913','1989-07-01','1990-06-27','LGOO II','-do-',45,'-do-','-do-','NBC 568'),(22193,'E-1913','1990-06-28','Present','-do-','Perm',45,'-do-','-do-','Change of Status'),(22194,'E-1914','1991-08-01','1993-12-31','LGOO V','-do-',81,'-do-','-do-','Promotion'),(22195,'E-1914','1994-01-01','1994-07-31','-do-','-do-',89,'DILG-CAR','-do-','NBC 568'),(22196,'E-1914','1994-08-01','Present','-do-','-do-',90,'-do-','-do-','Longevity'),(22197,'E-1915','1999-03-15','1999-12-31','Accounting Clerk','Perm.',34,'Mun. of Malibcong','Local','Original Appt'),(22198,'E-1915','2000-01-01','2000-06-30','-do-','-do-',47,'-do-','-do-','NBC 568'),(22199,'E-1915','1900-07-01','Present','-do-','-do-',65,'-do-','-do-','NBC 568'),(22200,'E-1916','1901-03-16','2001-06-30','Clerk II','-do-',74,'DILG-CAR','Nat?l','Transfer'),(22201,'E-1916','2001-07-01','Present','-do-','-do-',78,'-do-','-do-','NBC 474'),(22202,'E-1917','2009-03-02','2009-06-30','LGOO V','-do-',258,'-do-','-do-','Promotion'),(22203,'E-1917','2009-07-01','2010-06-23','-do-','-do-',303,'-do-','-do-','NBC 521 '),(22204,'E-1917','2010-06-24','Present','-do-','-do-',348,'-do-','-do-','NBC 524'),(22205,'E-1918','2005-06-01','2010-06-01','Instructor I','Temp',12,'ASIST','SUC','NBC 568'),(22206,'E-1918','2011-01-01','2011-12-31','Leg Sec Asst I','Contractual',8,'SPO, Abra','Local','NBC 568'),(22207,'E-1918','2012-01-19','2012-05-31','LGOO II','Permanent',235,'DILG-CAR','National','Original Appointment'),(22208,'E-1918','2012-06-01','2014-08-17','-do-','-do-',257,'-do-','-do-','NBC 540'),(22209,'E-1918','2014-08-18','2015-12-31','LGOO V','-do-',34,'-do-','-do-','Promotion'),(22210,'E-1918','2016-01-01','2016-12-31','-do-','-do-',477,'-do-','-do-','NBC 562'),(22211,'E-1918','2017-01-01','2017-08-17','-do-','-do-',519,'-do-','-do-','NBC 568'),(22212,'E-1918','2017-08-18','Present','-do-','-do-',526,'-do-','-do-','Longevity Step 2'),(22213,'E-1919','1989-06-28','1989-06-30','BGOO I','Perm.',35,'DLG-CAR','Nat?l.','Original Appt'),(22214,'E-1919','1989-07-01','1992-06-27','LGOO II','-do-',45,'DILG-CAR','-do-','NBC 568'),(22215,'E-1919','1992-06-28','Present','-do-','-do-',46,'-do-','-do-','NBC 568'),(22216,'E-1920','1993-02-01','1993-12-31','LGOO V','-do-',32,'-do-','-do-','Promotion'),(22217,'E-1920','1994-01-01','1994-12-31','-do-','-do-',89,'-do-','-do-','NBC 568'),(22218,'E-1920','1995-01-01','1995-05-31','-do-','-do-',101,'-do-','-do-','NBC 568'),(22219,'E-1920','1995-06-01','1995-12-31','-do-','-do-',101,'-do-','-do-','Reorganization'),(22220,'E-1920','1996-01-01','Present','-do-','-do-',126,'-do-','-do-','Longevity'),(22221,'E-1921','2015-10-12','2015-12-31','AdAs II (AC III)','Permanent',179,'DILG-CAR','National','Original Appointment'),(22222,'E-1921','2016-01-01','2016-12-31','-do-','-do-',184,'-do-','-do-','NBC 562'),(22223,'E-1921','2017-01-01','Present','-do-','-do-',189,'-do-','-do-','NBC 568'),(22224,'E-1922','2012-01-19','2012-05-31','LGOO II','Permanent',235,'DILG-CAR','National','Original Appointment'),(22225,'E-1922','2012-06-01','2014-08-17','-do-','-do-',257,'-do-','-do-','NBC 540'),(22226,'E-1922','2014-08-18','2015-12-31','LGOO V','-do-',438,'-do-','-do-','Promotion'),(22227,'E-1922','2016-01-01','2016-12-31','-do-','-do-',477,'-do-','-do-','NBC 562'),(22228,'E-1922','2017-01-01','2017-08-17','-do-','-do-',32,'-do-','-do-','NBC 568'),(22229,'E-1922','2017-08-18','Present','-do-','-do-',526,'-do-','-do-','Longevity Step 2');
/*!40000 ALTER TABLE `service_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `step_increments`
--

DROP TABLE IF EXISTS `step_increments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `step_increments` (
  `step_increment_id` int(11) NOT NULL AUTO_INCREMENT,
  `tranche_id` int(11) DEFAULT NULL,
  `salary_grade` varchar(45) DEFAULT NULL,
  `step_1` int(6) DEFAULT NULL,
  `step_2` int(6) DEFAULT NULL,
  `step_3` int(6) DEFAULT NULL,
  `step_4` int(6) DEFAULT NULL,
  `step_5` int(6) DEFAULT NULL,
  `step_6` int(6) DEFAULT NULL,
  `step_7` int(6) DEFAULT NULL,
  `step_8` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`step_increment_id`),
  KEY `tranche_id_idx` (`tranche_id`),
  CONSTRAINT `tranche_id` FOREIGN KEY (`tranche_id`) REFERENCES `tranche` (`tranche_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `step_increments`
--

LOCK TABLES `step_increments` WRITE;
/*!40000 ALTER TABLE `step_increments` DISABLE KEYS */;
INSERT INTO `step_increments` VALUES (1,1,'1',9478,9568,9660,9753,9846,9949,10036,'10132'),(2,1,'2',10159,10255,10351,10449,10547,10647,10747,'10848'),(3,1,'3',10883,10985,11089,11193,11298,11405,11512,'11621'),(4,1,'4',11658,11767,11878,11990,12103,12217,12333,'12448'),(5,1,'5',12488,12644,12725,12844,12965,13087,13211,'13335'),(6,1,'6',13378,13504,13630,13759,13889,14020,14152,'14285'),(7,1,'7',14331,14466,14602,14740,14878,150178,15159,'15303'),(8,1,'8',15368,15519,15670,15823,15978,16133,16291,'16450'),(9,1,'9',16512,16671,16830,16992,17155,17319,17485,'17653'),(10,1,'10',17730,17900,18071,18245,18420,18634,18775,'18955'),(11,1,'11',19077,19286,19496,19709,19925,20142,20362,'20585'),(12,1,'12',22328,22564,22804,23045,23289,23536,23786,'24037'),(13,1,'13',22328,22564,22804,23045,23289,23536,23786,'24037'),(14,1,'14',24141,24396,24655,24916,25180,25447,25717,'25989'),(15,1,'15',26192,26489,26790,27094,27401,27712,28027,'28344'),(16,1,'16',28417,28740,29066,29396,29729,30066,30408,'30752'),(17,1,'17',30831,31183,31536,31893,32255,32622,32991,'33366'),(18,1,'18',33452,33831,34215,34603,34996,35393,35795,'36201'),(19,1,'19',36409,36857,37312,37771,38237,38709,39186,'39670'),(20,1,'20',39768,40259,40755,41258,41766,42281,42802,'43330'),(21,1,'21',43439,43974,44517,45066,45621,46183,46753,'47329'),(22,1,'22',47448,48032,48625,49224,49831,50445,51067,'51697'),(23,1,'23',51826,52466,53112,53767,54430,55101,55781,'56468'),(24,1,'24',56610,57308,58014,58730,59453,60187,60928,'61679'),(25,2,'1',9981,10072,10165,10258,10352,10453,10543,'10640'),(26,2,'2',10667,10761,10856,10952,11049,11147,11245,'11345'),(27,2,'3',11387,11488,11589,11691,11795,11899,12004,'12110'),(28,2,'4',12155,12262,12371,12480,12591,12702,12814,'12927'),(29,2,'5',12975,13117,13206,13322,13440,13559,13679,'13799'),(30,2,'6',13851,13973,14096,14221,14347,14474,14602,'14731'),(31,2,'7',14785,14916,15048,15181,15315,15450,15587,'15725');
/*!40000 ALTER TABLE `step_increments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template` (
  `template_id` int(11) NOT NULL COMMENT 'Binayaan ko muna yung heto. Di ko pa alam yung ID System natin.',
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Binase ko sa PDS yung bilang.',
  `context` varchar(45) DEFAULT NULL COMMENT 'Hmmmm. di ko alam kung paano i-store yung context hahaha. marami yun diba? Di ko pa sure.',
  `date` date DEFAULT NULL,
  `salary` int(7) DEFAULT NULL COMMENT 'Kino-compute din to diba? Hahaha. Sige sige. hahaha.',
  PRIMARY KEY (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template`
--

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
/*!40000 ALTER TABLE `template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainings`
--

DROP TABLE IF EXISTS `trainings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainings` (
  `training_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Binase ko lang dun sa PDS natin. hahaha',
  `titleofTrainingLearning` varchar(45) DEFAULT NULL,
  `trainingStart` date DEFAULT NULL,
  `trainingEnd` date DEFAULT NULL,
  `numberOfHours` int(3) DEFAULT NULL COMMENT 'Usually 2 digits pero ginawa ko nang 3. Hhaha.',
  `typeOfLP` enum('Managerial','Supervisory','Technical') DEFAULT NULL COMMENT 'Di ko sure to. kasi yung nakalagay dun sa PDS "Type of LD (Managerial/Supervisory/Technical/etc) Paano kaya yung etc? hahaha. Hmmm. Di ko alam. hahaha\n',
  `conductedSponsoredBy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`training_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8051 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainings`
--

LOCK TABLES `trainings` WRITE;
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
INSERT INTO `trainings` VALUES (8001,'E-1873','Database Training with Open-Source Software','2015-05-26','2015-07-26',40,'Technical','Information Systems & Technology Management Service - DILG'),(8002,'E-1874','Effective Human Resource Management','2014-09-02','2014-11-02',48,'Managerial','Information Systems & Technology Management Service - DILG'),(8003,'E-1875','Database Management Systems','2013-04-22','2014-07-22',35,'Technical','Information Systems & Technology Management Service - DILG'),(8004,'E-1876','Leadership Skills Development','2002-10-11','2002-12-11',48,'Supervisory','Information Systems & Technology Management Service - DILG'),(8005,'E-1877','Leadership Skills Development','2004-06-09','0000-00-00',32,'Supervisory','Information Systems & Technology Management Service - DILG'),(8006,'E-1878','Effective Human Resource Management','2011-01-01','2011-03-01',32,'Managerial','Information Systems & Technology Management Service - DILG'),(8007,'E-1879','Effective Human Resource Management','2013-01-18','2013-03-18',30,'Managerial','Information Systems & Technology Management Service - DILG'),(8008,'E-1880','Leadership Skills Development','2013-05-07','2013-06-07',30,'Supervisory','Information Systems & Technology Management Service - DILG'),(8009,'E-1881','Leadership Skills Development','2003-09-13','2003-10-14',30,'Supervisory','Information Systems & Technology Management Service - DILG'),(8010,'E-1882','Database Management Systems','2015-12-26','2016-03-26',36,'Technical','Information Systems & Technology Management Service - DILG'),(8011,'E-1883','Database Management Systems','2003-01-27','2003-05-27',40,'Technical','Information Systems & Technology Management Service - DILG'),(8012,'E-1884','Database Management Systems','2000-05-06','2000-08-06',35,'Technical','Information Systems & Technology Management Service - DILG'),(8013,'E-1885','Leadership Skills Development','2005-07-15','2005-10-15',45,'Supervisory','Information Systems & Technology Management Service - DILG'),(8014,'E-1886','Leadership Skills Development','2004-08-22','2004-11-22',41,'Supervisory','Information Systems & Technology Management Service - DILG'),(8015,'E-1887','Effective Human Resource Management','2000-06-27','2000-08-27',34,'Managerial','Information Systems & Technology Management Service - DILG'),(8016,'E-1888','Effective Human Resource Management','2000-07-06','2000-10-06',48,'Managerial','Information Systems & Technology Management Service - DILG'),(8017,'E-1889','Leadership Skills Development','2004-10-05','2004-12-05',31,'Supervisory','Information Systems & Technology Management Service - DILG'),(8018,'E-1890','Database Management Systems','2015-01-25','2015-05-25',41,'Technical','Information Systems & Technology Management Service - DILG'),(8019,'E-1891','Database Management Systems','2009-11-03','2010-02-03',41,'Technical','Information Systems & Technology Management Service - DILG'),(8020,'E-1892','Leadership Skills Development','2010-02-16','2010-05-16',38,'Supervisory','Information Systems & Technology Management Service - DILG'),(8021,'E-1893','Leadership Skills Development','2012-11-21','2013-01-21',34,'Supervisory','Information Systems & Technology Management Service - DILG'),(8022,'E-1894','Database Management Systems','2010-08-25','2010-10-25',36,'Technical','Information Systems & Technology Management Service - DILG'),(8023,'E-1895','Leadership Skills Development','2001-04-24','2001-06-24',33,'Supervisory','Information Systems & Technology Management Service - DILG'),(8024,'E-1896','Database Management Systems','2006-01-16','2006-05-16',45,'Technical','Information Systems & Technology Management Service - DILG'),(8025,'E-1897','Database Management Systems','2015-06-28','2015-09-28',41,'Technical','Information Systems & Technology Management Service - DILG'),(8026,'E-1898','Communication Skills Development','2006-01-19','2006-05-19',34,'Managerial','Information Systems & Technology Management Service - DILG'),(8027,'E-1899','Communication Skills Development','2009-04-11','2009-08-11',39,'Managerial','Information Systems & Technology Management Service - DILG'),(8028,'E-1900','Database Management Systems','2000-11-18','2001-02-18',33,'Technical','Information Systems & Technology Management Service - DILG'),(8029,'E-1901','Communication Skills Development','2011-07-10','2011-10-10',40,'Managerial','Information Systems & Technology Management Service - DILG'),(8030,'E-1902','Communication Skills Development','2002-09-16','2002-12-16',46,'Managerial','Information Systems & Technology Management Service - DILG'),(8031,'E-1903','Database Management Systems','2008-06-28','2008-10-28',37,'Technical','Information Systems & Technology Management Service - DILG'),(8032,'E-1904','Database Management Systems','2002-06-02','2002-10-02',42,'Technical','Information Systems & Technology Management Service - DILG'),(8033,'E-1905','Database Management Systems','2005-10-16','2005-12-16',37,'Technical','Information Systems & Technology Management Service - DILG'),(8034,'E-1906','Communication Skills Development','2016-05-08','2016-10-08',32,'Managerial','Information Systems & Technology Management Service - DILG'),(8035,'E-1907','Media Training (Facing the Press)','2013-07-26','2013-10-26',38,'Managerial','Information Systems & Technology Management Service - DILG'),(8036,'E-1908','Media Training (Facing the Press)','2007-07-22','2007-10-22',35,'Managerial','Information Systems & Technology Management Service - DILG'),(8037,'E-1909','Communication Skills Development','2016-06-03','2016-10-03',48,'Managerial','Information Systems & Technology Management Service - DILG'),(8038,'E-1910','Communication Skills Development','2007-04-04','2007-06-04',48,'Managerial','Information Systems & Technology Management Service - DILG'),(8039,'E-1911','Media Training (Facing the Press)','2011-01-10','2011-07-10',50,'Managerial','Information Systems & Technology Management Service - DILG'),(8040,'E-1912','Database Management Systems','2011-11-25','2012-03-25',42,'Technical','Information Systems & Technology Management Service - DILG'),(8041,'E-1913','Database Management Systems','2001-12-01','2002-04-01',32,'Technical','Information Systems & Technology Management Service - DILG'),(8042,'E-1914','Secretarial Practices & Office Management','2015-07-27','2015-10-27',36,'Managerial','Information Systems & Technology Management Service - DILG'),(8043,'E-1915','Database Management Systems','2000-11-14','2001-05-14',34,'Technical','Information Systems & Technology Management Service - DILG'),(8044,'E-1916','Secretarial Practices & Office Management','2000-05-13','2000-10-13',45,'Managerial','Information Systems & Technology Management Service - DILG'),(8045,'E-1917','Secretarial Practices & Office Management','2001-10-06','2001-12-06',30,'Managerial','Information Systems & Technology Management Service - DILG'),(8046,'E-1918','Secretarial Practices & Office Management','2011-07-26','2011-10-26',43,'Managerial','Information Systems & Technology Management Service - DILG'),(8047,'E-1919','Secretarial Practices & Office Management','2011-10-26','2011-12-26',41,'Managerial','Information Systems & Technology Management Service - DILG'),(8048,'E-1920','Communication Skills Development','2005-11-04','2006-01-04',47,'Managerial','Information Systems & Technology Management Service - DILG'),(8049,'E-1921','Communication Skills Development','2010-12-05','2011-05-05',35,'Managerial','Information Systems & Technology Management Service - DILG'),(8050,'E-1922','Communication Skills Development','2016-02-25','2016-06-25',50,'Managerial','Information Systems & Technology Management Service - DILG');
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tranche`
--

DROP TABLE IF EXISTS `tranche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tranche` (
  `tranche_id` int(11) NOT NULL AUTO_INCREMENT,
  `tranche_year` varchar(4) DEFAULT NULL,
  `salaryschedule_id` int(11) DEFAULT NULL,
  `number_of_tranche` enum('first','second','third','fourth') DEFAULT NULL COMMENT 'first - First Tranche\nsecond - Second Tranche\nthird - Thrid Tranche\nfourth - Fourth Tranche',
  PRIMARY KEY (`tranche_id`),
  KEY `salaryschedule_idx` (`salaryschedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tranche`
--

LOCK TABLES `tranche` WRITE;
/*!40000 ALTER TABLE `tranche` DISABLE KEYS */;
INSERT INTO `tranche` VALUES (1,'2016',1,'first'),(2,'2017',1,'second'),(3,'2018',1,'third'),(4,'2019',1,'fourth');
/*!40000 ALTER TABLE `tranche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'arvince','arvince','alcaidearvince@gmail.com','$2y$10$Bk0/wa32/7TQwsKcflEq9u9VBzbSfzCUIJ9bTexjerysa8HTS/BX2','sxWIXZDcYW8j0CPRukcIrKoHZTyFwRNMDfU8DSnVqmpRqetcSjpVtjjV9QGU','2018-03-03 06:04:51','2018-03-03 06:04:51'),(2,'admin1','admin1','admin1@email.com','$2y$10$Bk6tZMpNJ7PgNJZb4iwEVuZTlHP58vzSXbASNxID7pt.Z7VsW/wo2','2Ni8W3WRxnNd34BrkPhaN4MmYk24t3dBt3KiIcPMfpkIendhDj8a1RNKpG3l','2018-03-03 06:21:48','2018-03-03 06:21:48'),(3,'admin2','admin2','admin2@email.com','$2y$10$vz7oaKLtMSLH1IXNiFicvetbXKnNPx1sAihT4NkxhWVp3tb1bFSPG','NmDnbFzGO6zCa3AQ73oXc1bHPj6MFabUHOb6be66ftDsCkEPfONEjdUVPC7v','2018-03-03 06:29:35','2018-03-03 06:29:35'),(4,'admin3','admin3','admin3@email.com','$2y$10$jJZn72rxGCyHApGzEzJbxO0M0BDO3wQP8tEj4rTmUUqMZKc6xRF5q','5llnyq5x4qxe5WBrd0VFSAWF5DwhEEUeUUhboMke1jxD2lpP3y8r9Q8e8azO','2018-03-03 06:30:06','2018-03-03 06:30:06'),(5,'director','director','director@email.com','$2y$10$ifpaT28qQBURxuaE2uwisO/sJTpYnR7xoW6PIzRE6LSu11fjbrPsi','h1v80w0r2pV2CLAvo2XVrzTdFqYEJg1rYYLlJkRA83IF52YIJhm7gGHTADE6','2018-03-03 06:30:39','2018-03-03 06:30:39'),(12,'Papat-iw, Saldy Bugtong','E-1873','saldypapatiw@gmail.com','$2y$10$NgDg9ypJUlPj7dIf8xc/8uVpv60dQVtk0MZFQ.qgwn690D4VwGBda','RbRBUqtAxYMXv1XZxlIUpk4kfHfu0F9ecnUK0ykIsSKFxVN11rjECcdb5dlp','2018-03-07 06:01:40','2018-03-07 06:01:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voluntary_works`
--

DROP TABLE IF EXISTS `voluntary_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voluntary_works` (
  `voluntaryWork_id` int(11) NOT NULL,
  `emp_id` varchar(6) DEFAULT NULL,
  `nameAddressOfOrganization` varchar(45) DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `numberOfHours` int(3) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`voluntaryWork_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voluntary_works`
--

LOCK TABLES `voluntary_works` WRITE;
/*!40000 ALTER TABLE `voluntary_works` DISABLE KEYS */;
INSERT INTO `voluntary_works` VALUES (10001,'E-1873','Association of DILG Regional Information Tech','2000-06-22','2000-07-02',9,'5th Board Member'),(10002,'E-1874','Association of DILG Regional Information Tech','2007-07-12','2007-07-12',12,''),(10003,'E-1875','Association of DILG Regional Information Tech','2010-08-26','2010-08-26',7,''),(10004,'E-1876','Association of DILG Regional Information Tech','2015-01-13','2015-01-13',6,''),(10005,'E-1877','Association of DILG Regional Information Tech','2005-11-27','2005-11-27',4,''),(10006,'E-1878','Association of DILG Regional Information Tech','2013-06-12','2013-06-12',5,''),(10007,'E-1879','Association of DILG Regional Information Tech','2003-07-12','2003-07-12',6,''),(10008,'E-1880','Association of DILG Regional Information Tech','2016-05-24','2016-05-24',8,''),(10009,'E-1881','Association of DILG Regional Information Tech','2001-12-29','2001-12-29',10,''),(10010,'E-1882','Association of DILG Regional Information Tech','2001-10-04','2001-10-04',4,''),(10011,'E-1883','Association of DILG Regional Information Tech','2012-01-30','2012-01-30',5,''),(10012,'E-1884','Association of DILG Regional Information Tech','2003-01-03','2003-01-04',7,''),(10013,'E-1885','Association of DILG Regional Information Tech','2012-05-13','2012-05-13',8,''),(10014,'E-1886','Association of DILG Regional Information Tech','2016-12-25','2016-12-25',9,''),(10015,'E-1887','Association of DILG Regional Information Tech','2001-03-15','2001-03-15',4,''),(10016,'E-1888','Association of DILG Regional Information Tech','2007-12-04','2007-12-06',6,''),(10017,'E-1889','Association of DILG Regional Information Tech','2011-10-26','2011-10-30',8,''),(10018,'E-1890','Association of DILG Regional Information Tech','2003-03-06','2003-03-20',12,''),(10019,'E-1891','Association of DILG Regional Information Tech','2005-12-15','2005-12-20',9,''),(10020,'E-1892','Association of DILG Regional Information Tech','2001-01-28','2011-02-28',11,''),(10021,'E-1893','Association of DILG Regional Information Tech','2006-12-16','2006-12-16',6,''),(10022,'E-1894','Association of DILG Regional Information Tech','2010-11-07','2010-11-07',9,''),(10023,'E-1895','Association of DILG Regional Information Tech','2012-08-24','2012-08-24',4,''),(10024,'E-1896','Association of DILG Regional Information Tech','2004-05-18','2004-06-18',10,''),(10025,'E-1897','Association of DILG Regional Information Tech','2002-12-05','2002-12-05',5,''),(10026,'E-1898','Association of DILG Regional Information Tech','2011-11-04','2011-11-04',6,''),(10027,'E-1899','Association of DILG Regional Information Tech','2008-08-17','2008-08-17',6,''),(10028,'E-1900','Association of DILG Regional Information Tech','2016-12-23','2016-12-23',6,''),(10029,'E-1901','Association of DILG Regional Information Tech','2006-07-06','2006-07-08',7,''),(10030,'E-1902','Association of DILG Regional Information Tech','2008-01-11','2008-01-12',7,''),(10031,'E-1903','Association of DILG Regional Information Tech','2015-12-30','2015-12-30',8,''),(10032,'E-1904','Association of DILG Regional Information Tech','2009-06-14','2009-06-14',8,''),(10033,'E-1905','Association of DILG Regional Information Tech','2002-01-03','2002-01-05',9,''),(10034,'E-1906','Association of DILG Regional Information Tech','2001-12-17','2001-12-17',5,''),(10035,'E-1907','Association of DILG Regional Information Tech','2011-09-05','2011-09-05',4,''),(10036,'E-1908','Association of DILG Regional Information Tech','2009-08-02','2009-08-02',6,''),(10037,'E-1909','Association of DILG Regional Information Tech','2014-03-22','2014-03-22',8,''),(10038,'E-1910','Association of DILG Regional Information Tech','2002-07-06','2002-07-06',8,''),(10039,'E-1911','Association of DILG Regional Information Tech','2007-05-08','2007-05-12',9,''),(10040,'E-1912','Association of DILG Regional Information Tech','2005-03-09','2005-03-09',4,''),(10041,'E-1913','Association of DILG Regional Information Tech','2000-07-29','2000-08-05',10,''),(10042,'E-1914','Association of DILG Regional Information Tech','2004-09-15','2004-09-15',2,''),(10043,'E-1915','Association of DILG Regional Information Tech','2008-02-17','2008-02-17',3,''),(10044,'E-1916','Association of DILG Regional Information Tech','2000-02-15','2000-02-18',4,''),(10045,'E-1917','Association of DILG Regional Information Tech','2005-04-16','2005-04-20',4,''),(10046,'E-1918','Association of DILG Regional Information Tech','2014-01-12','2014-01-12',7,''),(10047,'E-1919','Association of DILG Regional Information Tech','2008-03-28','2008-03-28',5,''),(10048,'E-1920','Association of DILG Regional Information Tech','2007-10-26','2007-10-27',6,''),(10049,'E-1921','Association of DILG Regional Information Tech','2010-04-11','2010-04-16',6,''),(10050,'E-1922','Association of DILG Regional Information Tech','2008-07-24','2008-07-24',4,'');
/*!40000 ALTER TABLE `voluntary_works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workexperience`
--

DROP TABLE IF EXISTS `workexperience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workexperience` (
  `workExperience_id` varchar(10) NOT NULL,
  `emp_id` varchar(6) DEFAULT NULL,
  `startJobDate` date DEFAULT NULL,
  `endJobDate` date DEFAULT NULL,
  `positionTitle` varchar(45) DEFAULT NULL,
  `departmentAgencyOfficeCompany` varchar(45) DEFAULT NULL,
  `monthlySalary` int(7) DEFAULT NULL,
  `salaryJobPayGradesStep` varchar(45) DEFAULT NULL,
  `statusOfAppointment` varchar(45) DEFAULT NULL,
  `GovernmentService` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`workExperience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workexperience`
--

LOCK TABLES `workexperience` WRITE;
/*!40000 ALTER TABLE `workexperience` DISABLE KEYS */;
INSERT INTO `workexperience` VALUES ('18001','E-1873','0000-00-00','0000-00-00','Information Technology Officer I','Department of the Interior and Local Governme',39,'19-2','PERMANENT','Y'),('18002','E-1882','0000-00-00','0000-00-00','Operations Manager','Department of the Interior and Local Governme',34,'17-1','PERMANENT','Y'),('18003','E-1883','0000-00-00','0000-00-00','Quality Control Coordinator','Department of the Interior and Local Governme',34,'16-4','PERMANENT','Y'),('18004','E-1884','0000-00-00','0000-00-00','Risk Manager','Department of the Interior and Local Governme',33,'16-3','PERMANENT','Y'),('18005','E-1885','0000-00-00','0000-00-00','Service Representative','Department of the Interior and Local Governme',33,'16-2','PERMANENT','Y'),('18006','E-1886','0000-00-00','0000-00-00','Accounts Receivable/Payable Specialist','Department of the Interior and Local Governme',32,'16-1','PERMANENT','Y'),('18007','E-1887','0000-00-00','0000-00-00','Assessor','Department of the Interior and Local Governme',32,'15-4','PERMANENT','Y'),('18008','E-1888','0000-00-00','0000-00-00','Auditor','Department of the Interior and Local Governme',31,'15-3','PERMANENT','Y'),('18009','E-1889','0000-00-00','0000-00-00','Bookkeeper','Department of the Interior and Local Governme',31,'15-2','PERMANENT','Y'),('18010','E-1890','0000-00-00','0000-00-00','Budget Analyst','Department of the Interior and Local Governme',30,'15-1','PERMANENT','Y'),('18011','E-1874','0000-00-00','0000-00-00','Account Executive','Department of the Interior and Local Governme',38,'19-2','PERMANENT','Y'),('18012','E-1891','0000-00-00','0000-00-00','Cash Manager','Department of the Interior and Local Governme',30,'14-4','PERMANENT','Y'),('18013','E-1892','0000-00-00','0000-00-00','Chief Financial Officer','Department of the Interior and Local Governme',29,'14-3','PERMANENT','Y'),('18014','E-1893','0000-00-00','0000-00-00','Controller','Department of the Interior and Local Governme',29,'14-2','PERMANENT','Y'),('18015','E-1894','0000-00-00','0000-00-00','Credit Manager','Department of the Interior and Local Governme',28,'14-1','PERMANENT','Y'),('18016','E-1895','0000-00-00','0000-00-00','Tax Specialist','Department of the Interior and Local Governme',28,'13-4','PERMANENT','Y'),('18017','E-1896','0000-00-00','0000-00-00','Treasurer','Department of the Interior and Local Governme',27,'13-3','PERMANENT','Y'),('18018','E-1897','0000-00-00','0000-00-00','Certified Financial Planner','Department of the Interior and Local Governme',27,'13-2','PERMANENT','Y'),('18019','E-1898','0000-00-00','0000-00-00','Chartered Wealth Manager','Department of the Interior and Local Governme',26,'13-1','PERMANENT','Y'),('18020','E-1899','0000-00-00','0000-00-00','Credit Analyst','Department of the Interior and Local Governme',26,'4-Dec','PERMANENT','Y'),('18021','E-1900','0000-00-00','0000-00-00','Financial Analyst','Department of the Interior and Local Governme',25,'3-Dec','PERMANENT','Y'),('18022','E-1875','0000-00-00','0000-00-00','Administrative Assistant','Department of the Interior and Local Governme',38,'18-4','PERMANENT','Y'),('18023','E-1901','0000-00-00','0000-00-00','Hedge Fund Manager','Department of the Interior and Local Governme',25,'2-Dec','PERMANENT','Y'),('18024','E-1902','0000-00-00','0000-00-00','Hedge Fund Principal','Department of the Interior and Local Governme',24,'1-Dec','PERMANENT','Y'),('18025','E-1903','0000-00-00','0000-00-00','Hedge Fund Trader','Department of the Interior and Local Governme',24,'4-Nov','PERMANENT','Y'),('18026','E-1904','0000-00-00','0000-00-00','Investment Advisor','Department of the Interior and Local Governme',23,'3-Nov','PERMANENT','Y'),('18027','E-1905','0000-00-00','0000-00-00','Investment Banker','Department of the Interior and Local Governme',23,'2-Nov','PERMANENT','Y'),('18028','E-1906','0000-00-00','0000-00-00','Investor Relations Officer','Department of the Interior and Local Governme',22,'1-Nov','PERMANENT','Y'),('18029','E-1907','0000-00-00','0000-00-00','Leveraged Buyout Investor','Department of the Interior and Local Governme',22,'4-Oct','PERMANENT','Y'),('18030','E-1908','0000-00-00','0000-00-00','Loan Officer','Department of the Interior and Local Governme',21,'3-Oct','PERMANENT','Y'),('18031','E-1909','0000-00-00','0000-00-00','Mortgage Banker','Department of the Interior and Local Governme',21,'2-Oct','PERMANENT','Y'),('18032','E-1910','0000-00-00','0000-00-00','Mutual Fund Analyst','Department of the Interior and Local Governme',20,'1-Oct','PERMANENT','Y'),('18033','E-1876','0000-00-00','0000-00-00','Administrative Manager','Department of the Interior and Local Governme',37,'18-3','PERMANENT','Y'),('18034','E-1911','0000-00-00','0000-00-00','Portfolio Management Marketing','Department of the Interior and Local Governme',20,'4-Sep','PERMANENT','Y'),('18035','E-1912','0000-00-00','0000-00-00','Portfolio Manager','Department of the Interior and Local Governme',19,'3-Sep','PERMANENT','Y'),('18036','E-1913','0000-00-00','0000-00-00','Ratings Analyst','Department of the Interior and Local Governme',19,'2-Sep','PERMANENT','Y'),('18037','E-1914','0000-00-00','0000-00-00','Stockbroker','Department of the Interior and Local Governme',18,'1-Sep','PERMANENT','Y'),('18038','E-1915','0000-00-00','0000-00-00','Trust Officer','Department of the Interior and Local Governme',18,'4-Aug','PERMANENT','Y'),('18039','E-1916','0000-00-00','0000-00-00','Benefits Officer','Department of the Interior and Local Governme',17,'3-Aug','PERMANENT','Y'),('18040','E-1917','0000-00-00','0000-00-00','Compensation Analyst','Department of the Interior and Local Governme',17,'2-Aug','PERMANENT','Y'),('18041','E-1918','0000-00-00','0000-00-00','Employee Relations Specialist','Department of the Interior and Local Governme',16,'1-Aug','PERMANENT','Y'),('18042','E-1919','0000-00-00','0000-00-00','HR Coordinator','Department of the Interior and Local Governme',16,'4-Jul','PERMANENT','Y'),('18043','E-1920','0000-00-00','0000-00-00','HR Specialist','Department of the Interior and Local Governme',15,'3-Jul','PERMANENT','Y'),('18044','E-1877','0000-00-00','0000-00-00','Branch Manager','Department of the Interior and Local Governme',37,'18-2','PERMANENT','Y'),('18045','E-1921','0000-00-00','0000-00-00','Retirement Plan Counselor','Department of the Interior and Local Governme',15,'2-Jul','PERMANENT','Y'),('18046','E-1878','0000-00-00','0000-00-00','Business Analyst','Department of the Interior and Local Governme',36,'18-1','PERMANENT','Y'),('18047','E-1879','0000-00-00','0000-00-00','Business Manager','Department of the Interior and Local Governme',36,'17-4','PERMANENT','Y'),('18048','E-1880','0000-00-00','0000-00-00','Chief Executive Officer','Department of the Interior and Local Governme',35,'17-3','PERMANENT','Y'),('18049','E-1881','0000-00-00','0000-00-00','Office Manager','Department of the Interior and Local Governme',35,'17-2','PERMANENT','Y');
/*!40000 ALTER TABLE `workexperience` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-19 22:25:23
