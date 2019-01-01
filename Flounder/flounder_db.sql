-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2018 at 09:55 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flounder_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bottomtypes`
--

CREATE TABLE `bottomtypes` (
  `BottomType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bottomtypes`
--

INSERT INTO `bottomtypes` (`BottomType`) VALUES
('AR Concrete'),
('AR Concrete Sand'),
('AR Metal'),
('AR Metal Concrete'),
('AR Metal Concrete Sand'),
('AR Metal Concrete Very Little Sand'),
('AR Metal Mud and Shell'),
('AR Metal Sand'),
('AR Metal Wreck'),
('AR Metal Wreck Mud and Shell'),
('AR Metal Wreck Sand'),
('AR Metal Wreck Shell and Sand'),
('Artificial Reef'),
('Live Bottom'),
('Live Bottom and Sand'),
('Reef'),
('Sand'),
('Sand and Gravel'),
('Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `flounders`
--

CREATE TABLE `flounders` (
  `SampleID` mediumint(8) DEFAULT NULL,
  `SpCode` char(4) DEFAULT NULL,
  `Specimen` tinyint(2) DEFAULT NULL,
  `TL` smallint(4) DEFAULT NULL COMMENT 'Total length (mm)',
  `SL` smallint(4) DEFAULT NULL COMMENT 'Standard length (mm)',
  `TotalWeight` smallint(4) DEFAULT NULL COMMENT 'grams',
  `GonadWeight` decimal(4,1) DEFAULT NULL,
  `SomaticWeight` decimal(5,1) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Maturity` tinyint(2) DEFAULT NULL,
  `LeftOtolith` char(1) DEFAULT NULL,
  `RightOtolith` char(1) DEFAULT NULL,
  `Histology` char(1) DEFAULT NULL,
  `Age` tinyint(2) DEFAULT NULL,
  `MOD` smallint(4) DEFAULT NULL COMMENT 'Maximum oocyte diameter',
  `YearClass` smallint(4) DEFAULT NULL,
  `Frozen` char(1) DEFAULT NULL,
  `POFs` tinyint(1) DEFAULT NULL,
  `Atresia` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flounders`
--

INSERT INTO `flounders` (`SampleID`, `SpCode`, `Specimen`, `TL`, `SL`, `TotalWeight`, `GonadWeight`, `SomaticWeight`, `Sex`, `Maturity`, `LeftOtolith`, `RightOtolith`, `Histology`, `Age`, `MOD`, `YearClass`, `Frozen`, `POFs`, `Atresia`) VALUES
(70020, 'A412', 1, 498, 412, 1658, '12.0', NULL, 'F', 3, 'T', 'T', 'T', 5, 1711, 2002, 'F', NULL, NULL),
(70021, 'A412', 1, 357, 291, 533, '6.7', NULL, 'M', 12, 'T', 'T', 'T', 3, NULL, 2004, 'F', NULL, NULL),
(70021, 'A412', 2, 535, 450, 2537, '10.6', NULL, 'F', NULL, 'T', 'T', 'T', 6, NULL, 2001, 'F', NULL, NULL),
(70024, 'A412', 1, 520, 410, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 5, NULL, 2002, 'F', NULL, NULL),
(70024, 'A412', 2, 500, 420, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 5, NULL, 2002, 'F', NULL, NULL),
(70024, 'A412', 3, 531, 406, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 4, NULL, 2003, 'F', NULL, NULL),
(70024, 'A412', 4, 420, 350, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 2, NULL, 2005, 'F', NULL, NULL),
(70024, 'A412', 5, 465, 390, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 4, NULL, 2003, 'F', NULL, NULL),
(70025, 'A412', 1, 432, 356, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 3, NULL, 2004, 'F', NULL, NULL),
(70025, 'A412', 2, 390, 325, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 3, NULL, 2004, 'F', NULL, NULL),
(70025, 'A412', 3, 450, 380, NULL, NULL, NULL, 'F', NULL, 'T', 'F', 'F', 4, NULL, 2003, 'F', NULL, NULL),
(70025, 'A412', 4, 427, 348, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 3, NULL, 2004, 'F', NULL, NULL),
(70025, 'A412', 5, 426, 359, NULL, NULL, NULL, 'F', NULL, 'F', 'T', 'F', 3, NULL, 2004, 'F', NULL, NULL),
(70025, 'A412', 6, 490, 400, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 5, NULL, 2002, 'F', NULL, NULL),
(70025, 'A412', 7, 345, 277, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 2, NULL, 2005, 'F', NULL, NULL),
(70025, 'A412', 8, 490, 415, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 4, NULL, 2003, 'F', NULL, NULL),
(70025, 'A412', 9, 426, 355, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 3, NULL, 2004, 'F', NULL, NULL),
(70025, 'A412', 10, 453, 361, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 5, NULL, 2002, 'F', NULL, NULL),
(70025, 'A412', 11, 320, 255, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 2, NULL, 2005, 'F', NULL, NULL),
(70025, 'A412', 12, 357, 288, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 2, NULL, 2005, 'F', NULL, NULL),
(70025, 'A412', 13, 420, 360, NULL, NULL, NULL, 'F', NULL, 'F', 'T', 'F', 5, NULL, 2002, 'F', NULL, NULL),
(70026, 'A412', 1, 444, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 3, NULL, 2004, 'F', NULL, NULL),
(70027, 'A412', 1, 440, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 4, NULL, 2003, 'F', NULL, NULL),
(70028, 'A412', 1, 554, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 6, NULL, 2001, 'F', NULL, NULL),
(70028, 'A412', 2, 410, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 3, NULL, 2004, 'F', NULL, NULL),
(70029, 'A412', 1, 525, 446, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 5, NULL, 2002, 'F', NULL, NULL),
(70030, 'A412', 1, 592, 495, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 5, NULL, 2002, 'F', NULL, NULL),
(70031, 'A414', 1, 357, 297, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 2, NULL, 2005, 'F', NULL, NULL),
(70031, 'A414', 2, 592, 498, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'T', 6, NULL, 2001, 'F', NULL, NULL),
(70032, 'A414', 1, 521, 447, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 3, NULL, 2004, 'F', NULL, NULL),
(70032, 'A412', 1, 455, 376, NULL, NULL, NULL, 'F', NULL, 'T', 'F', 'F', 4, NULL, 2003, 'F', NULL, NULL),
(70033, 'A414', 1, 595, 506, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 4, NULL, 2003, 'F', NULL, NULL),
(70033, 'A414', 2, 489, 407, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 4, NULL, 2003, 'F', NULL, NULL),
(70033, 'A414', 3, 435, 357, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 3, NULL, 2004, 'F', NULL, NULL),
(70033, 'A414', 4, 532, 446, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 5, NULL, 2002, 'F', NULL, NULL),
(70033, 'A412', 1, 486, 411, NULL, NULL, NULL, 'F', NULL, 'T', 'F', 'F', 3, NULL, 2004, 'F', NULL, NULL),
(70033, 'A414', 5, 475, 391, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'F', 4, NULL, 2003, 'F', NULL, NULL),
(70034, 'A412', 1, 515, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'F', 'T', 4, 276, 2003, 'T', NULL, NULL),
(70034, 'A414', 1, 560, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'F', 'T', 4, 247, 2003, 'T', NULL, NULL),
(70034, 'A414', 2, 578, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'F', 'T', 4, 544, 2003, 'T', NULL, NULL),
(70034, 'A412', 2, 529, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 4, 220, 2003, 'T', NULL, NULL),
(70034, 'A414', 3, 472, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 251, 2002, 'T', NULL, NULL),
(70034, 'A412', 3, 402, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'F', 'T', 3, 253, 2004, 'T', NULL, NULL),
(70034, 'A475', 1, 417, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 2, 230, 2005, 'T', NULL, NULL),
(70034, 'A412', 4, 545, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'F', 'T', 8, 409, 1999, 'T', NULL, NULL),
(70034, 'A412', 5, 406, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'T', 2, NULL, 2005, 'T', NULL, NULL),
(70034, 'A414', 4, 485, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'F', 'T', 3, 235, 2004, 'T', NULL, NULL),
(70034, 'A414', 5, 556, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 3, 478, 2004, 'T', NULL, NULL),
(70034, 'A414', 6, 510, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'F', 'T', 4, NULL, 2003, 'T', NULL, NULL),
(70034, 'A414', 7, 468, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 208, 0, 'T', NULL, NULL),
(70034, 'A412', 6, 527, NULL, NULL, NULL, NULL, 'F', 5, 'F', 'F', 'T', NULL, 232, NULL, 'T', NULL, NULL),
(70034, 'A412', 7, 465, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 260, 2002, 'T', NULL, NULL),
(70034, 'A412', 8, 419, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'T', 2, NULL, 2005, 'T', NULL, NULL),
(70034, 'A412', 9, 436, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 6, 662, 2001, 'T', NULL, NULL),
(70034, 'A414', 8, 486, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 4, 211, 2003, 'T', NULL, NULL),
(70034, 'A412', 10, 593, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'F', 'T', 3, 480, 2004, 'T', NULL, NULL),
(70034, 'A412', 11, 402, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 3, 289, 2004, 'T', NULL, NULL),
(70034, 'A412', 12, 494, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 5, 720, 2002, 'T', NULL, NULL),
(70034, 'A412', 13, 510, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'F', 'T', 5, 894, 2002, 'T', NULL, NULL),
(70034, 'A414', 9, 536, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 3, 288, 2004, 'T', NULL, NULL),
(70034, 'A414', 10, 530, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 228, 2004, 'T', NULL, NULL),
(70034, 'A414', 11, 532, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'T', NULL, NULL, NULL, 'T', NULL, NULL),
(70034, 'A414', 12, 511, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'F', 'T', 4, 370, 2003, 'T', NULL, NULL),
(70034, 'A414', 13, 446, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 4, 230, 2003, 'T', NULL, NULL),
(70034, 'A414', 14, 466, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 4, 250, 2003, 'T', NULL, NULL),
(70034, 'A414', 15, 575, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 4, 749, 2003, 'T', NULL, NULL),
(70034, 'A414', 16, 488, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 4, 283, 2003, 'T', NULL, NULL),
(70034, 'A412', 14, 532, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 4, 360, 2003, 'T', NULL, NULL),
(70034, 'A412', 15, 540, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 265, 2002, 'T', NULL, NULL),
(70034, 'A475', 2, 405, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'T', 4, NULL, 2003, 'T', NULL, NULL),
(70034, 'A414', 17, 493, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, NULL, 2004, 'T', NULL, NULL),
(70034, 'A412', 16, 348, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 2, NULL, 2005, 'T', NULL, NULL),
(70034, 'A414', 18, 502, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 2, 330, 2005, 'T', NULL, NULL),
(70034, 'A412', 17, 535, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 220, 2002, 'T', NULL, NULL),
(70034, 'A414', 19, 428, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 4, 280, 2003, 'T', NULL, NULL),
(70034, 'A412', 18, 539, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 280, 2002, 'T', NULL, NULL),
(70034, 'A414', 20, 555, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'T', 4, NULL, 2003, 'T', NULL, NULL),
(70034, 'A414', 21, 535, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 4, 310, 2003, 'T', NULL, NULL),
(70034, 'A414', 22, 471, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 4, 210, 2003, 'T', NULL, NULL),
(70034, 'A414', 23, 481, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'F', 'T', 3, 463, 2004, 'T', NULL, NULL),
(70034, 'A414', 24, 508, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 2, 220, 2005, 'T', NULL, NULL),
(70034, 'A414', 25, 524, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 4, 300, 2003, 'T', NULL, NULL),
(70034, 'A414', 26, 470, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'F', 'T', 4, 210, 2003, 'T', NULL, NULL),
(70034, 'A414', 27, 509, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'F', 'T', 4, 525, 2003, 'T', NULL, NULL),
(70035, 'A412', 1, 465, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'T', 5, NULL, 2002, 'F', NULL, NULL),
(70035, 'A412', 2, 511, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 4, 300, 2003, 'F', NULL, NULL),
(70035, 'A414', 1, 395, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 2, 520, 2005, 'F', NULL, NULL),
(70035, 'A412', 3, 458, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 190, 2002, 'F', NULL, NULL),
(70035, 'A412', 4, 401, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 2, 300, 2005, 'F', NULL, NULL),
(70035, 'A412', 5, 446, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 5, 540, 2002, 'F', NULL, NULL),
(70036, 'A412', 1, 610, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 6, 200, 2001, 'F', NULL, NULL),
(70036, 'A412', 2, 410, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 200, 2004, 'F', NULL, NULL),
(70036, 'A412', 3, 497, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 200, 2002, 'F', NULL, NULL),
(70036, 'A412', 4, 385, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 4, NULL, 2003, 'F', NULL, NULL),
(70037, 'A412', 1, 399, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 236, 2004, 'F', NULL, NULL),
(70038, 'A412', 1, 493, NULL, NULL, NULL, NULL, 'F', 11, 'T', 'T', 'T', 6, 1154, 2001, 'F', NULL, NULL),
(70039, 'A414', 1, 471, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 3, 580, 2004, 'F', NULL, NULL),
(70039, 'A412', 1, 436, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'F', 'T', 2, NULL, 2005, 'F', NULL, NULL),
(70039, 'A412', 2, 522, NULL, NULL, NULL, NULL, 'F', 5, 'F', 'T', 'T', 4, 200, 2003, 'F', NULL, NULL),
(70040, 'A414', 1, 522, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 4, 480, 2003, 'F', NULL, NULL),
(70040, 'A414', 2, 513, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 5, 350, 2002, 'F', NULL, NULL),
(70040, 'A412', 1, 391, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 2, 220, 2005, 'F', NULL, NULL),
(70041, 'A414', 1, 443, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 2, 200, 2005, 'F', NULL, NULL),
(70041, 'A414', 2, 436, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 248, 2004, 'F', NULL, NULL),
(70042, 'A414', 1, 579, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 4, 280, 2003, 'F', NULL, NULL),
(70042, 'A413', 1, 376, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 1, 220, 2006, 'F', NULL, NULL),
(70042, 'A414', 2, 419, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 4, 360, 2003, 'F', NULL, NULL),
(70042, 'A414', 3, 425, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'F', 'T', 4, 210, 2003, 'F', NULL, NULL),
(70042, 'A414', 4, 420, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 3, 330, 2004, 'F', NULL, NULL),
(80001, 'A412', 1, 465, NULL, 1520, NULL, NULL, 'F', 3, 'F', 'T', 'T', 6, NULL, 2002, 'F', NULL, NULL),
(80001, 'A412', 2, 514, NULL, 1990, NULL, NULL, 'F', 3, 'T', 'T', 'T', 6, 1670, 2002, 'F', NULL, NULL),
(80001, 'A412', 3, 300, NULL, 360, NULL, NULL, 'F', 2, 'T', 'T', 'T', 2, 420, 2006, 'F', NULL, NULL),
(80001, 'A412', 4, 459, NULL, 1320, NULL, NULL, 'F', 3, 'T', 'T', 'T', 5, NULL, 2003, 'F', NULL, NULL),
(80003, 'A412', 1, 553, NULL, 2420, NULL, NULL, 'F', 10, 'T', 'T', 'T', 8, 1000, 2000, 'F', 3, NULL),
(80003, 'A412', 2, 465, NULL, 1270, NULL, NULL, 'M', 12, 'T', 'T', 'T', 7, NULL, 2001, 'F', NULL, NULL),
(80003, 'A412', 3, 421, NULL, 920, NULL, NULL, 'M', 12, 'T', 'T', 'T', 4, NULL, 2004, 'F', NULL, NULL),
(80003, 'A412', 4, 358, NULL, 560, NULL, NULL, 'M', 12, 'T', 'T', 'T', 4, NULL, 2004, 'F', NULL, NULL),
(80004, 'A412', 1, 536, NULL, 2340, NULL, NULL, 'F', 11, 'T', 'T', 'T', 5, 1100, 2003, 'F', 3, NULL),
(80004, 'A412', 2, 421, NULL, 980, NULL, NULL, 'F', 2, 'T', 'T', 'T', 4, 880, 2004, 'F', 3, NULL),
(80004, 'A412', 3, 377, NULL, 660, NULL, NULL, 'M', 12, 'T', 'T', 'T', 4, NULL, 2004, 'F', NULL, NULL),
(80005, 'A412', 1, 431, NULL, NULL, NULL, NULL, 'F', 11, 'T', 'T', 'T', 4, 1118, 2004, 'T', 3, NULL),
(70048, 'A412', 1, 481, NULL, NULL, NULL, NULL, 'F', 11, 'T', 'T', 'T', 5, 1110, 2002, 'T', 2, NULL),
(70048, 'A412', 2, 355, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 2, NULL, 2006, 'T', NULL, NULL),
(70048, 'A412', 3, 396, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 3, NULL, 2005, 'T', NULL, NULL),
(70048, 'A475', 1, NULL, NULL, NULL, NULL, NULL, '', NULL, 'F', 'F', 'F', 0, NULL, 0, 'T', NULL, NULL),
(70048, 'A475', 2, NULL, NULL, NULL, NULL, NULL, '', NULL, 'F', 'F', 'F', 0, NULL, 0, 'T', NULL, NULL),
(70048, 'A475', 3, NULL, NULL, NULL, NULL, NULL, '', NULL, 'F', 'F', 'F', 0, NULL, 0, 'T', NULL, NULL),
(70048, 'A475', 4, NULL, NULL, NULL, NULL, NULL, '', NULL, 'F', 'F', 'F', 0, NULL, 0, 'T', NULL, NULL),
(70048, 'A475', 5, NULL, NULL, NULL, NULL, NULL, '', NULL, 'F', 'F', 'F', 0, NULL, 0, 'T', NULL, NULL),
(70048, 'A475', 6, NULL, NULL, NULL, NULL, NULL, '', NULL, 'F', 'F', 'F', 0, NULL, 0, 'T', NULL, NULL),
(70048, 'A475', 7, NULL, NULL, NULL, NULL, NULL, '', NULL, 'F', 'F', 'F', 0, NULL, 0, 'T', NULL, NULL),
(70048, 'A475', 8, NULL, NULL, NULL, NULL, NULL, '', NULL, 'F', 'F', 'F', 0, NULL, 0, 'T', NULL, NULL),
(70048, 'A475', 9, NULL, NULL, NULL, NULL, NULL, '', NULL, 'F', 'F', 'F', 0, NULL, 0, 'T', NULL, NULL),
(70048, 'A475', 10, NULL, NULL, NULL, NULL, NULL, '', NULL, 'F', 'F', 'F', 0, NULL, 0, 'T', NULL, NULL),
(70048, 'A475', 11, NULL, NULL, NULL, NULL, NULL, '', NULL, 'F', 'F', 'F', 0, NULL, 0, 'T', NULL, NULL),
(80006, 'A412', 1, 391, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 3, NULL, 2005, 'T', NULL, NULL),
(80006, 'A412', 2, 520, NULL, NULL, NULL, NULL, 'F', 11, 'T', 'T', 'T', 4, 1106, 2004, 'T', NULL, NULL),
(80006, 'A412', 3, 378, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 7, NULL, 2001, 'T', NULL, NULL),
(80006, 'A412', 4, 429, NULL, NULL, NULL, NULL, 'F', 11, 'T', 'T', 'T', 3, 1200, 2005, 'T', 3, NULL),
(80007, 'A412', 1, 548, NULL, NULL, NULL, NULL, 'F', 3, 'T', 'T', 'T', 7, 1500, 2001, 'F', 3, NULL),
(80007, 'A414', 1, 406, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', NULL, NULL, NULL, 'F', NULL, NULL),
(80007, 'A412', 2, 397, NULL, NULL, NULL, NULL, 'F', 11, 'T', 'T', 'T', 3, 1242, 2005, 'F', 1, NULL),
(80007, 'A413', 1, 508, NULL, NULL, NULL, NULL, 'F', 11, 'T', 'T', 'T', 6, 1331, 2002, 'F', 3, NULL),
(80007, 'A412', 3, 372, NULL, NULL, NULL, NULL, 'F', 10, 'T', 'T', 'T', 3, 1000, 2005, 'F', NULL, 1),
(80007, 'A412', 4, 332, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 7, NULL, 2001, 'F', NULL, NULL),
(80007, 'A412', 5, 367, NULL, NULL, NULL, NULL, 'F', 3, 'T', 'F', 'T', 3, 1395, 2005, 'F', 3, 1),
(80007, 'A412', 6, 314, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'F', 'T', 2, NULL, 2006, 'F', NULL, NULL),
(80008, 'A412', 1, 366, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 6, NULL, 2002, 'T', NULL, NULL),
(80008, 'A412', 2, 448, NULL, NULL, NULL, NULL, 'F', 3, 'T', 'T', 'T', 5, 1000, 2003, 'T', NULL, NULL),
(80029, 'A412', 1, 285, 233, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 1, 165, 2007, 'F', NULL, NULL),
(80029, 'A412', 2, 378, 309, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 4, NULL, 2004, 'F', NULL, NULL),
(80030, 'A412', 1, 359, 295, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 6, NULL, 2002, 'F', NULL, NULL),
(80031, 'A412', 1, 491, 405, NULL, NULL, NULL, 'F', 3, 'T', 'T', 'T', NULL, 1723, NULL, 'F', 3, NULL),
(80039, 'A412', 1, 530, 444, NULL, NULL, NULL, 'F', 3, 'T', 'T', 'T', 6, 1935, 2002, 'F', 3, NULL),
(80027, 'A412', 1, 428, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 5, NULL, 2003, 'F', NULL, NULL),
(80040, 'A413', 1, 372, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'F', 'T', 2, 215, 2006, 'F', NULL, NULL),
(80040, 'A412', 1, 396, NULL, NULL, NULL, NULL, 'F', 5, 'F', 'F', 'T', NULL, 183, NULL, 'F', NULL, NULL),
(80040, 'A412', 2, 444, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 180, 2005, 'F', NULL, NULL),
(80041, 'A412', 1, 497, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'F', 'F', 6, NULL, 2002, 'F', NULL, NULL),
(80041, 'A412', 2, 575, NULL, NULL, NULL, NULL, 'F', NULL, 'F', 'F', 'F', NULL, NULL, NULL, 'F', NULL, NULL),
(80042, 'A412', 1, 494, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 4, 175, 2004, 'F', NULL, NULL),
(80042, 'A412', 2, 472, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 211, 2003, 'F', NULL, NULL),
(80042, 'A412', 3, 490, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 7, 230, 2001, 'F', NULL, NULL),
(80042, 'A412', 4, 365, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 2, 190, 2006, 'F', NULL, NULL),
(80042, 'A412', 5, 365, NULL, NULL, NULL, NULL, 'F', 5, 'F', 'T', 'T', 2, 200, 2006, 'F', NULL, NULL),
(80043, 'A412', 1, 417, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 3, NULL, 2005, 'F', NULL, NULL),
(80043, 'A412', 2, 470, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 4, NULL, 2004, 'F', NULL, NULL),
(80043, 'A412', 3, 464, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'F', 'T', 3, NULL, 2005, 'F', NULL, NULL),
(80043, 'A412', 4, 482, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 4, 220, 2004, 'F', NULL, NULL),
(80044, 'A414', 1, 534, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 11, 196, 1997, 'F', NULL, NULL),
(80044, 'A412', 1, 445, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 4, NULL, 2004, 'F', NULL, NULL),
(80045, 'A414', 1, 491, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 185, 2003, 'F', NULL, NULL),
(80045, 'A412', 1, 456, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 185, 2005, 'F', NULL, NULL),
(80045, 'A412', 2, 406, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'F', 'T', 5, 197, 2003, 'F', NULL, NULL),
(80045, 'A414', 2, 509, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 2, 204, 2006, 'F', NULL, NULL),
(80045, 'A414', 3, 462, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 202, 2003, 'F', NULL, NULL),
(80045, 'A414', 4, 494, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 202, 2003, 'F', NULL, NULL),
(80045, 'A414', 5, 450, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 205, 2003, 'F', NULL, NULL),
(80046, 'A414', 1, 444, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 180, 2005, 'F', NULL, NULL),
(80046, 'A414', 2, 395, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 2, 187, 2006, 'F', NULL, NULL),
(80046, 'A414', 3, 490, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 4, 190, 2004, 'F', NULL, NULL),
(80046, 'A414', 4, 436, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'F', 'T', 5, 220, 2003, 'F', NULL, NULL),
(80046, 'A414', 5, 454, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 197, 2005, 'F', NULL, NULL),
(80047, 'A414', 1, 482, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 187, 2005, 'F', NULL, NULL),
(80047, 'A414', 2, 381, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 2, 182, 2006, 'F', NULL, NULL),
(80047, 'A414', 3, 420, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 243, 2005, 'F', NULL, NULL),
(80047, 'A414', 4, 484, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 4, 197, 2004, 'F', NULL, NULL),
(80047, 'A412', 1, 419, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'F', 'T', 3, 192, 2005, 'F', NULL, NULL),
(80047, 'A414', 5, 452, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 188, 2003, 'F', NULL, NULL),
(80056, 'A412', 1, 415, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 4, NULL, 2004, 'F', NULL, NULL),
(80056, 'A412', 2, 436, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 195, 2005, 'F', NULL, NULL),
(80056, 'A412', 3, 440, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 4, 181, 2004, 'F', NULL, NULL),
(80057, 'A414', 1, 539, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 234, 2003, 'F', NULL, NULL),
(80057, 'A414', 2, 466, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 211, 2005, 'F', NULL, NULL),
(80057, 'A413', 1, 331, NULL, NULL, NULL, NULL, 'F', NULL, 'T', 'T', 'T', 2, NULL, 2006, 'F', NULL, NULL),
(80057, 'A414', 3, 464, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 192, 2005, 'F', NULL, NULL),
(80057, 'A413', 2, 335, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 2, 230, 2006, 'F', NULL, NULL),
(80058, 'A412', 1, 498, NULL, NULL, '14.5', NULL, 'F', 5, 'T', 'T', 'T', 6, NULL, 2002, 'F', NULL, NULL),
(80058, 'A412', 2, 457, NULL, NULL, '22.1', NULL, 'F', 5, 'T', 'T', 'T', 6, 190, 2002, 'F', NULL, NULL),
(80058, 'A412', 3, 515, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 170, 2003, 'F', NULL, NULL),
(80058, 'A412', 4, 400, NULL, NULL, '4.2', NULL, 'M', NULL, 'T', 'F', 'T', 4, NULL, 2004, 'F', NULL, NULL),
(80058, 'A412', 5, 558, NULL, NULL, '17.4', NULL, 'F', NULL, 'T', 'T', 'T', 6, NULL, 2002, 'F', NULL, NULL),
(80058, 'A412', 6, 553, NULL, NULL, '19.7', NULL, 'F', 5, 'T', 'T', 'T', 8, 178, 2000, 'F', NULL, NULL),
(80058, 'A412', 7, 314, NULL, NULL, NULL, NULL, 'F', 1, 'T', 'T', 'T', 1, 190, 2007, 'F', NULL, NULL),
(80058, 'A412', 8, 501, NULL, NULL, '11.5', NULL, 'F', 5, 'T', 'F', 'T', 4, 220, 2004, 'F', NULL, NULL),
(80058, 'A412', 9, 469, NULL, NULL, '10.5', NULL, 'F', 5, 'T', 'T', 'T', 6, 190, 2002, 'F', NULL, NULL),
(80058, 'A412', 10, 468, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 6, 188, 2002, 'F', NULL, NULL),
(80059, 'A412', 1, 487, NULL, 1304, '7.0', '1283.0', 'F', 5, 'T', 'T', 'T', 4, NULL, 2004, 'F', NULL, NULL),
(80059, 'A412', 2, 563, NULL, 2279, '23.0', '2241.0', 'F', 5, 'T', 'T', 'T', 9, 148, 1999, 'F', NULL, NULL),
(80059, 'A412', 3, 560, NULL, 2057, '17.0', '2033.0', 'F', 5, 'T', 'F', 'T', 6, 172, 2002, 'F', NULL, NULL),
(80059, 'A412', 4, 467, NULL, 1280, '10.0', '1268.0', 'F', 5, 'F', 'T', 'T', 4, 153, 2004, 'F', NULL, NULL),
(80059, 'A412', 5, 560, NULL, 2051, '16.0', '2026.0', 'F', 5, 'T', 'T', 'T', 4, 176, 2004, 'F', NULL, NULL),
(80059, 'A412', 6, 388, NULL, 755, '6.0', '747.0', 'F', 5, 'T', 'T', 'T', 4, NULL, 2004, 'F', NULL, NULL),
(80060, 'A412', 1, 497, NULL, NULL, '11.0', NULL, 'F', 5, 'T', 'T', 'T', 5, 211, 2003, 'F', NULL, NULL),
(80060, 'A412', 2, 498, NULL, NULL, '10.0', NULL, 'F', 5, 'T', 'T', 'T', 4, 228, 2004, 'F', NULL, NULL),
(80060, 'A412', 3, 436, NULL, NULL, '7.0', NULL, 'F', 5, 'T', 'T', 'T', 3, 202, 2005, 'F', NULL, NULL),
(80060, 'A414', 1, 414, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 3, 176, 2005, 'F', NULL, NULL),
(80060, 'A414', 2, 496, NULL, NULL, '10.0', NULL, 'F', 5, 'T', 'T', 'T', 5, 204, 2003, 'F', NULL, NULL),
(80060, 'A414', 3, 467, NULL, NULL, '9.0', NULL, 'F', 5, 'T', 'T', 'T', 4, 196, 2004, 'F', NULL, NULL),
(80061, 'A414', 1, 489, NULL, NULL, '8.0', NULL, 'F', 5, 'T', 'T', 'T', 3, 176, 2005, 'F', NULL, NULL),
(80061, 'A414', 2, 498, NULL, NULL, '11.0', NULL, 'F', 5, 'T', 'T', 'T', 5, 193, 2003, 'F', NULL, NULL),
(80062, 'A412', 1, 471, NULL, NULL, '9.0', NULL, 'F', 5, 'T', 'T', 'T', 5, 176, 2003, 'F', NULL, NULL),
(80062, 'A413', 1, 345, NULL, NULL, '3.0', NULL, 'F', 5, 'T', 'T', 'T', 2, 200, 2006, 'F', NULL, NULL),
(80077, 'A412', 1, 537, NULL, 2387, '83.8', '2170.2', 'F', 10, 'T', 'T', 'T', 8, 960, 2000, 'F', 1, NULL),
(80077, 'A412', 2, 324, NULL, 422, '7.4', '411.1', 'M', 12, 'T', 'T', 'T', 2, NULL, 2006, 'F', NULL, NULL),
(80080, 'A412', 1, 343, NULL, NULL, '2.5', NULL, 'F', 2, 'T', 'T', 'T', 1, 230, 2007, 'T', NULL, NULL),
(80081, 'A412', 1, 396, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 3, NULL, 2005, 'T', NULL, NULL),
(80081, 'A412', 2, 367, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 2, NULL, 2006, 'T', NULL, NULL),
(80081, 'A412', 3, 412, NULL, NULL, NULL, NULL, 'F', 10, 'T', 'T', 'T', 2, 943, 2006, 'T', NULL, NULL),
(80081, 'A412', 4, 526, NULL, NULL, NULL, '82.7', 'F', 11, 'T', 'T', 'T', 5, 1060, 2003, 'T', NULL, NULL),
(80082, 'A414', 1, 475, NULL, NULL, '7.8', NULL, 'F', 5, 'T', 'T', 'T', 3, 197, 2005, 'F', NULL, NULL),
(80082, 'A414', 2, 434, NULL, NULL, '5.4', NULL, 'F', 5, 'F', 'T', 'T', 5, 183, 2003, 'F', NULL, NULL),
(80083, 'A414', 1, 492, NULL, NULL, '14.1', NULL, 'F', 2, 'T', 'T', 'T', 4, 283, 2004, 'F', NULL, NULL),
(80084, 'A412', 1, 394, NULL, NULL, '5.4', NULL, 'F', 1, 'T', 'T', 'T', 2, 173, 2006, 'F', NULL, NULL),
(80085, 'A414', 1, 566, NULL, NULL, '26.1', NULL, 'F', 2, 'T', 'T', 'T', 3, 493, 2005, 'F', NULL, NULL),
(80086, 'A414', 1, 579, NULL, NULL, '17.9', NULL, 'F', 2, 'F', 'F', 'T', NULL, 288, NULL, 'F', NULL, NULL),
(80087, 'A414', 1, 367, NULL, NULL, '3.0', NULL, 'F', 5, 'T', 'T', 'T', 1, 230, 2007, 'T', NULL, NULL),
(80088, 'A412', 1, 390, NULL, NULL, '6.2', NULL, 'F', 5, 'T', 'T', 'T', 3, 230, 2005, 'F', NULL, NULL),
(80088, 'A412', 2, 465, NULL, NULL, '12.3', NULL, 'F', 2, 'T', 'T', 'T', 5, 586, 2003, 'F', NULL, NULL),
(80088, 'A412', 3, 438, NULL, NULL, NULL, NULL, 'M', 12, 'T', 'T', 'T', 8, NULL, 2000, 'F', NULL, NULL),
(80089, 'A412', 1, 385, NULL, NULL, '3.2', NULL, 'F', 2, 'F', 'T', 'T', 1, 385, 2007, 'T', NULL, NULL),
(80089, 'A412', 2, 390, NULL, NULL, '18.2', NULL, 'F', 2, 'T', 'T', 'T', 1, 780, 2007, 'T', NULL, NULL),
(80090, 'A414', 1, 496, NULL, NULL, '76.5', NULL, 'F', 10, 'T', 'T', 'T', 1, 986, 2007, 'T', NULL, NULL),
(80090, 'A414', 2, 431, NULL, NULL, NULL, NULL, 'M', NULL, 'T', 'F', 'T', 8, NULL, 2000, 'T', NULL, NULL),
(80090, 'A412', 1, 420, NULL, NULL, '19.4', NULL, 'F', 2, 'T', 'T', 'T', 2, 872, 2006, 'T', NULL, NULL),
(80091, 'A414', 1, 356, NULL, NULL, '1.6', NULL, 'F', 5, 'T', 'T', 'T', 2, 183, 2006, 'T', NULL, NULL),
(80091, 'A414', 2, 446, NULL, NULL, '5.1', NULL, 'F', 2, 'T', 'T', 'T', 2, 476, 2006, 'T', NULL, NULL),
(80091, 'A412', 1, 394, NULL, NULL, '3.0', NULL, 'F', 1, 'T', 'T', 'T', 2, 156, 2006, 'T', NULL, NULL),
(80092, 'A412', 1, 346, NULL, NULL, NULL, NULL, 'F', 2, 'T', 'T', 'T', 2, 330, 2006, 'T', NULL, NULL),
(80092, 'A412', 2, 522, NULL, NULL, '74.2', NULL, 'F', 10, 'F', 'F', 'T', 4, 1081, 2004, 'T', NULL, NULL),
(80093, 'A412', 1, 550, NULL, NULL, '98.1', NULL, 'F', 10, 'T', 'T', 'T', 6, 991, 2002, 'T', NULL, NULL),
(90001, 'A412', 1, 532, NULL, NULL, NULL, NULL, 'F', 10, 'T', 'T', 'T', 6, 975, 2003, 'T', NULL, NULL),
(90002, 'A412', 1, 460, NULL, NULL, NULL, NULL, 'F', 10, 'T', 'T', 'T', 4, 1034, 2005, 'T', NULL, NULL),
(90003, 'A412', 1, 435, NULL, 919, '15.3', '899.0', 'M', 12, 'T', 'T', 'T', 3, NULL, 2006, 'F', NULL, NULL),
(90003, 'A412', 2, 391, NULL, 626, '6.9', '618.0', 'M', 12, 'T', 'T', 'T', 5, NULL, 2004, 'F', NULL, NULL),
(90005, 'A412', 1, 347, NULL, 439, '3.6', '431.3', 'M', 12, 'T', 'T', 'T', 5, NULL, 2004, 'F', NULL, NULL),
(90005, 'A412', 2, 512, NULL, 1571, '72.5', '1465.6', 'F', 10, 'T', 'T', 'T', 4, 1078, 2005, 'F', 1, 1),
(90005, 'A412', 3, 342, NULL, 467, '3.3', '464.9', 'M', 12, 'T', 'T', 'T', 5, NULL, 2004, 'F', NULL, NULL),
(90005, 'A412', 4, 407, NULL, 656, '5.9', '647.0', 'M', 12, 'T', 'T', 'T', 5, NULL, 2004, 'F', NULL, NULL),
(90005, 'A412', 5, 546, NULL, 2133, '117.0', '1924.5', 'F', 10, 'T', 'T', 'T', 7, 1050, 2002, 'F', 1, NULL),
(90005, 'A412', 6, 350, NULL, 523, '6.3', '512.1', 'M', 12, 'T', 'T', 'T', 5, NULL, 2004, 'F', NULL, NULL),
(90005, 'A412', 7, 251, NULL, 171, NULL, '171.8', 'M', 12, 'T', 'T', 'T', 1, NULL, 2008, 'F', NULL, NULL),
(90005, 'A412', 8, 359, NULL, 544, '3.5', '537.2', 'M', 12, 'T', 'T', 'T', 5, NULL, 2004, 'F', NULL, NULL),
(90005, 'A412', 9, 336, NULL, 377, '3.0', '374.2', 'M', 12, 'T', 'T', 'T', 4, NULL, 2005, 'F', NULL, NULL),
(90005, 'A412', 10, 360, NULL, 534, '4.8', '523.7', 'M', 12, 'T', 'T', 'T', 1, NULL, 2008, 'F', NULL, NULL),
(90006, 'A412', 1, 342, NULL, 392, '13.4', '358.2', 'F', 10, 'T', 'T', 'T', 2, 987, 2007, 'F', 1, NULL),
(90006, 'A412', 2, 544, NULL, 1982, '92.5', '1805.4', 'F', 10, 'T', 'T', 'T', 6, 943, 2003, 'F', 1, NULL),
(90008, 'A414', 1, 533, NULL, 1980, '21.2', '1953.2', 'F', 4, 'T', 'T', 'T', 6, 378, 2003, 'F', NULL, 2),
(90127, 'A414', 1, 450, NULL, 860, '3.2', '855.0', 'F', 5, 'T', 'T', 'T', 3, 170, 2006, 'T', NULL, NULL),
(90135, 'A412', 1, 322, NULL, 381, '4.4', '374.0', 'F', 4, 'T', 'T', 'T', 2, 708, 2007, 'T', NULL, 3),
(90135, 'A412', 2, 368, NULL, 603, '8.7', '594.0', 'F', 4, 'T', 'T', 'T', 2, 811, 2007, 'T', NULL, 1),
(90029, 'A414', 1, 271, NULL, 226, NULL, NULL, '', NULL, 'T', 'T', 'F', 2, NULL, 2007, 'F', NULL, NULL),
(90131, 'A412', 1, 261, NULL, 210, NULL, NULL, '', NULL, 'T', 'T', 'F', 1, NULL, 2008, 'F', NULL, NULL),
(90219, 'A414', 1, 288, NULL, 262, NULL, NULL, '', NULL, 'T', 'T', 'F', 2, NULL, 2007, 'F', NULL, NULL),
(90219, 'A414', 2, 297, NULL, 330, NULL, NULL, '', NULL, 'T', 'T', 'F', 2, NULL, 2007, 'F', NULL, NULL),
(90115, 'A412', 1, 285, NULL, 233, NULL, NULL, '', NULL, 'T', 'T', 'F', 2, NULL, 2007, 'F', NULL, NULL),
(90215, 'A412', 1, 195, NULL, 77, NULL, NULL, '', NULL, 'T', 'T', 'F', 1, NULL, 2008, 'F', NULL, NULL),
(90203, 'A412', 1, 306, NULL, 311, NULL, NULL, '', NULL, 'T', 'T', 'F', 2, NULL, 2007, 'F', NULL, NULL),
(90119, 'A412', 1, 297, NULL, 284, NULL, NULL, '', NULL, 'T', 'T', 'F', 1, NULL, 2008, 'F', NULL, NULL),
(90171, 'A412', 1, 556, NULL, NULL, '22.5', NULL, 'F', 5, 'T', 'T', 'T', 7, 230, 2002, 'F', NULL, NULL),
(90171, 'A412', 2, 591, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 8, 193, 2001, 'F', NULL, NULL),
(90171, 'A412', 3, 432, NULL, NULL, NULL, NULL, '', NULL, 'T', 'T', 'F', 3, NULL, 2006, 'F', NULL, NULL),
(90171, 'A412', 4, 413, NULL, NULL, '4.3', NULL, 'F', 5, 'F', 'T', 'F', 2, 193, 2007, 'F', NULL, NULL),
(90172, 'A412', 1, 522, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 6, 190, 2003, 'F', NULL, NULL),
(90172, 'A412', 2, 519, NULL, NULL, '21.6', NULL, 'F', 5, 'F', 'T', 'T', 4, 201, 2005, 'F', NULL, NULL),
(90173, 'A412', 1, 477, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 6, 178, 2003, 'F', NULL, NULL),
(90173, 'A412', 2, 310, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 1, 188, 2008, 'F', NULL, NULL),
(90173, 'A412', 3, 571, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 7, 203, 2002, 'F', NULL, NULL),
(90173, 'A412', 4, 440, NULL, NULL, NULL, NULL, 'F', 5, 'T', 'T', 'T', 5, 189, 2004, 'F', NULL, NULL),
(100221, 'A412', 1, 354, NULL, 520, '7.6', '510.0', 'M', 12, 'T', 'T', 'T', 2, NULL, 2008, 'F', NULL, NULL),
(100222, 'A412', 1, 462, NULL, 1470, '52.2', '1230.0', 'F', 11, 'T', 'T', 'T', 3, 1112, 2007, 'F', 1, NULL),
(100222, 'A412', 2, 421, NULL, 1020, '34.5', '910.0', 'F', 10, 'T', 'T', 'T', 2, 965, 2008, 'F', 2, NULL),
(100222, 'A412', 3, 537, NULL, 2130, '116.2', '2000.0', 'F', 11, 'T', 'T', 'T', 6, 1151, 2004, 'F', 3, NULL),
(100222, 'A412', 4, 515, NULL, 1920, '77.2', '1720.0', 'F', 11, 'T', 'T', 'T', 6, 1146, 2004, 'F', 2, NULL),
(100222, 'A412', 5, 374, NULL, 620, '5.7', '610.0', 'M', 12, 'T', 'F', 'T', 5, NULL, 2005, 'F', NULL, NULL),
(100222, 'A412', 6, 603, NULL, 3180, '141.5', '2800.0', 'F', 10, 'T', 'T', 'T', 8, 1000, 2002, 'F', 3, NULL),
(100222, 'A412', 7, 629, NULL, 3470, '110.1', '3160.0', 'F', 4, 'T', 'T', 'T', 9, 949, 2001, 'F', NULL, NULL),
(100222, 'A412', 8, 575, NULL, 2750, '122.6', '2460.0', 'F', 10, 'T', 'T', 'T', 10, 1059, 2000, 'F', 3, NULL),
(100222, 'A412', 9, 462, NULL, 1280, '22.5', '1230.0', 'M', 12, 'T', 'T', 'T', 6, NULL, 2004, 'F', NULL, NULL),
(100222, 'A412', 10, 530, NULL, 2100, '104.5', '1980.0', 'F', 11, 'T', 'T', 'T', 6, 1100, 2004, 'F', NULL, NULL),
(100222, 'A412', 11, 458, NULL, 1200, '9.2', '1180.0', 'M', 12, 'T', 'F', 'T', 5, NULL, 2005, 'F', NULL, NULL),
(100222, 'A412', 12, 611, NULL, 3130, '167.6', '2850.0', 'F', 11, 'T', 'F', 'T', 6, 1165, 2004, 'F', NULL, NULL),
(100222, 'A412', 13, 562, NULL, 2470, '111.0', '2270.0', 'F', 10, 'T', 'T', 'T', 6, 1086, 2004, 'F', NULL, NULL),
(100222, 'A412', 14, 438, NULL, 1220, NULL, '1150.0', 'M', 12, 'T', 'T', 'T', 6, NULL, 2004, 'F', NULL, NULL),
(100222, 'A412', 15, 460, NULL, 1270, '21.4', '1190.0', 'M', 12, 'T', 'F', 'T', 6, NULL, 2004, 'F', NULL, NULL),
(100222, 'A412', 16, 387, NULL, 940, '35.2', '830.0', 'F', 10, 'T', 'T', 'T', NULL, 1182, NULL, 'F', NULL, NULL),
(100224, 'A412', 1, 595, NULL, 2700, '111.0', '2570.0', 'F', 4, 'T', 'T', 'T', 6, 1017, 2004, 'F', NULL, NULL),
(100224, 'A412', 2, 538, NULL, 2010, '113.1', '1830.0', 'F', 10, 'T', 'T', 'T', 6, 1046, 2004, 'F', NULL, NULL),
(100234, 'A412', 1, 416, NULL, 860, '11.5', '840.0', 'M', 12, 'T', 'T', 'T', 4, NULL, 2006, 'F', NULL, NULL),
(100237, 'A412', 1, 332, NULL, 388, '3.2', '383.9', 'M', 12, 'T', 'T', 'T', 2, NULL, 2008, 'F', NULL, NULL),
(100240, 'A414', 1, 206, NULL, 84, NULL, NULL, '', NULL, 'T', 'F', 'F', 1, NULL, 2009, 'F', NULL, NULL),
(100241, 'A414', 1, 265, NULL, 178, NULL, NULL, 'M', 12, 'T', 'T', 'T', 2, NULL, 2008, 'F', NULL, NULL),
(100241, 'A414', 2, 245, NULL, 159, NULL, NULL, 'F', 1, 'T', 'T', 'T', 1, 115, 2009, 'F', NULL, NULL),
(100242, 'A414', 1, 230, NULL, 127, NULL, NULL, 'F', NULL, 'T', 'T', 'T', 1, NULL, 2009, 'F', NULL, NULL),
(100243, 'A414', 1, 118, NULL, 14, NULL, NULL, '', NULL, 'T', 'T', 'F', 1, NULL, 2009, 'F', NULL, NULL),
(100243, 'A414', 2, 164, NULL, 39, NULL, NULL, '', NULL, 'T', 'T', 'F', 1, NULL, 2009, 'F', NULL, NULL),
(100243, 'A414', 3, 199, NULL, 71, NULL, NULL, 'M', NULL, 'T', 'T', 'F', 1, NULL, 2009, 'F', NULL, NULL),
(100244, 'A414', 1, 154, NULL, 33, NULL, NULL, 'F', NULL, 'F', 'F', 'T', 1, NULL, 2009, 'F', NULL, NULL),
(100244, 'A414', 2, 210, NULL, 97, NULL, NULL, 'F', NULL, 'F', 'F', 'T', 1, NULL, 2009, 'F', NULL, NULL),
(100247, 'A412', 1, 592, NULL, 3402, '200.0', '3193.0', 'F', 11, 'T', 'T', 'T', 6, 1234, 2004, 'F', 3, NULL),
(100248, 'A412', 1, 365, NULL, 653, '47.5', '589.0', 'F', 3, 'T', 'T', 'T', 2, 1686, 2008, 'F', 3, NULL),
(100249, 'A412', 1, 346, NULL, 498, '5.9', '488.8', 'M', 12, 'T', 'T', 'T', 3, NULL, 2007, 'F', NULL, NULL),
(100249, 'A412', 2, 338, NULL, 429, '5.6', '414.7', 'F', 4, 'T', 'T', 'T', 2, 1068, 2008, 'F', NULL, 2),
(100249, 'A412', 3, 313, NULL, 406, '21.4', '371.6', 'F', 10, 'T', 'T', 'T', 2, 1042, 2008, 'F', 2, NULL),
(100249, 'A412', 4, 395, NULL, 825, '75.6', '736.0', 'F', 10, 'T', 'T', 'T', 3, 1029, 2007, 'F', 1, NULL),
(100250, 'A412', 1, 383, NULL, 677, '9.9', '663.5', 'M', 12, 'T', 'T', 'T', 3, NULL, 2007, 'F', NULL, NULL),
(100254, 'A412', 1, 344, NULL, 461, '26.9', '418.8', 'F', 4, 'T', 'T', 'T', 2, 1201, 2008, 'F', NULL, 1),
(100255, 'A412', 1, 458, NULL, 1062, '46.1', '1014.0', 'F', 11, 'T', 'T', 'T', 4, 1161, 2006, 'F', 2, 1),
(100255, 'A412', 2, 455, NULL, 1090, '13.3', '1023.0', 'M', 12, 'T', 'T', 'T', 5, NULL, 2005, 'F', NULL, NULL),
(100256, 'A412', 1, 428, NULL, 897, '30.2', '857.7', 'F', 4, 'T', 'T', 'T', 3, 1066, 2007, 'F', NULL, 1),
(100269, 'A412', 1, 479, NULL, 1350, '26.5', '1305.0', 'F', 4, 'T', 'T', 'T', 6, 848, 2004, 'F', NULL, 3),
(100272, 'A412', 1, 464, NULL, 1116, '19.4', '1080.4', 'M', NULL, 'T', 'T', 'F', NULL, NULL, NULL, 'F', NULL, NULL),
(100272, 'A412', 2, 604, NULL, 2630, '71.7', '2514.4', 'F', 3, 'T', 'T', 'T', NULL, NULL, NULL, 'F', NULL, NULL),
(100272, 'A412', 3, 530, NULL, 1595, '27.3', '1561.9', 'M', NULL, 'T', 'T', 'F', NULL, NULL, NULL, 'F', NULL, NULL),
(100273, 'A412', 1, 444, NULL, 1085, '60.8', '1017.9', 'F', 3, 'T', 'T', 'T', NULL, NULL, NULL, 'F', NULL, NULL),
(100273, 'A412', 2, 512, NULL, 1728, '47.3', '1678.9', 'F', 3, 'T', 'T', 'T', NULL, NULL, NULL, 'F', NULL, NULL),
(100273, 'A412', 3, 445, NULL, 1027, '49.2', '974.4', 'F', 3, 'T', 'T', 'T', NULL, NULL, NULL, 'F', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `samplers`
--

CREATE TABLE `samplers` (
  `Sampler` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `samplers`
--

INSERT INTO `samplers` (`Sampler`) VALUES
('Ben Carol'),
('Cabell Young'),
('Charles Wilson'),
('Chuck Tucker'),
('Crustacean Management'),
('James Cockrill'),
('Jason Ward'),
('John Mclauren'),
('John Tayler'),
('Keith Parker'),
('Lee Elkins'),
('Lou Vayne'),
('Matt Perkinson'),
('Owen Hecht'),
('Rob Harding'),
('SCDNR'),
('Scott McClary'),
('SEAMAP'),
('Victor Dupuis'),
('Wayne Hill');

-- --------------------------------------------------------

--
-- Table structure for table `samplingdata`
--

CREATE TABLE `samplingdata` (
  `SampleID` mediumint(8) NOT NULL,
  `ProjectID` varchar(8) NOT NULL,
  `GearID` varchar(8) NOT NULL,
  `Date` date DEFAULT NULL,
  `LatDeg` tinyint(2) DEFAULT NULL,
  `LatMin` decimal(5,3) DEFAULT NULL COMMENT '5 Total chars with 3 decimal places',
  `LongDeg` tinyint(2) DEFAULT NULL,
  `LongMin` decimal(5,3) DEFAULT NULL COMMENT '5 total chars with 3 decimal places',
  `SampleDepth` tinyint(2) DEFAULT NULL COMMENT 'Sampling depth in meters',
  `BottomTemp` decimal(3,1) DEFAULT NULL COMMENT 'three total chars with one decimal point',
  `Sampler` varchar(45) NOT NULL,
  `Flounder` char(1) DEFAULT NULL COMMENT 'True or false; were flounder collected on this sample',
  `BottomType` varchar(45) DEFAULT NULL,
  `ReefName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `samplingdata`
