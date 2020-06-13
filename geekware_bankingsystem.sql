-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2020 at 07:08 AM
-- Server version: 10.3.18-MariaDB
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
-- Database: `geekware_bankingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_no` int(25) NOT NULL,
  `accountPass` varchar(20) NOT NULL,
  `IBN` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `Amount` double NOT NULL,
  `cnic` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_no`, `accountPass`, `IBN`, `status`, `userName`, `date`, `Amount`, `cnic`) VALUES
(111, 'ali', '111', 'Approved', 'ali', '2019-02-11', 1488, '111'),
(121, 'deen', '121', 'Approved', 'deen', '2020-02-01', 1522, '121'),
(12345, '12345', '12345', 'Approved', 'DRGhulam', '2020-01-01', 9990, '12345'),
(1234567890, 'ebrahimdeen', '1234567890', 'Approved', 'ebrahimDeen', '2020-01-01', 10500, '1234567890123'),
(1234987640, 'ToobaShaik', '1234987640', 'Approved', 'ToobaShaik', '2020-01-01', 9500, '1234987640123'),
(1234987650, 'DrGhulam', '1234987650', 'Approved', 'DrGhulamMuhammad', '2020-01-01', 10200, '1234987650123'),
(2147483647, 'muneebSaj', '9876543210', 'Approved', 'muneebSaj', '2020-01-01', 49800, '9876543210123');

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `id` int(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`id`, `username`, `pass`) VALUES
(1, 'deen', 'deen');

-- --------------------------------------------------------

--
-- Table structure for table `bill_gass`
--

CREATE TABLE `bill_gass` (
  `billNo` int(11) NOT NULL,
  `account_no` int(25) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bill_ke`
--

CREATE TABLE `bill_ke` (
  `billNo` int(11) NOT NULL,
  `amount` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `account_no` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chequerequest`
--

CREATE TABLE `chequerequest` (
  `id` int(25) NOT NULL,
  `account_no` int(25) NOT NULL,
  `pagescount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chequerequest`
--

INSERT INTO `chequerequest` (`id`, `account_no`, `pagescount`) VALUES
(19, 1234567890, 30);

-- --------------------------------------------------------

--
-- Table structure for table `money_transfer`
--

CREATE TABLE `money_transfer` (
  `Reci_acc_no` int(25) NOT NULL,
  `account_no` int(25) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `cnic` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `mobileNumber` varchar(11) NOT NULL,
  `Carrier` varchar(15) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `pass` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`cnic`, `date`, `mobileNumber`, `Carrier`, `userName`, `pass`) VALUES
('111', '2020-02-12', '11111111111', '1', 'ali', '$2y$10$oBpO559XhwiO5blQiiVLcO03M6ABa09B4JsWLW8PY7ZTCT6f5gtp.'),
('121', '2020-02-05', '121', '3', 'deen', '$2y$10$Hxa/myoB.tPLKAszH8RGGu20tVQHYg0CI.Wl16.N1taR7.XRD3ajW'),
('12345', '2020-04-17', '03043931008', '2', 'DRGhulam', '$2y$10$9YuU5IRJC1AHV/Jebd1hqO2b65ybTBj9cTFprdST9gEv2GXy/trTu'),
('1234987650123', '2020-06-17', '03043931008', '3', 'DRGhulamMuhammad', '$2y$10$n1Z2MdreUWAyXvnHm17EV.OYLDqaUx8YkpuuL0jWoYK7kMG0SwAgm'),
('1234567890123', '2020-05-20', '03043931008', '2', 'ebrahimdeen', '$2y$10$LDxtJidHceYRGDO2cf5DiuSzA0w9AlAjt3K/YPW2M6PlkUqsdzYjq'),
('9876543210123', '2018-05-04', '03352717509', '4', 'muneebSaj', '$2y$10$oeCrM2RowbgRCcqBEAEWiedlb6uzyVH/WIYTZDbQE5beLU89wWKpK'),
('1234987640123', '2020-06-25', '03043931008', '2', 'ToobaShaik', '$2y$10$hjHazg/UBWGJRVnBSjQN9.tJZK4Wc0Q.RXXIqw1lDDdyioGOz.Eqi');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `sno` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `amount` double NOT NULL,
  `sender_acc_no` int(25) NOT NULL,
  `receiver_acc_no` int(25) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`sno`, `type`, `amount`, `sender_acc_no`, `receiver_acc_no`, `date`) VALUES
(1, 'transfer money', 5, 121, 111, '2020-02-27'),
(2, 'transfer money', 500, 111, 121, '2020-03-01'),
(3, 'transfer money', 100, 111, 121, '2020-03-01'),
(4, 'transfer money', 50, 111, 121, '2020-03-01'),
(5, 'transfer money', 7, 111, 121, '2020-03-01'),
(6, 'transfer money', 10, 111, 121, '2020-03-06'),
(7, 'transfer money', 12, 111, 121, '2020-03-15'),
(8, 'transfer money', 26, 111, 121, '2020-03-15'),
(9, 'transfer money', 12, 111, 121, '2020-03-15'),
(10, 'transfer money', 5, 111, 111, '2020-04-27'),
(11, 'transfer money', 10, 12345, 121, '2020-04-28'),
(12, 'transfer money', 122, 1234567890, 1234567890, '2020-05-23'),
(13, 'transfer money', 111, 1234567890, 1234567890, '2020-05-23'),
(14, 'transfer money', 122, 1234567890, 1234567890, '2020-05-24'),
(15, 'transfer money', 100, 1234567890, 1234567890, '2020-05-24'),
(16, 'transfer money', 100, 2147483647, 1234567890, '2020-05-27'),
(17, 'transfer money', 100, 2147483647, 1234567890, '2020-05-27'),
(18, 'transfer money', 1000, 1234567890, 1234567890, '2020-05-31'),
(19, 'transfer money', 122, 1234987650, 1234567890, '2020-06-01'),
(20, 'transfer money', 200, 1234567890, 1234987650, '2020-06-01'),
(21, 'transfer money', 122, 1234567890, 1234987650, '2020-06-01'),
(22, 'transfer money', 500, 1234987640, 1234567890, '2020-06-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_no`);

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_gass`
--
ALTER TABLE `bill_gass`
  ADD PRIMARY KEY (`billNo`),
  ADD KEY `account_no` (`account_no`);

--
-- Indexes for table `bill_ke`
--
ALTER TABLE `bill_ke`
  ADD PRIMARY KEY (`billNo`),
  ADD KEY `account_no` (`account_no`);

--
-- Indexes for table `chequerequest`
--
ALTER TABLE `chequerequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`userName`) USING BTREE,
  ADD UNIQUE KEY `userName` (`userName`),
  ADD UNIQUE KEY `cnic` (`cnic`),
  ADD KEY `cnic_2` (`cnic`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `sender_acc_no` (`sender_acc_no`),
  ADD KEY `receiver_acc_no` (`receiver_acc_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chequerequest`
--
ALTER TABLE `chequerequest`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_gass`
--
ALTER TABLE `bill_gass`
  ADD CONSTRAINT `bill_gass_ibfk_1` FOREIGN KEY (`account_no`) REFERENCES `account` (`account_no`);

--
-- Constraints for table `bill_ke`
--
ALTER TABLE `bill_ke`
  ADD CONSTRAINT `bill_ke_ibfk_1` FOREIGN KEY (`account_no`) REFERENCES `account` (`account_no`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`sender_acc_no`) REFERENCES `account` (`account_no`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`receiver_acc_no`) REFERENCES `account` (`account_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
