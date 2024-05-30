-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 30, 2024 at 06:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flokemon_Login`
--

-- --------------------------------------------------------

--
-- Table structure for table `flokemon`
--

CREATE TABLE `flokemon` (
  `flokemonid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` varchar(100) NOT NULL,
  `imagePath` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flokemon`
--

INSERT INTO `flokemon` (`flokemonid`, `name`, `description`, `imagePath`, `price`) VALUES
(1, 'pikachu', 'electric', 'path/to/image/pikacha.png', 15),
(7, 'Snorlax', 'normal', 'path/to/image/snorlax', 25),
(8, 'CelebYY', 'fairy', 'path/to/image/CekebYY', 25);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `token` varchar(25) DEFAULT NULL,
  `role` varchar(25) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `token`, `role`) VALUES
(1, 'met', 'met123', '1A8IRlSO1w1NOqH', 'user'),
(2, 'metiu', 'metiu123', '6C6qwkrWdU8oCJH', 'user'),
(5, 'bobo', 'bobo123', 'y5l63bUesm7apEC', 'admin'),
(6, 'mary', 'mary123', '3BKmJZR3l6bnFQQ', 'user'),
(7, 'metiu', 'metiu123', '3Cl2dUY4w04Iplt', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flokemon`
--
ALTER TABLE `flokemon`
  ADD PRIMARY KEY (`flokemonid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flokemon`
--
ALTER TABLE `flokemon`
  MODIFY `flokemonid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
