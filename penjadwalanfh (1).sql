-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 02:07 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjadwalanfh`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `tanggal`, `dari`, `sampai`, `isi`, `created_at`, `updated_at`) VALUES
(38, '2019-09-04', '2019-09-04', '2019-09-04', 'Tes', '2019-09-04 15:21:59', '2019-09-04 15:21:59'),
(39, '2019-09-13', '2019-09-13', '2019-09-14', 'coba', '2019-09-13 03:15:40', '2019-09-13 03:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(10) UNSIGNED NOT NULL,
  `nip_dosen` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_dosen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nip_dosen`, `nama_dosen`, `email`, `created_at`, `updated_at`) VALUES
(1, '', 'Dr.Saipudin, SE, M.Si', '', NULL, NULL),
(2, '', 'Dr.Saipudin, SE, M.Si, Ak, CA', '', NULL, NULL),
(3, '', 'Dr. Rizali, MP', '', NULL, NULL),
(4, '', 'Syahrituah Siregar, SE, MA', '', NULL, NULL),
(5, '', 'Ryan Juminta Anward, SE,M.Sc', '', NULL, NULL),
(6, '', 'Drs. M.Saleh, MP', '', NULL, NULL),
(7, '', 'Dra. Eny Fahrati, MP', '', NULL, NULL),
(8, '', 'Drs. M.Effendi, MS', '', NULL, NULL),
(9, '', 'Drs. Nasrudin, ME', '', NULL, NULL),
(10, '', 'Dra. Ika Chadriyanti, MP', '', NULL, NULL),
(11, '', 'Dra. Na\'imatul Aufa, MM', '', NULL, NULL),
(12, '', 'Dr. Noor Rahmini, SE, ME', '', NULL, NULL),
(13, '', 'A.Suhaili, SE, M.Si, Ak, CA', '', NULL, NULL),
(14, '', 'Fatimah, SE, M.Si, Ak, CA', '', NULL, NULL),
(15, '', 'Dahniar, SE, MM', '', NULL, NULL),
(16, '', 'Hendra, SE, ME', '', NULL, NULL),
(17, '', 'Rifqi Novriyandana, SE, M.Acc, MM, Ak', '', NULL, NULL),
(18, '', 'Sri Maulida, S.E.Sy., MEI', '', NULL, NULL),
(19, '', 'Chairul Sa\'roni, SE, M.Si', '', NULL, NULL),
(20, '', 'Dra. S.M.Zulfaridatulyaqin, MT', '', NULL, NULL),
(21, '', 'Drs. Masrani Noor, M.Si', '', NULL, NULL),
(22, '', 'Lina Suherty, SE, MP', '', NULL, NULL),
(23, '', 'Ada', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `honor`
--

CREATE TABLE `honor` (
  `id` int(5) NOT NULL,
  `id_dosen` int(5) DEFAULT NULL,
  `nama_dosen` longtext,
  `sks_max` int(5) DEFAULT NULL,
  `honor_sks` int(10) DEFAULT NULL,
  `total_honor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `honor`
--

INSERT INTO `honor` (`id`, `id_dosen`, `nama_dosen`, `sks_max`, `honor_sks`, `total_honor`) VALUES
(4, 2, 'Dr.Saipudin, SE, M.Si, Ak, CA', 24, 50000, NULL),
(5, 3, 'Dr. Rizali, MP', 33, 75000, NULL),
(6, 1, 'Dr.Saipudin, SE, M.Si', 35, 65000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'expertphp', 'Online tutorials', NULL, NULL),
(2, 'expertphp', 'Online tutorials', NULL, NULL),
(3, 'sad', 'ssss', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jadwalfh`
--

CREATE TABLE `jadwalfh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_tahunajaran` int(10) UNSIGNED DEFAULT NULL,
  `prodi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_matkul` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_matkul` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `kelas` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hari` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `ruangan` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosen1` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosen2` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosen3` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosen4` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosen5` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosen6` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_mahasiswa` int(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwalfh`
--

INSERT INTO `jadwalfh` (`id`, `id_tahunajaran`, `prodi`, `program`, `kode_matkul`, `nama_matkul`, `sks`, `kelas`, `semester`, `hari`, `jam`, `jam_selesai`, `ruangan`, `dosen1`, `dosen2`, `dosen3`, `dosen4`, `dosen5`, `dosen6`, `jumlah_mahasiswa`, `created_at`, `updated_at`) VALUES
(1, 5, 'HUKUM', 'S1 Reg A', 'CEKO 104', 'tes', 3, '1', 'SEMESTER I', 'SENIN', '10:30:00', '12:30:00', 'GB 1B', 'Dr.Saipudin, SE, M.Si', 'A.Suhaili, SE, M.Si, Ak, CA', NULL, NULL, 'Ada', NULL, 71, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(2, 5, 'IESP', 'S1 Reg A', 'CEKO 104', 'PENGANTAR AKUNTANSI I ', 3, '1', 'SEMESTER I', 'SENIN', '08:00:00', '13:00:00', 'GB 1B', 'Dr.Saipudin, SE, M.Si', 'A.Suhaili, SE, M.Si, Ak, CA', NULL, NULL, NULL, NULL, 71, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(3, 5, 'IESP', 'S1 Reg A', 'CEKO 104', 'PENGANTAR AKUNTANSI I ', 3, '2', 'SEMESTER I', 'SENIN', '10:30:00', '13:00:00', '3', 'Dr.Saipudin, SE, M.Si, Ak, CA', 'Fatimah, SE, M.Si, Ak, CA', NULL, NULL, NULL, NULL, 70, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(4, 5, 'IESP', 'S1 Reg A', 'CEKO 103', 'PENGANTAR BISNIS A', 3, 'A', 'SEMESTER I', 'SENIN', '13:30:00', '16:00:00', 'PPAk', 'Dr. Rizali, MP', 'Dahniar, SE, MM', NULL, NULL, NULL, NULL, NULL, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(5, 5, 'IESP', 'S1 Reg A', 'CEKO 905', 'BAHASA INGGRIS ', 3, '1', 'SEMESTER I', 'SELASA', '10:30:00', '13:00:00', 'GB3', 'Syahrituah Siregar, SE, MA', 'Hendra, SE, ME', NULL, NULL, NULL, NULL, 80, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(6, 5, 'IESP', 'S1 Reg A', 'CEKO 905', 'BAHASA INGGRIS ', 3, '2', 'SEMESTER I', 'SELASA', '13:30:00', '16:00:00', 'GB4', 'Ryan Juminta Anward, SE,M.Sc', 'Rifqi Novriyandana, SE, M.Acc, MM, Ak', NULL, NULL, NULL, NULL, 75, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(7, 5, 'IESP', 'S1 Reg A', 'CEKO 102', 'PENGANTAR EKONOMI MIKRO ', 3, 'A', 'SEMESTER I', 'RABU', '08:00:00', '10:30:00', '3', 'Drs. M.Saleh, MP', 'Sri Maulida, S.E.Sy., MEI', NULL, NULL, NULL, NULL, 56, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(8, 5, 'IESP', 'S1 Reg A', 'CEKO 102', 'PENGANTAR EKONOMI MIKRO ', 3, 'B', 'SEMESTER I', 'RABU', '10:30:00', '13:00:00', '6', 'Dra. Eny Fahrati, MP', 'Chairul Sa\'roni, SE, M.Si', NULL, NULL, NULL, NULL, 48, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(9, 5, 'IESP', 'S1 Reg A', 'CEKO 102', 'PENGANTAR EKONOMI MIKRO ', 3, 'C', 'SEMESTER I', 'RABU', '13:30:00', '16:00:00', '8', 'Drs. M.Effendi, MS', 'Dr. Noor Rahmini, SE, ME', NULL, NULL, NULL, NULL, 47, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(10, 5, 'IESP', 'S1 Reg A', 'CDUM 104', 'PPKN ', 3, '1', 'SEMESTER I', 'RABU', '13:30:00', '16:00:00', 'GB3', 'Drs. Nasrudin, ME', 'Dra. S.M.Zulfaridatulyaqin, MT', NULL, NULL, NULL, NULL, 71, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(11, 5, 'IESP', 'S1 Reg A', 'CDUM 104', 'PPKN', 3, '2', 'SEMESTER I', 'RABU', '16:00:00', '18:30:00', '3', 'Drs. Nasrudin, ME', 'Drs. Masrani Noor, M.Si', NULL, NULL, NULL, NULL, 68, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(12, 5, 'IESP', 'S1 Reg A', 'CEKO 106', 'MATEMATIKA EKONOMI ', 3, 'A', 'SEMESTER I', 'KAMIS', '08:00:00', '10:30:00', '3', 'Dra. Ika Chadriyanti, MP', 'Lina Suherty, SE, MP', NULL, NULL, NULL, NULL, 48, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(13, 5, 'IESP', 'S1 Reg A', 'CEKO 106', 'MATEMATIKA EKONOMI ', 3, 'B', 'SEMESTER I', 'KAMIS', '13:30:00', '16:00:00', '6', 'Dra. Na\'imatul Aufa, MM', 'Dra. S.M.Zulfaridatulyaqin, MT', NULL, NULL, NULL, NULL, 47, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(14, 5, 'IESP', 'S1 Reg A', 'CEKO 106', 'MATEMATIKA EKONOMI ', 3, 'C', 'SEMESTER I', 'KAMIS', '13:30:00', '16:00:00', '2', 'Drs. Nasrudin, ME', 'Dr. Noor Rahmini, SE, ME', NULL, NULL, NULL, NULL, 57, '2019-12-01 10:28:32', '2019-12-01 10:28:32'),
(15, 5, 'IESP', 'S1 Reg A', 'CEKO 167', 'BAHASA INDONESIA ', 2, NULL, 'SEMESTER I', 'JUM\'AT', '08:00:00', '10:30:00', 'GB3', 'Dr. Noor Rahmini, SE, ME', 'Hendra, SE, ME', NULL, NULL, NULL, NULL, 138, '2019-12-01 10:28:32', '2019-12-01 10:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `jadwalguest`
--

CREATE TABLE `jadwalguest` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_tahunajaran` int(10) UNSIGNED NOT NULL,
  `tgl_berlaku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_ttd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dekan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip_dekan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwalguest`
--

INSERT INTO `jadwalguest` (`id`, `id_tahunajaran`, `tgl_berlaku`, `tgl_ttd`, `dekan`, `nip_dekan`, `created_at`, `updated_at`) VALUES
(1, 5, 'TGL. 26 Agustus Sampai Dengan 13 Desember 2019', 'Banjarmasin, 26  September  2019', 'Nama Dekan FH', '42627272882xxx', '2019-01-21 09:11:43', '2019-01-21 09:11:43');

-- --------------------------------------------------------

--
-- Table structure for table `kelebihan`
--

CREATE TABLE `kelebihan` (
  `id` int(5) NOT NULL,
  `id_dosen` int(5) DEFAULT NULL,
  `jadwal_id` int(5) NOT NULL,
  `nama_dosen` longtext,
  `jml_pertemuan` int(5) DEFAULT NULL,
  `jml_sks` int(5) DEFAULT NULL,
  `sks_max` int(5) DEFAULT NULL,
  `kelebihan_sks` int(5) DEFAULT NULL,
  `honor_sks` int(10) DEFAULT NULL,
  `total` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelebihan`
--

INSERT INTO `kelebihan` (`id`, `id_dosen`, `jadwal_id`, `nama_dosen`, `jml_pertemuan`, `jml_sks`, `sks_max`, `kelebihan_sks`, `honor_sks`, `total`) VALUES
(18, 1, 1, 'Dr.Saipudin, SE, M.Si', 30, NULL, 12, NULL, NULL, NULL),
(19, 1, 2, 'Dr.Saipudin, SE, M.Si', 40, NULL, 16, NULL, NULL, NULL),
(20, 3, 4, 'Dr. Rizali, MP', 18, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `list_history`
--

CREATE TABLE `list_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_history`
--

INSERT INTO `list_history` (`id`, `keterangan`, `waktu`, `created_at`, `updated_at`) VALUES
(3, 'Berhasil menambah data jadwal untuk Mata Kuliah: matkul1, Hari: Senin, Jam: 08:00:00 Ruangan: Aula', '20:33', NULL, NULL),
(4, 'Berhasil menghapus data jadwal untuk Mata Kuliah: , Hari: , Jam:  Ruangan: ', '20:36', NULL, NULL),
(5, 'Berhasil menambah data jadwal untuk Mata Kuliah: matkul1, Hari: Senin, Jam: 08:00:00 Ruangan: Aula', '20:37', NULL, NULL),
(6, 'Berhasil mengubah data jadwal untuk Mata Kuliah: matkul1, Hari: Kamis, Jam: 08:00:00 Ruangan: Aula', '20:37', NULL, NULL),
(7, 'Berhasil menghapus data jadwal untuk Mata Kuliah: , Hari: , Jam:  Ruangan: ', '20:37', NULL, NULL),
(8, 'Berhasil mengimport data jadwal menggunakan excel', '20:39', NULL, NULL),
(9, 'Berhasil menghapus data jadwal untuk Mata Kuliah: A.Keu.Men.II, Hari: Rabu, Jam: 13:30:00 Ruangan: Aula', '20:39', NULL, NULL),
(10, 'Berhasil mengubah data jadwal untuk Mata Kuliah: A.Keu.Men.II, Hari: Rabu, Jam: 16:00:00 Ruangan: Ruang 2', '19:09', NULL, NULL),
(11, 'Berhasil menambah data jadwal untuk Mata Kuliah: PPKN, Hari: Selasa, Jam: 10:30:00 Ruangan: GB 2', '14:09', NULL, NULL),
(12, 'Berhasil menghapus data jadwal untuk Mata Kuliah: A.Keu.Men.II, Hari: Senin, Jam: 08:00:00 Ruangan: Ruang 2', '12:07', NULL, NULL),
(13, 'Berhasil menghapus data jadwal untuk Mata Kuliah: A.Keu.Men.II, Hari: Senin, Jam: 08:00:00 Ruangan: Ruang 2', '12:07', NULL, NULL),
(14, 'Berhasil menghapus data jadwal untuk Mata Kuliah: A.Keu.Men.II, Hari: Rabu, Jam: 13:30:00 Ruangan: Aula', '12:07', NULL, NULL),
(15, 'Berhasil mengimport data jadwal menggunakan excel', '15:19', NULL, NULL),
(16, 'Berhasil mengimport data jadwal menggunakan excel', '15:21', NULL, NULL),
(17, 'Berhasil mengimport data jadwal menggunakan excel', '13:42', NULL, NULL),
(18, 'Berhasil mengimport data jadwal menggunakan excel', '14:54', NULL, NULL),
(19, 'Berhasil mengimport data jadwal menggunakan excel', '08:51', NULL, NULL),
(20, 'Berhasil mengimport data jadwal menggunakan excel', '09:31', NULL, NULL),
(21, 'Berhasil mengimport data jadwal menggunakan excel', '09:34', NULL, NULL),
(22, 'Berhasil menghapus data jadwal untuk tahun ajaran: 2019/2020, Semester: GANJIL', NULL, NULL, NULL),
(23, 'Berhasil menghapus data jadwal untuk tahun ajaran: 2019/2020, Semester: GANJIL', NULL, NULL, NULL),
(24, 'Berhasil menghapus data jadwal untuk tahun ajaran: 2019/2020, Semester: GANJIL', NULL, NULL, NULL),
(25, 'Berhasil menambah data jadwal untuk Mata Kuliah: Tes, Hari: Senin, Jam: 08:00:00 Ruangan: A', '12:12', NULL, NULL),
(26, 'Berhasil menghapus data jadwal untuk Mata Kuliah: Tes, Hari: Senin, Jam: 08:00:00 Ruangan: A', '12:13', NULL, NULL),
(27, 'Berhasil mengimport data jadwal menggunakan excel', '21:27', NULL, NULL),
(28, 'Berhasil menghapus data jadwal untuk tahun ajaran: 2017/2018, Semester: GANJIL', NULL, NULL, NULL),
(29, 'Berhasil mengimport data jadwal menggunakan excel', '21:30', NULL, NULL),
(30, 'Berhasil menghapus data jadwal untuk tahun ajaran: 2017/2018, Semester: GANJIL', NULL, NULL, NULL),
(31, 'Berhasil mengimport data jadwal menggunakan excel', '21:31', NULL, NULL),
(32, 'Berhasil menambah data jadwal untuk Mata Kuliah: Hukum, Hari: Senin, Jam: 08:00:00 Ruangan: 1', '18:19', NULL, NULL),
(33, 'Berhasil menambah data jadwal untuk Mata Kuliah: Mata kuliah, Hari: Senin, Jam: 08:00:00 Ruangan: A1', '20:00', NULL, NULL),
(34, 'Berhasil menghapus data jadwal untuk Mata Kuliah: Mata kuliah, Hari: Senin, Jam: 08:00:00 Ruangan: A1', '20:01', NULL, NULL),
(35, 'Berhasil mengimport data jadwal menggunakan excel', '20:07', NULL, NULL),
(36, 'Berhasil mengimport data jadwal menggunakan excel', '21:38', NULL, NULL),
(37, 'Berhasil menghapus data jadwal untuk tahun ajaran: 2017/2018, Semester: GANJIL', NULL, NULL, NULL),
(38, 'Berhasil menambah data jadwal untuk Mata Kuliah: Tes, Hari: Senin, Jam: 08:00:00 Ruangan: A1', '21:39', NULL, NULL),
(39, 'Berhasil mengimport data jadwal menggunakan excel', '21:40', NULL, NULL),
(40, 'Berhasil menghapus data jadwal untuk Mata Kuliah: A.Keu.Men.II, Hari: Rabu, Jam: 08:00:00 Ruangan: Ruang 2', '21:42', NULL, NULL),
(41, 'Berhasil mengimport data jadwal menggunakan excel', '21:42', NULL, NULL),
(42, 'Berhasil mengimport data jadwal menggunakan excel', '21:43', NULL, NULL),
(43, 'Berhasil menghapus data jadwal untuk Mata Kuliah: A.Keu.Men.II, Hari: Senin, Jam: 08:00:00 Ruangan: Ruang 2', '21:43', NULL, NULL),
(44, 'Berhasil menghapus data jadwal untuk Mata Kuliah: Tes, Hari: Senin, Jam: 08:00:00 Ruangan: Ruang 2', '21:44', NULL, NULL),
(45, 'Berhasil mengimport data jadwal menggunakan excel', '21:44', NULL, NULL),
(46, 'Berhasil mengimport data jadwal menggunakan excel', '21:48', NULL, NULL),
(47, 'Berhasil mengimport data jadwal menggunakan excel', '21:48', NULL, NULL),
(48, 'Berhasil mengimport data jadwal menggunakan excel', '21:49', NULL, NULL),
(49, 'Berhasil menambah data jadwal untuk Mata Kuliah: Hukum, Hari: Senin, Jam: 08:00:00 Ruangan: 1', '21:56', NULL, NULL),
(50, 'Berhasil mengubah data jadwal untuk Mata Kuliah: Hukum, Hari: Senin, Jam: 08:00:00 Ruangan: 1', '21:56', NULL, NULL),
(51, 'Berhasil mengimport data jadwal menggunakan excel', '22:11', NULL, NULL),
(52, 'Berhasil menambah data jadwal untuk Mata Kuliah: Tes, Hari: Senin, Jam: 08:00:00 Ruangan: A1', '18:59', NULL, NULL),
(53, 'Berhasil mengimport data jadwal menggunakan excel', '19:00', NULL, NULL),
(54, 'Berhasil mengimport data jadwal menggunakan excel', '20:14', NULL, NULL),
(55, 'Berhasil mengimport data jadwal menggunakan excel', '20:15', NULL, NULL),
(56, 'Berhasil mengimport data jadwal menggunakan excel', '20:15', NULL, NULL),
(57, 'Berhasil mengimport data jadwal menggunakan excel', '20:53', NULL, NULL),
(58, 'Berhasil mengimport data jadwal menggunakan excel', '20:53', NULL, NULL),
(59, 'Berhasil mengimport data jadwal menggunakan excel', '20:53', NULL, NULL),
(60, 'Berhasil mengubah data jadwal untuk Mata Kuliah: Tes, Hari: Senin, Jam: 08:00:00 Ruangan: A1', '20:55', NULL, NULL),
(61, 'Berhasil menghapus data jadwal untuk tahun ajaran: 2019/2020, Semester: GANJIL', NULL, NULL, NULL),
(62, 'Berhasil mengimport data jadwal menggunakan excel', '21:10', NULL, NULL),
(63, 'Berhasil mengimport data jadwal menggunakan excel', '21:11', NULL, NULL),
(64, 'Berhasil mengimport data jadwal menggunakan excel', '21:15', NULL, NULL),
(65, 'Berhasil mengimport data jadwal menggunakan excel', '21:16', NULL, NULL),
(66, 'Berhasil mengimport data jadwal menggunakan excel', '21:17', NULL, NULL),
(67, 'Berhasil mengimport data jadwal menggunakan excel', '21:19', NULL, NULL),
(68, 'Berhasil menghapus data jadwal untuk tahun ajaran: 2019/2020, Semester: GANJIL', NULL, NULL, NULL),
(69, 'Berhasil mengimport data jadwal menggunakan excel', '21:51', NULL, NULL),
(70, 'Berhasil menghapus data jadwal untuk tahun ajaran: 2019/2020, Semester: GANJIL', NULL, NULL, NULL),
(71, 'Berhasil mengimport data jadwal menggunakan excel', '21:53', NULL, NULL),
(72, 'Berhasil mengimport data jadwal menggunakan excel', '20:58', NULL, NULL),
(73, 'Berhasil mengimport data jadwal menggunakan excel', '14:56', NULL, NULL),
(74, 'Berhasil mengimport data jadwal menggunakan excel', '15:04', NULL, NULL),
(75, 'Berhasil mengimport data jadwal menggunakan excel', '15:04', NULL, NULL),
(76, 'Berhasil mengimport data jadwal menggunakan excel', '15:06', NULL, NULL),
(77, 'Berhasil mengimport data jadwal menggunakan excel', '15:14', NULL, NULL),
(78, 'Berhasil mengimport data jadwal menggunakan excel', '15:20', NULL, NULL),
(79, 'Berhasil mengimport data jadwal menggunakan excel', '15:46', NULL, NULL),
(80, 'Berhasil mengimport data jadwal menggunakan excel', '16:01', NULL, NULL),
(81, 'Berhasil mengimport data jadwal menggunakan excel', '16:02', NULL, NULL),
(82, 'Berhasil mengimport data jadwal menggunakan excel', '16:03', NULL, NULL),
(83, 'Berhasil mengimport data jadwal menggunakan excel', '16:05', NULL, NULL),
(84, 'Berhasil mengimport data jadwal menggunakan excel', '16:10', NULL, NULL),
(85, 'Berhasil mengimport data jadwal menggunakan excel', '22:48', NULL, NULL),
(86, 'Berhasil mengimport data jadwal menggunakan excel', '22:52', NULL, NULL),
(87, 'Berhasil mengimport data jadwal menggunakan excel', '23:20', NULL, NULL),
(88, 'Berhasil mengimport data jadwal menggunakan excel', '23:21', NULL, NULL),
(89, 'Berhasil mengimport data jadwal menggunakan excel', '23:26', NULL, NULL),
(90, 'Berhasil mengimport data jadwal menggunakan excel', '23:53', NULL, NULL),
(91, 'Berhasil menghapus data jadwal untuk Mata Kuliah: PENGANTAR, Hari: SENIN, Jam: 10:30:00 Ruangan: GB 1B', '00:18', NULL, NULL),
(92, 'Berhasil mengimport data jadwal menggunakan excel', '00:18', NULL, NULL),
(93, 'Berhasil menghapus data jadwal untuk tahun ajaran: 2019/2020, Semester: GANJIL', NULL, NULL, NULL),
(94, 'Berhasil menghapus data jadwal untuk tahun ajaran: 2019/2020, Semester: GANJIL', NULL, NULL, NULL),
(95, 'Berhasil mengimport data jadwal menggunakan excel', '08:54', NULL, NULL),
(96, 'Berhasil menambah data jadwal untuk Mata Kuliah: Mata kuliah, Hari: Kamis, Jam: 08:00:00 Ruangan: A16', '17:13', NULL, NULL),
(97, 'Berhasil mengimport data jadwal menggunakan excel', '18:49', NULL, NULL),
(98, 'Berhasil mengimport data jadwal menggunakan excel', '19:47', NULL, NULL),
(99, 'Berhasil mengimport data jadwal menggunakan excel', '19:54', NULL, NULL),
(100, 'Berhasil mengimport data jadwal menggunakan excel', '19:56', NULL, NULL),
(101, 'Berhasil mengimport data jadwal menggunakan excel', '16:06', NULL, NULL),
(102, 'Berhasil mengimport data jadwal menggunakan excel', '16:10', NULL, NULL),
(103, 'Berhasil mengimport data jadwal menggunakan excel', '16:19', NULL, NULL),
(104, 'Berhasil mengimport data jadwal menggunakan excel', '16:31', NULL, NULL),
(105, 'Berhasil mengimport data jadwal menggunakan excel', '17:16', NULL, NULL),
(106, 'Berhasil mengimport data jadwal menggunakan excel', '17:22', NULL, NULL),
(107, 'Berhasil mengimport data jadwal menggunakan excel', '17:24', NULL, NULL),
(108, 'Berhasil mengimport data jadwal menggunakan excel', '18:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asal_organisasi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penanggung_jawab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `dari` time NOT NULL,
  `sampai` time NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `asal_organisasi`, `nama_penanggung_jawab`, `kontak`, `ruangan`, `tanggal`, `dari`, `sampai`, `keterangan`, `created_at`, `updated_at`, `email`) VALUES
(1, 'BEM FH', 'Tes nama', 'Tes kontak', '525', '2019-09-06', '13:30:00', '17:00:00', 'Tes', '2019-09-04 15:44:57', '2019-09-04 15:44:57', 'tes email');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2017_10_18_233404_create_permission_tables', 1),
(16, '2017_10_18_234530_create_post_tbl', 1),
(17, '2017_10_29_014553_buat_table_prodi', 2),
(18, '2017_10_30_062840_buat_table_tahunajaran', 3),
(19, '2017_10_30_083455_buat_table_ruangan', 4),
(20, '2017_10_30_095457_buat_table_hari', 5),
(21, '2017_10_30_095517_buat_table_jam', 5),
(22, '2017_10_30_101616_buat_table_waktu', 6),
(23, '2017_10_31_083232_buat_table_matkul', 7),
(24, '2017_10_31_131225_buat_table_dosen', 8),
(26, '2017_11_01_030120_buat_table_dosen', 9),
(28, '2017_11_01_142419_tambah_tabel_matkul', 10),
(29, '2017_11_01_143857_buat_tabel_matkul', 11),
(30, '2017_11_01_144258_buat_tabel_matkul', 12),
(31, '2017_11_04_230417_buat_table_jadwal', 13),
(32, '2017_11_06_060427_buat_table_berita', 14),
(33, '2017_11_11_034841_buat_jadwal_kosong', 15),
(34, '2017_11_13_084326_tambah_semester_matkul', 15),
(35, '2017_11_16_030405_buat_table_dekan', 16),
(37, '2017_11_16_061637_tambah_tanggal_berita', 17),
(38, '2017_11_18_223331_buat_table_jadwalguest', 18),
(39, '2017_12_06_234932_tambah_table_ketdosen', 19),
(40, '2017_12_08_235428_tambah_table_koderuang', 20),
(41, '2017_12_10_004632_tambah_publikasi_berita', 21),
(42, '2017_12_13_144336_buat_tabel_dekan', 22),
(43, '2018_02_04_211852_tambah_kelas_matkul', 23),
(44, '2018_02_13_050259_tambah_status_matkul', 24),
(45, '2018_02_24_111036_create_products_table', 25),
(46, '2018_02_24_214823_create_items_table', 26),
(47, '2018_02_25_003655_buat_tabel_prodi', 27),
(53, '2018_02_25_122849_tambah_tabel_dosen', 28),
(54, '2018_02_25_205909_buat__table_matkul', 28),
(55, '2018_02_26_073943_buat__table_jadwal', 29),
(56, '2019_06_04_151622_tambah_table_mahasiswa', 30),
(57, '2019_07_09_120424_buat_table_organisasi', 31),
(60, '2019_07_13_132344_buat_table_jadwalfh', 32),
(62, '2019_07_16_122806_buat_table_listhistory', 33);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_id`, `model_type`) VALUES
(1, 1, 'isAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
(1, 1, 'App\\User'),
(1, 1, 'isAdmin'),
(1, 14, 'App\\User'),
(1, 30, 'App\\User'),
(1, 32, 'App\\User'),
(1, 37, 'App\\User'),
(1, 38, 'App\\User'),
(2, 3, 'App\\User'),
(3, 24, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `organisasi`
--

CREATE TABLE `organisasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organisasi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organisasi`
--

INSERT INTO `organisasi` (`id`, `organisasi`, `created_at`, `updated_at`) VALUES
(2, 'BEM FH', '2019-07-09 05:15:08', '2019-09-04 15:27:23'),
(3, 'Himpunan Mahasiswa Fakultas Hukum', '2019-07-23 02:06:05', '2019-09-04 15:27:13'),
(4, 'Panitia Acara Kemahasiswaan FH', '2019-09-04 15:28:11', '2019-09-04 15:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('akbarkurniawaan@gmail.com', '$2y$10$O3.d6UFy.doaLdDP1WAZO.F3xzDloBQbHupAk1FDIAcoAvSKqASI.', '2017-11-16 22:39:22'),
('hide@gmail.com', '$2y$10$0yNGXL/lf/OfkEOS6Oxcv.aMgurLAN6jXbAcqF85iP9IIHeR5hC5S', '2018-02-13 14:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', NULL, '2017-10-24 20:00:00'),
(2, 'superadmin', 'web', '2017-10-19 02:45:59', '2017-10-19 02:45:59'),
(3, 'bagianumum', 'web', '2017-12-08 15:01:11', '2017-12-08 15:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(10) UNSIGNED NOT NULL,
  `nama_prodi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `program`, `created_at`, `updated_at`) VALUES
(2, 'S1 HUKUM', 'S1 HUKUM', '2018-02-24 17:00:32', '2018-02-24 17:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `created_at`, `updated_at`) VALUES
(1, 'expert php', 'sddsfd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2017-10-19 02:17:56', '2017-10-24 20:00:11'),
(2, 'superadmin', 'web', '2017-10-19 02:46:19', '2017-10-19 02:46:19'),
(3, 'bagianumum', 'web', '2017-12-08 15:01:55', '2017-12-08 15:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` int(10) UNSIGNED NOT NULL,
  `koderuangan` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ruangan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas_ruangan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id_ruangan`, `koderuangan`, `nama_ruangan`, `kapasitas_ruangan`, `created_at`, `updated_at`) VALUES
(1, 'A', 'Ruang AULA', 200, '2017-11-04 06:36:30', '2018-02-10 13:27:42'),
(2, '2', 'Ruang 2', 108, '2017-11-04 06:36:45', '2018-02-10 13:27:51'),
(3, '3', 'Ruang 3', 138, '2017-11-04 06:37:42', '2018-02-10 13:28:12'),
(4, '4', 'Ruang 4', 68, '2017-11-04 06:37:54', '2018-02-10 13:28:18'),
(5, '5', 'Ruang 5', 68, '2017-11-04 06:38:04', '2018-02-10 13:28:23'),
(6, '6', 'Ruang 6', 68, '2017-11-04 06:38:12', '2018-02-10 13:28:30'),
(7, '7', 'Ruang 7', 68, '2018-02-04 02:19:25', '2018-02-10 13:28:36'),
(8, '8', 'Ruang 8', 79, '2018-02-04 02:19:44', '2018-02-10 13:28:41'),
(9, '11', 'Ruang 11', 72, '2018-02-04 02:20:52', '2018-02-10 13:28:47'),
(10, '12', 'Ruang 12', 84, '2018-02-04 02:26:01', '2018-02-10 13:28:52'),
(12, '13', 'Ruang 13', 72, '2018-02-04 02:31:55', '2018-02-10 13:29:40'),
(13, '14', 'Ruang 14', 60, '2018-02-04 02:32:13', '2018-02-10 13:29:46'),
(14, '15', 'Ruang 15', 84, '2018-02-04 02:33:06', '2018-02-10 13:29:52'),
(15, '16', 'Ruang 16', 60, '2018-02-04 02:36:32', '2018-02-10 13:29:12'),
(16, 'ppak', 'Ruang PPAK', 0, '2018-02-04 02:37:15', '2018-02-10 13:30:13'),
(17, 'GB1a', 'GB 1 A', 66, '2018-02-04 02:38:05', '2018-02-04 02:38:05'),
(18, 'GB1b', 'GB 1 B', 66, '2018-02-04 02:38:28', '2018-02-04 02:38:28'),
(19, 'GB2', 'GB 2', 104, '2018-02-04 02:38:51', '2018-02-04 02:38:51'),
(20, 'GB3aula', 'GB 3 AULA', 150, '2018-02-04 02:39:28', '2018-02-04 02:39:28'),
(21, 'K.Internasional', 'Kelas Internasional', 30, '2018-02-04 02:40:00', '2018-02-04 02:40:00'),
(22, 'RK1MM', 'Ruang Kuliah 1 MM', 70, '2018-02-04 02:41:26', '2018-02-04 02:41:26'),
(23, 'RK2MM', 'Ruang Kuliah 2 MM', 70, '2018-02-04 02:41:43', '2018-02-04 02:41:43'),
(24, 'RK3MM', 'Ruang Kuliah 3 MM', 70, '2018-02-04 02:42:04', '2018-02-04 02:42:04'),
(25, 'RK4MM', 'Ruang Kuliah 4 MM', 70, '2018-02-04 02:42:22', '2018-02-04 02:42:22'),
(26, 'Lab', 'Lab', 100, '2018-02-10 13:27:28', '2018-02-10 13:27:28'),
(27, 'Aula MM', 'Aula MM', 100, '2018-02-11 00:05:01', '2018-02-11 00:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id_tahunajaran` int(10) UNSIGNED NOT NULL,
  `tahun_ajaran` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` enum('GANJIL','GENAP') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id_tahunajaran`, `tahun_ajaran`, `semester`, `created_at`, `updated_at`) VALUES
(1, '2017/2018', 'GANJIL', NULL, NULL),
(2, '2017/2018', 'GENAP', NULL, NULL),
(3, '2018/2019', 'GANJIL', NULL, NULL),
(4, '2018/2019', 'GENAP', NULL, NULL),
(5, '2019/2020', 'GANJIL', NULL, NULL),
(6, '2019/2020', 'GENAP', NULL, NULL),
(7, '2020/2021', 'GANJIL', NULL, NULL),
(8, '2020/2021', 'GENAP', NULL, NULL),
(9, '2021/2022', 'GANJIL', NULL, NULL),
(10, '2021/2022', 'GENAP', NULL, NULL),
(11, '2022/2023', 'GANJIL', NULL, NULL),
(12, '2022/2023', 'GENAP', NULL, NULL),
(13, '2023/2024', 'GANJIL', NULL, NULL),
(14, '2023/2024', 'GENAP', NULL, NULL),
(15, '2024/2025', 'GANJIL', NULL, NULL),
(16, '2024/2025', 'GENAP', NULL, NULL),
(17, '2025/2026', 'GANJIL', NULL, NULL),
(18, '2025/2026', 'GENAP', NULL, NULL),
(19, '2026/2027', 'GANJIL', NULL, NULL),
(20, '2026/2027', 'GENAP', NULL, NULL),
(21, '2027/2028', 'GANJIL', NULL, NULL),
(22, '2027/2028', 'GENAP', NULL, NULL),
(23, '2028/2029', 'GANJIL', NULL, NULL),
(24, '2028/2029', 'GENAP', NULL, NULL),
(25, '2029/2030', 'GANJIL', NULL, NULL),
(48, '2029/2030', 'GENAP', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_hari`
--

CREATE TABLE `tb_hari` (
  `kode_hari` int(10) UNSIGNED NOT NULL,
  `nama_hari` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_hari`
--

INSERT INTO `tb_hari` (`kode_hari`, `nama_hari`, `created_at`, `updated_at`) VALUES
(1, 'Senin', '2018-02-25 02:48:06', '2018-02-25 02:48:06'),
(2, 'Selasa', '2018-02-25 02:48:11', '2018-02-25 02:48:11'),
(3, 'Rabu', '2018-02-25 02:48:16', '2018-02-25 02:48:16'),
(4, 'Kamis', '2018-02-25 02:48:21', '2018-02-25 02:48:21'),
(5, 'Jumat', '2018-02-25 02:48:27', '2018-02-25 02:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jam`
--

CREATE TABLE `tb_jam` (
  `kode_jam` int(10) UNSIGNED NOT NULL,
  `nama_jam` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_jam`
--

INSERT INTO `tb_jam` (`kode_jam`, `nama_jam`, `created_at`, `updated_at`) VALUES
(1, '08:00:00', '2018-02-25 02:56:35', '2018-02-25 02:56:41'),
(2, '09:50:00', '2018-02-25 02:56:53', '2018-02-25 02:57:30'),
(3, '10:30:00', '2018-02-25 02:57:09', '2018-02-25 02:57:09'),
(4, '13:30:00', '2018-02-25 02:58:11', '2018-02-25 02:58:11'),
(5, '14:00:00', '2018-02-25 02:58:29', '2018-02-25 02:58:29'),
(6, '16:00:00', '2018-02-25 02:58:58', '2018-02-25 02:58:58'),
(7, '17:00:00', '2018-02-25 02:59:47', '2018-02-25 02:59:47'),
(8, '19:30:00', '2018-02-25 03:00:18', '2018-02-25 03:00:18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_waktu`
--

CREATE TABLE `tb_waktu` (
  `kode_waktu` int(10) UNSIGNED NOT NULL,
  `kode_hari` int(10) UNSIGNED NOT NULL,
  `kode_jam` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_waktu`
--

INSERT INTO `tb_waktu` (`kode_waktu`, `kode_hari`, `kode_jam`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-02-25 03:00:36', '2018-02-25 03:00:36'),
(2, 1, 3, '2018-02-25 03:00:42', '2018-02-25 03:00:42'),
(3, 1, 4, '2018-02-25 03:00:49', '2018-02-25 03:00:49'),
(4, 1, 6, '2018-02-25 03:00:54', '2018-02-25 03:00:54'),
(5, 1, 7, '2018-02-25 03:00:58', '2018-02-25 03:00:58'),
(6, 1, 8, '2018-02-25 03:01:02', '2018-02-25 03:01:02'),
(7, 2, 1, '2018-02-25 03:01:10', '2018-02-25 03:01:10'),
(8, 2, 3, '2018-02-25 03:01:16', '2018-02-25 03:01:16'),
(9, 2, 4, '2018-02-25 03:01:23', '2018-02-25 03:01:23'),
(10, 2, 6, '2018-02-25 03:01:30', '2018-02-25 03:01:30'),
(11, 2, 7, '2018-02-25 03:01:40', '2018-02-25 03:01:40'),
(12, 2, 8, '2018-02-25 03:01:45', '2018-02-25 03:01:45'),
(13, 3, 1, '2018-02-25 03:02:00', '2018-02-25 03:02:00'),
(14, 3, 3, '2018-02-25 03:02:05', '2018-02-25 03:02:05'),
(15, 3, 4, '2018-02-25 03:02:11', '2018-02-25 03:02:11'),
(16, 3, 6, '2018-02-25 03:02:26', '2018-02-25 03:02:26'),
(18, 3, 7, '2018-02-25 03:02:31', '2018-02-25 03:02:31'),
(19, 3, 8, '2018-02-25 03:02:36', '2018-02-25 03:02:36'),
(20, 4, 1, '2018-02-25 03:11:33', '2018-02-25 03:11:33'),
(21, 4, 3, '2018-02-25 03:11:38', '2018-02-25 03:11:38'),
(22, 4, 4, '2018-02-25 03:11:44', '2018-02-25 03:11:57'),
(23, 4, 6, '2018-02-25 03:12:07', '2018-02-25 03:12:07'),
(24, 4, 7, '2018-02-25 03:12:26', '2018-02-25 03:12:26'),
(25, 4, 8, '2018-02-25 03:12:31', '2018-02-25 03:12:31'),
(26, 5, 1, '2018-02-25 03:12:44', '2018-02-25 03:12:44'),
(27, 5, 2, '2018-02-25 03:13:05', '2018-02-25 03:13:05'),
(28, 5, 5, '2018-02-25 03:13:18', '2018-02-25 03:13:18'),
(29, 5, 6, '2018-02-25 03:13:28', '2018-02-25 03:13:28'),
(30, 5, 7, '2018-02-25 03:13:42', '2018-02-25 03:13:42'),
(31, 5, 8, '2018-02-25 03:13:46', '2018-02-25 03:13:46'),
(32, 5, 8, '2018-02-25 03:13:46', '2018-02-25 03:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'AKADEMIK', 'feb@feb.com', '$2y$10$P9mjXPADog2FzdBPQ6LMbui.hFz67j1hWSaCajsKqsQg4QgTnAcnO', 'dsxzp0sgyZTAZOyLZkdwaZI7PN8aSGIUdj46THlUg4OGNvcduYOicDCTZGns', '2017-10-19 02:40:56', '2019-07-20 14:57:41'),
(24, 'Bagian Umum', 'bagianumum@gmail.com', '$2y$10$DKtLy8ZSXKE7KnUraIUaMuWcqv9wV3uBxKTIWkRZpJ2juQmwPnoU6', 'qTfFZRhTGhHTdJ7Fa1sIDiBa23MDEfgm1dqTMmk6XP68RJojLvLecq4A1e6J', '2017-12-08 15:02:42', '2018-03-04 04:06:24'),
(29, 'dewqewq', 'admin@gmail.com', '$2y$10$N7KsjRkAo.x3WdmYk/v3qOBf2r7QQEgebJhv661fGbJZaeTO3LU2e', NULL, '2019-02-21 14:28:12', '2019-02-21 14:28:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `honor`
--
ALTER TABLE `honor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwalfh`
--
ALTER TABLE `jadwalfh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwalfh_id_tahunajaran_foreign` (`id_tahunajaran`);

--
-- Indexes for table `jadwalguest`
--
ALTER TABLE `jadwalguest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwalguest_id_tahunajaran_foreign` (`id_tahunajaran`);

--
-- Indexes for table `kelebihan`
--
ALTER TABLE `kelebihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_history`
--
ALTER TABLE `list_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id_tahunajaran`);

--
-- Indexes for table `tb_hari`
--
ALTER TABLE `tb_hari`
  ADD PRIMARY KEY (`kode_hari`);

--
-- Indexes for table `tb_jam`
--
ALTER TABLE `tb_jam`
  ADD PRIMARY KEY (`kode_jam`);

--
-- Indexes for table `tb_waktu`
--
ALTER TABLE `tb_waktu`
  ADD PRIMARY KEY (`kode_waktu`),
  ADD KEY `tb_waktu_kode_hari_foreign` (`kode_hari`),
  ADD KEY `tb_waktu_kode_jam_foreign` (`kode_jam`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `honor`
--
ALTER TABLE `honor`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jadwalfh`
--
ALTER TABLE `jadwalfh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jadwalguest`
--
ALTER TABLE `jadwalguest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kelebihan`
--
ALTER TABLE `kelebihan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `list_history`
--
ALTER TABLE `list_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id_ruangan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id_tahunajaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tb_hari`
--
ALTER TABLE `tb_hari`
  MODIFY `kode_hari` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_jam`
--
ALTER TABLE `tb_jam`
  MODIFY `kode_jam` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_waktu`
--
ALTER TABLE `tb_waktu`
  MODIFY `kode_waktu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
