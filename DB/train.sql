-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2021 at 06:15 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `train`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindatabase`
--

CREATE TABLE `admindatabase` (
  `UserID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `DoB` date NOT NULL,
  `Joined_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admindatabase`
--

INSERT INTO `admindatabase` (`UserID`, `Name`, `Email`, `Gender`, `password`, `DoB`, `Joined_on`) VALUES
(1, 'Admin', 'admin@gmail.com', 'M', '1234567', '2000-10-17', '2021-08-14 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `bustransactions`
--

CREATE TABLE `bustransactions` (
  `T_No.` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `dest` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Bus_No` int(11) NOT NULL,
  `NoOfpass` int(11) NOT NULL,
  `card_no` int(25) NOT NULL,
  `expmonth` int(2) NOT NULL,
  `expyear` int(2) NOT NULL,
  `cvv` int(3) NOT NULL,
  `pin` int(4) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp(),
  `Amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bustransactions`
--

INSERT INTO `bustransactions` (`T_No.`, `email`, `source`, `dest`, `Name`, `Bus_No`, `NoOfpass`, `card_no`, `expmonth`, `expyear`, `cvv`, `pin`, `Date`, `Amt`) VALUES
(2, 'akshayp@gmail.com', 'Chungi Choki', 'Rani Bazar', 'akshaypadave', 502, 2, 0, 0, 0, 0, 0, '2020-03-06 14:16:16', 5),
(9, 'akash@gmail.com', 'Digha Gaon', 'Shri Dhungargarh Railway Station', 'Akash', 502, 1, 154865168, 4, 23, 743, 1834, '2021-08-23 20:53:46', 5),
(10, 'akash@gmail.com', 'Bharat Bijali', 'Mukam Naka', 'Akash', 502, 1, 2147483647, 7, 25, 427, 1276, '2021-08-23 20:55:51', 5);

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `source` varchar(50) NOT NULL,
  `dest` varchar(50) NOT NULL,
  `class` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `Price` int(50) NOT NULL,
  `Route` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`source`, `dest`, `class`, `type`, `Price`, `Route`) VALUES
('Bikaner', 'Deshnok', 'Second', 'Single', 5, '-'),
('Bikaner', 'Nokha', 'Second', 'Single', 5, '-'),
('Bikaner', 'Napasar', 'Second', 'Single', 5, '-'),
('Bikaner', 'Ratangarh', 'Second', 'Single', 10, '-'),
('Bikaner', 'Shri Dhungargarh', 'Second', 'Single', 15, '- Palana -'),
('Bikaner', 'Deshnok', 'First', 'Single', 50, '-'),
('Bikaner', 'Nokha', 'First', 'Single', 50, '-'),
('Bikaner', 'Napasar', 'First', 'Single', 50, '-'),
('Bikaner', 'Ratangarh', 'First', 'Single', 75, '-'),
('Bikaner', 'Shri Dhungargarh', 'First', 'Single', 140, '- Palana -'),
('Deshnok', 'Bikaner', 'Second', 'Single', 5, '-'),
('Deshnok', 'Nokha', 'Second', 'Single', 5, '-'),
('Deshnok', 'Napasar', 'Second', 'Single', 5, '- Palana -'),
('Deshnok', 'Ratangarh', 'Second', 'Single', 5, '-'),
('Deshnok', 'Shri Dhungargarh', 'Second', 'Single', 15, '- Palana -'),
('Deshnok', 'Bikaner', 'First', 'Single', 50, '-'),
('Deshnok', 'Nokha', 'First', 'Single', 50, '-'),
('Deshnok', 'Napasar', 'First', 'Single', 50, '-'),
('Deshnok', 'Ratangarh', 'First', 'Single', 50, '-'),
('Deshnok', 'Shri Dhungargarh', 'First', 'Single', 140, '- Palana -'),
('Nokha', 'Bikaner', 'Second', 'Single', 5, '-'),
('Nokha', 'Deshnok', 'Second', 'Single', 5, '-'),
('Nokha', 'Napasar', 'Second', 'Single', 5, '-'),
('Nokha', 'Ratangarh', 'Second', 'Single', 5, '-'),
('Nokha', 'Shri Dhungargarh', 'Second', 'Single', 15, '- Palana -'),
('Nokha', 'Bikaner', 'First', 'Single', 50, '-'),
('Nokha', 'Deshnok', 'First', 'Single', 50, '-'),
('Nokha', 'Napasar', 'First', 'Single', 50, '-'),
('Nokha', 'Ratangarh', 'First', 'Single', 50, '-'),
('Nokha', 'Shri Dhungargarh', 'First', 'Single', 110, '- Palana -'),
('Napasar', 'Bikaner', 'Second', 'Single', 5, '-'),
('Napasar', 'Deshnok', 'Second', 'Single', 5, '-'),
('Napasar', 'Nokha', 'Second', 'Single', 5, '-'),
('Napasar', 'Ratangarh', 'Second', 'Single', 5, '-'),
('Napasar', 'Shri Dhungargarh', 'Second', 'Single', 15, '- Palana -'),
('Napasar', 'Bikaner', 'First', 'Single', 50, '-'),
('Napasar', 'Deshnok', 'First', 'Single', 50, '-'),
('Napasar', 'Nokha', 'First', 'Single', 50, '-'),
('Napasar', 'Ratangarh', 'First', 'Single', 50, '-'),
('Napasar', 'Shri Dhungargarh', 'First', 'Single', 110, '- Palana -'),
('Ratangarh', 'Bikaner', 'Second', 'Single', 10, '-'),
('Ratangarh', 'Deshnok', 'Second', 'Single', 5, '-'),
('Ratangarh', 'Nokha', 'Second', 'Single', 5, '-'),
('Ratangarh', 'Napasar', 'Second', 'Single', 5, '-'),
('Ratangarh', 'Shri Dhungargarh', 'Second', 'Single', 10, '- Palana -'),
('Ratangarh', 'Bikaner', 'First', 'Single', 75, '-'),
('Ratangarh', 'Deshnok', 'First', 'Single', 50, '-'),
('Ratangarh', 'Nokha', 'First', 'Single', 50, '-'),
('Ratangarh', 'Napasar', 'First', 'Single', 50, '-'),
('Ratangarh', 'Shri Dhungargarh', 'First', 'Single', 105, '- Palana -'),
('Shri Dhungargarh', 'Bikaner', 'Second', 'Single', 15, '- Palana -'),
('Shri Dhungargarh', 'Deshnok', 'Second', 'Single', 15, '- Palana -'),
('Shri Dhungargarh', 'Nokha', 'Second', 'Single', 15, '- Palana -'),
('Shri Dhungargarh', 'Napasar', 'Second', 'Single', 15, '- Palana -'),
('Shri Dhungargarh', 'Ratangarh', 'Second', 'Single', 10, '- Palana -'),
('Shri Dhungargarh', 'Bikaner', 'First', 'Single', 140, '- Palana -'),
('Shri Dhungargarh', 'Deshnok', 'First', 'Single', 140, '- Palana -'),
('Shri Dhungargarh', 'Nokha', 'First', 'Single', 110, '- Palana -'),
('Shri Dhungargarh', 'Napasar', 'First', 'Single', 110, '- Palana -'),
('Shri Dhungargarh', 'Ratangarh', 'First', 'Single', 105, '- Palana -'),
('Bikaner', 'Deshnok', 'A.C', 'Single', 60, '-'),
('Bikaner', 'Nokha', 'A.C', 'Single', 60, '-'),
('Bikaner', 'Napasar', 'A.C', 'Single', 60, '-'),
('Bikaner', 'Ratangarh', 'A.C', 'Single', 85, '-'),
('Bikaner', 'Shri Dhungargarh', 'A.C', 'Single', 165, '- Palana -'),
('Deshnok', 'Bikaner', 'A.C', 'Single', 60, '-'),
('Deshnok', 'Nokha', 'A.C', 'Single', 60, '-'),
('Deshnok', 'Napasar', 'A.C', 'Single', 60, '-'),
('Deshnok', 'Ratangarh', 'A.C', 'Single', 60, '-'),
('Deshnok', 'Shri Dhungargarh', 'A.C', 'Single', 165, '- Palana -'),
('Nokha', 'Bikaner', 'A.C', 'Single', 60, '-'),
('Nokha', 'Deshnok', 'A.C', 'Single', 60, '-'),
('Nokha', 'Napasar', 'A.C', 'Single', 60, '-'),
('Nokha', 'Ratangarh', 'A.C', 'Single', 60, '-'),
('Nokha', 'Shri Dhungargarh', 'A.C', 'Single', 130, '- Palana -'),
('Napasar', 'Bikaner', 'A.C', 'Single', 60, '-'),
('Napasar', 'Deshnok', 'A.C', 'Single', 60, '-'),
('Napasar', 'Nokha', 'A.C', 'Single', 60, '-'),
('Napasar', 'Ratangarh', 'A.C', 'Single', 60, '-'),
('Napasar', 'Shri Dhungargarh', 'A.C', 'Single', 130, '- Palana -'),
('Ratangarh', 'Bikaner', 'A.C', 'Single', 860, '-'),
('Ratangarh', 'Deshnok', 'A.C', 'Single', 60, '-'),
('Ratangarh', 'Nokha', 'A.C', 'Single', 60, '-'),
('Ratangarh', 'Napasar', 'A.C', 'Single', 60, '-'),
('Ratangarh', 'Shri Dhungargarh', 'A.C', 'Single', 125, '- Palana -'),
('Shri Dhungargarh', 'Bikaner', 'A.C', 'Single', 165, '-'),
('Shri Dhungargarh', 'Deshnok', 'A.C', 'Single', 165, '- Palana -'),
('Shri Dhungargarh', 'Nokha', 'A.C', 'Single', 130, '- Palana -'),
('Shri Dhungargarh', 'Napasar', 'A.C', 'Single', 130, '- Palana -'),
('Shri Dhungargarh', 'Ratangarh', 'A.C', 'Single', 125, '- Palana -'),
('Bikaner', 'Shri Dhungargarh', 'Second', 'Single', 15, '- Gangasar -'),
('Bikaner', 'Shri Dhungargarh', 'First', 'Single', 140, '- Gangasar -'),
('Bikaner', 'Shri Dhungargarh', 'A.C', 'Single', 170, '- Gangasar -'),
('Deshnok', 'Shri Dhungargarh', 'Second', 'Single', 15, '- Gangasar -'),
('Deshnok', 'Shri Dhungargarh', 'First', 'Single', 140, '- Gangasar -'),
('Deshnok', 'Shri Dhungargarh', 'A.C', 'Single', 165, '- Gangasar -'),
('Nokha', 'Shri Dhungargarh', 'Second', 'Single', 15, '- Gangasar -'),
('Nokha', 'Shri Dhungargarh', 'First', 'Single', 150, '- Gangasar -'),
('Nokha', 'Shri Dhungargarh', 'A.C', 'Single', 165, '- Gangasar -'),
('Napasar', 'Shri Dhungargarh', 'Second', 'Single', 15, '- Gangasar -'),
('Napasar', 'Shri Dhungargarh', 'First', 'Single', 110, '- Gangasar -'),
('Napasar', 'Shri Dhungargarh', 'A.C', 'Single', 130, '- Gangasar -'),
('Ratangarh', 'Shri Dhungargarh', 'Second', 'Single', 10, '- Gangasar -'),
('Ratangarh', 'Shri Dhungargarh', 'First', 'Single', 105, '- Gangasar -'),
('Ratangarh', 'Shri Dhungargarh', 'A.C', 'Single', 125, '- Gangasar -'),
('Shri Dhungargarh', 'Bikaner', 'Second', 'Single', 15, '- Gangasar -'),
('Shri Dhungargarh', 'Deshnok', 'Second', 'Single', 15, '- Gangasar -'),
('Shri Dhungargarh', 'Nokha', 'Second', 'Single', 15, '- Gangasar -'),
('Shri Dhungargarh', 'Napasar', 'Second', 'Single', 15, '- Gangasar -'),
('Shri Dhungargarh', 'Ratangarh', 'Second', 'Single', 10, '- Gangasar -'),
('Shri Dhungargarh', 'Bikaner', 'First', 'Single', 140, '- Gangasar -'),
('Shri Dhungargarh', 'Deshnok', 'First', 'Single', 140, '- Gangasar -'),
('Shri Dhungargarh', 'Nokha', 'First', 'Single', 140, '- Gangasar -'),
('Shri Dhungargarh', 'Napasar', 'First', 'Single', 110, '- Gangasar -'),
('Shri Dhungargarh', 'Ratangarh', 'First', 'Single', 105, '- Gangasar -'),
('Shri Dhungargarh', 'Bikaner', 'A.C', 'Single', 165, '- Gangasar -'),
('Shri Dhungargarh', 'Deshnok', 'A.C', 'Single', 165, '- Gangasar -'),
('Shri Dhungargarh', 'Nokha', 'A.C', 'Single', 165, '- Gangasar -'),
('Shri Dhungargarh', 'Napasar', 'A.C', 'Single', 130, '- Gangasar -'),
('Shri Dhungargarh', 'Ratangarh', 'A.C', 'Single', 125, '- Gangasar -'),
('Bikaner', 'Deshnok', 'Second', 'Return', 10, '-'),
('Bikaner', 'Nokha', 'Second', 'Return', 10, '-'),
('Bikaner', 'Napasar', 'Second', 'Return', 10, '-'),
('Bikaner', 'Ratangarh', 'Second', 'Return', 20, '-'),
('Bikaner', 'Shri Dhungargarh', 'Second', 'Return', 30, '- Palana -'),
('Bikaner', 'Deshnok', 'First', 'Return', 100, '-'),
('Bikaner', 'Nokha', 'First', 'Return', 100, '-'),
('Bikaner', 'Napasar', 'First', 'Return', 100, '-'),
('Bikaner', 'Ratangarh', 'First', 'Return', 150, '-'),
('Bikaner', 'Shri Dhungargarh', 'First', 'Return', 280, '- Palana -'),
('Deshnok', 'Bikaner', 'Second', 'Return', 10, '-'),
('Deshnok', 'Nokha', 'Second', 'Return', 10, '-'),
('Deshnok', 'Napasar', 'Second', 'Return', 10, '-'),
('Deshnok', 'Ratangarh', 'Second', 'Return', 10, '-'),
('Deshnok', 'Shri Dhungargarh', 'Second', 'Return', 30, '- Palana -'),
('Deshnok', 'Bikaner', 'First', 'Return', 100, '-'),
('Deshnok', 'Nokha', 'First', 'Return', 100, '-'),
('Deshnok', 'Napasar', 'First', 'Return', 100, '-'),
('Deshnok', 'Shri Dhungargarh', 'First', 'Return', 280, '- Palana -'),
('Nokha', 'Bikaner', 'Second', 'Return', 10, '-'),
('Nokha', 'Deshnok', 'Second', 'Return', 10, '-'),
('Nokha', 'Napasar', 'Second', 'Return', 10, '-'),
('Nokha', 'Ratangarh', 'Second', 'Return', 10, '-'),
('Nokha', 'Shri Dhungargarh', 'Second', 'Return', 30, '- Palana -'),
('Nokha', 'Bikaner', 'First', 'Return', 100, '-'),
('Nokha', 'Deshnok', 'First', 'Return', 100, '-'),
('Nokha', 'Napasar', 'First', 'Return', 100, '-'),
('Nokha', 'Ratangarh', 'First', 'Return', 100, '-'),
('Nokha', 'Shri Dhungargarh', 'First', 'Return', 220, '- Palana -'),
('Napasar', 'Bikaner', 'Second', 'Return', 10, '-'),
('Napasar', 'Deshnok', 'Second', 'Return', 10, '-'),
('Napasar', 'Nokha', 'Second', 'Return', 10, '-'),
('Napasar', 'Ratangarh', 'Second', 'Return', 10, '-'),
('Napasar', 'Shri Dhungargarh', 'Second', 'Return', 30, '- Palana -'),
('Napasar', 'Bikaner', 'First', 'Return', 100, '-'),
('Napasar', 'Deshnok', 'First', 'Return', 100, '-'),
('Napasar', 'Nokha', 'First', 'Return', 100, '-'),
('Napasar', 'Ratangarh', 'First', 'Return', 100, '-'),
('Napasar', 'Shri Dhungargarh', 'First', 'Return', 220, '- Palana -'),
('Ratangarh', 'Bikaner', 'Second', 'Return', 20, '-'),
('Ratangarh', 'Deshnok', 'Second', 'Return', 10, '-'),
('Ratangarh', 'Nokha', 'Second', 'Return', 10, '-'),
('Ratangarh', 'Napasar', 'Second', 'Return', 10, '-'),
('Ratangarh', 'Shri Dhungargarh', 'Second', 'Return', 20, '- Palana -'),
('Ratangarh', 'Bikaner', 'First', 'Return', 150, '-'),
('Ratangarh', 'Deshnok', 'First', 'Return', 100, '-'),
('Ratangarh', 'Nokha', 'First', 'Return', 100, '-'),
('Ratangarh', 'Napasar', 'First', 'Return', 100, '-'),
('Ratangarh', 'Shri Dhungargarh', 'First', 'Return', 210, '- Palana -'),
('Shri Dhungargarh', 'Bikaner', 'Second', 'Return', 30, '- Palana -'),
('Shri Dhungargarh', 'Deshnok', 'Second', 'Return', 30, '- Palana -'),
('Shri Dhungargarh', 'Nokha', 'Second', 'Return', 30, '- Palana -'),
('Shri Dhungargarh', 'Napasar', 'Second', 'Return', 30, '- Palana -'),
('Shri Dhungargarh', 'Ratangarh', 'Second', 'Return', 20, '- Palana -'),
('Shri Dhungargarh', 'Bikaner', 'First', 'Return', 280, '- Palana -'),
('Shri Dhungargarh', 'Deshnok', 'First', 'Return', 280, '- Palana -'),
('Shri Dhungargarh', 'Nokha', 'First', 'Return', 220, '- Palana -'),
('Shri Dhungargarh', 'Napasar', 'First', 'Return', 220, '- Palana -'),
('Shri Dhungargarh', 'Ratangarh', 'First', 'Return', 210, '- Palana -'),
('Bikaner', 'Deshnok', 'A.C', 'Return', 120, '-'),
('Bikaner', 'Nokha', 'A.C', 'Return', 120, '-'),
('Bikaner', 'Napasar', 'A.C', 'Return', 120, '-'),
('Bikaner', 'Ratangarh', 'A.C', 'Return', 170, '-'),
('Bikaner', 'Shri Dhungargarh', 'A.C', 'Return', 330, '- Palana -'),
('Deshnok', 'Bikaner', 'A.C', 'Return', 120, '-'),
('Deshnok', 'Nokha', 'A.C', 'Return', 120, '-'),
('Deshnok', 'Napasar', 'A.C', 'Return', 120, '-'),
('Deshnok', 'Ratangarh', 'A.C', 'Return', 120, '-'),
('Deshnok', 'Shri Dhungargarh', 'A.C', 'Return', 330, '- Palana -'),
('Nokha', 'Bikaner', 'A.C', 'Return', 120, '-'),
('Nokha', 'Deshnok', 'A.C', 'Return', 120, '-'),
('Nokha', 'Napasar', 'A.C', 'Return', 120, '-'),
('Nokha', 'Ratangarh', 'A.C', 'Return', 120, '-'),
('Nokha', 'Shri Dhungargarh', 'A.C', 'Return', 260, '- Palana -'),
('Napasar', 'Bikaner', 'A.C', 'Return', 120, '-'),
('Napasar', 'Deshnok', 'A.C', 'Return', 120, '-'),
('Napasar', 'Nokha', 'A.C', 'Return', 120, '-'),
('Napasar', 'Ratangarh', 'A.C', 'Return', 120, '-'),
('Napasar', 'Shri Dhungargarh', 'A.C', 'Return', 260, '- Palana -'),
('Ratangarh', 'Bikaner', 'A.C', 'Return', 1720, '-'),
('Ratangarh', 'Deshnok', 'A.C', 'Return', 120, '-'),
('Ratangarh', 'Nokha', 'A.C', 'Return', 120, '-'),
('Ratangarh', 'Napasar', 'A.C', 'Return', 120, '-'),
('Ratangarh', 'Shri Dhungargarh', 'A.C', 'Return', 250, '- Palana -'),
('Shri Dhungargarh', 'Bikaner', 'A.C', 'Return', 330, '-'),
('Shri Dhungargarh', 'Deshnok', 'A.C', 'Return', 330, '- Palana -'),
('Shri Dhungargarh', 'Nokha', 'A.C', 'Return', 260, '- Palana -'),
('Shri Dhungargarh', 'Napasar', 'A.C', 'Return', 260, '- Palana -'),
('Shri Dhungargarh', 'Ratangarh', 'A.C', 'Return', 250, '- Palana -'),
('Bikaner', 'Shri Dhungargarh', 'Second', 'Return', 30, '- Gangasar -'),
('Bikaner', 'Shri Dhungargarh', 'First', 'Return', 280, '- Gangasar -'),
('Bikaner', 'Shri Dhungargarh', 'A.C', 'Return', 340, '- Gangasar -'),
('Deshnok', 'Shri Dhungargarh', 'Second', 'Return', 30, '- Gangasar -'),
('Deshnok', 'Shri Dhungargarh', 'First', 'Return', 280, '- Gangasar -'),
('Deshnok', 'Shri Dhungargarh', 'A.C', 'Return', 330, '- Gangasar -'),
('Nokha', 'Shri Dhungargarh', 'Second', 'Return', 30, '- Gangasar -'),
('Nokha', 'Shri Dhungargarh', 'First', 'Return', 300, '- Gangasar -'),
('Nokha', 'Shri Dhungargarh', 'A.C', 'Return', 330, '- Gangasar -'),
('Napasar', 'Shri Dhungargarh', 'Second', 'Return', 30, '- Gangasar -'),
('Napasar', 'Shri Dhungargarh', 'First', 'Return', 220, '- Gangasar -'),
('Napasar', 'Shri Dhungargarh', 'A.C', 'Return', 260, '- Gangasar -'),
('Ratangarh', 'Shri Dhungargarh', 'Second', 'Return', 20, '- Gangasar -'),
('Ratangarh', 'Shri Dhungargarh', 'First', 'Return', 210, '- Gangasar -'),
('Ratangarh', 'Shri Dhungargarh', 'A.C', 'Return', 250, '- Gangasar -'),
('Shri Dhungargarh', 'Bikaner', 'Second', 'Return', 30, '- Gangasar -'),
('Shri Dhungargarh', 'Deshnok', 'Second', 'Return', 30, '- Gangasar -'),
('Shri Dhungargarh', 'Nokha', 'Second', 'Return', 30, '- Gangasar -'),
('Shri Dhungargarh', 'Napasar', 'Second', 'Return', 30, '- Gangasar -'),
('Shri Dhungargarh', 'Ratangarh', 'Second', 'Return', 20, '- Gangasar -'),
('Shri Dhungargarh', 'Bikaner', 'First', 'Return', 280, '- Gangasar -'),
('Shri Dhungargarh', 'Deshnok', 'First', 'Return', 280, '- Gangasar -'),
('Shri Dhungargarh', 'Nokha', 'First', 'Return', 280, '- Gangasar -'),
('Shri Dhungargarh', 'Napasar', 'First', 'Return', 220, '- Gangasar -'),
('Shri Dhungargarh', 'Ratangarh', 'First', 'Return', 210, '- Gangasar -'),
('Shri Dhungargarh', 'Bikaner', 'A.C', 'Return', 330, '- Gangasar -'),
('Shri Dhungargarh', 'Deshnok', 'A.C', 'Return', 330, '- Gangasar -'),
('Shri Dhungargarh', 'Nokha', 'A.C', 'Return', 330, '- Gangasar -'),
('Shri Dhungargarh', 'Napasar', 'A.C', 'Return', 260, '- Gangasar -'),
('Shri Dhungargarh', 'Ratangarh', 'A.C', 'Return', 250, '- Gangasar -');



-- --------------------------------------------------------

--
-- Table structure for table `pricebus`
--

CREATE TABLE `pricebus` (
  `No.` int(15) NOT NULL,
  `Bus_No.` int(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `dest` varchar(50) NOT NULL,
  `Price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricebus`
--

INSERT INTO `pricebus` (`No.`, `Bus_No.`, `source`, `dest`, `Price`) VALUES
(1, 502, 'Chungi Choki', 'Pugal Phanta', 10),
(2, 502, 'Chungi Choki', 'Gangasar Stand', 30),
(3, 502, 'Chungi Choki', 'ECB Collage', 20),
(4, 502, 'Chungi Choki', 'Ganganagar Choraya', 20),
(5, 502, 'Chungi Choki', 'Rani Bazar', 30),
(6, 502, 'Rani Bazar', 'Pugal Phanta', 30),
(7, 502, 'Rani Bazar', 'Gangasar Stand', 10),
(8, 502, 'Rani Bazar', 'ECB Collage', 30),
(9, 502, 'Rani Bazar', 'Ganganagar Choraya', 20),
(10, 502, 'Rani Bazar', 'Chungi Choki', 30),
(11, 502, 'Ganganagar Choraya', 'Pugal Phanta', 20),
(12, 502, 'Ganganagar Choraya', 'Gangasar Stand', 20),
(13, 502, 'Ganganagar Choraya', 'ECB Collage', 10),
(14, 502, 'Ganganagar Choraya', 'Rani Bazar', 20),
(15, 502, 'Ganganagar Choraya', 'Chungi Choki', 20),
(16, 502, 'ECB Collage', 'Pugal Phanta', 10),
(17, 502, 'ECB Collage', 'Gangasar Stand', 30),
(18, 502, 'ECB Collage', 'Ganganagar Choraya', 10),
(19, 502, 'ECB Collage', 'Rani Bazar', 30),
(20, 502, 'ECB Collage', 'Chungi Choki', 20),
(21, 502, 'Gangasar Stand', 'Pugal Phanta', 30),
(22, 502, 'Gangasar Stand', 'ECB Collage', 30),
(23, 502, 'Gangasar Stand', 'Ganganagar Choraya', 20),
(24, 502, 'Gangasar Stand', 'Rani Bazar', 20),
(25, 502, 'Gangasar Stand', 'Chungi Choki', 30),
(26, 502, 'Pugal Phanta', 'Gangasar Stand', 30),
(27, 502, 'Pugal Phanta', 'ECB Collage', 10),
(28, 502, 'Pugal Phanta', 'Ganganagar Choraya', 20),
(29, 502, 'Pugal Phanta', 'Rani Bazar', 30),
(30, 502, 'Pugal Phanta', 'Chungi Choki', 10);

-- --------------------------------------------------------

--
-- Table structure for table `traintt`
--

CREATE TABLE `traintt` (
  `Bikaner` varchar(5) DEFAULT NULL,
  `Deshnok` varchar(5) DEFAULT NULL,
  `Nokha` varchar(5) DEFAULT NULL,
  `Napasar` varchar(5) DEFAULT NULL,
  `Ratangarh` varchar(5) DEFAULT NULL,
  `Shri Dhungargarh` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `traintt`
--

INSERT INTO `traintt` (`Bikaner`, `Deshnok`, `Nokha`, `Napasar`, `Ratangarh`,  `Shri Dhungargarh`) VALUES
('04:33', '04:38', '04:41', '04:44', '04:48', '04:52'),
('04:53', '04:58', '05:01', '05:04', '05:08', '05:12'),
('05:21', '05:26', '05:29', '05:32', '05:36', '05:40'),
('05:44', '05:49', '05:52', '05:55', '05:59', '06:03'),
('06:17', '06:22', '06:25', '06:28', '06:32', '06:36'),
('06:37', '06:42', '06:45', '06:48', '06:52', '06:56'),
('07:01', '07:06', '07:09', '07:12', '07:16', '07:20'),
('07:19', '07:24', '07:27', '07:30', '07:34', '07:38'),
('07:43', '07:48', '07:51', '07:54', '07:58', '08:02'),
('08:04', '08:09', '08:12', '08:15', '08:19', '08:23'),
('09:01', '09:06', '09:09', '09:12', '09:16', '09:20'),
('09:48', '09:53', '09:56', '09:59', '10:03', '10:07'),
('10:41', '10:46', '10:49', '10:52', '10:56', '11:00'),
('11:02', '11:07', '11:10', '11:13', '11:17', '11:21'),
('12:19', '12:24', '12:27', '12:30', '12:34', '12:38'),
('13:04', '13:09', '13:12', '13:15', '13:19', '13:23'),
('13:57', '14:02', '14:05', '14:08', '14:12', '14:16'),
('14:24', '14:29', '14:32', '14:35', '14:39', '14:43'),
('15:04', '15:09', '15:12', '15:15', '15:19', '15:23'),
('15:36', '15:41', '15:44', '15:47', '15:51', '15:55'),
('15:53', '15:58', '16:01', '16:04', '16:08', '16:12'),
('16:14', '16:19', '16:22', '16:25', '16:29', '16:33'),
('16:26', '16:31', '16:34', '16:37', '16:41', '16:45'),
('17:12', '17:17', '17:20', '17:23', '17:27', '17:31'),
('17:37', '17:42', '17:45', '17:48', '17:52', '17:56'),
('17:57', '18:02', '18:05', '18:08', '18:12', '18:16'),
('18:21', '18:26', '18:29', '18:32', '18:36', '18:40'),
('19:01', '19:06', '19:09', '19:12', '19:16', '19:20'),
('19:31', '19:36', '19:39', '19:42', '19:46', '19:50'),
('20:19', '20:24', '20:27', '20:30', '20:34', '20:38'),
('20:52', '20:57', '21:00', '21:03', '21:07', '21:11'),
('21:20', '21:25', '21:28', '21:31', '21:35', '21:39'),
('22:11', '22:16', '22:19', '22:22', '22:26', '22:30'),
('23:18', '23:23', '23:26', '23:29', '23:33', '23:37');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `T_No.` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `dest` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Class` varchar(25) NOT NULL,
  `Type` varchar(25) NOT NULL,
  `NoOfpass` int(11) NOT NULL,
  `card_no` int(25) NOT NULL,
  `expmonth` int(2) NOT NULL,
  `expyear` int(2) NOT NULL,
  `cvv` int(3) NOT NULL,
  `pin` int(4) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp(),
  `Amt` int(10) NOT NULL,
  `Route` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`T_No.`, `email`, `source`, `dest`, `Name`, `Class`, `Type`, `NoOfpass`, `card_no`, `expmonth`, `expyear`, `cvv`, `pin`, `Date`, `Amt`, `Route`) VALUES
(54, 'akash@gmail.com', 'Deshnok', 'Ratangarh', 'Akash', 'Second', 'Single', 2, 5416, 0, 0, 0, 0, '2021-08-23 20:53:06', 10, 'Deshnok-Ratangarh'),
(55, 'akash@gmail.com', 'Saruna', 'Bikaner', 'Akash', 'First', 'Return', 5, 2147483647, 7, 25, 468, 7613, '2021-08-23 20:54:48', 1050, 'Saruna- Gangasar -Bikaner');

-- --------------------------------------------------------

--
-- Table structure for table `userdatabase`
--

CREATE TABLE `userdatabase` (
  `UserID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `DoB` date NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Joined_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdatabase`
--

INSERT INTO `userdatabase` (`UserID`, `Name`, `Email`, `Gender`, `password`, `DoB`, `Phone`, `Joined_on`) VALUES
(48, 'Akash', 'akash@gmail.com', 'M', '1234', '2001-04-11', '4578962148', '2021-08-23 15:01:08'),
(49, 'prakash', 'prakash45@gmail.com', 'M', '45prakash', '2005-05-06', '7943258617', '2021-08-23 15:02:49'),
(50, 'Nikhil', 'nikhilm25@gmail.com', 'M', 'nikhil126', '1999-06-09', '7718649523', '2021-08-23 15:04:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bustransactions`
--
ALTER TABLE `bustransactions`
  ADD PRIMARY KEY (`T_No.`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`T_No.`);

--
-- Indexes for table `userdatabase`
--
ALTER TABLE `userdatabase`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bustransactions`
--
ALTER TABLE `bustransactions`
  MODIFY `T_No.` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `T_No.` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `userdatabase`
--
ALTER TABLE `userdatabase`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
