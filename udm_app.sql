-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Jun 25, 2024 at 03:58 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udm_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `major` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentID`, `name`, `age`, `gender`, `grade`, `status`, `major`, `email`, `phone_number`, `address`) VALUES
(2001, 'Maria Santos', 18, 'Female', 'BSCOE-11', 'Regular', 'Computer Engineering', 'maria.santos@example.com', '09123454290', '123 Sampaguita St, Manila'),
(2002, 'Juan Dela Cruz', 19, 'Male', 'BSCOE-11', 'Irregular', 'Computer Engineering', 'juan.delacruz@example.com', '09124567890', '456 Mabini St, Quezon City'),
(2003, '	Ana Reyes', 19, 'Female', '	BSCOE-21', 'Regular', 'Computer Engineering', 'ana.reyes@example.com', '09171234567', '789 Rizal St, Makati'),
(2004, 'Jose Bautista', 20, 'Male', '	BSCOE-22', 'Irregular', 'Computer Engineering', 'jose.bautista@example.com', '09172345678', '321 Luna St, Taguig'),
(2005, 'Lourdes Garcia', 20, 'Female', 'BSCOE-31', 'Regular', 'Computer Engineering', 'lourdes.garcia@example.com', '09183456789', '654 Bonifacio St, Pasig'),
(2006, 'Pedro Fernandez', 21, 'Male', '	BSCOE-31', 'Irregular', 'Computer Engineering', 'pedro.fernandez@example.com\r\n', '09183456789', '987 Aguinaldo St, Pasay'),
(2007, 'Grace Lim', 21, 'Female', 'BSCOE-41', 'Regular', 'Computer Engineering', 'grace.lim@example.com', '09191234567', '159 Del Pilar St, Mandaluyong'),
(2008, 'Andres Ramos', 22, 'Male', 'BSCOE-42', 'Irregular', 'Computer Engineering', 'andres.ramos@example.com', '09192345678', '753 Mabuhay St, Marikina');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `stud_password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `studentID`, `username`, `stud_password`, `image`) VALUES
(1, 2001, 'Maria Santos', 'default', ''),
(2, 2002, 'Juan Dela Cruz', 'default', ''),
(3, 2003, 'Ana Reyes', 'default', ''),
(4, 2004, 'Jose Bautista', 'default', ''),
(5, 2005, 'Lourdes Garcia', 'default', ''),
(6, 2006, 'Pedro Fernandez', 'default', ''),
(7, 2007, 'Grace Lim', 'default', ''),
(8, 2008, 'Andres Ramos', 'default', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `studentID` (`studentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `students` (`studentID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
