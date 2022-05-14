-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 04:11 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoteldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset_table`
--

CREATE TABLE `asset_table` (
  `id` int(11) NOT NULL,
  `asset` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asset_table`
--

INSERT INTO `asset_table` (`id`, `asset`, `price`) VALUES
(1, 'Pillows', '70'),
(2, 'Bedsheet', '150'),
(3, 'Herbal shampoo', '180'),
(4, 'Toothbrush', '75'),
(5, 'Towel', '90'),
(6, 'Pair of slippers', '200');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(15) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nationality` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `f_name`, `l_name`, `phone`, `email`, `nationality`) VALUES
(1, 'oshan', 'nanayakara', '0987654321', 'oshan@gmail.com', 'Sri Lankan'),
(2, 'danushka', 'gunathilaka', '1234567899', 'danu@gmail.com', 'Sri Lankan'),
(3, 'peter', 'jobs', '9999999999', 'peter@outlook.com', 'European'),
(4, 'kevin', 'rodriguez', '5555566666', 'kevin@yahoo.com', 'Other'),
(5, 'james', 'furgeson', '1212121212', 'james@yahoo.com', 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `discount_table`
--

CREATE TABLE `discount_table` (
  `reservation_count` int(11) NOT NULL,
  `discount_percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount_table`
--

INSERT INTO `discount_table` (`reservation_count`, `discount_percentage`) VALUES
(1, 0),
(2, 25),
(3, 40),
(4, 50);

-- --------------------------------------------------------

--
-- Table structure for table `loyal_client`
--

CREATE TABLE `loyal_client` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `reservation_count` int(11) NOT NULL,
  `roomprice` int(11) NOT NULL,
  `nights` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loyal_client`
--

INSERT INTO `loyal_client` (`id`, `name`, `reservation_count`, `roomprice`, `nights`, `totalprice`) VALUES
(1, 'kevin', 2, 10000, 4, 30000),
(2, 'james', 3, 15000, 6, 54000),
(3, 'muller', 2, 5000, 1, 3750),
(4, 'leonardo', 1, 10000, 2, 20000),
(5, 'jessica', 3, 20000, 3, 36000);

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `id` int(11) NOT NULL,
  `nationality` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`id`, `nationality`) VALUES
(1, 'Sri Lankan'),
(2, 'Indian'),
(3, 'European'),
(4, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `otherservice`
--

CREATE TABLE `otherservice` (
  `serviceid` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otherservice`
--

INSERT INTO `otherservice` (`serviceid`, `totalprice`) VALUES
(1, 400),
(2, 1360),
(3, 360),
(4, 90),
(5, 450);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `client_id` int(15) NOT NULL,
  `room_number` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `room_price` int(100) NOT NULL,
  `nightstay` int(11) NOT NULL,
  `charge` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `client_id`, `room_number`, `check_in`, `check_out`, `room_price`, `nightstay`, `charge`) VALUES
(1, 1, 1, '2020-11-24', '2020-11-25', 10000, 3, 'Rs.30000.00'),
(2, 2, 2, '2020-11-24', '2020-11-28', 15000, 4, 'Rs.60000.00'),
(3, 3, 3, '2020-11-24', '2020-11-24', 5000, 1, 'Rs.5000.00'),
(4, 4, 4, '2020-11-24', '2020-11-30', 20000, 6, 'Rs.120000.00'),
(5, 5, 5, '2020-11-24', '2020-11-26', 10000, 2, 'Rs.20000.00');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `r_number` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `reserved` varchar(20) NOT NULL,
  `totalcharge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`r_number`, `type`, `phone`, `reserved`, `totalcharge`) VALUES
(1, 2, '0987654321', 'Yes', 375),
(2, 1, '1111111111', 'Yes', 555),
(3, 4, '9999999999', 'Yes', 2475),
(4, 4, '1212121212', 'Yes', 150),
(5, 3, '0987654321', 'Yes', 225);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `price` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `label`, `price`) VALUES
(1, 'Single', '5000'),
(2, 'Double', '10000'),
(3, 'Triple', '15000'),
(4, 'Family', '20000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset_table`
--
ALTER TABLE `asset_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_table`
--
ALTER TABLE `discount_table`
  ADD PRIMARY KEY (`reservation_count`);

--
-- Indexes for table `loyal_client`
--
ALTER TABLE `loyal_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otherservice`
--
ALTER TABLE `otherservice`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_client_id` (`client_id`),
  ADD KEY `fk_room_number` (`room_number`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`r_number`),
  ADD KEY `fk_type_id` (`type`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loyal_client`
--
ALTER TABLE `loyal_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `otherservice`
--
ALTER TABLE `otherservice`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fk_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_room_number` FOREIGN KEY (`room_number`) REFERENCES `room` (`r_number`) ON DELETE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_type_id` FOREIGN KEY (`type`) REFERENCES `type` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
