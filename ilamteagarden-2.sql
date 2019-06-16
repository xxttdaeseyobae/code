-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2019 at 07:52 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ilamteagarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `bookings_ID` int(11) NOT NULL,
  `productprice` int(20) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `manufacturelocation` varchar(50) DEFAULT NULL,
  `productquantity` int(20) DEFAULT NULL,
  `phonenumber` int(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`bookings_ID`, `productprice`, `productname`, `manufacturelocation`, `productquantity`, `phonenumber`, `email`) VALUES
(7, 2222, 'Product1', 'w', 222, 995655365, 'sudremotae@gmail.com'),
(8, 222, 'dd', 'ddd', 22, 22, 'sudremotae@gmail.com'),
(9, 2222, 'yudhjjhd', 'dgdjhjd', 222, 78567886, 'sudremotae@gmail.com'),
(10, 2222, 'dd;lknkdkbj', 'd;djkjjdjk', 222, 22222, 'asmitadhikari11@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `forumanswer`
--

CREATE TABLE `forumanswer` (
  `answer_id` int(20) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `replier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forumanswer`
--

INSERT INTO `forumanswer` (`answer_id`, `answer`, `replier`) VALUES
(9, 'Absolutely Yes', 'Ashim');

-- --------------------------------------------------------

--
-- Table structure for table `forumquestion`
--

CREATE TABLE `forumquestion` (
  `question_id` int(20) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forumquestion`
--

INSERT INTO `forumquestion` (`question_id`, `question`, `username`) VALUES
(28, 'Is Sudarsan giving up on cp project?', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_ID` int(20) NOT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `manufacturelocation` varchar(50) DEFAULT NULL,
  `manufacturedate` date DEFAULT NULL,
  `productquantity` int(50) DEFAULT NULL,
  `productprice` int(50) DEFAULT NULL,
  `phonenumber` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_ID`, `productname`, `manufacturelocation`, `manufacturedate`, `productquantity`, `productprice`, `phonenumber`) VALUES
(1, '1', '1', '1111-11-11', 0, 0, NULL),
(2, '1', '1', '1111-11-11', 0, 0, NULL),
(3, 'sad', 'sss', '4444-04-04', 44, 44, NULL),
(4, 'Sudarsan Udash', 'Ilam', '1111-11-11', 11, 11, NULL),
(5, 'Bigem', 'Sudarsan', '1111-11-11', 2121, 22, NULL),
(6, 'DSD', 'ManufactureLocation1', '1111-11-11', 111111, 111, 1111);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phonenumber` int(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`bookings_ID`);

--
-- Indexes for table `forumanswer`
--
ALTER TABLE `forumanswer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `forumquestion`
--
ALTER TABLE `forumquestion`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `bookings_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `forumanswer`
--
ALTER TABLE `forumanswer`
  MODIFY `answer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `forumquestion`
--
ALTER TABLE `forumquestion`
  MODIFY `question_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
