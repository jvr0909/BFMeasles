-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: new_bf
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `codeFinalClassification`
--

DROP TABLE IF EXISTS `codeFinalClassification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codeFinalClassification` (
  `FinalClassification` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeFinalClassification`
--

LOCK TABLES `codeFinalClassification` WRITE;
/*!40000 ALTER TABLE `codeFinalClassification` DISABLE KEYS */;
INSERT INTO `codeFinalClassification` VALUES ('1-Confirmé par labo'),('\n2-Confirmé par lien Epi'),('3-Compatible/clin. no spec'),('4-Rejeté - IgM négatif'),('5-Résultats en attente');
/*!40000 ALTER TABLE `codeFinalClassification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeInoutpatient`
--

DROP TABLE IF EXISTS `codeInoutpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codeInoutpatient` (
  `Inoutpatient` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeInoutpatient`
--

LOCK TABLES `codeInoutpatient` WRITE;
/*!40000 ALTER TABLE `codeInoutpatient` DISABLE KEYS */;
INSERT INTO `codeInoutpatient` VALUES ('1-Hospitalisé'),('2-Externe');
/*!40000 ALTER TABLE `codeInoutpatient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeMeaslesIgm`
--

DROP TABLE IF EXISTS `codeMeaslesIgm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codeMeaslesIgm` (
  `MeaslesIgm` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeMeaslesIgm`
--

LOCK TABLES `codeMeaslesIgm` WRITE;
/*!40000 ALTER TABLE `codeMeaslesIgm` DISABLE KEYS */;
INSERT INTO `codeMeaslesIgm` VALUES ('1-Positif\n'),('2-Négatif'),('3-Indeterminé'),('4-Pas fait'),('5-En attente'),('9-Inconnu');
/*!40000 ALTER TABLE `codeMeaslesIgm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeOutcome`
--

DROP TABLE IF EXISTS `codeOutcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codeOutcome` (
  `Outcome` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeOutcome`
--

LOCK TABLES `codeOutcome` WRITE;
/*!40000 ALTER TABLE `codeOutcome` DISABLE KEYS */;
INSERT INTO `codeOutcome` VALUES ('1-Vivant'),('2-Décedé'),('9-Inconnu');
/*!40000 ALTER TABLE `codeOutcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeRubellaIgm`
--

DROP TABLE IF EXISTS `codeRubellaIgm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codeRubellaIgm` (
  `RubellaIgm` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeRubellaIgm`
--

LOCK TABLES `codeRubellaIgm` WRITE;
/*!40000 ALTER TABLE `codeRubellaIgm` DISABLE KEYS */;
INSERT INTO `codeRubellaIgm` VALUES ('1-Positif\n'),('2-Négatif'),('3-Indeterminé'),('4-Pas fait'),('5-En attente'),('9-Inconnu');
/*!40000 ALTER TABLE `codeRubellaIgm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeSex`
--

DROP TABLE IF EXISTS `codeSex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codeSex` (
  `Sex` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeSex`
--

LOCK TABLES `codeSex` WRITE;
/*!40000 ALTER TABLE `codeSex` DISABLE KEYS */;
INSERT INTO `codeSex` VALUES ('f-Female'),('M-Male');
/*!40000 ALTER TABLE `codeSex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeSpecimenCondition`
--

DROP TABLE IF EXISTS `codeSpecimenCondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codeSpecimenCondition` (
  `SpecimenCondition` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeSpecimenCondition`
--

LOCK TABLES `codeSpecimenCondition` WRITE;
/*!40000 ALTER TABLE `codeSpecimenCondition` DISABLE KEYS */;
INSERT INTO `codeSpecimenCondition` VALUES ('1-Adéquat\n'),('2-inadéquat');
/*!40000 ALTER TABLE `codeSpecimenCondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeSpecimenSource`
--

DROP TABLE IF EXISTS `codeSpecimenSource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codeSpecimenSource` (
  `SpecimenSource` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeSpecimenSource`
--

LOCK TABLES `codeSpecimenSource` WRITE;
/*!40000 ALTER TABLE `codeSpecimenSource` DISABLE KEYS */;
INSERT INTO `codeSpecimenSource` VALUES ('1-Blood'),('2-Urine'),('3-Respiratory'),('4-Other');
/*!40000 ALTER TABLE `codeSpecimenSource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeUrbanrural`
--

DROP TABLE IF EXISTS `codeUrbanrural`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codeUrbanrural` (
  `Urbanrural` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeUrbanrural`
--

LOCK TABLES `codeUrbanrural` WRITE;
/*!40000 ALTER TABLE `codeUrbanrural` DISABLE KEYS */;
INSERT INTO `codeUrbanrural` VALUES ('R-Rural'),('U-Urban');
/*!40000 ALTER TABLE `codeUrbanrural` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `Province_Name` text,
  `District_Name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES ('BANFORA','BANFORA'),('BANFORA','SINDOU'),('BANFORA','MANGODARA'),('KAYA','BARSALGHO'),('KAYA','BOULSA'),('KAYA','KAYA'),('KAYA','KONGOUSSI'),('GAOUA','BATIE'),('GAOUA','DANO'),('GAOUA','DIEBOUGOU'),('GAOUA','GAOUA'),('FADA','BOGANDE'),('FADA','DIAPAGA'),('FADA','FADA NGOURMA'),('FADA','GAYERI'),('FADA','MANNI'),('FADA','PAMA'),('DEDOUGOU','BOROMO'),('DEDOUGOU','DEDOUGOU'),('DEDOUGOU','NOUNA'),('DEDOUGOU','SOLENZO'),('DEDOUGOU','TOMA'),('DEDOUGOU','TOUGAN'),('ZINIARE','BOUSSE'),('ZINIARE','ZINIARE'),('ZINIARE','ZORGHO'),('BOBO','DAFRA'),('BOBO','DANDE'),('BOBO','DO'),('BOBO','HOUNDE'),('BOBO','KARANGASSO-VIGUE'),('BOBO','LENA'),('BOBO','ORODARA'),('DORI','DJIBO'),('DORI','DORI'),('DORI','GOROM-GOROM'),('DORI','SEBBA'),('OUAHIGOUYA','GOURCY'),('OUAHIGOUYA','OUAHIGOUYA'),('OUAHIGOUYA','SEGUENEGA'),('OUAHIGOUYA','TITAO'),('OUAHIGOUYA','YAKO'),('KOUDOUGOU','KOUDOUGOU'),('KOUDOUGOU','LEO'),('KOUDOUGOU','NANORO'),('KOUDOUGOU','REO'),('KOUDOUGOU','SAPOUY'),('OUAGADOUGOU','BASKUY'),('OUAGADOUGOU','BOGODOGO'),('OUAGADOUGOU','BOULMIOUGOU'),('OUAGADOUGOU','NONGR-MASSOM'),('OUAGADOUGOU','SIG-NOGHIN'),('TENKODOGO','BITTOU'),('TENKODOGO','GARANGO'),('TENKODOGO','KOUPELA'),('TENKODOGO','OUARGAYE'),('TENKODOGO','POUYTENGA'),('TENKODOGO','TENKODOGO'),('TENKODOGO','ZABRE'),('MANGA','KOMBISSIRI'),('MANGA','MANGA'),('MANGA','PO'),('MANGA','SAPONE'),('KAYA','BOUSSOUMA'),('BOBO','N\'DOROLA'),('GAOUA','KAMPTI'),('KAYA','TOUGOURI'),('KOUDOUGOU','SABOU'),('KOUDOUGOU','TENADO'),('OUAHIGOUYA','TIOU');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_interests`
--

DROP TABLE IF EXISTS `generic_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generic_interests` (
  `Index` int DEFAULT NULL,
  `IDNumber` text,
  `CountryCode` text,
  `ProvinceOfResidence` text,
  `ReportingDistrict` text,
  `DateReceivedNatlevel` text,
  `NamesOfPatient` text,
  `DateOfBirth` text,
  `Age` double DEFAULT NULL,
  `Sex` text,
  `Towncity` text,
  `MeaslesIgm` double DEFAULT NULL,
  `RubellaIgm` double DEFAULT NULL,
  `ReportingHealthfacility` text,
  `DateOfLastvaccination` text,
  `NumberOfVaccinedoses` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_interests`
--

LOCK TABLES `generic_interests` WRITE;
/*!40000 ALTER TABLE `generic_interests` DISABLE KEYS */;
INSERT INTO `generic_interests` VALUES (0,'BFA-DOR-DOR-19-0001','BFA','DORI','DORI','01/11/19 00:00:00','OUEDRAOGO BASSIROU','',7,'M','DORI',1,4,'MBANGA','',99),(1,'BFA-TEN-BIT-19-0002','BFA','TENKODOGO','BITTOU','01/18/19 00:00:00','ZAMPALIGRE FATIMATA','01/22/18 00:00:00',0.92,'F','BITTOU',2,2,'CSPS URBAIN','11/30/18 00:00:00',1),(2,'BFA-TEN-BIT-19-0003','BFA','TENKODOGO','BITTOU','01/18/19 00:00:00','OUEDRAOGO ANGE MICKAEL','07/10/17 00:00:00',1.5,'M','BITTOU',2,2,'CMA BITTOU','10/19/18 00:00:00',2),(3,'BFA-KOU-REO-19-0004','BFA','KOUDOUGOU','REO','01/20/19 00:00:00','BAZIE PASCALINE','',16,'F','REO',2,2,'BISSOU','',99),(4,'BFA-MAN-SAP-19-0005','BFA','MANGA','SAPONE','01/22/19 00:00:00','SANA ALASSANE','04/11/18 00:00:00',0.75,'M','SAPONE',2,2,'TARGHO','',99),(5,'BFA-KOU-SAP-19-0006','BFA','KOUDOUGOU','SAPOUY','01/23/19 00:00:00','SAWADOGO ABDOUL AZIZ','',6,'M','SAPOUY',2,2,'CSPS URBAIN','07/30/18 00:00:00',1),(6,'BFA-BAN-BAN-19-0007','BFA','BANFORA','BANFORA','01/24/19 00:00:00','HEMA FATOU','01/01/11 00:00:00',8.08,'F','BANFORA',2,2,'CSPS PANGA','11/15/14 00:00:00',3),(7,'BFA-KAY-BAR-19-0008','BFA','DORI','BARSALGHO','01/25/19 00:00:00','BAGUIAN SALIMATA','',5,'F','DJIBO',1,4,'FOUBE','',99),(8,'BFA-KAY-BAR-19-0009','BFA','DORI','BARSALGHO','01/25/19 00:00:00','BAGUIAN DJAMILA','',8,'F','DJIBO',1,4,'FOUBE','',99),(9,'BFA-KAY-BAR-19-0010','BFA','DORI','BARSALGHO','01/25/19 00:00:00','BAGUIAN HAROUNA','',4,'M','DJIBO',2,2,'FOUBE','',99),(10,'BFA-KAY-BAR-19-0011','BFA','DORI','BARSALGHO','01/25/19 00:00:00','BAGUIAN ALIMATA','',4,'F','DJIBO',1,4,'FOUBE','',99),(11,'BFA-KAY-BAR-19-0012','BFA','DORI','BARSALGHO','01/25/19 00:00:00','BAGUIAN INOUSSA','',4,'M','DJIBO',1,4,'FOUBE','',99),(12,'BFA-KAY-BAR-19-0013','BFA','DORI','BARSALGHO','01/25/19 00:00:00','BAGUIAN TIDIANE','',10,'M','DJIBO',3,2,'FOUBE','',99),(13,'BFA-KAY-BAR-19-0014','BFA','DORI','BARSALGHO','01/25/19 00:00:00','BAGUIAN MARIATA','',5,'F','DJIBO',1,4,'FOUBE','',99),(14,'BFA-KAY-BAR-19-0015','BFA','DORI','BARSALGHO','01/25/19 00:00:00','BAGUIAN SALMATA','',12,'F','DJIBO',1,4,'FOUBE','',99),(15,'BFA-KAY-BAR-19-0016','BFA','DORI','BARSALGHO','01/25/19 00:00:00','BAGUIAN SALMATA','',5,'F','DJIBO',1,4,'FOUBE','',99),(16,'BFA-KAY-BAR-19-0017','BFA','DORI','BARSALGHO','01/25/19 00:00:00','BAGUIAN AICHA','',3,'F','DJIBO',1,4,'FOUBE','',99),(17,'BFA-KAY-BAR-19-0018','BFA','DORI','BARSALGHO','01/25/19 00:00:00','BAGUIAN SALMATA','',9,'F','DJIBO',1,4,'FOUBE','',99),(18,'BFA-KAY-BAR-19-0019','BFA','DORI','BARSALGHO','01/25/19 00:00:00','BAGUIAN AMSETOU','',30,'F','DJIBO',1,4,'FOUBE','',99),(19,'BFA-KAY-BAR-19-0020','BFA','DORI','BARSALGHO','01/25/19 00:00:00','YANTA SID-ABASSE','',6,'M','DJIBO',1,4,'FOUBE','',99),(20,'BFA-KAY-BAR-19-0021','BFA','DORI','BARSALGHO','01/25/19 00:00:00','KOANDA RASMANE','08/05/14 00:00:00',4.5,'M','DJIBO',1,4,'FOUBE','',99),(21,'BFA-OUA-BOU-19-0022','BFA','OUAGADOUGOU','BOULMIOUGOU','01/25/19 00:00:00','SAM LOUKMANE','12/31/00 00:00:00',18.08,'M','TANGHIN DASSOURI',1,4,'CM TANGHIN DASSOURI','',99),(22,'BFA-OUA-BOU-19-0023','BFA','OUAGADOUGOU','BOULMIOUGOU','01/25/19 00:00:00','KAFANDO YVANN URIEL','06/13/14 00:00:00',4.58,'M','OUAGADOUGOU',2,2,'PSUT','',99);
/*!40000 ALTER TABLE `generic_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genericcasebased`
--

DROP TABLE IF EXISTS `genericcasebased`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genericcasebased` (
  `IDNumber` text,
  `CountryCode` text,
  `ReportingDistrict` text,
  `ReportingHealthfacility` text,
  `DataType` text,
  `DateReceivedNatlevel` text,
  `NamesOfPatient` text,
  `DateOfBirth` text,
  `AgeInyears` double DEFAULT NULL,
  `AgeInmonths` text,
  `Age` double DEFAULT NULL,
  `Sex` text,
  `PatientsResidence` text,
  `Towncity` text,
  `DistrictofResidence` text,
  `ProvinceOfResidence` text,
  `Urbanrural` text,
  `DateSeenHealthFacility` text,
  `DateHealthfacilitynotified` text,
  `DateOfonset` text,
  `NumberOfVaccinedoses` double DEFAULT NULL,
  `DateOfLastvaccination` text,
  `BlankVariable1` text,
  `BlankVariable2` text,
  `Inoutpatient` int DEFAULT NULL,
  `Outcome` int DEFAULT NULL,
  `FinalClassification` int DEFAULT NULL,
  `DateSentFormtodistrict` text,
  `DateRecformdistrict` text,
  `DateSpecimencollected` text,
  `DateSpecimenSenttolab` text,
  `DateLabReceivedSpecimen` text,
  `SpecimenCondition` int DEFAULT NULL,
  `MeaslesIgm` int DEFAULT NULL,
  `RubellaIgm` int DEFAULT NULL,
  `OtherLabResults` text,
  `DateLabSentResulttodistrict` text,
  `DateDistrictRecLabResults` text,
  `UniqueKey` int DEFAULT NULL,
  `RECSTATUS` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genericcasebased`
--

LOCK TABLES `genericcasebased` WRITE;
/*!40000 ALTER TABLE `genericcasebased` DISABLE KEYS */;
INSERT INTO `genericcasebased` VALUES ('BFA-DOR-DOR-19-0001','BFA','DORI','MBANGA','','01/11/19 00:00:00','OUEDRAOGO BASSIROU','',7,'',7,'M','GANGAOL','DORI','DORI','DORI','R','01/08/19 00:00:00','01/08/19 00:00:00','01/06/19 00:00:00',99,'','','',2,1,1,'01/08/19 00:00:00','01/08/19 00:00:00','01/08/19 00:00:00','01/14/19 00:00:00','01/14/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12585,1),('BFA-TEN-BIT-19-0002','BFA','BITTOU','CSPS URBAIN','','01/18/19 00:00:00','ZAMPALIGRE FATIMATA','01/22/18 00:00:00',0,'1.1000000000000000e+01',0.92,'F','SECT 1','BITTOU','BITTOU','TENKODOGO','R','01/07/19 00:00:00','01/07/19 00:00:00','01/06/19 00:00:00',1,'11/30/18 00:00:00','','',1,1,4,'01/07/19 00:00:00','01/07/19 00:00:00','01/07/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,2,2,'','02/17/19 00:00:00','02/17/19 00:00:00',12603,1),('BFA-TEN-BIT-19-0003','BFA','BITTOU','CMA BITTOU','','01/18/19 00:00:00','OUEDRAOGO ANGE MICKAEL','07/10/17 00:00:00',1,'6.0000000000000000e+00',1.5,'M','SECT 3 BITTOU','BITTOU','BITTOU','TENKODOGO','R','01/11/19 00:00:00','01/11/19 00:00:00','01/10/19 00:00:00',2,'10/19/18 00:00:00','','',1,1,4,'01/11/19 00:00:00','01/11/19 00:00:00','01/11/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,2,2,'','02/17/19 00:00:00','02/17/19 00:00:00',12604,1),('BFA-KOU-REO-19-0004','BFA','REO','BISSOU','','01/20/19 00:00:00','BAZIE PASCALINE','',16,'0.0000000000000000e+00',16,'F','NAPOUAN','REO','REO','KOUDOUGOU','R','01/13/19 00:00:00','01/14/19 00:00:00','01/09/19 00:00:00',99,'','','',1,1,4,'01/14/19 00:00:00','01/14/19 00:00:00','01/14/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,2,2,'','02/17/19 00:00:00','02/17/19 00:00:00',12605,1),('BFA-MAN-SAP-19-0005','BFA','SAPONE','TARGHO','','01/22/19 00:00:00','SANA ALASSANE','04/11/18 00:00:00',0,'9.0000000000000000e+00',0.75,'M','TARGHO','SAPONE','SAPONE','MANGA','R','01/16/19 00:00:00','01/16/19 00:00:00','01/14/19 00:00:00',99,'','','',2,1,4,'01/16/19 00:00:00','01/16/19 00:00:00','01/16/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,2,2,'','02/17/19 00:00:00','02/17/19 00:00:00',12606,1),('BFA-KOU-SAP-19-0006','BFA','SAPOUY','CSPS URBAIN','','01/23/19 00:00:00','SAWADOGO ABDOUL AZIZ','',6,'0.0000000000000000e+00',6,'M','SECT 3 SAPOUY','SAPOUY','SAPOUY','KOUDOUGOU','R','01/12/19 00:00:00','01/12/19 00:00:00','01/11/19 00:00:00',1,'07/30/18 00:00:00','','',2,1,4,'01/12/19 00:00:00','01/12/19 00:00:00','01/12/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,2,2,'','02/17/19 00:00:00','02/17/19 00:00:00',12607,1),('BFA-BAN-BAN-19-0007','BFA','BANFORA','CSPS PANGA','','01/24/19 00:00:00','HEMA FATOU','01/01/11 00:00:00',8,'1.0000000000000000e+00',8.08,'F','TCHITCHARA','BANFORA','BANFORA','BANFORA','U','01/21/19 00:00:00','01/21/19 00:00:00','01/20/19 00:00:00',3,'11/15/14 00:00:00','','',2,1,4,'01/21/19 00:00:00','01/21/19 00:00:00','01/21/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,2,2,'','02/17/19 00:00:00','02/17/19 00:00:00',12608,1),('BFA-KAY-BAR-19-0008','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','BAGUIAN SALIMATA','',5,'0.0000000000000000e+00',5,'F','GASSELIKI','DJIBO','DJIBO','DORI','R','01/22/19 00:00:00','01/22/19 00:00:00','01/18/19 00:00:00',99,'','','',2,1,1,'01/22/19 00:00:00','01/22/19 00:00:00','01/22/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12609,1),('BFA-KAY-BAR-19-0009','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','BAGUIAN DJAMILA','',8,'0.0000000000000000e+00',8,'F','GASSELIKI','DJIBO','DJIBO','DORI','R','01/22/19 00:00:00','01/22/19 00:00:00','01/19/19 00:00:00',99,'','','',2,1,1,'01/22/19 00:00:00','01/22/19 00:00:00','01/22/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12610,1),('BFA-KAY-BAR-19-0010','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','BAGUIAN HAROUNA','',4,'0.0000000000000000e+00',4,'M','GASSELIKI','DJIBO','DJIBO','DORI','R','01/22/19 00:00:00','01/22/19 00:00:00','01/19/19 00:00:00',99,'','','',2,1,4,'01/22/19 00:00:00','01/22/19 00:00:00','01/22/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,2,2,'','02/17/19 00:00:00','02/17/19 00:00:00',12611,1),('BFA-KAY-BAR-19-0011','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','BAGUIAN ALIMATA','',4,'0.0000000000000000e+00',4,'F','GASSELIKI','DJIBO','DJIBO','DORI','R','01/22/19 00:00:00','01/22/19 00:00:00','01/20/19 00:00:00',99,'','','',2,1,1,'01/22/19 00:00:00','01/22/19 00:00:00','01/22/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12612,1),('BFA-KAY-BAR-19-0012','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','BAGUIAN INOUSSA','',4,'0.0000000000000000e+00',4,'M','GASSELIKI','DJIBO','DJIBO','DORI','R','01/22/19 00:00:00','01/22/19 00:00:00','01/20/19 00:00:00',99,'','','',2,1,1,'01/22/19 00:00:00','01/22/19 00:00:00','01/22/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12613,1),('BFA-KAY-BAR-19-0013','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','BAGUIAN TIDIANE','',10,'0.0000000000000000e+00',10,'M','GASSELIKI','DJIBO','DJIBO','DORI','R','01/22/19 00:00:00','01/22/19 00:00:00','01/20/19 00:00:00',99,'','','',2,1,3,'01/22/19 00:00:00','01/22/19 00:00:00','01/22/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,3,2,'','02/17/19 00:00:00','02/17/19 00:00:00',12614,1),('BFA-KAY-BAR-19-0014','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','BAGUIAN MARIATA','',5,'0.0000000000000000e+00',5,'F','GASSELIKI','DJIBO','DJIBO','DORI','R','01/22/19 00:00:00','01/22/19 00:00:00','01/18/19 00:00:00',99,'','','',2,1,1,'01/22/19 00:00:00','01/22/19 00:00:00','01/22/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12615,1),('BFA-KAY-BAR-19-0015','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','BAGUIAN SALMATA','',12,'0.0000000000000000e+00',12,'F','GASSELIKI','DJIBO','DJIBO','DORI','R','01/22/19 00:00:00','01/22/19 00:00:00','01/19/19 00:00:00',99,'','','',2,1,1,'01/22/19 00:00:00','01/22/19 00:00:00','01/22/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12616,1),('BFA-KAY-BAR-19-0016','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','BAGUIAN SALMATA','',5,'0.0000000000000000e+00',5,'F','GASSELIKI','DJIBO','DJIBO','DORI','R','01/22/19 00:00:00','01/22/19 00:00:00','01/19/19 00:00:00',99,'','','',2,1,1,'01/22/19 00:00:00','01/22/19 00:00:00','01/22/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12617,1),('BFA-KAY-BAR-19-0017','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','BAGUIAN AICHA','',3,'0.0000000000000000e+00',3,'F','GASSELIKI','DJIBO','DJIBO','DORI','R','01/22/19 00:00:00','01/22/19 00:00:00','01/20/19 00:00:00',99,'','','',2,1,1,'01/22/19 00:00:00','01/22/19 00:00:00','01/22/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12618,1),('BFA-KAY-BAR-19-0018','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','BAGUIAN SALMATA','',9,'0.0000000000000000e+00',9,'F','GASSELIKI','DJIBO','DJIBO','DORI','R','01/22/19 00:00:00','01/22/19 00:00:00','01/19/19 00:00:00',99,'','','',2,1,1,'01/22/19 00:00:00','01/22/19 00:00:00','01/22/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12619,1),('BFA-KAY-BAR-19-0019','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','BAGUIAN AMSETOU','',30,'0.0000000000000000e+00',30,'F','GASSELIKI','DJIBO','DJIBO','DORI','R','01/22/19 00:00:00','01/22/19 00:00:00','01/18/19 00:00:00',99,'','','',2,1,1,'01/22/19 00:00:00','01/22/19 00:00:00','01/22/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12620,1),('BFA-KAY-BAR-19-0020','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','YANTA SID-ABASSE','',6,'0.0000000000000000e+00',6,'M','GASSELIKI','DJIBO','DJIBO','DORI','R','01/21/19 00:00:00','01/21/19 00:00:00','01/18/19 00:00:00',99,'','','',1,1,1,'01/21/19 00:00:00','01/21/19 00:00:00','01/21/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12621,1),('BFA-KAY-BAR-19-0021','BFA','BARSALGHO','FOUBE','','01/25/19 00:00:00','KOANDA RASMANE','08/05/14 00:00:00',4,'6.0000000000000000e+00',4.5,'M','GASSELIKI','DJIBO','DJIBO','DORI','R','01/20/19 00:00:00','01/20/19 00:00:00','01/19/19 00:00:00',99,'','','',1,1,1,'01/21/19 00:00:00','01/21/19 00:00:00','01/21/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12622,1),('BFA-OUA-BOU-19-0022','BFA','BOULMIOUGOU','CM TANGHIN DASSOURI','','01/25/19 00:00:00','SAM LOUKMANE','12/31/00 00:00:00',18,'1.0000000000000000e+00',18.08,'M','TANGHIN','TANGHIN DASSOURI','BOULMIOUGOU','OUAGADOUGOU','R','01/15/19 00:00:00','01/21/19 00:00:00','01/15/19 00:00:00',99,'','','',1,1,1,'01/21/19 00:00:00','01/21/19 00:00:00','01/21/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,1,4,'','02/17/19 00:00:00','02/17/19 00:00:00',12623,1),('BFA-OUA-BOU-19-0023','BFA','BOULMIOUGOU','PSUT','','01/25/19 00:00:00','KAFANDO YVANN URIEL','06/13/14 00:00:00',4,'7.0000000000000000e+00',4.58,'M','BONAM','OUAGADOUGOU','BOULMIOUGOU','OUAGADOUGOU','U','01/16/19 00:00:00','01/16/19 00:00:00','01/15/19 00:00:00',99,'','','',1,1,4,'01/16/19 00:00:00','01/16/19 00:00:00','01/16/19 00:00:00','01/28/19 00:00:00','01/28/19 00:00:00',1,2,2,'','02/17/19 00:00:00','02/17/19 00:00:00',12624,1);
/*!40000 ALTER TABLE `genericcasebased` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promt_csps`
--

DROP TABLE IF EXISTS `promt_csps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promt_csps` (
  `District_Name` text,
  `NumHFReportsIncluded` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promt_csps`
--

LOCK TABLES `promt_csps` WRITE;
/*!40000 ALTER TABLE `promt_csps` DISABLE KEYS */;
INSERT INTO `promt_csps` VALUES ('BANFORA',12),('BARSALGHO',12),('BASKUY',12),('BATIE',12),('BITTOU',12),('BOGANDE',12),('BOGODOGO',11),('BOROMO',11),('BOULMIOUGOU',12),('BOULSA',11),('BOUSSE',12),('BOUSSOUMA',12),('DAFRA',12),('DANDE',12),('DANO',12),('DEDOUGOU',12),('DIAPAGA',12),('DIEBOUGOU',12),('DJIBO',12),('DO',12),('DORI',12),('FADA NGOURMA',12),('GAOUA',12),('GARANGO',12),('GAYERI',12),('GOROM-GOROM',12),('GOURCY',12),('HOUNDE',12),('KAMPTI',12),('KARANGASSO-VIGUE',12),('KAYA',11),('KOMBISSIRI',12),('KONGOUSSI',12),('KOUDOUGOU',10),('KOUPELA',12),('LENA',12),('LEO',10),('MANGA',11),('MANGODARA',12),('MANNI',12),('NANORO',10),('NDOROLA',12),('NONGR-MASSOM',12),('NOUNA',12),('ORODARA',12),('OUAHIGOUYA',12),('OUARGAYE',12),('PAMA',12),('PO',12),('POUYTENGA',11),('REO',10),('SABOU',10),('SAPONE',12),('SAPOUY',10),('SEBBA',12),('SEGUENEGA',12),('SIG-NOGHIN',12),('SINDOU',12),('SOLENZO',12),('TENADO',10),('TENKODOGO',12),('THIOU',12),('TITAO',12),('TOMA',12),('TOUGAN',12),('TOUGOURI',11),('YAKO',12),('ZABRE',12),('ZINIARE',12),('ZORGHO',11);
/*!40000 ALTER TABLE `promt_csps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp` (
  `ReportingHealthfacility` text,
  `IDNumber` text,
  `DateRecformdistrict` text,
  `DateReceivedNatlevel` text,
  `NamesOfPatient` text,
  `DateOfBirth` text,
  `AgeInyears` double DEFAULT NULL,
  `AgeInmonths` text,
  `Sex` text,
  `PatientsResidence` text,
  `ReportingDistrict` text,
  `Towncity` text,
  `Urbanrural` text,
  `DateSeenHealthFacility` text,
  `NumberOfVaccinedoses` double DEFAULT NULL,
  `DateHealthfacilitynotified` text,
  `DateOfLastvaccination` text,
  `DateOfonset` text,
  `BlankVariable1` text,
  `BlankVariable2` text,
  `Inoutpatient` int DEFAULT NULL,
  `Outcome` int DEFAULT NULL,
  `FinalClassification` text,
  `ProvinceOfResidence` text,
  `DateSentFormtodistrict` text,
  `DateSpecimencollected` text,
  `DateSpecimenSenttolab` text,
  `DateLabReceivedSpecimen` text,
  `SpecimenCondition` int DEFAULT NULL,
  `MeaslesIgm` int DEFAULT NULL,
  `RubellaIgm` int DEFAULT NULL,
  `OtherLabResults` text,
  `DateLabSentResulttodistrict` text,
  `CountryCode` text,
  `DistrictofResidence` text,
  `Age` text,
  `DateDistrictRecLabResults` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` VALUES ('TITABE','BFA-DOR-SEB-04-0002','','','SARMATOU AMDOU','',38,'','F','TCHEKAGNIBE','SEBBA','','R','01/09/04 00:00:00',99,'','','01/05/04 00:00:00','','',2,1,'','','','01/26/04 00:00:00','01/28/04 00:00:00','01/28/04 00:00:00',1,3,2,'','03/16/04 00:00:00','BFA','SEBBA','',''),('CMA SAPONE','BFA-MAN-SAP-04-0017','04/02/04 00:00:00','','OUEDRAOGO RUDIANE','06/02/94 00:00:00',10,'','F','SAPONE MARCHE','SAPONE','','R','04/02/04 00:00:00',1,'04/02/04 00:00:00','03/27/95 00:00:00','04/01/04 00:00:00','','',2,1,'','','04/05/04 00:00:00','04/04/04 00:00:00','04/05/04 00:00:00','',1,2,1,'','','BFA','SAPONE','',''),('CMA SAPONE','BFA-MAN-SAP-04-0018','04/04/04 00:00:00','','TIEMTORE DONALD','',5,'','M','SAPONE MARCHE','SAPONE','','R','04/04/04 00:00:00',1,'04/04/04 00:00:00','04/30/00 00:00:00','03/30/04 00:00:00','','',2,1,'','','04/05/04 00:00:00','04/04/04 00:00:00','04/05/04 00:00:00','',1,2,1,'','','BFA','SAPONE','',''),('CMA SAPONE','BFA-MAN-SAP-04-0019','04/04/04 00:00:00','','COMBASSERE AWA','',7,'','F','SAPONE MARCHE','SAPONE','','R','04/04/04 00:00:00',1,'04/04/04 00:00:00','05/20/99 00:00:00','03/30/04 00:00:00','','',2,1,'','','04/05/04 00:00:00','04/04/04 00:00:00','04/06/04 00:00:00','',1,2,1,'','','BFA','SAPONE','',''),('CMA SAPONE','BFA-MAN-SAP-04-0020','03/30/04 00:00:00','','DIARA PAUL','',10,'','M','SAPONE MARCHE','SAPONE','','R','03/29/04 00:00:00',99,'03/29/04 00:00:00','','03/28/04 00:00:00','','',2,1,'','','04/05/04 00:00:00','03/30/04 00:00:00','04/05/04 00:00:00','',1,2,1,'','','BFA','SAPONE','',''),('CMA SAPONE','BFA-MAN-SAP-04-0021','04/04/04 00:00:00','','TIEMTORE EDITH','',12,'','F','SAPONE MARCHE','SAPONE','','R','04/04/04 00:00:00',99,'04/04/04 00:00:00','','03/30/04 00:00:00','','',2,1,'','','04/05/04 00:00:00','04/04/04 00:00:00','04/05/04 00:00:00','',1,2,1,'','','BFA','SAPONE','',''),('ZINIBEOGO','BFA-KAY-BAR-04-0022','03/24/04 00:00:00','','OUEDRAOGO FARIDA','',8,'','F','ZINIBEOGO','BARSALOGHO','','R','03/23/04 00:00:00',99,'03/23/04 00:00:00','','03/22/04 00:00:00','','',2,9,'','','04/07/04 00:00:00','03/23/04 00:00:00','04/07/04 00:00:00','',1,2,3,'','','BFA','BARSALOGHO','',''),('SAABA','BFA-KAY-BAR-04-0025','03/24/04 00:00:00','','BAMOGO ADAMA','',31,'','M','KOROMBOULI','BARSALOGHO','','R','03/24/04 00:00:00',99,'03/24/04 00:00:00','','03/23/04 00:00:00','','',2,1,'','','04/07/04 00:00:00','03/24/04 00:00:00','04/07/04 00:00:00','',1,2,2,'','','BFA','BARSALOGHO','',''),('DIONTALA','BFA-DED-SOL-04-0027','03/30/04 00:00:00','','KY TABILA','06/02/90 00:00:00',15,'','F','DIONTALA','SOLENZO','','R','03/30/04 00:00:00',99,'03/30/04 00:00:00','','03/29/04 00:00:00','','',2,1,'','','04/06/04 00:00:00','04/06/04 00:00:00','','',1,2,1,'','','BFA','SOLENZO','',''),('DIONTALA','BFA-DED-SOL-04-0028','03/26/04 00:00:00','','PARE JACQUES','',7,'','M','DIONTALA','SOLENZO','','R','03/26/04 00:00:00',99,'03/26/04 00:00:00','','03/25/04 00:00:00','','',2,1,'','','','04/06/04 00:00:00','','',1,2,1,'','','BFA','SOLENZO','',''),('CM KOMBISSIRI','BFA-MAN-KOM-04-0029','04/05/04 00:00:00','','NANA YACOUBA','01/06/01 00:00:00',4,'','M','SECTEUR 2','KOMBISSIRI','KOMBISSIRI','R','04/05/04 00:00:00',1,'04/05/04 00:00:00','10/15/01 00:00:00','04/01/04 00:00:00','','',2,1,'','','04/08/04 00:00:00','04/08/04 00:00:00','','',1,2,1,'','','BFA','KOMBISSIRI','',''),('SINIENA','BFA-BAN-BAN-04-0030','03/29/04 00:00:00','','SOULAMA MARTINE','',1,'','F','SINIENA','BANFORA','','R','03/29/04 00:00:00',99,'03/29/04 00:00:00','','03/27/04 00:00:00','','',2,1,'','','03/29/04 00:00:00','03/29/04 00:00:00','','',1,2,2,'','','BFA','BANFORA','',''),('SINIENA','BFA-BAN-BAN-04-0031','03/31/04 00:00:00','','SOMA DJENEBA','',10,'','F','SINIENA','BANFORA','','R','03/30/04 00:00:00',99,'03/30/04 00:00:00','','03/29/04 00:00:00','','',2,1,'','','03/31/04 00:00:00','03/31/04 00:00:00','','',1,2,2,'','','BFA','BANFORA','',''),('COALLA','BFA-FAD-BOG-04-0032','04/07/04 00:00:00','','DAMBINA NIYENDOUBA','',27,'','M','GANTA/KOLMNADE','BOGANDE','','R','04/06/04 00:00:00',99,'04/07/04 00:00:00','','04/03/04 00:00:00','','',1,1,'','','04/08/04 00:00:00','04/08/04 00:00:00','04/13/04 00:00:00','',1,2,3,'','','BFA','BOGANDE','',''),('COALLA','BFA-FAD-BOG-04-0033','04/08/04 00:00:00','','DAMBINA TILPIABA','',27,'','F','GANTA/KOLMNADE','BOGANDE','','R','04/06/04 00:00:00',99,'04/07/04 00:00:00','','04/05/04 00:00:00','','',1,1,'','','04/08/04 00:00:00','04/08/04 00:00:00','04/13/04 00:00:00','',1,3,2,'','','BFA','BOGANDE','',''),('SECTEUR 23','BFA-OUA-KOS-04-0040','05/06/04 00:00:00','','YAMEOGO CHRISTELLE','',7,'','F','SECTEUR 23','KOSSODO','','U','05/06/04 00:00:00',99,'05/06/04 00:00:00','','05/04/04 00:00:00','','',2,1,'','','05/06/04 00:00:00','05/06/04 00:00:00','05/06/04 00:00:00','05/18/04 00:00:00',1,2,1,'','05/21/04 00:00:00','BFA','KOSSODO','',''),('SECTEUR 28','BFA-OUA-S30-04-0041','04/20/04 00:00:00','','DABAKIO KARINE','',9,'','F','SECTEUR 28','SECTEUR 30','','U','04/20/04 00:00:00',1,'04/20/04 00:00:00','','04/16/04 00:00:00','','',2,1,'','','04/20/04 00:00:00','04/26/04 00:00:00','04/20/04 00:00:00','05/18/04 00:00:00',1,2,1,'','05/21/04 00:00:00','BFA','SECTEUR 30','',''),('DOULOUGOU','BFA-MAN-KOM-04-0042','04/21/04 00:00:00','','OUEDRAOGO ANTOINETTE','',13,'','F','BINGLA','KOMBISSIRI','','U','04/21/04 00:00:00',0,'04/21/04 00:00:00','','04/20/04 00:00:00','','',2,1,'','','04/21/04 00:00:00','05/10/04 00:00:00','05/20/04 00:00:00','05/18/04 00:00:00',2,2,2,'','05/21/04 00:00:00','BFA','KOMBISSIRI','',''),('DOULOUGOU','BFA-MAN-KOM-04-0043','04/21/04 00:00:00','','TONDE SIDZABDA','',13,'','M','BANGLEOGO','KOMBISSIRI','','R','04/21/04 00:00:00',0,'04/21/04 00:00:00','','04/20/04 00:00:00','','',2,1,'','','04/21/04 00:00:00','05/10/04 00:00:00','05/10/04 00:00:00','05/18/04 00:00:00',2,2,1,'','05/21/04 00:00:00','BFA','KOMBISSIRI','',''),('DOULOUGOU','BFA-MAN-KOM-04-0044','04/28/04 00:00:00','','ILBOUDO ALIDOU','',14,'','M','BOROGO','KOMBISSIRI','','R','04/28/04 00:00:00',0,'04/28/04 00:00:00','','04/26/04 00:00:00','','',2,1,'','','04/28/04 00:00:00','05/10/04 00:00:00','05/10/04 00:00:00','05/18/04 00:00:00',1,2,1,'','05/21/04 00:00:00','BFA','KOMBISSIRI','',''),('DOURE','BFA-MAN-KOM-04-0045','04/28/04 00:00:00','','OUEDRAOGO ANTOINETTE','',14,'','F','DOURE','KOMBISSIRI','','R','04/28/04 00:00:00',0,'04/28/04 00:00:00','','04/26/04 00:00:00','','',2,1,'','','04/28/04 00:00:00','05/10/04 00:00:00','05/10/04 00:00:00','05/18/04 00:00:00',1,2,1,'','05/21/04 00:00:00','BFA','KOMBISSIRI','',''),('DOULOUGOU','BFA-MAN-KOM-04-0046','04/30/04 00:00:00','','ILBOUDO AGUERATOU','',10,'','F','DOULOUGOU','KOMBISSIRI','','R','04/30/04 00:00:00',0,'04/30/04 00:00:00','','04/28/04 00:00:00','','',2,1,'','','04/30/04 00:00:00','05/10/04 00:00:00','05/10/04 00:00:00','05/18/04 00:00:00',1,2,1,'','05/21/04 00:00:00','BFA','KOMBISSIRI','',''),('VILLY','BFA-KOU-KOU-04-0048','04/26/04 00:00:00','','YAMEOGO YEMDAOGO','',6,'','M','VILLY','KOUDOUGOU','','R','04/26/04 00:00:00',99,'04/26/04 00:00:00','','04/22/04 00:00:00','','',2,1,'','','04/26/04 00:00:00','04/26/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('IPENDO','BFA-KOU-KOU-04-0049','04/24/04 00:00:00','','BAZIE FABRICE','',8,'','M','IPENDO','KOUDOUGOU','','R','04/24/04 00:00:00',99,'04/24/04 00:00:00','','04/21/04 00:00:00','','',2,1,'','','04/24/04 00:00:00','04/24/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('SAMNIDOGO','BFA-KOU-KOU-04-0050','04/22/04 00:00:00','','BASSOLE NINA','',2,'','F','SAVILLY','KOUDOUGOU','','R','04/22/04 00:00:00',99,'04/22/04 00:00:00','','04/21/04 00:00:00','','',2,1,'','','04/22/04 00:00:00','04/26/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('SAVILLY','BFA-KOU-KOU-04-0052','05/05/04 00:00:00','','SIMPORE KADY','',3,'','F','SAVILLY','KOUDOUGOU','','R','05/05/04 00:00:00',99,'05/05/04 00:00:00','','04/29/04 00:00:00','','',2,1,'','','05/05/04 00:00:00','05/06/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('SOULA','BFA-KOU-KOU-04-0053','04/24/04 00:00:00','','ADELESE VICTORIA','',4,'','F','SOULA','KOUDOUGOU','','R','04/24/04 00:00:00',0,'04/24/04 00:00:00','','04/20/04 00:00:00','','',2,1,'','','04/24/04 00:00:00','04/26/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,1,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('PITMOAGA','BFA-KOU-KOU-04-0054','04/12/04 00:00:00','','BATIONO RENAUD','',2,'','M','PITMOAGA','KOUDOUGOU','','R','04/12/04 00:00:00',0,'04/12/04 00:00:00','','04/08/04 00:00:00','','',2,1,'','','04/12/04 00:00:00','04/12/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('WOSO','BFA-KOU-KOU-04-0055','05/02/04 00:00:00','','NABI KADER','',6,'','M','WOSO','KOUDOUGOU','','R','05/02/04 00:00:00',99,'05/02/04 00:00:00','','05/02/04 00:00:00','','',2,1,'','','05/02/04 00:00:00','05/04/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('KOANGA','BFA-KOU-KOU-04-0056','04/18/04 00:00:00','','YAMEOGO MOUSSA','',7,'','M','KOANGA','KOUDOUGOU','','R','04/18/04 00:00:00',99,'04/18/04 00:00:00','','04/16/04 00:00:00','','',2,1,'','','04/18/04 00:00:00','04/20/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('BOUROU','BFA-KOU-KOU-04-0057','05/01/04 00:00:00','','BADO BOPIO','',8,'','F','BOUROU','KOUDOUGOU','','R','05/01/04 00:00:00',1,'05/01/04 00:00:00','08/12/02 00:00:00','04/26/04 00:00:00','','',2,1,'','','05/01/04 00:00:00','05/04/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('MENEGA','BFA-KOU-KOU-04-0058','05/01/04 00:00:00','','KABORE PAUL','',12,'','M','MENEGA','KOUDOUGOU','','R','05/01/04 00:00:00',1,'05/01/04 00:00:00','06/18/01 00:00:00','04/29/04 00:00:00','','',2,1,'','','05/01/04 00:00:00','05/05/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('LA','BFA-KOU-KOU-04-059','05/02/04 00:00:00','','AYONI DORCAS','',1,'','M','LA','KOUDOUGOU','','R','05/02/04 00:00:00',99,'05/02/04 00:00:00','','04/28/04 00:00:00','','',2,1,'','','05/02/04 00:00:00','05/02/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('PITMOAGA','BFA-KOU-KOU-04-0062','05/05/04 00:00:00','','ZONGO SAAGA','',26,'','F','PITMOAGA','KOUDOUGOU','','R','05/05/04 00:00:00',0,'05/05/04 00:00:00','','04/24/04 00:00:00','','',2,1,'','','05/05/04 00:00:00','05/05/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('MENEGA','BFA-KOU-KOU-04-0064','04/14/04 00:00:00','','ZERBO EVELYNE','',6,'','F','MENEGA','KOUDOUGOU','','R','04/14/04 00:00:00',1,'04/14/04 00:00:00','','04/12/04 00:00:00','','',2,1,'','','04/14/04 00:00:00','04/16/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('WORO','BFA-KOU-KOU-04-0065','04/16/04 00:00:00','','NABIE KOTIMIE','',2,'','F','WORO','KOUDOUGOU','','R','04/16/04 00:00:00',99,'04/16/04 00:00:00','','04/14/04 00:00:00','','',2,1,'','','04/16/04 00:00:00','04/18/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOUDOUGOU','',''),('SECTEUR 23','BFA-OUA-KOS-04-0068','05/05/04 00:00:00','','KAGONE OBAYDATOU','',6,'','F','SECTEUR 23','KOSSODO','','R','05/05/04 00:00:00',99,'05/05/04 00:00:00','','05/05/04 00:00:00','','',2,1,'','','05/05/04 00:00:00','05/10/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,1,'','05/21/04 00:00:00','BFA','KOSSODO','',''),('SECTEUR 23','BFA-OUA-KOS-04-0069','05/07/04 00:00:00','','KAGONE WALID','',11,'','M','SECTEUR 23','KOSSODO','','R','05/07/04 00:00:00',99,'05/07/04 00:00:00','','05/07/04 00:00:00','','',2,1,'','','05/07/04 00:00:00','05/10/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','KOSSODO','',''),('SECTEUR 23','BFA-OUA-KOS-04-0070','05/10/04 00:00:00','','SAWADOGO ARSENE','',7,'','M','SECTEUR 23','KOSSODO','','U','05/10/04 00:00:00',99,'05/10/04 00:00:00','','05/06/04 00:00:00','','',2,1,'','','05/10/04 00:00:00','05/10/04 00:00:00','05/12/04 00:00:00','05/18/04 00:00:00',1,2,1,'','05/21/04 00:00:00','BFA','KOSSODO','',''),('BONTIOLI','BFA-GAO-DAN-04-0072','05/07/04 00:00:00','','PODA KOUNFAYIR','',26,'','M','BOBRA','DANO','','R','05/07/04 00:00:00',99,'05/07/04 00:00:00','','05/06/04 00:00:00','','',2,1,'','','05/07/04 00:00:00','05/07/04 00:00:00','05/14/04 00:00:00','05/18/04 00:00:00',1,2,2,'','05/21/04 00:00:00','BFA','DANO','',''),('KOFILA','BFA-BOB-S15-04-0080','05/05/04 00:00:00','','MILLOGO MARC','',5,'','M','KOFILA','SECTEUR 15 B','','R','05/05/04 00:00:00',99,'05/05/04 00:00:00','','04/23/04 00:00:00','','',2,1,'','','05/05/04 00:00:00','05/05/04 00:00:00','05/18/04 00:00:00','05/18/04 00:00:00',1,2,1,'','05/21/04 00:00:00','BFA','SECTEUR 15 B','',''),('CM KOKO','BFA-BOB-S15-04-0076','05/10/04 00:00:00','','CISSE NAGIBE OCTAVE','',6,'','M','KOFILA','SECTEUR 15 B','','R','05/10/04 00:00:00',99,'05/10/04 00:00:00','','05/09/04 00:00:00','','',2,1,'4','','05/10/04 00:00:00','05/10/04 00:00:00','05/18/04 00:00:00','05/18/04 00:00:00',1,2,1,'','05/27/04 00:00:00','BFA','SECTEUR 15 B','',''),('SECTEUR 23','BFA-OUA-KOS-04-0079','05/16/04 00:00:00','','SAWADOGO ELISEE FRANC','',7,'','M','SECTEUR 23','KOSSODO','','R','05/16/04 00:00:00',1,'05/16/04 00:00:00','09/03/98 00:00:00','05/13/04 00:00:00','','',2,1,'4','','05/16/04 00:00:00','05/17/04 00:00:00','05/18/04 00:00:00','05/18/04 00:00:00',1,2,1,'','05/27/04 00:00:00','BFA','KOSSODO','',''),('SECTEUR 28','BFA-OUA-S30-04-0073','04/26/04 00:00:00','','IDANI ABDOUL FATAO','',1,'','M','SECTEUR 28','SECTEUR 30','','U','04/26/04 00:00:00',1,'04/26/04 00:00:00','09/12/03 00:00:00','04/23/04 00:00:00','','',2,1,'5','','04/26/04 00:00:00','04/26/04 00:00:00','05/18/04 00:00:00','05/18/04 00:00:00',1,2,1,'','05/27/04 00:00:00','BFA','SECTEUR 30','',''),('GODIN W','BFA-KOU-KOU-04-0081','05/17/04 00:00:00','','BAKOUAN FLORENCE','',23,'','F','GODIN W','KOUDOUGOU','','R','05/17/04 00:00:00',99,'05/17/04 00:00:00','','05/11/04 00:00:00','','',2,1,'4','','05/17/04 00:00:00','05/17/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('GODIN W','BFA-KOU-KOU-04-0082','05/19/04 00:00:00','','ZONGO MAMOUNATA','',20,'','F','GODIN W','KOUDOUGOU','','R','05/19/04 00:00:00',99,'05/19/04 00:00:00','','05/10/04 00:00:00','','',2,1,'4','','05/19/04 00:00:00','05/18/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('SECTEUR 7','BFA-KOU-KOU-04-0084','05/19/04 00:00:00','','KOLOGO ADAMA','',12,'','M','SECTEUR 7','KOUDOUGOU','','U','05/19/04 00:00:00',99,'05/19/04 00:00:00','','05/19/04 00:00:00','','',2,1,'4','','05/19/04 00:00:00','05/19/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('SOULA','NFA-KOU-KOU-04-0087','04/20/04 00:00:00','','ZOMA NOPOKO','',2,'','F','SOULA','KOUDOUGOU','','R','04/20/04 00:00:00',99,'04/20/04 00:00:00','','04/19/04 00:00:00','','',2,1,'4','','04/20/04 00:00:00','04/21/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('SAM NIDAGA','BFA-KOU-KOU-04-0088','04/20/04 00:00:00','','NIDO EULALIE','',2,'','F','SAM NIDAGA','KOUDOUGOU','','R','04/20/04 00:00:00',99,'04/20/04 00:00:00','','04/17/04 00:00:00','','',2,1,'4','','04/20/04 00:00:00','04/22/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('SOULA','BFA-KOU-KOU-04-0089','05/20/04 00:00:00','','SEMDE DRAMANE','',2,'','M','SOULA','KOUDOUGOU','','R','05/20/04 00:00:00',99,'05/20/04 00:00:00','','05/17/04 00:00:00','','',2,1,'4','','05/20/04 00:00:00','05/22/04 00:00:00','05/22/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('SOULA','BFA-KOU-KOU-04-0090','05/17/04 00:00:00','','SAWADOGO GERARD','',4,'','M','SOULA','KOUDOUGOU','','R','05/17/04 00:00:00',99,'05/17/04 00:00:00','','05/10/04 00:00:00','','',2,2,'4','','05/17/04 00:00:00','05/18/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('SAM NIDAGA','BFA-KOU-KOU-04-0091','05/17/04 00:00:00','','SIMPORE MARCELINE','',2,'','F','SAM NIDAGA','KOUDOUGOU','','R','05/17/04 00:00:00',99,'05/17/04 00:00:00','','05/10/04 00:00:00','','',2,2,'4','','05/17/04 00:00:00','05/18/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('KOANGA','BFA-KOU-KOU-04-0092','04/12/04 00:00:00','','BAKOUAN MARIE','',2,'','F','KOANGA','KOUDOUGOU','','R','04/12/04 00:00:00',99,'04/12/04 00:00:00','','04/11/04 00:00:00','','',2,1,'4','','04/12/04 00:00:00','04/14/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('IPENDO','BFA-KOU-KOU-04-0093','04/26/04 00:00:00','','YAMEOGO PASCAL','',3,'','M','IPENDO','KOUDOUGOU','','R','04/26/04 00:00:00',99,'04/26/04 00:00:00','','04/20/04 00:00:00','','',2,1,'4','','04/26/04 00:00:00','04/27/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('IPENDO','BFA-KOU-KOU-04-0094','05/18/04 00:00:00','','DEMBELE PATRICK','',25,'','M','IPENDO','KOUDOUGOU','','R','05/18/04 00:00:00',99,'05/18/04 00:00:00','','05/17/04 00:00:00','','',2,2,'4','','05/18/04 00:00:00','05/19/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('KOANGA','BFA-KOU-KOU-04-0095','04/18/04 00:00:00','','ZOMA IRENE','',2,'','F','KOANGA','KOUDOUGOU','','R','04/18/04 00:00:00',99,'04/18/04 00:00:00','','04/17/04 00:00:00','','',2,1,'4','','04/18/04 00:00:00','04/21/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('SAVILLY','BFA-KOU-KOU-04-0096','05/10/04 00:00:00','','GUEL FARIDA','',2,'','F','SAVILLY','KOUDOUGOU','','R','05/10/04 00:00:00',99,'05/10/04 00:00:00','','05/08/04 00:00:00','','',2,1,'4','','05/10/04 00:00:00','05/10/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('BOUROU','BFA-KOU-KOU-04-0097','04/10/04 00:00:00','','OUEDRAOGO YVES','',1,'','M','BOUROU','KOUDOUGOU','','R','04/10/04 00:00:00',99,'04/10/04 00:00:00','','04/09/04 00:00:00','','',2,1,'4','','04/10/04 00:00:00','04/16/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('NIAKADO','BFA-KOU-KOU-04-0098','04/20/04 00:00:00','','TONDE VICTOR','',1,'','M','NIAKADO','KOUDOUGOU','','R','04/20/04 00:00:00',99,'04/20/04 00:00:00','','04/17/04 00:00:00','','',2,1,'4','','04/20/04 00:00:00','04/22/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('PITMOAGA','BFA-KOU-KOU-04-0099','04/20/04 00:00:00','','BARRO FATOUMATA','',1,'','F','PITMOAGA','KOUDOUGOU','','R','04/20/04 00:00:00',99,'04/20/04 00:00:00','','04/16/04 00:00:00','','',2,1,'4','','04/20/04 00:00:00','04/21/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('PITMOAGA','BFA-KOU-KOU-04-0100','04/24/04 00:00:00','','BADOLO ALAIN','',2,'','M','PITMOAGA','KOUDOUGOU','','R','04/24/04 00:00:00',99,'04/24/04 00:00:00','','04/20/04 00:00:00','','',2,1,'4','','04/24/04 00:00:00','04/24/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('SAVILLY','BFA-KOU-KOU-04-0101','04/20/04 00:00:00','','ZONGO MIREILLE','',20,'','F','SAVILLY','KOUDOUGOU','','R','04/20/04 00:00:00',99,'04/20/04 00:00:00','','04/16/04 00:00:00','','',2,1,'4','','04/20/04 00:00:00','04/21/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('BINGO','BFA-KOU-KOU-04-0102','04/14/04 00:00:00','','YAMEOGO ELDINE','',1,'','F','BINGO','KOUDOUGOU','','R','04/14/04 00:00:00',99,'04/14/04 00:00:00','','04/10/04 00:00:00','','',2,1,'4','','04/14/04 00:00:00','04/15/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('IPENDO','BFA-KOU-KOU-04-0103','05/22/04 00:00:00','','ADOUA SCHOLASTIQUE','',1,'','F','IPENDO','KOUDOUGOU','','R','05/22/04 00:00:00',99,'05/22/04 00:00:00','','05/20/04 00:00:00','','',2,1,'4','','05/22/04 00:00:00','05/22/04 00:00:00','05/22/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('THYON','BFA-KOU-KOU-04-0104','04/20/04 00:00:00','','NABI OMAR','',2,'','M','THYON','KOUDOUGOU','','R','04/20/04 00:00:00',99,'04/20/04 00:00:00','','04/18/04 00:00:00','','',2,1,'4','','04/20/04 00:00:00','04/22/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('PAGGARITE','BFA-KOU-KOU-04-0105','04/12/04 00:00:00','','ROUAMBA ZALISSA','',2,'','F','KAMEDY','KOUDOUGOU','','R','04/12/04 00:00:00',99,'04/12/04 00:00:00','','04/10/04 00:00:00','','',2,1,'4','','04/12/04 00:00:00','04/14/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('PAGGARITE','BFA-KOU-KOU-04-0106','05/16/04 00:00:00','','NABI PAUL','',3,'','M','KAMEDY','KOUDOUGOU','','R','05/16/04 00:00:00',1,'05/16/04 00:00:00','12/18/01 00:00:00','05/10/04 00:00:00','','',2,1,'4','','05/16/04 00:00:00','04/18/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('SOME','BFA-KOU-KOU-04-0107','05/21/04 00:00:00','','NABI NATALIA','',1,'','F','SOME','KOUDOUGOU','','R','05/21/04 00:00:00',99,'05/21/04 00:00:00','','05/16/04 00:00:00','','',2,1,'4','','05/21/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('SOME','BFA-KOU-KOU-04-0108','04/16/04 00:00:00','','BABINE JEANNE','',3,'','F','SOME','KOUDOUGOU','','R','04/16/04 00:00:00',99,'04/16/04 00:00:00','','04/15/04 00:00:00','','',2,1,'4','','04/16/04 00:00:00','04/18/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('SOME','BFA-KOU-KOU-04-0109','04/28/04 00:00:00','','ZONGO ALEX','',2,'','M','SOME','KOUDOUGOU','','R','04/28/04 00:00:00',99,'04/28/04 00:00:00','','04/25/04 00:00:00','','',2,1,'4','','04/28/04 00:00:00','04/28/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('SOME','BFA-KOU-KOU-04-0110','05/12/04 00:00:00','','KABORE ISSOUF','',1,'','M','SOME','KOUDOUGOU','','R','05/12/04 00:00:00',99,'05/12/04 00:00:00','','05/10/04 00:00:00','','',2,2,'4','','05/12/04 00:00:00','05/14/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('GARMONGO','BFA-KOU-KOU-04-0111','05/18/04 00:00:00','','KABORE SAFI','',1,'','F','GARMONGO','KOUDOUGOU','','R','05/18/04 00:00:00',99,'05/18/04 00:00:00','','05/10/04 00:00:00','REVENANT DE RCI','',2,1,'4','','05/18/04 00:00:00','05/20/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('GARMONGO','BFA-KOU-KOU-04-0112','04/08/04 00:00:00','','YERBANGA HONORE','',3,'','M','GARMONGO','KOUDOUGOU','','R','04/08/04 00:00:00',99,'04/08/04 00:00:00','','04/05/04 00:00:00','REVENANT DE RCI','',2,1,'4','','04/08/04 00:00:00','04/10/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('GARMONGO','BFA-KOU-KOU-04-0113','04/17/04 00:00:00','','YAMEOGO YAMBA','',2,'','M','GARMONGO','KOUDOUGOU','','R','04/17/04 00:00:00',99,'04/17/04 00:00:00','','04/14/04 00:00:00','REVENANT DE RCI','',2,1,'4','','04/17/04 00:00:00','04/18/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('PAGGARITE','BFA-KOU-KOU-04-0114','04/18/04 00:00:00','','GUISSOU WENDPOUIRE','',2,'','M','PAGGARITE','KOUDOUGOU','','R','04/18/04 00:00:00',99,'04/18/04 00:00:00','','04/10/04 00:00:00','','',2,2,'4','','04/18/04 00:00:00','04/20/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('THYON','BFA-KOU-KOU-04-0115','04/06/04 00:00:00','','BADO BLAISE','',2,'','M','THYON','KOUDOUGOU','','R','04/06/04 00:00:00',99,'04/06/04 00:00:00','','04/04/04 00:00:00','','',2,1,'4','','04/06/04 00:00:00','04/08/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('THYON','BFA-KOU-KOU-04-0116','05/14/04 00:00:00','','SO KADY','',2,'','M','THYON','KOUDOUGOU','','R','05/14/04 00:00:00',99,'05/14/04 00:00:00','','05/16/04 00:00:00','REVENANT DE RCI','',2,1,'4','','05/14/04 00:00:00','05/16/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','KOUDOUGOU','',''),('FLANTOMA','BFA-BAN-BAN-04-0117','05/07/04 00:00:00','','KONE AICHA','',14,'','F','SECTEUR 3','BANFORA','','R','05/07/04 00:00:00',99,'05/07/04 00:00:00','','05/05/04 00:00:00','','',2,1,'4','','05/07/04 00:00:00','05/07/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,2,2,'','05/27/04 00:00:00','BFA','BANFORA','',''),('KOMPIENGA','BFA-FAD-PAM-04-0118','05/15/04 00:00:00','','KUELA JACQUES','',40,'','M','KOMPIENGA','PAMA','','R','05/15/04 00:00:00',99,'05/15/04 00:00:00','','05/10/04 00:00:00','','',2,1,'4','','05/15/04 00:00:00','05/15/04 00:00:00','05/21/04 00:00:00','05/21/04 00:00:00',1,3,2,'','05/27/04 00:00:00','BFA','PAMA','',''),('CSPS SECTEUR 21','BFA-OUA-PAU-04-0132','05/17/04 00:00:00','','SAWADOGO YACOUBA','',7,'','M','SECTEUR 21','PAUL VI','OUAGA','U','05/12/04 00:00:00',99,'05/17/04 00:00:00','','05/09/04 00:00:00','','',2,1,'','','05/17/04 00:00:00','','','',1,3,2,'','06/11/04 00:00:00','BFA','PAUL VI','',''),('GOMBOURA','BFA-GAO-GAO-04-0123','','','HIEN FELIX','',5,'','M','GOMBOURA','GAOUA','','R','05/15/04 00:00:00',99,'','','05/10/04 00:00:00','','',2,9,'','','','','','',1,3,2,'','06/11/04 00:00:00','BFA','GAOUA','',''),('BALADJARA','BFA-GAO-GAO-04-0125','','','KAMBOU POULATE','',9,'','M','BALADJARA','GAOUA','','R','05/13/04 00:00:00',99,'','','05/13/04 00:00:00','','',2,1,'','','','','','',1,2,2,'','06/11/04 00:00:00','BFA','GAOUA','',''),('BOUROUM BOUROUM','BFA-GAO-GAO-04-0127','','','ILBOUDO RAMATA','',4,'','F','BOUROUM BOUROUM','GAOUA','','R','05/01/04 00:00:00',99,'','','05/01/04 00:00:00','','',1,1,'','','','','','',1,2,1,'','06/11/04 00:00:00','BFA','GAOUA','',''),('KONE','BFA-KOU-NAN-04-0133','03/20/04 00:00:00','','KABORE NOME','',8,'','F','KONE','NANORO','','R','03/20/04 00:00:00',1,'03/20/04 00:00:00','12/11/98 00:00:00','03/20/04 00:00:00','','',1,1,'','','05/31/04 00:00:00','03/20/04 00:00:00','','',1,2,3,'','06/11/04 00:00:00','BFA','NANORO','','');
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-13 21:48:43
