-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Mar 2019 pada 08.15
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rentaldvd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_datadvd`
--

CREATE TABLE `tb_datadvd` (
  `id_dvd` int(9) NOT NULL,
  `nama_dvd` varchar(50) DEFAULT NULL,
  `kategori_dvd` varchar(25) DEFAULT NULL,
  `banyak_dvd` int(25) DEFAULT NULL,
  `harga_rentaldvd` int(11) DEFAULT NULL,
  `userHave` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_datadvd`
--

INSERT INTO `tb_datadvd` (`id_dvd`, `nama_dvd`, `kategori_dvd`, `banyak_dvd`, `harga_rentaldvd`, `userHave`) VALUES
(1, 'a', 'Cartoon', 1, 100000, 'contoh'),
(2, 'b', 'Cartoon', 2, 2000, 'contoh'),
(3, 'c', 'Action', 3, 40000, 'contoh'),
(4, 'd', 'Horor', 5, 10000, 'mona'),
(5, 'e', 'Advanture', 4, 10000, 'mona');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pinjamandvd`
--

CREATE TABLE `tb_pinjamandvd` (
  `id_pinjaman` int(9) NOT NULL,
  `id_dvd` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `mulai_minjam` varchar(25) DEFAULT NULL,
  `pengembalian` varchar(25) DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  `userHave` varchar(30) DEFAULT NULL,
  `penyedia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pinjamandvd`
--

INSERT INTO `tb_pinjamandvd` (`id_pinjaman`, `id_dvd`, `status`, `mulai_minjam`, `pengembalian`, `denda`, `userHave`, `penyedia`) VALUES
(2, 3, 'BLOCKED', '23/03/2019', '30/03/2019', 0, 'contoh', 'ACCOUNT BLOCKED');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(9) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `role` enum('Admin','User','Penyedia') DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `tgl_lahir` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `telepon` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `role`, `jenis_kelamin`, `tgl_lahir`, `email`, `telepon`) VALUES
(1, 'admin', 'admin', 'Admin', 'Laki-laki', '00/00/0000', 'alazim520@gmail.com', '085271282458'),
(3, 'contoh', 'contoh', 'Penyedia', 'Laki-laki', '10-03-2019', 'asas@as.comm', '12132323'),
(4, 'mona', 'mona', 'Penyedia', 'Perempuan', '04-03-2019', 'asd@hsgd.com', '1231232');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_datadvd`
--
ALTER TABLE `tb_datadvd`
  ADD PRIMARY KEY (`id_dvd`);

--
-- Indeks untuk tabel `tb_pinjamandvd`
--
ALTER TABLE `tb_pinjamandvd`
  ADD PRIMARY KEY (`id_pinjaman`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_datadvd`
--
ALTER TABLE `tb_datadvd`
  MODIFY `id_dvd` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_pinjamandvd`
--
ALTER TABLE `tb_pinjamandvd`
  MODIFY `id_pinjaman` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
