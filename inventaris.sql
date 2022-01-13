-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 09, 2021 at 02:37 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kendaraan`
--

CREATE TABLE `jenis_kendaraan` (
  `id` int(11) NOT NULL,
  `jenis_kendaraan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_kendaraan`
--

INSERT INTO `jenis_kendaraan` (`id`, `jenis_kendaraan`) VALUES
(1, 'MOTOR'),
(2, 'MOBIL'),
(3, 'TRUK');

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id` int(11) NOT NULL,
  `no_registrasi` varchar(100) NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `jenis` varchar(110) NOT NULL,
  `tahun_pembuatan` varchar(110) NOT NULL,
  `isi_silinder` varchar(11) NOT NULL,
  `no_rangka` varchar(11) NOT NULL,
  `no_mesin` varchar(11) NOT NULL,
  `warna` varchar(11) NOT NULL,
  `bahan_bakar` varchar(11) NOT NULL,
  `warna_tnkb` varchar(11) NOT NULL,
  `tahun_registrasi` varchar(11) NOT NULL,
  `no_bpkb` varchar(11) NOT NULL,
  `tanggal_habis_stnk` varchar(100) NOT NULL,
  `input_kir` varchar(100) NOT NULL,
  `jatuh_tempo_kir` varchar(100) NOT NULL,
  `harga_stnk` varchar(100) NOT NULL,
  `harga_kir` varchar(100) DEFAULT NULL,
  `no_uji_kir` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`id`, `no_registrasi`, `nama_pemilik`, `alamat`, `merk`, `tipe`, `jenis`, `tahun_pembuatan`, `isi_silinder`, `no_rangka`, `no_mesin`, `warna`, `bahan_bakar`, `warna_tnkb`, `tahun_registrasi`, `no_bpkb`, `tanggal_habis_stnk`, `input_kir`, `jatuh_tempo_kir`, `harga_stnk`, `harga_kir`, `no_uji_kir`) VALUES
