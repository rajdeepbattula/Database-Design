-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2021 at 04:10 PM
-- Server version: 10.3.32-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbattula_db`
--
CREATE DATABASE IF NOT EXISTS `bbattula_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bbattula_db`;

-- --------------------------------------------------------

--
-- Table structure for table `ARTIST`
--

DROP TABLE IF EXISTS `ARTIST`;
CREATE TABLE `ARTIST` (
  `ARTIST_ID` char(5) NOT NULL,
  `ARTIST_FNAME` varchar(20) NOT NULL,
  `ARTIST_LNAME` varchar(20) NOT NULL,
  `ARTIST_ROLE` varchar(20) NOT NULL,
  `ARTIST_LOCATION` varchar(20) NOT NULL,
  `ARTIST_SKILL` varchar(30) NOT NULL,
  `SHOW_ID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ARTIST`
--

INSERT INTO `ARTIST` (`ARTIST_ID`, `ARTIST_FNAME`, `ARTIST_LNAME`, `ARTIST_ROLE`, `ARTIST_LOCATION`, `ARTIST_SKILL`, `SHOW_ID`) VALUES
('221', 'Naruto', 'Uzumaki', 'Main', 'Leaf Village', 'Rasengan', '01'),
('222', 'Sasuke', 'Uchiha', 'Main', 'Leaf Village', 'Chidori', '02'),
('223', 'Sakura', 'Haruno', 'Main', 'Leaf Village', 'Genjutsu', '03'),
('224', 'Haku', '', 'Supporting', 'Leaf Village', 'Shinobi', '01'),
('225', 'Choji', 'Akimichi', 'Supporting', 'Leaf Village', 'Multi-size', '02');

-- --------------------------------------------------------

--
-- Table structure for table `AWARDS`
--

DROP TABLE IF EXISTS `AWARDS`;
CREATE TABLE `AWARDS` (
  `AWARDS_ID` char(5) NOT NULL,
  `AWARDS_NAME` varchar(20) NOT NULL,
  `AWARDS_CATEGORY` varchar(20) NOT NULL,
  `AWARDS_PRICE` varchar(20) NOT NULL,
  `AWARDS_DESCRIPTION` date NOT NULL,
  `GENRE_ID` char(5) NOT NULL,
  `STATS_ID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AWARDS`
--

INSERT INTO `AWARDS` (`AWARDS_ID`, `AWARDS_NAME`, `AWARDS_CATEGORY`, `AWARDS_PRICE`, `AWARDS_DESCRIPTION`, `GENRE_ID`, `STATS_ID`) VALUES
('44001', 'Best Character', 'Main', '$10000', '2004-04-01', '631', '55001'),
('44002', 'Best Character', 'Main', '$10000', '2006-04-01', '632', '55002'),
('44003', 'Best Character', 'Supporting', '$5000', '2005-04-01', '634', '55003'),
('44004', 'Best Character', 'Supporting', '$5000', '2007-04-01', '635', '55004'),
('44005', 'Best Character', 'Main', '$10000', '2004-04-01', '633', '55005');

-- --------------------------------------------------------

--
-- Table structure for table `BROADCAST`
--

DROP TABLE IF EXISTS `BROADCAST`;
CREATE TABLE `BROADCAST` (
  `BROADCAST_ID` char(5) NOT NULL,
  `BROADCAST_COMPANY` varchar(20) NOT NULL,
  `BROADCAST_VALIDITY` varchar(20) NOT NULL,
  `BROADCAST_IPR` varchar(20) NOT NULL,
  `BROADCAST_PARTNER` varchar(20) NOT NULL,
  `STUDIO_ID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `BROADCAST`
--

INSERT INTO `BROADCAST` (`BROADCAST_ID`, `BROADCAST_COMPANY`, `BROADCAST_VALIDITY`, `BROADCAST_IPR`, `BROADCAST_PARTNER`, `STUDIO_ID`) VALUES
('80010', 'VIZ Media', 'VALID', 'Verified', 'Sakura TV', '5001'),
('80011', 'Tamada', 'VALID', 'Verified', 'Disney', '5002'),
('80012', 'Lyca', 'VALID', 'Verified', 'HBO', '5003'),
('80013', 'Webit', 'INVALID', 'Not Verified', 'TVtek', '5004'),
('80014', 'Noten', 'INVALID', 'Not Verified', 'Tiatin', '5005');

-- --------------------------------------------------------

--
-- Table structure for table `GENRE`
--

