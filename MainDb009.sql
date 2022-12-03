-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 13, 2022 at 08:04 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MainDb009`
--

-- --------------------------------------------------------

--
-- Table structure for table `ClientsX009`
--

CREATE TABLE `ClientsX009` (
  `clientIdX009` varchar(255) NOT NULL,
  `clientNameX009` varchar(255) NOT NULL,
  `clientCityX009` varchar(255) NOT NULL,
  `clientPasswordX009` varchar(255) NOT NULL,
  `moneyOwedX009` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ClientsX009`
--

INSERT INTO `ClientsX009` (`clientIdX009`, `clientNameX009`, `clientCityX009`, `clientPasswordX009`, `moneyOwedX009`) VALUES
('B00843009', 'John Mayer', 'New York City', 'JohnMayer123.', '5'),
('B00843010', 'Rafael Nadal', 'Mallorca', 'RafaelNadal123.', '10'),
('B00843011', 'Michael Jordan', 'Chicago', 'MichaelJordan123.', '15');

-- --------------------------------------------------------

--
-- Table structure for table `ClientsY009`
--

CREATE TABLE `ClientsY009` (
  `clientIdY009` varchar(255) NOT NULL,
  `clientNameY009` varchar(255) NOT NULL,
  `clientCityY009` varchar(255) NOT NULL,
  `clientPasswordY009` varchar(255) NOT NULL,
  `moneyOwedY009` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ClientsY009`
--

INSERT INTO `ClientsY009` (`clientIdY009`, `clientNameY009`, `clientCityY009`, `clientPasswordY009`, `moneyOwedY009`) VALUES
('B00843012', 'Roger Federer', 'Basel', 'RogerFederer123.', '5'),
('B00843013', 'Lionel Messi', 'Rosario', 'LionelMessi123.', '10'),
('B00843014', 'Virat Kohli', 'Delhi', 'ViratKohli123.', '15');

-- --------------------------------------------------------

--
-- Table structure for table `ClientsZ009`
--

CREATE TABLE `ClientsZ009` (
  `clientIdZ009` varchar(255) NOT NULL,
  `clientNameZ009` varchar(255) NOT NULL,
  `clientCityZ009` varchar(255) NOT NULL,
  `clientPasswordZ009` varchar(255) NOT NULL,
  `moneyOwedZ009` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ClientsZ009`
--

INSERT INTO `ClientsZ009` (`clientIdZ009`, `clientNameZ009`, `clientCityZ009`, `clientPasswordZ009`, `moneyOwedZ009`) VALUES
('B00843015', 'MS Dhoni', 'Ranchi', 'MSDhoni123.', '5'),
('B00843016', 'Sachin Tendulkar', 'Mumbai', 'SachinTendulkar123.', '10'),
('B00843017', 'Novak Djokovic', 'Belgrade', 'NovakDjokovic123.', '15');

-- --------------------------------------------------------

--
-- Table structure for table `LinesX009`
--

CREATE TABLE `LinesX009` (
  `poNoX009` int(11) NOT NULL,
  `lineNoX009` int(11) NOT NULL,
  `partNoX009` int(11) NOT NULL,
  `qtyX009` int(11) NOT NULL,
  `priceOrderedX009` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LinesY009`
--

CREATE TABLE `LinesY009` (
  `poNoY009` int(11) NOT NULL,
  `lineNoY009` int(11) NOT NULL,
  `partNoY009` int(11) NOT NULL,
  `qtyY009` int(11) NOT NULL,
  `priceOrderedY009` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LinesZ009`
--

CREATE TABLE `LinesZ009` (
  `poNoZ009` int(11) NOT NULL,
  `lineNoZ009` int(11) NOT NULL,
  `partNoZ009` int(11) NOT NULL,
  `qtyZ009` int(11) NOT NULL,
  `priceOrderedZ009` decimal(10,0) NOT NULL,
  `companyOrderedZ009` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PartsX009`
--

CREATE TABLE `PartsX009` (
  `partNoX009` int(11) NOT NULL,
  `partNameX009` varchar(255) NOT NULL,
  `currentPriceX009` decimal(10,0) NOT NULL,
  `qohX009` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PartsX009`
--

INSERT INTO `PartsX009` (`partNoX009`, `partNameX009`, `currentPriceX009`, `qohX009`) VALUES
(1, 'Part1', '10', 0),
(2, 'Part2', '11', 2),
(3, 'Part3', '12', 4),
(4, 'Part4', '13', 6),
(5, 'Part5', '14', 0),
(6, 'Part6', '15', 10),
(7, 'Part7', '16', 1),
(8, 'Part8', '17', 3),
(9, 'Part9', '18', 5),
(10, 'Part10', '19', 7);

-- --------------------------------------------------------

--
-- Table structure for table `PartsY009`
--

CREATE TABLE `PartsY009` (
  `partNoY009` int(11) NOT NULL,
  `partNameY009` varchar(255) NOT NULL,
  `currentPriceY009` decimal(10,0) NOT NULL,
  `qohY009` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PartsY009`
--

INSERT INTO `PartsY009` (`partNoY009`, `partNameY009`, `currentPriceY009`, `qohY009`) VALUES
(1, 'Part1', '10', 1),
(2, 'Part2', '7', 2),
(3, 'Part13', '12', 4),
(4, 'Part14', '13', 6),
(5, 'Part5', '14', 0),
(6, 'Part16', '15', 10),
(7, 'Part17', '16', 1),
(8, 'Part18', '17', 3),
(9, 'Part19', '18', 5),
(10, 'Part20', '19', 7);

-- --------------------------------------------------------

--
-- Table structure for table `POsX009`
--

CREATE TABLE `POsX009` (
  `poNoX009` int(11) NOT NULL,
  `clientCompIDX009` varchar(255) NOT NULL,
  `dateOfPOX009` date NOT NULL,
  `statusX009` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `POsY009`
--

CREATE TABLE `POsY009` (
  `poNoY009` int(11) NOT NULL,
  `clientCompIDY009` varchar(255) NOT NULL,
  `dateOfPOY009` date NOT NULL,
  `statusY009` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `POsZ009`
--

CREATE TABLE `POsZ009` (
  `poNoZ009` int(11) NOT NULL,
  `clientCompIDZ009` varchar(255) NOT NULL,
  `dateOfPOZ009` date NOT NULL,
  `statusZ009` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ClientsX009`
--
ALTER TABLE `ClientsX009`
  ADD PRIMARY KEY (`clientIdX009`);

--
-- Indexes for table `ClientsY009`
--
ALTER TABLE `ClientsY009`
  ADD PRIMARY KEY (`clientIdY009`);

--
-- Indexes for table `ClientsZ009`
--
ALTER TABLE `ClientsZ009`
  ADD PRIMARY KEY (`clientIdZ009`);

--
-- Indexes for table `LinesX009`
--
ALTER TABLE `LinesX009`
  ADD PRIMARY KEY (`poNoX009`,`lineNoX009`);

--
-- Indexes for table `LinesY009`
--
ALTER TABLE `LinesY009`
  ADD PRIMARY KEY (`poNoY009`,`lineNoY009`);

--
-- Indexes for table `LinesZ009`
--
ALTER TABLE `LinesZ009`
  ADD PRIMARY KEY (`poNoZ009`,`lineNoZ009`);

--
-- Indexes for table `PartsX009`
--
ALTER TABLE `PartsX009`
  ADD PRIMARY KEY (`partNoX009`);

--
-- Indexes for table `PartsY009`
--
ALTER TABLE `PartsY009`
  ADD PRIMARY KEY (`partNoY009`);

--
-- Indexes for table `POsX009`
--
ALTER TABLE `POsX009`
  ADD PRIMARY KEY (`poNoX009`);

--
-- Indexes for table `POsY009`
--
ALTER TABLE `POsY009`
  ADD PRIMARY KEY (`poNoY009`);

--
-- Indexes for table `POsZ009`
--
ALTER TABLE `POsZ009`
  ADD PRIMARY KEY (`poNoZ009`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