(1, '43523', 'Tedjo Edhy Purdijatno	', 'jl rangonan', 'honda', 'honda', 'MOTOR', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-07-09', '', '2021-09-06', '500000', '80000', 'UYHG8TT8'),
(2, '6576', 'Luhut Binsar Panjaitan', 'jl dashim', 'honda', 'honda', 'MOTOR', '1990', 'W3E724', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR29', '2021-07-10', '', '2021-09-07', '500000', '80000', 'UYHG8TT9'),
(3, '50099', 'Wiranto', 'jl yukd', 'honda', 'honda', 'MOTOR', '1991', 'W3E725', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR30', '2021-07-11', '', '2021-09-08', '500000', '80000', 'UYHG8TT10'),
(4, '56675', 'Sofyan Djalil', 'ferf', 'honda', 'honda', 'TRUK', '1992', 'W3E726', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR31', '2021-07-12', '', '2021-09-09', '500000', '80000', 'UYHG8TT11'),
(5, '106774', 'Darmin Nasution', 'segseg', 'honda', 'honda', 'TRUK', '1993', 'W3E727', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR32', '2021-07-13', '', '2021-09-10', '500000', '80000', 'UYHG8TT12'),
(6, '163449', 'Indroyono Soesilo', 'dfg', 'honda', 'honda', 'TRUK', '1994', 'W3E728', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR33', '2021-07-14', '', '2021-09-11', '500000', '80000', 'UYHG8TT13'),
(7, '270223', 'Rizal Ramli', 'esg', 'honda', 'honda', 'MOTOR', '1995', 'W3E729', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR34', '2021-07-15', '', '2021-09-12', '500000', '80000', 'UYHG8TT14'),
(8, '433672', 'Puan Maharani', 'sebv', 'honda', 'honda', 'MOTOR', '1996', 'W3E730', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR35', '2021-07-16', '', '2021-09-13', '500000', '80000', 'UYHG8TT15'),
(9, '703895', 'Darmin Nasution', 'sdfg', 'honda', 'honda', 'MOTOR', '1997', 'W3E731', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR36', '2021-07-17', '', '2021-09-14', '500000', '80000', 'UYHG8TT16'),
(10, '1137567', 'Pratikno', 'serg', 'honda', 'honda', 'MOTOR', '1998', 'W3E732', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR37', '2021-07-18', '', '2021-09-15', '500000', '80000', 'UYHG8TT17'),
(11, '1841462', 'Tjahjo Kumolo', 'setg', 'honda', 'honda', 'MOTOR', '1999', 'W3E733', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR38', '2021-07-19', '', '2021-09-16', '500000', '80000', 'UYHG8TT18'),
(12, '2979029', 'Retno Marsudi', 'defg', 'honda', 'honda', 'MOTOR', '2000', 'W3E734', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR39', '2021-07-20', '', '2021-09-17', '500000', '80000', 'UYHG8TT19'),
(13, '4820491', 'Ryamizard Ryacudu', 'se', 'honda', 'honda', 'MOTOR', '2001', 'W3E735', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR40', '2021-07-21', '', '2021-09-18', '500000', '80000', 'UYHG8TT20'),
(14, '7799520', 'Yasonna Laoly', 'tgdsf', 'honda', 'honda', 'MOTOR', '2002', 'W3E736', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR41', '2021-07-22', '', '2021-09-19', '500000', '80000', 'UYHG8TT21'),
(15, '12620011', 'Tjahjo Kumolo', 'gs', 'honda', 'honda', 'MOTOR', '2003', 'W3E737', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR42', '2021-07-23', '', '2021-09-20', '500000', '80000', 'UYHG8TT22'),
(16, '20419531', 'Bambang Brodjonegoro', 'fg', 'honda', 'honda', 'MOTOR', '2004', 'W3E738', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR43', '2021-07-24', '', '2021-09-21', '500000', '80000', 'UYHG8TT23'),
(17, '33039542', 'Sri Mulyani', 'sreg', 'honda', 'honda', 'MOTOR', '2005', 'W3E739', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR44', '2021-07-25', '', '2021-09-22', '500000', '80000', 'UYHG8TT24'),
(18, '53459073', 'Sudirman Said', 'steb', 'honda', 'honda', 'MOBIL', '2006', 'W3E740', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR45', '2021-07-26', '', '2021-09-23', '500000', '80000', 'UYHG8TT25'),
(19, 'wyd9qw', 'Arcandra Tahar', 'mojogendeng', 'honda', 'MOBIL', 'MOBIL', '1998', 'dwg8e7', 'qr5g', '', 'kuning', 'bensin', 'kuning', '1293', 'wafr4', '2021-07-27', '', '2021-05-20', '230000', '3000000', 'f43fwegt24'),
(20, 'ge5g', 'Ignasius Jonan', 'surakarta', 'honda', 'honda', 'MOBIL', '1920', 'JDEOJUF8', 'WEAF48', '', 'ABU ABU', 'BENSIN', 'HIJAU', '1902', 'FE42I9', '2021-07-28', '', '2021-05-05', '29000', '100000', 'FVE3T3TGGT5'),
(21, 'JHDBE37', 'Saleh Husna', 'MOJARI', 'HONDA', 'MOTOR', 'MOBIL', '1989', 'DN39', 'WEF34', '', 'GREEN', 'BENSIN', 'coklat', '1289', 'FHE9894', '2021-07-29', '', '2021-05-19', '12000', '90000', 'FCRW4E89'),
(22, '243534', 'Airlangga Hartarto', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-08-09', '', '2021-10-06', '500000', '80000', 'UYHG8TT8'),
(23, '435', 'Rachmad Gobel', 'jl dashim', 'honda', 'honda', 'MOBIL', '1990', 'W3E724', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR29', '2021-08-10', '', '2021-10-07', '500000', '80000', 'UYHG8TT9'),
(24, '243969', 'Thomas Trikasih Lembong', 'jl yukd', 'honda', 'honda', 'MOBIL', '1991', 'W3E725', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR30', '2021-08-11', '', '2021-10-08', '500000', '80000', 'UYHG8TT10'),
(25, '244404', 'Enggartiasto Lukita', 'ferf', 'honda', 'honda', 'MOBIL', '1992', 'W3E726', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR31', '2021-08-12', '', '2021-10-09', '500000', '80000', 'UYHG8TT11'),
(26, '488373', 'Amran Sulaiman', 'segseg', 'honda', 'honda', 'MOBIL', '1993', 'W3E727', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR32', '2021-08-13', '', '2021-10-10', '500000', '80000', 'UYHG8TT12'),
(27, '732777', 'Siti Nurbaya Bakar', 'dfg', 'honda', 'honda', 'MOBIL', '1994', 'W3E728', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR33', '2021-08-14', '', '2021-10-11', '500000', '80000', 'UYHG8TT13'),
(28, '1221150', 'Budi Karya Sumadi', 'esg', 'honda', 'honda', 'MOBIL', '1995', 'W3E729', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR34', '2021-08-15', '', '2021-10-12', '500000', '80000', 'UYHG8TT14'),
(29, '1953927', 'Susi Pudjiastuti', 'sebv', 'honda', 'honda', 'MOBIL', '1996', 'W3E730', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR35', '2021-08-16', '', '2021-10-13', '500000', '80000', 'UYHG8TT15'),
(30, '3175077', 'Hanif Dhakiri', 'sdfg', 'honda', 'honda', 'MOBIL', '1997', 'W3E731', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR36', '2021-08-17', '', '2021-10-14', '500000', '80000', 'UYHG8TT16'),
(31, '5129004', 'Marwan Ja\'far', 'serg', 'honda', 'honda', 'MOBIL', '1998', 'W3E732', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR37', '2021-08-18', '', '2021-10-15', '500000', '80000', 'UYHG8TT17'),
(32, '8304081', 'Eko Putro Sandjojo', 'setg', 'honda', 'honda', 'MOBIL', '1999', 'W3E733', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR38', '2021-08-19', '', '2021-10-16', '500000', '80000', 'UYHG8TT18'),
(33, '13433085', 'Basuki Hadimuljono', 'defg', 'honda', 'honda', 'MOBIL', '2000', 'W3E734', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR39', '2021-08-20', '', '2021-10-17', '500000', '80000', 'UYHG8TT19'),
(38, '345345', 'Nila Moeloek', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-10-01', '', '2021-11-01', '500000', '80000', 'UYHG8TT8'),
(56, '345345', 'Anies Baswedan', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-10-02', '', '2021-11-02', '500000', '80000', 'UYHG8TT8'),
(57, '345345', 'Muhadjir Effendy', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-10-03', '', '2021-11-03', '500000', '80000', 'UYHG8TT8'),
(58, '345345', 'Mohamad Nasir', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-10-03', '', '2021-11-03', '500000', '80000', 'UYHG8TT8'),
(59, '345345', 'Khofifah Indar Parawansa', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-10-05', '', '2021-11-05', '500000', '80000', 'UYHG8TT8'),
(60, '345345', 'Agus Gumiwang Kartasasmita', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-10-06', '', '2021-11-06', '500000', '80000', 'UYHG8TT8'),
(61, '345345', 'Lukman Hakim Saifuddin', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-10-07', '', '2021-11-07', '500000', '80000', 'UYHG8TT8'),
(64, '345345', 'Arief Yahya', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-12-31', '', '2021-12-31', '500000', '80000', 'UYHG8TT8'),
(75, '11760540', 'Rudiantara', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E733', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR38', '2021-03-10', '', '2021-05-11', '', '', ''),
(76, '345345', 'Anak Agung Gede Ngurah Puspayoga', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-05-21', '', '2021-05-21', '500000', '80000', 'UYHG8TT8'),
(77, '342', 'Yohana Yembise', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E724', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR29', '2021-05-22', '', '2021-05-22', '500000', '80000', 'UYHG8TT9'),
(78, '345687', 'Yuddy Chrisnandi', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E725', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR30', '2021-05-23', '', '2021-05-23', '500000', '80000', 'UYHG8TT10'),
(79, '346029', 'Asman Abnur', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E726', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR31', '2021-05-24', '', '2021-05-24', '500000', '80000', 'UYHG8TT11'),
(80, '691716', 'Syafruddin', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E727', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR32', '2021-05-25', '', '2021-05-25', '500000', '80000', 'UYHG8TT12'),
(81, '1037745', 'Andrinof Chaniago', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E728', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR33', '2021-05-26', '', '2021-05-26', '500000', '80000', 'UYHG8TT13'),
(82, '1729461', 'Sofyan Djalil', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E729', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR34', '2021-05-27', '', '2021-05-27', '500000', '80000', 'UYHG8TT14'),
(83, '2767206', 'Bambang Brodjonegoro	', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E730', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR35', '2021-05-28', '', '2021-05-28', '500000', '80000', 'UYHG8TT15'),
(84, '4496667', '	Ferry Mursyidan Baldan', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E731', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR36', '2021-05-29', '', '2021-05-29', '500000', '80000', 'UYHG8TT16'),
(85, '7263873', 'Sofyan Djalil', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E732', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR37', '2021-05-30', '', '2021-05-30', '500000', '80000', 'UYHG8TT17'),
(87, '345345', 'Rini Soemarno', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-05-31', '', '2021-12-01', '500000', '80000', 'UYHG8TT8'),
(88, '345345', 'Imam Nahrawi', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-11-30', '', '2021-12-12', '500000', '80000', 'UYHG8TT8'),
(90, '345345', 'Rina', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-12-31', '', '2021-12-31', '500000', '80000', 'UYHG8TT8'),
(92, '345345', 'roni', 'jl rangonan', 'honda', 'honda', 'MOBIL', '1989', 'W3E723', 'FC3FRD', 'WF32F', 'KUNING', 'BENSIN', 'COKLAT', '1921', 'FC49UR28', '2021-12-01', '', '2021-12-31', '500000', '80000', 'UYHG8TT8'),
(99, '1234234', 'dono', 'jakarta', 'honda', 'Kabupaten', 'MOBIL', '1989', 'sujiklli', 'KJBGI78', '', 'kuning', 'bensin', 'hijau', '2023', 'c40w89hjo', '2021-07-09', '2021-01-08', '2021-07-07', '80000', '12000', 'HVNR83H');

-- --------------------------------------------------------

--
-- Table structure for table `pemilik`
--

CREATE TABLE `pemilik` (
  `id` int(11) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL,
  `tmpt_tgl_lahir` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `status_perkawinan` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `kewarganegaraan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemilik`
--

INSERT INTO `pemilik` (`id`, `nik`, `nama_pemilik`, `tmpt_tgl_lahir`, `jenis_kelamin`, `alamat`, `agama`, `status_perkawinan`, `pekerjaan`, `kewarganegaraan`) VALUES
(39, '254345', 'Luhut B Pandjaitan ', 'surabaya 37 mei 2021', 'pria', 'gunung gedangan', 'Kristen', 'Belum Menikah', 'nganggur', 'indonesia'),
(41, '32423', 'Nadiem Makarim', 'medan 23 april 1202', 'pria', 'kota tua', 'Islam', 'Belum Menikah', 'merusak lingkungan', 'indonesia'),
(42, '2764823', 'Sri Mulyani Indrawati', 'seoul 12 juni 1998', 'wanita', 'jayakarta', 'Islam', 'Belum Menikah', 'boyband', 'indonesia'),
(43, '23764892', 'Retno L.P. Marsudi', 'sumedang 12 mei 1992', 'pria', 'suromadu', 'Katolik', 'Belum Menikah', 'boyband', 'indonesia'),
(44, '496347', 'Yasonna H. Laoly ', 'kenanten 16 agustus 1945', 'pria', 'mojopahit', 'Buddha', 'Sudah Menikah', 'boyband', 'indonesia'),
(45, '3792893', 'Mahfud MD', 'gresik 17 mei 2010', 'pria', 'san fransisco', 'Kristen', 'Belum Menikah', 'boyband', 'indonesia'),
(46, '362298', 'dr. Terawan Agusputranto', 'hutan belantara 18 januari 1898', 'pria', 'vietnam', 'Kristen', 'Belum Menikah', 'boyband', 'indonesia'),
(47, '54675', 'Jenderal (Purn) Fachrul Razi ', 'los angeles 17 februari 1989', 'pria', 'texas', 'Islam', 'Belum Menikah', 'boyband', 'indonesia'),
(48, '825382', 'Jenderal Tito Karnavian ', 'semampir 19 april 1898', 'pria', 'nevada', 'Katolik', 'Belum Menikah', 'boyband', 'indonesia'),
(49, '73828939', 'Muhadjir Effendy ', 'tokyo 3 februari 1989', 'pria', 'fukuoka', 'Hindu', 'Sudah Menikah', 'boyband', 'indonesia'),
(50, '2378442', 'Pratikno ', 'sidotopo wetan 1 juli 1982', 'pria', 'padang', 'Hindu', 'Belum Menikah', 'boyband', 'indonesia'),
(51, '2374682', ' Prabowo Subianto ', 'jakarta 19 juni 1929', 'pria', 'banten', 'Kristen', 'Sudah Menikah', 'boyband', 'indonesia'),
(52, '293890', 'Airlangga Hartarto', 'mimika 25 mei 1939', 'pria', 'antartika', 'Islam', 'Belum Menikah', 'boyband', 'indonesia'),
(54, '7889755', 'dono', 'sumedang ', 'laki-laki', 'jakarta', 'Islam', 'Belum Menikah', 'PNS', 'indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `password`) VALUES
(1, 'budi', 'budi'),
(2, 'afandi', 'afandi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_kendaraan`
--
ALTER TABLE `jenis_kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_kendaraan`
--
ALTER TABLE `jenis_kendaraan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `pemilik`
--
ALTER TABLE `pemilik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
