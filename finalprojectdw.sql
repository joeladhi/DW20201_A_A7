-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 01:39 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalprojectdw`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `AreaID` bigint(20) NOT NULL,
  `NamaRegion` varchar(100) NOT NULL,
  `LokasiArea` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`AreaID`, `NamaRegion`, `LokasiArea`) VALUES
(1, 'East', 'Bedok'),
(2, 'East', 'Tampines'),
(3, 'East', 'Pasir Ris'),
(4, 'West', 'Jurong West'),
(5, 'West', 'Bukit Batok '),
(6, 'West', 'Bukit Panjang'),
(7, 'West', 'Sembawang'),
(8, 'West', 'Choa Chu Kang'),
(9, 'North', 'Woodlands'),
(10, 'North', 'Yishun'),
(11, 'Central', 'Bukit Merah'),
(12, 'Central', 'Tao Payoh'),
(13, 'Central', 'Geylang'),
(14, 'Central', 'Kallang'),
(15, 'Central', 'Queenstown'),
(16, 'North-East', 'Sengkang'),
(17, 'North-East', 'Hougang'),
(18, 'North-East', 'Punggol'),
(19, 'North-East', 'Ang Mo Kio'),
(20, 'North-East', 'Serangoon');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientKey` bigint(20) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  `InsuranceID` int(11) DEFAULT NULL,
  `PCP` int(11) DEFAULT NULL,
  `Gender` char(2) DEFAULT NULL,
  `NumberUmur` int(5) DEFAULT NULL,
  `KategoriUmur` varchar(20) DEFAULT NULL,
  `PekerjaanID` bigint(20) DEFAULT NULL,
  `RegionID` bigint(20) DEFAULT NULL,
  `NamaRegion` varchar(100) DEFAULT NULL,
  `AreaID` bigint(20) DEFAULT NULL,
  `isLuarNegri` varchar(10) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientKey`, `Name`, `Address`, `Phone`, `InsuranceID`, `PCP`, `Gender`, `NumberUmur`, `KategoriUmur`, `PekerjaanID`, `RegionID`, `NamaRegion`, `AreaID`, `isLuarNegri`, `version`, `date_from`, `date_to`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 'John Smith', '42 Foobar Lane', '555-0256', 68476213, 1, 'M', 35, 'adult', 1, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(3, 'Grace Ritchie', '37 Snafu Drive', '555-0512', 36546321, 2, 'F', 38, 'adult', 2, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(4, 'Random J. Patient', '101 Omgbbq Street', '555-1204', 65465421, 2, 'F', 40, 'adult', 3, NULL, 'Central', 11, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(5, 'Dennis Doe', '1100 Foobaz Avenue', '555-2048', 68421879, 3, 'M', 25, 'adult', 4, NULL, 'North', 10, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(6, 'Damian Hays', '156-2656 Ornare Av.', '136-7328', 68421880, 31, 'M', 26, 'adult', 4, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(7, 'Karly Jackson', '975-5765 Ac Avenue', '010-2391', 68421881, 19, 'F', 45, 'adult', 5, NULL, 'North', 9, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(8, 'Kato Luna', '643-4443 Cursus. Rd.', '860-3924', 68421882, 16, 'F', 55, 'adult', 2, NULL, 'East', 2, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(9, 'Xandra Skinner', '492-149 Viverra. Street', '760-0449', 68421883, 29, 'F', 56, 'adult', 2, NULL, 'Central', 12, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(10, 'Anthony Moses', '819-6082 A Street', '320-2649', 68421884, 4, 'M', 21, 'adult', 3, NULL, 'West', 6, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(11, 'Daryl Decker', 'Ap #914-7548 Cursus St.', '203-3315', 68421885, 23, 'M', 22, 'adult', 6, NULL, 'West', 6, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(12, 'Zelda Macias', '9418 Ac Rd.', '226-1378', 68421886, 24, 'F', 28, 'adult', 7, NULL, 'West', 8, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(13, 'Guy Cash', '996-3237 Aliquet. St.', '448-3875', 68421887, 25, 'M', 28, 'adult', 2, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(14, 'Dolan Hamilton', '2930 Molestie St.', '136-0958', 68421888, 18, 'F', 26, 'adult', 2, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(15, 'Thane Byers', 'P.O. Box 615, 7599 Semper St.', '860-2025', 68421889, 17, 'M', 64, 'elderly', 4, NULL, 'East', 2, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(16, 'Boris Howard', '906-8071 Orci St.', '252-1109', 68421890, 5, 'M', 54, 'adult', 4, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(17, 'Elizabeth Chan', '9900 Eget Road', '076-7364', 68421891, 30, 'F', 44, 'adult', 8, NULL, 'East', 1, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(18, 'Jelani Snow', '960-2567 Urna. Rd.', '491-8057', 68421892, 29, 'F', 24, 'adult', 6, NULL, 'Central', 14, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(19, 'Scott Levy', 'Ap #449-3704 Fringilla Road', '565-4449', 68421893, 7, 'M', 34, 'adult', 2, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(20, 'Maris Tillman', 'Ap #347-131 Sit Ave', '948-4057', 68421894, 21, 'F', 33, 'adult', 1, NULL, 'Central', 14, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(21, 'Mara Walton', '5709 Justo Rd.', '222-5502', 68421895, 35, 'F', 35, 'adult', 7, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(22, 'Jackson Beck', '6255 Massa. Avenue', '020-3493', 68421896, 22, 'M', 60, 'elderly', 8, NULL, 'North-East', 19, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(23, 'Darius Cooper', 'Ap #960-4409 Mauris Rd.', '868-4161', 68421897, 26, 'F', 29, 'adult', 7, NULL, 'West', 5, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(24, 'Dillon Hess', '2301 Amet Rd.', '055-4215', 68421898, 33, 'M', 32, 'adult', 4, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(25, 'Daniel Chambers', '618 Ultrices Av.', '906-1257', 68421899, 14, 'M', 65, 'elderly', 8, NULL, 'Central', 14, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(26, 'Stephanie Mueller', 'Ap #573-2893 Massa. Street', '758-8606', 68421900, 8, 'F', 26, 'adult', 7, NULL, 'North-East', 19, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(27, 'Garrett Massey', 'Ap #980-4115 At, Ave', '085-5007', 68421901, 24, 'F', 36, 'adult', 1, NULL, 'Central', 11, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(28, 'Gay Olson', 'Ap #439-9506 Laoreet, Street', '415-9560', 68421902, 33, 'F', 32, 'adult', 4, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(29, 'Xaviera Noble', '731-8219 Aliquet St.', '392-0206', 68421903, 15, 'F', 45, 'adult', 4, NULL, 'North-East', 18, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(30, 'Montana Weaver', 'Ap #710-5526 A, St.', '815-8804', 68421904, 7, 'F', 35, 'adult', 1, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(31, 'Clarke Pennington', '2821 Ridiculus Street', '177-5796', 68421905, 35, 'F', 55, 'adult', 4, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(32, 'Roanna Gentry', 'P.O. Box 266, 1853 Scelerisque', '689-0008', 68421906, 27, 'F', 27, 'adult', 7, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(33, 'Lev Schneider', '4116 Magna. St.', '551-6013', 68421907, 31, 'F', 40, 'adult', 1, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(34, 'Troy Underwood', '3330 Nibh. St.', '857-4502', 68421908, 31, 'F', 42, 'adult', 7, NULL, 'East', 3, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(35, 'Zelda Sherman', 'P.O. Box 429, 7338 Nam Ave', '082-7403', 68421909, 26, 'F', 27, 'adult', 6, NULL, 'North-East', 20, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(36, 'Jesse Kerr', '677-1698 Justo Ave', '520-6690', 68421910, 5, 'F', 41, 'adult', 1, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(37, 'Tashya Martin', '297-6150 Velit. Rd.', '992-7095', 68421911, 29, 'F', 63, 'elderly', 8, NULL, 'North', 10, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(38, 'Dominic Moran', '561-2490 Ac Ave', '120-5936', 68421912, 11, 'M', 44, 'adult', 7, NULL, 'North', 9, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(39, 'Colorado Massey', '8601 Erat St.', '940-3349', 68421913, 19, 'F', 25, 'adult', 9, NULL, 'Central', 11, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(40, 'Jamal Dickson', '883-1729 Semper. Ave', '517-0124', 68421914, 14, 'M', 30, 'adult', 7, NULL, 'North', 10, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(41, 'Lynn Juarez', '3393 Dolor Rd.', '744-5123', 68421915, 28, 'F', 31, 'adult', 7, NULL, NULL, NULL, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(42, 'Austin Lindsey', 'P.O. Box 745, 3393 Pulvinar Av', '898-5019', 68421916, 17, 'M', 24, 'adult', 9, NULL, 'North', 9, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(43, 'Vivien Melendez', '638-7555 Morbi Av.', '993-5490', 68421917, 16, 'F', 32, 'adult', 7, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(44, 'Merritt Howell', 'Ap #424-1895 Dui Ave', '458-3638', 68421918, 24, 'F', 25, 'adult', 9, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(45, 'Tatum Livingston', 'P.O. Box 215, 9497 Justo Ave', '361-6793', 68421919, 18, 'F', 22, 'adult', 9, NULL, 'West', 6, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(46, 'Tashya Mendez', 'Ap #773-7842 Tempor Avenue', '143-4973', 68421920, 10, 'F', 23, 'adult', 9, NULL, 'West', 6, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(47, 'Naomi Conway', '991-9863 Integer St.', '959-5430', 68421921, 14, 'F', 33, 'adult', 7, NULL, 'West', 8, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(48, 'Clark Giles', '951-4646 Dictum. Av.', '596-7761', 68421922, 4, 'F', 29, 'adult', 6, NULL, 'North-East', 17, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(49, 'Jocelyn Rollins', 'P.O. Box 642, 5967 Dui St.', '649-5796', 68421923, 7, 'F', 42, 'adult', 1, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(50, 'Carl Prince', '4884 Ultrices Rd.', '360-8619', 68421924, 33, 'F', 45, 'adult', 7, NULL, 'East', 2, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(51, 'Keane Mckinney', 'Ap #720-4584 Enim Rd.', '115-4196', 68421925, 22, 'F', 45, 'adult', 1, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(52, 'Adrienne Foley', '959-6534 Posuere Av.', '918-2745', 68421926, 11, 'F', 50, 'adult', 7, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(53, 'Noelle Mcclure', 'P.O. Box 107, 7420 Nunc Ave', '454-6452', 68421927, 16, 'F', 21, 'adult', 7, NULL, 'Central', 14, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(54, 'Montana Kaufman', 'Ap #848-3035 Quam Rd.', '045-9140', 68421928, 28, 'F', 26, 'adult', 6, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(55, 'Hamish Farley', '895-9905 Nec Ave', '425-9480', 68421929, 28, 'F', 45, 'adult', 8, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(56, 'Mikayla Hebert', '3515 Ullamcorper, St.', '593-8052', 68421930, 1, 'F', 22, 'adult', 7, NULL, 'East', 1, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(57, 'Winter Peck', 'Ap #997-8390 Nullam St.', '525-5040', 68421931, 22, 'F', 23, 'adult', 6, NULL, 'North-East', 19, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(58, 'Sopoline Clayton', '933-6221 Lectus, Av.', '389-7295', 68421932, 25, 'F', 28, 'adult', 7, NULL, 'West', 5, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(59, 'Amir Madden', '727-5043 Proin Av.', '761-0978', 68421933, 7, 'M', 23, 'adult', 6, NULL, 'North-East', 18, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(60, 'Glenna Contreras', '464-2592 Sodales St.', '183-8958', 68421934, 29, 'F', 54, 'adult', 4, NULL, 'Central', 14, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(61, 'Nasim Carroll', '1955 Mauris. Road', '822-6176', 68421935, 5, 'M', 58, 'adult', 4, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(62, 'Mariko Kirkland', 'P.O. Box 835, 836 Quisque Av.', '065-1857', 68421936, 16, 'F', 60, 'elderly', 4, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(63, 'Timon Holmes', 'P.O. Box 889, 3566 Eget St.', '520-8106', 68421937, 22, 'M', 55, 'adult', 8, NULL, 'West', 7, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(64, 'Palmer Quinn', '354-8004 Mauris Street', '578-9933', 68421938, 32, 'M', 26, 'adult', 6, NULL, 'North-East', 18, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(65, 'Alma Wiggins', 'P.O. Box 585, 2796 Eu Ave', '015-0460', 68421939, 23, 'F', 36, 'adult', 10, NULL, 'Central', 13, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(66, 'Quincy Smith', '910-7007 Gravida Av.', '055-1805', 68421940, 5, 'M', 38, 'adult', 2, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(67, 'Azalia Alston', 'P.O. Box 747, 2039 Tempor, St.', '317-0137', 68421941, 32, 'F', 39, 'adult', 10, NULL, 'Central', 15, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(68, 'Lareina Ratliff', 'P.O. Box 314, 5242 Sem Road', '007-2548', 68421942, 20, 'F', 40, 'adult', 10, NULL, 'Central', 15, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(69, 'Adena Whitaker', '7486 Consectetuer Road', '874-5171', 68421943, 21, 'F', 71, 'elderly', 4, NULL, 'East', 3, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(70, 'Autumn Mcfadden', '765-4770 Mauris Avenue', '237-5096', 68421944, 2, 'F', 24, 'adult', 9, NULL, 'North-East', 20, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(71, 'Otto Walker', 'P.O. Box 615, 9901 Proin St.', '843-1006', 68421945, 32, 'M', 26, 'adult', 6, NULL, 'Central', 13, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(72, 'Illana Duke', '349-2412 Sed, Rd.', '373-1072', 68421946, 13, 'F', 28, 'adult', 6, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(73, 'Anne Larsen', '447-7398 Sem, St.', '796-5920', 68421947, 23, 'F', 61, 'elderly', 4, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(74, 'Burke Bradshaw', '5717 Nam St.', '357-1988', 68421948, 24, 'M', 37, 'adult', 2, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(75, 'Cameron Clay', '1667 Urna. Avenue', '463-3346', 68421949, 21, 'F', 29, 'adult', 6, NULL, 'Central', 11, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(76, 'Myles Lott', 'Ap #299-3208 Taciti Ave', '782-5751', 68421950, 21, 'F', 25, 'adult', 3, NULL, 'North', 10, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(77, 'Duncan Huber', '389 Libero. Road', '935-1029', 68421951, 35, 'M', 66, 'elderly', 4, NULL, NULL, NULL, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(78, 'Dylan Brown', '746-9985 Lacus. Street', '538-5767', 68421952, 20, 'F', 29, 'adult', 6, NULL, 'North', 9, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(79, 'Amal Velasquez', '513-2360 Quis Rd.', '407-6084', 68421953, 23, 'F', 26, 'adult', 3, NULL, 'East', 2, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(80, 'Kyla Ray', 'Ap #368-6233 Tellus St.', '942-6027', 68421954, 26, 'F', 37, 'adult', 2, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(81, 'Gay Beard', 'P.O. Box 804, 2864 Natoque Rd.', '308-6101', 68421955, 25, 'M', 25, 'adult', 3, NULL, 'North-East', 20, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(82, 'Xerxes Browning', '736-1523 Et Rd.', '786-5441', 68421956, 10, 'M', 21, 'adult', 3, NULL, 'Central', 13, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(83, 'Asher Stanley', 'P.O. Box 694, 6194 Fringilla A', '695-9415', 68421957, 31, 'F', 29, 'adult', 7, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(84, 'Neve Harrison', '673-5937 Id Avenue', '548-0900', 68421958, 30, 'M', 25, 'adult', 9, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(85, 'Craig Tran', '978-3036 Semper Rd.', '728-7989', 68421959, 24, 'M', 23, 'adult', 3, NULL, 'Central', 11, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(86, 'Reuben Burgess', '938 Enim Rd.', '952-1926', 68421960, 22, 'M', 30, 'adult', 7, NULL, 'East', 2, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(87, 'Brianna Abbott', 'P.O. Box 225, 3145 Suscipit St', '252-6313', 68421961, 2, 'F', 35, 'adult', 5, NULL, 'North-East', 17, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(88, 'Clio Stanton', '7714 Et Rd.', '622-6400', 68421962, 4, 'M', 30, 'adult', 6, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(89, 'George Morales', '952-6477 Habitant St.', '175-9048', 68421963, 25, 'M', 35, 'adult', 6, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(90, 'Meghan Stafford', 'Ap #856-1275 Nunc, Rd.', '676-7976', 68421964, 20, 'F', 35, 'adult', 6, NULL, 'East', 1, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(91, 'Preston Clemons', '578-2058 Non, Avenue', '019-7007', 68421965, 34, 'M', 34, 'adult', 6, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(92, 'Porter Fowler', '4397 Sit St.', '816-0910', 68421966, 30, 'F', 39, 'adult', 2, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(93, 'Judith Newton', 'P.O. Box 877, 1385 Fermentum R', '280-5749', 68421967, 25, 'F', 34, 'adult', 6, NULL, 'North-East', 19, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(94, 'Linda Hogan', 'P.O. Box 172, 6371 Dui St.', '853-7325', 68421968, 12, 'F', 31, 'adult', 7, NULL, 'West', 5, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(95, 'Jane Adams', 'Ap #658-2243 Magna Av.', '611-2089', 68421969, 26, 'F', 36, 'adult', 6, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(96, 'Jane Daniels', 'Ap #702-9417 Amet, Rd.', '822-2670', 68421970, 6, 'F', 45, 'adult', 9, NULL, 'Central', 14, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(97, 'Gisela Middleton', '975-5195 Accumsan Road', '221-0312', 68421971, 28, 'F', 30, 'adult', 7, NULL, 'North-East', 19, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(98, 'Leilani Cortez', '4868 Elit Rd.', '918-2847', 68421972, 24, 'F', 40, 'adult', 2, NULL, 'Central', 11, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(99, 'Indira Hickman', 'P.O. Box 973, 5876 Elit Ave', '856-1389', 68421973, 9, 'F', 24, 'adult', 9, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(100, 'Hedley Gutierrez', '532-2364 Sit Avenue', '517-0875', 68421974, 14, 'M', 48, 'adult', 2, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(101, 'Jacob Flores', '5765 Imperdiet Rd.', '050-1252', 68421975, 28, 'M', 44, 'adult', 2, NULL, 'Central', 13, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(102, 'Troy Joseph', 'Ap #987-3561 Amet Street', '542-7519', 68421976, 29, 'M', 25, 'adult', 5, NULL, 'Central', 11, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(103, 'Murphy Watts', '725-6461 Ridiculus Av.', '723-3569', 68421977, 3, 'M', 29, 'adult', 7, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(104, 'Clinton Foreman', '6318 Arcu. Rd.', '267-8604', 68421978, 33, 'M', 38, 'adult', 6, NULL, NULL, NULL, 'Y', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(105, 'Jillian Wood', 'P.O. Box 922, 1851 Non Avenue', '007-2188', 68421979, 21, 'F', 45, 'adult', 2, NULL, 'East', 3, 'N', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaanpatient`
