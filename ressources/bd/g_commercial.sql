-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2018 at 05:54 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `g_commercial`
--

-- --------------------------------------------------------

--
-- Table structure for table `produits_prix`
--

CREATE TABLE IF NOT EXISTS `produits_prix` (
  `codePdt` int(11) NOT NULL,
  `descPdt` varchar(200) DEFAULT NULL,
  `nomPdt` varchar(20) DEFAULT NULL,
  `prixPdt` int(11) DEFAULT NULL,
  PRIMARY KEY (`codePdt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produits_prix`
--

INSERT INTO `produits_prix` (`codePdt`, `descPdt`, `nomPdt`, `prixPdt`) VALUES
(3, 'gaming mouse', 'Mouse', 220),
(22, 'classic keyboard', 'Keyboard', 120),
(41, 'Large monitor', 'Monitor', 1920),
(1, 'AMD FX8320', 'CPU', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `tous_commandes`
--

CREATE TABLE IF NOT EXISTS `tous_commandes` (
  `codeTousCmd` int(11) NOT NULL AUTO_INCREMENT,
  `client` varchar(20) DEFAULT NULL,
  `codeCmd` int(11) NOT NULL,
  `codePdt` int(11) NOT NULL,
  `dateCmd` date DEFAULT NULL,
  `qteCmd` int(11) NOT NULL,
  PRIMARY KEY (`codeTousCmd`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `tous_commandes`
--

INSERT INTO `tous_commandes` (`codeTousCmd`, `client`, `codeCmd`, `codePdt`, `dateCmd`, `qteCmd`) VALUES
(1, 'client', 3, 10, '2018-01-11', 5),
(2, 'tester', 4, 3, '2018-01-12', 2),
(3, 'tester', 5, 3, '2018-01-12', 5),
(4, 'tester', 6, 1, '2018-01-12', 1),
(5, 'tester', 7, 3, '2018-01-13', 1),
(6, 'tester', 8, 3, '2018-01-13', 1),
(7, 'tester', 9, 3, '2018-01-13', 1),
(8, 'tester', 10, 3, '2018-01-13', 1),
(9, 'tester', 11, 3, '2018-01-13', 2),
(10, 'tester', 12, 22, '2018-01-13', 1),
(11, 'tester', 13, 22, '2018-01-13', 1),
(12, 'tester', 15, 22, '2018-01-13', 1),
(13, 'tester', 16, 3, '2018-01-13', 1),
(14, 'tester', 18, 3, '2018-01-13', 1),
(15, 'tester', 19, 3, '2018-01-13', 1),
(16, 'tester', 21, 3, '2018-01-13', 1),
(17, 'tester', 22, 22, '2018-01-13', 1),
(18, 'tester', 23, 22, '2018-01-13', 1),
(19, 'tester', 24, 3, '2018-01-13', 1),
(20, 'tester', 25, 3, '2018-01-13', 1),
(21, 'tester', 26, 3, '2018-01-13', 1),
(22, 'tester', 27, 22, '2018-01-13', 4),
(23, 'tester', 28, 22, '2018-01-13', 1),
(24, 'tester', 29, 22, '2018-01-13', 1),
(25, 'tester', 30, 3, '2018-01-14', 1),
(26, 'tester', 31, 22, '2018-01-14', 2),
(27, 'admin', 36, 3, '2018-01-14', 1),
(28, 'admin', 37, 22, '2018-01-14', 1),
(29, 'admin', 38, 3, '2018-01-14', 1),
(30, 'admin', 39, 22, '2018-01-14', 1),
(31, 'admin', 40, 3, '2018-01-14', 1),
(32, 'admin', 41, 3, '2018-01-14', 1),
(33, 'admin', 42, 3, '2018-01-14', 1),
(34, 'admin', 43, 3, '2018-01-14', 1),
(35, 'admin', 44, 3, '2018-01-14', 1),
(36, 'admin', 45, 3, '2018-01-14', 1),
(37, 'admin', 46, 1, '2018-01-15', 2),
(38, 'admin', 47, 1, '2018-01-15', 2),
(39, 'admin', 48, 3, '2018-01-15', 2),
(40, 'admin', 49, 3, '2018-01-15', 1),
(41, 'admin', 50, 3, '2018-01-15', 1),
(42, 'admin', 51, 1, '2018-01-15', 1),
(43, 'admin', 52, 3, '2018-01-15', 1),
(44, 'admin', 53, 3, '2018-01-15', 1),
(45, 'admin', 54, 1, '2018-01-16', 1),
(46, 'admin', 55, 3, '2018-01-16', 1),
(47, 'admin', 56, 1, '2018-01-16', 1),
(48, 'admin', 57, 3, '2018-01-16', 1),
(49, 'admin', 58, 22, '2018-01-16', 5),
(50, 'admin', 59, 22, '2018-01-16', 2),
(51, 'admin', 60, 22, '2018-01-16', 1),
(52, 'admin', 61, 3, '2018-01-16', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
