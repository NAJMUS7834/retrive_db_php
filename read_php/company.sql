-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 10, 2014 at 05:58 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `company`
--
CREATE DATABASE IF NOT EXISTS `company` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `company`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(255) NOT NULL,
  `employee_email` varchar(255) NOT NULL,
  `employee_contact` varchar(255) NOT NULL,
  `employee_address` varchar(255) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `employee_email`, `employee_contact`, `employee_address`) VALUES
(2, 'Albert', 'albert123@gmailcom', '999999999', 'formget,USA'),
(3, 'Peter', 'peter@gmail.com', '9999334444', 'Formget.com, UAE');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
