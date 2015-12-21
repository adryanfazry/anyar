-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 17, 2015 at 10:30 AM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tokonlinedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(3) NOT NULL auto_increment,
  `nama` varchar(255) collate latin1_general_ci NOT NULL,
  `email` varchar(255) collate latin1_general_ci NOT NULL,
  `kelamin` varchar(8) collate latin1_general_ci NOT NULL,
  `user` varchar(25) collate latin1_general_ci NOT NULL,
  `password` varchar(255) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `kelamin`, `user`, `password`) VALUES
(1, 'Agus Sumarna', 'sumarna@yahoo.com', 'pria', 'agus', 'fdf169558242ee051cca1479770ebac3'),
(2, 'Siera Nevada', 'siera@yahoo.com', 'Wanita', 'siera', '47c0abc24dd9c450577173afdd173d64'),
(3, 'User Admin', 'user@yahoo.com', 'pria', 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE IF NOT EXISTS `counter` (
  `tgl` varchar(30) collate latin1_general_ci NOT NULL,
  `jml` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`tgl`, `jml`) VALUES
('2008-11-16 13:03:54', 661);

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE IF NOT EXISTS `daftar` (
  `id` int(5) NOT NULL auto_increment,
  `nama` varchar(50) collate latin1_general_ci NOT NULL,
  `user` varchar(20) collate latin1_general_ci NOT NULL,
  `email` varchar(50) collate latin1_general_ci NOT NULL,
  `pass` varchar(70) collate latin1_general_ci NOT NULL,
  `tanggal` varchar(30) collate latin1_general_ci NOT NULL,
  `alamat` text collate latin1_general_ci NOT NULL,
  `kota` varchar(50) collate latin1_general_ci NOT NULL,
  `kodepos` varchar(15) collate latin1_general_ci NOT NULL,
  `provinsi` varchar(50) collate latin1_general_ci NOT NULL,
  `telpon` varchar(15) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=45 ;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`id`, `nama`, `user`, `email`, `pass`, `tanggal`, `alamat`, `kota`, `kodepos`, `provinsi`, `telpon`) VALUES
(44, 'Adryanmf', 'adryanmf', 'adryanmf@yahoo.com', '3c49c0d0ec6b29f6db5522d276ddab7e', 'Mon, 16-Nov-2015 01:59:45', 'AAAA', 'SSSS', '46396', 'BANDUNG', '082317327321'),
(43, 'Adryan', 'adryan', 'adryan@yahoo.com', '202cb962ac59075b964b07152d234b70', 'Sat, 14-Nov-2015 08:09:15', 'Fsgsadf', 'Sadgdasg', '35325', 'Fdzgvsffsa', '23523523');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE IF NOT EXISTS `laporan` (
  `idlap` int(4) NOT NULL auto_increment,
  `iduser` varchar(4) collate latin1_general_ci NOT NULL,
  `tgl` varchar(30) collate latin1_general_ci NOT NULL,
  `status` varchar(20) collate latin1_general_ci NOT NULL,
  `kode` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`idlap`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=41 ;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`idlap`, `iduser`, `tgl`, `status`, `kode`) VALUES
(40, '44', 'Mon, 16-Nov-2015 02:57:27', 'proses', '161115-025719'),
(39, '43', 'Sat, 14-Nov-2015 13:32:31', 'proses', '141115-133210');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `idpesan` int(4) NOT NULL auto_increment,
  `iduser` varchar(4) collate latin1_general_ci NOT NULL,
  `idbrg` varchar(4) collate latin1_general_ci NOT NULL,
  `idlap` varchar(4) collate latin1_general_ci NOT NULL,
  `status` varchar(10) collate latin1_general_ci NOT NULL,
  `tgl` varchar(30) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`idpesan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=104 ;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`idpesan`, `iduser`, `idbrg`, `idlap`, `status`, `tgl`) VALUES
(101, '44', '12', '40', 'proses', 'Mon, 16-Nov-2015 02:44:56'),
(100, '44', '12', '40', 'proses', 'Mon, 16-Nov-2015 02:09:39'),
(99, '44', '12', '40', 'proses', 'Mon, 16-Nov-2015 02:09:25'),
(98, '44', '12', '40', 'proses', 'Mon, 16-Nov-2015 02:00:14'),
(97, '43', '14', '', 'proses', 'Sat, 14-Nov-2015 13:31:54'),
(96, '43', '12', '', 'proses', 'Sat, 14-Nov-2015 13:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `idbrg` int(3) NOT NULL auto_increment,
  `tgl` varchar(30) collate latin1_general_ci NOT NULL,
  `namabrg` varchar(50) collate latin1_general_ci NOT NULL,
  `spek` text collate latin1_general_ci NOT NULL,
  `hargabrg` int(7) NOT NULL,
  `stok` int(2) NOT NULL,
  `gambar` varchar(255) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`idbrg`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idbrg`, `tgl`, `namabrg`, `spek`, `hargabrg`, `stok`, `gambar`) VALUES
(12, 'Wed, 04-Nov-2009 07:37:20', 'DVD AVT 7099', '', 1225000, 20, './admin/gambar/AVT7099.jpg'),
(13, 'Wed, 04-Nov-2009 07:38:06', 'DVD Portable', '', 3400000, 20, './admin/gambar/B2186.jpg'),
(14, 'Wed, 04-Nov-2009 07:37:43', 'DVD AVT Av-R7088', '', 1000000, 20, './admin/gambar/SingleDVDAVT AV-R7088.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shoping`
--

CREATE TABLE IF NOT EXISTS `shoping` (
  `idshop` int(4) NOT NULL auto_increment,
  `idbrg` int(4) NOT NULL,
  `iduser` int(4) NOT NULL,
  `tgl` varchar(30) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`idshop`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=127 ;

--
-- Dumping data for table `shoping`
--

