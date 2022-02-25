-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Feb 2022 pada 16.20
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_25_150621_create_pegawais_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pegawai_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(1, 'Gandi Simbolon', 'Buruh Peternakan', 28, 'Ki. Sukabumi No. 701, Metro 95812, Kaltara'),
(2, 'Almira Fujiati', 'Nelayan / Perikanan', 26, 'Ds. Radio No. 512, Jambi 12323, Babel'),
(3, 'Dian Andriani M.Farm', 'Transportasi', 25, 'Kpg. Basoka No. 598, Sibolga 14261, Bali'),
(4, 'Upik Mangunsong', 'Transportasi', 29, 'Ki. Tentara Pelajar No. 924, Bukittinggi 77529, NTT'),
(5, 'Vanesa Andriani S.Ked', 'Tukang Batu', 30, 'Ds. Lada No. 132, Payakumbuh 81603, Sumbar'),
(6, 'Ellis Uyainah', 'Petani / Pekebun', 27, 'Psr. Ciwastra No. 382, Administrasi Jakarta Selatan 80902, Sulsel'),
(7, 'Ani Pertiwi', 'Buruh Tani / Perkebunan', 26, 'Jr. Bakti No. 86, Surabaya 71711, Maluku'),
(8, 'Darman Nababan', 'Paraji', 28, 'Kpg. Monginsidi No. 71, Metro 24711, Bengkulu'),
(9, 'Jessica Riyanti', 'Pegawai Negeri Sipil (PNS)', 23, 'Dk. Casablanca No. 368, Palembang 34233, Jatim'),
(10, 'Anastasia Uyainah', 'Paraji', 24, 'Jln. Gajah No. 712, Padang 69254, Kaltim'),
(11, 'Lidya Mayasari', 'Mengurus Rumah Tangga', 23, 'Dk. Sudirman No. 279, Malang 75314, Jateng'),
(12, 'Ika Belinda Pertiwi M.Farm', 'Penyiar Radio', 25, 'Jr. Muwardi No. 392, Sabang 26204, Sultra'),
(13, 'Ghaliyati Anggraini', 'Guru', 26, 'Ki. Raden No. 356, Tanjung Pinang 25756, Jatim'),
(14, 'Nasim Yosef Waluyo S.Kom', 'Karyawan BUMN', 23, 'Jln. Bakin No. 87, Gorontalo 82910, Bengkulu'),
(15, 'Nova Puspasari', 'Pilot', 22, 'Kpg. Sunaryo No. 201, Mataram 81475, Kalbar'),
(16, 'Maimunah Hassanah', 'Petani / Pekebun', 27, 'Jr. Salatiga No. 759, Padangsidempuan 52082, Sulbar'),
(17, 'Gada Nugroho', 'Bidan', 24, 'Jr. Agus Salim No. 467, Palangka Raya 33551, Jabar'),
(18, 'Umi Nasyidah', 'Perawat', 23, 'Ds. Taman No. 816, Parepare 35222, Pabar'),
(19, 'Nadine Riyanti', 'Pedagang', 22, 'Dk. Villa No. 865, Administrasi Jakarta Timur 59439, Pabar'),
(20, 'Pia Rahmawati', 'Penata Busana', 24, 'Jr. Suharso No. 245, Sorong 60474, Sultra'),
(21, 'Ulva Patricia Nuraini', 'Desainer', 27, 'Jr. W.R. Supratman No. 266, Malang 47575, Kalbar'),
(22, 'Clara Suryatmi', 'Arsitek', 22, 'Psr. BKR No. 177, Administrasi Jakarta Utara 22889, Kalsel'),
(23, 'Maman Slamet Damanik M.M.', 'Apoteker', 23, 'Psr. Basudewo No. 961, Madiun 91263, Bengkulu'),
(24, 'Jamalia Zulaika', 'Peternak', 23, 'Gg. Yap Tjwan Bing No. 735, Kendari 62322, NTT'),
(25, 'Fitriani Yance Permata S.Ked', 'Pelajar / Mahasiswa', 30, 'Jr. Orang No. 160, Madiun 86031, Kaltara'),
(26, 'Zamira Yolanda S.Farm', 'Penyiar Radio', 25, 'Jr. Bakau No. 18, Langsa 70868, Kalteng'),
(27, 'Jane Dinda Hartati S.H.', 'Guru', 29, 'Gg. Bak Air No. 115, Probolinggo 64678, Gorontalo'),
(28, 'Aslijan Viktor Hardiansyah', 'Industri', 25, 'Ds. Siliwangi No. 968, Magelang 19655, Riau'),
(29, 'Jaga Rajasa', 'Industri', 26, 'Dk. Baha No. 896, Bontang 36958, Papua'),
(30, 'Jail Widodo', 'Pelaut', 25, 'Jr. Sumpah Pemuda No. 971, Parepare 73854, Sumsel'),
(31, 'Ciaobella Puti Handayani', 'Pedagang', 28, 'Jln. Bara No. 521, Tangerang 40542, Sulut'),
(32, 'Ajimat Cawisono Ramadan', 'Tukang Jahit', 24, 'Psr. Bahagia No. 994, Batu 55511, Banten'),
(33, 'Najwa Jelita Riyanti', 'Seniman', 29, 'Psr. Wahid Hasyim No. 580, Cirebon 48743, Sulteng'),
(34, 'Omar Gunawan', 'Sopir', 30, 'Jr. Peta No. 927, Surabaya 46249, Aceh'),
(35, 'Galang Marsudi Suwarno S.Pd', 'Satpam', 28, 'Kpg. Bakin No. 794, Mataram 62625, NTB'),
(36, 'Kania Yuniar', 'Penata Rias', 29, 'Ds. Monginsidi No. 681, Madiun 87811, Kepri'),
(37, 'Daryani Taufik Hakim', 'Bidan', 29, 'Psr. HOS. Cjokroaminoto (Pasirkaliki) No. 975, Tebing Tinggi 12199, Babel'),
(38, 'Galih Wawan Nugroho S.E.I', 'Jaksa', 30, 'Kpg. Raden Saleh No. 464, Ambon 21902, NTB'),
(39, 'Radika Kawaca Kuswoyo', 'Tabib', 25, 'Ki. Rumah Sakit No. 393, Palembang 70769, Kepri'),
(40, 'Almira Hartati S.T.', 'Pedagang', 27, 'Jr. Padang No. 501, Bitung 64471, Jambi'),
(41, 'Dian Raina Purwanti', 'Promotor Acara', 22, 'Ds. B.Agam 1 No. 621, Tanjungbalai 20896, Gorontalo'),
(42, 'Upik Pratama', 'Apoteker', 28, 'Ki. Bambu No. 183, Bengkulu 94822, Papua'),
(43, 'Hasta Hidayat S.I.Kom', 'Penulis', 22, 'Psr. Labu No. 285, Kupang 18372, Jatim'),
(44, 'Tina Yuniar', 'Pramugari', 27, 'Psr. Asia Afrika No. 450, Cilegon 98403, Babel'),
(45, 'Lalita Kusmawati', 'Imam Masjid', 29, 'Psr. Sumpah Pemuda No. 904, Langsa 12462, Sumsel'),
(46, 'Bahuwarna Cager Lazuardi', 'Juru Masak', 30, 'Jr. Arifin No. 815, Lhokseumawe 98261, Lampung'),
(47, 'Bella Lestari', 'Sopir', 25, 'Gg. Acordion No. 104, Batam 70278, Kepri'),
(48, 'Vanya Yuni Hassanah', 'Arsitek', 29, 'Ds. Honggowongso No. 54, Cilegon 98198, Banten'),
(49, 'Rahmi Nasyiah', 'Karyawan BUMN', 24, 'Ds. M.T. Haryono No. 267, Magelang 21962, Aceh'),
(50, 'Hamima Kani Puspita', 'Juru Masak', 26, 'Jln. Nangka No. 48, Administrasi Jakarta Selatan 93257, Kepri'),
(51, 'Rahmat Rafli', 'Programmer', 23, 'Pondok Ungu Permai Blok ii9 no.9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
