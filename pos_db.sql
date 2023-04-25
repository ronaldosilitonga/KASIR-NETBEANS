-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 05:46 PM
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
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `nama`, `harga`) VALUES
(1, 'Aqua 330ml', 2500),
(2, 'Mie Instan Indomie Goreng', 3000),
(3, 'Teh Botol Sosro 500ml', 4500),
(4, 'Susu Ultra UHT 1L', 19000),
(5, 'Kopiko 25 g', 2000),
(6, 'Molto 800 mL', 10000),
(7, 'Cheetos 70 g', 8000),
(8, 'Oreo 137 g', 10000),
(9, 'Nutella 350 g', 50000),
(10, 'Pocari Sweat 500 mL', 8000),
(11, 'Rinso 1 kg', 15000),
(12, 'Teh Pucuk 400 mL', 7000),
(13, 'Silver Queen 165 g', 25000),
(14, 'Lifebuoy 75 g', 3000),
(15, 'Rexona 50 g', 15000),
(16, 'So Klin 900 mL', 7000),
(17, 'Supermie 80 g', 2500),
(18, 'Good Day 800 mL', 12000),
(19, 'Pepsodent 100 g', 5000),
(20, 'Coca-Cola 1.25 L', 10000),
(21, 'Pepsi 1.25 L', 9000),
(22, 'Fanta 1.25 L', 8000),
(23, 'Sprite 1.25 L', 8000),
(24, 'Dove 200 mL', 15000),
(25, 'Sunsilk 180 mL', 10000),
(26, 'Garnier 170 mL', 12000),
(27, 'Head & Shoulders 170 mL ', 15000),
(28, 'Gillette 52 g', 25000),
(29, 'Pantene 180 mL', 10000),
(30, 'Lays 60 g', 12000),
(31, 'Chitato 75 g', 10000),
(32, 'Qtela 60 g', 5000),
(33, 'Kit Kat 45 g', 8000),
(34, 'Tango 350 mL', 7000),
(35, 'Dancow 400 g', 25000),
(36, 'Teh Botol 500 mL', 5000),
(37, 'Sosro 450 mL', 7000),
(38, 'Kapal Api 200 g', 3000),
(39, 'ABC 135 mL', 10000),
(40, 'Richeese 150 g', 15000),
(41, 'Mie ABC 70 g', 5000),
(42, 'Nutrijell 10 g', 3000),
(43, 'Rinso Molto 800 mL', 12000),
(44, 'Listerine 250 mL', 25000),
(45, 'Sunlight 800 mL', 10000),
(46, 'Sunsilk Hijab 170 mL', 15000),
(47, 'Downy 900 mL', 20000),
(48, 'Mr. Muscle 625 mL', 18000),
(49, 'Baygon 600 mL', 25000),
(50, 'Raid 300 mL', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(50) NOT NULL,
  `waktu_transaksi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_harga` float NOT NULL,
  `total_dibayar` float NOT NULL,
  `kembalian` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `waktu_transaksi`, `total_harga`, `total_dibayar`, `kembalian`) VALUES
(1, '2023-04-25 11:02:58', 500000, 1000000, 500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
