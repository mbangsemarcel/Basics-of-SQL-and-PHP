-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 10, 2022 at 04:17 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MYSTORE`
--

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMERS`
--

CREATE TABLE `CUSTOMERS` (
  `ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `STREET_ADRESS` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `ZIP_CODE` varchar(255) DEFAULT NULL,
  `BALANCE` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CUSTOMERS`
--

INSERT INTO `CUSTOMERS` (`ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PASSWORD`, `STREET_ADRESS`, `CITY`, `STATE`, `ZIP_CODE`, `BALANCE`) VALUES
(1, 'MAR', 'NCHI', 'mar@gmail.com', '12345', 'ENS STREET', 'BAMENDA', 'CAMEROON', 'POBOX23', 500),
(2, 'MAR', 'NCHI', 'mar@gmail.com', '12345', 'ENS_STREET', 'BAMENDA', 'CAMEROON', 'POBOX23', NULL),
(3, 'MAR', 'NCHI', 'mar@gmail.com', '12345', 'ENS_STREET', 'BAMENDA', 'CAMEROON', 'POBOX23', NULL),
(4, 'MAR', 'MARCMIRA', 'mar@gmail.com', '12345', 'ENS_STREET', 'BAMENDA', 'CAMEROON', 'POBOX23', NULL),
(5, 'MAR', 'NCHI', 'mar@gmail.com', '12345', 'ENS_STREET', 'BAMENDA', 'CAMEROON', 'POBOX23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ORDERS`
--

CREATE TABLE `ORDERS` (
  `ID` int(11) NOT NULL,
  `ORDER_NUMBER` int(11) DEFAULT NULL,
  `PRODUCT_ID` int(11) DEFAULT NULL,
  `CUSTOMERS_ID` int(11) DEFAULT NULL,
  `ORDER_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ORDERS`
--

INSERT INTO `ORDERS` (`ID`, `ORDER_NUMBER`, `PRODUCT_ID`, `CUSTOMERS_ID`, `ORDER_DATE`) VALUES
(1, 1, 1, 1, '0000-00-00 00:00:00'),
(2, 2, 2, 2, '0000-00-00 00:00:00'),
(3, 3, 3, 3, '0000-00-00 00:00:00'),
(4, 4, 4, 4, '0000-00-00 00:00:00'),
(5, 5, 5, 5, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCT`
--

CREATE TABLE `PRODUCT` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PRODUCT`
--

INSERT INTO `PRODUCT` (`ID`, `NAME`, `PRICE`) VALUES
(1, 'COMPUTERS', 25000),
(2, 'COMPUTERS', 250000),
(3, 'PHONES', 250000),
(4, 'TELVISION', 250000),
(5, 'WEDD_BINDING', 250000),
(6, 'PRINTERS', 250000),
(7, 'DESKTOPS', 250000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CUSTOMERS`
--
ALTER TABLE `CUSTOMERS`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ORDERS`
--
ALTER TABLE `ORDERS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CUSTOMERS_ID` (`CUSTOMERS_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `PRODUCT`
--
ALTER TABLE `PRODUCT`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CUSTOMERS`
--
ALTER TABLE `CUSTOMERS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ORDERS`
--
ALTER TABLE `ORDERS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `PRODUCT`
--
ALTER TABLE `PRODUCT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ORDERS`
--
ALTER TABLE `ORDERS`
  ADD CONSTRAINT `ORDERS_ibfk_1` FOREIGN KEY (`CUSTOMERS_ID`) REFERENCES `CUSTOMERS` (`ID`),
  ADD CONSTRAINT `ORDERS_ibfk_2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCT` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
