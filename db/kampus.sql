-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2022 pada 16.12
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `nama_kelas` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_update_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `classes`
--

INSERT INTO `classes` (`id`, `jurusan_id`, `nama_kelas`, `aktif`, `created_user`, `last_update_user`, `created_at`, `updated_at`) VALUES
(7, 6, 'A', 'Y', 'Frendi', NULL, '2022-01-02 13:36:35', NULL),
(8, 6, 'B', 'Y', 'Frendi', NULL, '2022-01-02 13:36:46', NULL),
(9, 6, 'C', 'Y', 'Frendi', NULL, '2022-01-02 13:37:00', NULL),
(10, 6, 'D', 'Y', 'Frendi', NULL, '2022-01-02 13:37:11', NULL),
(11, 6, 'E', 'Y', 'Frendi', NULL, '2022-01-02 13:37:21', NULL),
(12, 6, 'F', 'Y', 'Frendi', NULL, '2022-01-03 13:53:29', NULL),
(13, 6, 'G', 'Y', 'Frendi', NULL, '2022-01-03 14:47:28', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prodi_id` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL,
  `kode_makul` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_makul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `created_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_update_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `courses`
--

INSERT INTO `courses` (`id`, `prodi_id`, `dosen_id`, `kode_makul`, `nama_makul`, `semester`, `sks`, `jurusan_id`, `created_user`, `last_update_user`, `created_at`, `updated_at`) VALUES
(4, 4, 6, 'MKP4002', 'Pemrograman  Berbasis Framework', '5', 3, 6, 'Frendi', 'Frendi', '2022-01-03 13:53:05', '2022-01-03 14:45:35'),
(5, 4, 1, 'MKTI505', 'Pemrograman Berorientasi Objek', '5', 3, 6, 'Frendi', NULL, '2022-01-03 14:47:03', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `last_educations`
--

CREATE TABLE `last_educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pendidikan_terakhir` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `last_educations`
--

INSERT INTO `last_educations` (`id`, `pendidikan_terakhir`, `created_at`, `updated_at`) VALUES
(1, 'SD', '2020-08-17 20:43:39', '2020-08-17 20:43:39'),
(2, 'SMP', '2020-08-17 20:43:39', '2020-08-17 20:43:39'),
(3, 'SMA/SMK', '2020-08-17 20:43:39', '2020-08-17 20:43:39'),
(4, 'D1 - D2', '2020-08-17 20:43:39', '2020-08-17 20:43:39'),
(5, 'Diploma 3', '2020-08-17 20:43:39', '2020-08-17 20:43:39'),
(6, 'Strata 1', '2020-08-17 20:43:39', '2020-08-17 20:43:39'),
(7, 'Strata 2', '2020-08-17 20:43:39', '2020-08-17 20:43:39'),
(8, 'Strata 3', '2020-08-17 20:43:39', '2020-08-17 20:43:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lecturers`
--

CREATE TABLE `lecturers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_dosen` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_dosen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikanID` int(11) NOT NULL,
  `aktif` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lecturers`
--

INSERT INTO `lecturers` (`id`, `kode_dosen`, `nama_dosen`, `alamat`, `agama`, `email`, `jk`, `telp`, `hp`, `pendidikanID`, `aktif`, `created_user`, `last_update_user`, `created_at`, `updated_at`) VALUES
(1, '10000001', 'Mukhamad Nurkamid, S.Kom, M.Kom', 'kudus', 'Islam', 'mukhamadnurkamid@gmail.com', 'L', '02123456789', '081234567', 7, 'Y', 'frendi', 'frendir', '2020-08-17 20:43:39', '2022-01-03 14:50:57'),
(6, '676647544', 'Ratih Hindyasari S.Kom, M.kom', 'Kudus', 'Islam', 'ratih@gmail.com', 'P', '21423664', '081264354', 7, 'Y', 'riyanto', NULL, '2022-01-03 14:00:49', NULL),
(7, '47656565', 'm. Imam Ghozali M.kom', 'kudus', 'Islam', 'imam@gmail.com', 'L', '021565778', '0812656757', 7, 'Y', 'frendir', NULL, '2022-01-03 14:50:26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `majors`
--

CREATE TABLE `majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_jurusan` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi_id` int(11) NOT NULL,
  `nama_jurusan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosen_id` int(11) NOT NULL,
  `aktif` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `majors`
--

INSERT INTO `majors` (`id`, `kode_jurusan`, `prodi_id`, `nama_jurusan`, `dosen_id`, `aktif`, `created_user`, `last_update_user`, `created_at`, `updated_at`) VALUES
(6, 'TI', 4, 'Teknik Informatika', 1, 'Y', 'Frendi', NULL, '2022-01-02 12:16:06', NULL),
(7, 'TE', 4, 'Teknik Elektro', 1, 'Y', 'Frendi', NULL, '2022-01-03 13:51:40', NULL),
(8, 'SI', 4, 'Sistem  Informasi', 1, 'Y', 'Frendi', NULL, '2022-01-03 14:44:56', NULL);

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
(4, '2020_07_19_150225_create_last_educations_table', 1),
(5, '2020_07_21_101837_create_studyprograms_table', 1),
(6, '2020_07_21_114200_create_lecturers_table', 1),
(7, '2020_07_22_130420_create_majors_table', 1),
(8, '2020_07_22_151728_create_courses_table', 1),
(9, '2020_07_22_182931_create_classes_table', 1),
(10, '2020_07_24_102428_create_schedules_table', 1),
(11, '2020_07_25_143425_create_students_table', 1),
(12, '2020_07_26_145908_create_temp_students', 1),
(13, '2020_07_28_125240_create_scores_table', 1);

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
-- Struktur dari tabel `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `makul_id` int(11) NOT NULL,
  `kategori_jadwal` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `hari` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_mulai` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_selesai` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosen_id` int(11) NOT NULL,
  `created_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_update_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `schedules`
--

INSERT INTO `schedules` (`id`, `jurusan_id`, `makul_id`, `kategori_jadwal`, `ruang`, `kelas_id`, `hari`, `jam_mulai`, `jam_selesai`, `dosen_id`, `created_user`, `last_update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'REG', 'R. 201', 2, 'Sabtu', '08:00', '09:00', 1, 'muharik', NULL, '2020-08-17 20:43:39', NULL),
(2, 1, 1, 'REG', 'R. 201', 2, 'Selasa', '10:00', '11:00', 1, 'muharik', NULL, '2020-08-17 20:43:39', NULL),
(3, 1, 2, 'REG', 'R. 301', 2, 'Senin', '10:00', '11:00', 1, 'muharik', NULL, '2020-08-17 20:43:39', NULL),
(4, 1, 1, 'REG', 'R. 106', 2, 'Selasa', '10:00', '11:00', 1, 'muharik', NULL, '2020-08-17 20:43:40', NULL),
(5, 5, 3, 'REG', 'R. 106', 2, 'Rabu', '10:00', '11:00', 4, 'muharik', NULL, '2020-08-17 20:43:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `makul_id` int(11) NOT NULL,
  `uts` double(8,2) NOT NULL,
  `uas` double(8,2) NOT NULL,
  `nilai` double(8,2) NOT NULL,
  `sks` int(11) NOT NULL,
  `mutu` double(8,2) NOT NULL,
  `created_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_update_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `scores`
--

INSERT INTO `scores` (`id`, `nim`, `makul_id`, `uts`, `uas`, `nilai`, `sks`, `mutu`, `created_user`, `last_update_user`, `created_at`, `updated_at`) VALUES
(3, '2011140023', 3, 85.00, 85.00, 3.00, 2, 6.00, 'setiyawan', NULL, '2020-08-24 02:16:52', NULL),
(4, '201951163', 4, 89.00, 90.00, 4.00, 3, 12.00, 'riyanto', NULL, '2022-01-03 14:07:28', NULL),
(5, '201951163', 5, 90.00, 90.00, 4.00, 3, 12.00, 'frendir', NULL, '2022-01-03 14:54:01', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_mahasiswa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `prodi_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `kategori_kelas` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aktif` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_update_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `nim`, `nama_mahasiswa`, `alamat`, `jk`, `telp`, `hp`, `agama`, `email`, `tempat_lahir`, `tanggal_lahir`, `prodi_id`, `jurusan_id`, `kelas_id`, `kategori_kelas`, `foto`, `aktif`, `created_user`, `last_update_user`, `created_at`, `updated_at`) VALUES
(3, '201951163', 'Frendi Riyanto', 'Jepara', 'L', NULL, '0856516356', 'Islam', 'frendiry@gmail.com', 'Jepara', '2022-01-02', 4, 6, 7, 'REG', '/9j/4AAQSkZJRgABAQEASABIAAD/4gKgSUNDX1BST0ZJTEUAAQEAAAKQbGNtcwQwAABtbnRyUkdCIFhZWiAH3gAEABEADgAZACRhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAtkZXNjAAABCAAAADhjcHJ0AAABQAAAAE53dHB0AAABkAAAABRjaGFkAAABpAAAACxyWFlaAAAB0AAAABRiWFlaAAAB5AAAABRnWFlaAAAB+AAAABRyVFJDAAACDAAAACBnVFJDAAACLAAAACBiVFJDAAACTAAAACBjaHJtAAACbAAAACRtbHVjAAAAAAAAAAEAAAAMZW5VUwAAABwAAAAcAHMAUgBHAEIAIABiAHUAaQBsAHQALQBpAG4AAG1sdWMAAAAAAAAAAQAAAAxlblVTAAAAMgAAABwATgBvACAAYwBvAHAAeQByAGkAZwBoAHQALAAgAHUAcwBlACAAZgByAGUAZQBsAHkAAAAAWFlaIAAAAAAAAPbWAAEAAAAA0y1zZjMyAAAAAAABDEoAAAXj///zKgAAB5sAAP2H///7ov///aMAAAPYAADAlFhZWiAAAAAAAABvlAAAOO4AAAOQWFlaIAAAAAAAACSdAAAPgwAAtr5YWVogAAAAAAAAYqUAALeQAAAY3nBhcmEAAAAAAAMAAAACZmYAAPKnAAANWQAAE9AAAApbcGFyYQAAAAAAAwAAAAJmZgAA8qcAAA1ZAAAT0AAACltwYXJhAAAAAAADAAAAAmZmAADypwAADVkAABPQAAAKW2Nocm0AAAAAAAMAAAAAo9cAAFR7AABMzQAAmZoAACZmAAAPXP/bAEMABQMEBAQDBQQEBAUFBQYHDAgHBwcHDwsLCQwRDxISEQ8RERMWHBcTFBoVEREYIRgaHR0fHx8TFyIkIh4kHB4fHv/bAEMBBQUFBwYHDggIDh4UERQeHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHv/AABEIAIAAgAMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAADAgQFBgcIAQD/xAA7EAACAQMCBAQEAwYEBwAAAAABAgMABBEFIQYSMVEHE0FhFCJxgTJCoQgjYpGx0TNSwfAVJCVykuHx/8QAGgEAAgMBAQAAAAAAAAAAAAAAAAMBBAUCBv/EACcRAAICAQQBAwQDAAAAAAAAAAABAgMRBBIhMQUTIkFRUmGBcZGx/9oADAMBAAIRAxEAPwC6BaUBSwma95afjkpniilgV5ymvaAwKxQbmaK3heaZwkaAlmPoKUzYFc/eMfiSmo6keHtJWdYYJWS6mGxOB+XB6Z71xZPYhlde+WDWNf420qwtS9pPHdyHGyN+HI6mqjZ+I+oKvlXkCuQMLPGowc9CR/aset7i2jDTWmqvPCFUeURl1IHfI7mi8/xFs1xFPcRFhtG3y5wfTm9D2qjK6becmjDT1pYxk2608TNNlnty4XynU+bjqjDHp171ddJ1Kx1O1W5s5lkRtuxz9K5Lu7mWKZriO9jkb/JINwfYjbH8qsnBviBe6Fcxs0jPb4y8a78zD0z7j9abXfJPnoTZpote3s6e5Qa8KioXhLibTeJNOW70+YNkAvGSOZD2OKmS2auJp9FBpp4YhlFDcYopNCepAA4HahMKMwpBWgkmQKUFFDRqIGFBye8g7V4UpYIr3O1BJXeNdfsOGNEk1PUOdkBCIiDeRz0Uf76CuW5Il1a9vdcuY1YXsxIXm236juQNhWoeP2oz6vxJa8O2LyutsAbhOYhS7YwAO+D1PepPhTwsutVhheIlLSNeRDgb46n7nNZ2puW7aamjobjuMe07TYYnWWDT2uAuwzOX5cdlOADT7VoLeQiMqLiVt/JJAIP2z/WtutfCO4N+0b2plRWwHIyue9WbSfArRo3E05w3RlRB07ZNVJXbui+tO4rk5IvLNo5Gfy415tmRAW/UU3NjzwsZQI1CEcxyPpnvXb8fhZwnax7aPC7A55n3NV/i/wAOtCv7GS3SxiiIX5Si4Ipb1W3sbHQSmso5s8HeIY+FNcVZVEiXEqxSsrPkKfUL69+hPauooXWWJZEOVYAg49K5S404dl0LXDb7xFccrnY4yQM/eui/DDiC34g4Ps7qNm86JRBcqwwVkUYP2PUGtTS270YusqdcuUWTlpLLRGcUCSUVcKORLgUF2ApMs2KZzT+9AZJxWNEVzQFNLBqTkOr0svtQFNK3oAyyWx/4j4larNPyMhuFjyN9lVRiujtCtoLbT4VijCry9BWFahEun8QXDRD97NcpKCf4mFbrYSrb2kazuFKpk5PbrWJZxN5PSaZZrSRLRhevLRgAV27VUYfEXg0Xhs21mFJVblKkHY1a7e5tbiFZ4J0eNhlWU5BFcrkc+Bre55TyjeqxqKMJiTTvjni/SuGrfzbxLiXPRYUyTVHt+P4tTja4bhvVre3JyJWQYI9qp3wfwX6LYpYM7/aD0K1uoop4xi4IOwO5AOaaeAMwXhe9i8sJJHesHI/MSoOTUz4tpHqWjW+t2tyzRwTqpGCDucbg9KbeE9oItIu7oZBnuD1HYf8Aur3jW84Mby6XLLq0pNN5JGojUGSts8+N5pDTWRiacuuaC60AWMGlA0lVyelFVDUgeqaIgLsFUZJOBSQlFgJjlSQdVYMPsagF3yVjjXQr604gs9V82OWycovPHuFcN+Fs9D2q98T288dwdQjhlvJMKscKjIUepwSAT9SBUjxhZC/4UiMMBnT4yGZlUbhA6kn7A5qctLf4gMAMisGzdKX5PWUwhDhdGS31nxBqF8q3/Dtpa2yAsLiSRWYHGQNhjJO34cDua0ng23lh0vy7kFSE+TGB9ttqfDRrNJeaVFkI3AboKfoiLGeVQBy7AdKhJ5zjA1pdZyZdxJpt1f6k89zdeVBG/Kg9B7kbZ39Miqy2mcZISH1LSpfmHlxwZDcv22P0Ix71rSLGkj+bjy3bDBulHk0+xETGJEjcjqqjekQy4tIsSqippt8GK+JemTR8E6gqxjJaOSQLuM5GTT3hTSDpPD8dmTJK8aLK8ufkJf8AKo67bb1N+IsEp0W6soFDSXK+SgJ9WIGd+2c/an2oRJbaPb26nLBFjyepC53/AKUzRSl6qS+pV8hVX6U5NZ4IJwaCy06ZTQ2SvRnkBoyn0oTJTxloTLQSTqrSxSQaUKCBQpVJzXoNAFi0TVrZdNlsb7Iwh8mTJ226VK2l81talQN+XmNUnqKn7S7SW3jVjvjlYH1Hr+tZesr2NTibXj9Q5rZL4HEU97cSNc3L8qscxx59B3+tO5OLLS3RviLWdX6YRecH+VReoaFqEkUdxo2tXFkUbMkaxRuJE9QCykqfpUzbRaUU/fX2sRyeXknKMvNt7detIrXBqSbazjP8FQ1HX7rUw1vaafcQ2rt800qlWYA/lX0+ppzb3ckJ5UucjIUxsd8n1FOuMbPSZLaeO2utaEsoxHMbtk5Dt0A6+tRGn6Xb6TpSRNPc3Vwq8xnupjI5Y+56fSkzSgP3TcU2v7I7U7+SbVbRxh+STmCk7HFFvLme7cPOwJ9hgCoi1lS61aSSEf8ALwLyK3+Zu/8AWpEmr3j6IqPqNcswPKaqcp+mnwIKihsB2pbGgu1aZkiZAKbtS5GoTGgknBSxQw1LDDvQQKAoiikAjvXvOBQAQCp6CyaTQ4LuEfvELZx6jNVwye9X/hdP+hQq46gn9ap6xZrwXtA8WN/gaaFeLLH5ZbBXr9KJqtlLOvNbTojn1K5qL4h0u5hn+K08iO46jP4W9j/eqxqXGWracFju9HvEbm35Yiyn6FfT/eKzI8cG3CeHks0tj5R5ricO43/DjNULi7Vmub4aNpzM8srZbH5fTf2plqnGGva1N5Wm6bcqccokmiZEX3OdzUxwLw5Jasbu6LS3Dks8jdWP+g9qRZ2Odu7oWmnrpmn29so3AJZsdT60Jmqc4kiKxxkDpnNQOM1sePeaF+zz/k1jUP8AX+CSxobZo3LSGAq8UABBpJFGahmgkks17zUJWpfpQQxfPivGkNBmljhjMksiRou5ZmwB96ovE3iBZKk1lo7GaYDlNwBhEPt3NBKi2OeOuLWtphoemOfjJpEiklU/4fOwGB/Fg/auhNIkhgkbTvwGNQYwfzL0/QiuILicrP8AFKzmVH8xWJyeYHOf512Pw5eW/EnDOnanFKsc09uk8TjqCyjI9xnqK5updlbS7LVE1VPnplpljV1yRntTf4e3kzzxqSO4ptY6gwf4W7AWZRvg5BHce1GuHJVjG2D3FZLjjhmmnnohdYjgMvlRQrt1IFHitkit12AOKSYuQ5Zskncn1pV7OEhyTygDcmkuv5HRn8FV4uLzK9tC/lSNaXDK4/KQnyn/AMsVmHh5xvacSWawXLR2+poMSRZwJP4l/tWi8X3Is9Pu72XCyeS/X8iAc2PqSAT9BXHdpdPbuskY+YYIYHBDdwa09NW6akmZ2rcbrG0dXM2BQmJrJeE/FRoo1t9fjd41AAuEHzj/ALh6/UVpOjazpms2/n6beRXC+oU/Mv1HUVaTTM+Vbj2PyaQaUTQ2YVJyPQ1Vri/jbTeH0MIPxV8R8sCHp7sfT+tZ3xH4n6jdI9tpsS2atsXB5n+x9KqEE6orXM7mWdt8scnPeuHL6D41fcTXFfFOp6oC+ozYJ/w7dDhIx9PU/WoTT5rlYQqxh0LElh1Gf60xlZrm4Yths96lldVtVKgBeUYUem2/611EY1xhAblskhCceveuiv2XtTe+4HnsJJQzadcsqK3VVb5h9tzXN7E83L0zWjfs7cQHQ+OpLSQk299DhwO6nr/I0+p+7Auxe06D1bULi6480/R4+VI/hfMZlUc7OxIG59AFO3v7VJ3Fy1ueWVsEErsehHftUPf2a3nFUl2MlY4I41YbEHds5+9SNxprSQyIC559ySw3PXOfrU6nRwsWV3g40+qnW8PrI6ikjwJGfmPWoDizVJraznuILiKB4hzAuvNggEjb16b08iaOK2BkcKFHzEnoO9VDiCeXWpX5I2EJIXJ26D0Hb13ql4ymNs25Lou6+yVcEk8ZKx4t8RSX/h/dX6HyhPaJ8mckGQDI/WucCABit48cUFpwPFAkfIJbiNfog3A/QVgshySCafqViXAijmPIoB+UGNvsaeWV5cafcQyW08ttPuQY2wVx/p7UyhVs4yCP1r5FAkkk/MXJJ71XHGn8NeKF3bhLfXoPiI+guItm+pHQ/oa0fSNZ07V7b4jT7uOdPUA7r9R1Fc3h8DfBHqD0pdhfXenXYu9PuZbeVT1Rsf8A0VKm1wxcqYy6P//Z', 'Y', 'Frendi', NULL, '2022-01-02 13:40:17', NULL),
(7, '201951164', 'Frendi', 'Jepara', 'L', '12123761', '0856516356', 'Islam', 'frendirynto@gmail.com', 'Jepara', '2022-01-03', 4, 6, 7, 'REG', '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', 'Y', 'riyanto', NULL, '2022-01-03 14:15:18', NULL),
(8, '201951165', 'Riyanto', 'Jepara', 'L', '12123761', '0856516356', 'Islam', 'riyanto2@gmail.com', 'Jepara', '2022-01-03', 4, 6, 7, 'REG', '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', 'Y', 'frendir', NULL, '2022-01-03 14:53:01', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `studyprograms`
--

CREATE TABLE `studyprograms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_prodi` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_prodi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ka_prodi` int(11) NOT NULL,
  `aktif` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `studyprograms`
--

INSERT INTO `studyprograms` (`id`, `kode_prodi`, `nama_prodi`, `ka_prodi`, `aktif`, `created_user`, `last_update_user`, `created_at`, `updated_at`) VALUES
(4, 'FT', 'Fakultas Teknik', 1, 'Y', 'Frendi', NULL, '2022-01-02 12:12:50', NULL),
(6, 'FM', 'Fakultas Management', 6, 'Y', 'Frendi', NULL, '2022-01-03 14:43:22', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp_students`
--

CREATE TABLE `temp_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_mahasiswa` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `prodi_id` int(11) DEFAULT NULL,
  `jurusan_id` int(11) DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `kategori_kelas` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aktif` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_upload` date DEFAULT NULL,
  `created_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `aktif` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikanID` int(11) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nip`, `nama_lengkap`, `alamat`, `telp`, `hp`, `agama`, `email`, `email_verified_at`, `aktif`, `level`, `username`, `password`, `pendidikanID`, `last_login`, `created_user`, `last_update_user`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '201951163', 'Frendi Riyanto', NULL, NULL, NULL, 'Islam', 'frendi@gmail.com', NULL, 'Y', 1, 'Frendi', '$2y$10$H.Ykh9Y1GIV73Uoxm68gseOPu6SwNaZ/ktQf6gPxX1jwSWtrGWJD6', 6, '2022-01-03 21:39:10', 'Frendi', NULL, NULL, '2020-08-17 20:43:39', '2022-01-03 14:39:10'),
(6, '7847645665', 'Riyanto', 'Jepara', NULL, '0856545434', 'Islam', 'riyanto@gmail.com', NULL, 'Y', 2, 'riyanto', '$2y$10$JkBIMXI6Dw0hgxmFxTcSD.mNXKtJWAfSueWkyfotAAQjY2PiQC8ge', 6, '2022-01-03 20:54:10', 'Frendi', NULL, NULL, '2022-01-03 13:47:25', '2022-01-03 13:54:10'),
(8, '4566556', 'Frendi', 'Karanganyar', '02157543', '089562462', 'Islam', 'frendir@gmail.com', NULL, 'Y', 2, 'frendir', '$2y$10$uWx58/vMxgpz26bY82to7.eVkSVINKDHl/Db05FP3z.dLyZhF2SNa', 6, '2022-01-03 21:48:07', 'Frendi', NULL, NULL, '2022-01-03 14:41:47', '2022-01-03 14:48:07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `last_educations`
--
ALTER TABLE `last_educations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lecturers_email_unique` (`email`);

--
-- Indeks untuk tabel `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indeks untuk tabel `studyprograms`
--
ALTER TABLE `studyprograms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `temp_students`
--
ALTER TABLE `temp_students`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `last_educations`
--
ALTER TABLE `last_educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `majors`
--
ALTER TABLE `majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `studyprograms`
--
ALTER TABLE `studyprograms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `temp_students`
--
ALTER TABLE `temp_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
