-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 01:16 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasirentalmobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `merek` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `tahun` varchar(11) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `plat_nomor` varchar(20) NOT NULL,
  `harga_sewa_perhari` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `merek`, `model`, `tahun`, `warna`, `plat_nomor`, `harga_sewa_perhari`, `status`) VALUES
(1, 'Toyota', 'Camry', '2020', 'Hitam', 'B 1234 ABC', '500.000', 'Tersedia'),
(2, 'Honda', 'Accord', '2019', 'Putih', 'B 4567 DEF', '450.000', 'Tersedia'),
(3, 'Nissan', 'Altima', '2018', 'Merah', 'B 7890 GHI', '400.000', 'Tersedia'),
(4, 'Mazda', 'Mazda6', '2017', 'Biru', 'B 1122 IJK', '350.000', 'Tersedia'),
(5, 'Hyundai', 'Sonata', '2016', 'Abu-abu', 'B 2233 LMN', '300.000', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nomor_telepon` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `nomor_telepon`, `email`) VALUES
(1, 'John Doe', 'Jl. Sudirman 123, Jakarta', '081234567890', 'john.doe@gmail.com'),
(2, 'Jane Smith', 'Jl. Thamrin 456, Jakarta', '082198765432', 'jane.smith@gmail.com'),
(3, 'Michael Jordan', 'Jl. Merdeka 789, Jakarta', '085212345678', 'michael.jordan@gmail.com'),
(4, 'Mary Johnson', 'Jl. Gatot Subroto 1011, Jakarta', '087734567890', 'mary.johnson@gmail.com'),
(5, 'Robert Williams', 'Jl. Haryono MT 1213, Jakarta', '089912345678', 'robert.williams@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `plat_nomor` varchar(20) NOT NULL,
  `tanggal_sewa` varchar(50) NOT NULL,
  `tanggal_kembali` varchar(50) NOT NULL,
  `durasi_sewa` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `plat_nomor`, `tanggal_sewa`, `tanggal_kembali`, `durasi_sewa`, `harga`, `total`) VALUES
(1, 'B 1234 ABC', '01 Januari 2023', '03 Januari 2023', '3 Hari', '500.000', '1.500.000'),
(2, 'B 4567 DEF', '04 Januari 2023', '06 Januari 2023', '3 Hari', '450.000', '1.350.000'),
(3, 'B 7890 GHI', '07 Januari 2023', '09 Januari 2023', '3 Hari', '400.000', '1.200.000'),
(4, 'B 1122 IJK', '10 Januari 2023', '12 Januari 2023', '3 Hari', '350.000', '1.050.000'),
(5, 'B 2233 LMN', '13 Januari 2023', '15 Januari 2023', '3 Hari', '300.000', '900.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
