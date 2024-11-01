-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 28, 2024 at 06:35 PM
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
-- Database: `aplikasi_perhotelan`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkinnew`
--

CREATE TABLE `checkinnew` (
  `Kode_tamu` char(12) DEFAULT NULL,
  `Tgl_checkin` date DEFAULT NULL,
  `Jam_checkin` time DEFAULT NULL,
  `Kode_kamar` char(12) DEFAULT NULL,
  `Posisi_kamar` varchar(12) DEFAULT NULL,
  `Tot_biaya` int(12) DEFAULT NULL,
  `currentDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `checkinnew`
--

INSERT INTO `checkinnew` (`Kode_tamu`, `Tgl_checkin`, `Jam_checkin`, `Kode_kamar`, `Posisi_kamar`, `Tot_biaya`, `currentDate`) VALUES
('t1', '2022-10-02', '15:04:00', 'k2', '1', 170000, '2022-07-02'),
('t1', '2024-06-28', '18:58:00', 'k2', '2', 340000, '2024-06-28'),
('t1', '2024-07-28', '21:30:00', 'k1', '2', 760000, '2024-06-28'),
('t3', '2024-07-28', '21:33:00', 'k2', '1', 170000, '2024-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `checkoutnew`
--

CREATE TABLE `checkoutnew` (
  `Kode_tamu` char(12) NOT NULL,
  `Tgl_checkout` date DEFAULT NULL,
  `Jam_checkout` time DEFAULT NULL,
  `Kode_kamar` char(12) DEFAULT NULL,
  `Lama_inap` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `checkoutnew`
--

INSERT INTO `checkoutnew` (`Kode_tamu`, `Tgl_checkout`, `Jam_checkout`, `Kode_kamar`, `Lama_inap`) VALUES
('t3', '2022-03-02', '15:12:00', 'k1', 4),
('t3', '2024-07-28', '22:55:00', 'k2', 2),
('t3', '2024-07-28', '22:59:00', 'k2', 2),
('t3', '2024-07-28', '22:59:00', 'k3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `Kode_kamar` char(12) NOT NULL,
  `Nama_kamar` varchar(40) DEFAULT NULL,
  `Kelas` char(1) DEFAULT NULL,
  `Harga` int(12) DEFAULT NULL,
  `Fasilitas` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`Kode_kamar`, `Nama_kamar`, `Kelas`, `Harga`, `Fasilitas`) VALUES
('k1', 'Mawar', '1', 380000, 'Full Service'),
('k2', 'Melati', '2', 180000, 'AC and QueenBed'),
('k3', 'Flamboyan', '2', 170000, 'AC, Kulkas, Single Bed'),
('k4', 'Teratai', '3', 90000, 'Kipas'),
('k5', 'Rosela', '3', 90000, 'Kipas');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `Kode_tamu` char(12) NOT NULL,
  `Nama_tamu` varchar(50) DEFAULT NULL,
  `Jns_kel` char(1) DEFAULT NULL,
  `Usia` int(2) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`Kode_tamu`, `Nama_tamu`, `Jns_kel`, `Usia`, `alamat`) VALUES
('t1', 'Jono', 'L', 20, 'Demak'),
('t2', 'Winda', 'P', 23, 'Rembang'),
('t3', 'Kenis', 'P', 20, 'Kudus'),
('t4', 'Arum', 'P', 20, 'Semarang'),
('t5', 'Lala', 'P', 23, 'Surabaya');

-- --------------------------------------------------------

--
-- Table structure for table `temporary_checkin`
--

CREATE TABLE `temporary_checkin` (
  `Kode_tamu` char(12) NOT NULL,
  `Nama_tamu` varchar(45) DEFAULT NULL,
  `Jns_kel` char(1) DEFAULT NULL,
  `Usia` char(2) DEFAULT NULL,
  `Tgl_checkin` date DEFAULT NULL,
  `Jam_checkin` time DEFAULT NULL,
  `Kode_kamar` char(12) NOT NULL,
  `Kelas_kamar` char(1) DEFAULT NULL,
  `Harga` int(12) DEFAULT NULL,
  `Lama_Inap` int(2) DEFAULT NULL,
  `fasilitas` varchar(20) DEFAULT NULL,
  `Tot_biaya` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temporary_checkout`
--

CREATE TABLE `temporary_checkout` (
  `Kode_tamu` char(12) NOT NULL,
  `Nama_tamu` varchar(45) DEFAULT NULL,
  `Jns_kel` char(1) DEFAULT NULL,
  `Usia` char(2) DEFAULT NULL,
  `Tgl_checkout` date DEFAULT NULL,
  `Jam_checkout` time DEFAULT NULL,
  `Kode_kamar` char(12) NOT NULL,
  `Kelas_kamar` char(1) DEFAULT NULL,
  `Harga` int(12) DEFAULT NULL,
  `Lama_Inap` int(2) DEFAULT NULL,
  `fasilitas` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `temporary_checkout`
--

INSERT INTO `temporary_checkout` (`Kode_tamu`, `Nama_tamu`, `Jns_kel`, `Usia`, `Tgl_checkout`, `Jam_checkout`, `Kode_kamar`, `Kelas_kamar`, `Harga`, `Lama_Inap`, `fasilitas`) VALUES
('t1', 'Jono', 'L', '20', '2024-07-28', '22:48:00', 'k1', '1', 380000, 1, 'Full Service'),
('t3', 'Kenis', 'P', '20', '2024-07-28', '22:55:00', 'k2', '2', 170000, 2, 'AC and QueenBed'),
('t3', 'Kenis', 'P', '20', '2024-07-28', '22:59:00', 'k3', '3', 90000, 1, 'Kipas');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Username`, `Password`) VALUES
(1, 'Maul', '12345678'),
(2, 'Arum', '12345678'),
(3, 'Ila', '12345678'),
(4, 'Maula', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`Kode_kamar`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`Kode_tamu`);

--
-- Indexes for table `temporary_checkin`
--
ALTER TABLE `temporary_checkin`
  ADD PRIMARY KEY (`Kode_kamar`),
  ADD UNIQUE KEY `Kode_kamar` (`Kode_kamar`);

--
-- Indexes for table `temporary_checkout`
--
ALTER TABLE `temporary_checkout`
  ADD PRIMARY KEY (`Kode_kamar`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
