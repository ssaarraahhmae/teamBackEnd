-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dilg-car
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
  `app_id` varchar(5) NOT NULL,
  `typeOfLeave` varchar(150) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `sickInfo` varchar(350) DEFAULT NULL,
  `noOfWorkingDays` int(2) DEFAULT NULL,
  `inclusiveDates` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
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
-- Table structure for table `civilserviceeligibility`
--

DROP TABLE IF EXISTS `civilserviceeligibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `civilserviceeligibility` (
  `civilService_id` varchar(10) NOT NULL,
  `civilServiceName` varchar(150) DEFAULT NULL,
  `rating` varchar(45) DEFAULT NULL,
  `dateOfExamination` varchar(45) DEFAULT NULL,
  `placeOfExamination` varchar(45) DEFAULT NULL,
  `licenseNumber` varchar(45) DEFAULT NULL,
  `licenseDateOfValidity` varchar(45) DEFAULT NULL,
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
  `educ_id` varchar(10) NOT NULL,
  `level` varchar(45) DEFAULT NULL,
  `nameOfSchool` varchar(200) DEFAULT NULL,
  `basicEducationDegreeCourse` varchar(100) DEFAULT NULL,
  `periodOfAttendanceFrom` varchar(45) DEFAULT NULL,
  `periodOfAttendanceTo` varchar(45) DEFAULT NULL,
  `highestLevelEarnedUnits` varchar(45) DEFAULT NULL,
  `yearGraduated` varchar(45) DEFAULT NULL,
  `scholarshipsAcademicHonorsReceived` varchar(45) DEFAULT NULL,
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
  `emp_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `dateOfBirth` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `bloodtype` varchar(45) DEFAULT NULL,
  `gsis` varchar(45) DEFAULT NULL,
  `pagibig` varchar(45) DEFAULT NULL,
  `sss` varchar(45) DEFAULT NULL,
  `tin` varchar(45) DEFAULT NULL,
  `citizenship` varchar(45) DEFAULT NULL,
  `residentialAddressHouseBlockLotNo` varchar(45) DEFAULT NULL,
  `residentialAddressStreet` varchar(45) DEFAULT NULL,
  `residentialAddressSubdivisionVillage` varchar(45) DEFAULT NULL,
  `residentialAddressBarangay` varchar(45) DEFAULT NULL,
  `residentialAddressCityMunicipality` varchar(45) DEFAULT NULL,
  `residentialAddressProvince` varchar(45) DEFAULT NULL,
  `residentialAddressZipcode` varchar(45) DEFAULT NULL,
  `permanentAddressHouseBlockLotNo` varchar(45) DEFAULT NULL,
  `permanentAddressStreet` varchar(45) DEFAULT NULL,
  `permanentAddressSubdivisionVillage` varchar(45) DEFAULT NULL,
  `permanentAddressBarangay` varchar(45) DEFAULT NULL,
  `permanentAddressCityMunicipality` varchar(45) DEFAULT NULL,
  `permanentAddressProvince` varchar(45) DEFAULT NULL,
  `permanentAddressZipcode` varchar(45) DEFAULT NULL,
  `telephoneNo` varchar(45) DEFAULT NULL,
  `mobileNo` varchar(45) DEFAULT NULL,
  `emailaddress` varchar(45) DEFAULT NULL,
  `citezenship_country` varchar(45) DEFAULT NULL,
  `citizenship_info` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
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
  `voluntaryWork_id` varchar(45) DEFAULT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
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
  `workExperience_id` varchar(45) DEFAULT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL
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
  `family_id` varchar(45) DEFAULT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `spouseName` varchar(45) DEFAULT NULL,
  `spouseOccupation` varchar(45) DEFAULT NULL,
  `spouseEmployerBusiness` varchar(45) DEFAULT NULL,
  `spouseBusinessAddress` varchar(45) DEFAULT NULL,
  `spouseTelephoneNo` varchar(45) DEFAULT NULL,
  `fatherName` varchar(45) DEFAULT NULL,
  `motherName` varchar(45) DEFAULT NULL
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
  `ledger_id` varchar(45) NOT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `app_id` varchar(45) DEFAULT NULL,
  `leave_ledgercol` varchar(45) DEFAULT NULL,
  `vacationAvailedLeaves` varchar(45) DEFAULT NULL,
  `vacationNoOfAbsence` varchar(45) DEFAULT NULL,
  `tardiness` varchar(45) DEFAULT NULL,
  `vacationEarned` varchar(45) DEFAULT NULL,
  `vacationBalance` varchar(45) DEFAULT NULL,
  `vacationAbsenceWithPay` varchar(45) DEFAULT NULL,
  `vacationAbscencesWithoutPay` varchar(45) DEFAULT NULL,
  `sickAvailedLeaves` varchar(45) DEFAULT NULL,
  `sickNoOfAbsenceTardiness` varchar(45) DEFAULT NULL,
  `sickEarned` varchar(45) DEFAULT NULL,
  `sickBalance` varchar(45) DEFAULT NULL,
  `sickAbsenceWithPay` varchar(45) DEFAULT NULL,
  `sickAbsencesWithoutPay` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
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
  `PdsEmployeeResponse_id` int(11) NOT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `no34ResponseA` varchar(45) DEFAULT NULL,
  `no34ResponseB` varchar(45) DEFAULT NULL,
  `no34ResponseDetails` varchar(45) DEFAULT NULL,
  `no35ResponseA` varchar(45) DEFAULT NULL,
  `no35ResponseB` varchar(45) DEFAULT NULL,
  `no35Details` varchar(45) DEFAULT NULL,
  `no36Response` varchar(45) DEFAULT NULL,
  `no36ResponseDetails` varchar(45) DEFAULT NULL,
  `no37Response` varchar(45) DEFAULT NULL,
  `no37Details` varchar(45) DEFAULT NULL,
  `no38ResponseA` varchar(45) DEFAULT NULL,
  `no38ResponseB` varchar(45) DEFAULT NULL,
  `no38ResponseDetails` varchar(45) DEFAULT NULL,
  `no39Response` varchar(45) DEFAULT NULL,
  `no39ResponseDetails` varchar(45) DEFAULT NULL,
  `no40ResponseA` varchar(45) DEFAULT NULL,
  `no40ResponseADetails` varchar(45) DEFAULT NULL,
  `no40ResponseB` varchar(45) DEFAULT NULL,
  `no40ResponseBDetails` varchar(45) DEFAULT NULL,
  `no40ResponseC` varchar(45) DEFAULT NULL,
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
  `plantilla_id` int(11) NOT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `position_id` varchar(45) DEFAULT NULL,
  `division_id` varchar(45) DEFAULT NULL,
  `itemNumber` varchar(45) DEFAULT NULL,
  `positionTitle` varchar(45) DEFAULT NULL,
  `salaryGrade` varchar(45) DEFAULT NULL,
  `authorized_sal` varchar(45) DEFAULT NULL,
  `actual_sal` varchar(45) DEFAULT NULL,
  `step_increment` varchar(45) DEFAULT NULL,
  `area_code` varchar(45) DEFAULT NULL,
  `plantillacol` varchar(45) DEFAULT NULL,
  `area_type` varchar(45) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `ppaAttribution` varchar(45) DEFAULT NULL,
  `civil` varchar(45) DEFAULT NULL,
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
  `position_id` int(11) NOT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
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
  `emp_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `telephoneNo` varchar(45) DEFAULT NULL,
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
  `service_id` int(11) NOT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `startJobDate` varchar(45) DEFAULT NULL,
  `endJobDate` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `annualSalary` varchar(45) DEFAULT NULL,
  `division` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
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
-- Table structure for table `servicerecord`
--

DROP TABLE IF EXISTS `servicerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicerecord` (
  `service_id` varchar(45) DEFAULT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `startJobDate` varchar(45) DEFAULT NULL,
  `endJobDate` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `annualSalary` varchar(45) DEFAULT NULL,
  `division` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicerecord`
--

LOCK TABLES `servicerecord` WRITE;
/*!40000 ALTER TABLE `servicerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template` (
  `template_id` int(11) NOT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `context` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
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
-- Table structure for table `voluntary_works`
--

DROP TABLE IF EXISTS `voluntary_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voluntary_works` (
  `voluntaryWork_id` int(11) NOT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `nameAddressOfOrganization` varchar(45) DEFAULT NULL,
  `from` varchar(45) DEFAULT NULL,
  `to` varchar(45) DEFAULT NULL,
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
  `startJobDate` varchar(45) DEFAULT NULL,
  `endJobDate` varchar(45) DEFAULT NULL,
  `positionTitle` varchar(45) DEFAULT NULL,
  `departmentAgencyOfficeCompany` varchar(45) DEFAULT NULL,
  `monthlySalary` varchar(45) DEFAULT NULL,
  `salaryJobPayGradesStep` varchar(45) DEFAULT NULL,
  `statusOfAppointment` varchar(45) DEFAULT NULL,
  `GovernmentService` varchar(45) DEFAULT NULL,
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

-- Dump completed on 2018-02-12 12:40:25
