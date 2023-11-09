-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 04:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `divine`
--

-- --------------------------------------------------------

--
-- Table structure for table `addbanners`
--

CREATE TABLE `addbanners` (
  `id` int(11) NOT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addbanners`
--

INSERT INTO `addbanners` (`id`, `image1`, `image2`, `image3`, `banner_id`, `createdAt`, `updatedAt`) VALUES
(1, '1697313369776-20220414_185621.jpg', NULL, NULL, 1, '2023-10-14 19:56:09', '2023-10-14 19:56:09'),
(2, '1697313599758-20220414_190139.jpg', '1697313412480-20220414_185653.jpg', '1697313412507-20220414_185653.jpg', 1, '2023-10-14 19:56:52', '2023-10-14 19:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipCode` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`address_id`, `name`, `user_id`, `address`, `city`, `state`, `zipCode`, `country`, `phone`, `createdAt`, `updatedAt`) VALUES
(1, 'jhadfb', 1, 'nasbfkebfon327yi dciuh74', 'affsdf', 'dfdsdf', 'fdsdf', 'dfdsf', 'dfsdfe', '2023-10-14 20:55:36', '2023-10-14 20:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `is_available` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `is_available`) VALUES
(2, 'vedas', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preistinformations`
--

CREATE TABLE `preistinformations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `House_no` varchar(255) NOT NULL,
  `building` varchar(255) NOT NULL,
  `area` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `preistinformations`
--

INSERT INTO `preistinformations` (`id`, `name`, `skills`, `House_no`, `building`, `area`, `city`, `pincode`, `state`, `user_id`, `createdAt`, `updatedAt`) VALUES
(1, 'prakhar', 'abc,sjgv', 'adbciub6329oc', 'jbd79h', 'mnsabduyg8', 'dshb', '233243', 'jdbfkhbf', 1, '2023-11-03 16:16:01', '2023-11-03 16:30:29'),
(2, 'prakhar', 'abc,sjgv', 'adbciub6329oc', 'jbd79h', 'mnsabduyg8', 'dshb', '233243', 'jdbfkhbf', 1, '2023-11-03 16:16:26', '2023-11-03 16:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `courseBook` varchar(255) DEFAULT NULL,
  `book` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `rs` float NOT NULL,
  `instock` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `courseBook`, `book`, `category_id`, `rs`, `instock`, `image`, `createdAt`, `updatedAt`) VALUES
(2, 'dshb', 'smasd', NULL, 2, 100, 2, '1697361773547-20220414_185657.jpg', '2023-10-15 09:22:53', '2023-10-15 09:22:53'),
(3, 'dshb', NULL, NULL, 2, 100, 2, '1699186791648-20220414_185657.jpg', '2023-11-05 12:19:51', '2023-11-05 12:19:51'),
(4, 'dshb', NULL, NULL, 2, 100, 2, '1699187547686-20220414_185657.jpg', '2023-11-05 12:32:27', '2023-11-05 12:32:27'),
(5, 'dshb', NULL, NULL, 2, 100, 2, '1699187565233-20220414_185657.jpg', '2023-11-05 12:32:45', '2023-11-05 12:32:45'),
(6, 'pooja', NULL, NULL, 2, 100, 1, '1699188426482-20220414_185657.jpg', '2023-11-05 12:47:06', '2023-11-05 12:47:06'),
(7, 'pooja', NULL, NULL, 2, 100, 1, '1699188567180-20220414_185657.jpg', '2023-11-05 12:49:27', '2023-11-05 12:49:27'),
(8, 'pooja', NULL, NULL, 2, 100, 1, NULL, '2023-11-05 12:49:30', '2023-11-05 12:49:30'),
(9, 'pooja', NULL, NULL, 2, 100, 1, '1699188956808-20220414_185657.jpg', '2023-11-05 12:55:56', '2023-11-05 12:55:56'),
(10, 'pooja', NULL, NULL, 2, 100, 1, '1699189025341-20220414_185653.jpg', '2023-11-05 12:57:05', '2023-11-05 12:57:05'),
(11, 'pooja', NULL, NULL, 2, 100, 1, '1699189074314-jaffa[israel.jpeg', '2023-11-05 12:57:54', '2023-11-05 12:57:54'),
(12, 'pooja', NULL, NULL, 2, 100, 1, '1699205421461-Comayagua-[honduras.webp', '2023-11-05 17:30:21', '2023-11-05 17:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `usercart_`
--

CREATE TABLE `usercart_` (
  `CartItems_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `total_price` float NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usersdata`
--

CREATE TABLE `usersdata` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `token` varchar(255) DEFAULT NULL,
  `profile_created_month` int(11) DEFAULT NULL,
  `profile_created_date` int(11) DEFAULT NULL,
  `OTP` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usersdata`
--

INSERT INTO `usersdata` (`user_id`, `name`, `email`, `phone`, `password`, `is_verified`, `token`, `profile_created_month`, `profile_created_date`, `OTP`, `createdAt`, `updatedAt`) VALUES
(1, NULL, 'cprakhar999@gmail.com', NULL, '$2b$10$8x47CgkzMzd60tbjhQQKkeSVXzs.2XRIME6XDoBRyXhYlrqU.BF5O', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxLCJpYXQiOjE2OTkwMjY5MDd9.iAvmQS3Iw7A9Jn6S-rvy2d5HAgkEsNUbFv6i8K_Tq84', NULL, NULL, '996977', '2023-10-14 14:43:23', '2023-11-03 15:55:07'),
(2, NULL, 'cprakhar9s99@gmail.com', NULL, '$2b$10$JMp6ldI1/0gTlQJu7lZ1jesd8bgrxwugmDNrWiLZuI0bXERAUhhQK', 0, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyLCJpYXQiOjE2OTkyMTI5OTZ9.1orWmh5lA-d13INgmRZOvZqygd3azKKzUgr480eu4lc', NULL, NULL, NULL, '2023-11-05 18:02:59', '2023-11-05 19:36:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addbanners`
--
ALTER TABLE `addbanners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `preistinformations`
--
ALTER TABLE `preistinformations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `usercart_`
--
ALTER TABLE `usercart_`
  ADD PRIMARY KEY (`CartItems_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `usersdata`
--
ALTER TABLE `usersdata`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addbanners`
--
ALTER TABLE `addbanners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `preistinformations`
--
ALTER TABLE `preistinformations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `usercart_`
--
ALTER TABLE `usercart_`
  MODIFY `CartItems_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usersdata`
--
ALTER TABLE `usersdata`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usersdata` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `preistinformations`
--
ALTER TABLE `preistinformations`
  ADD CONSTRAINT `preistinformations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usersdata` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usercart_`
--
ALTER TABLE `usercart_`
  ADD CONSTRAINT `usercart__ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usercart__ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `usersdata` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
