-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ohora18206039
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `candidate` (
  `candidate_identifier` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `address` varchar(90) DEFAULT NULL,
  `telephone_no` int(20) NOT NULL,
  PRIMARY KEY (`candidate_identifier`),
  UNIQUE KEY `candidate identifier_UNIQUE` (`candidate_identifier`),
  UNIQUE KEY `telephone number_UNIQUE` (`telephone_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES ('131313818','Lucas','Hermanov','56 Parkvale, Dublin, Ireland',3138088),('138013801','Niamh','Leonard','8 Birchfield Avenue, Dublin, Ireland',3810398),('238098011','Charlie','Dempsey','39 Dun Emer Road, Dublin, Ireland',1310381),('380198018','Denice','Doyle','60 Balally Avenue, Dublin, Ireland',3018308),('401871403','James','Jones','451 Clontarf Drive, Dublin, Ireland',871571),('420808080','Alice','Ahern','367 Ballymun Road, Dublin, Ireland',918301),('428798791','Alex','Reynolds','135 Palm Lane, Los Angeles, USA',1491870),('577576576','Janice','O\'Neill','38 Eden Park Drive, Dublin, Ireland',838408),('636636466','Andrew','McManus','391 Malahide Road, Dublin, Ireland',3091038),('980283202','Ella','MacAffee','19 Foxfield Grove, Dublin, Ireland',1301701);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_skills`
--

DROP TABLE IF EXISTS `candidate_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `candidate_skills` (
  `skill` varchar(45) NOT NULL,
  `candidate_identifier` varchar(45) NOT NULL,
  PRIMARY KEY (`skill`,`candidate_identifier`),
  KEY `cs_to_candidate_idx` (`candidate_identifier`),
  CONSTRAINT `cs_to_candidate` FOREIGN KEY (`candidate_identifier`) REFERENCES `candidate` (`candidate_identifier`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cs_to_skills` FOREIGN KEY (`skill`) REFERENCES `skills` (`skill_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skills`
--

LOCK TABLES `candidate_skills` WRITE;
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` VALUES ('Calling','131313818'),('Cyber-Security Experience','138013801'),('Administrative','238098011'),('HR Management','238098011'),('Cyber-Security Experience','380198018'),('HTML and CSS','380198018'),('Python','380198018'),('Accounting','401871403'),('Excell','401871403'),('HTML and CSS','420808080'),('Javascript','420808080'),('Accounting','428798791'),('Excell','428798791'),('HTML and CSS','577576576'),('Javascript','577576576'),('Python','577576576'),('Database Management','636636466'),('HTML and CSS','980283202'),('Javascript','980283202'),('Python','980283202');
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `department_identifier` varchar(45) NOT NULL,
  `department_name` varchar(45) NOT NULL,
  `address` varchar(90) NOT NULL,
  `telephone_no` int(20) NOT NULL,
  PRIMARY KEY (`department_identifier`),
  UNIQUE KEY `department_identifier_UNIQUE` (`department_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('DEP117179','Lean Integration','10 Merchants Quay, Dublin, Ireland',34287482),('DEP130813','Marketing','10 Merchants Quay, Dublin, Ireland',31380188),('DEP131371','Law','20 Merchants Quay, Dublin, Ireland',38108302),('DEP138011','Web Development','10 Merchants Quay, Dublin, Ireland',32429442),('DEP201811','Shipping','4 Ellis Quay, Dublin, Ireland',40842013),('DEP201830','R&D','10 Merchants Quay, Dublin, Ireland',13018301),('DEP308108','Software Development','10 Merchants Quay, Dublin, Ireland',31311011),('DEP310801','HR','10 Merchants Quay, Dublin, Ireland',31831312),('DEP482469','Mergers and Aquisitions','123 Wallstreet, Washington D.C., USA',13801314),('DEP678745','Accounting','102 Kunjungmae Mariso, Makassar, Indonesia',31701471);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `interview` (
  `interview_identifier` varchar(45) NOT NULL,
  `position_identifier` varchar(45) NOT NULL,
  `candidate_identifier` varchar(45) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `offered_position_y_or_n` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`interview_identifier`),
  UNIQUE KEY `interview_identifier_UNIQUE` (`interview_identifier`),
  KEY `int-pos_idx` (`position_identifier`),
  KEY `int-cand_idx` (`candidate_identifier`),
  CONSTRAINT `int-cand` FOREIGN KEY (`candidate_identifier`) REFERENCES `candidate` (`candidate_identifier`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `int-pos` FOREIGN KEY (`position_identifier`) REFERENCES `position` (`position_identifier`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
INSERT INTO `interview` VALUES ('I031810','193879','131313818','18/07/2018','Y'),('I201883','768467','131313818','12/04/2018','N'),('I213004','123786','401871403','09/11/2018','Y'),('I216051','130811','980283202','24/03/2018','Y'),('I217038','130811','577576576','25/03/2018','Y'),('I310781','398177','428798791','14/06/2018','N'),('I318948','310848','420808080','15/08/2018','Y'),('I319839','768467','428798791','08/10/2018','Y'),('I422081','768467','401871403','17/09/2018','N'),('I917393','310848','428798791','14/08/2018','N');
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `position` (
  `position_identifier` varchar(45) NOT NULL,
  `department_offering_position` varchar(45) NOT NULL,
  `position_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`position_identifier`),
  UNIQUE KEY `position_identifier_UNIQUE` (`position_identifier`),
  KEY `pos-dept_idx` (`department_offering_position`),
  CONSTRAINT `pos-dept` FOREIGN KEY (`department_offering_position`) REFERENCES `department` (`department_identifier`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES ('123786','DEP482469','Accounting'),('130811','DEP138011','Front End Web Development'),('139187','DEP117179','Lean Integration'),('139717','DEP678745','Reception'),('139817','DEP138011','Front End Web Development'),('193879','DEP678745','Internship'),('310848','DEP678745','Manager'),('398177','DEP482469','Accounting'),('768467','DEP678745','Assistant'),('937191','DEP310801','HR Management');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_skill_req`
--

DROP TABLE IF EXISTS `position_skill_req`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `position_skill_req` (
  `position_identifier` varchar(45) NOT NULL,
  `skill` varchar(45) NOT NULL,
  PRIMARY KEY (`position_identifier`,`skill`),
  KEY `ps_to_skills_idx` (`skill`),
  CONSTRAINT `ps_to_position` FOREIGN KEY (`position_identifier`) REFERENCES `position` (`position_identifier`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ps_to_skills` FOREIGN KEY (`skill`) REFERENCES `skills` (`skill_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_skill_req`
--

LOCK TABLES `position_skill_req` WRITE;
/*!40000 ALTER TABLE `position_skill_req` DISABLE KEYS */;
INSERT INTO `position_skill_req` VALUES ('123786','Accounting'),('398177','Accounting'),('139187','Administrative'),('310848','Administrative'),('937191','Administrative'),('139717','Calling'),('193879','Calling'),('768467','Calling'),('123786','Excell'),('398177','Excell'),('937191','HR Management'),('130811','HTML and CSS'),('130811','Javascript'),('139817','Javascript'),('139817','Python'),('139717','Reception Experience');
/*!40000 ALTER TABLE `position_skill_req` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `skills` (
  `skill_name` varchar(45) NOT NULL,
  PRIMARY KEY (`skill_name`),
  UNIQUE KEY `skill_name_UNIQUE` (`skill_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES ('Accounting'),('Administrative'),('Calling'),('Cyber-Security Experience'),('Database Management'),('Excell'),('HR Management'),('HTML and CSS'),('Javascript'),('Python'),('Reception Experience');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ohora18206039'
--

--
-- Dumping routines for database 'ohora18206039'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_row_candidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_row_candidate`(IN `candidate_identifier` varchar(45), IN `firstname` varchar(45), IN `surname` varchar(45), IN `address` varchar(45), IN `telephone_no`INT)
BEGIN
INSERT INTO `ohora18206039`.`candidate` (`candidate_identifier`, `firstname`, `surname`, `address`, `telephone_no`) VALUES (`candidate_identifier`, `firstname`, `surname`, `address`, `telephone_no`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_row_candidate_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_row_candidate_skills`(IN `skill` varchar(45), IN `candidate_identifier` varchar(45))
BEGIN
INSERT INTO `ohora18206039`.`candidate_skills` (`skill`, `candidate_identifier`) VALUES (`skill`, `candidate_identifier`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_row_department` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_row_department`(IN `department_identifier` varchar(45), IN `department_name` varchar(45), IN `address` varchar(90),  IN `telephone_no` INT)
BEGIN
INSERT INTO `ohora18206039`.`department` (`department_identifier`, `department_name`, `address`, `telephone_no`) VALUES (`department_identifier`, `department_name`, `address`, `telephone_no`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_row_interview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_row_interview`(IN `interview_identifier` varchar(45), IN `position_identifier` varchar(45), IN `candidate_identifier` varchar(45), IN `date` varchar(45), IN `offered_position_y_or_n` varchar(45))
BEGIN
INSERT INTO `ohora18206039`.`interview` (`interview_identifier`, `position_identifier`, `candidate_identifier`, `date`, `offered_position_y_or_n`) VALUES (`interview_identifier`, `position_identifier`, `candidate_identifier`, `date`, `offered_position_y_or_n`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_row_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_row_position`(IN position_identifier varchar(45), IN department_offering_position varchar(45), IN position_type varchar(45))
BEGIN
	insert into ohora18206039.position (position_identifier, department_offering_position, position_type) values (position_identifier, department_offering_position, position_type); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_row_position_skill_req` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_row_position_skill_req`(IN `position_identifier` varchar(45), IN `skill` varchar(45))
BEGIN
INSERT INTO `ohora18206039`.`position_skill_req` (`position_identifier`, `skill`) VALUES (`position_identifier`, `skill`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_row_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_row_skills`(IN skill_name varchar(45))
BEGIN
INSERT INTO `ohora18206039`.`skills` (`skill_name`) VALUES (`skill_name`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_cand_by_firstname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_cand_by_firstname`(IN firstname_of_candidate varchar(45))
BEGIN
	SELECT *
    FROM candidate
    WHERE candidate.firstname=firstname_of_candidate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_cand_by_skill_req_pos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_cand_by_skill_req_pos`(IN position_identifier varchar(45))
BEGIN
	SELECT DISTINCT candidate.candidate_identifier, candidate.firstname, candidate.surname, candidate.address, candidate.telephone_no
    FROM candidate_skills, position_skill_req, candidate
    WHERE candidate.candidate_identifier=candidate_skills.candidate_identifier AND candidate_skills.skill=position_skill_req.skill AND position_skill_req.position_identifier=position_identifier;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_cand_int_more_than_once` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_cand_int_more_than_once`()
BEGIN
	SELECT interview.candidate_identifier, candidate.firstname, candidate.surname
    FROM interview, candidate
    WHERE interview.candidate_identifier=candidate.candidate_identifier
    GROUP BY interview.candidate_identifier
    HAVING COUNT(interview.candidate_identifier) > 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_cand_surname_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_cand_surname_by_id`(IN candidate_identifier varchar(45))
BEGIN
	SELECT candidate.surname
    FROM candidate
    WHERE candidate.candidate_identifier=candidate_identifier;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_dept_by_dept_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_dept_by_dept_id`(IN department_identifier varchar(45))
BEGIN
	SELECT *
    FROM department
    WHERE department.department_identifier=department_identifier;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_dept_by_dept_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_dept_by_dept_name`(IN department_name varchar(45))
BEGIN
	SELECT *
    FROM department
    WHERE department.department_name =department_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_interviews_given_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_interviews_given_date`(IN interview_date varchar(45))
BEGIN
	SELECT *
    FROM interview
    WHERE date=interview_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_no_candidates_offered_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_no_candidates_offered_position`(IN identifier_of_offered_position varchar(45))
BEGIN
	SELECT COUNT(candidate_identifier)
    FROM interview
    WHERE position_identifier=identifier_of_offered_position AND offered_position_y_or_n='Y';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_no_positions_requiring_admin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_no_positions_requiring_admin`()
BEGIN
	SELECT COUNT(position_identifier)
    FROM position_skill_req
    WHERE skill='Administrative';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_position_by_req_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_position_by_req_skill`(IN required_skill varchar(45))
BEGIN
	SELECT DISTINCT position.position_identifier, position.department_offering_position, position.position_type 
    FROM position_skill_req, position
    WHERE position.position_identifier=position_skill_req.position_identifier AND position_skill_req.skill=required_skill;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sort_positions_by_dept` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sort_positions_by_dept`()
BEGIN
	SELECT position_identifier, department_offering_position, position_type
    FROM position
    ORDER BY department_offering_position;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-14 16:45:52
