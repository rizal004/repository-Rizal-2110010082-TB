-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 06, 2024 at 11:50 PM
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
-- Database: `dbpendaftaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `tborangtua`
--

CREATE TABLE `tborangtua` (
  `noktp` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jeniskelamin` varchar(30) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `tgl` date NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tborangtua`
--

INSERT INTO `tborangtua` (`noktp`, `nama`, `jeniskelamin`, `tempat`, `tgl`, `alamat`) VALUES
('2211', 'smasudin', 'Laki-Laki', 'banjau', '2024-01-11', 'naga01'),
('10022', 'SSari', 'Perempuan', 'Tapus', '1992-01-08', 'Jl.Tapus');

-- --------------------------------------------------------

--
-- Table structure for table `tbpendaftaran`
--

CREATE TABLE `tbpendaftaran` (
  `npm` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jeniskelamin` varchar(30) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `tgl` date NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telpon` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbpendaftaran`
--

INSERT INTO `tbpendaftaran` (`npm`, `nama`, `jeniskelamin`, `tempat`, `tgl`, `alamat`, `telpon`, `jurusan`) VALUES
('2110010082', 'Rizal', 'Laki-Laki', 'Buntok', '2000-10-28', 'Jl.Ra Kartini', '082256375640', 'Teknik Informatika'),
('33', 'Rizaaa', 'Laki-Laki', 'buntok', '2024-01-24', 'gambut', '333', 'Fisika '),
('211122', 'naga', 'Laki-Laki', 'aceh44', '2024-01-11', 'www', '2223', 'Ekonomi'),
('2100100033', 'Hais', 'Laki-Laki', 'Buntok', '2024-01-05', 'handil22', '323232', 'Ekonomi');

-- --------------------------------------------------------

--
-- Table structure for table `tbtransaksi`
--

CREATE TABLE `tbtransaksi` (
  `kode` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `pajak` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbtransaksi`
--

INSERT INTO `tbtransaksi` (`kode`, `nama`, `jurusan`, `harga`, `pajak`, `total`) VALUES
('Ke01', 'Rizal', 'Ekonomi', 500000, 15000, 515000),
('F001', 'Lisada', 'Fisika', 400000, 12000, 412000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
