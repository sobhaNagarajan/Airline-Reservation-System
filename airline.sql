-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2022 at 12:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `allfight`
--

CREATE TABLE `allfight` (
  `sno` int(11) NOT NULL,
  `Flight_No` varchar(20) NOT NULL,
  `Flight_Name` varchar(20) NOT NULL,
  `From_City` varchar(20) NOT NULL,
  `To_City` varchar(20) NOT NULL,
  `Departure_Time` time NOT NULL,
  `Arrival_Time` time NOT NULL,
  `Date` date NOT NULL,
  `Ticket_Price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allfight`
--

INSERT INTO `allfight` (`sno`, `Flight_No`, `Flight_Name`, `From_City`, `To_City`, `Departure_Time`, `Arrival_Time`, `Date`, `Ticket_Price`) VALUES
(4, 'get1010', 'getsetgo', 'madurai', 'marungoor', '18:01:00', '18:06:00', '2022-12-16', 20),
(5, 'set1808', 'getsetgo', 'nagercoil', 'mumbai', '19:06:00', '22:09:00', '2022-12-18', 200),
(6, 'kav123', 'getsetgo', 'suchindrum', 'chennai', '17:59:00', '22:04:00', '2022-12-30', 200),
(7, 'kav1808', 'getsetgo', 'kanyakumari', 'Pondy', '13:58:00', '17:02:00', '2022-12-25', 1500),
(8, 'set1212', 'asia', 'chennai', 'america', '20:10:00', '22:10:00', '2023-01-01', 500);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `sno` int(11) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `City` varchar(10) NOT NULL,
  `State` varchar(10) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `Country` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Contact` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`sno`, `Address`, `City`, `State`, `Zip`, `Country`, `Gender`, `Name`, `Email`, `DOB`, `Contact`) VALUES
(13, 'nagercoil', 'nagercoil', 'tamilnadu', '123467', 'india', 'Female', 'sobha', 'sobha@gmail.com', '2022-12-18', 976543);

-- --------------------------------------------------------

--
-- Table structure for table `tableone`
--

CREATE TABLE `tableone` (
  `sno` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tableone`
--

INSERT INTO `tableone` (`sno`, `Name`, `Email`, `Password`) VALUES
(15, 'Sudarmani', 'sund@gmail.com', 'Sundar@123'),
(16, 'mari', 'mari@gm', 'mari@222'),
(17, 'sobha', 'sobha@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allfight`
--
ALTER TABLE `allfight`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tableone`
--
ALTER TABLE `tableone`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allfight`
--
ALTER TABLE `allfight`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tableone`
--
ALTER TABLE `tableone`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
