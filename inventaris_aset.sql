-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jan 2023 pada 06.02
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris_aset`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aset_keluar`
--

CREATE TABLE `aset_keluar` (
  `kode_aset` int(11) NOT NULL,
  `nama_aset` varchar(30) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `aset_keluar`
--

INSERT INTO `aset_keluar` (`kode_aset`, `nama_aset`, `jumlah`, `tanggal_masuk`, `tanggal_keluar`, `kategori`) VALUES
(1, 'POS', 5, '2022-06-01', '2022-07-01', 'Layak'),
(3, 'PC', 30, '2022-06-01', '2022-06-01', 'Kurang Layak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aset_masuk`
--

CREATE TABLE `aset_masuk` (
  `kode_aset` int(11) NOT NULL,
  `nama_aset` varchar(30) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `aset_masuk`
--

INSERT INTO `aset_masuk` (`kode_aset`, `nama_aset`, `jumlah`, `tanggal_masuk`, `kategori`) VALUES
(1, 'Client', 10, '2022-06-01', 'Layak'),
(3, 'PC POS', 30, '2022-06-01', 'Layak'),
(4, 'PC ', 100, '2022-06-01', 'Rusak'),
(5, 'Scanner', 20, '2022-06-02', 'Layak'),
(6, 'Print Thermal', 50, '2022-06-02', 'Kurang Layak'),
(7, 'SATO SZPL', 40, '2022-06-02', 'Layak'),
(8, 'POS', 10, '2022-06-01', 'Layak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aset_keluar`
--
ALTER TABLE `aset_keluar`
  ADD PRIMARY KEY (`kode_aset`);

--
-- Indeks untuk tabel `aset_masuk`
--
ALTER TABLE `aset_masuk`
  ADD PRIMARY KEY (`kode_aset`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aset_keluar`
--
ALTER TABLE `aset_keluar`
  MODIFY `kode_aset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `aset_masuk`
--
ALTER TABLE `aset_masuk`
  MODIFY `kode_aset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