DROP TABLE IF EXISTS `GENRE`;
CREATE TABLE `GENRE` (
  `GENRE_ID` char(5) NOT NULL,
  `GENRE_TYPE` varchar(20) NOT NULL,
  `GENRE_DESCRIPTION` varchar(30) NOT NULL,
  `GENRE_SETTING` varchar(20) NOT NULL,
  `ARTIST_ID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `GENRE`
--

INSERT INTO `GENRE` (`GENRE_ID`, `GENRE_TYPE`, `GENRE_DESCRIPTION`, `GENRE_SETTING`, `ARTIST_ID`) VALUES
('631', 'Action', 'Sequence of fights and bravery', 'Martial Arts', '221'),
('632', 'Action', 'Sequence of fights and bravery', 'Martial Arts', '222'),
('633', 'Adventure', 'Mixture of all kinds of stunts', 'Super Power', '223'),
('634', 'Action', 'Sequence of fights', 'Martial Arts', '224'),
('635', 'Comedy', 'Sense of humour', 'Sarcastic', '225');

-- --------------------------------------------------------

--
-- Table structure for table `LICENSE`
--

DROP TABLE IF EXISTS `LICENSE`;
CREATE TABLE `LICENSE` (
  `LICENSE_ID` char(5) NOT NULL,
  `LICENSE_NAME` varchar(20) NOT NULL,
  `LICENSE_VALIDITY` varchar(20) NOT NULL,
  `LICENSE_STARTDATE` date NOT NULL,
  `LICENSOR_NAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `LICENSE`
--

INSERT INTO `LICENSE` (`LICENSE_ID`, `LICENSE_NAME`, `LICENSE_VALIDITY`, `LICENSE_STARTDATE`, `LICENSOR_NAME`) VALUES
('1', 'Silver', 'VALID', '2020-03-31', 'Netflix'),
('2', 'Silver', 'INVALID', '2000-03-31', 'Jetix'),
('3', 'Gold', 'VALID', '2007-03-31', 'Jetix'),
('4', 'Gold', 'INVALID', '2000-03-31', 'Netflix'),
('5', 'Premium', 'VALID', '2002-03-31', 'Hulu');

-- --------------------------------------------------------

--
-- Table structure for table `NARUTO_ANIME`
--

DROP TABLE IF EXISTS `NARUTO_ANIME`;
CREATE TABLE `NARUTO_ANIME` (
  `SHOW_ID` char(2) NOT NULL,
  `SHOW_TYPE` varchar(20) NOT NULL,
  `SHOW_STATUS` varchar(13) NOT NULL,
  `SHOW_SOURCE` varchar(12) NOT NULL,
  `PRODUCER_ID` char(5) NOT NULL,
  `RATING_ID` char(5) NOT NULL,
  `STUDIO_ID` char(5) NOT NULL,
  `LICENSE_ID` char(5) NOT NULL,
  `BROADCAST_ID` char(5) NOT NULL,
  `STATS_ID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `NARUTO_ANIME`
--

INSERT INTO `NARUTO_ANIME` (`SHOW_ID`, `SHOW_TYPE`, `SHOW_STATUS`, `SHOW_SOURCE`, `PRODUCER_ID`, `RATING_ID`, `STUDIO_ID`, `LICENSE_ID`, `BROADCAST_ID`, `STATS_ID`) VALUES
('01', 'Shounen Jump', 'Aired', 'TV', '1002', '40014', '5001', '1', '80010', '55001'),
('02', 'Shippuden', 'Aired', 'TV', '1003', '40010', '5002', '3', '80011', '55002'),
('03', 'Boruto', 'Airing Now', 'TV', '1004', '40011', '5003', '5', '80012', '55003'),
('04', 'Ninja Clash', 'Aired', 'TV', '1001', '40013', '5004', '2', '80013', '55004'),
('05', 'The Lost Tower', 'Aired', 'TV', '1005', '40012', '5005', '4', '80014', '55005');

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCER`
--

DROP TABLE IF EXISTS `PRODUCER`;
CREATE TABLE `PRODUCER` (
  `PRODUCER_ID` char(5) NOT NULL,
  `PRODUCER_FNAME` varchar(20) NOT NULL,
  `PRODUCER_LNAME` varchar(20) NOT NULL,
  `PRODUCER_AGE` char(3) NOT NULL DEFAULT '99',
  `PRODUCER_BUDGET` decimal(9,2) NOT NULL DEFAULT 999999.99,
  `PRODUCER_EXPERIENCE` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PRODUCER`
--

INSERT INTO `PRODUCER` (`PRODUCER_ID`, `PRODUCER_FNAME`, `PRODUCER_LNAME`, `PRODUCER_AGE`, `PRODUCER_BUDGET`, `PRODUCER_EXPERIENCE`) VALUES
('1001', 'Yukko', 'Satou', '36', '80000.00', '5'),
('1002', 'Beck', 'Tony', '27', '85999.00', '10'),
('1003', 'Naka', 'Hirochi', '32', '86999.00', '8'),
('1004', 'Fuochi', 'Thomas', '25', '85799.00', '9'),
('1005', 'Rosa', 'Luigi', '19', '86799.00', '6');

-- --------------------------------------------------------

--
-- Table structure for table `RATING`
--

DROP TABLE IF EXISTS `RATING`;
CREATE TABLE `RATING` (
  `RATING_ID` char(5) NOT NULL,
  `RATING_RANK` varchar(20) NOT NULL,
  `RATING_MEMBERS` char(3) NOT NULL,
  `RATING_POPULARITY` varchar(20) NOT NULL,
  `RATING_FEEDBACK` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `RATING`
--

INSERT INTO `RATING` (`RATING_ID`, `RATING_RANK`, `RATING_MEMBERS`, `RATING_POPULARITY`, `RATING_FEEDBACK`) VALUES
('40010', 'Top 10', '991', 'Across globe', 'Good'),
('40011', 'Top 20', '981', 'Across globe', 'Very Good'),
('40012', 'Top 100', '871', 'Within country', 'Better'),
('40013', 'Top 50', '791', 'Within country', 'Better'),
('40014', 'Top 5', '999', 'Across globe', 'Best');

-- --------------------------------------------------------

--
-- Table structure for table `STATS`
--

DROP TABLE IF EXISTS `STATS`;
CREATE TABLE `STATS` (
  `STATS_ID` char(5) NOT NULL,
  `STATS_TRP` char(3) NOT NULL,
  `STATS_REVENUE` decimal(9,2) NOT NULL DEFAULT 999999.99,
  `STATS_REVIEW` varchar(20) NOT NULL,
  `STATS_VIEWERS_NUM` char(4) NOT NULL,
  `RATING_ID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STATS`
--

INSERT INTO `STATS` (`STATS_ID`, `STATS_TRP`, `STATS_REVENUE`, `STATS_REVIEW`, `STATS_VIEWERS_NUM`, `RATING_ID`) VALUES
('55001', '5', '99586.26', 'Above mean', '9129', '40014'),
('55002', '4.9', '99266.26', 'Above mean', '9109', '40010'),
('55003', '4.8', '95503.26', 'Above mean', '9009', '40011'),
('55004', '4.7', '83689.26', 'Above mean', '8858', '40013'),
('55005', '4.6', '81696.26', 'Above mean', '8162', '40012');

-- --------------------------------------------------------

--
-- Table structure for table `STUDIO`
--

DROP TABLE IF EXISTS `STUDIO`;
CREATE TABLE `STUDIO` (
  `STUDIO_ID` char(5) NOT NULL,
  `STUDIO_LOCATION` varchar(20) NOT NULL,
  `STUDIO_NAME` varchar(20) NOT NULL,
  `STUDIO_CONTACT` varchar(20) NOT NULL,
  `STUDIO_STARTDATE` date NOT NULL,
  `PRODUCER_ID` char(5) NOT NULL,
  `LICENSE_ID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STUDIO`
--

INSERT INTO `STUDIO` (`STUDIO_ID`, `STUDIO_LOCATION`, `STUDIO_NAME`, `STUDIO_CONTACT`, `STUDIO_STARTDATE`, `PRODUCER_ID`, `LICENSE_ID`) VALUES
('5001', 'France', 'Aniplex', '+33 856948211', '1991-05-01', '1002', '1'),
('5002', 'Japan', 'TV Tokyo', '+81 209448251', '1791-05-01', '1003', '3'),
('5003', 'US', 'AMC', '+212 556978213', '1881-05-01', '1004', '5'),
('5004', 'Germany', 'Pierrot', '+49 306946287', '1591-05-01', '1001', '2'),
('5005', 'London', 'Shuiesha', '+44 206362511', '1691-05-01', '1005', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ARTIST`
--
ALTER TABLE `ARTIST`
  ADD PRIMARY KEY (`ARTIST_ID`),
  ADD UNIQUE KEY `ARTIST_ID` (`ARTIST_ID`),
  ADD KEY `SHOW_ID` (`SHOW_ID`);

--
-- Indexes for table `AWARDS`
--
ALTER TABLE `AWARDS`
  ADD PRIMARY KEY (`AWARDS_ID`),
  ADD KEY `GENRE_ID` (`GENRE_ID`),
  ADD KEY `STATS_ID` (`STATS_ID`);

--
-- Indexes for table `BROADCAST`
--
ALTER TABLE `BROADCAST`
  ADD PRIMARY KEY (`BROADCAST_ID`),
  ADD KEY `STUDIO_ID` (`STUDIO_ID`);

--
-- Indexes for table `GENRE`
--
ALTER TABLE `GENRE`
  ADD PRIMARY KEY (`GENRE_ID`),
  ADD KEY `ARTIST_ID` (`ARTIST_ID`);

--
-- Indexes for table `LICENSE`
--
ALTER TABLE `LICENSE`
  ADD PRIMARY KEY (`LICENSE_ID`);

--
-- Indexes for table `NARUTO_ANIME`
--
ALTER TABLE `NARUTO_ANIME`
  ADD PRIMARY KEY (`SHOW_ID`),
  ADD KEY `PRODUCER_ID` (`PRODUCER_ID`),
  ADD KEY `RATING_ID` (`RATING_ID`),
  ADD KEY `STUDIO_ID` (`STUDIO_ID`),
  ADD KEY `LICENSE_ID` (`LICENSE_ID`),
  ADD KEY `BROADCAST_ID` (`BROADCAST_ID`),
  ADD KEY `STATS_ID` (`STATS_ID`);

--
-- Indexes for table `PRODUCER`
--
ALTER TABLE `PRODUCER`
  ADD PRIMARY KEY (`PRODUCER_ID`);

--
-- Indexes for table `RATING`
--
ALTER TABLE `RATING`
  ADD PRIMARY KEY (`RATING_ID`);

--
-- Indexes for table `STATS`
--
ALTER TABLE `STATS`
  ADD PRIMARY KEY (`STATS_ID`),
  ADD KEY `RATING_ID` (`RATING_ID`);

--
-- Indexes for table `STUDIO`
--
ALTER TABLE `STUDIO`
  ADD PRIMARY KEY (`STUDIO_ID`),
  ADD KEY `PRODUCER_ID` (`PRODUCER_ID`),
  ADD KEY `LICENSE_ID` (`LICENSE_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ARTIST`
--
ALTER TABLE `ARTIST`
  ADD CONSTRAINT `ARTIST_ibfk_1` FOREIGN KEY (`SHOW_ID`) REFERENCES `NARUTO_ANIME` (`SHOW_ID`);

--
-- Constraints for table `AWARDS`
--
ALTER TABLE `AWARDS`
  ADD CONSTRAINT `AWARDS_ibfk_1` FOREIGN KEY (`GENRE_ID`) REFERENCES `GENRE` (`GENRE_ID`),
  ADD CONSTRAINT `AWARDS_ibfk_2` FOREIGN KEY (`STATS_ID`) REFERENCES `STATS` (`STATS_ID`);

--
-- Constraints for table `BROADCAST`
--
ALTER TABLE `BROADCAST`
  ADD CONSTRAINT `BROADCAST_ibfk_1` FOREIGN KEY (`STUDIO_ID`) REFERENCES `STUDIO` (`STUDIO_ID`);

--
-- Constraints for table `GENRE`
--
ALTER TABLE `GENRE`
  ADD CONSTRAINT `GENRE_ibfk_1` FOREIGN KEY (`ARTIST_ID`) REFERENCES `ARTIST` (`ARTIST_ID`);

--
-- Constraints for table `NARUTO_ANIME`
--
ALTER TABLE `NARUTO_ANIME`
  ADD CONSTRAINT `NARUTO_ANIME_ibfk_1` FOREIGN KEY (`PRODUCER_ID`) REFERENCES `PRODUCER` (`PRODUCER_ID`),
  ADD CONSTRAINT `NARUTO_ANIME_ibfk_2` FOREIGN KEY (`RATING_ID`) REFERENCES `RATING` (`RATING_ID`),
  ADD CONSTRAINT `NARUTO_ANIME_ibfk_3` FOREIGN KEY (`STUDIO_ID`) REFERENCES `STUDIO` (`STUDIO_ID`),
  ADD CONSTRAINT `NARUTO_ANIME_ibfk_4` FOREIGN KEY (`LICENSE_ID`) REFERENCES `LICENSE` (`LICENSE_ID`),
  ADD CONSTRAINT `NARUTO_ANIME_ibfk_5` FOREIGN KEY (`BROADCAST_ID`) REFERENCES `BROADCAST` (`BROADCAST_ID`),
  ADD CONSTRAINT `NARUTO_ANIME_ibfk_6` FOREIGN KEY (`STATS_ID`) REFERENCES `STATS` (`STATS_ID`);

--
-- Constraints for table `STATS`
--
ALTER TABLE `STATS`
  ADD CONSTRAINT `STATS_ibfk_1` FOREIGN KEY (`RATING_ID`) REFERENCES `RATING` (`RATING_ID`);

--
-- Constraints for table `STUDIO`
--
ALTER TABLE `STUDIO`
  ADD CONSTRAINT `STUDIO_ibfk_1` FOREIGN KEY (`PRODUCER_ID`) REFERENCES `PRODUCER` (`PRODUCER_ID`),
  ADD CONSTRAINT `STUDIO_ibfk_2` FOREIGN KEY (`LICENSE_ID`) REFERENCES `LICENSE` (`LICENSE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
