-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dilg_car
-- ------------------------------------------------------
-- Server version	5.7.14

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
  `app_id` varchar(5) NOT NULL COMMENT 'sa mga ID iniwan ko muna ganyan di ko alam eh. hahaha',
  `emp_id` varchar(6) DEFAULT NULL,
  `typeOfLeave` enum('Sick','Vacation') DEFAULT NULL COMMENT 'Not sure.',
  `location` varchar(250) DEFAULT NULL,
  `sickInfo` varchar(350) DEFAULT NULL,
  `noOfWorkingDays` int(2) DEFAULT NULL,
  `inclusiveDates` varchar(100) DEFAULT NULL COMMENT 'Varchar lang siguro pwede dito di pwede data type na date. hahaha.',
  `status` enum('Accepted','Declined') DEFAULT NULL COMMENT 'Not sure. Hahhaa.',
  PRIMARY KEY (`app_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationforleave`
--

LOCK TABLES `applicationforleave` WRITE;
/*!40000 ALTER TABLE `applicationforleave` DISABLE KEYS */;
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
  `fullname` varchar(45) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `children`
--

LOCK TABLES `children` WRITE;
/*!40000 ALTER TABLE `children` DISABLE KEYS */;
/*!40000 ALTER TABLE `children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `civilserviceeligibility`
--

DROP TABLE IF EXISTS `civilserviceeligibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `civilserviceeligibility` (
  `civilService_id` varchar(10) NOT NULL COMMENT 'di ko alam kung paano id system. hahah.',
  `emp_id` varchar(6) DEFAULT NULL,
  `civilServiceName` varchar(150) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL COMMENT 'Hmm not sure. Percentage (if applicable) daw tapos yung mga iba nakasulat ''Passed''.',
  `dateOfExamination` date DEFAULT NULL,
  `placeOfExamination` varchar(45) DEFAULT NULL,
  `licenseNumber` varchar(25) DEFAULT NULL COMMENT 'number with dashes kaya varchar ginamit ko. hahaha',
  `licenseDateOfValidity` date DEFAULT NULL,
  PRIMARY KEY (`civilService_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `civilserviceeligibility`
--

LOCK TABLES `civilserviceeligibility` WRITE;
/*!40000 ALTER TABLE `civilserviceeligibility` DISABLE KEYS */;
/*!40000 ALTER TABLE `civilserviceeligibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division` (
  `division_id` varchar(10) NOT NULL,
  `division_code` int(10) DEFAULT NULL,
  `division` varchar(45) DEFAULT NULL,
  `province` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`division_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationalbackground`
--

DROP TABLE IF EXISTS `educationalbackground`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educationalbackground` (
  `educ_id` varchar(10) NOT NULL COMMENT 'di ko rin alam id system natin. ',
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Di ko sure yung sa data ype. Binase ko lang yun nasa PDS. ',
  `level` enum('Elementary','Secondary','Vocational/Trade Course','College','Graduate Studies') DEFAULT NULL,
  `nameOfSchool` varchar(200) DEFAULT NULL,
  `basicEducationDegreeCourse` varchar(100) DEFAULT NULL,
  `periodOfAttendanceFrom` year(4) DEFAULT NULL,
  `periodOfAttendanceTo` year(4) DEFAULT NULL,
  `highestLevelEarnedUnits` int(2) DEFAULT NULL,
  `yearGraduated` year(4) DEFAULT NULL,
  `scholarshipsAcademicHonorsReceived` varchar(50) DEFAULT NULL,
  `educationalbackgroundcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`educ_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationalbackground`
--

LOCK TABLES `educationalbackground` WRITE;
/*!40000 ALTER TABLE `educationalbackground` DISABLE KEYS */;
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
  `name` varchar(45) DEFAULT NULL,
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
  `citezenship_country` varchar(45) DEFAULT NULL,
  `citizenship_info` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL COMMENT 'Di ko pa alam kung paano to galawin. ',
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empvolu`
--

DROP TABLE IF EXISTS `empvolu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empvolu` (
  `voluntaryWork_id` varchar(45) DEFAULT NULL COMMENT 'di ako sure sa mga ID. Hahaha',
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Binase ko lang yung emp_id sa PDS natin.',
  `position_title` varchar(45) DEFAULT NULL
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
  `workExperience_id` varchar(45) NOT NULL COMMENT 'Di ko sure sa ID. hahhaa.',
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
  `family_id` varchar(45) NOT NULL,
  `emp_id` varchar(6) DEFAULT NULL,
  `spouseName` varchar(45) DEFAULT NULL,
  `spouseOccupation` varchar(45) DEFAULT NULL,
  `spouseEmployerBusiness` varchar(45) DEFAULT NULL,
  `spouseBusinessAddress` varchar(45) DEFAULT NULL,
  `spouseTelephoneNo` varchar(13) DEFAULT NULL,
  `fatherName` varchar(45) DEFAULT NULL,
  `motherName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`family_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familybackground`
--

LOCK TABLES `familybackground` WRITE;
/*!40000 ALTER TABLE `familybackground` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_ledger`
--

LOCK TABLES `leave_ledger` WRITE;
/*!40000 ALTER TABLE `leave_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_ledger` ENABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_info`
--

LOCK TABLES `other_info` WRITE;
/*!40000 ALTER TABLE `other_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_info` ENABLE KEYS */;
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
  `plantilla_id` int(11) NOT NULL COMMENT 'di ko muna nilagyan to kasi di ako sure dun sa numbering system natin. ',
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
  `emp_id` varchar(6) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `salary_grade` int(2) DEFAULT NULL,
  `salary` int(6) DEFAULT NULL COMMENT 'Heto yung per month? hahaha. Kaya 6 digits lang. Di ko sure.\n\nDouble check na lang. Hahaha.',
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `references` (
  `reference_id` int(11) NOT NULL,
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Binase ko ulit dun sa PDS. Hahaha',
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephoneNo` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`reference_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references`
--

LOCK TABLES `references` WRITE;
/*!40000 ALTER TABLE `references` DISABLE KEYS */;
/*!40000 ALTER TABLE `references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_record`
--

DROP TABLE IF EXISTS `service_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_record` (
  `service_id` int(11) NOT NULL COMMENT 'Ini-skip ko to di ko pa alam ID system natin. hahaha',
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_record`
--

LOCK TABLES `service_record` WRITE;
/*!40000 ALTER TABLE `service_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_record` ENABLE KEYS */;
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
  `training_id` int(11) NOT NULL,
  `emp_id` varchar(6) DEFAULT NULL COMMENT 'Binase ko lang dun sa PDS natin. hahaha',
  `titleofTrainingLearning` varchar(45) DEFAULT NULL,
  `trainingStart` date DEFAULT NULL,
  `trainingEnd` date DEFAULT NULL,
  `numberOfHours` int(3) DEFAULT NULL COMMENT 'Usually 2 digits pero ginawa ko nang 3. Hhaha.',
  `typeOfLP` enum('Managerial','Supervisory','Technical') DEFAULT NULL COMMENT 'Di ko sure to. kasi yung nakalagay dun sa PDS "Type of LD (Managerial/Supervisory/Technical/etc) Paano kaya yung etc? hahaha. Hmmm. Di ko alam. hahaha\n',
  `conductedSponsoredBy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`training_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainings`
--

LOCK TABLES `trainings` WRITE;
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voluntary_works`
--

LOCK TABLES `voluntary_works` WRITE;
/*!40000 ALTER TABLE `voluntary_works` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workexperience`
--

LOCK TABLES `workexperience` WRITE;
/*!40000 ALTER TABLE `workexperience` DISABLE KEYS */;
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

-- Dump completed on 2018-02-21 16:32:45
