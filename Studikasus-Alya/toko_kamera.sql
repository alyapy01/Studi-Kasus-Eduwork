-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Bulan Mei 2023 pada 18.22
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_kamera`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamera`
--

CREATE TABLE `kamera` (
  `id_kamera` int(11) NOT NULL,
  `nama_kamera` varchar(100) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `foto` varchar(300) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kamera`
--

INSERT INTO `kamera` (`id_kamera`, `nama_kamera`, `harga`, `foto`, `id_kategori`, `id_supplier`) VALUES
(23, 'Sony Alpha 7 II', '$1665.77', 'Sony Alpha 7II.jpg', 11, 322),
(24, 'Sony Alpha 1', '$699.99', 'Sony Alpha 1.jpg', 11, 323),
(27, 'Sony Alpha 5100', '$899.00', 'Sony Alpha 5100.jpg', 11, 326),
(28, 'Sony RX1R', '$1456.00', 'Sony RX1R.jpg', 11, 327),
(30, 'Sony HDR-AS50R', '$335.15', 'Sony HDR-AS50R.jpg', 11, 329),
(31, 'Sony ZV E10', '$2333.07', 'Sony ZV E10.jpg', 11, 330);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(11, 'DSLR'),
(22, 'Action Cam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat`, `telepon`) VALUES
(322, 'PT Sony Indonesia', 'Jl. Jend. Sudirman No.28 Jakarta 10210 Indonesia', '+62-21-29498788'),
(323, 'PT Sony Indonesia', 'Jl. Jend. Sudirman No.28 Jakarta 10210 Indonesia', '+62-21-29498788'),
(326, 'PT Sony Indonesia', 'Jl. Jend. Sudirman No.28 Jakarta 10210 Indonesia', '+62-21-29498788'),
(327, 'PT Sony Indonesia', 'Jl. Jend. Sudirman No.28 Jakarta 10210 Indonesia', '+62-21-29498788'),
(329, 'PT Sony Indonesia', 'Jl. Jend. Sudirman No.28 Jakarta 10210 Indonesia', '+62-21-29498788'),
(330, 'PT Sony Indonesia', 'Jl. Jend. Sudirman No.28 Jakarta 10210 Indonesia', '+62-21-29498788');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kamera`
--
ALTER TABLE `kamera`
  ADD PRIMARY KEY (`id_kamera`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kamera`
--
ALTER TABLE `kamera`
  MODIFY `id_kamera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kamera`
--
ALTER TABLE `kamera`
  ADD CONSTRAINT `kamera_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `kamera_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