--

INSERT INTO `samplingdata` (`SampleID`, `ProjectID`, `GearID`, `Date`, `LatDeg`, `LatMin`, `LongDeg`, `LongMin`, `SampleDepth`, `BottomTemp`, `Sampler`, `Flounder`, `BottomType`, `ReefName`) VALUES
(70020, 'T51', '065', '2007-03-07', 32, '33.354', 79, '40.299', 21, NULL, 'SCDNR', 'T', 'AR Metal Wreck', 'Charleston 60 240 Barge'),
(70021, 'T51', '065', '2007-03-07', 32, '33.100', 79, '40.100', 22, NULL, 'SCDNR', 'T', 'AR Metal', 'Charleston 60 APCs'),
(70022, 'T51', '065', '2007-03-07', 32, '38.800', 79, '42.700', 15, NULL, 'SCDNR', 'F', 'Sand and Gravel', 'Sand and Gravel'),
(70023, 'T51', '065', '2007-03-07', 32, '34.300', 79, '41.900', 15, NULL, 'SCDNR', 'F', 'Sand', 'Sand'),
(70024, 'T51', '065', '2007-05-31', 33, '8.600', 78, '50.600', 20, NULL, 'SCDNR', 'T', 'AR Metal', 'Upchurch APCs'),
(70025, 'T51', '065', '2007-05-30', 32, '33.100', 79, '40.000', 20, NULL, 'SCDNR', 'T', 'AR Metal', 'Charleston 60 APCs'),
(70026, 'T51', '065', '2007-06-29', 32, '33.100', 79, '40.200', 20, NULL, 'SCDNR', 'T', 'AR Metal', 'Charleston 60 APCs'),
(70027, 'T51', '065', '2007-07-27', 32, '32.400', 79, '33.500', 20, NULL, 'SCDNR', 'T', 'Live Bottom', 'Chamberlain\'s Gulch'),
(70028, 'T51', '065', '2007-08-28', 33, '41.957', 78, '26.639', 18, NULL, 'SCDNR', 'T', 'Artificial Reef', 'Little River Offshore Reef PA 2'),
(70029, 'T51', '065', '2007-10-04', 33, '48.812', 78, '30.514', 10, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(70030, 'T51', '065', '2007-10-05', 33, '48.812', 78, '30.514', 9, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(70031, 'T51', '065', '2007-10-10', 33, '50.200', 78, '22.100', 11, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'AR 460 & Shallotte\'s Ledge'),
(70032, 'T51', '065', '2007-10-08', 33, '48.812', 78, '30.514', 9, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(70033, 'T51', '065', '2007-10-11', 33, '48.812', 78, '30.514', 10, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(70034, 'T51', '065', '2007-10-13', 33, '41.957', 78, '26.639', 20, NULL, 'Scott McClary', 'T', 'Artificial Reef', 'Little River Reefs PA 1 & PA 2'),
(70035, 'T51', '065', '2007-09-28', 32, '33.147', 79, '40.249', 18, NULL, 'SCDNR', 'T', 'Artificial Reef', 'Charleston 60'),
(70036, 'T51', '065', '2007-10-14', 32, '30.950', 79, '40.078', 29, NULL, 'Owen Hecht', 'T', 'Live Bottom', 'Owen\'s Live Bottom'),
(70037, 'T51', '065', '2007-10-13', 32, '19.191', 79, '37.642', 28, NULL, 'James Cockrill', 'T', 'Live Bottom', 'James\' Live Bottom'),
(70038, 'T51', '065', '2007-10-20', 32, '33.354', 79, '40.299', 18, NULL, 'Owen Hecht', 'T', 'AR Metal Wreck', 'Charleston 60 240 Barge'),
(70039, 'T51', '065', '2007-11-17', 33, '31.071', 78, '58.140', 10, NULL, 'Cabell Young', 'T', 'Artificial Reef', 'Paradise Reef PA 9'),
(70040, 'T51', '065', '2007-10-14', 33, '50.200', 78, '22.100', 11, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'AR 460'),
(70041, 'T51', '065', '2007-10-13', 33, '48.812', 78, '30.514', 10, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(70042, 'T51', '065', '2007-10-12', 33, '48.812', 78, '30.514', 10, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(70048, 'T51', '065', '2007-12-11', 32, '56.800', 78, '54.600', 26, NULL, 'Keith Parker', 'T', 'Artificial Reef', 'Greenville Reef PA 18 Cones'),
(70070, 'T51', '065', '2007-04-13', 32, '41.270', 79, '9.280', 24, NULL, 'Rob Harding', 'F', 'AR Metal Wreck', 'Anchor Wreck'),
(70071, 'T51', '065', '2007-05-01', 32, '17.315', 79, '45.252', 26, NULL, 'Rob Harding', 'F', 'Unknown', 'Rob 2'),
(70072, 'T51', '065', '2007-05-02', 32, '20.103', 79, '43.103', 27, NULL, 'Rob Harding', 'F', 'Unknown', 'Rob 3'),
(70073, 'T51', '065', '2007-05-05', 32, '8.283', 79, '17.752', 58, NULL, 'Rob Harding', 'F', 'Unknown', 'Shelf 1'),
(70074, 'T51', '065', '2007-05-05', 32, '6.283', 79, '20.829', 58, NULL, 'Rob Harding', 'F', 'Unknown', 'Shelf 2'),
(70075, 'T51', '065', '2007-05-15', 32, '6.384', 79, '20.302', 55, NULL, 'Rob Harding', 'F', 'Unknown', 'Rob 4'),
(70076, 'T51', '065', '2007-05-19', 32, '3.410', 79, '24.540', 50, NULL, 'Rob Harding', 'F', 'Unknown', 'Edisto Banks'),
(70077, 'T51', '065', '2007-05-19', 32, '26.500', 79, '32.500', 21, NULL, 'Rob Harding', 'F', 'Unknown', 'Black Banks'),
(70078, 'T51', '065', '2007-06-23', 32, '38.140', 79, '7.200', 30, NULL, 'Rob Harding', 'F', 'AR Metal Wreck', 'Anchor Wreck'),
(70079, 'T51', '065', '2007-06-26', 32, '39.932', 78, '58.557', 30, NULL, 'Rob Harding', 'F', 'Unknown', 'Ledges 1'),
(70080, 'T51', '065', '2007-06-26', 32, '41.270', 79, '9.280', 24, NULL, 'Rob Harding', 'F', 'AR Metal Wreck', 'Anchor Wreck'),
(70081, 'T51', '065', '2007-07-29', 32, '35.300', 79, '9.300', 38, NULL, 'Rob Harding', 'F', 'Unknown', 'Red Banks'),
(70082, 'T51', '065', '2007-09-23', 32, '32.630', 78, '34.850', 58, NULL, 'Rob Harding', 'F', 'Unknown', 'Georgetown Hole'),
(70083, 'T51', '065', '2007-10-10', 32, '57.548', 78, '40.051', 37, NULL, 'Rob Harding', 'F', 'AR Metal Wreck', 'Vermillion Reef 460 Ship'),
(70084, 'T51', '065', '2007-10-17', 32, '27.395', 79, '19.073', 32, NULL, 'Rob Harding', 'F', 'AR Metal Wreck', 'Commanche Reef'),
(80001, 'T51', '065', '2008-01-08', 32, '33.354', 79, '40.299', 20, '13.8', 'SCDNR', 'T', 'AR Metal Wreck', 'Charleston 60 240 Barge'),
(80002, 'T51', '065', '2008-01-08', 32, '33.354', 79, '40.299', 20, '13.8', 'SCDNR', 'F', 'AR Metal Wreck', 'Charleston 60 240 Barge'),
(80003, 'T51', '065', '2008-01-08', 32, '33.138', 79, '40.095', 20, '13.8', 'SCDNR', 'T', 'AR Metal', 'Charleston 60 APCs'),
(80004, 'T51', '065', '2008-01-08', 32, '33.138', 79, '40.095', 20, '13.8', 'SCDNR', 'T', 'AR Metal', 'Charleston 60 APCs'),
(80005, 'T51', '065', '2008-01-06', 32, '21.500', 79, '41.000', 21, NULL, 'Rob Harding', 'T', 'Unknown', 'Rob1'),
(80006, 'T51', '065', '2008-01-06', 32, '33.354', 79, '40.299', 20, NULL, 'Charles Wilson', 'T', 'AR Metal Wreck', 'Charleston 60 240 Barge'),
(80007, 'T51', '065', '2008-01-23', 33, '21.260', 78, '25.479', 28, '13.8', 'Scott McClary', 'T', 'Artificial Reef', 'BP 25 Reef PA 6'),
(80008, 'T51', '014', '2008-01-05', 33, '32.510', 77, '56.890', 29, NULL, 'John Mclauren', 'T', 'AR Metal Wreck', 'Raritan Wreck 251 freighter'),
(80009, 'T51', '065', '2008-01-13', 32, '33.354', 79, '40.299', 20, NULL, 'Charles Wilson', 'F', 'AR Metal Wreck', 'Charleston 60 240 Barge'),
(80010, 'T51', '065', '2008-01-13', 32, '33.354', 79, '40.299', 20, NULL, 'Charles Wilson', 'F', 'AR Metal Wreck', 'Charleston 60 240 Barge'),
(80011, 'T51', '065', '2008-01-29', 32, '28.142', 79, '35.409', 21, NULL, 'Charles Wilson', 'F', 'Unknown', '18 miles S of Chas jetties'),
(80012, 'T51', '065', '2008-01-29', 32, '28.142', 79, '35.409', 21, NULL, 'Charles Wilson', 'F', 'Unknown', '18 miles S of Chas jetties'),
(80013, 'T51', '065', '2008-01-22', 32, '22.137', 79, '35.217', 27, NULL, 'Charles Wilson', 'F', 'Live Bottom', 'Trolling Alley'),
(80014, 'T51', '065', '2008-02-03', 32, '21.027', 79, '34.696', 30, NULL, 'Charles Wilson', 'F', 'Live Bottom', 'CLB 1'),
(80015, 'T51', '065', '2008-02-03', 32, '28.141', 79, '35.412', 30, NULL, 'Charles Wilson', 'F', 'Live Bottom', 'CLB 2'),
(80016, 'T51', '065', '2008-02-11', 32, '21.984', 79, '49.001', 27, NULL, 'Charles Wilson', 'F', 'Live Bottom', 'CLB 3'),
(80017, 'T51', '065', '2008-02-11', 32, '14.676', 79, '38.964', 31, NULL, 'Charles Wilson', 'F', 'Live Bottom', 'CLB 4'),
(80018, 'T51', '065', '2008-02-11', 32, '11.603', 79, '43.892', 29, NULL, 'Charles Wilson', 'F', 'Live Bottom', 'CLB 5'),
(80019, 'T51', '065', '2008-02-20', 32, '32.592', 79, '7.197', 37, NULL, 'Charles Wilson', 'F', 'Unknown', 'CW 1'),
(80020, 'T51', '065', '2008-02-20', 32, '34.682', 79, '18.134', 30, NULL, 'Charles Wilson', 'F', 'Unknown', 'CW 2'),
(80021, 'T51', '065', '2008-02-25', 32, '30.882', 79, '8.152', 40, NULL, 'Charles Wilson', 'F', 'Unknown', 'CW 3'),
(80022, 'T51', '065', '2008-02-25', 32, '33.524', 79, '18.253', 30, NULL, 'Charles Wilson', 'F', 'Unknown', 'CW 4'),
(80023, 'T51', '065', '2008-02-25', 32, '33.424', 79, '21.558', 30, NULL, 'Charles Wilson', 'F', 'Unknown', 'CW 5'),
(80024, 'T51', '065', '2008-03-21', 32, '32.099', 79, '9.888', 40, NULL, 'Charles Wilson', 'F', 'Unknown', 'CW 6'),
(80025, 'T51', '065', '2008-03-21', 32, '27.395', 79, '19.073', 32, NULL, 'Charles Wilson', 'F', 'AR Metal Wreck', 'Commanche Reef'),
(80026, 'T51', '065', '2008-03-21', 32, '33.147', 79, '40.249', 18, NULL, 'Charles Wilson', 'F', 'Artificial Reef', 'Charleston 60'),
(80027, 'T51', '065', '2008-03-12', 32, '57.830', 78, '42.210', 27, NULL, 'Rob Harding', 'F', 'Live Bottom', 'Vermillion/Ledge'),
(80028, 'T51', '065', '2008-02-29', 32, '21.542', 80, '5.284', 20, '12.2', 'SCDNR', 'F', 'AR Metal Mud and Shell', 'Edisto 60 330 Page'),
(80029, 'T51', '065', '2008-02-29', 32, '21.542', 80, '5.284', 20, '12.2', 'SCDNR', 'T', 'AR Metal Wreck Mud and Shell', 'Edisto 60 330 Page'),
(80030, 'T51', '065', '2008-02-29', 32, '21.421', 80, '5.308', 20, '12.2', 'SCDNR', 'T', 'AR Metal Wreck Shell and Sand', 'Edisto 60 YDT 16'),
(80031, 'T51', '065', '2008-02-29', 32, '21.421', 80, '5.308', 20, '12.2', 'SCDNR', 'T', 'AR Metal Wreck Shell and Sand', 'Edisto 60 YDT 16'),
(80032, 'T51', '065', '2008-03-11', 32, '32.589', 79, '19.244', 30, '16.1', 'SCDNR', 'F', 'AR Metal Wreck', 'Y-73'),
(80033, 'T51', '065', '2008-03-11', 32, '32.589', 79, '19.244', 30, '16.1', 'SCDNR', 'F', 'AR Metal Wreck', 'Y-73'),
(80034, 'T51', '065', '2008-03-11', 32, '32.164', 79, '21.304', 24, '17.8', 'SCDNR', 'F', 'Live Bottom', 'The Gardens Mel\'s Ledge'),
(80035, 'T51', '065', '2008-03-11', 32, '32.298', 79, '21.319', 26, '17.8', 'SCDNR', 'F', 'Live Bottom', 'The Gardens Mel\'s Ledge'),
(80036, 'T51', '065', '2008-03-12', 32, '44.405', 79, '34.507', 13, '13.3', 'SCDNR', 'F', 'AR Metal Wreck Sand', 'Capers Reef 110 Deck Barge'),
(80037, 'T51', '065', '2008-03-12', 32, '44.965', 79, '34.484', 12, '13.3', 'SCDNR', 'F', 'AR Metal Wreck Sand', 'Capers Reef 150 Deck Barge'),
(80038, 'T51', '065', '2008-03-12', 32, '36.020', 79, '40.121', 16, '13.3', 'SCDNR', 'F', 'AR Metal Wreck', 'Freddy Day'),
(80039, 'T51', '065', '2008-03-12', 32, '33.354', 79, '40.299', 18, '12.2', 'SCDNR', 'T', 'AR Metal Wreck', 'Charleston 60 240 Barge'),
(80040, 'T51', '065', '2008-06-01', 33, '31.071', 78, '58.140', 11, NULL, 'Cabell Young', 'T', 'Artificial Reef', 'Paradise Reef PA 9'),
(80041, 'T51', '065', '2008-05-25', 33, '31.071', 78, '58.140', 11, NULL, 'Cabell Young', 'T', 'Artificial Reef', 'Paradise Reef PA 9'),
(80042, 'T51', '065', '2008-06-12', 33, '31.071', 78, '58.140', 11, NULL, 'Cabell Young', 'T', 'Artificial Reef', 'Paradise Reef PA 9'),
(80043, 'T51', '065', '2008-06-03', 32, '33.147', 79, '40.249', 20, NULL, 'SCDNR', 'T', 'Artificial Reef', 'Charleston 60'),
(80044, 'T51', '065', '2008-05-26', 33, '19.641', 78, '21.727', 27, NULL, 'John Mclauren', 'T', 'Live Bottom', 'Atlantic Ledge'),
(80045, 'T51', '065', '2008-05-25', 33, '48.812', 78, '30.514', 9, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(80046, 'T51', '065', '2008-05-23', 33, '48.812', 78, '30.514', 9, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(80047, 'T51', '065', '2008-05-30', 33, '48.812', 78, '30.514', 9, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(80048, 'T51', '065', '2008-06-03', 33, '19.641', 78, '21.727', 27, NULL, 'John Mclauren', 'F', 'Live Bottom', 'Atlantic Ledge'),
(80049, 'T51', '065', '2008-05-14', 32, '35.000', 78, '35.000', 40, NULL, 'Rob Harding', 'F', 'AR Metal Wreck', 'Wreck 130'),
(80050, 'T51', '065', '2008-05-14', 32, '45.000', 78, '45.000', 33, NULL, 'Rob Harding', 'F', 'Live Bottom', 'Ledges 2'),
(80051, 'T51', '065', '2008-05-17', 32, '54.558', 78, '38.973', 37, NULL, 'Rob Harding', 'F', 'Live Bottom', 'Ledges 3'),
(80052, 'T51', '065', '2008-05-17', 32, '57.408', 78, '39.509', 37, NULL, 'Rob Harding', 'F', 'AR Metal', 'Vermillion Reef Subway Cars'),
(80053, 'T51', '065', '2008-05-17', 32, '57.548', 78, '40.051', 37, NULL, 'Rob Harding', 'F', 'AR Metal Wreck', 'Vermillion Reef'),
(80054, 'T51', '065', '2008-06-08', 32, '46.472', 78, '30.684', 41, NULL, 'Rob Harding', 'F', 'Live Bottom', 'Ledges 4'),
(80055, 'T51', '065', '2008-06-08', 32, '49.334', 78, '36.517', 30, NULL, 'Rob Harding', 'F', 'Live Bottom', 'Ledges 5'),
(80056, 'T51', '065', '2008-06-20', 32, '32.985', 79, '40.385', 18, NULL, 'Charles Wilson', 'T', 'AR Metal Concrete', 'Charleston 60 Bridge Rubble'),
(80057, 'T51', '065', '2008-06-14', 32, '45.000', 79, '45.000', 5, NULL, 'Rob Harding', 'T', 'AR Metal Wreck', '1.5 miles off beach wreck'),
(80058, 'T51', '065', '2008-06-12', 32, '21.411', 80, '5.155', 18, NULL, 'SCDNR', 'T', 'Artificial Reef', 'Edisto 60 PA 30'),
(80059, 'T51', '065', '2008-07-29', 32, '32.985', 79, '40.385', 18, NULL, 'SCDNR', 'T', 'AR Metal Concrete', 'Charleston 60 Bridge Rubble'),
(80060, 'T51', '065', '2008-06-14', 33, '48.812', 78, '30.514', 10, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(80061, 'T51', '065', '2008-07-06', 33, '31.071', 78, '58.140', 10, NULL, 'Cabell Young', 'T', 'Artificial Reef', 'Paradise Reef PA 9'),
(80062, 'T51', '065', '2008-07-13', 33, '31.071', 78, '58.140', 10, NULL, 'Cabell Young', 'T', 'Artificial Reef', 'Paradise Reef PA 9'),
(80063, 'T51', '065', '2008-04-30', 32, '21.470', 79, '35.035', 26, NULL, 'Charles Wilson', 'F', 'Live Bottom', 'Near Black Banks'),
(80064, 'T51', '065', '2008-05-21', 32, '27.395', 79, '19.073', 32, NULL, 'Charles Wilson', 'F', 'AR Metal Wreck', 'Commanche Reef'),
(80065, 'T51', '065', '2008-05-21', 32, '35.530', 79, '20.650', 24, NULL, 'Charles Wilson', 'F', 'Live Bottom', 'Near The Garden'),
(80066, 'T51', '065', '2008-06-03', 32, '22.580', 79, '34.870', 26, NULL, 'Charles Wilson', 'F', 'Unknown', 'The Alley (189)'),
(80067, 'T51', '065', '2008-06-12', 32, '20.380', 79, '38.393', 24, NULL, 'Charles Wilson', 'F', 'Unknown', 'Near The Alley'),
(80068, 'T51', '065', '2008-06-15', 32, '20.283', 79, '39.063', 26, NULL, 'Charles Wilson', 'F', 'Unknown', 'CW 7'),
(80069, 'T51', '065', '2008-06-20', 32, '33.354', 79, '40.299', 18, NULL, 'Charles Wilson', 'F', 'AR Metal Wreck', 'Charleston 60 240 Barge'),
(80070, 'T51', '065', '2008-07-02', 32, '32.966', 79, '40.374', 18, NULL, 'Charles Wilson', 'F', 'AR Metal Concrete', 'Charleston 60 Bridge Rubble'),
(80071, 'T51', '065', '2008-07-10', 32, '31.483', 79, '45.349', 15, NULL, 'Charles Wilson', 'F', 'Unknown', 'CW 8'),
(80072, 'T51', '065', '2008-09-13', 32, '13.502', 79, '41.455', 29, NULL, 'Charles Wilson', 'F', 'Unknown', 'CW 9'),
(80073, 'T51', '065', '2008-09-13', 32, '22.398', 79, '50.843', 20, NULL, 'Charles Wilson', 'F', 'Unknown', 'CW 10'),
(80074, 'T51', '065', '2008-09-13', 32, '20.907', 79, '35.460', 30, NULL, 'Owen Hecht', 'F', 'Unknown', 'The Alley'),
(80075, 'T51', '065', '2008-12-18', 32, '33.117', 79, '40.403', 18, NULL, 'Chuck Tucker', 'F', 'Sand', 'Near Charleston 60 Steel Pyramids'),
(80076, 'T51', '065', '2008-12-18', 32, '33.152', 79, '40.095', 18, '17.0', 'SCDNR', 'F', 'AR Metal Sand', 'Charleston 60 APCs'),
(80077, 'T51', '065', '2008-12-18', 32, '33.152', 79, '40.095', 18, '17.0', 'Chuck Tucker', 'T', 'AR Metal', 'Charleston 60 APCs'),
(80078, 'T51', '065', '2008-12-18', 32, '33.152', 79, '40.095', 16, '15.0', 'Chuck Tucker', 'F', 'AR Metal Sand', 'Charleston 60 APCs'),
(80079, 'T51', '065', '2008-12-18', 32, '36.020', 79, '40.121', 16, NULL, 'Chuck Tucker', 'F', 'AR Metal Wreck', 'Freddy Day'),
(80080, 'T51', '065', '2008-09-29', 32, '20.380', 79, '38.390', 29, NULL, 'Charles Wilson', 'F', 'Unknown', 'Loran Number 60551.7 45351.4'),
(80081, 'T51', '065', '2008-11-21', 33, '21.260', 78, '25.479', 29, NULL, 'Scott McClary', 'T', 'Artificial Reef', 'BP 25 Reef PA 6'),
(80082, 'T51', '065', '2008-08-01', 33, '48.812', 78, '30.514', 9, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(80083, 'T51', '065', '2008-10-06', 33, '48.812', 78, '30.514', 9, NULL, 'John Mclauren', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(80084, 'T51', '065', '2008-09-13', 32, '16.618', 79, '44.307', 30, '26.0', 'SCDNR', 'T', 'Live Bottom', 'SCDNR LB1'),
(80085, 'T51', '065', '2008-10-04', 33, '48.812', 78, '30.514', 9, NULL, 'Scott McClary', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(80086, 'T51', '065', '2008-10-05', 33, '48.812', 78, '30.514', 9, NULL, 'Scott McClary', 'T', 'Artificial Reef', 'Little River Reef PA 1'),
(80087, 'T51', '065', '2008-10-23', 33, '41.957', 78, '26.639', 18, '20.0', 'Scott McClary', 'T', 'Artificial Reef', 'Little River Offshore Reef PA 2'),
(80088, 'T51', '065', '2008-10-16', 33, '20.000', 78, '10.000', 30, NULL, 'John Mclauren', 'T', 'Reef', '32 Mile'),
(80089, 'T51', '065', '2008-11-02', 33, '41.957', 78, '26.639', 18, '20.0', 'Scott McClary', 'T', 'Artificial Reef', 'Little River Offshore Reef PA 2'),
(80090, 'T51', '065', '2008-11-25', 33, '41.957', 78, '26.639', 18, NULL, 'Scott McClary', 'T', 'Artificial Reef', 'Little River Offshore Reef PA 2'),
(80091, 'T51', '065', '2008-10-25', 33, '41.957', 78, '26.639', 18, '20.0', 'Scott McClary', 'T', 'Artificial Reef', 'Little River Offshore Reef PA 2'),
(80092, 'T51', '065', '2008-11-22', 33, '41.957', 78, '26.639', 18, NULL, 'Scott McClary', 'T', 'Artificial Reef', 'Little River Offshore Reef PA 2'),
(80093, 'T51', '014', '2008-12-29', 33, '19.641', 78, '21.727', 27, NULL, 'Wayne Hill', 'T', 'Live Bottom', 'Atlantic Ledge'),
(80094, 'T51', '065', '2008-07-13', 32, '3.410', 79, '24.540', 45, NULL, 'Rob Harding', 'F', 'Unknown', 'Edisto Banks'),
(80095, 'T51', '065', '2008-09-29', 32, '26.000', 79, '32.500', 26, NULL, 'Rob Harding', 'F', 'Unknown', 'Black Banks'),
(80096, 'T51', '065', '2008-10-04', 32, '26.000', 79, '32.500', 26, NULL, 'Rob Harding', 'F', 'Unknown', 'Black Banks'),
(80097, 'T51', '065', '2008-10-16', 32, '24.000', 79, '21.000', 27, NULL, 'Rob Harding', 'F', 'Live Bottom', 'The Gardens'),
(80098, 'T51', '065', '2008-10-17', 32, '24.000', 79, '21.000', 27, NULL, 'Rob Harding', 'F', 'Unknown', 'Black Banks'),
(80099, 'T51', '065', '2008-10-16', 32, '21.828', 79, '37.661', 24, NULL, 'Charles Wilson', 'F', 'Unknown', 'low relief'),
(80100, 'T51', '065', '2008-10-16', 32, '20.922', 79, '35.707', 26, NULL, 'Charles Wilson', 'F', 'Live Bottom', 'old dead live bottom'),
(80101, 'T51', '065', '2008-11-23', 32, '27.318', 79, '35.112', 24, NULL, 'Charles Wilson', 'F', 'Live Bottom', 'Ledge 1'),
(80102, 'T51', '065', '2008-11-26', 32, '33.138', 79, '40.095', 18, NULL, 'Charles Wilson', 'F', 'AR Metal', 'Charleston 60 APCs'),
(80103, 'T51', '065', '2008-11-26', 32, '32.864', 79, '21.763', 27, NULL, 'Charles Wilson', 'F', 'Reef', 'Limestone Ledge'),
(80104, 'T51', '065', '2008-03-13', 32, '27.916', 79, '36.128', 27, NULL, 'Charles Wilson', 'F', 'Unknown', 'CW 11'),
(90001, 'T51', '065', '2009-02-01', 32, '57.548', 78, '40.051', 30, NULL, 'Rob Harding', 'T', 'Live Bottom', 'Ledges near Vermillion Reef'),
(90002, 'T51', '065', '2009-01-27', 33, '21.260', 78, '25.479', 28, NULL, 'Scott McClary', 'T', 'Artificial Reef', 'BP 25 Reef PA 6'),
(90003, 'T51', '065', '2009-03-19', 32, '33.193', 79, '40.125', 20, '15.0', 'SCDNR', 'T', 'AR Concrete Sand', 'Charleston 60 Concrete Cones'),
(90004, 'T51', '065', '2009-03-19', 32, '28.000', 79, '40.000', 21, '17.0', 'SCDNR', 'F', 'Live Bottom', 'Lead Weight Ledges'),
(90005, 'T51', '065', '2009-03-31', 32, '21.423', 80, '5.256', 21, '16.0', 'SCDNR', 'T', 'AR Metal Wreck', 'Edisto 60 YDT 16'),
(90006, 'T51', '065', '2009-03-31', 32, '21.423', 80, '5.256', 20, '16.0', 'SCDNR', 'T', 'AR Metal Wreck', 'Edisto 60 YDT 16'),
(90007, 'T51', '065', '2009-04-05', 32, '32.459', 79, '18.993', 29, '19.0', 'SCDNR', 'F', 'AR Metal Wreck', 'Y-73'),
(90008, 'T51', '065', '2009-04-05', 32, '36.981', 79, '11.993', 33, '19.0', 'Chuck Tucker', 'T', 'Live Bottom', 'Zach\'s Anchor'),
(90029, 'T51', '', '2009-04-17', 33, '4.960', 79, '15.050', 6, NULL, 'SEAMAP', 'T', 'Unknown', 'Station 49M4'),
(90115, 'T51', '', '2009-04-27', 34, '2.220', 77, '52.680', 8, NULL, 'SEAMAP', 'T', 'Unknown', 'Station 59M1'),
(90119, 'T51', '', '2009-04-27', 34, '11.400', 77, '47.780', 8, NULL, 'SEAMAP', 'T', 'Unknown', 'Station 59M4'),
(90127, 'T51', '', '2009-04-28', 34, '29.800', 77, '23.740', 8, NULL, 'SEAMAP', 'T', 'Unknown', 'Station 61M5'),
(90131, 'T51', '', '2009-04-28', 34, '39.120', 77, '3.020', 6, NULL, 'SEAMAP', 'T', 'Unknown', 'Station 63M3'),
(90135, 'T51', '', '2009-04-28', 34, '41.270', 76, '48.540', 8, NULL, 'SEAMAP', 'T', 'Unknown', 'Station 63M5'),
(90171, 'T51', '065', '2009-07-17', 32, '32.990', 79, '40.390', NULL, NULL, 'Charles Wilson', 'T', 'AR Metal Concrete', 'Charleston 60 Bridge Rubble'),
(90172, 'T51', '065', '2009-05-31', 33, '31.070', 78, '58.140', NULL, NULL, 'Cabell Young', 'T', 'Artificial Reef', 'Paradise Reef PA 9'),
(90173, 'T51', '065', '2009-06-24', 32, '3.427', 80, '24.851', NULL, NULL, 'SCDNR', 'T', 'AR Metal Wreck', 'Betsy Ross'),
(90203, 'T51', '', '2009-05-06', 31, '37.300', 81, '3.660', 6, NULL, 'SEAMAP', 'T', 'Unknown', 'Station 37M9'),
(90215, 'T51', '', '2009-05-06', 31, '58.230', 80, '45.240', 10, NULL, 'SEAMAP', 'T', 'Unknown', 'Station 39M1'),
(90219, 'T51', '', '2009-05-02', 33, '28.000', 79, '0.020', 9, NULL, 'SEAMAP', 'T', 'Unknown', 'Station 51M3'),
(100220, 'T51', '065', '2010-01-07', 32, '33.350', 79, '40.300', 17, '8.3', 'SCDNR', 'F', 'AR Metal Wreck', 'Charleston 60 240 Barge'),
(100221, 'T51', '065', '2010-01-07', 32, '33.140', 79, '40.100', 18, '10.6', 'SCDNR', 'T', 'AR Metal', 'Charleston 60 APCs'),
(100222, 'T51', '065', '2010-01-07', 32, '32.966', 79, '40.374', 18, '10.6', 'SCDNR', 'T', 'AR Metal Concrete', 'Charleston 60 Bridge Rubble'),
(100223, 'T51', '065', '2010-01-07', 32, '32.950', 79, '40.316', 18, '10.6', 'SCDNR', 'F', 'AR Metal Concrete', 'Charleston 60 Bridge Rubble'),
(100224, 'T51', '065', '2010-01-14', 32, '14.601', 79, '50.748', 24, '10.6', 'SCDNR', 'T', 'AR Metal Sand', 'Edisto Offshore Shipping Containers'),
(100225, 'T51', '065', '2010-01-20', 32, '22.096', 79, '35.675', 31, '15.6', 'SCDNR', 'F', 'Live Bottom and Sand', 'Texas Reef'),
(100226, 'T51', '065', '2010-01-20', 32, '20.888', 79, '35.502', 30, '14.4', 'SCDNR', 'F', 'Live Bottom and Sand', 'Hog Hill'),
(100227, 'T51', '065', '2010-01-20', 32, '20.888', 79, '35.502', 30, '15.0', 'SCDNR', 'F', 'Live Bottom and Sand', 'Hog Hill'),
(100228, 'T51', '065', '2010-01-20', 32, '19.172', 79, '37.619', 31, '12.2', 'SCDNR', 'F', 'Sand and Gravel', 'Flounder Local Fishermen Numbers'),
(100229, 'T51', '065', '2010-01-14', 32, '14.725', 79, '50.775', 24, '11.7', 'SCDNR', 'F', 'AR Metal Concrete Very Little Sand', 'Edisto Offshore Bridge Rubble'),
(100230, 'T51', '065', '2010-01-14', 32, '14.275', 79, '50.775', 25, '11.7', 'SCDNR', 'F', 'AR Metal Concrete', 'Edisto Offshore Bridge Rubble'),
(100231, 'T51', '065', '2010-01-14', 32, '14.371', 79, '50.861', 23, '11.7', 'SCDNR', 'F', 'AR Metal Concrete', 'Edisto Offshore Bridge Rubble'),
(100232, 'T51', '065', '2010-01-27', 32, '32.334', 79, '21.369', 26, '13.9', 'SCDNR', 'F', 'Live Bottom', 'SCDNR LB2'),
(100233, 'T51', '065', '2010-01-27', 32, '33.154', 79, '21.612', 26, '13.3', 'SCDNR', 'F', 'Live Bottom', 'SCDNR LB3'),
(100234, 'T51', '065', '2010-01-27', 32, '33.813', 79, '27.175', 21, '11.7', 'SCDNR', 'T', 'AR Concrete', 'Area 51'),
(100235, 'T51', '065', '2010-01-27', 32, '35.084', 79, '27.109', 20, '12.8', 'SCDNR', 'F', 'AR Concrete', 'Area 51'),
(100236, 'T51', '065', '2010-01-28', 32, '31.945', 79, '33.118', 23, '15.0', 'SCDNR', 'F', 'Live Bottom', 'Chamberlain\'s Gulch 1'),
(100237, 'T51', '065', '2010-01-28', 32, '32.056', 79, '33.000', 21, '15.0', 'SCDNR', 'T', 'Live Bottom', 'Chamberlain\'s Gulch 2'),
(100238, 'T51', '065', '2010-01-28', 32, '32.966', 79, '40.374', 17, '12.8', 'SCDNR', 'F', 'AR Metal Concrete', 'Charleston 60 Bridge Rubble'),
(100239, 'T51', '065', '2010-01-28', 32, '32.950', 79, '40.316', 17, '12.8', 'SCDNR', 'F', 'AR Metal Concrete', 'Charleston 60 Bridge Rubble'),
(100240, 'T51', 'TRL', '2010-02-09', 32, '18.700', 80, '38.800', 8, NULL, 'Crustacean Management', 'T', 'Unknown', 'Inshore Trawl'),
(100241, 'T51', 'TRL', '2010-02-08', 32, '30.600', 80, '32.170', 8, NULL, 'Crustacean Management', 'T', 'Unknown', 'Inshore Trawl'),
(100242, 'T51', 'TRL', '2010-02-09', 32, '10.570', 80, '43.740', 9, NULL, 'Crustacean Management', 'T', 'Unknown', 'Inshore Trawl'),
(100243, 'T51', 'TRL', '2010-02-10', 32, '33.500', 80, '24.500', 5, NULL, 'Crustacean Management', 'T', 'Unknown', 'Inshore Trawl'),
(100244, 'T51', 'TRL', '2010-02-10', 32, '31.080', 80, '24.500', 7, NULL, 'Crustacean Management', 'T', 'Unknown', 'Inshore Trawl'),
(100245, 'T51', '065', '2010-02-19', 32, '21.419', 80, '5.310', 21, '11.1', 'SCDNR', 'F', 'AR Metal Wreck', 'Edisto 60 YDT 16'),
(100246, 'T51', '065', '2010-02-19', 32, '23.337', 80, '4.076', 15, '11.1', 'SCDNR', 'F', 'AR Metal Concrete Sand', 'Fish Finder Blip Bridge Rubble'),
(100247, 'T51', '014', '2010-02-20', 32, '32.990', 79, '40.390', 18, NULL, 'Matt Perkinson', 'T', 'AR Metal Concrete Sand', 'Charleston 60 Bridge Rubble'),
(100248, 'T51', '065', '2010-03-09', 32, '56.819', 78, '54.617', 27, '14.4', 'SCDNR', 'T', 'AR Metal', 'Submarine Kennels'),
(100249, 'T51', '065', '2010-03-09', 32, '56.819', 78, '54.617', 28, '14.4', 'SCDNR', 'T', 'AR Metal', 'Submarine Kennels'),
(100250, 'T51', '065', '2010-03-09', 32, '56.797', 78, '54.777', 27, '14.4', 'SCDNR', 'T', 'AR Metal', 'Greenville Reef Drydock & Joann'),
(100251, 'T51', '065', '2010-03-09', 32, '54.059', 79, '5.277', 22, '12.2', 'SCDNR', 'F', 'Sand', 'Haphazard Location on Sand'),
(100252, 'T51', '065', '2010-03-10', 32, '21.361', 80, '5.097', 19, '11.1', 'SCDNR', 'F', 'AR Metal', 'Edisto 60 Shipping Containers'),
(100253, 'T51', '065', '2010-03-10', 32, '21.433', 80, '5.241', 20, '10.6', 'SCDNR', 'F', 'AR Metal Wreck', 'Edisto 60 YDT 16'),
(100254, 'T51', '065', '2010-03-10', 32, '21.557', 80, '5.267', 20, '10.6', 'SCDNR', 'T', 'AR Metal Wreck', 'Edisto 60 330 Page'),
(100255, 'T51', '065', '2010-03-24', 32, '31.945', 79, '33.118', 23, '13.9', 'SCDNR', 'T', 'Live Bottom', 'Chamberlain\'s Gulch 1'),
(100256, 'T51', '065', '2010-03-24', 32, '31.960', 79, '33.171', 23, '13.9', 'SCDNR', 'T', 'Live Bottom', 'Chamberlain\'s Gulch 3'),
(100257, 'T51', '065', '2010-03-24', 32, '31.942', 79, '33.373', 23, '13.9', 'SCDNR', 'F', 'Sand', 'Near Chamberlain\'s Gulch 2'),
(100258, 'T51', '065', '2010-03-24', 32, '33.138', 79, '40.095', 19, '12.8', 'SCDNR', 'F', 'AR Metal', 'Charleston 60 APCs'),
(100259, 'T51', '065', '2010-04-01', 32, '27.111', 79, '19.284', 34, '16.7', 'SCDNR', 'F', 'AR Metal', 'Commanche Reef Subway Cars'),
(100260, 'T51', '065', '2010-04-01', 32, '32.980', 79, '30.216', 21, '16.1', 'SCDNR', 'F', 'Sand', 'Near Chamberlain\'s Gulch 3'),
(100261, 'T51', '065', '2010-04-01', 32, '33.895', 79, '28.587', 20, '15.6', 'SCDNR', 'F', 'AR Concrete', 'Area 51'),
(100262, 'T51', '065', '2010-04-02', 32, '36.979', 79, '11.930', 34, '16.7', 'SCDNR', 'F', 'Live Bottom and Sand', 'Zach\'s Anchor'),
(100263, 'T51', '065', '2010-04-02', 32, '37.016', 79, '12.314', 32, '16.1', 'SCDNR', 'F', 'Sand', 'Fish Finder Blip'),
(100264, 'T51', '065', '2010-04-22', 32, '31.950', 79, '33.120', 22, '18.3', 'SCDNR', 'F', 'Live Bottom', 'Chamberlain\'s Gulch 1'),
(100265, 'T51', '065', '2010-04-22', 32, '32.400', 79, '33.500', 22, '18.3', 'SCDNR', 'F', 'Sand', 'Near Chamberlain\'s Gulch'),
(100266, 'T51', '065', '2010-04-22', 32, '33.020', 79, '40.390', 18, '18.9', 'SCDNR', 'F', 'AR Metal Concrete Sand', 'Near Charleston 60 Bridge Rubble'),
(100267, 'T51', '065', '2010-04-22', 32, '32.990', 79, '40.390', 19, '16.7', 'SCDNR', 'F', 'AR Metal Concrete', 'Charleston 60 Bridge Rubble'),
(100268, 'T51', '065', '2010-04-24', 32, '34.010', 79, '41.219', 18, '18.9', 'Chuck Tucker', 'F', 'Live Bottom', 'Victor\'s Live Bottom'),
(100269, 'T51', '065', '2010-04-24', 32, '33.150', 79, '40.100', 18, '18.9', 'Chuck Tucker', 'T', 'AR Metal', 'Charleston 60 APCs'),
(100270, 'T51', '065', '2010-04-24', 32, '32.990', 79, '40.390', 18, '18.9', 'Victor Dupuis', 'F', 'AR Metal Concrete', 'Charleston 60 Bridge Rubble'),
(100271, 'T51', '065', '2010-11-23', 32, '32.460', 79, '18.990', 32, '21.1', 'SCDNR', 'F', 'AR Metal Wreck', 'Y-73'),
(100272, 'T51', '065', '2010-11-23', 32, '33.350', 79, '40.300', 19, '18.9', 'SCDNR', 'T', 'AR Metal Wreck', 'Charleston 60 240 Barge'),
(100273, 'T51', '065', '2010-11-23', 32, '33.140', 79, '40.100', 18, '19.4', 'SCDNR', 'T', 'AR Metal', 'Charleston 60 APCs'),
(110001, 'T51', '065', '2011-03-17', 32, '21.560', 80, '5.270', 17, '13.9', 'SCDNR', 'F', 'AR Metal Wreck', 'Edisto 60 330 Page'),
(110002, 'T51', '065', '2011-03-17', 32, '21.330', 80, '5.350', 17, '13.9', 'SCDNR', 'F', 'AR Metal Concrete', 'Edisto 60 Bridge Section'),
(110003, 'T51', '065', '2011-03-17', 32, '21.360', 80, '5.100', 18, '14.4', 'SCDNR', 'F', 'AR Metal', 'Edisto 60 Shipping Containers'),
(110004, 'T51', '065', '2011-03-17', 32, '24.120', 80, '3.350', 15, '13.3', 'SCDNR', 'F', 'Live Bottom', 'Edisto Live Bottom');

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `SpCode` char(4) NOT NULL,
  `CommonName` varchar(45) DEFAULT NULL,
  `ScientificName` varchar(45) DEFAULT NULL,
  `FamilyName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`SpCode`, `CommonName`, `ScientificName`, `FamilyName`) VALUES
('A412', 'Gulf Flounder', 'Paralichthys albigutta', 'Paralichthyidae'),
('A413', 'Summer Flounder', 'Paralichthys dentatus', 'Paralichthyidae'),
('A414', 'Southern Flounder', 'Paralichthys lethostigma', 'Paralichthyidae'),
('A475', 'Flounder', 'Bothidae', 'Bothidae');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(60) DEFAULT NULL,
  `lastName` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `emailAddress`, `password`, `firstName`, `lastName`) VALUES
(2, 'test@flounderdb.com', '$2y$10$95SY7bbzaG7LIfTdhAK7l.vC00LY8wvdTe2NwxEYx6hp1eASrOoqK', 'Test', 'Name');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bottomtypes`
--
ALTER TABLE `bottomtypes`
  ADD PRIMARY KEY (`BottomType`),
  ADD UNIQUE KEY `Sampler_UNIQUE` (`BottomType`);

--
-- Indexes for table `flounders`
--
ALTER TABLE `flounders`
  ADD KEY `fk_Flounders_SamplingData1_idx` (`SampleID`),
  ADD KEY `fk_Flounders_Species1_idx` (`SpCode`);

--
-- Indexes for table `samplers`
--
ALTER TABLE `samplers`
  ADD PRIMARY KEY (`Sampler`),
  ADD UNIQUE KEY `Sampler_UNIQUE` (`Sampler`);

--
-- Indexes for table `samplingdata`
--
ALTER TABLE `samplingdata`
  ADD PRIMARY KEY (`SampleID`),
  ADD UNIQUE KEY `SampleID_UNIQUE` (`SampleID`),
  ADD KEY `fk_SamplingData_Samplers1_idx` (`Sampler`),
  ADD KEY `BottomType` (`BottomType`);

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`SpCode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flounders`
--
ALTER TABLE `flounders`
  ADD CONSTRAINT `Sample_ID` FOREIGN KEY (`SampleID`) REFERENCES `samplingdata` (`SampleID`),
  ADD CONSTRAINT `fk_Flounders_Species` FOREIGN KEY (`SpCode`) REFERENCES `species` (`SpCode`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `samplingdata`
--
ALTER TABLE `samplingdata`
  ADD CONSTRAINT `BottomType` FOREIGN KEY (`BottomType`) REFERENCES `bottomtypes` (`BottomType`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Sampler` FOREIGN KEY (`Sampler`) REFERENCES `samplers` (`Sampler`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
