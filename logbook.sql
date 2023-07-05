-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2023 pada 01.29
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logbook`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `path_portofolio`
--

CREATE TABLE `path_portofolio` (
  `id` int(11) NOT NULL,
  `trx_id` varchar(17) NOT NULL,
  `path` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `path_portofolio`
--

INSERT INTO `path_portofolio` (`id`, `trx_id`, `path`) VALUES
(1, 'TD/07/2023/000001', 'siYIQeWO.png'),
(2, 'TD/07/2023/000002', 'BfNaQ0nX.png'),
(3, 'TD/07/2023/000003', 'acFsI0Se.pdf'),
(4, 'TD/07/2023/000004', 'MAnqVM44.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stp_divisi`
--

CREATE TABLE `stp_divisi` (
  `id` int(11) NOT NULL,
  `divisi_id` varchar(128) NOT NULL,
  `divisi_name` text NOT NULL,
  `status` int(1) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stp_divisi`
--

INSERT INTO `stp_divisi` (`id`, `divisi_id`, `divisi_name`, `status`, `update_date`, `update_id`) VALUES
(1, 'DV0001', 'Bronkoskopi / Onkologi', 1, '2023-04-11 14:29:00', '1'),
(2, 'DV0002', 'Asma & PPOK', 1, '2023-04-11 14:29:00', '1'),
(3, 'DV0003', 'Infeksi Paru', 1, '2023-04-11 14:29:00', '1'),
(4, 'DV0004', 'Pleura', 1, '2023-04-11 14:29:00', '1'),
(5, 'DV0005', 'Asma / PPOK', 1, '2023-04-11 14:29:00', '1'),
(6, 'DV0006', 'Infeksi Paru', 1, '2023-04-11 14:29:00', '1'),
(7, 'DV0007', 'Faal Paru', 1, '2023-04-11 14:29:00', '1'),
(8, 'DV0008', 'Infeksi Paru', 1, '2023-04-11 14:29:00', '1'),
(9, 'DV0009', 'Onkologi', 1, '2023-04-11 14:29:00', '1'),
(10, 'DV0010', 'Infeksi Paru', 1, '2023-04-11 14:29:00', '1'),
(11, 'DV0011', 'Gawat Paru', 1, '2023-04-11 14:29:00', '1'),
(12, 'DV0012', 'Administrasi', 1, '2023-04-11 14:31:00', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stp_extrakurikuler`
--

CREATE TABLE `stp_extrakurikuler` (
  `id` int(11) NOT NULL,
  `extrakurikuler_id` varchar(128) NOT NULL,
  `extrakurikuler_name` text NOT NULL,
  `status` int(1) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stp_hospital`
--

CREATE TABLE `stp_hospital` (
  `id` int(11) NOT NULL,
  `hospital_id` varchar(128) NOT NULL,
  `hospital_name` text NOT NULL,
  `status` int(1) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stp_hospital`
--

INSERT INTO `stp_hospital` (`id`, `hospital_id`, `hospital_name`, `status`, `update_date`, `update_id`) VALUES
(1, 'HP001', 'RS UNIVERSITAS SUMATERA UTARA', 1, '2023-04-11 13:28:00', '1'),
(2, 'HP002', 'RSUP H. Adam Malik1', 1, '2023-04-11 13:28:00', '1'),
(3, 'HP003', 'RS SANTA ELISABETH MEDAN', 1, '2023-04-11 13:28:00', '1'),
(4, 'HP004', 'RSU PERMATA BUNDA MEDANPARTNER', 1, '2023-04-11 13:28:00', '1'),
(5, 'HP005', 'RSU MITRA MEDIKA', 1, '2023-04-11 13:28:00', '1'),
(6, 'HP006', 'RSU MADANI MEDAN', 1, '2023-04-11 13:28:00', '1'),
(7, 'HP007', 'RSU ESHMUN', 1, '2023-04-11 13:28:00', '1'),
(8, 'HP008', 'RSIA STELLA MARIS MEDAN', 1, '2023-04-11 13:28:00', '1'),
(9, 'HP009', 'RSIA SRI RATU', 1, '2023-04-11 13:28:00', '1'),
(10, 'HP010', 'RSIA ROSIVA MEDAN', 1, '2023-04-11 13:28:00', '1'),
(11, 'HP011', 'RSIA ARTHA MAHINRUS', 1, '2023-04-11 13:28:00', '1'),
(12, 'HP012', 'RS TK. II PUTRI HIJAU MEDAN', 1, '2023-04-11 13:28:00', '1'),
(13, 'HP013', 'RS SETIABUDI MEDAN', 1, '2023-04-11 13:28:00', '1'),
(14, 'HP014', 'RS SARAH', 1, '2023-04-11 13:28:00', '1'),
(15, 'HP015', 'RS ROYAL PRIMA MEDAN', 1, '2023-04-11 13:28:00', '1'),
(16, 'HP016', 'RS PRIMA HUSADA CIPTA MEDAN', 1, '2023-04-11 13:28:00', '1'),
(17, 'HP017', 'RS MURNI TEGUH MEMORIAL MEDAN', 1, '2023-04-11 13:28:00', '1'),
(18, 'HP018', 'RS MITRA SEJATI', 1, '2023-04-11 13:28:00', '1'),
(19, 'HP019', 'RS MARTHA FRISKA MULTATULI', 1, '2023-04-11 13:28:00', '1'),
(20, 'HP020', 'RSU PERMATA BUNDA MEDANPARTNER', 1, '2023-04-11 13:28:00', '1'),
(21, 'HP021', 'RSUD Dr. Pirngadi', 1, '2023-04-11 13:28:00', '1'),
(22, 'HP022', 'RS Advent Medan', 1, '2023-04-11 13:28:00', '1'),
(23, 'HP023', 'RS Ameta Sejahtera', 1, '2023-04-11 13:28:00', '1'),
(24, 'HP024', 'RS Ananda Putri', 1, '2023-04-11 13:28:00', '1'),
(25, 'HP025', 'RS Bahagia Medan', 1, '2023-04-11 13:28:00', '1'),
(26, 'HP026', 'RS Bandung Medan', 1, '2023-04-11 13:28:00', '1'),
(27, 'HP027', 'RS Bedah Accuplast', 1, '2023-04-11 13:28:00', '1'),
(28, 'HP028', 'RS Bedah Setia Budi', 1, '2023-04-11 13:28:00', '1'),
(29, 'HP029', 'RS Bhakti Medan', 1, '2023-04-11 13:28:00', '1'),
(30, 'HP030', 'RS Bhayangkara Medan', 1, '2023-04-11 13:28:00', '1'),
(31, 'HP031', 'RS Bina Atma', 1, '2023-04-11 13:28:00', '1'),
(32, 'HP032', 'RS Bina Karsa', 1, '2023-04-11 13:28:00', '1'),
(33, 'HP033', 'RS Bina Kasih', 1, '2023-04-11 13:28:00', '1'),
(34, 'HP034', 'RS Bunda Thamrin', 1, '2023-04-11 13:28:00', '1'),
(35, 'HP035', 'RS Columbia Asia Medan', 1, '2023-04-11 13:28:00', '1'),
(36, 'HP036', 'RS Deli Medan', 1, '2023-04-11 13:28:00', '1'),
(37, 'HP037', 'RS Delima Medan', 1, '2023-04-11 13:28:00', '1'),
(38, 'HP038', 'RS Dr. Abdul Malik', 1, '2023-04-11 13:28:00', '1'),
(39, 'HP039', 'RS Dr. Komang Makes', 1, '2023-04-11 13:28:00', '1'),
(40, 'HP040', 'RS Dr. Muhammad Ildrem', 1, '2023-04-11 13:28:00', '1'),
(41, 'HP041', 'RS Estomihi Medan', 1, '2023-04-11 13:28:00', '1'),
(42, 'HP042', 'RS Fajar Medan', 1, '2023-04-11 13:28:00', '1'),
(43, 'HP043', 'RS Ginjal Rasyida', 1, '2023-04-11 13:28:00', '1'),
(44, 'HP044', 'RS Gran Theresia Herna', 1, '2023-04-11 13:28:00', '1'),
(45, 'HP045', 'RS Harapan Mama', 1, '2023-04-11 13:28:00', '1'),
(46, 'HP046', 'RS Hermina Medan', 1, '2023-04-11 13:28:00', '1'),
(47, 'HP047', 'RS Herna Medan', 1, '2023-04-11 13:28:00', '1'),
(48, 'HP048', 'RS Hisarma', 1, '2023-04-11 13:28:00', '1'),
(49, 'HP049', 'RS Ibnu Saleh Medan', 1, '2023-04-11 13:28:00', '1'),
(50, 'HP050', 'RS Imelda Pekerja Indonesia', 1, '2023-04-11 13:28:00', '1'),
(51, 'HP051', 'RS Islam Malahayati', 1, '2023-04-11 13:28:00', '1'),
(52, 'HP052', 'RS Kusta Pulau Cinayang', 1, '2023-04-11 13:28:00', '1'),
(53, 'HP053', 'RS Mandiri Medan', 1, '2023-04-11 13:28:00', '1'),
(54, 'HP054', 'RS Martha Friska Multatuli', 1, '2023-04-11 13:28:00', '1'),
(55, 'HP055', 'RS Martondi', 1, '2023-04-11 13:28:00', '1'),
(56, 'HP056', 'RS Materna Medan', 1, '2023-04-11 13:28:00', '1'),
(57, 'HP057', 'RS Mayasari', 1, '2023-04-11 13:28:00', '1'),
(58, 'HP058', 'RS Medan Baru Medical', 1, '2023-04-11 13:28:00', '1'),
(59, 'HP059', 'RS Melati', 1, '2023-04-11 13:28:00', '1'),
(60, 'HP060', 'RS Mencirim Tujuh-Tujuh', 1, '2023-04-11 13:28:00', '1'),
(61, 'HP061', 'RS Methodist Medan', 1, '2023-04-11 13:28:00', '1'),
(62, 'HP062', 'RS Methodist Susanna Wesley', 1, '2023-04-11 13:28:00', '1'),
(63, 'HP063', 'RS Mitra Medika Amplas', 1, '2023-04-11 13:28:00', '1'),
(64, 'HP064', 'RS Mitra Persada', 1, '2023-04-11 13:28:00', '1'),
(65, 'HP065', 'RS Muhammadiyah Medan', 1, '2023-04-11 13:28:00', '1'),
(66, 'HP066', 'RS Prima Vision', 1, '2023-04-11 13:28:00', '1'),
(67, 'HP067', 'RS Prof. Dr. Boloni', 1, '2023-04-11 13:28:00', '1'),
(68, 'HP068', 'RS Restu Ibu', 1, '2023-04-11 13:28:00', '1'),
(69, 'HP069', 'RS Ridos Medan', 1, '2023-04-11 13:28:00', '1'),
(70, 'HP070', 'RS Sari Mutiara', 1, '2023-04-11 13:28:00', '1'),
(71, 'HP071', 'RS Sehat Medan', 1, '2023-04-11 13:28:00', '1'),
(72, 'HP072', 'RS Siloam Dhirga Surya', 1, '2023-04-11 13:28:00', '1'),
(73, 'HP073', 'RS Siti Hajar Medan', 1, '2023-04-11 13:28:00', '1'),
(74, 'HP074', 'RS SMEC Medan', 1, '2023-04-11 13:28:00', '1'),
(75, 'HP075', 'RS Sufina Azis', 1, '2023-04-11 13:28:00', '1'),
(76, 'HP076', 'RS Sumatera Eye', 1, '2023-04-11 13:28:00', '1'),
(77, 'HP077', 'RS Sundari Medan', 1, '2023-04-11 13:28:00', '1'),
(78, 'HP078', 'RS Tere Margareth', 1, '2023-04-11 13:28:00', '1'),
(79, 'HP079', 'RS Vina Estetica', 1, '2023-04-11 13:28:00', '1'),
(80, 'HP080', 'RS Wulan Windy', 1, '2023-04-11 13:28:00', '1'),
(81, 'HP081', 'RSIA Az-Zakiyah', 1, '2023-04-11 13:28:00', '1'),
(82, 'HP082', 'RSIA Badrul Aini', 1, '2023-04-11 13:28:00', '1'),
(83, 'HP083', 'RSIA Bunda Salam Medan', 1, '2023-04-11 13:28:00', '1'),
(84, 'HP084', 'RSIA Eva Medan', 1, '2023-04-11 13:28:00', '1'),
(85, 'HP085', 'RSIA Harapan Ibu Medan', 1, '2023-04-11 13:28:00', '1'),
(86, 'HP086', 'RSIA Karya Jaya', 1, '2023-04-11 13:28:00', '1'),
(87, 'HP087', 'RS GESHA AKBAR', 1, '2023-06-09 19:06:44', '21'),
(88, 'HP088', 'RS ROYAL PRIMA', 1, '2023-06-10 16:32:11', '21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stp_portofolio`
--

CREATE TABLE `stp_portofolio` (
  `id` int(11) NOT NULL,
  `label` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stp_portofolio`
--

INSERT INTO `stp_portofolio` (`id`, `label`, `status`) VALUES
(1, 'Pelayanan/Tindakan', 1),
(2, 'Case Report', 1),
(3, 'Karya Ilmiah', 1),
(4, 'Extrakurikuler', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stp_stase`
--

CREATE TABLE `stp_stase` (
  `id` int(11) NOT NULL,
  `stase_id` varchar(128) NOT NULL,
  `stase_name` text NOT NULL,
  `semester` varchar(2) NOT NULL,
  `status` int(1) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stp_stase`
--

INSERT INTO `stp_stase` (`id`, `stase_id`, `stase_name`, `semester`, `status`, `update_date`, `update_id`) VALUES
(1, 'STS00001', 'Mengulang Kaji di Stase Infeksi', 'VI', 1, '2023-04-11 13:35:00', '1'),
(2, 'STS00002', 'Mengulang Kaji di stase Imunologi ', '0', 1, '2023-04-11 13:35:00', '1'),
(3, 'STS00003', 'Mengulang Kaji di stase Penyakit Paru Kerja dan Lingkungan', '0', 1, '2023-04-11 13:35:00', '1'),
(4, 'STS00004', 'Mengulang Kaji di Stase Intervensi 4 - Gawat Napas', '0', 1, '2023-04-11 13:35:00', '1'),
(5, 'STS00005', 'Mengulang kaji di stase Imunologi', '0', 1, '2023-04-11 13:35:00', '1'),
(6, 'STS00006', 'Mengulang kaji di stase Onkologi', '0', 1, '2023-04-11 13:35:00', '1'),
(7, 'STS00007', 'Mengulang Kaji di stase Asma-PPOK', '0', 1, '2023-04-11 13:35:00', '1'),
(8, 'STS00008', 'RS Pirngadi', '0', 1, '2023-04-11 13:35:00', '1'),
(9, 'STS00009', 'Bedah Toraks', '0', 1, '2023-04-11 13:35:00', '1'),
(10, 'STS00010', 'Radioterapi ', '0', 1, '2023-04-11 13:35:00', '1'),
(11, 'STS00011', 'Hospital Serdang Malaysia', '0', 1, '2023-04-11 13:35:00', '1'),
(12, 'STS00012', 'Kardiologi', '0', 1, '2023-04-11 13:35:00', '1'),
(13, 'STS00013', 'Poli Onkologi RS HAM', '0', 1, '2023-04-11 13:35:00', '1'),
(14, 'STS00014', 'Poli Asma-PPOK RS USU', '0', 1, '2023-04-11 13:35:00', '1'),
(15, 'STS00015', 'Chief Ruangan RS HAM', '0', 1, '2023-04-11 13:35:00', '1'),
(16, 'STS00016', 'Chief Poliklinik RS HAM', '0', 1, '2023-04-11 13:35:00', '1'),
(17, 'STS00017', 'Radioterapi', '0', 1, '2023-04-11 13:35:00', '1'),
(18, 'STS00018', 'Intervensi 3 - ICU RS HAM', '0', 1, '2023-04-11 13:35:00', '1'),
(19, 'STS00019', 'IPD', '0', 1, '2023-04-11 13:35:00', '1'),
(20, 'STS00020', 'Intervensi 4 - IGD RS HAM', '0', 1, '2023-04-11 13:35:00', '1'),
(21, 'STS00021', 'Intervensi 4 - IGD RS USU', '0', 1, '2023-04-11 13:35:00', '1'),
(22, 'STS00022', 'Poli Infeksi RS USU', '0', 1, '2023-04-11 13:35:00', '1'),
(23, 'STS00023', 'Poli Infeksi RS HAM', '0', 1, '2023-04-11 13:35:00', '1'),
(24, 'STS00024', 'Poli Distribusi RS HAM', '0', 1, '2023-04-11 13:35:00', '1'),
(25, 'STS00025', 'Intervensi 2 - Bronkoskopi', '0', 1, '2023-04-11 13:35:00', '1'),
(26, 'STS00026', 'IKA', '0', 1, '2023-04-11 13:35:00', '1'),
(27, 'STS00027', 'Intervensi 1 - Pleura ', '0', 1, '2023-04-11 13:35:00', '1'),
(28, 'STS00028', 'Rehabilitasi Paru RS USU', '0', 1, '2023-04-11 13:35:00', '1'),
(29, 'STS00029', 'Intervensi 1 - Pleura', '0', 1, '2023-04-11 13:35:00', '1'),
(30, 'STS00030', 'Ruangan Madya RS USU', '0', 1, '2023-04-11 13:35:00', '1'),
(31, 'STS00031', 'Ruangan Madya RS HAM', '0', 1, '2023-04-11 13:35:00', '1'),
(32, 'STS00032', 'Faal Paru RS HAM', '0', 1, '2023-04-11 13:35:00', '1'),
(33, 'STS00033', 'Ruangan Junior RS HAM', '0', 1, '2023-04-11 13:35:00', '1'),
(34, 'STS00034', 'Ruangan Junior RS USU', '0', 1, '2023-04-11 13:35:00', '1'),
(35, 'STS00035', 'Patologi Anatomi', '0', 1, '2023-04-11 13:35:00', '1'),
(36, 'STS00036', 'Mikrobiologi', '0', 1, '2023-04-11 13:35:00', '1'),
(37, 'STS00037', 'Pemeriksaan Klinis', '0', 1, '2023-04-11 13:35:00', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stp_user`
--

CREATE TABLE `stp_user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(128) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `gender` int(1) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` text NOT NULL,
  `user_level` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `photo` text DEFAULT NULL,
  `update_date` datetime NOT NULL,
  `update_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stp_user`
--

INSERT INTO `stp_user` (`id`, `user_name`, `phone`, `gender`, `email`, `password`, `user_level`, `status`, `photo`, `update_date`, `update_id`) VALUES
(21, 'Prof. Dr. luhur Soeroso, Sp.P(K)tes', '81375613377', 2, 'usu_1@gmail.com', '$2y$10$Ip2Gj9isztmxlthQlNe1xuugcx4RlH6qmrdJCbN7w4Cox.AvQOJQK', 1, 1, '0mCqkhCs.jpeg', '2023-07-04 22:44:19', '21'),
(22, 'Prof. Dr. Tamsil Syafiudin, Sp.P(K)', '2147483647', 0, 'usu_2@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(23, 'Dr. Zainuddin Amir, Sp.P(K)', '2147483647', 0, 'usu@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 3, 1, NULL, '2023-04-11 13:28:00', '1'),
(24, 'Dr. Widirahardjo, Sp.P(K)', '2147483647', 0, 'usu@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 3, 1, NULL, '2023-04-11 13:28:00', '1'),
(25, 'Dr. Pandiaman Pandia, M.Ked(Paru), Sp.P(K)', '2147483647', 0, 'usu@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 3, 1, NULL, '2023-04-11 13:28:00', '1'),
(26, 'Dr. Parluhutab Siagan, M.Ked(Paru), Sp.P(K)', '2147483647', 0, 'usu@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 3, 1, NULL, '2023-04-11 13:28:00', '1'),
(27, 'DR. Dr. Amira P. Tarigan, M.Ked(Paru), Sp.P(K)', '2147483647', 0, 'usu@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 3, 1, NULL, '2023-04-11 13:28:00', '1'),
(28, 'Dr. Bintang YM, Sinaga, M.Ked(Paru), Sp.P(K)', '2147483647', 0, 'usu@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 3, 1, NULL, '2023-04-11 13:28:00', '1'),
(29, 'Dr. Noni Novisari Soeroso, M.Ked(Paru), Sp.P(K)', '2147483647', 0, 'usu@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 3, 1, NULL, '2023-04-11 13:28:00', '1'),
(30, 'dr. Setia Putra Tarigan, Sp.P', '2147483647', 0, 'usu@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 3, 1, NULL, '2023-04-11 13:28:00', '1'),
(31, 'Dr. Syamsul Bihar, M.Ked(Paru), Sp.P', '2147483647', 0, 'usu@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 3, 1, NULL, '2023-04-11 13:28:00', '1'),
(33, 'dr. ASWAN', '2147483647', 1, '2_2usu_2@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(34, 'dr. NUR ADHIYAH SIREGAR, MKK', '2147483647', 1, '3_3usu_3@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(35, 'dr. ANDRIARTO NUGROHO', '2147483647', 1, '4_4usu_4@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(36, 'dr. ALFIAN HUSIN, MARS', '2147483647', 1, '5_5usu_5@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(37, 'dr. WAGNER TULUS', '2147483647', 1, '6_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(38, 'dr. LIAN INDRIANI', '2147483647', 1, '7_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(39, 'dr. MEILLYSSA CHANDRA', '2147483647', 1, '8_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(40, 'dr. RAHAYU EVIRIYANTI', '2147483647', 1, '9_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(41, 'dr. MUGI PRANEDYA PRATIWI', '2147483647', 1, '10_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(42, 'dr. SOFIA PUTRI NIRMALA', '2147483647', 1, '11_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(43, 'dr. DESSY ANGGRAENI', '2147483647', 1, '12_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(44, 'dr. SELVI RELITA FITRI, MARS', '2147483647', 1, '13_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(45, 'dr. NAHARUDDIN', '2147483647', 1, '14_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(46, 'dr. AFRIANTI HANDAYANI', '2147483647', 1, '15_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, NULL, '2023-04-11 13:28:00', '1'),
(47, 'dr. SELVI RELITA FITRI, MARS', '2147483647', 1, '16_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(48, 'Dr.dr. BOBBY SINGH, Sp.P.M.Kes, FISH.FAPSR', '2147483647', 1, '17_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(49, 'dr. SRI SUMANTI PURWATININGSIH', '2147483647', 1, '18_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(50, 'dr. DIANA SAFITRI', '2147483647', 1, '19_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(51, 'dr. SUKRIYAH YARNEM', '2147483647', 1, '20_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(52, 'dr. SYAHRUL, DTMH', '2147483647', 1, '21_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(53, 'dr. HELMY USMAN', '2147483647', 1, '22_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(54, 'dr. PONY NDARUAJI', '2147483647', 1, '23_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(55, 'dr. TRI SUDRAJAT', '2147483647', 1, '24_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(56, 'dr. SEPREKA MIRLY', '2147483647', 1, '25_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(57, 'dr. NOVYANTI', '2147483647', 1, '26_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(58, 'dr. LIANA NATALIA', '2147483647', 1, '27_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(59, 'dr. NENY RIF\'AH', '2147483647', 1, '28_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(60, 'dr. ICHLAS RACHMAT BAHAGIA', '2147483647', 1, '29_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(61, 'dr. NUNIK WULANDARI', '2147483647', 1, '30_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(62, 'dr. ANDIKA MUNDA', '2147483647', 1, '31_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(63, 'dr. SYAFRIL ARMANSYAH', '2147483647', 1, '32_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(64, 'dr. SYLVIA AGESTIE', '2147483647', 1, '33_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(65, 'dr. CHRISTA MAURA PUTRI', '2147483647', 1, '34_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(66, 'dr. SUSANTI EFFENDI', '2147483647', 1, '35_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(67, 'dr. YASHINTA ARIF', '2147483647', 1, '36_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(68, 'dr. FERY CHANDRAWIRA', '2147483647', 1, '37_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(69, 'dr. ANDRI SATI SIREGAR', '2147483647', 1, '38_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(70, 'dr. ADE FITRA', '2147483647', 1, '39_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(71, 'dr. ABDUL GAMAL', '2147483647', 1, '40_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(72, 'dr. MARIAMAN TJENDERA, M.Kes', '2147483647', 1, '41_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(73, 'dr. EBIET YUDI SANTOKO', '2147483647', 1, '42_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(74, 'dr. VIEN ANGGARANI PRASETYANA', '2147483647', 1, '43_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(75, 'dr. RAHMI DAMAYANTI', '2147483647', 1, '44_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(76, 'dr. RATIH DYAH PITALOKA', '2147483647', 1, '45_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(77, 'dr. ROSVY WALIDA', '2147483647', 1, '46_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(78, 'dr. SUSILO WIBOWO', '2147483647', 1, '47_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(79, 'dr. VONNY OCTAVIA HARTANTO', '2147483647', 1, '48_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(80, 'dr. RACHMAT SETIADI, MARS', '2147483647', 1, '49_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(81, 'dr. SUSAN IRA SUSANTI', '2147483647', 1, '50_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(82, 'dr. NINA NURLINDA', '2147483647', 1, '51_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(83, 'dr. ISTIQAMAH KIFTIANA SARI', '2147483647', 1, '52_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(84, 'dr. FAUZIA NOOR LIANI, Sp.PD', '2147483647', 1, '53_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(85, 'dr. MARIA FRANSISCA DESY M', '2147483647', 1, '54_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(86, 'dr. MARYO IGNATIUS RAMOH', '2147483647', 1, '55_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(87, 'dr. DANANG DIPA ERLANGGA', '2147483647', 1, '56_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(88, 'dr. RAHMAWATI SILALAHI', '2147483647', 1, '57_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(89, 'dr. DEWI YANTI SOLIKHAN', '2147483647', 1, '58_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(90, 'dr. NI KETUT RAI PURNAMI, Sp.P.D, K-Ger, FINASIM', '2147483647', 1, '59_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(91, 'dr. MULYANI MUS', '2147483647', 1, '60_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(92, 'dr. ENDANG LASTIANY S.', '2147483647', 1, '61_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(93, 'dr. OTTO B. KAWANDA, M.KKK', '2147483647', 1, '62_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(94, 'dr. MADE MARIYANI FITRIYANTI', '2147483647', 1, '63_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(95, 'dr. SARIF HIDAJAT MS. MKes. SpOk', '2147483647', 1, '64_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(96, 'dr. I.G.K ARTANA WIJAYA PUTRA', '2147483647', 1, '65_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(97, 'dr. PUTU AYU SITA WIDAYANTI, S.KED', '2147483647', 1, '66_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(98, 'dr. SRI MURDIYAH HIDAYATI, MH', '2147483647', 1, '67_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(99, 'dr. ADITYA MEGANANDA', '2147483647', 1, '68_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(100, 'dr. ABDUL ARIF IRSAN', '2147483647', 1, '69_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(101, 'dr. ABDUL HANAN RAMLAN KOROMPOT. MH. MARS', '2147483647', 1, '70_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(102, 'dr. SURYANTI BAHRI', '2147483647', 1, '71_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(103, 'dr. RAHMAWATI SANUJI', '2147483647', 1, '72_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(104, 'dr. ZULKIFLI ADNAN, M.Kes', '2147483647', 1, '73_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(105, 'dr. ARIFIN CHANDRA', '2147483647', 1, '74_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(106, 'dr. MULJADI ONGGOPRANOTO', '2147483647', 1, '75_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(107, 'dr. BAIQ ELINA AMANWATI', '2147483647', 1, '76_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(108, 'dr. DYAH WIDOWATI RAHAJOENINGSIH SUTRISNO', '2147483647', 1, '77_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(109, 'dr. LILIS SETIJARINI', '2147483647', 1, '78_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(110, 'dr. FARIZ HAMMAM', '2147483647', 1, '79_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(111, 'dr. WIDHA PUJI ISMAYAWATI', '2147483647', 1, '80_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(112, 'dr. ARESWARI DANARTY, MKK', '2147483647', 1, '81_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(113, 'dr. RATIH SOFIA IKAPUTRI, MOSH', '2147483647', 1, '82_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(114, 'dr. YUNIANTI LAFAU', '2147483647', 1, '83_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(115, 'dr. ESTER R. MANURUNG', '2147483647', 1, '84_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(116, 'dr. ENDRICO XAVIEREES, M. Biomed', '2147483647', 1, '85_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(117, 'dr. HERLINA ARFAN', '2147483647', 1, '86_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(118, 'dr. RIA REZKI ANGRENI A.R', '2147483647', 1, '87_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(119, 'dr. FAIZAL THAMRIN', '2147483647', 1, '88_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(120, 'dr. JOKO YUSTONO', '2147483647', 1, '89_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(121, 'dr. TRI SUJI WATI', '2147483647', 1, '90_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(122, 'dr. ASWAR MAKRUF M.K.K.K', '2147483647', 1, '91_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(123, 'dr. VIDYA SARI, Mres', '2147483647', 1, '92_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(124, 'dr. ARDIANA DINISARI, Sp.PD', '2147483647', 1, '93_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(125, 'dr. DEVIA WIDHIANINGSIH', '2147483647', 1, '94_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(126, 'dr. DIAH PERMANASARI', '2147483647', 1, '95_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(127, 'dr. ANNISA WIJAYANTI', '2147483647', 1, '96_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(128, 'dr. YANUAR ARIEN PRADANA M.H.Kes', '2147483647', 1, '97_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(129, 'dr. RIDWAN', '2147483647', 1, '98_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(130, 'dr. JULIANTO KEMALA', '2147483647', 1, '99_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(131, 'dr. YAN FRANSISKA HERAWATI', '2147483647', 1, '100_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(132, 'dr. RUDOLF FERNANDO WIBOWO', '2147483647', 1, '101_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(133, 'dr. DEWI WIDOWATI', '2147483647', 1, '102_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(134, 'dr. TRIESNAWATI ERSYAD', '2147483647', 1, '103_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(135, 'dr. ERWIN DHARMA KADAR', '2147483647', 1, '104_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(136, 'dr. RENNY SIGIT SAFITRI', '2147483647', 1, '105_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(137, 'dr. ADNI MIFTAH KHUDIN', '2147483647', 1, '106_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(138, 'dr. WIANDARTI THERESIANI', '2147483647', 1, '107_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(139, 'dr. JOCTANTINUS KAWEHEDO', '2147483647', 1, '108_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(140, 'dr. RACHMI INDARINI', '2147483647', 1, '109_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(141, 'dr. PUTI DWI GINANTI, Sp.Ok', '2147483647', 1, '110_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(142, 'dr. LINDA RUSLIANA SARI', '2147483647', 1, '111_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(143, 'dr. VENIA MIFTAHUL REZKI', '2147483647', 1, '112_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(144, 'dr. FLYNDIE SIMON', '2147483647', 1, '113_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(145, 'dr. GUNAWAN ALI', '2147483647', 1, '114_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(146, 'dr. FX HENDRIYONO, Sp.PK', '2147483647', 1, '115_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(147, 'dr. LADY SARAH ALKHUMAIRA', '2147483647', 1, '116_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(148, 'dr. ARIYANTI SRI SULISTYORINI', '2147483647', 1, '117_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(149, 'dr. RIRI ANITA AGUSTIE D', '2147483647', 1, '118_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(150, 'dr. JANSYE CYNTHIA P, Sp.PD', '2147483647', 1, '119_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(151, 'dr. WENNY FONDA LIKLIKWATIL', '2147483647', 1, '120_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(152, 'dr. DIAH MAYASARI', '2147483647', 1, '121_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(153, 'dr. POPPY LUTFITA', '2147483647', 1, '122_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(154, 'dr. ANGGA ARIFIANTO', '2147483647', 1, '123_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(155, 'dr. WAHYU IRAWAN, MM', '2147483647', 1, '124_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(156, 'dr. AGIL MURTHALA', '2147483647', 1, '125_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(157, 'dr. DWI CAHYO SUPRABOWO', '2147483647', 1, '126_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(158, 'dr. SEBASTIAN GEENADI', '2147483647', 1, '127_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(159, 'dr. TANIA NUGRAH UTAMI', '2147483647', 1, '128_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(160, 'dr. ELLY KARTIKA FARIDA', '2147483647', 1, '129_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(161, 'dr. LISYE MARRILYN LUKAS', '2147483647', 1, '130_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(162, 'dr. DWI KARTIKA PURBANINGRUM', '2147483647', 1, '131_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(163, 'dr. GUSTAMI', '2147483647', 1, '132_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(164, 'dr. I PUTU EKA KUSUMA YASA S. Ked', '2147483647', 1, '133_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(165, 'dr. SUMARNI HASAN', '2147483647', 1, '134_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(166, 'dr. YUNITA ELANDA', '2147483647', 1, '135_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(167, 'dr. SIGIT NUR AZIZ', '2147483647', 1, '136_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(168, 'dr. OKTAVIANTO HARIPRASETIJO', '2147483647', 1, '137_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(169, 'dr. DINA EVA WANGANIA', '2147483647', 1, '138_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(170, 'dr. FRANELINDA LONDAH, M.Kes', '2147483647', 1, '139_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(171, 'dr. ENDANG LASTIANY G', '2147483647', 1, '140_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(172, 'dr. AMIR FAISHOL', '2147483647', 1, '141_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(173, 'dr. AMRULLAH ADJI', '2147483647', 1, '142_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(174, 'dr. DWI DARMAWANTI', '2147483647', 1, '143_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(175, 'dr. Mutiara Hariani', '2147483647', 1, '144_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(176, 'dr. Martina Yulianti, Sp PD FINASIM', '2147483647', 1, '145_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(177, 'dr. Marthin Limba, Sp PD', '2147483647', 1, '146_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(178, 'dr. Christofel Korah Tooy, Sp PD FINASIM', '2147483647', 1, '147_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(179, 'dr. Muhammad Satriyo Wiryawan, Sp PD', '2147483647', 1, '148_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(180, 'dr. Rida Niradita W,SpPD', '2147483647', 1, '149_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(181, 'dr. Yani Muvitasari SpPD', '2147483647', 1, '150_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(182, 'dr. Anton Komala,Sp.PD', '2147483647', 1, '151_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(183, 'dr. Bambang Surif, Sp A', '2147483647', 1, '152_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(184, 'dr. Hery Setyobudi, Sp A, M. Kes', '2147483647', 1, '153_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(185, 'ddr. Susanti SpA', '2147483647', 1, '154_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(186, 'dr. M Buchori,M,Sc,Sp A', '2147483647', 1, '155_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(187, 'dr. Muhammad, Sp B, M. Si Med', '2147483647', 1, '156_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(188, 'dr. Singgih Harmono, Sp B', '2147483647', 1, '157_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(189, 'dr. Pipin Abdillah, Sp B', '2147483647', 1, '158_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(190, 'dr. Ali Rachman, Sp B', '2147483647', 1, '159_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(191, 'dr. Aisyah Radiallah, Sp. OG', '2147483647', 1, '160_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(192, 'dr. Bernadeta Caroline Panjaitan, Sp. OG', '2147483647', 1, '161_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(193, 'dr. Bernardus Dirgantoro, Sp OG', '2147483647', 1, '162_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(194, 'dr. Irwan Daido, M. Kes, Sp OG', '2147483647', 1, '163_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(195, 'dr. Jemmy Aria Beny, Sp OG, M. Kes', '2147483647', 1, '164_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(196, 'dr. Miftahul Afandi, Sp JP. FIHA', '2147483647', 1, '165_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(197, 'dr. Mauritz Silalahi, Sp P', '2147483647', 1, '166_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(198, 'dr. Darma Rianto, Sp P', '2147483647', 1, '167_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(199, 'dr. Parluhutan Doli Siregar, Sp P', '2147483647', 1, '168_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(200, 'dr. Ria Sisca Myrnasari, Sp.P', '2147483647', 1, '169_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(201, 'dr. Rajiman, M.Kes, Sp.THT-KL', '2147483647', 1, '170_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(202, 'dr. Efrijal Silaen, Sp M', '2147483647', 1, '171_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(203, 'dr. Rizki Chusnaini, SpM, M.Kes', '2147483647', 1, '172_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(204, 'dr. Edison Harianja, Sp PK', '2147483647', 1, '173_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(205, 'dr. Nji RD Wahidah, Sp PK', '2147483647', 1, '174_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(206, 'dr. Dina Hernawati, Sp.PA', '2147483647', 1, '175_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(207, 'dr. Morfino Yodi Thorasika, Sp.M.K', '2147483647', 1, '176_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(208, 'dr. Ahmad Murdillah.Sp.Rad', '2147483647', 1, '177_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(209, 'dr. Yucca Kristianawati, Sp.Rad', '2147483647', 1, '178_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(210, 'dr. Nurindah Isty Rachmayanti, Sp.KFR', '2147483647', 1, '179_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(211, 'dr. Rudy Albert Frans Peleh, Sp AN', '2147483647', 1, '180_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(212, 'dr. Nenden Suhadiana Fajarini, Sp An', '2147483647', 1, '181_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(213, 'dr. I Dewa Agung Gede A.P.B, Sp An, M. Kes', '2147483647', 1, '182_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(214, 'dr. Ibnoe Soedjarto, M.Si. Med, Sp. S', '2147483647', 1, '183_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(215, 'dr. Suherman A. Tambunan, Sp S', '2147483647', 1, '184_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(216, 'dr. Mariati Herlina S, Sp.KJ', '2147483647', 1, '185_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(217, 'dr. Evi Mustikawati Arifin, Sp KK, M. Kes', '2147483647', 1, '186_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(218, 'dr. Arif Risdianto, Sp KK, M. Kes', '2147483647', 1, '187_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(219, 'dr. Hendri Kustiyawan, Sp OT', '2147483647', 1, '188_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(220, 'dr. Patritius Kelik DP, Sp.OT', '2147483647', 1, '189_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(221, 'dr. Santi Rini, Sp BA', '2147483647', 1, '190_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(222, 'dr. Slamet Suswantoro, Sp BA', '2147483647', 1, '191_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(223, 'drg. Sumardi Yahya Ma\'ruf', '2147483647', 1, '192_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(224, 'drg. Sumardi Yahya Ma\'ruf', '2147483647', 1, '193_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(225, 'dr. Evi Mustikawati Arifin, Sp KK, M. Kes.', '2147483647', 1, '194_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1'),
(226, 'dr. Arif Risdianto, Sp KK, M. Kes', '2147483647', 1, '195_usu_1@gmail.com', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a...', 1, 1, 'https://cdn.pixabay.com/photo/2016/03/31/20/11/doctor-1295571_640.png', '2023-04-11 13:28:00', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stp_user_ppds`
--

CREATE TABLE `stp_user_ppds` (
  `id` int(11) NOT NULL,
  `user_id` varchar(128) NOT NULL,
  `status` int(1) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stp_user_supervisor`
--

CREATE TABLE `stp_user_supervisor` (
  `id` int(11) NOT NULL,
  `user_id` varchar(128) NOT NULL,
  `supervisor_name` text NOT NULL,
  `divisi_id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_case_report`
--

CREATE TABLE `trx_case_report` (
  `id` int(11) NOT NULL,
  `trx_id` varchar(18) NOT NULL,
  `presenter` varchar(128) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `trx_case_report`
--

INSERT INTO `trx_case_report` (`id`, `trx_id`, `presenter`, `description`) VALUES
(2, 'TD-07-2023-000002', 'Tes', 'tes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_extrakulikuler`
--

CREATE TABLE `trx_extrakulikuler` (
  `id` int(11) NOT NULL,
  `trx_id` varchar(17) NOT NULL,
  `kegiatan_id` int(11) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `trx_extrakulikuler`
--

INSERT INTO `trx_extrakulikuler` (`id`, `trx_id`, `kegiatan_id`, `description`) VALUES
(1, 'TD-07-2023-000004', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_karya_ilmiah`
--

CREATE TABLE `trx_karya_ilmiah` (
  `id` int(11) NOT NULL,
  `trx_id` varchar(17) NOT NULL,
  `jenis_karya` varchar(191) NOT NULL,
  `judul` varchar(191) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `trx_karya_ilmiah`
--

INSERT INTO `trx_karya_ilmiah` (`id`, `trx_id`, `jenis_karya`, `judul`, `description`) VALUES
(1, 'TD-07-2023-000003', 'Proposal Penelitian', 'tes judul', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_portofolio`
--

CREATE TABLE `trx_portofolio` (
  `id` int(11) NOT NULL,
  `portofolio_id` int(11) NOT NULL,
  `trx_id` varchar(17) NOT NULL,
  `stase_id` varchar(11) NOT NULL,
  `supervisor_id` int(11) NOT NULL,
  `ppds_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `trx_portofolio`
--

INSERT INTO `trx_portofolio` (`id`, `portofolio_id`, `trx_id`, `stase_id`, `supervisor_id`, `ppds_id`, `status`, `create_date`, `create_id`, `update_date`, `update_id`) VALUES
(1, 1, 'TD-07-2023-000001', 'STS00001', 23, 21, 1, '2023-07-03 21:54:52', 21, NULL, NULL),
(2, 2, 'TD-07-2023-000002', 'STS00001', 23, 21, 1, '2023-07-03 21:56:25', 21, NULL, NULL),
(3, 3, 'TD-07-2023-000003', 'STS00001', 24, 21, 1, '2023-07-03 22:06:08', 21, NULL, NULL),
(4, 4, 'TD-07-2023-000004', 'STS00001', 23, 21, 1, '2023-07-03 22:15:45', 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_tindakan`
--

CREATE TABLE `trx_tindakan` (
  `id` int(11) NOT NULL,
  `trx_id` varchar(17) NOT NULL,
  `stase_id` varchar(128) NOT NULL,
  `hospital_id` varchar(128) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trx_tindakan`
--

INSERT INTO `trx_tindakan` (`id`, `trx_id`, `stase_id`, `hospital_id`, `description`) VALUES
(99, 'TD-07-2023-000001', 'STS00001', 'HP001', 'tes');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `path_portofolio`
--
ALTER TABLE `path_portofolio`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stp_divisi`
--
ALTER TABLE `stp_divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stp_extrakurikuler`
--
ALTER TABLE `stp_extrakurikuler`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stp_hospital`
--
ALTER TABLE `stp_hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stp_portofolio`
--
ALTER TABLE `stp_portofolio`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stp_stase`
--
ALTER TABLE `stp_stase`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stp_user`
--
ALTER TABLE `stp_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stp_user_ppds`
--
ALTER TABLE `stp_user_ppds`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stp_user_supervisor`
--
ALTER TABLE `stp_user_supervisor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trx_case_report`
--
ALTER TABLE `trx_case_report`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trx_extrakulikuler`
--
ALTER TABLE `trx_extrakulikuler`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trx_karya_ilmiah`
--
ALTER TABLE `trx_karya_ilmiah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trx_portofolio`
--
ALTER TABLE `trx_portofolio`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trx_tindakan`
--
ALTER TABLE `trx_tindakan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `path_portofolio`
--
ALTER TABLE `path_portofolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `stp_divisi`
--
ALTER TABLE `stp_divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `stp_extrakurikuler`
--
ALTER TABLE `stp_extrakurikuler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stp_hospital`
--
ALTER TABLE `stp_hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `stp_portofolio`
--
ALTER TABLE `stp_portofolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `stp_stase`
--
ALTER TABLE `stp_stase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `stp_user`
--
ALTER TABLE `stp_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT untuk tabel `stp_user_ppds`
--
ALTER TABLE `stp_user_ppds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stp_user_supervisor`
--
ALTER TABLE `stp_user_supervisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trx_case_report`
--
ALTER TABLE `trx_case_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `trx_extrakulikuler`
--
ALTER TABLE `trx_extrakulikuler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `trx_karya_ilmiah`
--
ALTER TABLE `trx_karya_ilmiah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `trx_portofolio`
--
ALTER TABLE `trx_portofolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `trx_tindakan`
--
ALTER TABLE `trx_tindakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
