-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 20, 2020 at 05:47 PM
-- Server version: 10.4.15-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u851300895_carshari`
--

-- --------------------------------------------------------

--
-- Table structure for table `carsharetrips`
--

CREATE TABLE `carsharetrips` (
  `trip_id` int(4) NOT NULL,
  `user_id` int(4) DEFAULT NULL,
  `departure` char(30) DEFAULT NULL,
  `departureLatitude` float DEFAULT NULL,
  `departureLongitude` float DEFAULT NULL,
  `destination` char(30) DEFAULT NULL,
  `destinationLatitude` float DEFAULT NULL,
  `destinationLongitude` float DEFAULT NULL,
  `price` char(10) DEFAULT NULL,
  `regular` char(1) DEFAULT NULL,
  `seatsavailable` char(2) DEFAULT NULL,
  `date` char(20) DEFAULT NULL,
  `time` char(10) DEFAULT NULL,
  `monday` char(1) DEFAULT NULL,
  `tuesday` char(1) DEFAULT NULL,
  `wednesday` char(1) DEFAULT NULL,
  `thursday` char(1) DEFAULT NULL,
  `friday` char(1) DEFAULT NULL,
  `saturday` char(1) DEFAULT NULL,
  `sunday` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carsharetrips`
--

INSERT INTO `carsharetrips` (`trip_id`, `user_id`, `departure`, `departureLatitude`, `departureLongitude`, `destination`, `destinationLatitude`, `destinationLongitude`, `price`, `regular`, `seatsavailable`, `date`, `time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`) VALUES
(1, 2, 'makati', 14.5547, 121.024, 'quezon city', 14.676, 121.044, '210', '1', '5', '12/12/2020', '12:00', '1', '1', NULL, NULL, NULL, NULL, NULL),
(2, 2, 'passein', 0, 0, 'berlin', 0, 0, '10', 'N', '5', '12/15/2020', '12:00', '1', '1', NULL, NULL, NULL, NULL, NULL),
(3, 2, 'hamburg', 53.5511, 9.9937, 'berlin', 50, 5, '10', '1', '5', '12/15/2020', '12:00', '1', '1', NULL, '1', NULL, NULL, NULL),
(4, 2, 'Baguio', 16.4023, 120.596, 'quezon city', 14.676, 121.044, '210', '1', '5', '12/12/2020', '12:00', '1', '1', NULL, NULL, NULL, NULL, NULL),
(5, 1, 'madrid', 40.4168, 3.0738, 'berlin', 50, 5, '10', '1', '5', '12/15/2020', '12:00', NULL, '1', NULL, '', NULL, NULL, NULL),
(6, 2, 'Lipa', 0, 0, 'Ayala Mall', 0, 0, '50', 'Y', '2', NULL, '12:00', '', '', '1', '', '', '', ''),
(7, 2, 'Lipa', 0, 0, 'Ayala Mall', 0, 0, '30', 'N', '1', 'Wed 23 Dec, 2020', '12:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forgotpassword`
--

CREATE TABLE `forgotpassword` (
  `user_id` int(4) DEFAULT NULL,
  `rkey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forgotpassword`
--

INSERT INTO `forgotpassword` (`user_id`, `rkey`, `time`, `status`) VALUES
(1, 'ddeaee5ce4d1f94a70bda9939ae1ec37', '1608028382', 'pending'),
(1, '198a9e29986dc1b7ec3a140f61ee2f7e', '1608028444', 'used'),
(2, 'a99e94201c53aebfac4b54af46e08ffe', '1608029951', 'used'),
(2, '1e004401ea0c79428daec0637f3ee65e', '1608033502', 'used');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(4) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profilepicture` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` char(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moreinformation` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `profilepicture`, `first_name`, `last_name`, `password`, `activation`, `phonenumber`, `gender`, `moreinformation`, `time`, `status`) VALUES
(1, 'frans', 'kikfree00@gmail.com', '', 'fras', 'silv', 'f8aa14da2301e201e817f5b8667a36bb40c8ca49da69b3470a', 'aa2e7d995bd8a5c4154d408b3a0f1f', '09272444479', 'male', 'i have a vaction', '', 'pending'),
(2, 'lito00', 'litvil77@gmail.com', '', 'fras', 'silv', '2e3ab3cd293d750a77b56b3b82e950ba4093e405aec30feb535bc94d07f66649', 'activated', '09272444479', 'male', 'i have a vaction', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carsharetrips`
--
ALTER TABLE `carsharetrips`
  ADD PRIMARY KEY (`trip_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carsharetrips`
--
ALTER TABLE `carsharetrips`
  MODIFY `trip_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
