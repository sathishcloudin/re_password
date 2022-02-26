-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 01:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `loginsys`
--

CREATE TABLE `loginsys` (
  `id` int(11) NOT NULL,
  `username` char(30) NOT NULL,
  `email` char(30) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `password` char(50) NOT NULL,
  `usertype` enum('user','admin','super') DEFAULT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginsys`
--

INSERT INTO `loginsys` (`id`, `username`, `email`, `create_datetime`, `password`, `usertype`, `status`) VALUES
(141, 'khan', 'khan@gmail.com', '2022-02-23 08:51:31', '', 'user', '0'),
(142, 'note', 'note@gmail.com', '2022-02-23 12:23:21', '', 'user', '0'),
(143, 'pen', 'pen@gmail.com', '2022-02-23 12:23:58', '', 'user', '0'),
(144, 'iphone', 'iphone@gmail.com', '2022-02-24 10:17:11', '', 'user', '0'),
(148, 'flower', '@gmail.com', '2022-02-24 10:34:27', '827ccb0eea8a706c4c34a16891f84e7b', 'user', '0'),
(150, 'khankhan', 'khank@gmail.com', '2022-02-24 10:42:25', '827ccb0eea8a706c4c34a16891f84e7b', 'user', '0'),
(152, 'sathish', 'sathish@gmail.com', '2022-02-24 11:59:20', '', 'user', '0'),
(154, 'free', 'free@gmail.com', '2022-02-24 12:43:23', '', 'user', '0'),
(155, 'sooo', 'soo@gmail.com', '2022-02-24 13:25:52', '', 'user', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loginsys`
--
ALTER TABLE `loginsys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginsys`
--
ALTER TABLE `loginsys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
