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
  `typeOfLeave` enum('Sick','Vacation') DEFAULT NULL COMMENT 'Not sure.',
  `location` varchar(250) DEFAULT NULL,
  `sickInfo` varchar(350) DEFAULT NULL,
  `noOfWorkingDays` int(2) DEFAULT NULL,
  `inclusiveDates` varchar(100) DEFAULT NULL COMMENT 'Varchar lang siguro pwede dito di pwede data type na date. hahaha.',
  `dateOfapplication` varchar(100) DEFAULT NULL,
  `status` enum('Accepted','Declined') DEFAULT NULL COMMENT 'Not sure. Hahhaa.',
  PRIMARY KEY (`app_id`),
  KEY `fk_applicationforleave_1_idx` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationforleave`
--

LOCK TABLES `applicationforleave` WRITE;
/*!40000 ALTER TABLE `applicationforleave` DISABLE KEYS */;
INSERT INTO `applicationforleave` VALUES (1,'E-1873','Vacation','N/A','N/A',3,'2017-3-12 - 2017-3-15','2017-3-7','Accepted');
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
  PRIMARY KEY (`family_id`),
  KEY `fk_children_1_idx` (`emp_id`),
  CONSTRAINT `fk_children_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `children`
--

LOCK TABLES `children` WRITE;
/*!40000 ALTER TABLE `children` DISABLE KEYS */;
INSERT INTO `children` VALUES (1,'E-1873','Dr. Wellington Lebsack','2011-04-21'),(2,'E-1874','Titus Auer','2001-07-09'),(3,'E-1875','Toby Cole','2012-02-14'),(4,'E-1876','Ephraim Wunsch','2015-04-05'),(5,'E-1877','Julio Stiedemann','1993-01-27'),(6,'E-1878','Grayce Lemke','2007-12-12'),(7,'E-1879','Else Grady','1985-10-26'),(8,'E-1880','Krista Kris','2009-09-22'),(9,'E-1881','Lilian Cruickshank','1994-10-18'),(10,'E-1882','Ona Jacobs','1986-09-25'),(11,'E-1883','Laney Gerlach','1999-09-03'),(12,'E-1884','Aric Stanton','2014-08-27'),(13,'E-1885','Chadrick Herzog','1976-08-19'),(14,'E-1886','Jamar Weimann','2009-04-04'),(15,'E-1887','Mr. Lafayette Herman Sr.','1999-01-24'),(16,'E-1888','Verner O\'Kon','1993-12-01'),(17,'E-1889','Dr. Julianne Barton III','2000-11-18'),(18,'E-1890','Ms. Karlie Beier DVM','1997-10-22'),(19,'E-1891','Daron Waelchi','2001-10-17'),(20,'E-1892','Hiram Luettgen','1983-11-29'),(21,'E-1893','Isaac Jacobson Sr.','2007-05-14'),(22,'E-1894','Carey King Jr.','1985-06-27'),(23,'E-1895','Mr. Rex Barton MD','2002-10-27'),(24,'E-1896','Daren Abbott','2007-07-03'),(25,'E-1897','Kasey Johns','1999-11-20'),(26,'E-1898','Prof. Joannie Cartwright III','1991-01-11'),(27,'E-1899','Prof. Cullen Mertz DDS','1974-03-30'),(28,'E-1900','Dorcas Batz','1980-05-18'),(29,'E-1901','Dr. Eli Leffler','2017-08-11'),(30,'E-1902','Cristian Gulgowski Sr.','1975-06-07'),(31,'E-1903','Mr. Antwan Champlin','1978-02-09'),(32,'E-1904','Jameson Parker','2008-03-20'),(33,'E-1905','Linda Lemke','1994-02-07'),(34,'E-1906','Lucile Stoltenberg','1994-07-07'),(35,'E-1907','Kaitlyn Hartmann DDS','1971-05-30'),(36,'E-1908','Joshuah Wehner Jr.','1992-05-16'),(37,'E-1909','Evan Heaney','1984-10-16'),(38,'E-1910','Dr. Lesley Bergnaum','2001-10-31'),(39,'E-1911','Eloisa Feil','2016-05-06'),(40,'E-1912','Prof. Maxwell Ferry IV','2013-07-19'),(41,'E-1913','Prof. Benjamin Zulauf','1976-10-12'),(42,'E-1914','Tremayne Towne','1999-10-23'),(43,'E-1915','Ricardo Frami II','2000-12-04'),(44,'E-1916','Carolanne Yundt','1973-06-16'),(45,'E-1917','Lilyan Mayer MD','2010-10-02'),(46,'E-1918','Hailey O\'Hara','1982-10-25'),(47,'E-1919','Kory Schroeder','1990-10-18'),(48,'E-1920','Mr. Ray Ebert','2014-05-22'),(49,'E-1921','Hilton O\'Reilly','1996-02-27'),(50,'E-1922','Ms. Iliana Bode Sr.','1982-06-25');
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
  PRIMARY KEY (`civilService_id`),
  KEY `fk_civilserviceeligibility_1_idx` (`emp_id`),
  CONSTRAINT `fk_civilserviceeligibility_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `civilserviceeligibility`
--

LOCK TABLES `civilserviceeligibility` WRITE;
/*!40000 ALTER TABLE `civilserviceeligibility` DISABLE KEYS */;
INSERT INTO `civilserviceeligibility` VALUES (1,'E-1873','Career Service Eligibility - Professional','80.27%','2012-12-10','Civil Service Commission - CAR','05-014767','1990-01-13'),(2,'E-1874','Career Service Eligibility - Professional','81.27%','2012-12-10','Civil Service Commission - CAR','05-014768','1990-01-13'),(3,'E-1875','Career Service Eligibility - Professional','82.27%','2007-08-14','Civil Service Commission - CAR','05-014769','2016-04-29'),(4,'E-1876','Career Service Eligibility - Professional','83.27%','1983-06-11','Civil Service Commission - CAR','05-014770','2006-10-23'),(5,'E-1877','Career Service Eligibility - Professional','84.27%','1985-03-24','Civil Service Commission - CAR','05-014771','2011-09-12'),(6,'E-1878','Career Service Eligibility - Professional','85.27%','1982-11-23','Civil Service Commission - CAR','05-014772','1996-11-22'),(7,'E-1879','Career Service Eligibility - Professional','86.27%','1986-11-24','Civil Service Commission - CAR','05-014773','1998-03-07'),(8,'E-1880','Career Service Eligibility - Professional','87.27%','1992-01-21','Civil Service Commission - CAR','05-014774','1986-10-04'),(9,'E-1881','Career Service Eligibility - Professional','88.27%','1972-01-17','Civil Service Commission - CAR','05-014775','2012-04-24'),(10,'E-1882','Career Service Eligibility - Professional','89.27%','1978-04-06','Civil Service Commission - CAR','05-014776','2010-06-20'),(11,'E-1883','Career Service Eligibility - Professional','90.27%','1976-01-26','Civil Service Commission - CAR','05-014777','2015-01-31'),(12,'E-1884','Career Service Eligibility - Professional','91.27%','2006-02-06','Civil Service Commission - CAR','05-014778','1983-02-07'),(13,'E-1885','Career Service Eligibility - Professional','92.27%','1993-03-02','Civil Service Commission - CAR','05-014779','1974-10-19'),(14,'E-1886','Career Service Eligibility - Professional','93.27%','1996-06-18','Civil Service Commission - CAR','05-014780','1977-07-31'),(15,'E-1887','Career Service Eligibility - Professional','94.27%','2011-11-12','Civil Service Commission - CAR','05-014781','1977-06-19'),(16,'E-1888','Career Service Eligibility - Professional','95.27%','1978-07-27','Civil Service Commission - CAR','05-014782','1984-07-13'),(17,'E-1889','Career Service Eligibility - Professional','96.27%','1984-01-25','Civil Service Commission - CAR','05-014783','2017-08-26'),(18,'E-1890','Career Service Eligibility - Professional','97.27%','2013-03-15','Civil Service Commission - CAR','05-014784','1984-11-07'),(19,'E-1891','Career Service Eligibility - ProfessiCareer Service Eligibility - Professionalonal','98.27%','1993-07-22','Civil Service Commission - CAR','05-014785','1978-07-23'),(20,'E-1892','Career Service Eligibility - ProfessionalCareer Service Eligibility - Professional','80.27%','1989-01-19','Civil Service Commission - CAR','05-014786','1977-09-05'),(21,'E-1893','Career Service Eligibility - Professional','81.27%','2016-07-21','Civil Service Commission - CAR','05-014787','1974-01-25'),(22,'E-1894','Career Service Eligibility - Professional','82.27%','1976-12-23','Civil Service Commission - CAR','05-014788','1984-01-02'),(23,'E-1895','Career Service Eligibility - Professional','83.27%','2012-07-12','Civil Service Commission - CAR','05-014789','1971-07-21'),(24,'E-1896','Career Service Eligibility - Professional','84.27%','1981-12-13','Civil Service Commission - CAR','05-014790','1973-03-09'),(25,'E-1897','Career Service Eligibility - Professional','85.27%','1987-08-31','Civil Service Commission - CAR','05-014791','1999-06-20'),(26,'E-1898','Career Service Eligibility - Professional','86.27%','2003-10-18','Civil Service Commission - CAR','05-014792','2015-12-03'),(27,'E-1899','Career Service Eligibility - Professional','87.27%','1988-03-31','Civil Service Commission - CAR','05-014793','1993-03-28'),(28,'E-1900','Career Service Eligibility - Professional','88.27%','2015-04-17','Civil Service Commission - CAR','05-014794','1997-09-08'),(29,'E-1901','Career Service Eligibility - Professional','89.27%','1986-11-08','Civil Service Commission - CAR','05-014795','1984-10-01'),(30,'E-1902','Career Service Eligibility - Professional','90.27%','1994-03-02','Civil Service Commission - CAR','05-014796','1977-07-27'),(31,'E-1903','Career Service Eligibility - Professional','91.27%','2004-01-05','Civil Service Commission - CAR','05-014797','2017-04-16'),(32,'E-1904','Career Service Eligibility - Professional','92.27%','1977-09-27','Civil Service Commission - CAR','05-014798','1980-07-16'),(33,'E-1905','Career Service Eligibility - Professional','93.27%','2005-01-20','Civil Service Commission - CAR','05-014799','1984-11-10'),(34,'E-1906','Career Service Eligibility - Professional','94.27%','1991-11-25','Civil Service Commission - CAR','05-014800','1977-12-20'),(35,'E-1907','Career Service Eligibility - Professional','95.27%','1980-07-06','Civil Service Commission - CAR','05-014801','1978-08-22'),(36,'E-1908','Career Service Eligibility - Professional','96.27%','1987-01-19','Civil Service Commission - CAR','05-014802','1984-04-14'),(37,'E-1909','Career Service Eligibility - Professional','97.27%','1982-11-08','Civil Service Commission - CAR','05-014803','2001-02-02'),(38,'E-1910','Career Service Eligibility - Professional','98.27%','1988-11-18','Civil Service Commission - CAR','05-014804','1978-08-03'),(39,'E-1911','Career Service Eligibility - Professional','99.27%','1999-01-28','Civil Service Commission - CAR','05-014805','2016-01-08'),(40,'E-1912','Career Service Eligibility - Professional','80.27%','1976-10-28','Civil Service Commission - CAR','05-014806','2004-11-09'),(41,'E-1913','Career Service Eligibility - Professional','81.27%','1987-11-26','Civil Service Commission - CAR','05-014807','1994-02-14'),(42,'E-1914','Career Service Eligibility - Professional','82.27%','2006-08-25','Civil Service Commission - CAR','05-014808','2004-04-05'),(43,'E-1915','Career Service Eligibility - Professional','83.27%','1988-06-14','Civil Service Commission - CAR','05-014809','2012-07-17'),(44,'E-1916','Career Service Eligibility - Professional','84.27%','1979-02-14','Civil Service Commission - CAR','05-014810','1993-02-10'),(45,'E-1917','Career Service Eligibility - Professional','85.27%','2003-05-28','Civil Service Commission - CAR','05-014811','1980-11-05'),(46,'E-1918','Career Service Eligibility - Professional','86.27%','1988-11-19','Civil Service Commission - CAR','05-014812','2005-05-16'),(47,'E-1919','Career Service Eligibility - Professional','87.27%','2004-08-30','Civil Service Commission - CAR','05-014813','1987-11-06'),(48,'E-1920','Career Service Eligibility - Professional','88.27%','1995-03-24','Civil Service Commission - CAR','05-014814','1979-12-29'),(49,'E-1921','Career Service Eligibility - Professional','89.27%','2006-12-05','Civil Service Commission - CAR','05-014815','1975-09-03'),(50,'E-1922','Career Service Eligibility - Professional','90.27%','2017-03-28','Civil Service Commission - CAR','05-014816','2015-10-23');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,'ORD',NULL),(2,'FAD',NULL),(3,'LGCDD',NULL),(4,'LGMED',NULL);
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
  PRIMARY KEY (`educ_id`),
  KEY `fk_educationalbackground_1_idx` (`emp_id`),
  CONSTRAINT `fk_educationalbackground_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationalbackground`
--

LOCK TABLES `educationalbackground` WRITE;
/*!40000 ALTER TABLE `educationalbackground` DISABLE KEYS */;
INSERT INTO `educationalbackground` VALUES (1,'E-1873','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,'Best in Academics'),(2,'E-1873','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,'Best in Academics'),(3,'E-1873','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,'Cum Laude'),(4,'E-1874','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(5,'E-1874','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(6,'E-1874','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(7,'E-1875','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(8,'E-1875','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(9,'E-1875','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(10,'E-1876','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(12,'E-1876','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(13,'E-1876','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(14,'E-1877','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(15,'E-1877','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(16,'E-1877','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(17,'E-1878','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(18,'E-1878','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(19,'E-1878','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(20,'E-1879','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(21,'E-1879','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(22,'E-1879','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(23,'E-1880','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(24,'E-1880','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(25,'E-1880','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(26,'E-1881','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(27,'E-1881','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(28,'E-1881','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(29,'E-1882','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(30,'E-1882','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(31,'E-1882','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(32,'E-1883','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(33,'E-1883','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(34,'E-1883','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(35,'E-1884','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(36,'E-1884','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(37,'E-1884','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(38,'E-1885','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(39,'E-1885','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(40,'E-1885','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(41,'E-1886','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(42,'E-1886','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(43,'E-1886','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(44,'E-1887','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(45,'E-1887','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(46,'E-1887','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(47,'E-1888','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(48,'E-1888','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(49,'E-1888','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(50,'E-1889','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(51,'E-1889','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(52,'E-1889','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(53,'E-1890','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(54,'E-1890','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(55,'E-1890','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(56,'E-1891','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(57,'E-1891','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(58,'E-1891','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(59,'E-1892','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(60,'E-1892','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(61,'E-1892','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(62,'E-1893','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(63,'E-1893','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(64,'E-1893','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(65,'E-1894','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(66,'E-1894','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(67,'E-1894','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(68,'E-1895','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(69,'E-1895','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(70,'E-1895','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(71,'E-1896','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(72,'E-1896','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(73,'E-1896','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(74,'E-1897','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(75,'E-1897','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(76,'E-1897','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(77,'E-1898','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(78,'E-1898','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(79,'E-1898','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(80,'E-1899','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(81,'E-1899','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(82,'E-1899','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(83,'E-1900','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(84,'E-1900','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(85,'E-1900','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(86,'E-1901','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(87,'E-1901','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(88,'E-1901','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(89,'E-1902','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(90,'E-1902','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(91,'E-1902','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(92,'E-1903','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(93,'E-1903','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(94,'E-1903','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(95,'E-1904','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(96,'E-1904','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(97,'E-1904','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(98,'E-1905','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(99,'E-1905','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(100,'E-1905','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(101,'E-1906','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(102,'E-1906','','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(103,'E-1906','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(104,'E-1907','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(105,'E-1907','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(106,'E-1907','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(107,'E-1908','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(108,'E-1908','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(109,'E-1908','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(110,'E-1909','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(111,'E-1909','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(112,'E-1909','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(113,'E-1910','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(114,'E-1910','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(115,'E-1910','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(116,'E-1911','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(117,'E-1911','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(118,'E-1911','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(119,'E-1912','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(120,'E-1912','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(121,'E-1912','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(122,'E-1913','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(123,'E-1913','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(124,'E-1913','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(125,'E-1914','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(126,'E-1914','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(127,'E-1914','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(128,'E-1915','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(129,'E-1915','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(130,'E-1915','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(131,'E-1916','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(132,'E-1916','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(133,'E-1916','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(134,'E-1917','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(135,'E-1917','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(136,'E-1917','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(137,'E-1918','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(138,'E-1918','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(139,'E-1918','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(140,'E-1919','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(141,'E-1919','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(142,'E-1919','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(143,'E-1920','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(144,'E-1920','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(145,'E-1920','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(146,'E-1921','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(147,'E-1921','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(148,'E-1921','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL),(149,'E-1922','Elementary','Don Mariano Elementary School','Primary Education',NULL,NULL,NULL,NULL,NULL),(150,'E-1922','Secondary','Don Mariano Highschool','High School',NULL,NULL,NULL,NULL,NULL),(151,'E-1922','College','Univeristy of Baguio','Bachelor of Science in Computer Science',NULL,NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`emp_id`),
  KEY `fk_employee_1_idx` (`position_id`),
  CONSTRAINT `fk_employee_1` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('E-1873','Pangan','Saldy','Santos','1985-02-28','M','Married',1.68,75,'O','CM-2052757		','1290-0052-8340		','01-1224965-2		','916-245-161		','Filipino','9','Magsaysay Drive','NULL','Loakan Proper','Baguio','Benguet','2600','9','Magsaysay Drive','NULL','Loakan Proper','Baguio City','Benguet','2600','+63744429030	','639396559356','saldypapatiw@gmail.com','Philippines','dfsdf',1,'Active'),('E-1874','Guevarra','Rodel','Dela Cruz','1970-06-24','M','Widowed',47.85,39.32,'O','lk-7114903','1835-9565-535','36-697682-2','888-818-921','Modi sunt.','25','7074 Albina Forges Apt. 659','18450 Marvin Forks Apt. 776','972 Eldred Light Apt. 442','Namefort','Bradtkehaven','3390','22','338 Gulgowski Roads Apt. 372','42046 Frankie Circle','716 Keeling Pine Apt. 641','Addisonshire','East Jenifer','8638','9814422885','9901909130','Quas.@gmail.com','Uganda','Modi.',2,'Active'),('E-1875',NULL,NULL,NULL,'1990-04-12','F','Widowed',67.18,103.83,'A','zq-3821080','66-5144-432','97-519176-9','138-869-793','Quia ipsa.','53','21727 Dach Villages','1767 Velva Estates Apt. 582','882 Harris Groves Apt. 694','South Tryciaside','Rippinland','7986','12','349 Jaquelin Mountains Apt. 218','421 Benny Divide','682 Cassin Plaza','Mannside','Albaburgh','8861','9930934191','9443596322','Inventore.@gmail.com','Afghanistan','In nihil.',3,NULL),('E-1876',NULL,NULL,NULL,'1989-10-28','M','Widowed',62.81,97.21,'O','ok-9130351','8955-5289-6804','62-766241-3','202-808-416','In et.','37','128 Violette Skyway','3878 Katrine Garden','3250 Osinski Roads','Hansenhaven','Hansenside','5829','11','418 Leda Forge Suite 288','9568 Adams Trace','16314 Schumm Falls','Mosciskibury','Randybury','8874','9949516429','9584586262','Neque.@gmail.com','Tokelau','Assumenda.',4,NULL),('E-1877',NULL,NULL,NULL,'1974-07-19','F','Widowed',62.45,78.28,'B','xw-1805912','1756-2053-5251','25-138313-6','9-614-502','Suscipit.','28','61030 Jodie Avenue Suite 281','61762 Kaden Place','96056 Nat Springs Suite 768','Lake Shyannefort','West Rolando','7915','9','1740 Delbert Forges','48698 Carlos Garden Suite 700','7498 Irma Trail Suite 688','New Garth','Terryside','255','9458282242','9667233409','Omnis.@gmail.com','Micronesia','Quasi.',5,NULL),('E-1878',NULL,NULL,NULL,'1974-04-16','M','Married',44.02,81.96,'A','vy-938899','1637-2160-192','51-523295-3','745-37-573','Ea omnis.','88','6182 Oral Path Suite 692','9315 Amara Trace Suite 572','45166 Rollin Mall','Gutkowskimouth','Loyhaven','2025','75','28269 Keeling Harbor Apt. 581','70113 Hermann Dale','6536 Grady Lakes Suite 756','New Helga','Klockoshire','6618','9273978277','9730043871','Modi.@gmail.com','Isle of Man','Sed.',6,NULL),('E-1879',NULL,NULL,NULL,'1990-09-03','M','Single',43.77,66.99,'B','en-9239650','8684-7549-7138','54-25054-5','972-979-751','Voluptas.','9','72937 Guiseppe Plaza Suite 971','3099 Patience Curve Suite 804','78502 Ora Plains Suite 516','New Xzavierchester','South Clement','3960','77','7980 Rylee Route','951 Weber Circles Apt. 048','966 Grimes Radial','Conroyville','Port Goldenchester','2586','9558753493','9149847739','Dolor.@gmail.com','Ireland','Quasi.',7,NULL),('E-1880',NULL,NULL,NULL,'1981-11-16','F','Married',58.1,82.45,'B','qu-7387188','8892-5908-1220','71-789797-3','381-355-428','Vitae et.','59','3825 Zemlak Harbor Suite 628','8653 Green Unions','7258 Devan Club','Fayefurt','South Parkerport','1635','3','8993 Jerde Prairie','2680 Balistreri Park','31191 Tevin Viaduct Suite 100','New Stacy','Port May','701','9276472373','9915712360','Non.@gmail.com','Jersey','Alias.',8,NULL),('E-1881',NULL,NULL,NULL,'1973-09-14','M','Married',60.5,52.79,'AB','qu-7387189','8892-5908-1221','71-789797-4','381-355-429','Vitae ets','60','3826 Zemlak Harbor Suite 628','8654 Green Unions','7259 Devan Club','Fayefurt','South Parkerport','1636','4','8994 Jerde Prairie','2681 Balistreri Park','31192 Tevin Viaduct Suite 100','New Stacy','Port May','702','41276','75032','z@gmail.com','Jersey','Alias.',9,NULL),('E-1882',NULL,NULL,NULL,'1972-04-01','M','Single',51.25,97.86,'B','vt-6556160','5508-7422-2277','51-652499-4','276-420-538','Nobis.','73','86246 Alex Run','6715 Anais Common','57263 Upton Gateway','North Dudleyhaven','West Kristoferbury','1360','32','209 Kris Park','866 Renner Green Apt. 646','38514 Stracke Gateway','Port Mortimer','Cleoraton','8491','9686169754','9899692066','Harum.@gmail.com','Kazakhstan','Nostrum.',10,NULL),('E-1883',NULL,NULL,NULL,'1989-08-26','F','Widowed',43.11,83.56,'A','ho-1959213','1491-3617-8683','58-741080-2','345-606-509','Minima.','34','43210 Kuhn Causeway','355 Purdy Fort','292 Syble Vista','South Amina','South Sammy','8109','93','3638 Goodwin Trail','318 Walsh Forges Apt. 237','77835 Genevieve Islands','Nickfurt','New Keven','8376','9424313173','9619217664','Quia.@gmail.com','Myanmar','Aut.',11,NULL),('E-1884',NULL,NULL,NULL,'1973-05-19','M','Married',53.57,86.67,'AB','ld-6171835','1909-2595-9644','85-605235-2','290-684-546','Sit.','99','84810 Ward Avenue','99532 Braxton Cape Suite 195','167 Dooley Extension Suite 292','Lake Earlinetown','Corkerybury','1542','99','68132 Jast Avenue Apt. 471','6193 Farrell Groves Apt. 960','22320 Kulas Camp','Monahanville','South Amandaburgh','3960','9876943541','9852863400','Nam enim.@gmail.com','Timor-Leste','Omnis.',12,NULL),('E-1885',NULL,NULL,NULL,'1981-05-13','M','Widowed',46.51,112.43,'B','qe-8719980','6923-645-2978','73-435588-2','930-930-32','Velit.','31','413 Jude Springs','356 Veum Estate','27431 Alexa Glen Suite 800','Lake Carmela','Labadieburgh','3976','79','7619 Elody Harbors','989 Malvina Station Apt. 431','2507 Lynch Ferry','Lake Else','Kelsiehaven','9731','9430935463','9551207582','Est culpa.@gmail.com','Marshall Islands','Nobis.',13,NULL),('E-1886',NULL,NULL,NULL,'1970-01-01','F','Married',50.68,52.42,'B','hv-7098209','1503-1583-5901','53-84626-5','889-777-514','Vitae.','52','90788 McClure Forges','6040 Reichert Crescent','2348 Norris Ranch Suite 794','South Meredith','South Veronicafurt','9129','15','778 Emmie Locks Suite 974','8354 Ryan Estates','9408 Homenick Mills Apt. 048','Opalview','Klinghaven','7394','9564953020','9296424317','Itaque.@gmail.com','Senegal','Incidunt.',14,NULL),('E-1887',NULL,NULL,NULL,'1976-12-16','M','Married',47.25,30.43,'O','py-5352250','7310-8955-6488','8-158826-2','645-150-855','Expedita.','58','9427 Pinkie Squares','857 Ana Camp','15815 Lueilwitz Spurs','West Adriana','New Melynaland','7955','73','5921 Carli Summit Apt. 291','7416 Orrin Plains Apt. 263','3766 Bartell Land Apt. 646','Kennedystad','East Freddymouth','7424','9806594433','9290225860','Nihil.@gmail.com','Morocco','Qui.',15,NULL),('E-1888',NULL,NULL,NULL,'2013-01-10','M','Married',53.81,35.76,'AB','py-5352251','7310-8955-6489','8-158826-3','645-150-856','Expedita.','59','9428 Pinkie Squares','858 Ana Camp','15816 Lueilwitz Spurs','West Adriana','New Melynaland','7956','74','5922 Carli Summit Apt. 291','7417 Orrin Plains Apt. 263','3767 Bartell Land Apt. 646','Kennedystad','East Freddymouth','7425','81710','674982','Nihil.@gmail.com','Morocco','Qui.',16,NULL),('E-1889',NULL,NULL,NULL,'1970-06-03','M','Single',47.76,63.99,'A','cr-1829469','7749-7472-1103','61-138229-1','446-789-666','Magni.','80','35656 Kshlerin Groves Suite 583','79356 Stracke Well','946 Hansen Station','Wendytown','Lake Kelsiside','7819','63','346 Harmon Squares','634 Bartoletti Locks Suite 539','12872 Mante Trafficway','East Berniecechester','South Edd','8921','9186580579','9791515501','Saepe ea.@gmail.com','Yemen','A debitis.',17,NULL),('E-1890',NULL,NULL,NULL,'2014-02-06','M','Single',62.35,73.86,'AB','cr-1829470','5319-7490-9471','45-572136-4','415-5-980','Magni.','57','6986 Destany Greens','33625 Harvey Valley','15725 Ondricka Shoals','Quigleyside','Simeonmouth','8694','58','214 Kiehn Streets Apt. 058','80692 Runte Estates Apt. 566','50429 Deven Canyon','Nicolasville','North Kielside','3296','620375','843894','Sed iure.@gmail.com','French Guiana','Esse non.',18,NULL),('E-1891',NULL,NULL,NULL,'1973-08-13','M','Married',68.91,87.38,'A','fq-2245810','8584-3479-1840','71-680078-5','471-658-254','Aperiam.','71','1686 Hassan Drive','84681 Ullrich Course Apt. 059','9934 Jacobi Freeway','Elvisfurt','Daynemouth','8567','16','824 Keebler Parkways Suite 468','155 Eladio Knolls','1276 Champlin Valleys Apt. 510','West Cierraberg','Croninmouth','1662','9480670851','9160105697','Non.@gmail.com','United States Minor Outlying Islands','Repellat.',19,NULL),('E-1892',NULL,NULL,NULL,'1976-12-02','M','Married',55.48,44.07,'A','lj-3455055','7073-2268-5276','42-820841-9','576-982-826','Nobis.','59','27280 Odie Fort Apt. 775','530 Elsie Spur','26492 Dasia Plain Apt. 905','Port Katlynntown','West Holliechester','1517','65','131 Dolly Burg','5340 Rice Cliffs Suite 398','4719 Nader Locks Suite 427','Aileenside','East Medaberg','6218','9519690367','9707215354','Molestiae.@gmail.com','Peru','Ut.',20,NULL),('E-1893',NULL,NULL,NULL,'1976-12-23','F','Widowed',50.09,97.14,'B','jj-2157770','1737-4228-3437','17-338621-5','6-166-526','Nostrum.','40','57146 Dach Estate','771 Rosenbaum Ramp','395 Crona Islands','Port Zackary','East Emie','4619','67','275 Harber Crossing','11814 Giovanna Flats','130 Pfannerstill Point','South Nikita','Framiberg','9507','9644389829','9388368580','Iure.@gmail.com','Netherlands','Et.',21,NULL),('E-1894',NULL,NULL,NULL,'1988-08-19','F','Widowed',60.52,59.13,'A','xx-5946559','4831-2436-4681','1-870379-2','28-8-794','Ut qui.','27','65307 Eveline Island','618 Morissette Springs Apt. 091','9730 Neal Camp','Stokesland','Littlehaven','5809','1','16156 Cristopher Crossing','9909 Schmeler Summit','7364 Krista Cliffs Suite 074','North Richard','Waelchiville','7326','9753272438','9802107798','Enim.@gmail.com','Ecuador','Quas.',22,NULL),('E-1895',NULL,NULL,NULL,'1971-04-20','M','Single',67.15,96.66,'O','jv-2128476','9449-9814-2712','91-444505-7','356-259-363','Totam.','47','9094 Madyson Prairie','6530 Kenna Extension','280 Lakin Keys Suite 776','Kayleeberg','Rolfsonton','5312','69','558 Wiza Hollow','24994 Roob Rest Apt. 707','211 Bode Neck','Nicholausbury','West Amiebury','3688','9675066465','9353654327','Dolorem.@gmail.com','Somalia','Qui.',23,NULL),('E-1896',NULL,NULL,NULL,'1989-02-01','F','Widowed',56.75,101.44,'A','an-1535639','671-4202-3064','22-998644-8','802-938-230','Eius.','75','268 Gust Fort','3454 Kemmer Corner','883 Muller Prairie','Kristybury','North Delia','2585','25','54981 Juliet Brook','13699 Bailey Brook Suite 781','43494 Maryse Parkways','Todton','Krajcikton','3459','9704139965','99109814','Omnis.@gmail.com','Tokelau','Quibusdam.',24,NULL),('E-1897',NULL,NULL,NULL,'1976-04-04','F','Married',58.42,84.42,'AB','ef-667758','2126-2488-3729','90-34496-7','248-884-264','Sit.','38','49894 Cummings Shoals','86296 Rippin Wells','167 Molly Plaza Apt. 492','West Mayraport','Elizabethmouth','8802','76','8384 Purdy Crossroad Suite 542','31065 Wyman Manor','33849 Weldon Via','North Meghan','Albertamouth','355','9382726842','9869229731','Minima.@gmail.com','Guam','Et quis.',25,NULL),('E-1898',NULL,NULL,NULL,'1970-01-01','F','Widowed',54.74,111.58,'A','iz-7141459','5785-2887-1172','71-53904-0','612-528-448','Officiis.','44','533 Tillman Circle','137 Manuela Mount','1917 Raymundo Run','Rhetttown','Guiseppebury','2584','80','36502 Sarina Brook Apt. 078','795 Eva Center Suite 490','700 Lucy Row','O\'Keefeland','Lake Gretchenfurt','8295','9600112818','9239003586','Occaecati.@gmail.com','India','Qui.',26,NULL),('E-1899',NULL,NULL,NULL,'1987-12-10','M','Widowed',46.51,49.93,'B','nq-7727123','599-8746-8635','80-365580-3','868-336-587','Tempore.','53','292 Mavis Terrace Apt. 359','81550 Audie Lakes Suite 647','19128 Kieran Mountain Apt. 016','Willton','Dudleyhaven','7908','89','39113 Hilton Crest Apt. 859','28806 Wunsch Crescent','75532 Collier Point','East Ruthechester','Beattymouth','6228','9182428586','9412692548','Mollitia.@gmail.com','Honduras','Et non.',27,NULL),('E-1900',NULL,NULL,NULL,'2016-10-21','F','Married',61.55,75.06,'O','-1837567','1697-1673-8380','49-476229-9','946-84-501','Adipisci.','40','99117 Ford Inlet Apt. 025','8740 Maymie Pass Apt. 873','3848 Lueilwitz Trail','Lake Adeleshire','Zemlakstad','7444','12','29666 Mayra Bypass','62205 Maximillia Ford Apt. 977','85973 Wisozk Greens Suite 020','Brookside','Lake Grace','7637','861174','577195','Explicabo.@gmail.com','Cuba','Deserunt.',28,NULL),('E-1901',NULL,NULL,NULL,'1990-02-14','M','Widowed',42.99,83.25,'AB','vr-1039864','9633-5300-354','89-132178-0','569-785-305','Cumque.','16','820 Wilderman Lodge Suite 535','47853 Carol Divide','7798 Harber Island Apt. 501','Lake Narcisotown','Port Cortez','1565','48','86837 Pouros Extension','6048 Homenick Ridges Apt. 258','97787 Stanton Orchard','Cristalmouth','New Ellieland','8274','9516558975','9527123360','Aut.@gmail.com','Mongolia','Qui et.',29,NULL),('E-1902',NULL,NULL,NULL,'1970-01-07','M','Widowed',60.83,86.23,'A','iz-1170959','4198-7037-2045','34-849341-3','678-419-613','Aut quas.','54','293 Cale Squares Suite 802','7854 Kolby Isle','4418 Brandt Mission','Nyahborough','East Frieda','440','50','41827 Jasmin Dale Apt. 009','86901 Jermain Lake','75928 Brandt Square Suite 287','Lake Della','Lake Sigurd','7881','9901546489','9227554779','Et earum.@gmail.com','Zambia','In omnis.',30,NULL),('E-1903',NULL,NULL,NULL,'1978-06-21','M','Widowed',51.6,96.01,'O','my-9375773','692-1813-4861','50-713962-0','38-383-785','Aut quis.','97','9974 Percy Common Apt. 917','3342 Schiller Mountain Suite 191','91137 Angelo Locks Apt. 418','Lake Michelemouth','Wunschstad','1143','47','557 Milan Cliff','481 Rex Crest Suite 244','524 Kohler Shoal','East Elian','Ankundingfurt','6997','9381163555','9389444157','Fugiat.@gmail.com','France','Sint est.',31,NULL),('E-1904',NULL,NULL,NULL,'1988-03-24','M','Married',55.92,42.06,'AB','oo-7432053','5311-6944-2405','6-294716-2','535-471-163','Iste.','86','86528 Christiansen Centers Apt. 191','78374 Breitenberg Walk','7385 Boehm Port','Emeliefort','Koryshire','757','95','69356 Lonny Causeway Suite 933','42090 Edmond Via','88231 Purdy Islands','Adamsmouth','West Ottiliechester','2353','9211556683','9626413502','Qui.@gmail.com','Canada','In nihil.',32,NULL),('E-1905',NULL,NULL,NULL,'1971-10-05','M','Widowed',63.66,113.12,'O','mk-5990818','4399-8651-8709','34-569779-8','339-388-631','Eum.','23','8412 Durgan Village Apt. 706','614 Josephine Drive','1142 Hessel Rapid Apt. 032','South Antonette','Trantowchester','1036','99','178 Mante Forges','19120 Raoul Passage Apt. 228','8396 Albert Union','South Bryana','Lake Gregoria','7095','9441394213','9613684325','Facilis.@gmail.com','Netherlands Antilles','Assumenda.',33,NULL),('E-1906',NULL,NULL,NULL,'2016-12-27','F','Widowed',60.28,92.61,'A','-1446880','2755-6150-3019','87-780104-9','916-903-357','Aliquid.','68','3177 Thelma Throughway','163 Laisha Mission Suite 079','503 Maggio Via','East Elysemouth','Albertostad','2709','87','66363 Alva Light Suite 975','7215 O\'Reilly Turnpike Apt. 638','3087 Medhurst Streets','North Ned','Okunevamouth','8488','184392','243964','Quaerat.@gmail.com','Reunion','Vero.',34,NULL),('E-1907',NULL,NULL,NULL,'1975-10-05','M','Married',63.86,115.79,'A','bd-8364791','8193-172-828','8-680276-1','834-637-74','Quidem.','28','729 Jaycee Grove Apt. 781','3859 Golda Ferry Suite 446','145 Schowalter Ways','Kemmerstad','Schinnerview','4325','47','4511 Noemy Circle','1738 Shanahan Flats Suite 467','5462 Gutmann Roads','Lake Johathanburgh','Eunachester','3698','9865753498','9933180251','Dolorem.@gmail.com','Taiwan','Est sed.',35,NULL),('E-1908',NULL,NULL,NULL,'1980-10-27','F','Widowed',40.32,115.51,'O','ro-6755044','3072-9020-2995','50-108769-5','102-280-675','Esse quia.','28','377 Casper Fall','70135 Reinhold Rest','7440 Abagail Ridge Suite 175','Erichaven','Mayamouth','9283','23','35007 Bud Curve','76528 Skiles Manors','209 Dickinson Crossing','Rohanport','Adelinefurt','3687','9829690109','9459388536','Est rerum.@gmail.com','Guinea','Et.',36,NULL),('E-1909',NULL,NULL,NULL,'1970-11-02','M','Widowed',69.15,88.56,'A','td-6463347','3753-9797-5356','94-46606-4','841-588-442','Dolores.','49','314 Rose Radial Suite 801','89887 Orval Neck','851 Crona Parks','South Isaac','Pfefferville','896','45','62233 Naomi Glens Apt. 980','1523 Lubowitz Run','883 Adrien Cape','South Ethelport','West Benton','1454','9654603572','9193024811','Autem.@gmail.com','Nicaragua','Et animi.',37,NULL),('E-1910',NULL,NULL,NULL,'2013-06-25','F','Married',47.22,38.2,'O','c-9228338','9509-6311-7296','89-885071-2','115-788-792','Deserunt.','37','31003 Sipes Stravenue','429 Zemlak Stream','333 Brown Trail Suite 259','East Alexandre','New Victoria','5536','65','8524 Bruen Corner Apt. 423','2165 Keebler Lock','85263 Dickinson Passage','Jermainborough','Lake Zacherychester','6869','68650','35118','Suscipit.@gmail.com','Cook Islands','Animi.',38,NULL),('E-1911',NULL,NULL,NULL,'1987-12-09','F','Single',64.87,91.62,'AB','is-675848','7608-4529-9836','59-896338-4','574-57-202','Hic in.','67','1800 Luettgen Falls','376 Kutch Mews Suite 723','704 Jessyca Oval','Kuhnton','South Sid','9922','50','59346 Lehner Mountains Apt. 550','97698 Uriah Fields Apt. 158','4071 Bahringer Falls Suite 130','Port Erlingshire','Roseview','751','9811269568','9688181997','Aut.@gmail.com','Poland','Autem.',39,NULL),('E-1912',NULL,NULL,NULL,'1972-06-14','F','Married',46.29,33.09,'AB','qn-9381180','6342-6057-2600','45-785630-1','646-387-473','Excepturi.','35','36205 Veum Inlet Suite 720','16669 Pagac Island','2064 Joaquin Bridge Apt. 938','Larsonview','Lake Axel','7901','70','8882 Haylie Heights Suite 046','112 Mills Drive','3003 Myriam Roads','Raufort','Port Bonitaview','3633','9734931196','9194692688','Error.@gmail.com','Angola','Omnis et.',40,NULL),('E-1913',NULL,NULL,NULL,'1981-02-23','M','Single',43.89,115.31,'B','ik-3825930','3504-5124-7440','21-416177-2','851-187-887','Dolorum.','58','96908 Predovic Manor Suite 259','1366 Goodwin Tunnel Apt. 640','791 Burnice Brook','East Johnathanshire','Gretaside','5684','42','16334 Renner Stravenue Suite 491','49855 Precious Stream Apt. 671','75976 Harley Dale','Annamarieberg','South Floridaside','7297','994375787','9356672399','Et quia.@gmail.com','Mayotte','Qui et in.',41,NULL),('E-1914',NULL,NULL,NULL,'1979-07-01','M','Widowed',52.82,34.05,'A','ev-7736901','3982-5489-442','95-845324-7','877-936-75','Facilis.','57','722 Toy Road','9248 Kyler Highway Suite 241','76856 Vernice Shores Apt. 831','Willburgh','New Rosalindahaven','5069','80','310 Waelchi Union Suite 579','538 Nienow Passage','86239 Damaris Crossroad Apt. 936','Port Martina','Kellyhaven','2959','9829086587','995784944','Modi sit.@gmail.com','Equatorial Guinea','Molestiae.',42,NULL),('E-1915',NULL,NULL,NULL,'1997-12-15','F','Married',65.3,54.77,'A','ev-7736902','3982-5489-443','95-845324-8','877-936-76','Facilis.','58','723 Toy Road','9249 Kyler Highway Suite 241','76857 Vernice Shores Apt. 831','Willburgh','New Rosalindahaven','5070','81','311 Waelchi Union Suite 579','539 Nienow Passage','86240 Damaris Crossroad Apt. 936','Port Martina','Kellyhaven','2960','896613','686300','b@gmail.com','Equatorial Guinea','Molestiae.',43,NULL),('E-1916',NULL,NULL,NULL,'2008-11-20','M','Single',61.55,72.7,'A','ev-7736903','4748-2039-3597','87-793921-4','597-924-860','Dolores.','87','34075 Mueller Mall','8849 Ruby Grove','71137 Schaefer Highway','West Shayleechester','East Orvalmouth','7373','29','259 Kub Plaza Suite 375','87700 Roob Drives Apt. 528','3848 Jerald Knoll Apt. 124','East Zoila','Boehmport','2563','479876','828564','Placeat.@gmail.com','Israel','Et hic.',44,NULL),('E-1917',NULL,NULL,NULL,'1970-01-01','M','Married',57.05,67.65,'O','yj-5785299','1744-6848-6307','57-629614-9','259-589-411','Error.','66','3809 Kautzer Fields','266 Sally Turnpike Suite 777','987 Arielle Gateway','Boyleside','New Tracey','7967','9','6450 Conner Corner','875 Alanna Harbors Apt. 923','31564 Caitlyn Harbor Apt. 845','Remingtonborough','Hayesview','4208','9297147765','9246157157','Tenetur.@gmail.com','Latvia','Quae eius.',45,NULL),('E-1918',NULL,NULL,NULL,'1977-04-22','M','Widowed',41.12,74.43,'AB','wr-8663388','6500-7925-3601','62-427093-1','759-977-460','Assumenda.','63','5198 Paolo Hollow Suite 934','67831 Steuber Dale','56605 Rowland Crescent','Thomasberg','Veronaville','9542','19','468 Stroman Pass Suite 178','9086 Mann Garden Suite 331','10279 Roman Gardens','East Aniyah','Kuhlmanmouth','4515','9101565778','9643566404','Expedita.@gmail.com','Lao People\'s Democratic Republic','Iusto.',46,NULL),('E-1919',NULL,NULL,NULL,'1982-01-23','M','Widowed',50.15,65.12,'AB','wf-4736401','2377-653-3705','63-337162-1','670-753-342','Et.','87','270 Frieda Valleys Apt. 081','4325 Queenie Drives','7177 Christiansen Trace','Port Erlingtown','New Saigefort','6531','33','77840 Magdalen View','94249 Susana Ports','64185 Reichert Common Apt. 472','Isobelside','Lake Enosstad','6100','9490712042','987851406','Voluptate.@gmail.com','Indonesia','Assumenda.',47,NULL),('E-1920',NULL,NULL,NULL,'1974-01-11','M','Single',43.33,33.5,'AB','ib-3325613','5388-8475-777','97-346785-3','482-491-567','Ut non.','63','238 Florida Trace','3242 Anderson Pine Suite 578','91283 Lazaro Port','South Willy','Hassieport','1290','95','89775 Stehr Lodge Suite 132','2444 Goldner Bypass','698 Mertz Corner Apt. 292','New Laurianne','Marcusberg','6624','9342989646','9994272087','Tempore.@gmail.com','Saudi Arabia','Maiores.',48,NULL),('E-1921',NULL,NULL,NULL,'1985-01-21','M','Married',55.24,110.85,'A','-5676289','3688-7200-6863','9-257841-9','107-820-408','Sed.','13','81017 Bode Shore','310 Bartell Place','22048 Kub Flat','Weimannmouth','Haskellberg','6821','79','86358 Bertha Plaza','848 Kuhlman Spur Suite 737','66971 Connelly Dale','West Gladycemouth','North Xanderstad','4963','390','700059','Molestiae.@gmail.com','Poland','Aut sint.',49,NULL),('E-1922',NULL,NULL,NULL,'1976-05-25','M','Married',48.79,61.86,'A','jm-4049822','2641-393-9438','55-640767-3','64-828-253','Aliquam.','92','473 Stoltenberg Heights','5179 Maxwell Fords Apt. 441','67598 Monserrate Lane','West Rosaliachester','Demarcuschester','2753','12','736 Monahan Road Apt. 419','77101 Marlin Ports Suite 762','143 Bayer Turnpike Suite 986','Hahnville','Mertzmouth','9443','9223104420','9504531836','Sed.@gmail.com','Kuwait','Tenetur.',50,NULL);
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
  PRIMARY KEY (`voluntaryWork_id`),
  KEY `fk_empvolu_1_idx` (`emp_id`),
  CONSTRAINT `fk_empvolu_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empvolu`
--

LOCK TABLES `empvolu` WRITE;
/*!40000 ALTER TABLE `empvolu` DISABLE KEYS */;
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
  PRIMARY KEY (`workExperience_id`),
  KEY `fk_empwork_1_idx` (`emp_id`),
  CONSTRAINT `fk_empwork_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `spouseOccupation` varchar(45) DEFAULT NULL,
  `spouseEmployerBusiness` varchar(45) DEFAULT NULL,
  `spouseBusinessAddress` varchar(45) DEFAULT NULL,
  `spouseTelephoneNo` varchar(13) DEFAULT NULL,
  `fatherName` varchar(45) DEFAULT NULL,
  `motherName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`family_id`),
  KEY `fk_familybackground_1_idx` (`emp_id`),
  CONSTRAINT `fk_familybackground_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familybackground`
--

LOCK TABLES `familybackground` WRITE;
/*!40000 ALTER TABLE `familybackground` DISABLE KEYS */;
INSERT INTO `familybackground` VALUES (1,'E-1873','Uy, Javy Brillantez','N/A','N/A','N/A','N/A','Papat-iw, Ignacio Lidawan Sr.','Bugtong, Josefina Ramirez'),(2,'E-1874','Fatima Quitzon','Aut fuga quia dolorem et.','Officiis sint nesciunt velit.','Numquam sit nam rerum ab.','710407','Duncan Mohr','Mia Blanda'),(3,'E-1875','Blaise Schuster','Unde et et quam in.','Dolor reiciendis et ad.','Aut odio incidunt recusandae.','62511','Mr. Lazaro Gerlach','Dianna Dickens'),(4,'E-1876','Prof. Dexter Kuhn III','Ut sequi vel dolorem nam.','Ut nesciunt velit sapiente.','Quaerat at et vero.','100491','Emiliano Wisoky','Mrs. Aida West MD'),(5,'E-1877','Dr. Johnathon Blick IV','Minus illo et at quas natus.','Ut consequuntur est quo.','Dicta at ducimus aliquam.','97324','Silas Smitham PhD','Valerie Ruecker'),(6,'E-1878','Dr. Ricardo Schuppe','Eum recusandae sed enim quo.','Consequatur id eum ut.','Aut aut distinctio deleniti.','535050','Jake Ebert','Chanel Weissnat'),(7,'E-1879','Garrison Jast','Hic hic enim quis id et et.','At quo est est.','Est nulla nostrum optio non.','42818','Donnell Stokes','Mrs. Bridget Schuppe IV'),(8,'E-1880','Nelson Hansen','A ea ut qui placeat et.','Nobis aut et dignissimos.','At amet tempore illo.','76346','Edison Witting Sr.','Shemar Jast'),(9,'E-1881','Chadrick Boyle','Non autem rerum quia.','Qui et culpa id illum.','Autem sed soluta sit maiores.','220206','Darrel Grant','Genesis Grady'),(10,'E-1882','Sabryna Howe','Quas ab illo rem.','Facilis eum et voluptas.','Et est at repellendus.','192497','Scotty Gerhold','Dr. Amelia Kovacek'),(11,'E-1883','Johnathon D\'Amore','Ea ad est dicta deleniti.','Iure in impedit nesciunt cum.','Qui eos minima ab sequi.','417947','Herbert Fay DVM','Shea Dickinson I'),(12,'E-1884','Arne Nicolas','Et molestiae rerum magnam.','Sed ut dolorem nihil.','Porro neque modi velit.','731196','Mr. Emmitt D\'Amore DVM','Flossie Friesen'),(13,'E-1885','Lucile Kemmer','Alias qui officiis hic rerum.','Sed minima velit voluptatum.','Est et alias vero est ut.','152501','Kristopher Kihn PhD','Marjorie Thiel II'),(14,'E-1886','Jarret Gusikowski','Atque ut iusto in.','Impedit mollitia veniam aut.','Distinctio et aut iure.','466874','Mr. Trent Conroy I','Bella Metz'),(15,'E-1887','Dr. Rudy Zulauf','Dolor maiores laborum et.','Quis nisi dolore soluta eius.','Dolorum sequi ab ut fuga.','220813','Aric Keeling','Pamela Hessel'),(16,'E-1888','Aisha Lehner','Ea eius et ea facilis.','Vel cum ut autem.','Tenetur in maiores cum qui.','239211','Vinnie Moen','Laisha Ullrich'),(17,'E-1889','Ms. Gabriella Rutherford Jr.','Ab sit est ea in qui.','Rerum ea sunt explicabo qui.','Sint eius id sint voluptate.','15760','Reese Swaniawski','Gertrude Runte'),(18,'E-1890','Mollie Kautzer','Quae quo eaque enim.','Et quia omnis velit ex est.','Perferendis ea alias beatae.','535545','Hal Stokes','Liza Watsica II'),(19,'E-1891','Hope Hegmann','Et voluptas dolor dolorem.','Ex ea modi aut aliquid.','Quo iste eum est omnis.','454549','Reuben Kihn I','Ms. Hope Roob'),(20,'E-1892','Ulises Boyle','Inventore soluta quas quasi.','Qui molestiae sed culpa.','Illum quia qui nam et.','714678','Louvenia Graham','Leonora Hilll'),(21,'E-1893','Prof. Zane Wiegand','Sit odio quos dolor.','Ea rerum ea voluptatibus.','Ut neque ex nostrum.','746504','Shane Boyle','Mercedes Emmerich Jr.'),(22,'E-1894','Mr. Monserrate Parisian','Quam dolorem quidem dicta id.','Sed qui dolor error sed et.','Rerum quas possimus quod.','626845','Mr. Orin Johnston','Libby Kerluke'),(23,'E-1895','Chaim Harvey IV','Ut et fugit quaerat error.','Ut esse in facilis laborum.','Corrupti ut ipsa vitae.','891900','Myles Cummings','Dr. Jade Hauck V'),(24,'E-1896','Miss Kathryn Mitchell DDS','Autem id aut eaque nulla.','Quos maiores a sed molestias.','Ipsam qui est sunt alias.','85499','Patrick Schmidt III','Miss Emely Windler Jr.'),(25,'E-1897','Prof. William Torphy I','Ex iure natus occaecati a.','Eum cum qui provident et non.','Nihil cum nulla eos iste in.','694889','Dr. Ross Effertz','Claudia Cruickshank'),(26,'E-1898','Flossie Heller','Voluptatum dolor cumque ea.','Cum id mollitia nesciunt.','Aliquid fugiat quisquam aut.','185433','Murphy Oberbrunner','Melyna Wehner'),(27,'E-1899','Mr. Rodger Labadie III','Ut qui suscipit facere.','Fugiat molestiae ut sint.','Enim aut ut deleniti beatae.','455927','Prof. Barrett Donnelly','Bettye Rippin'),(28,'E-1900','Jeramy Bernier','Possimus autem sed nam.','Sint magni voluptas ut cum.','Est omnis quo corporis.','693114','Ewell Shanahan','Josianne Waelchi III'),(29,'E-1901','Jamel Powlowski','Commodi atque tempore fugiat.','Ut qui velit ipsam eum rerum.','Magni doloremque unde magnam.','773237','Modesto Schultz','Aniya Shanahan'),(30,'E-1902','Krystal Bednar','Aut autem facilis qui ut.','Unde similique excepturi ut.','Et enim est sunt.','88946','Amparo Koelpin','Alayna Friesen'),(31,'E-1903','Prof. Daija White IV','Pariatur ad dicta autem.','Quod ipsa harum eum quia.','Sed tenetur aut a eum.','980331','Stephan Conroy DVM','Dr. Laurence Cremin'),(32,'E-1904','Prof. Kenyatta Luettgen','Culpa et dolore vel in rerum.','Doloribus qui nobis est id.','Fuga maxime qui non dolores.','54770','Eliseo Watsica MD','Stephanie McKenzie'),(33,'E-1905','Trycia Mertz','Qui eum molestias quae ex.','Nihil quae qui omnis aliquid.','Eum aliquam aliquid maiores.','611438','Mr. Oren Renner','Erica Botsford'),(34,'E-1906','Nikolas Braun','Asperiores fugit et debitis.','Recusandae omnis nam hic.','Eos et a dolorem placeat.','442824','Soledad Hahn','Ms. Magdalen Roberts'),(35,'E-1907','Miss Annie Bogan MD','Aut et aut quia.','Quae ullam ea labore.','Ex nostrum et aut quod et.','351748','Buddy Luettgen','Lorna Rau I'),(36,'E-1908','Jordan Fadel DVM','Aut illo ut facilis quasi.','Adipisci odio earum est quas.','Aliquam aut atque quibusdam.','952329','Garnett Cassin','Ms. Francisca Barrows DDS'),(37,'E-1909','Prof. Joel Hilll MD','Fugit architecto in vel ab.','Fugiat et sed minus sunt.','Aliquid earum commodi omnis.','792075','Korey Nikolaus V','Elenor Greenholt'),(38,'E-1910','Linda Corwin','Omnis ipsum eveniet ut ad.','Sint quas vero ut error iste.','Optio at ut iusto et et sunt.','851959','Vince Witting MD','Ciara Lubowitz'),(39,'E-1911','Bria Reynolds III','Dolor vitae qui quis id sint.','Est corporis qui id id.','Sequi labore eos expedita.','904823','Isac Wilderman','Hildegard Funk'),(40,'E-1912','Susan Daugherty','Eaque eos soluta eum ut in.','Possimus et saepe ea rerum.','A qui iste id enim quam.','261093','Mr. Andrew Sipes','Dr. Leta Grant DVM'),(41,'E-1913','Earline Kozey','Ad sequi ipsum illum optio.','Sed minus qui voluptas sit.','Et et voluptatem aspernatur.','480892','Prof. Clovis Russel Jr.','Hilda Auer'),(42,'E-1914','Mrs. Daniela Hermiston','Eligendi eius quo non.','Quasi porro et est dolores.','Velit fugiat vel ipsam.','682990','Ashton Leuschke II','Freda Mueller'),(43,'E-1915','Vada Powlowski Sr.','Quis doloribus vitae optio.','Quo animi sed ex dolore ut.','Ex inventore atque ea ut.','920484','Kade Bradtke','Reta Altenwerth'),(44,'E-1916','Hannah Rosenbaum','Ducimus sit odio id.','Vel similique eos velit.','Voluptatum et saepe quo.','814254','Josue Heidenreich','Prof. Mafalda Hoeger'),(45,'E-1917','Dr. Tevin Macejkovic Jr.','Ab id vitae consequatur est.','Velit totam ea eos.','Sequi quisquam qui ea.','532278','Celestino Hickle','Dr. Letitia Medhurst'),(46,'E-1918','Oswald Bartoletti','Voluptates deleniti ut et.','Et in nihil cumque.','Rerum esse atque asperiores.','57375','Oliver Runte V','Flossie Kulas'),(47,'E-1919','Makenna Roberts Jr.','Nesciunt quo ex autem.','Autem quasi facere magni.','Ipsum in dolor est repellat.','731036','Dr. Myrl Keebler I','Teresa Konopelski'),(48,'E-1920','Prof. Barrett Schaefer','Aut error dolor id.','Ad dolores omnis dicta magni.','Aut voluptatem nemo enim.','820873','Prof. Giles Wolff I','Nicole Jast DDS'),(49,'E-1921','Ellis Bosco','Occaecati quas id qui omnis.','Hic vero saepe quia.','Eius corporis eos aut.','296218','Mr. Trace Marquardt','Carlotta Kozey'),(50,'E-1922','Albertha Leannon','Similique aut a quod est.','Ex id labore sit officiis.','Ut et laboriosam et sed.','565785','Devante Morissette','Ivah Bergstrom');
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
  PRIMARY KEY (`ledger_id`),
  KEY `fk_leave_ledger_1_idx` (`emp_id`),
  CONSTRAINT `fk_leave_ledger_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  PRIMARY KEY (`info_id`),
  KEY `fk_other_info_1_idx` (`emp_id`),
  CONSTRAINT `fk_other_info_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_info`
