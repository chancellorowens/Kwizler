-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: vocabSets
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `ComputerScience`
--

DROP TABLE IF EXISTS `ComputerScience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComputerScience` (
  `VocabularySets` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComputerScience`
--

LOCK TABLES `ComputerScience` WRITE;
/*!40000 ALTER TABLE `ComputerScience` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComputerScience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ForeignLanguage`
--

DROP TABLE IF EXISTS `ForeignLanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ForeignLanguage` (
  `VocabularySets` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ForeignLanguage`
--

LOCK TABLES `ForeignLanguage` WRITE;
/*!40000 ALTER TABLE `ForeignLanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ForeignLanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Geometry`
--

DROP TABLE IF EXISTS `Geometry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Geometry` (
  `term` varchar(255) DEFAULT NULL,
  `definition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Geometry`
--

LOCK TABLES `Geometry` WRITE;
/*!40000 ALTER TABLE `Geometry` DISABLE KEYS */;
/*!40000 ALTER TABLE `Geometry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `History`
--

DROP TABLE IF EXISTS `History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `History` (
  `VocabularySets` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `History`
--

LOCK TABLES `History` WRITE;
/*!40000 ALTER TABLE `History` DISABLE KEYS */;
/*!40000 ALTER TABLE `History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Math`
--

DROP TABLE IF EXISTS `Math`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Math` (
  `VocabularySets` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Math`
--

LOCK TABLES `Math` WRITE;
/*!40000 ALTER TABLE `Math` DISABLE KEYS */;
INSERT INTO `Math` VALUES ('Trigonometry'),('Geometry'),('Algebra'),('Calculus');
/*!40000 ALTER TABLE `Math` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Miscellaneous`
--

DROP TABLE IF EXISTS `Miscellaneous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Miscellaneous` (
  `VocabularySets` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Miscellaneous`
--

LOCK TABLES `Miscellaneous` WRITE;
/*!40000 ALTER TABLE `Miscellaneous` DISABLE KEYS */;
/*!40000 ALTER TABLE `Miscellaneous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SAT`
--

DROP TABLE IF EXISTS `SAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SAT` (
  `VocabularySets` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SAT`
--

LOCK TABLES `SAT` WRITE;
/*!40000 ALTER TABLE `SAT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calculus`
--

DROP TABLE IF EXISTS `calculus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calculus` (
  `term` varchar(255) DEFAULT NULL,
  `definition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calculus`
--

LOCK TABLES `calculus` WRITE;
/*!40000 ALTER TABLE `calculus` DISABLE KEYS */;
INSERT INTO `calculus` VALUES ('calculus','branch of mathematics that deals with derivatives and integrals'),('differential calculus','calculus that deals with differentials'),('integral calculus','calculus that deals with integrals'),('intermediate value theorem','if f is continuous on [a.b] and k is between f(a) and f(b) then there exists f(c)=k'),('cosine of x','derivative of sine of x'),('negative sine of x','derivative of cosine of x'),('secant squared of x','derivative of tangent of x'),('negative cosecant squared of x','derivative of cotangent of x'),('extreme value theorem','over a continuous interval, there is a absolute max and an absolute minimum'),('critical number','the derivative at this point is zero or undefined'),('mean value theorem','the instantaneous slope is equal to the mean slope at some point along the interval'),('sine of x plus c','integral of cosine x'),('negative cosine of x plus c','integral of sine of x'),('area under curve','the integral of a continuous function'),('Reimann Sum','An approximation technique for integrals'),('quotient rule','Lo d hi minus hi d low'),('Chain Rule','derivatives of composite functions'),('power rule','the derivative to a power is the same as the power times the original function with the power -1'),('continuous function at c','true if it exists at c, the limit exits, and the limit as x approaches c is equal to the function at c'),('horizontal line','set y equal to a constant'),('limit','the ultimate trend of a function as it approaches a certain value'),('velocity','derivative of position'),('logarithm','equal to the exponenent on a given base that would deliver this number'),('slope field','visualization of a differential equation'),('series','sum of a sequence of numbers');
/*!40000 ALTER TABLE `calculus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weFoundAProblem`
--

DROP TABLE IF EXISTS `weFoundAProblem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weFoundAProblem` (
  `term` varchar(255) DEFAULT NULL,
  `definition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weFoundAProblem`
--

LOCK TABLES `weFoundAProblem` WRITE;
/*!40000 ALTER TABLE `weFoundAProblem` DISABLE KEYS */;
INSERT INTO `weFoundAProblem` VALUES ('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null'),('null','null');
/*!40000 ALTER TABLE `weFoundAProblem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-25 12:56:05