--

CREATE TABLE `pekerjaanpatient` (
  `PekerjaanID` bigint(20) NOT NULL,
  `NamaPekerjaan` varchar(100) NOT NULL,
  `NamaKategoriPekerjaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerjaanpatient`
--

INSERT INTO `pekerjaanpatient` (`PekerjaanID`, `NamaPekerjaan`, `NamaKategoriPekerjaan`) VALUES
(1, 'Managers', 'GROUP1'),
(2, 'Professionals', 'GROUP2'),
(3, 'Craft and related trades workers', 'GROUP7'),
(4, 'Technicians', 'GROUP3'),
(5, 'Armed forces occupations', 'GROUP10'),
(6, 'Service and sales workers', 'GROUP5'),
(7, 'Clerical support workers', 'GROUP4'),
(8, 'Skilled agricultural, forestry and fishery workers', 'GROUP6'),
(9, 'Elementary occupations', 'GROUP9'),
(10, 'Plant and machine operators and assemblers', 'GROUP8');

-- --------------------------------------------------------

--
-- Table structure for table `physician`
--

CREATE TABLE `physician` (
  `PhysicianKey` bigint(20) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `SSN` int(15) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `StatusID` bigint(20) DEFAULT NULL,
  `AreaID` bigint(20) DEFAULT NULL,
  `RegionID` bigint(20) DEFAULT NULL,
  `NamaRegion` varchar(100) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physician`
--

INSERT INTO `physician` (`PhysicianKey`, `Name`, `Position`, `SSN`, `Status`, `StatusID`, `AreaID`, `RegionID`, `NamaRegion`, `version`, `date_from`, `date_to`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 'John Dorian', 'Staff Internist', 111111111, 'Training', NULL, 11, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(3, 'Elliot Reid', 'Attending Physician', 222222222, 'Senior', NULL, 10, NULL, 'North', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(4, 'Christopher Turk', 'Surgical Attending Physician', 333333333, 'Senior', NULL, 12, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(5, 'Percival Cox', 'Senior Attending Physician', 444444444, 'Senior', NULL, 9, NULL, 'North', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(6, 'Bob Kelso', 'Head Chief of Medicine', 555555555, 'Senior', NULL, 2, NULL, 'East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(7, 'Todd Quinlan', 'Surgical Attending Physician', 666666666, 'Senior', NULL, 12, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(8, 'John Wen', 'Surgical Attending Physician', 777777777, 'Senior', NULL, 6, NULL, 'West', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(9, 'Keith Dudemeister', 'MD Resident', 888888888, 'Training', NULL, 6, NULL, 'West', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(10, 'Molly Clock', 'Attending Psychiatrist', 999999999, 'Senior', NULL, 8, NULL, 'West', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(11, 'Victor Miller', 'Junior Urologist', 999999998, 'Training', NULL, 17, NULL, 'North-East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(12, 'Kate Martin', 'Senior Pathologist', 999999998, 'Senior', NULL, 11, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(13, 'Victoria Roberts', 'Senior Physical Therapist', 999999996, 'Senior', NULL, 2, NULL, 'East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(14, 'Rafael Cunningham', 'Head of ICU', 999999995, 'Senior', NULL, 17, NULL, 'North-East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(15, 'Sarah Bailey', 'Surgical Attending Physician', 999999994, 'Training', NULL, 1, NULL, 'East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(16, 'Brianna Myers', 'Senior Neurologist', 999999993, 'Senior', NULL, 14, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(17, 'Adelaide Clark', 'Head of Mother and Child', 999999992, 'Senior', NULL, 1, NULL, 'East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(18, 'John Evans', 'Attending Psychiatrist', 777777771, 'Training', NULL, 14, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(19, 'Wilson Harris', 'Senior Cardiologist', 777777772, 'Senior', NULL, 1, NULL, 'East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(20, 'Alfred Mitchell', 'Attending Psychiatrist', 777777773, 'Training', NULL, 19, NULL, 'North-East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(21, 'Robert Walker', 'Staff Internist', 777777774, 'Senior', NULL, 5, NULL, 'West', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(22, 'Stuart Hill', 'Surgical Attending Physician', 777777775, 'Senior', NULL, 18, NULL, 'North-East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(23, 'Frederick Walker', 'Senior Urologist', 777777776, 'Senior', NULL, 14, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(24, 'Jenny Clark', 'Senior Radiologist', 777777778, 'Senior', NULL, 19, NULL, 'North-East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(25, 'Tony Robinson', 'Senior Dermatologist', 777777779, 'Senior', NULL, 11, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(26, 'Ryan Tucker', 'MD Resident', 222222221, 'Training', NULL, 7, NULL, 'West', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(27, 'Aldus Robinson', 'Senior Attending Physician', 222222223, 'Senior', NULL, 18, NULL, 'North-East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(28, 'Jack Baker', 'MD Resident', 222222224, 'Training', NULL, 13, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(29, 'Sawyer Douglas', 'Senior Attending Physician', 222222225, 'Senior', NULL, 11, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(30, 'James Perkins', 'Surgical Attending Physician', 222222226, 'Senior', NULL, 15, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(31, 'Carla May', 'Junior Radiologist', 222222287, 'Training', NULL, 15, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(32, 'Sally Doe', 'Junior Radiologist', 222222244, 'Training', NULL, 3, NULL, 'East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(33, 'Dominik Johnsonn', 'Staff Intensive Care Unit Staff', 222222276, 'Senior', NULL, 20, NULL, 'North-East', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(34, 'Pablo del Sol', 'Junior Intensive Care Unit Staff', 222222244, 'Training', NULL, 13, NULL, 'Central', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(35, 'Diana Peterson', 'Senior Pathologist', 222222204, 'Senior', NULL, 10, NULL, 'North', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(36, 'Raj Dewata', 'Junior Neurologist', 222222209, 'Training', NULL, 9, NULL, 'North', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`AreaID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientKey`);

--
-- Indexes for table `pekerjaanpatient`
--
ALTER TABLE `pekerjaanpatient`
  ADD PRIMARY KEY (`PekerjaanID`);

--
-- Indexes for table `physician`
--
ALTER TABLE `physician`
  ADD PRIMARY KEY (`PhysicianKey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `AreaID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PatientKey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `pekerjaanpatient`
--
ALTER TABLE `pekerjaanpatient`
  MODIFY `PekerjaanID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `physician`
--
ALTER TABLE `physician`
  MODIFY `PhysicianKey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
