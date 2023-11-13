-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2023 at 12:25 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int NOT NULL,
  `book` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book`, `author`, `publisher`, `isbn`, `version`) VALUES
(1, 'Book 1', 'Author A', 'Publisher A', '12345678901231', '1.0'),
(2, 'Book 2', 'Author B', 'Publisher B', '2345678901234', '2.0'),
(3, 'Book 3', 'Author C', 'Publisher C', '3456789012345', '1.5'),
(4, 'Book 4', 'Author D', 'Publisher D', '4567890123456', '1.2'),
(5, 'Book 5', 'Author E', 'Publisher E', '5678901234567', '3.0'),
(6, 'Book 6', 'Author F', 'Publisher F', '6789012345678', '2.5'),
(7, 'Book 7', 'Author G', 'Publisher G', '7890123456789', '1.8'),
(8, 'Book 8', 'Author H', 'Publisher H', '8901234567890', '2.3'),
(9, 'Book 9', 'Author I', 'Publisher I', '9012345678901', '1.9'),
(10, 'Book 10', 'Author J', 'Publisher J', '0123456789012', '4.0'),
(11, 'Book 11', 'Author K', 'Publisher K', '9876543210987', '1.0'),
(12, 'Book 12', 'Author L', 'Publisher L', '8765432109876', '2.0'),
(13, 'Book 13', 'Author M', 'Publisher M', '7654321098765', '1.5'),
(14, 'Book 14', 'Author N', 'Publisher N', '6543210987654', '1.2'),
(15, 'Book 15', 'Author O', 'Publisher O', '5432109876543', '3.0'),
(16, 'Book 16', 'Author P', 'Publisher P', '4321098765432', '2.5'),
(17, 'Book 17', 'Author Q', 'Publisher Q', '3210987654321', '1.8'),
(18, 'Book 18', 'Author R', 'Publisher R', '2109876543210', '2.3'),
(19, 'Book 19', 'Author S', 'Publisher S', '1098765432109', '1.9'),
(20, 'Book 20', 'Author T', 'Publisher T', '0987654321098', '4.0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_type` enum('admin','user') NOT NULL,
  `registration_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `user_type`, `registration_date`) VALUES
(1, 'admin', '$2y$10$Jc4os.ajxTiZpc4w.5Gf6uzEiImfPP/7Qv0qWYtIeZq0N9aJk4dne', 'libadmin@mail.com', 'admin', '2023-10-11 14:34:10'),
(2, 'user2', '$2y$10$KRHgLFAter4tG8BvwnQ4vO/CveYJUZmMoZvfyqlVsKftwMx56hmWS', 'user1@mail.com', 'user', '2023-10-15 02:28:38'),
(3, 'danial', '$2y$10$z/84qL9GDagyZgydriLtwurpwSNO7FeYAwRc2u5yFSg1LcJfZynP.', 'danial@mail.com', 'admin', '2023-11-08 06:30:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
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
  MODIFY `book_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
