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
-- Database: `g_vente`
--

-- --------------------------------------------------------

--
-- Table structure for table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `codeCmd` int(11) NOT NULL AUTO_INCREMENT,
  `client` varchar(20) DEFAULT NULL,
  `codePdt` int(11) NOT NULL,
  `dateCmd` date DEFAULT NULL,
  `qteCmd` int(11) NOT NULL,
  PRIMARY KEY (`codeCmd`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `commandes`
--

INSERT INTO `commandes` (`codeCmd`, `client`, `codePdt`, `dateCmd`, `qteCmd`) VALUES
(1, 'tester', 22, '2018-01-12', 8),
(2, 'tester', 3, '2018-01-12', 3),
(3, 'tester', 22, '2018-01-12', 2),
(4, 'tester', 3, '2018-01-12', 2),
(5, 'tester', 3, '2018-01-12', 5),
(6, 'tester', 1, '2018-01-12', 1),
(7, 'tester', 3, '2018-01-13', 1),
(8, 'tester', 3, '2018-01-13', 1),
(9, 'tester', 3, '2018-01-13', 1),
(10, 'tester', 3, '2018-01-13', 1),
(11, 'tester', 3, '2018-01-13', 2),
(12, 'tester', 22, '2018-01-13', 1),
(13, 'tester', 22, '2018-01-13', 1),
(14, 'tester', 22, '2018-01-13', 1),
(15, 'tester', 22, '2018-01-13', 1),
(16, 'tester', 3, '2018-01-13', 1),
(17, 'tester', 3, '2018-01-13', 1),
(18, 'tester', 3, '2018-01-13', 1),
(19, 'tester', 3, '2018-01-13', 1),
(20, 'tester', 3, '2018-01-13', 1),
(21, 'tester', 3, '2018-01-13', 1),
(22, 'tester', 22, '2018-01-13', 1),
(23, 'tester', 22, '2018-01-13', 1),
(24, 'tester', 3, '2018-01-13', 1),
(25, 'tester', 3, '2018-01-13', 1),
(26, 'tester', 3, '2018-01-13', 1),
(27, 'tester', 22, '2018-01-13', 4),
(28, 'tester', 22, '2018-01-13', 1),
(29, 'tester', 22, '2018-01-13', 1),
(30, 'tester', 3, '2018-01-14', 1),
(31, 'tester', 22, '2018-01-14', 2),
(32, 'admin', 3, '2018-01-14', 1),
(33, 'admin', 22, '2018-01-14', 1),
(34, 'admin', 22, '2018-01-14', 1),
(35, 'admin', 3, '2018-01-14', 1),
(36, 'admin', 3, '2018-01-14', 1),
(37, 'admin', 22, '2018-01-14', 1),
(38, 'admin', 3, '2018-01-14', 1),
(39, 'admin', 22, '2018-01-14', 1),
(40, 'admin', 3, '2018-01-14', 1),
(41, 'admin', 3, '2018-01-14', 1),
(42, 'admin', 3, '2018-01-14', 1),
(43, 'admin', 3, '2018-01-14', 1),
(44, 'admin', 3, '2018-01-14', 1),
(45, 'admin', 3, '2018-01-14', 1),
(46, 'admin', 1, '2018-01-15', 2),
(47, 'admin', 1, '2018-01-15', 2),
(48, 'admin', 3, '2018-01-15', 2),
(49, 'admin', 3, '2018-01-15', 1),
(50, 'admin', 3, '2018-01-15', 1),
(51, 'admin', 1, '2018-01-15', 1),
(52, 'admin', 3, '2018-01-15', 1),
(53, 'admin', 3, '2018-01-15', 1),
(54, 'admin', 1, '2018-01-16', 1),
(55, 'admin', 3, '2018-01-16', 1),
(56, 'admin', 1, '2018-01-16', 1),
(57, 'admin', 3, '2018-01-16', 1),
(58, 'admin', 22, '2018-01-16', 5),
(59, 'admin', 22, '2018-01-16', 2),
(60, 'admin', 22, '2018-01-16', 1),
(61, 'admin', 3, '2018-01-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `codeUser` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codeUser`),
  UNIQUE KEY `UK_ow0gan20590jrb00upg3va2fn` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`codeUser`, `login`, `pass`) VALUES
(1, 'admin', 'root'),
(2, 'client1', 'test');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
