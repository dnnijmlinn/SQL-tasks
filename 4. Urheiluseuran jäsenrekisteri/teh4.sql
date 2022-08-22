-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18.08.2022 klo 08:56
-- Palvelimen versio: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teh4`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `jasenrekisteri`
--

CREATE TABLE `jasenrekisteri` (
  `id` int(20) NOT NULL,
  `nimi` varchar(20) NOT NULL,
  `sukunimi` varchar(20) NOT NULL,
  `syntymaaika` date NOT NULL,
  `puhelinnumero` varchar(20) NOT NULL,
  `emal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `jasenrekisteri`
--

INSERT INTO `jasenrekisteri` (`id`, `nimi`, `sukunimi`, `syntymaaika`, `puhelinnumero`, `emal`) VALUES
(1, 'Toni', 'Korhonen', '2001-09-01', '123456789', 'toni.korhonen@riveri'),
(2, 'Matti', 'Sivonen', '2002-01-31', '234567890', 'matti.sivonen@riveri'),
(3, 'Tiina ', 'Roponen', '2001-10-17', '345678912', 'tiina@riveria.fi'),
(4, 'Markus', 'Mattilainen', '2001-05-06', '456789123', 'markus@riveria.fi');

-- --------------------------------------------------------

--
-- Rakenne taululle `jäsenrekisterinrooli`
--

CREATE TABLE `jäsenrekisterinrooli` (
  `id` int(11) NOT NULL,
  `jäsenrekisterinnum` int(11) NOT NULL,
  `roolinnum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `jäsenrekisterinrooli`
--

INSERT INTO `jäsenrekisterinrooli` (`id`, `jäsenrekisterinnum`, `roolinnum`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 3);

-- --------------------------------------------------------

--
-- Rakenne taululle `rooli`
--

CREATE TABLE `rooli` (
  `id` int(20) NOT NULL,
  `rooli` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `rooli`
--

INSERT INTO `rooli` (`id`, `rooli`) VALUES
(1, 'jäsen '),
(2, 'sihteeri '),
(3, 'puheenjohtaja');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jasenrekisteri`
--
ALTER TABLE `jasenrekisteri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jäsenrekisterinrooli`
--
ALTER TABLE `jäsenrekisterinrooli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jäsenrekisterinnum` (`jäsenrekisterinnum`),
  ADD KEY `roolinnum` (`roolinnum`);

--
-- Indexes for table `rooli`
--
ALTER TABLE `rooli`
  ADD PRIMARY KEY (`id`);

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `jäsenrekisterinrooli`
--
ALTER TABLE `jäsenrekisterinrooli`
  ADD CONSTRAINT `jäsenrekisterinrooli_ibfk_1` FOREIGN KEY (`jäsenrekisterinnum`) REFERENCES `jasenrekisteri` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jäsenrekisterinrooli_ibfk_2` FOREIGN KEY (`roolinnum`) REFERENCES `rooli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
