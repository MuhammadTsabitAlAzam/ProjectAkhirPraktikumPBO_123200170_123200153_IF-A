-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 05, 2022 at 05:31 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_product` varchar(5) NOT NULL,
  `product_name` varchar(120) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` varchar(5) NOT NULL,
  `product_name` varchar(120) NOT NULL,
  `stock` int(10) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `product_name`, `stock`, `price`) VALUES
('A1234', 'Book', 8, 10000),
('A261', 'Gelas Plastik', 10, 10000),
('AB123', 'Teh Tubruk', 10, 4000),
('AS783', 'Hot Cream', 10, 3000),
('B1221', 'Beras 1Kg', 9, 12000),
('B1222', 'Gula Jawa', 14, 22000),
('C3212', 'Le Mineral', 15, 3600),
('C3213', 'Indomie Goreng', 15, 2500),
('E3421', 'Susu Beruang', 15, 9000),
('YA123', 'Tepung Terigu', 15, 11000);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id_receipt` int(11) NOT NULL,
  `id_product` varchar(5) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id_receipt`, `id_product`, `quantity`) VALUES
(1, 'AB123', 6),
(1, 'AB123', 2),
(1, 'AB123', 2),
(2, 'AB123', 4),
(2, 'AB123', 2),
(3, 'AB123', 4),
(4, 'AB123', 6),
(4, 'A1234', 3),
(5, 'AB123', 7),
(5, 'A1234', 4),
(5, 'B1222', 4),
(6, 'A1234', 2),
(6, 'B1222', 1),
(7, 'A1234', 4),
(8, 'A1234', 2),
(8, 'B1222', 3),
(9, 'A1234', 4),
(9, 'YA123', 5),
(10, 'C3213', 10),
(10, 'YA123', 2),
(11, 'A1234', 6),
(11, 'C3212', 4),
(12, 'A1234', 5),
(12, 'C3212', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `status`) VALUES
('1', 'admin', 'admin', 'admin'),
('2', 'azam', 'azam123', 'pembeli'),
('3', 'bila', '123', 'pembeli'),
('4', 'amara', '123', 'pembeli');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
