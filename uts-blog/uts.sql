-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2020 pada 12.38
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(225) NOT NULL,
  `tanggal` date NOT NULL,
  `isi` text NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `id_user`, `judul`, `penulis`, `tanggal`, `isi`, `id_kategori`, `created_at`, `updated_at`) VALUES
(3, 3, 'Laravel Jetstream', 'Cining', '2020-11-28', 'Laravel Jetstream merupakan Ekosistem baru di Laravel 8, yang digunakan untuk membuat scaffolding menggunakan Tailwind CSS dengan memberikan pilihan design livewire atau inertia, yang berarti ini menggantikan scaffolding bootstrap, vue atau react seperti pada versi sebelumnya.', 1, '2020-11-27 17:00:00', '2020-11-27 17:00:00'),
(5, 5, 'Model Directory', 'Sriwasi', '2020-11-28', 'Pada Laravel 8 model diletakkan pada direktori khusus di App\\Models yang sebelumnya berada pada luar direktori App. Meskipun bisa dikatakan bukan perubahan yang benar-benar baru karena sebelumnya Laravel pernah menerapkan perubahan ini.', 2, '2020-11-27 17:00:00', '2020-11-27 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `remember_token` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'eni', 'eni', 'eni@gmail.com', '$2y$10$SpQitvz.uXOiLRE5glKgauD04hdzgMD0uQUH.6nqxUtLieBCZvZym', NULL, '2020-11-24 14:33:34', '2020-11-24 07:33:34'),
(5, 'cining', 'cining', 'eni@gmail.com', '$2y$10$wn2c2edmwdPL8.3idmULPeJ1VoN286dXsHhIvyFj0U7HkVCc7Aphy', NULL, '2020-11-23 12:20:13', '2020-11-23 05:20:13'),
(6, 'sriwasi', 'sriwasi', 'eni@gmail.com', '$2y$10$8/lXtHY5CnIzz1tTZ/OBV.W9mPcDVFWlRMMfxS04gaTmtuMV5AuQe', NULL, '2020-11-24 07:01:38', '2020-11-24 07:01:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `update_at`) VALUES
(3, 3, '+622311262329', '2020-11-15 21:09:13', '2020-11-24 14:23:57'),
(5, 5, '+62250659998', '2020-11-15 21:09:13', '2020-11-15 17:00:00'),
(6, 6, '+622506588999', '2020-11-20 17:00:00', '2020-11-23 17:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
