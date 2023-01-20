-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2023 at 08:41 AM
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
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(10) NOT NULL,
  `bookName` varchar(40) NOT NULL,
  `bookType` varchar(50) NOT NULL,
  `level` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `bookName`, `bookType`, `level`) VALUES
(2, 'chemistry', 'courses', 3),
(3, 'geography', 'courses', 4),
(4, 'biochemistry', 'chemistry', 4);

-- --------------------------------------------------------

--
-- Table structure for table `book_in_use`
--

CREATE TABLE `book_in_use` (
  `book_id` int(11) NOT NULL,
  `current_BookUser` varchar(40) NOT NULL,
  `takeOutDate` varchar(20) NOT NULL,
  `returnInDate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_in_use`
--

INSERT INTO `book_in_use` (`book_id`, `current_BookUser`, `takeOutDate`, `returnInDate`) VALUES
(1, 'foustin', '12/8/2034', '16/8/2034'),
(3, 'rachel', '12/9/2022', '15/9/2022'),
(6, 'benoit', '12/4/2004', '12/2/2007');

-- --------------------------------------------------------

--
-- Table structure for table `returnedbooks`
--

CREATE TABLE `returnedbooks` (
  `book_id` int(11) NOT NULL,
  `returnedBY` varchar(40) NOT NULL,
  `takeOutDate` varchar(20) NOT NULL,
  `returnDate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returnedbooks`
--

INSERT INTO `returnedbooks` (`book_id`, `returnedBY`, `takeOutDate`, `returnDate`) VALUES
(1, 'foustin', '12/94/2023', '14/23/2023'),
(2, 'benoit', '14/23/2023', '14/23/2023'),
(3, 'rachel', '13/23/2023', '15/23/2023'),
(4, 'mucyo emmanuel', '17/01/2023', '19/01/2023');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `userName`, `password`, `name`) VALUES
(1, 'admin', 'admin', 'librarian');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_in_use`
--
ALTER TABLE `book_in_use`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `returnedbooks`
--
ALTER TABLE `returnedbooks`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `returnedbooks`
--
ALTER TABLE `returnedbooks`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
