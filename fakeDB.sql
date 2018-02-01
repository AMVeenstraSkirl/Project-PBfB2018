-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 23, 2018 at 02:20 PM
-- Server version: 5.5.58-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `example_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `lactis`
--

CREATE TABLE IF NOT EXISTS `lactis` (
  `device` varchar(15) NOT NULL DEFAULT '',
  `rack` char(2) NOT NULL DEFAULT '',
  `box` char(2) NOT NULL DEFAULT '',
  `position` char(3) NOT NULL DEFAULT '',
  `plasmid` varchar(35) NOT NULL DEFAULT '',
  `strain` text NOT NULL,
  `backupdev` varchar(35) NOT NULL DEFAULT '',
  `recordID` int(11) NOT NULL AUTO_INCREMENT,
  `species` text NOT NULL,
  `abm` varchar(20) NOT NULL DEFAULT '',
  `genotype` text NOT NULL,
  `info` text NOT NULL,
  `owner` varchar(28) NOT NULL DEFAULT '',
  `ref_plasmid` text NOT NULL,
  `ref_strain` text NOT NULL,
  `location` varchar(6) NOT NULL DEFAULT '',
  `status` varchar(8) NOT NULL DEFAULT '',
  `gbfile` text NOT NULL,
  `datum` varchar(10) NOT NULL DEFAULT '',
  `pldb` char(1) NOT NULL DEFAULT '',
  `strdb` char(1) NOT NULL DEFAULT '',
  `strgenotype` text NOT NULL,
  `spfile` text NOT NULL,
  `link` varchar(50) NOT NULL DEFAULT '',
  `permit_s` varchar(20) NOT NULL DEFAULT '',
  `permit_p` varchar(20) NOT NULL DEFAULT '',
  `donor` text NOT NULL,
  `cmfile` text NOT NULL,
  `jpgfile` text NOT NULL,
  `parentplasmid` text NOT NULL,
  PRIMARY KEY (`device`,`rack`,`box`,`position`),
  UNIQUE KEY `recordID` (`recordID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62921 ;

--
-- Dumping data for table `lactis`
--

