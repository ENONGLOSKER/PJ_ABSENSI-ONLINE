-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221026.4ba2a88e73
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2023 pada 10.53
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pj_absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absenapp_absenmodel`
--

CREATE TABLE `absenapp_absenmodel` (
  `id` bigint(20) NOT NULL,
  `ket` longtext DEFAULT NULL,
  `tgl` date NOT NULL,
  `waktu` time(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `pegawai_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `absenapp_absenmodel`
--

INSERT INTO `absenapp_absenmodel` (`id`, `ket`, `tgl`, `waktu`, `status`, `pegawai_id`) VALUES
(4, '', '2023-03-17', '09:26:57.584758', 'HADIR', 2),
(5, '', '2023-03-17', '09:27:40.408926', 'PULANG', 2),
(6, '', '2023-03-17', '09:29:27.033976', 'HADIR', 3),
(7, '', '2023-03-17', '09:29:36.387613', 'PULANG', 3),
(8, '', '2023-03-17', '09:33:35.577442', 'HADIR', 4),
(9, '', '2023-03-17', '09:33:45.651766', 'PULANG', 4),
(10, '', '2023-03-17', '09:35:27.271166', 'HADIR', 5),
(11, '', '2023-03-17', '09:35:42.123054', 'IZIN', 5),
(12, '', '2023-03-17', '09:37:18.667262', 'HADIR', 6),
(13, 'jemput anak', '2023-03-17', '09:37:45.485347', 'IZIN', 6),
(14, '', '2023-03-17', '09:40:06.789267', 'HADIR', 7),
(15, '', '2023-03-17', '09:40:25.979189', 'PULANG', 7),
(16, '', '2023-03-17', '09:42:16.972657', 'HADIR', 8),
(17, 'sakit', '2023-03-17', '09:42:31.451580', 'IZIN', 8),
(18, '', '2023-03-17', '09:56:34.046149', 'HADIR', 9),
(19, '', '2023-03-17', '09:56:44.705104', 'PULANG', 9),
(20, '', '2023-03-17', '09:58:46.442451', 'HADIR', 10),
(21, '', '2023-03-17', '09:58:59.710543', 'PULANG', 10),
(22, '', '2023-03-17', '10:01:52.713495', 'HADIR', 11),
(23, '', '2023-03-17', '10:02:03.154149', 'PULANG', 11),
(24, '', '2023-03-17', '10:11:16.738575', 'HADIR', 12),
(25, '', '2023-03-17', '10:11:28.329245', 'PULANG', 12),
(26, '', '2023-03-17', '10:15:20.759714', 'HADIR', 13),
(27, '', '2023-03-17', '10:15:34.701996', 'PULANG', 13),
(28, '', '2023-03-17', '10:16:59.947644', 'HADIR', 14),
(29, '', '2023-03-17', '10:17:10.688720', 'PULANG', 14),
(30, '', '2023-03-17', '10:18:47.099983', 'HADIR', 15),
(31, '', '2023-03-17', '10:19:00.914645', 'PULANG', 15),
(32, '', '2023-03-17', '10:20:33.168535', 'HADIR', 16),
(33, '', '2023-03-17', '10:20:45.892355', 'PULANG', 16),
(34, '', '2023-03-17', '10:22:12.033341', 'HADIR', 17),
(35, '', '2023-03-17', '10:22:24.497680', 'PULANG', 17),
(36, '', '2023-03-17', '10:23:47.883339', 'HADIR', 18),
(37, '', '2023-03-17', '10:24:01.138095', 'PULANG', 18),
(38, '', '2023-03-17', '10:25:34.086135', 'HADIR', 19),
(39, '', '2023-03-17', '10:25:47.049611', 'PULANG', 19),
(40, '', '2023-03-17', '10:27:48.146382', 'HADIR', 20),
(41, '', '2023-03-17', '10:28:01.221469', 'PULANG', 20),
(42, '', '2023-03-17', '10:29:26.563102', 'HADIR', 21),
(43, '', '2023-03-17', '10:29:39.585745', 'PULANG', 21),
(44, '', '2023-03-17', '10:31:16.104005', 'HADIR', 22),
(45, '', '2023-03-17', '10:31:35.320464', 'PULANG', 22),
(46, '', '2023-03-17', '10:33:12.617008', 'HADIR', 23),
(47, '', '2023-03-17', '10:33:24.807744', 'PULANG', 23);

-- --------------------------------------------------------

