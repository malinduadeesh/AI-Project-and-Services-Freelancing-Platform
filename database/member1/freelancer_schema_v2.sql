-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2026 at 06:00 PM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.3.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai_freelancing_v2_member1`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai_service`
--

CREATE TABLE `ai_service` (
  `Service_ID` int(11) NOT NULL,
  `Service` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_skill`
--

CREATE TABLE `ai_skill` (
  `Skill_ID` int(11) NOT NULL,
  `Skill` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `freelancer`
--

CREATE TABLE `freelancer` (
  `Freelancer_ID` int(11) NOT NULL,
  `Freelancer_Description` text DEFAULT NULL,
  `Git` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `freelancer_service`
--

CREATE TABLE `freelancer_service` (
  `Freelancer_ID` int(11) NOT NULL,
  `Service_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `freelancer_skill`
--

CREATE TABLE `freelancer_skill` (
  `Freelancer_ID` int(11) NOT NULL,
  `Skill_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Contact_Num` varchar(20) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `User_Type` enum('Freelancer','Client','Admin','Manager') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ai_service`
--
ALTER TABLE `ai_service`
  ADD PRIMARY KEY (`Service_ID`),
  ADD UNIQUE KEY `Service` (`Service`);

--
-- Indexes for table `ai_skill`
--
ALTER TABLE `ai_skill`
  ADD PRIMARY KEY (`Skill_ID`),
  ADD UNIQUE KEY `Skill` (`Skill`);

--
-- Indexes for table `freelancer`
--
ALTER TABLE `freelancer`
  ADD PRIMARY KEY (`Freelancer_ID`);

--
-- Indexes for table `freelancer_service`
--
ALTER TABLE `freelancer_service`
  ADD PRIMARY KEY (`Freelancer_ID`,`Service_ID`),
  ADD KEY `fk_freelancer_service_service` (`Service_ID`);

--
-- Indexes for table `freelancer_skill`
--
ALTER TABLE `freelancer_skill`
  ADD PRIMARY KEY (`Freelancer_ID`,`Skill_ID`),
  ADD KEY `fk_freelancer_skill_skill` (`Skill_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ai_service`
--
ALTER TABLE `ai_service`
  MODIFY `Service_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_skill`
--
ALTER TABLE `ai_skill`
  MODIFY `Skill_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `freelancer`
--
ALTER TABLE `freelancer`
  ADD CONSTRAINT `fk_freelancer_user` FOREIGN KEY (`Freelancer_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `freelancer_service`
--
ALTER TABLE `freelancer_service`
  ADD CONSTRAINT `fk_freelancer_service_freelancer` FOREIGN KEY (`Freelancer_ID`) REFERENCES `freelancer` (`Freelancer_ID`),
  ADD CONSTRAINT `fk_freelancer_service_service` FOREIGN KEY (`Service_ID`) REFERENCES `ai_service` (`Service_ID`);

--
-- Constraints for table `freelancer_skill`
--
ALTER TABLE `freelancer_skill`
  ADD CONSTRAINT `fk_freelancer_skill_freelancer` FOREIGN KEY (`Freelancer_ID`) REFERENCES `freelancer` (`Freelancer_ID`),
  ADD CONSTRAINT `fk_freelancer_skill_skill` FOREIGN KEY (`Skill_ID`) REFERENCES `ai_skill` (`Skill_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