INSERT INTO `prostraincollection` (`device`, `rack`, `box`, `position`, `plasmid`, `strain`, `backupdev`, `recordID`, `species`, `abm`, `genotype`, `info`, `owner`, `ref_plasmid`, `ref_strain`, `location`, `status`, `gbfile`, `datum`, `pldb`, `strdb`, `strgenotype`, `spfile`, `link`, `permit_s`, `permit_p`, `donor`, `cmfile`, `jpgfile`, `parentplasmid`) VALUES
('freezer_Q', '13', 'P', '01', '', 'MG1363', 'none', 61588, 'L. lactis', '', '', 'my colony', 'Anita Skirl', '', '', '13P01', 'workbox', '', '01-05-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '02', 'plasmid 1', 'MG1364', 'none', 61588, 'L. lactis', '', '', 'does something awesome', 'Anita Skirl', '', '', '13P02', 'workbox', '', '01-05-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '03', 'plasmid 2', 'MG1365', 'none', 61588, 'L. lactis', '', '', 'does something different', 'Anita Skirl', '', '', '13P03', 'workbox', '', '05-05-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '04', 'plasmid 3', 'MG1366', 'none', 61588, 'L. lactis', '', '', 'this is useful', 'Anita Skirl', '', '', '13P04', 'workbox', '', '08-05-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '05', 'plasmid 4', 'MG1363', 'none', 61588, 'L. lactis', '', '', 'this too', 'Anita Skirl', '', '', '13P05', 'workbox', '', '13-05-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '06', 'plasmid 5', 'MG1363', 'none', 61588, 'L. lactis', '', '', 'science advances through this', 'Anita Skirl', '', '', '13P06', 'workbox', '', '21-05-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '07', '', 'MG1363', 'none', 61588, 'E. coli', '', '', 'help for cloning', 'Anita Skirl', '', '', '13P07', 'workbox', '', '01-06-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '08', 'plasmid 1', 'MG1364', 'none', 61588, 'E. coli', '', '', 'more help', 'Anita Skirl', '', '', '13P08', 'workbox', '', '01-06-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '09', 'plasmid 2', 'MG1365', 'none', 61588, 'E. coli', '', '', 'without this i cannot clone', 'Anita Skirl', '', '', '13P09', 'workbox', '', '03-06-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '10', 'plasmid 3', 'MG1366', 'none', 61588, 'E. coli', '', '', 'this has finally worked', 'Anita Skirl', '', '', '13P10', 'workbox', '', '03-06-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '11', 'plasmid 4', 'MG1363', 'none', 61588, 'E. coli', '', '', 'this is a test strain', 'Anita Skirl', '', '', '13P11', 'workbox', '', '07-06-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '12', 'plasmid 5', 'MG1363', 'none', 61588, 'E. coli', '', '', 'test something more', 'Anita Skirl', '', '', '13P12', 'workbox', '', '17-06-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '13', '', 'MG1363', 'none', 61588, 'B. subtilis', '', '', 'sometimes we switch species', 'Anita Skirl', '', '', '13P13', 'workbox', '', '01-09-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '14', 'plasmid 1', 'MG1364', 'none', 61588, 'B. subtilis', '', '', 'this is another test', 'Anita Skirl', '', '', '13P14', 'workbox', '', '01-09-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '15', 'plasmid 2', 'MG1365', 'none', 61588, 'B. subtilis', '', '', 'some details on this strain', 'Anita Skirl', '', '', '13P15', 'workbox', '', '01-09-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '16', 'plasmid 3', 'MG1366', 'none', 61588, 'B. subtilis', '', '', 'more details', 'Anita Skirl', '', '', '13P16', 'workbox', '', '01-09-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '17', 'plasmid 4', 'MG1363', 'none', 61588, 'B. subtilis', '', '', 'less details', 'Anita Skirl', '', '', '13P17', 'workbox', '', '01-09-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '18', 'plasmid 5', 'MG1363', 'none', 61588, 'B. subtilis', '', '', 'no details', 'Anita Skirl', '', '', '13P18', 'workbox', '', '01-09-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '01', '', 'MG1363', 'none', 61588, 'L. lactis', '', '', '', 'Marianne Veenstra', '', '', '20C01', 'workbox', '', '01-05-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '02', 'plasmid 1', 'MG1364', 'none', 61588, 'L. lactis', '', '', '', 'Marianne Veenstra', '', '', '20C02', 'workbox', '', '01-05-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '03', 'plasmid 2', 'MG1365', 'none', 61588, 'L. lactis', '', '', '', 'Marianne Veenstra', '', '', '20C03', 'workbox', '', '05-05-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '04', 'plasmid 3', 'MG1366', 'none', 61588, 'L. lactis', '', '', 'i do not write informations on my strains', 'Marianne Veenstra', '', '', '20C04', 'workbox', '', '08-05-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '05', 'plasmid 4', 'MG1363', 'none', 61588, 'L. lactis', '', '', '', 'Marianne Veenstra', '', '', '20C05', 'workbox', '', '13-05-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_Q', '13', 'P', '06', 'plasmid 5', 'MG1363', 'none', 61588, 'L. lactis', '', '', '', 'Marianne Veenstra', '', '', '20C06', 'workbox', '', '21-05-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_R', '13', 'P', '07', '', 'MG1363', 'none', 61588, 'E. coli', '', '', '', 'Marianne Veenstra', '', '', '07B01', 'workbox', '', '01-06-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_R', '13', 'P', '08', 'plasmid 1', 'MG1364', 'none', 61588, 'E. coli', '', '', '', 'Marianne Veenstra', '', '', '07B02', 'workbox', '', '01-06-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_R', '13', 'P', '09', 'plasmid 2', 'MG1365', 'none', 61588, 'E. coli', '', '', '', 'Marianne Veenstra', '', '', '07B03', 'workbox', '', '03-06-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_R', '13', 'P', '10', 'plasmid 3', 'MG1366', 'none', 61588, 'E. coli', '', '', '', 'Marianne Veenstra', '', '', '07B04', 'workbox', '', '03-06-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_R', '13', 'P', '11', 'plasmid 4', 'MG1363', 'none', 61588, 'E. coli', '', '', '', 'Marianne Veenstra', '', '', '07B05', 'workbox', '', '07-06-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_R', '13', 'P', '12', 'plasmid 5', 'MG1363', 'none', 61588, 'E. coli', '', '', '', 'Marianne Veenstra', '', '', '07B06', 'workbox', '', '17-06-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_R', '13', 'P', '13', '', 'MG1363', 'none', 61588, 'B. subtilis', '', '', '', 'Marianne Veenstra', '', '', '07B07', 'workbox', '', '01-09-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_R', '13', 'P', '14', 'plasmid 1', 'MG1364', 'none', 61588, 'B. subtilis', '', '', '', 'Marianne Veenstra', '', '', '07B08', 'workbox', '', '01-09-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_R', '13', 'P', '15', 'plasmid 2', 'MG1365', 'none', 61588, 'B. subtilis', '', '', '', 'Marianne Veenstra', '', '', '07B09', 'workbox', '', '01-09-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_R', '13', 'P', '16', 'plasmid 3', 'MG1366', 'none', 61588, 'B. subtilis', '', '', '', 'Marianne Veenstra', '', '', '07B10', 'workbox', '', '01-09-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_R', '13', 'P', '17', 'plasmid 4', 'MG1363', 'none', 61588, 'B. subtilis', '', '', '', 'Marianne Veenstra', '', '', '07B11', 'workbox', '', '01-09-1612', 'N', 'N', '', '', '', '-', '', '', '', '', ''),
('freezer_R', '13', 'P', '18', 'plasmid 5', 'MG1363', 'none', 61588, 'B. subtilis', '', '', '', 'Marianne Veenstra', '', '', '07B12', 'workbox', '', '01-09-1612', 'N', 'N', '', '', '', '-', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