--
-- Struktur dari tabel `absenapp_profil`
--

CREATE TABLE `absenapp_profil` (
  `id` bigint(20) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `nama_id` int(11) NOT NULL,
  `alamat` longtext NOT NULL,
  `jenisK` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `absenapp_profil`
--

INSERT INTO `absenapp_profil` (`id`, `nip`, `jabatan`, `nama_id`, `alamat`, `jenisK`) VALUES
(1, '-', 'Karyawan', 1, 'sakra', 'Perempuan'),
(2, '197312311993011001', 'Camat', 3, 'Masbagik', 'Laki-Laki'),
(3, '197412312007011121', 'Sekcam', 4, 'Mamben Daya', 'Laki-Laki'),
(4, '197211031992032007', 'Kasi Pelayanan Umum', 6, 'Aikmel', 'Laki-Laki'),
(5, '198103302005011013', 'Kasi Pemerintahan', 7, 'Aikmel Barat', 'Laki-Laki'),
(6, '198706302015022003', 'Kasi PM', 8, 'Aikmel', 'Perempuan'),
(7, '197912312005011027', 'Kasi Trantib', 9, 'Aikmel Utara', 'Laki-Laki'),
(8, '197812212003122007', 'Kasi Kesra', 10, 'Selong', 'Perempuan'),
(9, '197408172008011025', 'Kasubag keu. Dan pelaporan', 11, 'Selong', 'Laki-Laki'),
(10, '196909241993032007', 'Kasubag Umpeg', 12, 'Toya', 'Perempuan'),
(11, '196512311989061022', 'Pelaksana subbag umpeg', 13, 'Keroya', 'Laki-Laki'),
(12, '196812311989061022', 'Pelaksana seksi trantib', 14, 'Keroya', 'Laki-Laki'),
(13, '196912312009061022', 'Pelaksana seksi pemerintahan', 15, 'Lenek kalibambang', 'Laki-Laki'),
(14, '197901172005011007', 'Pelaksana seksi subag keu', 16, 'Aikmel', 'Laki-Laki'),
(15, '198405312014062003', 'Pelaksaan seksi pemerintahan', 17, 'Aikmel', 'Laki-Laki'),
(16, '-', 'Pelaksanaa seksi trantib', 18, 'Aikmel barat', 'Laki-Laki'),
(17, '-', 'Pelaksanaan seksi PM', 19, 'Aikmel utara', 'Laki-Laki'),
(18, '-', 'Pramu kebersihan', 20, 'Aikmel', 'Laki-Laki'),
(19, '-', 'Pengemudi', 21, 'Aikmel Utara', 'Laki-Laki'),
(20, '-', 'Pelaksaan subag umpeg', 22, 'Aikmel barat', 'Perempuan'),
(21, '-', 'Pelaksaan seksi trantib', 23, 'Kb. Kerang daya', 'Perempuan'),
(22, '-', 'Pelaksanaan seksi pelum', 24, 'Aikmel barat', 'Laki-Laki'),
(23, '-', 'Pramu kebersihan', 25, 'Aikmel utara', 'Laki-Laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add absen model', 7, 'add_absenmodel'),
(26, 'Can change absen model', 7, 'change_absenmodel'),
(27, 'Can delete absen model', 7, 'delete_absenmodel'),
(28, 'Can view absen model', 7, 'view_absenmodel'),
(29, 'Can add profil', 8, 'add_profil'),
(30, 'Can change profil', 8, 'change_profil'),
(31, 'Can delete profil', 8, 'delete_profil'),
(32, 'Can view profil', 8, 'view_profil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$Uq3j1PRQ11iWvJbITZwvuu$c3WLFVBR80BuNnbmhgex1795XNiu6rhenIwMy1wh7Jw=', '2023-03-17 01:08:42.257131', 0, 'rizqa ulfaturrahmi', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 01:08:22.746909'),
(2, 'pbkdf2_sha256$390000$WnSqcQEhvGOe83UKMgV4dt$vzS2axJ6yRRT51OdB3naPsY9SO+sU29U7U+vftic1K8=', '2023-03-17 02:33:44.933248', 1, 'Ruswanti_Mulyana', '', '', 'admin@gmail.com', 1, 1, '2023-03-17 01:15:37.384466'),
(3, 'pbkdf2_sha256$390000$ZSJ2UH7DVNXTVcNWLEj2Yf$KISKn6gvfaqUWOfnKfDmvLDHehCYFSlZ6cjrhjgM9r8=', '2023-03-17 01:25:51.159684', 0, 'Ainudin,S.sos', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 01:25:35.155186'),
(4, 'pbkdf2_sha256$390000$DnOHx8i9BOao1GJbeUyhl8$Z3JdapmKJQR22+j0+APnhbSsetlVg1m4NRuIRVvMw6w=', '2023-03-17 01:28:35.969842', 0, 'Saifudin juhri, S.Ag.M.Pd.i', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 01:28:17.104391'),
(6, 'pbkdf2_sha256$390000$ypQ1S4iLAFxXDrGGiuQXTh$JSFHo2px7Qd50MxEZODCGBOdfCx3HfQZngrrbojN1u4=', '2023-03-17 01:32:20.972479', 0, 'Hasbihan,S.H', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 01:31:54.602541'),
(7, 'pbkdf2_sha256$390000$6n3uB2l85PgT7SyEt7TyDG$T6HnisjjP0LEP2NgpPxkaEXKQTgo8QifKM9Oy+M7/Gc=', '2023-03-17 01:34:32.821290', 0, 'Anan tarfi,S.S.T', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 01:34:19.256128'),
(8, 'pbkdf2_sha256$390000$sBq0ySbItkrdZ9NrIH5oy5$4j6zCqe+7XyQF8yC3EIIhYX7lwKM9PMDpi3Oh4EbKcw=', '2023-03-17 01:36:38.855417', 0, 'Pradana puspita paramaningtyas,S.I.Kom', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 01:36:24.730876'),
(9, 'pbkdf2_sha256$390000$Dal1NDLfnbISU4u3t9Fmmt$uErNwjPhQepHeIdt46zBfxMXUfk7BQvFltm+mRiNFbE=', '2023-03-17 01:39:04.119527', 0, 'Purnama hadi S,H', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 01:38:51.194602'),
(10, 'pbkdf2_sha256$390000$xuQhKm2v7sHPymXZr8LSa6$xD5qYSgq1e8skFVKAyMZq2yvFliTSb1S7l2FhhjJGto=', '2023-03-17 01:41:26.688572', 0, 'Baiq isnaati, S.Adm', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 01:41:13.094536'),
(11, 'pbkdf2_sha256$390000$kLK3TYukvkBdEhiM5sHxU0$s1Xr7RnC713nMbxIM/eORXenenqMNb9Ddhenl5vM94o=', '2023-03-17 01:55:48.705957', 0, 'Burhanuddin jafar, S.AP', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 01:55:34.496656'),
(12, 'pbkdf2_sha256$390000$y9xtXgLqnfKUI6kdNruuxM$LZfaGLsq02/JFlxuBfmKZ4WS+cHDYagc+0ArgV03IZE=', '2023-03-17 01:57:43.401809', 0, 'Shinta lestari', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 01:57:24.450235'),
(13, 'pbkdf2_sha256$390000$HmorZpZckra4DeiL3iLCAA$UDKqEJOTlJjJ903F/+zAqCeNtGGCDZBa/kEnYRVbjiI=', '2023-03-17 02:00:57.207457', 0, 'Jamaludin', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:00:44.886558'),
(14, 'pbkdf2_sha256$390000$yWIekJAauTbKGfrvc7S9S5$W+Y7mQ4o6FJQuSZEZd4lTAb2okVHFZx3eXI03A3wmCk=', '2023-03-17 02:10:30.235296', 0, 'Hanapiah', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:10:18.251946'),
(15, 'pbkdf2_sha256$390000$SjNiXXUYMDD0W23ZOfBTJz$C3nPyLVL8GeJPCk28PFnWyWbQT6QEM2nkiijjBvXZtM=', '2023-03-17 02:15:09.652590', 0, 'Munirep', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:12:14.211255'),
(16, 'pbkdf2_sha256$390000$0n4RDoACBrV43mQisjl8Sc$CEnknk9aXXc9F4UNWxw5fpFkLDPp5FtLNNjFXNQczCg=', '2023-03-17 02:16:19.194474', 0, 'Zahid kausari', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:16:07.449774'),
(17, 'pbkdf2_sha256$390000$Gh9GOcSJ22d79kp32uwztb$rroIkUcmHmxHga8RjywJIHETmz3JGh5xlV/Kc/l9BLg=', '2023-03-17 02:17:57.720952', 0, 'Pathurrahman jayadi', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:17:45.640684'),
(18, 'pbkdf2_sha256$390000$DFHj5Cd2JChctBsCv1l9z8$7HVo060xRsfen5MF6CHTn1QpLSNFz15/5AClIap/LM4=', '2023-03-17 02:19:53.943924', 0, 'Roni Rahman hidayat', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:19:41.051633'),
(19, 'pbkdf2_sha256$390000$P2EIBpCxDHkvXwdB2VivxU$ICPX6otakMmVqZwtqTydezw2WvqMLlb8yarV7oEu9s8=', '2023-03-17 02:21:35.744363', 0, 'Sultan syahri', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:21:23.630562'),
(20, 'pbkdf2_sha256$390000$UiK7WbRywcyUeqFTFtwyHS$2BbFA/0AU6DNLr4pB/M9tb6Gkb4BZA6TrMhB/Y8an9k=', '2023-03-17 02:23:11.792322', 0, 'Abidin ', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:22:59.894800'),
(21, 'pbkdf2_sha256$390000$F2yOTq4dnWGH5hA1bcV4ju$LFUkGLg2N6R9GnOPyPxKNhMQ2PxU1ukBpt2542Sob28=', '2023-03-17 02:24:47.045416', 0, 'M . utoyo usman, S.Sos', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:24:32.993631'),
(22, 'pbkdf2_sha256$390000$89zoLsKFkOsVexkZvKawas$cC1f8nM86Fit5nl2Cz9tq7yeDdMTkcI6zrtBjrvOg7w=', '2023-03-17 02:26:32.175010', 0, 'Sri noni nurhaliza', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:26:18.087232'),
(23, 'pbkdf2_sha256$390000$zcZQt74AsUNE0qWlAE1O33$OjacrLDMWUyJNcNSZLyoq5M+uG01e2FPJCqWNVnpObA=', '2023-03-17 02:28:46.581044', 0, 'Apriani azizah, S.Pd', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:28:34.126415'),
(24, 'pbkdf2_sha256$390000$6NeqXcIljF1liRwGZCBkxb$mlxokRetWjXjjycNW+/q5ggEiT6+dpKaS9QOEvaH7Vk=', '2023-03-17 02:30:31.185212', 0, 'Muspita andrianingsih,S.IP', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:30:20.047491'),
(25, 'pbkdf2_sha256$390000$KduwKSWBF4gNfBI9my6lzA$HuZt9nLjAWjVvlr8rQIs8nAVHifrMnWocJwj7DN1UPg=', '2023-03-17 02:32:36.939923', 0, 'Mahirudin ', '', '', 'karyawan@gmail.com', 0, 1, '2023-03-17 02:32:25.740046');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-17 01:31:13.147817', '5', '197211031992032007', 3, '', 4, 2),
(2, '2023-03-17 02:14:05.244629', '12', 'Hanapiah', 2, '[{\"changed\": {\"fields\": [\"Alamat\"]}}]', 8, 2),
(3, '2023-03-17 02:14:15.128132', '13', 'Munirep', 2, '[{\"changed\": {\"fields\": [\"Alamat\"]}}]', 8, 2),
(4, '2023-03-17 02:35:22.460172', '3', 'rizqa ulfaturrahmi,IZIN', 3, '', 7, 2),
(5, '2023-03-17 02:35:22.528170', '2', 'rizqa ulfaturrahmi,PULANG', 3, '', 7, 2),
(6, '2023-03-17 02:35:22.587721', '1', 'rizqa ulfaturrahmi,HADIR', 3, '', 7, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'absenapp', 'absenmodel'),
(8, 'absenapp', 'profil'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-17 00:39:01.523321'),
(2, 'auth', '0001_initial', '2023-03-17 00:39:27.896019'),
(3, 'absenapp', '0001_initial', '2023-03-17 00:39:29.108742'),
(4, 'absenapp', '0002_alter_absenmodel_bidang_alter_absenmodel_jabatan_and_more', '2023-03-17 00:39:36.739404'),
(5, 'absenapp', '0003_alter_absenmodel_bidang_alter_absenmodel_jabatan_and_more', '2023-03-17 00:39:42.874041'),
(6, 'absenapp', '0004_alter_absenmodel_jabatan_alter_absenmodel_tgl', '2023-03-17 00:39:45.329430'),
(7, 'absenapp', '0005_rename_keterangan_absenmodel_ket_and_more', '2023-03-17 00:39:49.709080'),
(8, 'absenapp', '0006_alter_profil_nama', '2023-03-17 00:39:49.829811'),
(9, 'absenapp', '0007_remove_profil_foto', '2023-03-17 00:39:50.192380'),
(10, 'absenapp', '0008_absenmodel_pegawai', '2023-03-17 00:39:52.336260'),
(11, 'absenapp', '0009_alter_absenmodel_pegawai', '2023-03-17 00:40:08.968860'),
(12, 'absenapp', '0010_alter_absenmodel_pegawai', '2023-03-17 00:40:13.813877'),
(13, 'absenapp', '0011_remove_profil_bidang_profil_alamat_profil_jenisk', '2023-03-17 00:40:16.094427'),
(14, 'absenapp', '0012_alter_absenmodel_status', '2023-03-17 00:40:16.294927'),
(15, 'absenapp', '0013_alter_absenmodel_pegawai_alter_absenmodel_status_and_more', '2023-03-17 00:40:20.748722'),
(16, 'absenapp', '0014_alter_absenmodel_pegawai', '2023-03-17 00:40:24.223595'),
(17, 'absenapp', '0015_alter_absenmodel_pegawai', '2023-03-17 00:40:27.433965'),
(18, 'admin', '0001_initial', '2023-03-17 00:40:31.566246'),
(19, 'admin', '0002_logentry_remove_auto_add', '2023-03-17 00:40:31.922727'),
(20, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-17 00:40:32.058595'),
(21, 'contenttypes', '0002_remove_content_type_name', '2023-03-17 00:40:33.253754'),
(22, 'auth', '0002_alter_permission_name_max_length', '2023-03-17 00:40:34.633454'),
(23, 'auth', '0003_alter_user_email_max_length', '2023-03-17 00:40:34.950857'),
(24, 'auth', '0004_alter_user_username_opts', '2023-03-17 00:40:35.034196'),
(25, 'auth', '0005_alter_user_last_login_null', '2023-03-17 00:40:36.128669'),
(26, 'auth', '0006_require_contenttypes_0002', '2023-03-17 00:40:36.209229'),
(27, 'auth', '0007_alter_validators_add_error_messages', '2023-03-17 00:40:36.405208'),
(28, 'auth', '0008_alter_user_username_max_length', '2023-03-17 00:40:36.835714'),
(29, 'auth', '0009_alter_user_last_name_max_length', '2023-03-17 00:40:37.718849'),
(30, 'auth', '0010_alter_group_name_max_length', '2023-03-17 00:40:38.328801'),
(31, 'auth', '0011_update_proxy_permissions', '2023-03-17 00:40:38.489501'),
(32, 'auth', '0012_alter_user_first_name_max_length', '2023-03-17 00:40:38.728868'),
(33, 'sessions', '0001_initial', '2023-03-17 00:40:39.733923');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('j4790zu8wb0cl2dt7mrbcwi88zbcomfs', '.eJxVjE0OwiAYBe_C2hCgFMGle89Avj-laiAp7cp4d23ShW7fzLyXyrAuJa9d5jyxOimnDr8bAj2kboDvUG9NU6vLPKHeFL3Tri-N5Xne3b-DAr18a2JDNoSBvb8CD2CSeEZn0MZARoQJMfrAjJ6sE6SQnAtuPMYRJbFX7w8I3Diy:1pczua:jSkDpJdVwqXFx1UtxXwtjHy7Mf3f-sp3k0lh9Qscx00', '2023-03-31 02:33:44.967245');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absenapp_absenmodel`
--
ALTER TABLE `absenapp_absenmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absenapp_absenmodel_pegawai_id_3bbb9db3` (`pegawai_id`);

--
-- Indeks untuk tabel `absenapp_profil`
--
ALTER TABLE `absenapp_profil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_id` (`nama_id`);

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absenapp_absenmodel`
--
ALTER TABLE `absenapp_absenmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `absenapp_profil`
--
ALTER TABLE `absenapp_profil`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absenapp_absenmodel`
--
ALTER TABLE `absenapp_absenmodel`
  ADD CONSTRAINT `absenapp_absenmodel_pegawai_id_3bbb9db3_fk_absenapp_profil_id` FOREIGN KEY (`pegawai_id`) REFERENCES `absenapp_profil` (`id`);

--
-- Ketidakleluasaan untuk tabel `absenapp_profil`
--
ALTER TABLE `absenapp_profil`
  ADD CONSTRAINT `absenapp_profil_nama_id_b797bde1_fk_auth_user_id` FOREIGN KEY (`nama_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
