-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18.08.2022 klo 08:28
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
-- Database: `teh3`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `harrastus`
--

CREATE TABLE `harrastus` (
  `HARRASTUSNUMERO` int(11) NOT NULL,
  `HARRASTUS` text NOT NULL,
  `SELITE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `harrastus`
--

INSERT INTO `harrastus` (`HARRASTUSNUMERO`, `HARRASTUS`, `SELITE`) VALUES
(1, 'Uinti', 'Selkä'),
(2, 'Uinti', 'Perhonen'),
(3, 'Hiihto', 'Vapaatyyli'),
(4, 'Laskettelu', ''),
(5, 'Tietokonepelaaminen', '');

-- --------------------------------------------------------

--
-- Rakenne taululle `opiskelija`
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
  `SYNTYMAAIKA` date NOT NULL,
  `PALKKA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `opiskelija`
--

INSERT INTO `opiskelija` (`OPISKELIJANUMERO`, `ETUNIMI`, `SUKUNIMI`, `KATUOSOITE`, `POSTINUMERO`, `POSTITOIMIPAIKKA`, `PUHELIN`, `EMAIL`, `SYNTYMAAIKA`, `PALKKA`) VALUES
(1, 'Jarkko', 'Turpeinen', 'Kaislakatu 8 D', '80130', 'JOENSUU', '+358 50 4650685', 'jarkko.turpeinen@riveria.fi', '1969-08-27', 3682.12),
(2, 'Matti', 'Möttönen', '', '82500', 'Kitee', '', '', '2002-03-11', 3923.14),
(3, 'Kimmo', 'Kiljunen', '', '', 'LIEKSA', '', '', '2002-02-22', 3519.41),
(4, 'Tero', 'Mikkonen', '', '82500', 'Kitee', '', '', '1987-02-27', 3027.75),
(6, 'Mari', 'Miettinen', '', '', 'Outokumpu', '', '', '2002-08-19', 2611.61),
(7, 'Mari', 'Miettinen', '', '', 'Outokumpu', '', '', '2002-08-19', 2465.41),
(8, 'Päivi', 'Komulainen', '', '', 'Joensuu', '', '', '2000-09-19', 3773.32),
(9, 'Tea', 'Kärkkäinen', '', '82500', 'Kitee', '', '', '2002-09-29', 3298.97),
(10, 'Minna', 'Komulainen', '', '', 'Lieksa', '', '', '2002-11-29', 3205.99),
(12, 'Jukka ', 'Kuittinen', 'Lasitie 23', '80130', 'JOENSUU', '0503454422', 'jukka.kuittinen@hotmail.com\r\n', '2001-12-12', 3083.13),
(13, 'Teemu', 'Kovalainen', '', '', '', '', '', '0000-00-00', 3538.28),
(14, 'Tiina', 'Roponen', 'Kellopolku 3\r\n', '80130\r\n', 'JOENSUU', '050788812\r\n', 'tiina.heikkinen@yahoo.com\r\n', '2001-05-12', 3101.6);

-- --------------------------------------------------------

--
-- Rakenne taululle `opiskelijoidenharrastukset`
--

CREATE TABLE `opiskelijoidenharrastukset` (
  `OPISKELIJOIDENHARRASTUSNUMERO` int(11) NOT NULL,
  `OPISKELIJANUMERO` int(11) NOT NULL,
  `HARRASTUSNUMERO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `harrastus`
--
ALTER TABLE `harrastus`
  ADD PRIMARY KEY (`HARRASTUSNUMERO`);

--
-- Indexes for table `opiskelija`
--
ALTER TABLE `opiskelija`
  ADD PRIMARY KEY (`OPISKELIJANUMERO`);

--
-- Indexes for table `opiskelijoidenharrastukset`
--
ALTER TABLE `opiskelijoidenharrastukset`
  ADD PRIMARY KEY (`OPISKELIJOIDENHARRASTUSNUMERO`),
  ADD KEY `OPISKELIJANUMERO` (`OPISKELIJANUMERO`),
  ADD KEY `HARRASTUSNUMERO` (`HARRASTUSNUMERO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `harrastus`
--
ALTER TABLE `harrastus`
  MODIFY `HARRASTUSNUMERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `opiskelija`
--
ALTER TABLE `opiskelija`
  MODIFY `OPISKELIJANUMERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `opiskelijoidenharrastukset`
--
ALTER TABLE `opiskelijoidenharrastukset`
  MODIFY `OPISKELIJOIDENHARRASTUSNUMERO` int(11) NOT NULL AUTO_INCREMENT;

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `opiskelijoidenharrastukset`
--
ALTER TABLE `opiskelijoidenharrastukset`
  ADD CONSTRAINT `OPISKELIJOIDENHARRASTUKSET_ibfk_1` FOREIGN KEY (`OPISKELIJANUMERO`) REFERENCES `opiskelija` (`OPISKELIJANUMERO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `OPISKELIJOIDENHARRASTUKSET_ibfk_2` FOREIGN KEY (`HARRASTUSNUMERO`) REFERENCES `harrastus` (`HARRASTUSNUMERO`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
