-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: dilg-hris
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

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
  PRIMARY KEY (`family_id`)
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
  PRIMARY KEY (`civilService_id`)
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
  PRIMARY KEY (`educ_id`)
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
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('E-1873','Pangan','Saldy','Santos','0000-00-00','M','Married',1.68,75,'O','CM-2052757		','1290-0052-8340		','01-1224965-2		','916-245-161		','Filipino','9','Magsaysay Drive','NULL','Loakan Proper','Baguio','Benguet','2600','9','Magsaysay Drive','NULL','Loakan Proper','Baguio City','Benguet','2600','NULL','+639744429030','saldypapatiw@gmail.com','Philippines','N/A',1,'Active'),('E-1874','Guevarra','Rodel','Dela Cruz','0000-00-00','M','Widowed',1.54,68,'O','LK-7114903','1290-9565-5357','36-6976822-2','888-818-921','Filipino','25','Abanao Street','NULL','Abanao','Baguio','Bradtkehaven','3390','22','Gulgowski Roads Apt. 372','NULL','Keeling Pine Apt. 641','Baguio City','East Jenifer','8638','NULL','+639744429030','GuevarraRodel@gmail.com','Philippines','N/A',2,'Active'),('E-1875','Alvares','Devan','Parker','0000-00-00','F','Widowed',1.72,72,'A','ZQ-3821080','1290-5144-4322','97-5191716-9','138-869-793','Filipino','53','Asin Road Street','NULL','Asin Road','Baguio','Rippinland','7986','12','Jaquelin Mountains Apt. 218','NULL','Cassin Plaza','Baguio City','Albaburgh','8861','NULL','6.39931E+11','AlvaresDevan@gmail.com','Philippines','N/A',3,'Active'),('E-1876','Ouano','Yazmin','Kulubot','0000-00-00','M','Widowed',1.22,54,'O','OK-9130351','1290-5289-6804','62-7662411-3','202-808-416','Filipino','37','Baguio Tuding Street','NULL','Baguio Tuding','Baguio','Hansenside','5829','11','Leda Forge Suite 288','NULL','Schumm Falls','Baguio City','Randybury','8874','NULL','6.3995E+11','OuanoYazmin@gmail.com','Philippines','N/A',4,'Active'),('E-1877','Diwata','Natalio','Sason','0000-00-00','F','Widowed',1.45,61,'B','XW-1805912','1290-2053-5251','25-1383132-6','219-614-502','Filipino','28','Assumption Street','NULL','Assumption','Baguio','West Rolando','7915','9','Delbert Forges','NULL','Irma Trail Suite 688','Baguio City','Terryside','255','NULL','6.39458E+11','DiwataNatalio@gmail.com','Philippines','N/A',5,'Active'),('E-1878','Tejada','Ashton','Chuakay','0000-00-00','M','Married',1.23,62,'A','VY-938899','1290-2160-1922','51-5232954-3','745-372-573','Filipino','88','Bado Dangwa Street','NULL','Bado Dangwa','Baguio','Loyhaven','2025','75','Keeling Harbor Apt. 581','NULL','Grady Lakes Suite 756','Baguio City','Klockoshire','6618','NULL','6.39274E+11','TejadaAshton@gmail.com','Philippines','N/A',6,'Active'),('E-1879','Bernardino','Palmira','Sarip','0000-00-00','M','Single',1.47,66,'B','EN-9239650','1290-7549-7138','54-2505454-5','972-979-751','Filipino','9','Luding Street','NULL','Luding','Baguio','South Clement','3960','77','Rylee Route','NULL','Grimes Radial','Baguio City','Port Goldenchester','2586','NULL','6.39559E+11','BernardinoPalmira@gmail.com','Philippines','N/A',7,'Active'),('E-1880','Pizarro','Bartolo','Tangco','0000-00-00','F','Married',1.78,63,'B','QQ-7387188','1290-5908-1220','71-7897971-3','381-355-428','Filipino','59','Loakan Street','NULL','Loakan','Baguio','South Parkerport','1635','3','Jerde Prairie','NULL','Tevin Viaduct Suite 100','Baguio City','Port May','701','NULL','6.39276E+11','PizarroBartolo@gmail.com','Philippines','N/A',8,'Active'),('E-1881','Otterson','Nancy','Kaunlaran','0000-00-00','M','Married',1.25,77,'AB','QU-7387189','1290-5908-1221','71-7897971-4','381-355-429','Filipino','60','Bakakeng Street','NULL','Bakakeng','Baguio','South Parkerport','1636','4','Jerde Prairie','NULL','Tevin Viaduct Suite 100','Baguio City','Port May','702','NULL','6.31235E+11','OttersonNancy@gmail.com','Philippines','N/A',9,'Active'),('E-1882','Bridwell','Primero','Wood','0000-00-00','M','Single',1.67,71,'B','VT-6556160','1290-7422-2277','51-6524995-4','276-420-538','Filipino','73','Bayan Park Street','NULL','Aurora hill','Baguio','West Kristoferbury','1360','32','Kris Park','NULL','Stracke Gateway','Baguio City','Cleoraton','8491','NULL','6.39686E+11','BridwellPrimero@gmail.com','Philippines','N/A',10,'Active'),('E-1883','Korhonen','Mya','Songcuya','0000-00-00','F','Widowed',1.11,51,'A','HO-1959213','1290-3617-8683','58-7410806-2','345-606-509','Filipino','34','Kuhn Causeway','NULL','Syble Vista','Baguio','South Sammy','8109','93','Goodwin Trail','NULL','Genevieve Islands','Baguio City','New Keven','8376','NULL','6.39424E+11','KorhonenMya@gmail.com','Philippines','N/A',11,'Active'),('E-1884','Moak','Gregory','Congco','0000-00-00','M','Married',1.21,58,'AB','LD-6171835','1210-2595-9644','85-6052351-2','290-684-546','Filipino','99','Ward Avenue','NULL','Dooley Extension Suite','Baguio','Corkerybury','1542','99','Jast Avenue Apt. 471','NULL','Kulas Camp','Baguio City','South Amandaburgh','3960','NULL','6.39877E+11','MoakGregory@gmail.com','Philippines','N/A',12,'Active'),('E-1885','Blanco','Keyla','Budi','0000-00-00','M','Widowed',1.52,69,'B','QE-8719980','1210-645-2978','73-4355881-2','930-930-323','Filipino','31','Jude Springs','NULL','Alexa Glen Suite ','Baguio','Labadieburgh','3976','79','Elody Harbors','NULL','Lynch Ferry','Baguio City','Kelsiehaven','9731','NULL','6.39431E+11','BlancoKeyla@gmail.com','Philippines','N/A',13,'Active'),('E-1886','Duarte','Armani','Bengzon','0000-00-00','F','Married',1.07,64,'B','HV-7098209','1210-1583-5901','53-8462676-5','889-777-514','Filipino','52','McClure Forges','NULL','Norris Ranch Suite ','Baguio','South Veronicafurt','9129','15','Emmie Locks Suite 974','NULL','Homenick Mills Apt. 048','Baguio City','Klinghaven','7394','NULL','6.39565E+11','DuarteArmani@gmail.com','Philippines','N/A',14,'Active'),('E-1887','Degayo','Regan','Pinagpala','0000-00-00','M','Married',1.32,59,'O','PY-5352250','1210-8955-6488','82-1582645-2','645-150-855','Filipino','58','Pinkie Squares','NULL','Lueilwitz Spurs','Baguio','New Melynaland','7955','73','Carli Summit Apt. 291','NULL','Bartell Land Apt. 646','Baguio City','East Freddymouth','7424','NULL','6.39807E+11','DegayoRegan@gmail.com','Philippines','N/A',15,'Active'),('E-1888','Luz','Journey','Acbar','0000-00-00','M','Married',1.42,50,'AB','PA-5352251','1210-8955-6489','87-1528826-3','645-150-856','Filipino','59','Pinkie Squares','NULL','Lueilwitz Spurs','Baguio','New Melynaland','7956','74','Carli Summit Apt. 291','NULL','Bartell Land Apt. 646','Baguio City','East Freddymouth','7425','NULL','6.39644E+11','LuzJourney@gmail.com','Philippines','N/A',16,'Active'),('E-1889','Acebedo','Stuart','Ibrahim','0000-00-00','M','Single',1.33,51,'A','CR-1829469','1210-7472-1103','61-1382294-1','446-789-666','Filipino','80','Kshlerin Groves Suite ','NULL','Hansen Station','Baguio','Lake Kelsiside','7819','63','Harmon Squares','NULL','Mante Trafficway','Baguio City','South Edd','8921','NULL','6.39187E+11','AcebedoStuart@gmail.com','Philippines','N/A',17,'Active'),('E-1890','Randon','Sasha','Gray','0000-00-00','M','Single',1.43,49,'AB','CQ-1829470','1210-7490-9471','45-5721364-4','415-524-980','Filipino','57','Destany Greens','NULL','Ondricka Shoals','Baguio','Simeonmouth','8694','58','Kiehn Streets Apt. 058','NULL','Deven Canyon','Baguio City','North Kielside','3296','NULL','6.39887E+11','RandonSasha@gmail.com','Philippines','N/A',18,'Active'),('E-1891','Iriberri','Florita','Copanggo','0000-00-00','M','Married',1.29,69,'A','FQ-2245810','1209-3479-1840','71-6800782-5','471-658-254','Filipino','71','Hassan Drive','NULL','Jacobi Freeway','Baguio','Daynemouth','8567','16','Keebler Parkways Suite 468','NULL','Champlin Valleys Apt. 510','Baguio City','Croninmouth','1662','NULL','6.39481E+11','IriberriFlorita@gmail.com','Philippines','N/A',19,'Active'),('E-1892','Cuenca','Katelin','Yoshikawa','0000-00-00','M','Married',1.19,61,'A','LJ-3455055','1209-2268-5276','42-8208414-9','576-982-826','Filipino','59','Odie Fort','NULL','Dasia Plain','Baguio','West Holliechester','1517','65','Dolly Burg','NULL','Nader Locks Suite 427','Baguio City','East Medaberg','6218','NULL','6.3952E+11','CuencaKatelin@gmail.com','Philippines','N/A',20,'Active'),('E-1893','Medoza','German','Cosalan','0000-00-00','F','Widowed',1.28,50,'B','JJ-2157770','1209-4228-3437','17-3386211-5','645-166-526','Filipino','40','Dach Estate','NULL','Crona Islands','Baguio','East Emie','4619','67','Harber Crossing','NULL','Pfannerstill Point','Baguio City','Framiberg','9507','NULL','6.39644E+11','MedozaGerman@gmail.com','Philippines','N/A',21,'Active'),('E-1894','Urbina','Gracie','Bannet','0000-00-00','F','Widowed',1.18,58,'A','XQ-5946559','1209-2436-4681','12-8703793-2','281-823-794','Filipino','27','Eveline Island','NULL','Neal Camp','Baguio','Littlehaven','5809','1','Cristopher Crossing','NULL','Krista Cliffs Suite 074','Baguio City','Waelchiville','7326','NULL','6.39753E+11','UrbinaGracie@gmail.com','Philippines','N/A',22,'Active'),('E-1895','Yao','Monique','Mori','0000-00-00','M','Single',1.23,76,'O','JV-2128476','1209-9814-2712','91-4445025-7','356-259-363','Filipino','47','Madyson Prairie','NULL','Lakin Keys Suite ','Baguio','Rolfsonton','5312','69','Wiza Hollow','NULL','Bode Neck','Baguio City','West Amiebury','3688','NULL','6.39675E+11','YaoMonique@gmail.com','Philippines','N/A',23,'Active'),('E-1896','Deseo','Kenyon','Manese','0000-00-00','F','Widowed',1.12,80,'A','AM-1535639','1209-4202-3064','22-9986444-8','802-938-230','Filipino','75','Gust Fort','NULL','Muller Prairie','Baguio','North Delia','2585','25','Juliet Brook','NULL','Maryse Parkways','Baguio City','Krajcikton','3459','NULL','6.39704E+11','DeseoKenyo@gmail.com','Philippines','N/A',24,'Active'),('E-1897','Alcazar','Jazmine','Bahadi','0000-00-00','F','Married',1.24,81,'AB','EF-667758','1201-2488-3729','90-3449346-7','248-884-264','Filipino','38','Cummings Shoals','NULL','Cumming Shoals','Baguio','Elizabethmouth','8802','76','Purdy Crossroad Suite 542','NULL','Weldon Via','Baguio City','Albertamouth','355','NULL','6.39383E+11','AlcazarJazmine@gmail.com','Philippines','N/A',25,'Active'),('E-1898','Chavez','Tabitha','Ongsioco','0000-00-00','F','Widowed',1.25,69,'A','IZ-7141459','1210-2887-1172','71-5391204-0','612-528-448','Filipino','44','Tillman Circle','NULL','Raymundo Run','Baguio','Guiseppebury','2584','80','Sarina Brook Apt. 078','NULL','Lucy Row','Baguio City','Lake Gretchenfurt','8295','NULL','6.396E+11','ChavezTabitha@gmail.com','Philippines','N/A',26,'Active'),('E-1899','Ventura','Syed','Manyakes','0000-00-00','M','Widowed',1.15,68,'B','NQ-7727123','1210-8746-8635','34-8543985-9','868-336-587','Filipino','53','Mavin Drive','NULL','Kieran Mountain','Baguio','Dudleyhaven','7908','89','Hilton Crest Apt. 859','NULL','Collier Point','Baguio City','Beattymouth','6228','NULL','6.39182E+11','VenturaSyed@gmail.com','Philippines','N/A',27,'Active'),('E-1900','Barrameda','Rica','Sinclair','0000-00-00','F','Married',1.43,65,'O','AA-1837567','1290-1673-8380','49-4762229-9','946-844-501','Filipino','40','Ford Inlet','NULL','Lueilwitz Trail','Baguio','Zemlakstad','7444','12','Mayra Bypass','NULL','Wisozk Greens Suite 020','Baguio City','Lake Grace','7637','NULL','6.39073E+11','BarramedaRica@gmail.com','Philippines','N/A',28,'Active'),('E-1901','Montederamos','Titus','Sato','0000-00-00','M','Widowed',1.17,52,'AB','VR-1039864','1290-5300-354','89-1321785-0','569-785-305','Filipino','16','Wilderman Lodge Suite ','NULL','Harber Island','Baguio','Port Cortez','1565','48','Pouros Extension','NULL','Stanton Orchard','Baguio City','New Ellieland','8274','NULL','6.39517E+11','MontederamosTitus@gmail.com','Philippines','N/A',29,'Active'),('E-1902','Gonzales','Yamanarita','Magbantay','0000-00-00','M','Widowed',1.21,56,'A','IZ-1170959','1290-7037-2045','34-8493412-3','678-419-613','Filipino','54','Cale Squares Suite ','NULL','Brandt Mission','Baguio','East Frieda','440','50','Jasmin Dale Apt. 009','NULL','Brandt Square Suite 287','Baguio City','Lake Sigurd','7881','NULL','6.39902E+11','GonzalesYamanarita@gmail.com ','Philippines','N/A',30,'Active'),('E-1903','Pinero','Devante','Limjap','0000-00-00','M','Widowed',1.2,49,'O','MY-9375773','1209-1813-4861','50-7139626-0','381-383-785','Filipino','97','Percy Common Apt. 917','NULL','Angelo Locks Apt. 418','Baguio','Wunschstad','1143','47','Milan Cliff','NULL','Kohler Shoal','Baguio City','Ankundingfurt','6997','NULL','6.39381E+11','PineroDevante@gmail.com','Philippines','N/A',31,'Active'),('E-1904','Sambrano','Rafael','Puti','0000-00-00','M','Married',1.1,51,'AB','OO-7432053','1210-6944-2405','61-2947216-2','535-471-163','Filipino','86','Centers Apt. 191','NULL','Boehm Port','Baguio','Koryshire','757','95','Lonny Causeway Suite 933','NULL','Purdy Islands','Baguio City','West Ottiliechester','2353','NULL','6.39441E+11','SambranoRafael@gmail.com','Philippines','N/A',32,'Active'),('E-1905','Montilla','Roano','Tanjuanto','0000-00-00','M','Widowed',1.16,61,'O','MK-5990818','1201-8651-8709','34-5697749-8','339-388-631','Filipino','23','Durgan Village Apt. 706','NULL','Hessel Rapid Apt. 032','Baguio','Trantowchester','1036','99','Mante Forges','NULL','Albert Union','Baguio City','Lake Gregoria','7095','NULL','6.39441E+11','MontillaRoano@gmail.com','Philippines','N/A',33,'Active'),('E-1906','Soler','Aldo','Jaiden','0000-00-00','F','Widowed',1.19,71,'A','YU-1446880','1210-6150-3019','87-7801042-9','916-903-357','Filipino','68','Thelma Throughway','NULL','Maggio Via','Baguio','Albertostad','2709','87','Alva Light Suite 975','NULL','Medhurst Streets','Baguio City','Okunevamouth','8488','NULL','6.39284E+11','SolerAldo@gmail.com','Philippines','N/A',34,'Active'),('E-1907','Beunaflor','Reagan','Magos','0000-00-00','M','Married',1.2,77,'A','BD-8364791','1209-172-828','81-6820276-1','834-637-742','Filipino','28','Jaycee Grove Apt. 781','NULL','Schowalter Ways','Baguio','Schinnerview','4325','47','Noemy Circle','NULL','Gutmann Roads','Baguio City','Eunachester','3698','NULL','6.39866E+11','BeunaflorReagan@gmail.com','Philippines','N/A',35,'Active'),('E-1908','Osorio','Estela','Baltar','0000-00-00','F','Widowed',1.17,72,'O','RO-6755044','1210-9020-2995','50-1087692-5','102-280-675','Filipino','28','Casper Fall','NULL','Abagail Ridge Suite 175','Baguio','Mayamouth','9283','23','Bud Curve','NULL','Dickinson Crossing','Baguio City','Adelinefurt','3687','NULL','6.3983E+11','OsorioEstela@gmail.com','Philippines','N/A',36,'Active'),('E-1909','Alejo','Macy','Calim','0000-00-00','M','Widowed',1.3,78,'A','TD-6463347','1290-9797-5356','94-4660624-4','841-588-442','Filipino','49','Rose Radial Suite 801','NULL','Crona Parks','Baguio','Pfefferville','896','45','Naomi Glens Apt. 980','NULL','Adrien Cape','Baguio City','West Benton','1454','NULL','6.39655E+11','AlejoMacy@gmail.com','Philippines','N/A',37,'Active'),('E-1910','Vilela','Samir','Eva','0000-00-00','F','Married',1.39,70,'O','CA-9228338','1209-6311-7296','89-8850717-2','115-788-792','Filipino','37','Sipes Stravenue','NULL','Brown Trail Suite 259','Baguio','New Victoria','5536','65','Bruen Corner Apt. 423','NULL','Dickinson Passage','Baguio City','Lake Zacherychester','6869','NULL','6.39823E+11','VilelaSamir@gmail.com','Philippines','N/A',38,'Active'),('E-1911','Villamor','Colby','Camara','0000-00-00','F','Single',1.33,68,'AB','IS-675848','1210-4529-9836','59-8963385-4','574-575-202','Filipino','67','Luettgen Falls','NULL','Jessyca Oval','Baguio','South Sid','9922','50','Lehner Mountains Apt. 550','NULL','Bahringer Falls Suite 130','Baguio City','Roseview','751','NULL','6.39811E+11','VillamorColby@gmail.com','Philippines','N/A',39,'Active'),('E-1912','Santilla','Elyssa','Marapao','0000-00-00','F','Married',1.26,61,'AB','QN-9381180','1204-6057-2600','45-7856302-1','646-387-473','Filipino','35','Veum Inlet Suite 720','NULL','Joaquin Bridge Apt. 938','Baguio','Lake Axel','7901','70','Haylie Heights Suite 046','NULL','Myriam Roads','Baguio City','Port Bonitaview','3633','NULL','6.39735E+11','SantillaElyssa@gmail.com','Philippines','N/A',40,'Active'),('E-1913','Rana','Rianna','Cader','0000-00-00','M','Single',1.4,54,'B','IK-3825930','1209-5124-7440','21-4161771-2','851-187-887','Filipino','58','Predovic Manor Suite 259','NULL','Burnice Brook','Baguio','Gretaside','5684','42','Renner Stravenue Suite 491','NULL','Harley Dale','Baguio City','South Floridaside','7297','NULL','6.39944E+11','RanaRianna@gmail.com','Philippines','N/A',41,'Active'),('E-1914','Barcelona','Landon','Japos','0000-00-00','M','Widowed',1.25,81,'A','EV-7736901','1208-5489-442','95-8453247-7','877-936-751','Filipino','57','Toy Road','NULL','Vernice Shores Apt. 831','Baguio','New Rosalindahaven','5069','80','Waelchi Union Suite 579','NULL','Damaris Crossroad Apt. 936','Baguio City','Kellyhaven','2959','NULL','6.39829E+11','BarcelonaLandon@gmail.com','Philippines','N/A',42,'Active'),('E-1915','Francisco','Kristopher','Maglaya','0000-00-00','F','Married',1.16,78,'A','EN-7736902','1210-5489-443','95-8453246-8','877-936-762','Filipino','58','Toy Road','NULL','Vernice Shores Apt. 831','Baguio','New Rosalindahaven','5070','81','Waelchi Union Suite 579','NULL','Damaris Crossroad Apt. 936','Baguio City','Kellyhaven','2960','NULL','6.39724E+11','FranciscoKristopher@gmail.com','Philippines','N/A',43,'Active'),('E-1916','Alcazar','Blaine','Dilanggen','0000-00-00','M','Single',1.5,67,'A','EV-7736903','1209-2039-3597','87-7939212-4','597-924-860','Filipino','87','Mueller Mall','NULL','Schaefer Highway','Baguio','East Orvalmouth','7373','29','Kub Plaza Suite 375','NULL','Jerald Knoll Apt. 124','Baguio City','Boehmport','2563','NULL','6.39343E+11','AlcazarBlaine@gmail.com','Philippines','N/A',44,'Active'),('E-1917','Elorza','Yumaris','Ynaya','0000-00-00','M','Married',1.34,54,'O','YJ-5785299','1204-6848-6307','57-6296145-9','259-589-411','Filipino','66','Kautzer Fields','NULL','Arielle Gateway','Baguio','New Tracey','7967','9','Conner Corner','NULL','Caitlyn Harbor Apt. 845','Baguio City','Hayesview','4208','NULL','6.39297E+11','ElorzaYumaris@gmail.com','Philippines','N/A',45,'Active'),('E-1918','Caballero','Lexus','Joson','0000-00-00','M','Widowed',1.51,75,'AB','WR-8663388','1290-7925-3601','62-4270931-1','759-977-460','Filipino','63','Paolo Hollow Suite 934','NULL','Rowland Crescent','Baguio','Veronaville','9542','19','Stroman Pass Suite 178','NULL','Roman Gardens','Baguio City','Kuhlmanmouth','4515','NULL','6.39102E+11','CaballeroLexus@gmail.com','Philippines','N/A',46,'Active'),('E-1919','Evangelista','Norman','Tiko','0000-00-00','M','Widowed',1.11,65,'AB','WF-4736401','1290-653-3705','63-3371627-1','670-753-342','Filipino','87','Frieda Valleys Apt. 081','NULL','Christiansen Trace','Baguio','New Saigefort','6531','33','Magdalen View','NULL','Reichert Common Apt. 472','Baguio City','Lake Enosstad','6100','NULL','6.39491E+11','EvangelistaNorman@gmail.com','Philippines','N/A',47,'Active'),('E-1920','Guerra','Rashad','Makadaan','0000-00-00','M','Single',1.24,71,'AB','IB-3325613','1204-8475-777','97-3467855-3','482-491-567','Filipino','63','Florida Trace','NULL','Lazaro Port','Baguio','Hassieport','1290','95','Stehr Lodge Suite 132','NULL','Mertz Corner Apt. 292','Baguio City','Marcusberg','6624','NULL','6.39343E+11','GuerraRashad@gmail.com','Philippines','N/A',48,'Active'),('E-1921','Miranda','Chito','Parokya','0000-00-00','M','Married',1.31,64,'A','GH-5676289','1210-7200-6863','94-2578412-9','107-820-408','Filipino','13','Bode Shore','NULL','Kub Flat','Baguio','Haskellberg','6821','79','Bertha Plaza','NULL','Connelly Dale','Baguio City','North Xanderstad','4963','NULL','6.39315E+11','MirandaChito@gmail.com','Philippines','N/A',49,'Active'),('E-1922','Leano','Suelita','Malagar','0000-00-00','M','Married',1.3,61,'A','JM-4049822','1209-393-9438','55-6407657-3','646-828-253','Filipino','92','Stoltenberg Heights','NULL','Monserrate Lane','Baguio','Demarcuschester','2753','12','Monahan Road Apt. 419','NULL','Bayer Turnpike Suite 986','Baguio City','Mertzmouth','9443','NULL','6.39223E+11','MirandaChito@gmail.com','Philippines','N/A',50,'Active'),('emp_id','lastname','givenname','middlename','0000-00-00','','',0,0,'','gsis','pagibig','sss','tin','citizenship','reside','residentialAddressStreet','residentialAddressSubdivisionVillage','residentialAddressBarangay','residentialAddressCityMunicipality','residentialAddressProvince','resi','perman','permanentAddressStreet','permanentAddressSubdivisionVillage','permanentAddressBarangay','permanentAddressCityMunicipality','permanentAddressProvince','perm','telephoneNo','mobileNo','emailaddress','citizenship_country','citizenship_info',0,'');
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
  `spouseOccupation` varchar(45) DEFAULT NULL,
  `spouseEmployerBusiness` varchar(45) DEFAULT NULL,
  `spouseBusinessAddress` varchar(45) DEFAULT NULL,
  `spouseTelephoneNo` varchar(13) DEFAULT NULL,
  `fatherName` varchar(45) DEFAULT NULL,
  `motherName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`family_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familybackground`
--

LOCK TABLES `familybackground` WRITE;
/*!40000 ALTER TABLE `familybackground` DISABLE KEYS */;
INSERT INTO `familybackground` VALUES (1,'E-1873','Uy, Javy Brillantez','N/A','N/A','N/A','N/A','Papat-iw, Ignacio Lidawan Sr.','Bugtong, Josefina Ramirez'),(2,'E-1874','Fatima Quitzon','Teacher','Baguio Central School','Yandoc St','710407','Duncan Mohr','Mia Blanda'),(3,'E-1875','Blaise Schuster','Architect','JENMEN ENGINEERING',' B316, Lopez Building, Session Road','62511','Lazaro Gerlach','Dianna Dickens'),(4,'E-1876','Prof. Dexter Kuhn III','College Professor','University of the Cordilleras','Gov. Pack Rd','100491','Emiliano Wisoky','Aida West'),(5,'E-1877','Dr. Johnathon Blick IV','Cardiologist','Baguio General Hospital','Baguio General Hospital Driveway','97324','Silas Smitham','Valerie Ruecker'),(6,'E-1878','Dr. Ricardo Schuppe','Neurologist','Baguio General Hospital','Baguio General Hospital Driveway','535050','Jake Ebert','Chanel Weissnat'),(7,'E-1879','Garrison Jast','N/A','N/A','N/A','N/A','Donnell Stokes','Bridget Schuppe IV'),(8,'E-1880','Nelson Hansen','Teacher','Baguio Central School','Yandoc St','76346','Edison Witting Sr.','Shemar Jast'),(9,'E-1881','Chadrick Boyle','Civil Engineer','RSN Engineering and Construction','6 Loakan Proper','220206','Darrel Grant','Genesis Grady'),(10,'E-1882','Sabryna Howe','N/A','N/A','N/A','N/A','Scotty Gerhold','Amelia Kovacek'),(11,'E-1883','Johnathon D\'Amore','Architect','JENMEN ENGINEERING',' B316, Lopez Building, Session Road','417947','Herbert Fay','Shea Dickinson I'),(12,'E-1884','Arne Nicolas','IT','Linkage Web Development','First Road, Quezon Hill','731196',' Emmitt D\'Amore ','Flossie Friesen'),(13,'E-1885','Lucile Kemmer','N/A','N/A','N/A','N/A','Kristopher Kihn','Marjorie Thiel II'),(14,'E-1886','Jarret Gusikowski','Chef','KALAPAW','Engineer\'s Hill, Baguio City','466874','Trent Conroy I','Bella Metz'),(15,'E-1887','Dr. Rudy Zulauf','Cardiologist','Baguio General Hospital','Baguio General Hospital Driveway','220813','Aric Keeling','Pamela Hessel'),(16,'E-1888','Aisha Lehner','HR manager','Teleperformance Baguio','Harrison Rd, Baguio','239211','Vinnie Moen','Laisha Ullrich'),(17,'E-1889','Gabriel Rutherford Jr.','N/A','N/A','N/A','N/A','Reese Swaniawski','Gertrude Runte'),(18,'E-1890','Mollie Kautzer','HR manager','Teleperformance Baguio','Harrison Rd, Baguio','535545','Hal Stokes','Liza Watsica II'),(19,'E-1891','Hope Hegmann','HR manager','Teleperformance Baguio','Harrison Rd, Baguio','454549','Reuben Kihn I','Hope Roob'),(20,'E-1892','Ulises Boyle','Architect','JENMEN ENGINEERING',' B316, Lopez Building, Session Road','714678','Louvenia Graham','Leonora Hilll'),(21,'E-1893','Prof. Zane Wiegand','College Professor','University of the Cordilleras','Gov. Pack Rd','746504','Shane Boyle','Mercedes Emmerich Jr.'),(22,'E-1894','Mr. Monserrate Parisian','Civil Engineer','RSN Engineering and Construction','6 Loakan Proper','626845','Orin Johnston','Libby Kerluke'),(23,'E-1895','Chaim Harvey IV','Electrical Engineer',' Anguitay Electrical Engineering Services','Pico Road, La Trinidad, Baguio City','891900','Myles Cummings','Jade Hauck V'),(24,'E-1896','Kathryn Mitchell DDS','IT','Linkage Web Development','First Road, Quezon Hill','85499','Patrick Schmidt III','Miss Emely Windler Jr.'),(25,'E-1897','Prof. William Torphy I','College Professor','University of the Cordilleras','Gov. Pack Rd','694889','Ross Effertz','Claudia Cruickshank'),(26,'E-1898','Flossie Heller','Journalist','ABS-CBN Corporation Baguio','Quezon Hill Rd 1, Baguio','185433','Murphy Oberbrunner','Melyna Wehner'),(27,'E-1899','Mr. Rodger Labadie III','N/A','N/A','N/A','N/A','Barrett Donnelly','Bettye Rippin'),(28,'E-1900','Jeramy Bernier','N/A','N/A','N/A','N/A','Ewell Shanahan','Josianne Waelchi III'),(29,'E-1901','Jamel Powlowski','Librarian','Baguio City Public Library','Kisad Rd, Baguio','773237','Modesto Schultz','Aniya Shanahan'),(30,'E-1902','Krystal Bednar','Law Clerk','Carino Law Office','Legarda Road, Baguio City','88946','Amparo Koelpin','Alayna Friesen'),(31,'E-1903','Prof. Daija White IV','College Professor','University Of Baguio','Anacleto St','980331','Stephan Conroy','Laurence Cremin'),(32,'E-1904','Prof. Kenyatta Luettgen','College Professor','University Of Baguio','Anacleto St','54770','Eliseo Watsica','Stephanie McKenzie'),(33,'E-1905','Trycia Mertz','Make up Artist','DAVID\'S SALON','4th Floor, Porta Vaga Main Building','611438','Oren Renner','Erica Botsford'),(34,'E-1906','Nikolas Braun','Civil Engineer','RSN Engineering and Construction','6 Loakan Proper','442824','Soledad Hahn','Magdalen Roberts'),(35,'E-1907','Miss Annie Bogan MD','Electrical Engineer','Anguitay Electrical Engineering Services','Pico Road, La Trinidad, Baguio City','351748','Buddy Luettgen','Lorna Rau I'),(36,'E-1908','Jordan Fadel DVM','IT','Linkage Web Development','First Road, Quezon Hill','952329','Garnett Cassin','Francisca Barrows'),(37,'E-1909','Prof. Joel Hilll MD','College Professor','University Of Baguio','Anacleto St','792075','Korey Nikolaus V','Elenor Greenholt'),(38,'E-1910','Linda Corwin','Microbiologist','Baguio General Hospital','Baguio General Hospital Driveway','851959','Vince Witting','Ciara Lubowitz'),(39,'E-1911','Bria Reynolds III','Music Teacher','MUSAR MUSIC',' Lower Ground Floor, SM City','904823','Isac Wilderman','Hildegard Funk'),(40,'E-1912','Susan Daugherty','N/A','N/A','N/A','261093','Andrew Sipes','Leta Grant'),(41,'E-1913','Earline Kozey','N/A','N/A','N/A','480892','Clovis Russel Jr.','Hilda Auer'),(42,'E-1914','Daniela Hermiston','N/A','N/A','N/A','682990','Ashton Leuschke II','Freda Mueller'),(43,'E-1915','Vada Powlowski Sr.','Architect','ARViL Studio','126b Egi Albergo Hotel, Baguio City','920484','Kade Bradtke','Reta Altenwerth'),(44,'E-1916','Hannah Rosenbaum','Business Manager','Vel similique eos velit.','Voluptatum et saepe quo.','814254','Josue Heidenreich','Mafalda Hoeger'),(45,'E-1917','Dr. Tevin Macejkovic Jr.','Dermatologist','Baguio General Hospital','Baguio General Hospital Driveway','532278','Celestino Hickle','Letitia Medhurst'),(46,'E-1918','Oswald Bartoletti','N/A','N/A','N/A','57375','Oliver Runte V','Flossie Kulas'),(47,'E-1919','Makenna Roberts Jr.','Pharmacist','Baguio General Hospital','Baguio General Hospital Driveway','731036','Myrl Keebler I','Teresa Konopelski'),(48,'E-1920','Prof. Barrett Schaefer','College Professor','University Of Baguio','Anacleto St','820873','Giles Wolff I','Nicole Jast'),(49,'E-1921','Ellis Bosco','N/A','N/A','N/A','N/A','Trace Marquardt','Carlotta Kozey'),(50,'E-1922','Albertha Leannon','N/A','N/A','N/A','N/A','Devante Morissette','Ivah Bergstrom');
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
  PRIMARY KEY (`plantilla_id`)
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
  PRIMARY KEY (`service_id`)
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
  PRIMARY KEY (`training_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainings`
--

LOCK TABLES `trainings` WRITE;
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
INSERT INTO `trainings` VALUES (1,'E-1873','Database Training with Open-Source Software','0000-00-00','0000-00-00',40,'Technical','Information Systems & Technology Management Service - DILG'),(2,'E-1874','Effective Human Resource Management','0000-00-00','0000-00-00',48,'Managerial',''),(3,'E-1875','Database Management Systems','0000-00-00','0000-00-00',35,'Technical',''),(4,'E-1876','Leadership Skills Development','0000-00-00','0000-00-00',48,'Supervisory',''),(5,'E-1877','Leadership Skills Development','0000-00-00','0000-00-00',32,'Supervisory',''),(6,'E-1878','Effective Human Resource Management','0000-00-00','0000-00-00',32,'Managerial',''),(7,'E-1879','Effective Human Resource Management','0000-00-00','0000-00-00',30,'Managerial',''),(8,'E-1880','Leadership Skills Development','0000-00-00','0000-00-00',30,'Supervisory',''),(9,'E-1881','Leadership Skills Development','0000-00-00','0000-00-00',30,'Supervisory',''),(10,'E-1882','Database Management Systems','0000-00-00','0000-00-00',36,'Technical',''),(11,'E-1883','Database Management Systems','0000-00-00','0000-00-00',40,'Technical',''),(12,'E-1884','Database Management Systems','0000-00-00','0000-00-00',35,'Technical',''),(13,'E-1885','Leadership Skills Development','0000-00-00','0000-00-00',45,'Supervisory',''),(14,'E-1886','Leadership Skills Development','0000-00-00','0000-00-00',41,'Supervisory',''),(15,'E-1887','Effective Human Resource Management','0000-00-00','0000-00-00',34,'Managerial',''),(16,'E-1888','Effective Human Resource Management','0000-00-00','0000-00-00',48,'Managerial',''),(17,'E-1889','Leadership Skills Development','0000-00-00','0000-00-00',31,'Supervisory',''),(18,'E-1890','Database Management Systems','0000-00-00','0000-00-00',41,'Technical',''),(19,'E-1891','Database Management Systems','0000-00-00','0000-00-00',41,'Technical',''),(20,'E-1892','Leadership Skills Development','0000-00-00','0000-00-00',38,'Supervisory',''),(21,'E-1893','Leadership Skills Development','0000-00-00','0000-00-00',34,'Supervisory',''),(22,'E-1894','Database Management Systems','0000-00-00','0000-00-00',36,'Technical',''),(23,'E-1895','Leadership Skills Development','0000-00-00','0000-00-00',33,'Supervisory',''),(24,'E-1896','Database Management Systems','0000-00-00','0000-00-00',45,'Technical',''),(25,'E-1897','Database Management Systems','0000-00-00','0000-00-00',41,'Technical',''),(26,'E-1898','Communication Skills Development','0000-00-00','0000-00-00',34,'',''),(27,'E-1899','Communication Skills Development','0000-00-00','0000-00-00',39,'',''),(28,'E-1900','Database Management Systems','0000-00-00','0000-00-00',33,'Technical',''),(29,'E-1901','Communication Skills Development','0000-00-00','0000-00-00',40,'',''),(30,'E-1902','Communication Skills Development','0000-00-00','0000-00-00',46,'',''),(31,'E-1903','Database Management Systems','0000-00-00','0000-00-00',37,'Technical',''),(32,'E-1904','Database Management Systems','0000-00-00','0000-00-00',42,'Technical',''),(33,'E-1905','Database Management Systems','0000-00-00','0000-00-00',37,'Technical',''),(34,'E-1906','Communication Skills Development','0000-00-00','0000-00-00',32,'',''),(35,'E-1907','Media Training (Facing the Press)','0000-00-00','0000-00-00',38,'',''),(36,'E-1908','Media Training (Facing the Press)','0000-00-00','0000-00-00',35,'',''),(37,'E-1909','Communication Skills Development','0000-00-00','0000-00-00',48,'',''),(38,'E-1910','Communication Skills Development','0000-00-00','0000-00-00',48,'',''),(39,'E-1911','Media Training (Facing the Press)','0000-00-00','0000-00-00',50,'',''),(40,'E-1912','Database Management Systems','0000-00-00','0000-00-00',42,'Technical',''),(41,'E-1913','Database Management Systems','0000-00-00','0000-00-00',32,'Technical',''),(42,'E-1914','Secretarial Practices & Office Management','0000-00-00','0000-00-00',36,'Managerial',''),(43,'E-1915','Database Management Systems','0000-00-00','0000-00-00',34,'Technical',''),(44,'E-1916','Secretarial Practices & Office Management','0000-00-00','0000-00-00',45,'Managerial',''),(45,'E-1917','Secretarial Practices & Office Management','0000-00-00','0000-00-00',30,'Managerial',''),(46,'E-1918','Secretarial Practices & Office Management','0000-00-00','0000-00-00',43,'Managerial',''),(47,'E-1919','Secretarial Practices & Office Management','0000-00-00','0000-00-00',41,'Managerial',''),(48,'E-1920','Communication Skills Development','0000-00-00','0000-00-00',47,'',''),(49,'E-1921','Communication Skills Development','0000-00-00','0000-00-00',35,'',''),(50,'E-1922','Communication Skills Development','0000-00-00','0000-00-00',50,'','');
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
  PRIMARY KEY (`voluntaryWork_id`)
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
  PRIMARY KEY (`workExperience_id`)
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

-- Dump completed on 2018-03-11 20:44:21