--

LOCK TABLES `other_info` WRITE;
/*!40000 ALTER TABLE `other_info` DISABLE KEYS */;
INSERT INTO `other_info` VALUES (1,'E-1873','Supervision for Database Administrator','TESDA Computer Hardware Servicing NC-II','Association of DILG Regional IT Officers'),(2,'E-1874',NULL,NULL,NULL),(3,'E-1875',NULL,NULL,NULL),(4,'E-1876',NULL,NULL,NULL),(5,'E-1877',NULL,NULL,NULL),(6,'E-1878',NULL,NULL,NULL),(7,'E-1879',NULL,NULL,NULL),(8,'E-1880',NULL,NULL,NULL),(9,'E-1881',NULL,NULL,NULL),(10,'E-1882',NULL,NULL,NULL),(11,'E-1883',NULL,NULL,NULL),(12,'E-1884',NULL,NULL,NULL),(13,'E-1885',NULL,NULL,NULL),(14,'E-1886',NULL,NULL,NULL),(15,'E-1887',NULL,NULL,NULL),(16,'E-1888',NULL,NULL,NULL),(17,'E-1889',NULL,NULL,NULL),(18,'E-1890',NULL,NULL,NULL),(19,'E-1891',NULL,NULL,NULL),(20,'E-1892',NULL,NULL,NULL),(21,'E-1893',NULL,NULL,NULL),(22,'E-1894',NULL,NULL,NULL),(23,'E-1895',NULL,NULL,NULL),(24,'E-1896',NULL,NULL,NULL),(25,'E-1897',NULL,NULL,NULL),(26,'E-1898',NULL,NULL,NULL),(27,'E-1899',NULL,NULL,NULL),(28,'E-1900',NULL,NULL,NULL),(29,'E-1901',NULL,NULL,NULL),(30,'E-1902',NULL,NULL,NULL),(31,'E-1903',NULL,NULL,NULL),(32,'E-1904',NULL,NULL,NULL),(33,'E-1905',NULL,NULL,NULL),(34,'E-1906',NULL,NULL,NULL),(35,'E-1907',NULL,NULL,NULL),(36,'E-1908',NULL,NULL,NULL),(37,'E-1909',NULL,NULL,NULL),(38,'E-1910',NULL,NULL,NULL),(39,'E-1911',NULL,NULL,NULL),(40,'E-1912',NULL,NULL,NULL),(41,'E-1913',NULL,NULL,NULL),(42,'E-1914',NULL,NULL,NULL),(43,'E-1915',NULL,NULL,NULL),(44,'E-1916',NULL,NULL,NULL),(45,'E-1917',NULL,NULL,NULL),(46,'E-1918',NULL,NULL,NULL),(47,'E-1919',NULL,NULL,NULL),(48,'E-1920',NULL,NULL,NULL),(49,'E-1921',NULL,NULL,NULL),(50,'E-1922',NULL,NULL,NULL);
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
  PRIMARY KEY (`plantilla_id`),
  KEY `fk_plantilla_1_idx` (`emp_id`),
  CONSTRAINT `fk_plantilla_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantilla`
