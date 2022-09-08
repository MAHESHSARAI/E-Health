-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2022 at 03:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_healthcsyst`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `sno` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `docid` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `consultancyfees` varchar(50) NOT NULL,
  `userstatus` varchar(255) NOT NULL,
  `doctorstatus` varchar(50) NOT NULL,
  `action` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`sno`, `userid`, `docid`, `specialization`, `disease`, `appointmentdate`, `appointmenttime`, `consultancyfees`, `userstatus`, `doctorstatus`, `action`) VALUES
(2, 'sharmila', 'Adams', 'Dermatology', 'headache(5days)', '2020-10-20', '10:00:00', '$ 1000/-', '0', '1', 0),
(6, 'adminJ', 'Lewis Parole', 'Orthopedic', '6', '2022-09-03', '14:00:00', '$ 1200/-', '1', '1', 1),
(8, 'admin', 'Lewis Parole', 'Orthopedic', 'abdominal pains (5days)', '2022-09-26', '16:00:00', 'Rs 1200/-', '1', '1', 0),
(9, 'Jeffrey Smith', 'Jerry', 'Emergency', 'abdominal pain', '2022-09-13', '12:00:00', '$ 500', '1', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` bigint(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`firstname`, `lastname`, `email`, `phoneno`, `message`) VALUES
('E_Healthcare', 'Coordination System', 'E_healthcarecoordinationSystem@gmail.com', 6385470031, 'hi, hello, are you working 24/7?'),
('Heal', 'Me', 'patient@gmail.com', 8098108869, 'Hi, am sickly, I have a doubt ');

-- --------------------------------------------------------

--
-- Table structure for table `doctable`
--

CREATE TABLE `doctable` (
  `docid` varchar(50) NOT NULL,
  `docname` varchar(50) NOT NULL,
  `specilaization` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirmpassword` varchar(50) NOT NULL,
  `consultancyfees` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctable`
--

INSERT INTO `doctable` (`docid`, `docname`, `specilaization`, `password`, `confirmpassword`, `consultancyfees`) VALUES
('Jerry ', 'Dr Khalid Abbed', 'Emergency', '123', '123', '$ 500/-'),
('Jon Snow', 'Dharma Devan', 'Neurology', '123', '123', '$ 1500/-');

-- --------------------------------------------------------

--
-- Table structure for table `pattable`
--

CREATE TABLE `pattable` (
  `fullname` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` bigint(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pattable`
--

INSERT INTO `pattable` (`fullname`, `userid`, `email`, `phoneno`, `password`, `gender`) VALUES
('Jaret Mukono', 'admin', 'kimumamukono@gmail.com', 703344089, '5761Jerrykim!', 'Male'),
('Junior', 'adminJ', 'juniourJ@gmail.com', 745420896, '5761Jerrykim!', 'Male'),
('Jeffrey Smith', 'Jeffrey Smith', 'JSmith@gmail.com', 703344089, '123', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `sno` int(11) NOT NULL,
  `docid` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `mailid` varchar(50) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `adate` date NOT NULL,
  `atime` time NOT NULL,
  `gender` varchar(10) NOT NULL,
  `cfees` varchar(50) NOT NULL,
  `disease` varchar(50) NOT NULL,
  `medicine` varchar(50) NOT NULL,
  `meet` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`sno`, `docid`, `userid`, `fullname`, `mailid`, `mobile`, `adate`, `atime`, `gender`, `cfees`, `disease`, `medicine`, `meet`, `message`, `status`) VALUES
(1, 'Joseph', 'Gabriel', 'Joseph Hadson', 'josephG@gmail.com', 6385470031, '2020-10-05', '16:00:00', 'male', '$ 1000/-', 'fever(10days)', 'Aspirin', 'Not need', 'Do not drink cool drinks', 1),
(3, 'Lewis Jonh', 'adminJ', 'Junior', 'juniourJ@gmail.com', 745420896, '2022-09-03', '14:00:00', 'Male', '$ 1200/-', '6', 'panadol', 'no need', 'take panadol', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `doctable`
--
ALTER TABLE `doctable`
  ADD PRIMARY KEY (`docid`);

--
-- Indexes for table `pattable`
--
ALTER TABLE `pattable`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
