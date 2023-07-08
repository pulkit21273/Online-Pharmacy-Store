CREATE DATABASE  IF NOT EXISTS `project1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project1`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: project1
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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `Cart_Id` int NOT NULL,
  `Cart_Value` int NOT NULL,
  PRIMARY KEY (`Cart_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1500),(2,1567),(3,1415),(4,1349),(5,1604),(6,1293),(7,1472),(8,1523),(9,1317),(10,1541),(11,1463),(12,1287),(13,1558),(14,1406),(15,1264),(16,1435),(17,1376),(18,1643),(19,1291),(20,1527),(21,1489),(22,1321),(23,1419),(24,1350),(25,1598),(26,1402),(27,1456),(28,1274),(29,1678),(30,1534),(31,1423),(32,1356),(33,1298),(34,1562),(35,1479),(36,1371),(37,1545),(38,1412),(39,1257),(40,1586),(41,1465),(42,1327),(43,1534),(44,1401),(45,1264),(46,1495),(47,1376),(48,1643),(49,1291),(50,1527),(51,1489),(52,1321),(53,1419),(54,1350),(55,1598),(56,1402),(57,1456),(58,1274),(59,1678),(60,1534),(61,1423),(62,1356),(63,1298),(64,1562),(65,1479),(66,1371),(67,1545),(68,1412),(69,1257),(70,1586),(71,1465),(72,1327),(73,1534),(74,1401),(75,1264),(76,1495),(77,1376),(78,1643),(79,1291),(80,1527),(81,1489),(82,1321),(83,1419),(84,1350),(85,1598),(86,1402),(87,1456),(88,1274),(89,1678),(90,1534),(91,1423),(92,1356),(93,1298),(94,1562),(95,1479),(96,1371),(97,1545),(98,1412),(99,1257),(100,1586);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `Reg_id` int NOT NULL,
  `Company_name` varchar(255) NOT NULL,
  PRIMARY KEY (`Reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'AB Remedies'),(2,'CD Solutions'),(3,'EF Healing'),(4,'GH Therapies'),(5,'IJ Meds'),(6,'KL Cures'),(7,'MN Relief'),(8,'OP Aids'),(9,'QR Treatment'),(10,'ST Medications'),(11,'UV Health'),(12,'WX Remedies'),(13,'YZ Therapies'),(14,'BC Solutions'),(15,'DE Healing'),(16,'FG Meds'),(17,'HI Cures'),(18,'JK Relief'),(19,'LM Aids'),(20,'NO Treatment'),(21,'PQ Medications'),(22,'RS Health'),(23,'TU Remedies'),(24,'VW Therapies'),(25,'XY Solutions'),(26,'ZB Healing'),(27,'AC Meds'),(28,'BF Cures'),(29,'CH Relief'),(30,'DI Aids'),(31,'EJ Treatment'),(32,'FK Medications'),(33,'GL Health'),(34,'HM Remedies'),(35,'IN Therapies'),(36,'JO Solutions'),(37,'KP Healing'),(38,'LQ Meds'),(39,'MR Cures'),(40,'NS Relief'),(41,'OT Aids'),(42,'PU Treatment'),(43,'QV Medications'),(44,'RW Health'),(45,'SX Remedies'),(46,'TY Therapies'),(47,'UZ Solutions'),(48,'VA Healing'),(49,'WB Meds'),(50,'XC Cures'),(51,'YD Relief'),(52,'ZE Aids'),(53,'AF Treatment'),(54,'BG Medications'),(55,'CH Health'),(56,'DI Remedies'),(57,'EJ Therapies'),(58,'FK Solutions'),(59,'GL Healing'),(60,'HM Meds'),(61,'IN Cures'),(62,'JO Relief'),(63,'KP Aids'),(64,'LQ Treatment'),(65,'MR Medications'),(66,'NS Health'),(67,'OT Remedies'),(68,'PU Therapies'),(69,'QV Solutions'),(70,'RW Healing'),(71,'SX Meds'),(72,'TY Cures'),(73,'UZ Relief'),(74,'VA Aids'),(75,'WB Treatment'),(76,'XC Medications'),(77,'YD Health'),(78,'ZE Remedies'),(79,'AF Therapies'),(80,'BG Solutions'),(81,'CH Healing'),(82,'DI Meds'),(83,'EJ Cures'),(84,'FK Relief'),(85,'GL Aids'),(86,'HM Treatment'),(87,'IN Medications'),(88,'JO Health'),(89,'KP Remedies'),(90,'LQ Therapies'),(91,'MR Solutions'),(92,'NS Healing'),(93,'OT Meds'),(94,'PU Cures'),(95,'QV Relief'),(96,'RW Aids'),(97,'SX Treatment'),(98,'TY Medications'),(99,'UZ Health'),(100,'VA Remedies');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_Id` int NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone_Number` varchar(10) DEFAULT NULL,
  `Membership_details` varchar(10) NOT NULL,
  PRIMARY KEY (`Customer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Rahul','Sharma','1990-01-10','Male','House No-12,Sector-50,Gurgaon','9910012345','Prime'),(2,'Anjali','Sharma','1985-02-12','Female','House No-6,Sector-30,Delhi','9910012347','Prime'),(3,'Abhishek','Verma','1983-08-18','Male','House No-15,Sector-10,Faridabad','9910012348','Prime'),(4,'Anita','Gupta','1981-03-20','Female','House No-2,Sector-40,Gurgaon','9910012349','Prime'),(5,'Amit','Sharma','1982-07-22','Male','House No-8,Sector-55,Noida','9910012350','Prime'),(6,'Alok','Verma','1979-06-19','Male','House No-9,Sector-23,Delhi','9910012351','Prime'),(7,'Deepika','Gupta','1988-01-12','Female','House No-19,Sector-17,Faridabad','9910012352','Prime'),(8,'Divya','Sharma','1987-05-15','Female','House No-5,Sector-47,Gurgaon','9910012353','Prime'),(9,'Gaurav','Verma','1984-09-22','Male','House No-12,Sector-27,Noida','9910012354','Prime'),(10,'Hema','Gupta','1981-02-14','Female','House No-21,Sector-13,Delhi','9910012355','Prime'),(11,'Isha','Sharma','1982-03-19','Female','House No-7,Sector-42,Faridabad','9910012356','Prime'),(12,'Jagdish','Verma','1985-01-15','Male','House No-23,Sector-51,Gurgaon','9910012357','Prime'),(13,'Janaki','Gupta','1983-06-10','Female','House No-16,Sector-29,Noida','9910012358','Prime'),(14,'Karan','Sharma','1980-08-12','Male','House No-18,Sector-33,Delhi','9910012359','Prime'),(15,'Lalit','Verma','1981-09-20','Male','House No-11,Sector-12,Faridabad','9910012360','Prime'),(16,'Leena','Gupta','1982-07-15','Female','House No-20,Sector-44,Gurgaon','9910012361','Prime'),(17,'Meenakshi','Sharma','1988-05-19','Female','House No-22,Sector-22,Noida','9910012362','Prime'),(18,'Mohit','Verma','1987-03-12','Male','House No-13,Sector-24,Delhi','9910012363','Prime'),(19,'Naveen','Gupta','1984-06-10','Male','House No-14,Sector-20,Faridabad','9910012364','Prime'),(20,'Neha','Shha','1980-12-15','Female','House No-25,Sector-31,Gurgaon','9910012365','Prime'),(21,'Pooja','Verma','1985-02-20','Female','House No-17,Sector-45,Noida','9910012366','Prime'),(22,'Ravi','Gupta','1982-01-10','Male','House No-26,Sector-14,Delhi','9910012367','Prime'),(23,'Rohit','Sharma','1983-05-15','Male','House No-10,Sector-35,Faridabad','9910012368','Prime'),(24,'Sachin','Verma','1980-04-12','Male','House No-27,Sector-49,Gurgaon','9910012369','Prime'),(25,'Sandhya','Gupta','1981-08-18','Female','House No-28,Sector-21,Noida','9910012370','Prime'),(26,'Sangeeta','Sharma','1984-07-15','Female','House No-29,Sector-13,Delhi','9910012371','Prime'),(27,'Sanjeev','Verma','1982-03-19','Male','House No-30,Sector-36,Faridabad','9910012372','Prime'),(28,'Santosh','Gupta','1983-06-10','Male','House No-31,Sector-43,Gurgaon','9910012373','Prime'),(29,'Seema','Sharma','1980-02-12','Female','House No-32,Sector-25,Noida','9910012374','Prime'),(30,'Shilpa','Verma','1981-09-15','Female','House No-33,Sector-14,Delhi','9910012375','Prime'),(31,'Shweta','Gupta','1982-05-19','Female','House No-34,Sector-37,Faridabad','9910012376','Prime'),(32,'Suresh','Sharma','1983-01-10','Male','House No-35,Sector-41,Gurgaon','9910012377','Prime'),(33,'Swati','Verma','1980-07-12','Female','House No-36,Sector-22,Noida','9910012378','Prime'),(34,'Vikas','Gupta','1981-06-15','Male','House No-37,Sector-13,Delhi','9910012379','Prime'),(35,'Vinay','Sharma','1982-08-19','Male','House No-38,Sector-38,Faridabad','9910012380','Prime'),(36,'Vineet','Verma','1983-02-10','Male','House No-39,Sector-44,Gurgaon','9910012381','Prime'),(37,'Yogesh','Gupta','1980-03-15','Male','House No-40,Sector-23,Noida','9910012382','Prime'),(38,'Aarti','Sharma','1981-04-19','Female','House No-41,Sector-15,Delhi','9910012383','Prime'),(39,'Aditya','Verma','1982-05-10','Male','House No-42,Sector-39,Faridabad','9910012384','Prime'),(40,'Amit','Gupta','1983-06-15','Male','House No-43,Sector-45,Gurgaon','9910012385','Prime'),(41,'Ankur','Sharma','1980-07-19','Male','House No-44,Sector-24,Noida','9910012386','Prime'),(42,'Anmol','Verma','1981-08-10','Male','House No-45,Sector-16,Delhi','9910012387','Prime'),(43,'Archana','Gupta','1982-09-15','Female','House No-46,Sector-40,Faridabad','9910012388','Prime'),(44,'Arjun','Sharma','1983-10-19','Male','House No-47,Sector-46,Gurgaon','9910012389','Prime'),(45,'Arvind','Verma','1980-11-10','Male','House No-48,Sector-25,Noida','9910012390','Prime'),(46,'Ashish','Gupta','1981-12-15','Male','House No-49,Sector-17,Delhi','9910012391','Prime'),(47,'Atul','Sharma','1982-01-19','Male','House No-50,Sector-41,Faridabad','9910012392','Prime'),(48,'Bharat','Verma','1983-02-10','Male','House No-51,Sector-47,Gurgaon','9910012393','Prime'),(49,'Chaitanya','Gupta','1980-03-15','Male','House No-52,Sector-26,Noida','9910012394','Prime'),(50,'Deepak','Sharma','1981-04-19','Male','House No-53,Sector-18,Delhi','9910012395','Prime'),(51,'Dinesh','Verma','1982-05-10','Male','House No-54,Sector-42,Faridabad','9910012396','Prime'),(52,'Gaurav','Gupta','1983-06-15','Male','House No-55,Sector-48,Gurgaon','9910012397','Prime'),(53,'Himanshu','Sharma','1980-07-19','Male','House No-56,Sector-27,Noida','9910012398','Prime'),(54,'Jagdish','Verma','1981-08-10','Male','House No-57,Sector-19,Delhi','9910012399','Prime'),(55,'Jayant','Gupta','1982-09-15','Male','House No-58,Sector-43,Faridabad','9910012400','Prime'),(56,'Kuldeep','Sharma','1983-10-19','Male','House No-59,Sector-49,Gurgaon','9910012401','Prime'),(57,'Manish','Verma','1980-11-10','Male','House No-60,Sector-28,Noida','9910012402','Prime'),(58,'Manoj','Gupta','1981-12-15','Male','House No-61,Sector-20,Delhi','9910012403','Prime'),(59,'Mayank','Sharma','1982-01-19','Male','House No-62,Sector-44,Faridabad','9910012404','Prime'),(60,'Mukesh','Verma','1983-02-10','Male','House No-63,Sector-50,Gurgaon','9910012405','Prime'),(61,'Naveen','Gupta','1980-03-15','Male','House No-64,Sector-29,Noida','9910012406','Prime'),(62,'Neeraj','Sharma','1981-04-19','Male','House No-65,Sector-21,Delhi','9910012407','Prime'),(63,'Nikhil','Verma','1982-05-10','Male','House No-66,Sector-45,Faridabad','9910012408','Prime'),(64,'Pankaj','Gupta','1983-06-15','Male','House No-67,Sector-51,Gurgaon','9910012409','Prime'),(65,'Paras','Sharma','1980-07-19','Male','House No-68,Sector-30,Noida','9910012410','Prime'),(66,'Prakash','Verma','1981-08-10','Male','House No-69,Sector-22,Delhi','9910012411','Prime'),(67,'Puneet','Gupta','1982-09-15','Male','House No-70,Sector-46,Faridabad','9910012412','Prime'),(68,'Rajeev','Sharma','1983-10-19','Male','House No-71,Sector-52,Gurgaon','9910012413','Prime'),(69,'Rajesh','Verma','1980-11-10','Male','House No-72,Sector-31,Noida','9910012414','Prime'),(70,'Ravi','Gupta','1981-12-15','Male','House No-73,Sector-23,Delhi','9910012415','Prime'),(71,'Rohit','Sharma','1982-01-19','Male','House No-74,Sector-47,Faridabad','9910012416','Prime'),(72,'Sachin','Verma','1983-02-10','Male','House No-75,Sector-53,Gurgaon','9910012417','Prime'),(73,'Sandeep','Gupta','1980-03-15','Male','House No-76,Sector-32,Noida','9910012418','Prime'),(74,'Santosh','Sharma','1981-04-19','Male','House No-77,Sector-24,Delhi','9910012419','Prime'),(75,'Saurabh','Verma','1982-05-10','Male','House No-78,Sector-48,Faridabad','9910012420','Prime'),(76,'John','Doe','1990-01-01','Male','123 Main St, Anytown USA','5555551212','Prime'),(77,'Jane','Doe','1991-02-02','Female','456 Elm St, Anytown USA','5555551213','Prime'),(78,'Bob','Smith','1992-03-03','Male','789 Oak St, Anytown USA','5555551214','Prime'),(79,'Emily','Jones','1993-04-04','Female','246 Pine St, Anytown USA','5555551215','Prime'),(80,'William','Brown','1994-05-05','Male','135 Maple St, Anytown USA','5555551216','Prime'),(81,'Ashley','Davis','1995-06-06','Female','246 Cedar St, Anytown USA','5555551217','Prime'),(82,'Michael','Miller','1996-07-07','Male','369 Birch St, Anytown USA','5555551218','Prime'),(83,'Sarah','Wilson','1997-08-08','Female','159 Holly St, Anytown USA','5555551219','Prime'),(84,'Christopher','Moore','1998-09-09','Male','753 Willow St, Anytown USA','5555551220','Prime'),(85,'Elizabeth','Taylor','1999-10-10','Female','951 Elm St, Anytown USA','5555551221','Prime'),(86,'Matthew','Anderson','2000-11-11','Male','135 Oak St, Anytown USA','5555551222','Prime'),(87,'Jennifer','Thomas','2001-12-12','Female','246 Pine St, Anytown USA','5555551223','Prime'),(88,'Daniel','Jackson','2002-01-13','Male','369 Maple St, Anytown USA','5555551224','Prime'),(89,'Jessica','White','2003-02-14','Female','159 Cedar St, Anytown USA','5555551225','Prime'),(90,'William','Harris','2004-03-15','Male','753 Birch St, Anytown USA','5555551226','Prime'),(91,'Ashley','Martin','2005-04-16','Female','951 Willow St, Anytown USA','5555551227','Prime'),(92,'Michael','Thompson','2006-05-17','Male','135 Elm St, Anytown USA','5555551228','Prime'),(93,'Sarah','Young','2007-06-18','Female','246 Oak St, Anytown USA','5555551229','Prime'),(94,'Christopher','Allen','2008-07-19','Male','369 Pine St, Anytown USA','5555551230','Prime'),(95,'Elizabeth','King','2009-08-20','Female','159 Maple St, Anytown USA','5555551231','Prime'),(96,'Matthew','Wright','2010-09-21','Male','753 Cedar St, Anytown USA','5555551232','Prime'),(97,'Jennifer','Scott','2011-10-22','Female','951 Birch St, Anytown USA','5555551233','Prime'),(98,'Daniel','Green','2012-11-23','Male','135 Willow St, Anytown USA','5555551234','Prime'),(99,'Jessica','Baker','2013-12-24','Female','246 Elm St, Anytown USA','5555551235','Prime'),(100,'William','Adams','2014-01-25','Male','369 Oak St, Anytown USA','5555551236','Prime');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `consultation_fee` int DEFAULT NULL,
  `contact_details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Anand','Ahuja','Paedetrician',500,'1234567891'),(2,'Aditi','Chopra','Dermatologist',400,'2345678912'),(3,'Abhishek','Bhalla','Neurologist',450,'3456789123'),(4,'Aman','Dhawan','Cardiologist',500,'4567891234'),(5,'Amit','Goyal','Orthopedician',450,'5678912345'),(6,'Ankush','Gupta','Gastroenterologist',400,'6789123456'),(7,'Arjun','Jain','Urologist',450,'7891234567'),(8,'Aryan','Kumar','Oncologist',500,'8912345678'),(9,'Ashish','Mehra','Anesthesiologist',400,'9123456789'),(10,'Avinash','Nagpal','Ophthalmologist',450,'0123456789'),(11,'Bhavika','Sharma','Obstetrician',500,'1234567890'),(12,'Chandra','Sethi','Gynecologist',400,'2345678901'),(13,'Daksh','Verma','Pediatrician',450,'3456789012'),(14,'Divya','Vohra','Orthopedist',500,'4567890123'),(15,'Esha','Bhatia','Neurosurgeon',400,'5678901234'),(16,'Gaurav','Chauhan','Dentist',450,'6789012345'),(17,'Himanshu','Gulati','Surgeon',500,'7890123456'),(18,'Ishan','Kapoor','Internist',400,'8901234567'),(19,'Jasmine','Khanna','Pathologist',450,'9012345678'),(20,'Karan','Malik','Radiologist',500,'0123456789'),(21,'Kavya','Nanda','Nephrologist',400,'1234567890'),(22,'Khushi','Rana','Psychiatrist',450,'2345678901'),(23,'Kriti','Shukla','Surgeon',500,'3456789012'),(24,'Lakshya','Gupta','Gynecologic Oncologist',400,'4567890123'),(25,'Manpreet','Kaur','Otolaryngologist',450,'5678901234'),(26,'Nitya','Mishra','Hematologist',500,'6789012345'),(27,'Nivedita','Shukla','Pulmonologist',400,'7890123456'),(28,'Parul','Verma','Gastroenterologist',450,'8901234567'),(29,'Payal','Vohra','Cardiac Electrophysiologist',500,'9012345678'),(30,'Pooja','Bhatia','Allergist',400,'0123456789'),(31,'Pratik','Chauhan','Rheumatologist',450,'1234567890'),(32,'Preeti','Gulati','Dermatologic Surgeon',500,'2345678901'),(33,'Prerna','Kapoor','Neurologist',400,'3456789012'),(34,'Rajat','Khanna','Infectious Disease Specialist',500,'5699901234'),(35,'Ranveer','Malik','Endocrinologist',500,'5678901234'),(36,'Rhea','Nanda','Nephrologist',400,'6789012345'),(37,'Rishabh','Rana','Psychiatrist',450,'7890123456'),(38,'Ritu','Shukla','Surgeon',500,'8901234567'),(39,'Roshni','Gupta','Gynecologic Oncologist',400,'9012345678'),(40,'Sakshi','Kaur','Otolaryngologist',450,'0123456789'),(41,'Samar','Mishra','Hematologist',500,'1234567890'),(42,'Samriddhi','Shukla','Pulmonologist',400,'2345678901'),(43,'Sania','Verma','Gastroenterologist',450,'3456789012'),(44,'Sapna','Vohra','Cardiac Electrophysiologist',500,'4567890123'),(45,'Shalini','Bhatia','Allergist',400,'5678901234'),(46,'Shivangi','Chauhan','Rheumatologist',450,'6789012345'),(47,'Shruti','Gulati','Dermatologic Surgeon',500,'7890123456'),(48,'Siddhi','Kapoor','Neurologist',400,'8901234567'),(49,'Simran','Khanna','Infectious Disease Specialist',450,'9012345678'),(50,'Sonia','Malik','Endocrinologist',500,'0123456789'),(51,'Sonam','Nanda','Nephrologist',400,'1234567890'),(52,'Srija','Rana','Psychiatrist',450,'2345678901'),(53,'Sushmita','Shukla','Surgeon',500,'3456789012'),(54,'Swati','Gupta','Gynecologic Oncologist',400,'4567890123'),(55,'Tanya','Kaur','Otolaryngologist',450,'5678901234'),(56,'Trisha','Mishra','Hematologist',500,'6789012345'),(57,'Tulsi','Shukla','Pulmonologist',400,'7890123456'),(58,'Usha','Verma','Gastroenterologist',450,'8901234567'),(59,'Vandana','Vohra','Cardiac Electrophysiologist',500,'9012345678'),(60,'Varsha','Bhatia','Allergist',400,'0123456789'),(61,'Vikas','Chauhan','Rheumatologist',450,'1234567890'),(62,'Vikrant','Gulati','Dermatologic Surgeon',500,'2345678901'),(63,'Vinita','Kapoor','Neurologist',400,'3456789012'),(64,'Yashaswi','Khanna','Infectious Disease Specialist',450,'4567890123'),(65,'Yogita','Malik','Endocrinologist',500,'5678901234'),(66,'Zoya','Nanda','Nephrologist',400,'6789012345'),(67,'Aditi','Rana','Psychiatrist',450,'7890123456'),(68,'Akshay','Shukla','Surgeon',500,'8901234567'),(69,'Aman','Gupta','Gynecologic Oncologist',400,'9012345678'),(70,'Aniket','Kaur','Otolaryngologist',450,'0123456789'),(71,'Anjali','Mishra','Hematologist',500,'1234567890'),(72,'Ankur','Shukla','Pulmonologist',400,'2345678901'),(73,'Arjun','Verma','Gastroenterologist',450,'3456789012'),(74,'Arpita','Vohra','Cardiac Electrophysiologist',500,'4567890123'),(75,'Aryan','Bhatia','Allergist',400,'5678901234'),(76,'Ashutosh','Chauhan','Rheumatologist',450,'6789012345'),(77,'Avinash','Gulati','Dermatologic Surgeon',500,'7890123456'),(78,'Bhavana','Kapoor','Neurologist',400,'8901234567'),(79,'Chaitanya','Khanna','Infectious Disease Specialist',450,'9012345678'),(80,'Dhruv','Malik','Endocrinologist',500,'0123456789'),(81,'Divya','Nanda','Nephrologist',400,'1234567890'),(82,'Kritika','Bhalla','Oncologist',400,'6789012361'),(83,'Vivaan','Dutta','Pediatrician',450,'6789012362'),(84,'Diya','Nair','Dermatologist',500,'6789012363'),(85,'Kavya','Menon','Surgeon',350,'6789012364'),(86,'Aryan','Kaur','Neurologist',400,'6789012365'),(87,'Ishita','Sethi','Obstetrician',450,'6789012366'),(88,'Rishabh','Kapoor','Gastroenterologist',500,'6789012367'),(89,'Shruti','Sharma','Orthopedic',350,'6789012368'),(90,'Nitya','Chopra','Psychiatrist',400,'6789012369'),(91,'Aarav','Nanda','Dentist',450,'6789012370'),(92,'Anjali','Verma','Ophthalmologist',500,'6789012371'),(93,'Parth','Gupta','Urologist',350,'6789012372'),(94,'Shivansh','Agrawal','Nephrologist',400,'6789012373'),(95,'Anaya','Jain','Cardiologist',450,'6789012374'),(96,'Aryan','Shukla','Oncologist',500,'6789012375'),(97,'Diya','Mehra','Pediatrician',350,'6789012376'),(98,'Nitya','Mathur','Dermatologist',400,'6789012377'),(99,'Aarohi','Malhotra','Surgeon',450,'6789012378'),(100,'Anvi','Shah','Neurologist',500,'6789012379');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labtest`
--

DROP TABLE IF EXISTS `labtest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labtest` (
  `Test_Name` varchar(255) NOT NULL,
  `Price` int NOT NULL,
  PRIMARY KEY (`Test_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labtest`
--

LOCK TABLES `labtest` WRITE;
/*!40000 ALTER TABLE `labtest` DISABLE KEYS */;
INSERT INTO `labtest` VALUES ('T1',834),('T10',869),('T100',854),('T11',687),('T12',1027),('T13',951),('T14',769),('T15',1052),('T16',874),('T17',615),('T18',952),('T19',898),('T2',974),('T20',739),('T21',1051),('T22',863),('T23',634),('T24',1074),('T25',961),('T26',793),('T27',1041),('T28',824),('T29',647),('T3',742),('T30',1031),('T31',919),('T32',753),('T33',1057),('T34',854),('T35',667),('T36',1033),('T37',890),('T38',778),('T39',1036),('T4',813),('T40',846),('T41',630),('T42',986),('T43',919),('T44',709),('T45',1058),('T46',866),('T47',691),('T48',1029),('T49',961),('T5',669),('T50',721),('T51',1041),('T52',898),('T53',635),('T54',1072),('T55',927),('T56',764),('T57',1063),('T58',853),('T59',624),('T6',1011),('T60',1011),('T61',951),('T62',796),('T63',1051),('T64',833),('T65',659),('T66',1031),('T67',938),('T68',712),('T69',1061),('T7',926),('T70',886),('T71',665),('T72',1032),('T73',946),('T74',739),('T75',1054),('T76',866),('T77',624),('T78',1013),('T79',936),('T8',714),('T80',754),('T81',1063),('T82',873),('T83',671),('T84',1031),('T85',914),('T86',782),('T87',1057),('T88',844),('T89',634),('T9',1091),('T90',1021),('T91',951),('T92',708),('T93',1061),('T94',876),('T95',672),('T96',1027),('T97',947),('T98',754),('T99',1053),('TFT',1000);
/*!40000 ALTER TABLE `labtest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_Id` int NOT NULL,
  `Product_Name` varchar(255) NOT NULL,
  `Price` int NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Product_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'A Medicine',250,3),(2,'Maxol',275,4),(3,'Flexi',300,5),(4,'Gigamax',325,6),(5,'Stron',350,7),(6,'Flexitron',375,8),(7,'Maxon',400,9),(8,'Flexit',425,10),(9,'Maximax',450,11),(10,'Flexir',475,12),(11,'Max',500,13),(12,'Flexilog',525,14),(13,'Maxostar',550,15),(14,'Flexitronix',575,16),(15,'Maxolight',600,17),(16,'Flexicon',625,18),(17,'Maxotech',650,19),(18,'Flexisystem',675,20),(19,'Maxoteam',700,21),(20,'Flexitec',725,22),(21,'Maxotron',750,23),(22,'Flexicontech',775,24),(23,'Maxoline',800,25),(24,'Flexillum',825,26),(25,'Maxolightpro',850,27),(26,'Fleximax',875,28),(27,'Maxolux',900,29),(28,'Flexitek',925,30),(29,'Maxowatt',950,31),(30,'Flexitronixpro',975,32),(31,'Maxotec',1000,33),(32,'Flexilite',1025,34),(33,'Maxomax',1050,35),(34,'Flexitronpro',1075,36),(35,'Maxoliteplus',1100,37),(36,'Flexisun',1125,38),(37,'Maxolighttech',1150,39),(38,'Flexilight',1175,40),(39,'Maxotronix',1200,41),(40,'Flexilogic',1225,42),(41,'Maxoillum',1250,43),(42,'Flexitronplus',1275,44),(43,'Maxolitex',1300,45),(44,'Flexisystempro',1325,46),(45,'Maxotronpro',1350,47),(46,'Flexilum',1375,48),(47,'Maxotecplus',1400,49),(48,'Flexitekpro',1425,50),(49,'Maxomaxpro',1450,51),(50,'Flexillumpro',1475,52),(51,'Maxolightplus',1500,53),(52,'Flexisystemplus',1525,54),(53,'Maxotronixpro',1550,55),(54,'Flexitecplus',1575,56),(55,'Maxolightx',1600,57),(56,'Flexilightpro',1625,58),(57,'Maxotecx',1650,59),(58,'Flexisystemtech',1675,60),(59,'Maxolighttechpro',1700,61),(60,'Flexitekx',1725,62),(61,'Maxomaxplus',1750,63),(62,'Flexillumplus',1775,64),(63,'Maxotronixplus',1800,65),(64,'Flexisystemx',1825,66),(65,'Maxolightproplus',1850,67),(66,'Flexitecpro',1875,68),(67,'Maxomaxtech',1900,69),(68,'Flexillumproplus',1925,70),(69,'Maxotronproplus',1950,71),(70,'Flexisystemtechpro',1975,72),(71,'Maxolightpluspro',2000,73),(72,'Flexitekproplus',2025,74),(73,'Maxomaxpluspro',2050,75),(74,'Flexillumpluspro',2075,76),(75,'Maxotronixpluspro',2100,77),(76,'Flexisystemxpro',2125,78),(77,'Maxolightproplusplus',2150,79),(78,'Flexitecproplus',2175,80),(79,'Maxomaxtechpro',2200,81),(80,'Flexillumproplusplus',2225,82),(81,'Maxotronproplusplus',2250,83),(82,'Flexisystemtechproplus',2275,84),(83,'Maxolightplusproplus',2300,85),(84,'Flexitekproplusplus',2325,86),(85,'Maxomaxplusproplus',2350,87),(86,'Flexillumplusproplus',2375,88),(87,'Maxotronixplusproplus',2400,89),(88,'Flexisystemxproplus',2425,90),(89,'Maxolightproplusplusplus',2450,91),(90,'Flexitecproplusplus',2475,92),(91,'Maxomaxtechproplus',2500,93),(92,'Flexillumproplusplusplus',2525,94),(93,'Maxotronproplusplusplus',2550,95),(94,'Flexisystemtechproplusplus',2575,96),(95,'Maxolightplusproplusplus',2600,97),(96,'Flexitekproplusplusplus',2625,98),(97,'Maxomaxplusproplusplus',2650,99),(98,'Flexillumplusproplusplus',2675,100),(99,'Maxotronixplusproplusplus',2700,101),(100,'Flexisystemxproplusplus',2725,102);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `seller_id` int NOT NULL,
  `seller_name` varchar(255) NOT NULL,
  `contact_details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'SR Medical','1234567891'),(2,'Prime Care','2345678912'),(3,'Life Health','3456789123'),(4,'Medi Clinic','4567891234'),(5,'Better Life','5678912345'),(6,'New Hope','6789123456'),(7,'Family Health','7891234567'),(8,'Health First','8912345678'),(9,'Total Care','9123456789'),(10,'Happy Life','0123456789'),(11,'Care Plus','1234567890'),(12,'Health Wise','2345678901'),(13,'Hope Clinic','3456789012'),(14,'Better Life','4567890123'),(15,'Life Care','5678901234'),(16,'Medi Choice','6789012345'),(17,'Medi World','7890123456'),(18,'Perfect Care','8901234567'),(19,'Health Zone','9012345678'),(20,'Health Plus','0123456789'),(21,'Medi Life','1234567890'),(22,'Better Health','2345678901'),(23,'New Life','3456789012'),(24,'Care Zone','4567890123'),(25,'Health Pro','5678901234'),(26,'Health Now','6789012345'),(27,'Medi Home','7890123456'),(28,'Prime Health','8901234567'),(29,'Life Line','9012345678'),(30,'Health Way','0123456789'),(31,'Medi Plus','1234567890'),(32,'Health One','2345678901'),(33,'Care Max','3456789012'),(34,'Medi Star','4567890123'),(35,'Life Health','5678901234'),(36,'Medi Focus','6789012345'),(37,'Better Care','7890123456'),(38,'Medi Safe','8901234567'),(39,'Health Plus','9012345678'),(40,'Health Now','0123456789'),(41,'Life Care','1234567890'),(42,'Health Zone','2345678901'),(43,'Health Pro','3456789012'),(44,'Medi Choice','4567890123'),(45,'Medi Home','5678901234'),(46,'Better Life','6789012345'),(47,'Medi World','7890123456'),(48,'Medi Life','8901234567'),(49,'Prime Health','9012345678'),(50,'Care Zone','0123456789'),(51,'Health Max','1234567890'),(52,'Life Health','2345678901'),(53,'Health One','3456789012'),(54,'Health Wise','4567890123'),(55,'Medi Focus','5678901234'),(56,'Care Max','6789012345'),(57,'Medi Plus','7890123456'),(58,'Health Star','8901234567'),(59,'Medi Safe','9012345678'),(60,'Health One','0123456789'),(61,'Life Care','1234567890'),(62,'Health Zone','2345678901'),(63,'Better Life','3456789012'),(64,'Medi Home','4567890123'),(65,'Medi Choice','5678901234'),(66,'Health Pro','6789012345'),(67,'Health Way','7890123456'),(68,'Life Line','8901234567'),(69,'Prime Health','9012345678'),(70,'Medi Life','0123456789'),(71,'Medi World','1234567890'),(72,'Better Care','2345678901'),(73,'Medi Focus','3456789012'),(74,'Health Wise','4567890123'),(75,'Health One','5678901234'),(76,'Life Health','6789012345'),(77,'Care Max','7890123456'),(78,'Medi Plus','8901234567'),(79,'Health Star','9012345678'),(80,'Medi Safe','0123456789'),(81,'Health Max','1234567890'),(82,'Care Zone','2345678901'),(83,'Prime Health','3456789012'),(84,'Medi Life','4567890123'),(85,'Better Life','5678901234'),(86,'Medi Home','6789012345'),(87,'Medi Choice','7890123456'),(88,'Health Pro','8901234567'),(89,'Health Way','9012345678'),(90,'Life Line','0123456789'),(91,'Health Plus','1234567890'),(92,'Medi World','2345678901'),(93,'Better Care','3456789012'),(94,'Medi Focus','4567890123'),(95,'Health Wise','5678901234'),(96,'Health One','6789012345'),(97,'Life Health','7890123456'),(98,'Care Max','8901234567'),(99,'Medi Plus','9012345678'),(100,'Health Star','0123456789'),(101,'Promax Medical',NULL);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `Subscription_Type` varchar(255) NOT NULL,
  `Price` int NOT NULL,
  PRIMARY KEY (`Subscription_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES ('Premium',2000),('VIP',3000);
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `the_admin`
--

DROP TABLE IF EXISTS `the_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `the_admin` (
  `admin_id` int NOT NULL,
  `Admin_Name` varchar(255) NOT NULL,
  `product_id` int DEFAULT NULL,
  `doctor_id` int NOT NULL,
  `reg_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`doctor_id`),
  KEY `product_id` (`product_id`),
  KEY `reg_id` (`reg_id`),
  KEY `seller_id` (`seller_id`),
  KEY `test_name` (`test_name`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `the_admin_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_Id`),
  CONSTRAINT `the_admin_ibfk_2` FOREIGN KEY (`reg_id`) REFERENCES `company` (`Reg_id`),
  CONSTRAINT `the_admin_ibfk_3` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`),
  CONSTRAINT `the_admin_ibfk_4` FOREIGN KEY (`test_name`) REFERENCES `labtest` (`Test_Name`),
  CONSTRAINT `the_admin_ibfk_5` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`),
  CONSTRAINT `the_admin_ibfk_6` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`Customer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `the_admin`
--

LOCK TABLES `the_admin` WRITE;
/*!40000 ALTER TABLE `the_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `the_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'project1'
--

--
-- Dumping routines for database 'project1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 22:26:47
