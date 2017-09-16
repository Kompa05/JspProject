-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 10, 2014 at 05:30 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pune`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insname` varchar(255) NOT NULL,
  `cperson` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `ctype` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `insname`, `cperson`, `email`, `password`, `course`, `ctype`, `mobile`, `area`, `address`) VALUES
(1, 'a', 'a', 'a', 'a', 'html', 'classroom training', 'as', 's', 's'),
(2, 'kanishk', 'kanishk', 'kanishk@gmail.com', '123', 'java', 'online training', '987654321', 'kondhwa', 'pune\r\n'),
(3, 'nishant', 'nishant', 'nish108nc@gmail.com', '123', 'php', 'classroom training', '98675645654', 'katraj', 'pune ');
