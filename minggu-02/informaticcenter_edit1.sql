-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 12:28 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `informaticcenter_edit1`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_dosen`
--

CREATE TABLE `data_dosen` (
  `NIP` varchar(14) NOT NULL,
  `Nama_Dosen` varchar(30) NOT NULL,
  `Jenis_Kelamin` enum('L','P') NOT NULL,
  `Kontak` varchar(14) NOT NULL,
  `Alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_dosen`
--

INSERT INTO `data_dosen` (`NIP`, `Nama_Dosen`, `Jenis_Kelamin`, `Kontak`, `Alamat`) VALUES
('140810100001', 'Rudi Rosadi', 'L', '082222222222', 'Jln. Caringin');

-- --------------------------------------------------------

--
-- Table structure for table `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `NPM` varchar(14) NOT NULL,
  `Nama_Mahasiswa` varchar(30) NOT NULL,
  `Semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `Jenis_Kelamin` enum('L','P') NOT NULL,
  `Kontak` varchar(14) NOT NULL,
  `Alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`NPM`, `Nama_Mahasiswa`, `Semester`, `Jenis_Kelamin`, `Kontak`, `Alamat`) VALUES
('140810180049', 'Rizky Anugerah', '3', 'L', '081111111111', 'Jln. Perumahan Ikopin');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `Id_MataKuliah` varchar(14) NOT NULL,
  `Nama_MataKuliah` varchar(30) NOT NULL,
  `Hari` date NOT NULL,
  `Waktu` datetime(6) NOT NULL,
  `Sks` enum('2','3') NOT NULL,
  `Kurikulum` enum('2016','2017') NOT NULL,
  `Semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `NIP` varchar(14) NOT NULL,
  `Nama_Dosen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '*4ACFE3202A5FF5CF467'),
('test', '*94BDCEBE19083CE2A1F'),
('test2', 'test2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_dosen`
--
ALTER TABLE `data_dosen`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`NPM`),
  ADD UNIQUE KEY `Semester` (`Semester`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`Id_MataKuliah`),
  ADD KEY `Semester` (`Semester`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `Nama_Dosen` (`Nama_Dosen`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`NIP`) REFERENCES `data_dosen` (`NIP`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`Semester`) REFERENCES `data_mahasiswa` (`Semester`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
