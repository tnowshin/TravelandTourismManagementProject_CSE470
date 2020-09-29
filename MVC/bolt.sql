-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2020 at 01:44 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bolt`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`) VALUES
(12, 'GPU1', 'RTX3080', 'RTX 3080', 50000, 1, 50000, '2020-09-15 03:46:25', 'psysabin@gmail.com'),
(13, 'mb2', 'B450', 'B450', 12000, 1, 12000, '2020-09-15 03:46:25', 'psysabin@gmail.com'),
(14, 'BOLT3', 'Asus Hero VIII', 'Motherboard', 28000, 2, 56000, '2020-09-15 04:23:41', 'psysabin@gmail.com'),
(15, 'omen1', 'omen mouse', 'omen', 1212, 1, 1212, '2020-09-15 04:23:41', 'psysabin@gmail.com'),
(16, 'mb2', 'B450', 'B450', 12000, 5, 60000, '2020-09-15 04:27:43', 'annur.majid@g.bracu.ac.bd'),
(17, 'mb2', 'B450', 'B450', 12000, 5, 60000, '2020-09-15 04:27:46', 'psysabin@gmail.com'),
(18, 'GPU1', 'RTX3080', 'RTX 3080', 50000, 1, 50000, '2020-09-15 05:19:53', 'annur.majid@g.bracu.ac.bd'),
(19, 'TD1', 'Mouse', 'mouse', 12000, 5, 60000, '2020-09-15 05:48:28', 'annur.majid@g.bracu.ac.bd'),
(20, 'package1', 'Bali tour', 'Desc', 10000, 1, 10000, '2020-09-29 09:46:04', 'jvsabin@live.com'),
(21, 'mb2', 'B450', 'B450', 12000, 2, 24000, '2020-09-29 09:46:04', 'jvsabin@live.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'GPU1', 'RTX3080', 'RTX 3080', '3080.jpg', 31, '50000.00'),
(2, 'mb2', 'B450', 'B450', 'B450.jpg', 3, '12000.00'),
(3, 'BOLT3', 'Asus Hero VIII', 'Motherboard', 'hero.jpg', 32, '28000.00'),
(5, 'TD1', 'Mouse', 'mouse', 'TD01.jpg', 0, '12000.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'A.', 'Ba', 'D', 'DF', 1, 's@a.com', '1234', 'admin'),
(3, 'afdes', 'afds', 'adfs', 'adfs', 12, 'psysabin@gmail.com', '1234', 'user'),
(5, 'A', 'B', 'C', 'D', 3, 'annur.majid@g.bracu.ac.bd', '1234', 'user'),
(7, 'A', 'B', '1', '12', 123, 'jvsabin@live.com', '1234', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
