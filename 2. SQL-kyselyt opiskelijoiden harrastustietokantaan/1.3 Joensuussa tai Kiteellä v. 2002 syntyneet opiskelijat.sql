-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2022 at 06:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teh2`
--

-- --------------------------------------------------------

--
-- Table structure for table `opiskelija`
--

CREATE TABLE `opiskelija` (
  `OPISKELIJANUMERO` int(11) NOT NULL,
  `ETUNIMI` text NOT NULL,
  `SUKUNIMI` text NOT NULL,
  `KATUOSOITE` text NOT NULL,
  `POSTINUMERO` text NOT NULL,
  `POSTITOIMIPAIKKA` text NOT NULL,
  `PUHELIN` text NOT NULL,
  `EMAIL` text NOT NULL,
  `SYNTYMAAIKA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opiskelija`
--

INSERT INTO `opiskelija` (`ETUNIMI`, `SUKUNIMI`, `PUHELIN`, `SYNTYMAAIKA`, `PUHELIN`) VALUES
('Matti', 'Möttönen', '', '2002-03-11', ''),
('Tea', 'Kärkkäinen', '', '2002-09-29', ''),
('Timo', 'Testi', '', '2002-06-06', ''),
('Teppo', 'Testi', '', '2002-06-06', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `opiskelija`
--
ALTER TABLE `opiskelija`
  ADD PRIMARY KEY (`OPISKELIJANUMERO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `opiskelija`
--
ALTER TABLE `opiskelija`
  MODIFY `OPISKELIJANUMERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
