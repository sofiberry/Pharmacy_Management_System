-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 08:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenttbl`
--

CREATE TABLE `agenttbl` (
  `aid` int(11) NOT NULL,
  `agentName` varchar(20) NOT NULL,
  `agentAge` int(11) NOT NULL,
  `aPhone` varchar(20) NOT NULL,
  `aPassword` varchar(20) NOT NULL,
  `aGender` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agenttbl`
--

INSERT INTO `agenttbl` (`aid`, `agentName`, `agentAge`, `aPhone`, `aPassword`, `aGender`) VALUES
(1, 'Solomon Belay', 18, '09328324323', '12345', 'Male'),
(2, 'Yihun Shekuri', 23, '0974557689', '123456', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `companytbl`
--

CREATE TABLE `companytbl` (
  `cid` int(11) NOT NULL,
  `compName` varchar(50) NOT NULL,
  `compAddress` varchar(30) NOT NULL,
  `Experience` int(11) NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companytbl`
--

INSERT INTO `companytbl` (`cid`, `compName`, `compAddress`, `Experience`, `Phone`) VALUES
(1, 'aastu_pharma', 'kilinto', 5, '0283992839'),
(2, 'medec_pharma', 'CMC', 2, '0987654321'),
(3, 'aberash_pharma', 'Alem Bank', 10, '091234567890');

-- --------------------------------------------------------

--
-- Table structure for table `history_sales`
--

CREATE TABLE `history_sales` (
  `MedName` varchar(40) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `SaleByAgent` varchar(40) NOT NULL,
  `SaledIn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_sales`
--

INSERT INTO `history_sales` (`MedName`, `Qty`, `Price`, `Total`, `SaleByAgent`, `SaledIn`) VALUES
('panadol', 40, 5, 200, 'Solomon', '2023-06-22 20:13:16'),
('amoxil', 1, 3, 3, 'Solomon Belay', '2023-06-05 14:24:40'),
('amoxil', 1, 3, 3, 'Solomon Belay', '2023-06-05 14:26:55'),
('amoxil', 10, 3, 30, 'Yihun Shekuri', '2023-06-05 14:34:14'),
('amoxil', 5, 3, 15, 'Yihun Shekuri', '2023-06-05 14:37:10'),
('advil', 10, 10, 100, 'Solomon Belay', '2023-06-05 14:38:50'),
('amoxil', 3, 3, 9, 'Solomon Belay', '2023-06-09 06:15:08'),
('advil', 20, 10, 200, 'Solomon Belay', '2023-06-09 07:47:09'),
('advil', 2, 10, 20, 'Solomon Belay', '2023-06-09 07:50:22'),
('advil', 2, 10, 20, 'Solomon Belay', '2023-06-09 07:50:26'),
('novalo', 100, 20, 2000, 'Solomon Belay', '2023-06-09 09:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `medicinetbl`
--

CREATE TABLE `medicinetbl` (
  `MedId` int(11) NOT NULL,
  `MedName` varchar(20) NOT NULL,
  `MedPrice` int(11) NOT NULL,
  `MedQty` int(11) NOT NULL,
  `MedFab` date NOT NULL,
  `MedExp` date NOT NULL,
  `MedComp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicinetbl`
--

INSERT INTO `medicinetbl` (`MedId`, `MedName`, `MedPrice`, `MedQty`, `MedFab`, `MedExp`, `MedComp`) VALUES
(1, 'amoxil', 3, 92, '2023-06-11', '2023-06-30', 'aastu_pharma'),
(2, 'panadol', 5, 10, '2020-10-18', '2024-06-12', 'medec_pharma'),
(3, 'advil', 10, 276, '2022-06-05', '2023-06-25', 'aastu_pharma'),
(4, 'novalo', 20, 100, '2022-06-08', '2023-06-13', 'aastu_pharma');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenttbl`
--
ALTER TABLE `agenttbl`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `companytbl`
--
ALTER TABLE `companytbl`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `medicinetbl`
--
ALTER TABLE `medicinetbl`
  ADD PRIMARY KEY (`MedId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medicinetbl`
--
ALTER TABLE `medicinetbl`
  MODIFY `MedId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
