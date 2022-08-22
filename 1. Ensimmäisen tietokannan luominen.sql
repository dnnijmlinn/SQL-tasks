-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2022 at 01:01 PM
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
-- Database: `harrastus`
--

-- --------------------------------------------------------

--
-- Table structure for table `harrastus`
--

CREATE TABLE `harrastus` (
  `harrastusnumero` int(11) NOT NULL,
  `harrastus` varchar(20) NOT NULL,
  `selite` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `harrastus`
--

INSERT INTO `harrastus` (`harrastusnumero`, `harrastus`, `selite`) VALUES
(1, 'uinti', 'very long text...'),
(2, 'kuunnella musiikkia', '');

-- --------------------------------------------------------

--
-- Table structure for table `opiskelija`
--

CREATE TABLE `opiskelija` (
  `opinumero` int(11) NOT NULL,
  `etunimi` varchar(20) NOT NULL,
  `sukunimi` varchar(20) NOT NULL,
  `puhelin` varchar(20) NOT NULL,
  `emal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `opiskelija`
--

INSERT INTO `opiskelija` (`opinumero`, `etunimi`, `sukunimi`, `puhelin`, `emal`) VALUES
(1, 'Denis', 'B', '123456789', 'denis@b.com'),
(2, 'Katja', 'G', '987654321', 'katja@g.com');

-- --------------------------------------------------------

--
-- Table structure for table `opiskelijoidenharrastkset`
--

CREATE TABLE `opiskelijoidenharrastkset` (
  `id` int(11) NOT NULL,
  `opinmero` int(11) NOT NULL,
  `harrastusnumero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `opiskelijoidenharrastkset`
--

INSERT INTO `opiskelijoidenharrastkset` (`id`, `opinmero`, `harrastusnumero`) VALUES
(1, 2, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `harrastus`
--
ALTER TABLE `harrastus`
  ADD PRIMARY KEY (`harrastusnumero`);

--
-- Indexes for table `opiskelija`
--
ALTER TABLE `opiskelija`
  ADD PRIMARY KEY (`opinumero`);

--
-- Indexes for table `opiskelijoidenharrastkset`
--
ALTER TABLE `opiskelijoidenharrastkset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opinmero` (`opinmero`),
  ADD KEY `harrastusnumero` (`harrastusnumero`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `opiskelijoidenharrastkset`
--
ALTER TABLE `opiskelijoidenharrastkset`
  ADD CONSTRAINT `opiskelijoidenharrastkset_ibfk_1` FOREIGN KEY (`opinmero`) REFERENCES `opiskelija` (`opinumero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `opiskelijoidenharrastkset_ibfk_2` FOREIGN KEY (`harrastusnumero`) REFERENCES `harrastus` (`harrastusnumero`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
