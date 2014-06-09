-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Skapad: 09 jun 2014 kl 23:20
-- Serverversion: 5.5.16
-- PHP-version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `prov`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumpning av Data i tabell `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(1, 'Fysik'),
(2, 'Matematik'),
(3, 'Samhäll');

-- --------------------------------------------------------

--
-- Tabellstruktur `summary`
--

CREATE TABLE IF NOT EXISTS `summary` (
  `summary_subject` varchar(64) NOT NULL,
  `summary_text` varchar(1050) NOT NULL,
  `summary_name` varchar(64) NOT NULL,
  `summary_date` datetime NOT NULL,
  `summary_id` int(64) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumpning av Data i tabell `summary`
--

INSERT INTO `summary` (`summary_subject`, `summary_text`, `summary_name`, `summary_date`, `summary_id`) VALUES
('Matematik', 'Logaritmer', 'Adam SjÃ¶dahl', '2014-06-08 23:04:25', 5),
('SamhÃ¤ll', 'VÃ¤nstern framÃ¥t!', 'Marcus Palmqvist', '2014-06-09 14:15:30', 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