--

LOCK TABLES `plantilla` WRITE;
/*!40000 ALTER TABLE `plantilla` DISABLE KEYS */;
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
  PRIMARY KEY (`position_id`),
  KEY `fk_position_1_idx` (`division_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Position 1',1,9478,2),(2,'Position 2',2,10159,2),(3,'Position 3',3,10883,1),(4,'Position 4',4,11658,2),(5,'Position 5',5,12488,2),(6,'Position 6',6,13378,2),(7,'Position 7',7,14331,2),(8,'Position 8',8,15368,3),(9,'Position 9',9,16512,4),(10,'Position 10',10,17730,3),(11,'Position 11',11,19077,2),(12,'Position 12',12,20651,1),(13,'Position 13',13,22328,1),(14,'Position 14',14,24141,2),(15,'Position 15',15,26192,3),(16,'Position 16',16,28417,4),(17,'Position 17',17,30831,2),(18,'Position 18',18,33452,1),(19,'Position 19',19,36409,3),(20,'Position 19',19,36409,2),(21,'Position 20',20,38000,1),(22,'Position 1',1,9478,1),(23,'Position 2',2,10159,1),(24,'Position 1',1,9478,3),(25,'Position 2',2,10159,3),(26,'Position 3',3,10883,3),(27,'Position 4',4,11658,1),(28,'Position 1',1,9478,4),(29,'Position 2',2,10159,3),(30,'Position 2',2,10159,4),(31,'Position 3',3,10883,2),(32,'Position 3',3,10883,4),(33,'Position 4',4,11658,3),(34,'Position 4',4,11658,4),(35,'Position 20',20,38000,2),(36,'Position 20',20,38000,3),(37,'Position 20',20,38000,4),(38,'Position 5',5,12488,1),(39,'Position 5',5,12488,3),(40,'Position 5',5,12488,4),(41,'Position 10',10,17730,1),(42,'Position 10',10,17730,2),(43,'Position 10',10,17730,4),(44,'Position 15',15,26192,1),(45,'Position 15',15,26192,2),(46,'Position 15',15,26192,3),(47,'Position 15',15,26192,4),(48,'Position 16',16,28417,1),(49,'Position 16',16,28417,2),(50,'Position 16',16,28417,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references`
--

LOCK TABLES `references` WRITE;
/*!40000 ALTER TABLE `references` DISABLE KEYS */;
INSERT INTO `references` VALUES (1,'E-1873','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(2,'E-1873','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(3,'E-1873','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(4,'E-1874','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(5,'E-1875','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(6,'E-1876','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(7,'E-1877','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(8,'E-1878','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(9,'E-1879','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(10,'E-1880','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(11,'E-1881','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(12,'E-1882','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(13,'E-1883','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(14,'E-1884','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(15,'E-1885','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(16,'E-1886','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(17,'E-1887','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(18,'E-1888','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(19,'E-1889','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(20,'E-1890','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(21,'E-1891','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(22,'E-1892','Director John M. Castaneda, Ceso III','DILG CAR Regional Office, Baguio City','0939-935-2304'),(23,'E-1893','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(24,'E-1894','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(25,'E-1895','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(26,'E-1896','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(27,'E-1897','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(28,'E-1898','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(29,'E-1899','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(30,'E-1900','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(31,'E-1901','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(32,'E-1902','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(33,'E-1903','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(34,'E-1904','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(35,'E-1905','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(36,'E-1906','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(37,'E-1907','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(38,'E-1908','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(39,'E-1909','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(40,'E-1910','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(41,'E-1911','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(42,'E-1912','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(43,'E-1913','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(44,'E-1914','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(45,'E-1915','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919'),(46,'E-1916','Director John M. Castaneda, Ceso III','DILG Region 2, Tuguegarao City, Cagayan','0939-935-2304'),(47,'E-1917','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, Cagayan','0947-594-6630'),(48,'E-1918','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0939-935-2304'),(49,'E-1919','Director Jonathan Paul M. Leusen JR., CESO IV','DILG Region 2, Tuguegarao City, CagDILG Region 2, Tuguegarao City, Cagayanayan','0947-594-6630'),(50,'E-1920','Director Mario L. Iringan, CESO V','DILG Region 2, Tuguegarao City, Cagayan','0917-899-7919'),(51,'E-1921','Director John M. Castaneda, Ceso III','DILG CAR Regional Office, Baguio City','0939-935-2304'),(52,'E-1922','Director Mario L. Iringan, CESO V','DILG CAR Regional Office, Baguio City','0917-899-7919');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_schedule`
--

LOCK TABLES `salary_schedule` WRITE;
/*!40000 ALTER TABLE `salary_schedule` DISABLE KEYS */;
INSERT INTO `salary_schedule` VALUES (1,'2016-2019'),(2,'2020-2023');
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
  `endJobDate` date DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL COMMENT 'Binyaan ko muna yung bilang. ',
  `status` varchar(45) DEFAULT NULL COMMENT 'Binayaan ko muna yung bilang. ',
  `annualSalary` int(7) DEFAULT NULL COMMENT 'Di ko sure to. Hahaha. ginawa ko muna 7. Hahaha. ',
  `division` varchar(45) DEFAULT NULL COMMENT 'Binayaan ko muna yung bilang.',
  `branch` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL COMMENT 'Binayaan ko muna yung bilang. hahaha.',
  PRIMARY KEY (`service_id`),
  KEY `fk_service_record_1_idx` (`emp_id`),
  CONSTRAINT `fk_service_record_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_record`
--

LOCK TABLES `service_record` WRITE;
/*!40000 ALTER TABLE `service_record` DISABLE KEYS */;
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
  PRIMARY KEY (`training_id`),
  KEY `fk_trainings_1_idx` (`emp_id`),
  CONSTRAINT `fk_trainings_1` FOREIGN KEY (`emp_id`) REFERENCES `applicationforleave` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainings`
--

LOCK TABLES `trainings` WRITE;
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
INSERT INTO `trainings` VALUES (1,'E-1873','Database Training with Open-Source Software','2008-02-23','2009-03-30',40,'Technical','Information Systems & Technology Management Service - DILG');
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
INSERT INTO `users` VALUES (1,'arvince','arvince','alcaidearvince@gmail.com','$2y$10$Bk0/wa32/7TQwsKcflEq9u9VBzbSfzCUIJ9bTexjerysa8HTS/BX2','sxWIXZDcYW8j0CPRukcIrKoHZTyFwRNMDfU8DSnVqmpRqetcSjpVtjjV9QGU','2018-03-03 06:04:51','2018-03-03 06:04:51'),(2,'admin1','admin1','admin1@email.com','$2y$10$Bk6tZMpNJ7PgNJZb4iwEVuZTlHP58vzSXbASNxID7pt.Z7VsW/wo2','3YWPt3UbF0DniAJgHPEBrtp0ORbyDe2bbzaRcm3FDIt6xIGhOecjHwTtTtzB','2018-03-03 06:21:48','2018-03-03 06:21:48'),(3,'admin2','admin2','admin2@email.com','$2y$10$vz7oaKLtMSLH1IXNiFicvetbXKnNPx1sAihT4NkxhWVp3tb1bFSPG','NmDnbFzGO6zCa3AQ73oXc1bHPj6MFabUHOb6be66ftDsCkEPfONEjdUVPC7v','2018-03-03 06:29:35','2018-03-03 06:29:35'),(4,'admin3','admin3','admin3@email.com','$2y$10$jJZn72rxGCyHApGzEzJbxO0M0BDO3wQP8tEj4rTmUUqMZKc6xRF5q','5llnyq5x4qxe5WBrd0VFSAWF5DwhEEUeUUhboMke1jxD2lpP3y8r9Q8e8azO','2018-03-03 06:30:06','2018-03-03 06:30:06'),(5,'director','director','director@email.com','$2y$10$ifpaT28qQBURxuaE2uwisO/sJTpYnR7xoW6PIzRE6LSu11fjbrPsi','h1v80w0r2pV2CLAvo2XVrzTdFqYEJg1rYYLlJkRA83IF52YIJhm7gGHTADE6','2018-03-03 06:30:39','2018-03-03 06:30:39'),(12,'Papat-iw, Saldy Bugtong','E-1873','saldypapatiw@gmail.com','$2y$10$NgDg9ypJUlPj7dIf8xc/8uVpv60dQVtk0MZFQ.qgwn690D4VwGBda','XkJL9aUoFq2Mc2QMJ0gSZ3EMjRzsJB0Uh4krEgIszFMYNe4PZ84nmdXzVdFo','2018-03-07 06:01:40','2018-03-07 06:01:40');
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
  PRIMARY KEY (`voluntaryWork_id`),
  KEY `fk_voluntary_works_1_idx` (`emp_id`),
  CONSTRAINT `fk_voluntary_works_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voluntary_works`
--

LOCK TABLES `voluntary_works` WRITE;
/*!40000 ALTER TABLE `voluntary_works` DISABLE KEYS */;
INSERT INTO `voluntary_works` VALUES (1,'E-1873','Association of DILG Regional Information Tech','2015-12-01','2016-05-10',9,'5th Board Member');
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
  PRIMARY KEY (`workExperience_id`),
  KEY `fk_workexperience_1_idx` (`emp_id`),
  CONSTRAINT `fk_workexperience_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workexperience`
--

LOCK TABLES `workexperience` WRITE;
/*!40000 ALTER TABLE `workexperience` DISABLE KEYS */;
INSERT INTO `workexperience` VALUES ('1','E-1873','2010-01-30','2015-02-28','Information Technology Officer I','Department of the Interior and Local Governme',39,'19-2','PERMANENT','Y'),('10','E-1882',NULL,NULL,'Operations Manager','Department of the Interior and Local Governme',34,'17-1','PERMANENT','Y'),('12','E-1883',NULL,NULL,'Quality Control Coordinator','Department of the Interior and Local Governme',34,'16-4','PERMANENT','Y'),('13','E-1884',NULL,NULL,'Risk Manager','Department of the Interior and Local Governme',33,'16-3','PERMANENT','Y'),('14','E-1885',NULL,NULL,'Service Representative','Department of the Interior and Local Governme',33,'16-2','PERMANENT','Y'),('15','E-1886',NULL,NULL,'Accounts Receivable/Payable Specialist','Department of the Interior and Local Governme',32,'16-1','PERMANENT','Y'),('16','E-1887',NULL,NULL,'Assessor','Department of the Interior and Local Governme',32,'15-4','PERMANENT','Y'),('17','E-1888',NULL,NULL,'Auditor','Department of the Interior and Local Governme',31,'15-3','PERMANENT','Y'),('18','E-1889',NULL,NULL,'Bookkeeper','Department of the Interior and Local Governme',31,'15-2','PERMANENT','Y'),('19','E-1890',NULL,NULL,'Budget Analyst','Department of the Interior and Local Governme',30,'15-1','PERMANENT','Y'),('2','E-1874',NULL,NULL,'Account Executive','Department of the Interior and Local Governme',38,'19-2','PERMANENT','Y'),('20','E-1891',NULL,NULL,'Cash Manager','Department of the Interior and Local Governme',30,'14-4','PERMANENT','Y'),('21','E-1892',NULL,NULL,'Chief Financial Officer','Department of the Interior and Local Governme',29,'14-3','PERMANENT','Y'),('22','E-1893',NULL,NULL,'Controller','Department of the Interior and Local Governme',29,'14-2','PERMANENT','Y'),('23','E-1894',NULL,NULL,'Credit Manager','Department of the Interior and Local Governme',28,'14-1','PERMANENT','Y'),('24','E-1895',NULL,NULL,'Tax Specialist','Department of the Interior and Local Governme',28,'13-4','PERMANENT','Y'),('25','E-1896',NULL,NULL,'Treasurer','Department of the Interior and Local Governme',27,'13-3','PERMANENT','Y'),('26','E-1897',NULL,NULL,'Certified Financial Planner','Department of the Interior and Local Governme',27,'13-2','PERMANENT','Y'),('27','E-1898',NULL,NULL,'Chartered Wealth Manager','Department of the Interior and Local Governme',26,'13-1','PERMANENT','Y'),('28','E-1899',NULL,NULL,'Credit Analyst','Department of the Interior and Local Governme',26,'12-4','PERMANENT','Y'),('29','E-1900',NULL,NULL,'Financial Analyst','Department of the Interior and Local Governme',25,'12-3','PERMANENT','Y'),('3','E-1875',NULL,NULL,'Administrative Assistant','Department of the Interior and Local Governme',38,'18-4','PERMANENT','Y'),('30','E-1901',NULL,NULL,'Hedge Fund Manager','Department of the Interior and Local Governme',25,'12-2','PERMANENT','Y'),('31','E-1902',NULL,NULL,'Hedge Fund Principal','Department of the Interior and Local Governme',24,'12-1','PERMANENT','Y'),('32','E-1903',NULL,NULL,'Hedge Fund Trader','Department of the Interior and Local Governme',24,'11-4','PERMANENT','Y'),('33','E-1904',NULL,NULL,'Investment Advisor','Department of the Interior and Local Governme',23,'11-3','PERMANENT','Y'),('34','E-1905',NULL,NULL,'Investment Banker','Department of the Interior and Local Governme',23,'11-2','PERMANENT','Y'),('35','E-1906',NULL,NULL,'Investor Relations Officer','Department of the Interior and Local Governme',22,'11-1','PERMANENT','Y'),('36','E-1907',NULL,NULL,'Leveraged Buyout Investor','Department of the Interior and Local Governme',22,'10-4','PERMANENT','Y'),('37','E-1908',NULL,NULL,'Loan Officer','Department of the Interior and Local Governme',21,'10-3','PERMANENT','Y'),('38','E-1909',NULL,NULL,'Mortgage Banker','Department of the Interior and Local Governme',21,'10-2','PERMANENT','Y'),('39','E-1910',NULL,NULL,'Mutual Fund Analyst','Department of the Interior and Local Governme',20,'10-1','PERMANENT','Y'),('4','E-1876',NULL,NULL,'Administrative Manager','Department of the Interior and Local Governme',37,'18-3','PERMANENT','Y'),('40','E-1911',NULL,NULL,'Portfolio Management Marketing','Department of the Interior and Local Governme',20,'9-4','PERMANENT','Y'),('41','E-1912',NULL,NULL,'Portfolio Manager','Department of the Interior and Local Governme',19,'9-3','PERMANENT','Y'),('42','E-1913',NULL,NULL,'Ratings Analyst','Department of the Interior and Local Governme',19,'9-2','PERMANENT','Y'),('43','E-1914',NULL,NULL,'Stockbroker','Department of the Interior and Local Governme',18,'9-1','PERMANENT','Y'),('44','E-1915',NULL,NULL,'Trust Officer','Department of the Interior and Local Governme',18,'8-4','PERMANENT','Y'),('45','E-1916',NULL,NULL,'Benefits Officer','Department of the Interior and Local Governme',17,'8-3','PERMANENT','Y'),('46','E-1917',NULL,NULL,'Compensation Analyst','Department of the Interior and Local Governme',17,'8-2','PERMANENT','Y'),('47','E-1918',NULL,NULL,'Employee Relations Specialist','Department of the Interior and Local Governme',16,'8-1','PERMANENT','Y'),('48','E-1919',NULL,NULL,'HR Coordinator','Department of the Interior and Local Governme',16,'7-4','PERMANENT','Y'),('49','E-1920',NULL,NULL,'HR Specialist','Department of the Interior and Local Governme',15,'7-3','PERMANENT','Y'),('5','E-1877',NULL,NULL,'Branch Manager','Department of the Interior and Local Governme',37,'18-2','PERMANENT','Y'),('50','E-1921',NULL,NULL,'Retirement Plan Counselor','Department of the Interior and Local Governme',15,'7-2','PERMANENT','Y'),('6','E-1878',NULL,NULL,'Business Analyst','Department of the Interior and Local Governme',36,'18-1','PERMANENT','Y'),('7','E-1879',NULL,NULL,'Business Manager','Department of the Interior and Local Governme',36,'17-4','PERMANENT','Y'),('8','E-1880',NULL,NULL,'Chief Executive Officer','Department of the Interior and Local Governme',35,'17-3','PERMANENT','Y'),('9','E-1881',NULL,NULL,'Office Manager','Department of the Interior and Local Governme',35,'17-2','PERMANENT','Y');
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

-- Dump completed on 2018-03-11  5:17:37
