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
-- Database: `g_stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `produits_stock`
--

CREATE TABLE IF NOT EXISTS `produits_stock` (
  `codeStock` int(11) NOT NULL AUTO_INCREMENT,
  `codePdt` int(11) NOT NULL,
  `qtePdt` int(11) NOT NULL,
  PRIMARY KEY (`codeStock`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `produits_stock`
--

INSERT INTO `produits_stock` (`codeStock`, `codePdt`, `qtePdt`) VALUES
(1, 3, 15),
(2, 22, 62),
(3, 41, 20),
(4, 1, 8);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
