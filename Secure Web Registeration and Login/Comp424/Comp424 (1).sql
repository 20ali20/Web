-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 28, 2016 at 12:00 AM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.13-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Comp424`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `birthday` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `securityQuestion` varchar(70) NOT NULL,
  `securityAnswer` varchar(20) NOT NULL,
  `salt` varchar(50) NOT NULL,
  `lastLogin` varchar(15) NOT NULL,
  `numLogin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `firstName`, `lastName`, `birthday`, `email`, `securityQuestion`, `securityAnswer`, `salt`, `lastLogin`, `numLogin`) VALUES
(7, 'username', '6e11f3a9402e652e98af3d530453891836bbb77b925c8e9bef011acc5361a5d605bcf0822b401d9eeb0f63f86790f002ef4cdd2e36f367d616eec46c2200db24', 'Ali', 'Mojarrad', '2016-12-31', 'zewezebor@dr69.site', 'Question', 'Answer', '28aa2aaded04', '11-27-2016', 6);

-- --------------------------------------------------------

--
-- Table structure for table `usersTemp`
--

CREATE TABLE `usersTemp` (
  `code` varchar(120) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `birthday` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `securityQuestion` varchar(70) NOT NULL,
  `securityAnswer` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `usersTemp`
--
ALTER TABLE `usersTemp`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
