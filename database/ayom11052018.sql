-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 11 Jun 2018 pada 06.23
-- Versi server: 5.5.42
-- Versi PHP: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_contact`
--

CREATE TABLE `about_contact` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `about_contact`
--

INSERT INTO `about_contact` (`id_data`, `name`, `address`, `phone`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'Komunitas Salihara', 'Jl. Salihara 16 Pasar Minggu Jakarta Selatan 12520', '+62 21-789-1202', '', '2018-03-08 23:58:20', '', '2018-03-08 23:59:19'),
(3, '', '', '+62 857-193-111-50', '', '2018-03-08 23:59:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_founder`
--

CREATE TABLE `about_founder` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `about_founder`
--

INSERT INTO `about_founder` (`id_data`, `name`, `description`, `picture`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'MELISSA SUNJAYA', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down', '1_120180308054313pm.jpg', '', '2018-03-08 23:43:13', '', '2018-03-08 23:43:53'),
(2, 'MELISSA SUNJAYA', 'Woodwork, painting, elictrical, plumbing, and more. My service might be varied, but they all come with with the some promise of quality, dedication, and durability. Licensed and insured, I\'m experienced contractor with knowledge passed down', '2_120180308054337pm.jpg', '', '2018-03-08 23:43:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_story`
--

CREATE TABLE `about_story` (
  `id_data` int(11) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `about_story`
--

INSERT INTO `about_story` (`id_data`, `description`, `picture`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee\r\n\r\n', '', '', '2018-03-08 23:33:19', '', '2018-03-08 23:36:15'),
(2, 'My service might be varied, but they all come with with the some promise of quality, dedication, and durability. Licensed and insured, I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', '', '', '2018-03-08 23:33:35', NULL, NULL),
(3, 'Woodwork, painting, elictrical, plumbing, and more. My service might be varied, but they all come with with the some promise of quality, dedication, and durability. Licensed and insured, I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee My service might be varied, but they all come with with the some promise of quality, dedication, and durability. Licensed and insured, I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', '', '', '2018-03-08 23:33:45', NULL, NULL),
(4, 'My service might be varied, but they all come with with the some promise of quality, dedication, and durability. Licensed and insured, I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', '', '', '2018-03-08 23:33:58', NULL, NULL),
(5, 'Woodwork, painting, elictrical, plumbing, and more. My service might be varied, but they all come with with the some promise of quality, dedication, and durability. Licensed and insured, I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee My service might be varied, but they all come with with the some promise of quality, dedication, and durability. Licensed and insured, I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', '5_120180308053439pm.jpg', '', '2018-03-08 23:34:39', NULL, NULL),
(7, 'My service might be varied, but they all come with with the some promise of quality, dedication, and durability. Licensed and insured, I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', '', '', '2018-03-08 23:36:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE `blog` (
  `id_data` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blog`
--

INSERT INTO `blog` (`id_data`, `title`, `subtitle`, `description`, `picture`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(4, 'Donate medical', '', 'Woodwork, painting, elictrical, plumbing, and more. My services might be varied, but they all come with with the some promise', '4_20180308072707pm.jpg', '', '2018-03-09 01:27:07', NULL, NULL),
(5, 'Donate foods', '', 'Woodwork, painting, elictrical, plumbing, and more. My services might be varied, but they all come with with the some promise', '5_20180308072730pm.jpg', '', '2018-03-09 01:27:30', NULL, NULL),
(6, 'Donate equipment', '', 'Woodwork, painting, elictrical, plumbing, and more. My services might be varied, but they all come with with the some promise', '6_20180308072755pm.jpg', '', '2018-03-09 01:27:55', NULL, NULL),
(7, 'Donate medical', '', 'Woodwork, painting, elictrical, plumbing, and more. My services might be varied, but they all come with with the some promise', '7_20180308072821pm.jpg', '', '2018-03-09 01:28:21', NULL, NULL),
(8, 'Donate foods', '', 'Woodwork, painting, elictrical, plumbing, and more. My services might be varied, but they all come with with the some promise', '8_20180308072843pm.jpg', '', '2018-03-09 01:28:43', NULL, NULL),
(9, 'Donate equipment', '', 'Woodwork, painting, elictrical, plumbing, and more. My services might be varied, but they all come with with the some promise', '9_20180308072901pm.jpg', '', '2018-03-09 01:29:01', NULL, NULL),
(10, 'Donate medical', '', 'Woodwork, painting, elictrical, plumbing, and more. My services might be varied, but they all come with with the some promise', '10_20180308072925pm.jpg', '', '2018-03-09 01:29:25', NULL, NULL),
(11, 'Donate foods', '', 'Woodwork, painting, elictrical, plumbing, and more. My services might be varied, but they all come with with the some promise', '11_20180308072948pm.jpg', '', '2018-03-09 01:29:48', NULL, NULL),
(12, 'Donate equipment', '', 'Woodwork, painting, elictrical, plumbing, and more. My services might be varied, but they all come with with the some promise', '12_20180308073014pm.jpg', '', '2018-03-09 01:30:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `departments`
--

CREATE TABLE `departments` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(100) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `departments`
--

INSERT INTO `departments` (`id_data`, `name`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'System', 'SESSION_TEST', '2017-10-23 14:50:26', NULL, NULL),
(4, 'Product', 'SESSION_TEST', '2017-10-23 14:50:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donation`
--

CREATE TABLE `donation` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `message` text NOT NULL,
  `acc_owner` varchar(50) NOT NULL,
  `acc_bank` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `acc_number` varchar(50) NOT NULL,
  `acc_reff` varchar(50) NOT NULL,
  `agreement_check` char(1) NOT NULL,
  `donation_type` varchar(20) NOT NULL DEFAULT 'item',
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donation`
--

INSERT INTO `donation` (`id_data`, `name`, `email`, `phone`, `message`, `acc_owner`, `acc_bank`, `amount`, `acc_number`, `acc_reff`, `agreement_check`, `donation_type`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'vasd', 'dfg', 'fgfg', '', '', '', '', '', '', '1', 'item', '', '2018-03-09 16:26:27', NULL, NULL),
(2, 'Megan', 'megareceiver@gmail.com', '085794867714', 'Test donasi', '', '', '', '', '', '1', 'item', '', '2018-03-09 16:28:12', NULL, NULL),
(3, 'asd', 'df', 'sdf', 'sdf', '', '', '', '', '', '1', 'item', '', '2018-03-09 16:32:31', NULL, NULL),
(4, 'Megan', 'megareceiver@gmail.com', '920934', 'test aja', '', 'BCA', '1180000', '9384759374', '', '1', 'money', '', '2018-03-11 23:16:03', NULL, NULL),
(5, 'asdasd', 'qweqwe', 'asdad', 'asdasdasd', '', 'asdasd', '6945000', 'asdasd', '', '1', 'money', '', '2018-03-11 23:31:06', NULL, NULL),
(6, 'ghfgh', 'fgh', 'fgh', 'fghfgh', '', 'fghfg', '6945000', 'fghfgh', '', '1', 'money', '', '2018-03-11 23:45:54', NULL, NULL),
(7, 'sdfsdf', 'dfg', 'fghfgh', 'dfgfdg', '', 'sdf', '3195000', 'dfgdf', '', '1', 'money', '', '2018-03-11 23:51:52', NULL, NULL),
(8, 'PT. Megan International', 'mereceiver7logia@gmail.com', '022-0000000', 'test', '', '', '', '', '', '1', 'item', '', '2018-06-11 05:21:51', NULL, NULL),
(9, 'PT. Megan International', 'mereceiver7logia@gmail.com', '022-0000000', 'asdasd', '', '', '', '', '', '1', 'item', '', '2018-06-11 05:26:01', NULL, NULL),
(10, 'PT. Megan International', 'mereceiver7logia@gmail.com', '022-0000000', 'test', '', '', '', '', '', '1', 'item', '', '2018-06-11 05:27:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donation_detail`
--

CREATE TABLE `donation_detail` (
  `id_data` int(11) NOT NULL,
  `donate_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_type` varchar(20) NOT NULL,
  `additional_info` varchar(255) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donation_detail`
--

INSERT INTO `donation_detail` (`id_data`, `donate_id`, `product_id`, `product_type`, `additional_info`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 1, 1, 'equipment', '', '', '2018-03-09 16:26:27', NULL, NULL),
(2, 1, 2, 'foods', '', '', '2018-03-09 16:26:27', NULL, NULL),
(3, 2, 1, 'equipment', '', '', '2018-03-09 16:28:12', NULL, NULL),
(4, 2, 2, 'foods', '', '', '2018-03-09 16:28:12', NULL, NULL),
(5, 2, 2, 'medical', '', '', '2018-03-09 16:28:12', NULL, NULL),
(6, 3, 2, 'foods', '', '', '2018-03-09 16:32:31', NULL, NULL),
(7, 8, 1, 'equipment', '', '', '2018-06-11 05:21:51', NULL, NULL),
(8, 9, 1, 'equipment', 'Dikirim', '', '2018-06-11 05:26:01', NULL, NULL),
(9, 10, 1, 'equipment', 'Diambil', '', '2018-06-11 05:27:05', NULL, NULL),
(10, 10, 2, 'medical', '75% dari biaya', '', '2018-06-11 05:27:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donation_money_detail`
--

CREATE TABLE `donation_money_detail` (
  `id_data` int(11) NOT NULL,
  `donate_id` int(11) NOT NULL,
  `money_category_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donation_money_detail`
--

INSERT INTO `donation_money_detail` (`id_data`, `donate_id`, `money_category_id`, `amount`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 4, 1, 1180000, '', '2018-03-11 23:16:03', NULL, NULL),
(2, 5, 1, 1180000, '', '2018-03-11 23:31:06', NULL, NULL),
(3, 5, 2, 150000, '', '2018-03-11 23:31:06', NULL, NULL),
(4, 5, 3, 20000, '', '2018-03-11 23:31:06', NULL, NULL),
(5, 5, 4, 5500000, '', '2018-03-11 23:31:06', NULL, NULL),
(6, 5, 5, 95000, '', '2018-03-11 23:31:06', NULL, NULL),
(7, 6, 1, 1180000, '', '2018-03-11 23:45:54', NULL, NULL),
(8, 6, 2, 150000, '', '2018-03-11 23:45:54', NULL, NULL),
(9, 6, 3, 20000, '', '2018-03-11 23:45:54', NULL, NULL),
(10, 6, 4, 5500000, '', '2018-03-11 23:45:54', NULL, NULL),
(11, 6, 5, 95000, '', '2018-03-11 23:45:54', NULL, NULL),
(12, 7, 1, 10000, '', '2018-03-11 23:51:52', NULL, NULL),
(13, 7, 0, 0, '', '2018-03-11 23:51:52', NULL, NULL),
(14, 7, 0, 0, '', '2018-03-11 23:51:52', NULL, NULL),
(15, 7, 4, 10000, '', '2018-03-11 23:51:52', NULL, NULL),
(16, 7, 5, 3175000, '', '2018-03-11 23:51:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `page` varchar(100) NOT NULL,
  `paragraph` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(100) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback_policy`
--

CREATE TABLE `feedback_policy` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `title` varchar(50) NOT NULL,
  `page` varchar(50) NOT NULL,
  `paragraph` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `feedback_policy`
--

INSERT INTO `feedback_policy` (`id_data`, `name`, `email`, `phone`, `title`, `page`, `paragraph`, `message`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'asdasd', 'sdafsdf@easd.mo', 'sdfds', 'sdf', 'dfg', 'dfgfdg', 'fdgdfg', 'guest', '2018-04-04 15:12:00', NULL, NULL),
(2, 'asdas', 'dfdf@wa.ca', 'asd', 'df', 'dsf', 'sdf', 'sdfsdf', 'guest', '2018-04-04 15:43:08', NULL, NULL),
(3, 'asdas', 'dfdf@wa.ca', 'asd', 'df', 'dsf', 'sdf', 'sdfsdf<br />\r\n<br />\r\naksmdknaks<br />\r\nasd', 'guest', '2018-04-04 15:43:15', NULL, NULL),
(4, 'asdasd', 'asd@ha.cm', 'asdasd', 'asd', 'sdfsd', '322', 'sdfksdfm', 'guest', '2018-04-04 15:48:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_carousel`
--

CREATE TABLE `home_carousel` (
  `id_data` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `home_carousel`
--

INSERT INTO `home_carousel` (`id_data`, `title`, `description`, `picture`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, '', '', '1_120180308043756pm.jpg', '', '2018-03-08 22:37:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_donate`
--

CREATE TABLE `home_donate` (
  `id_data` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(100) NOT NULL,
  `link` text,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `home_donate`
--

INSERT INTO `home_donate` (`id_data`, `title`, `description`, `picture`, `link`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'Donate money', 'Woodwork painting elictrical plumbing and more. My services', '4_120180308041259pm.jpg', 'page/donate/donate_money.html', '', '2018-03-08 22:12:47', '', '2018-03-09 11:09:48'),
(2, 'Donate medical', 'Woodwork painting elictrical plumbing and more. My services might be varied but they all come.', '3_120180308041215pm.jpg', 'page/donate/donate_medical.html', '', '2018-03-08 22:12:15', '', '2018-03-09 11:09:41'),
(3, 'Donate foods', 'Woodwork painting elictrical plumbing and more. My services might be varied but they all come with with the some promise of quality dedication and durability.', '2_120180308041038pm.jpg', 'page/donate/donate_food.html', '', '2018-03-08 22:10:38', '', '2018-03-09 11:09:33'),
(4, 'Donate equipment', 'Woodwork painting elictrical plumbing and more. My services might be varied but they all come with with the some promise', '1_120180308040743pm.jpg', 'page/donate/donate_equipment.html', '', '2018-03-08 22:07:43', '', '2018-03-09 11:09:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_donate_head`
--

CREATE TABLE `home_donate_head` (
  `id_data` int(11) NOT NULL,
  `subtitle` varchar(50) DEFAULT NULL,
  `description` text,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `home_donate_head`
--

INSERT INTO `home_donate_head` (`id_data`, `subtitle`, `description`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(0, 'There a lots of ways to make good things happen', 'Woodwork painting elictrical plumbing and more. My services might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my service along with free estimates.', '', '2018-03-08 22:31:33', '', '2018-03-08 22:41:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mailing_list`
--

CREATE TABLE `mailing_list` (
  `id_data` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mailing_list`
--

INSERT INTO `mailing_list` (`id_data`, `email`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'mereceiver7logia@gmail.com', 'guest', '2018-03-12 01:17:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `money_category`
--

CREATE TABLE `money_category` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `target` int(11) NOT NULL,
  `income` int(11) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `money_category`
--

INSERT INTO `money_category` (`id_data`, `name`, `description`, `target`, `income`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'Gaji', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my service along with free estimates. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my service along with free estimates.', 150000, 100000, '', '2018-03-10 11:18:15', '', '2018-03-10 11:24:53'),
(2, 'Sewa & Utilitas', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my service along with free estimates. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my service along with free estimates.', 100000, 100000, '', '2018-03-10 11:19:04', '', '2018-03-10 11:25:04'),
(3, 'Transportasi', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my service along with free estimates. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my service along with free estimates.', 100000, 80000, '', '2018-03-10 11:19:44', '', '2018-03-10 11:25:13'),
(4, 'Konsumsi', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my service along with free estimates. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my service along with free estimates.', 120000, 20000, '', '2018-03-10 11:20:08', '', '2018-03-10 11:25:20'),
(5, 'Perawatan & Perbaikan', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my service along with free estimates. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my service along with free estimates.', 400000, 400000, '', '2018-03-10 11:21:23', '', '2018-03-10 11:25:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `message` text NOT NULL,
  `acc_owner` varchar(50) NOT NULL,
  `acc_bank` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `acc_number` varchar(50) NOT NULL,
  `acc_reff` varchar(50) NOT NULL,
  `agreement_check` char(1) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_detail`
--

CREATE TABLE `order_detail` (
  `id_data` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `partner`
--

CREATE TABLE `partner` (
  `id_data` int(11) NOT NULL,
  `description` text NOT NULL,
  `partner` text NOT NULL,
  `partner_media` text NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `partner`
--

INSERT INTO `partner` (`id_data`, `description`, `partner`, `partner_media`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'Woodwork painting elictrical plumbing and more. My services might be varied but they all come with with the some promise', '1_120180319065157pm.png', '1_220180319065157pm.png', '', '2018-03-20 00:00:00', '', '2018-03-20 00:51:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id_data` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `detail` text NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(10) NOT NULL COMMENT 'donate, shop',
  `category_id` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `change_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category`
--

CREATE TABLE `product_category` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type_id` int(11) NOT NULL COMMENT '1:equipment, 2:foods, 3:medical',
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_category`
--

INSERT INTO `product_category` (`id_data`, `name`, `type_id`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'KANDANG', 1, '', '2018-03-09 10:35:43', NULL, NULL),
(2, 'TALI', 1, '', '2018-03-09 10:36:47', NULL, NULL),
(3, 'TEMPAT MAKAN & MINUM', 1, '', '2018-03-09 10:37:04', NULL, NULL),
(4, 'PERAWATAN', 1, '', '2018-03-09 10:37:16', NULL, NULL),
(5, 'LAINNYA', 1, '', '2018-03-09 10:37:29', NULL, NULL),
(6, 'ALAMI', 2, '', '2018-03-09 15:24:16', '', '2018-03-09 15:24:23'),
(7, 'VAKSIN', 3, '', '2018-03-09 15:32:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_equipment`
--

CREATE TABLE `product_equipment` (
  `id_data` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `shipment` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_equipment`
--

INSERT INTO `product_equipment` (`id_data`, `category_id`, `type`, `size`, `detail`, `shipment`, `picture`, `price`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 1, 'Cage', 'pxl', 'need 3 items you can buy at <b>bla bla</b> store', 'Go', '1_120180309044651am.jpeg', 1500000, '', '2018-03-09 10:46:14', '', '2018-06-11 04:43:46'),
(2, 1, 'Pet Cargo', 'pxl', 'need 1 items you can buy at any store', 'Go', '2_120180309044856am.jpg', 1000000, '', '2018-03-09 10:48:38', '', '2018-03-09 13:43:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_foods`
--

CREATE TABLE `product_foods` (
  `id_data` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `shipment` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_foods`
--

INSERT INTO `product_foods` (`id_data`, `category_id`, `type`, `size`, `detail`, `shipment`, `picture`, `price`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(2, 6, 'ikan', 'pxl', 'need 100g and you can buy it at anystore', 'Go', '2_120180309092630am.jpg', 10000, '', '2018-03-09 15:26:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_medical`
--

CREATE TABLE `product_medical` (
  `id_data` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `shipment` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_medical`
--

INSERT INTO `product_medical` (`id_data`, `category_id`, `type`, `size`, `detail`, `shipment`, `picture`, `price`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(2, 7, 'Anti Rabies', '100g', '2 pc, contact us for more info', 'Go', '2_120180309093327am.jpg', 30000000, '', '2018-03-09 15:33:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_shipment`
--

CREATE TABLE `product_shipment` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_annual`
--

CREATE TABLE `report_annual` (
  `id_data` int(11) NOT NULL,
  `text_1` text NOT NULL,
  `text_2` text NOT NULL,
  `text_3` text NOT NULL,
  `text_4` text NOT NULL,
  `caption` text NOT NULL,
  `picture_1` text NOT NULL,
  `picture_2` text NOT NULL,
  `picture_3` text NOT NULL,
  `attachment` text NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report_annual`
--

INSERT INTO `report_annual` (`id_data`, `text_1`, `text_2`, `text_3`, `text_4`, `caption`, `picture_1`, `picture_2`, `picture_3`, `attachment`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee<br />\r\n<br />\r\nWoodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee<br />\r\n<br />\r\nWoodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee<br />\r\n<br />\r\nWoodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee<br />\r\n<br />\r\nWoodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee<br />\r\n<br />\r\nWoodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my services along with free estimates.', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise', '1_120180410092435am.jpg', '1_220180410094855am.jpg', '1_120180410092509am.jpg', 'report_annual.xlsx', 'Initial', '2018-04-10 00:00:00', '', '2018-04-10 14:48:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_annual_trend`
--

CREATE TABLE `report_annual_trend` (
  `id_data` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picture` text NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report_annual_trend`
--

INSERT INTO `report_annual_trend` (`id_data`, `title`, `picture`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'TREN DONASI', '1_120180410125733pm.jpg', 'Initial', '2018-04-04 00:00:00', '', '2018-04-10 17:57:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_balance_sheets`
--

CREATE TABLE `report_balance_sheets` (
  `id_data` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `aset_lancar` varchar(100) NOT NULL,
  `aset_tidak_lancar` varchar(100) NOT NULL,
  `total_aset` varchar(100) NOT NULL,
  `liabilitas_lancar` varchar(100) NOT NULL,
  `liabilitas_tidak_lancar` varchar(100) NOT NULL,
  `total_liabilitas` varchar(100) NOT NULL,
  `modal_saham` varchar(100) NOT NULL,
  `laba_ditahan` varchar(100) NOT NULL,
  `total_ekuitas` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report_balance_sheets`
--

INSERT INTO `report_balance_sheets` (`id_data`, `title`, `aset_lancar`, `aset_tidak_lancar`, `total_aset`, `liabilitas_lancar`, `liabilitas_tidak_lancar`, `total_liabilitas`, `modal_saham`, `laba_ditahan`, `total_ekuitas`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'IKHTISAR LAPORAN NERACA PER 30 MARET 2018', 'Rp. 100.000.000', 'Rp. 50.000.000', 'Rp. 150.000.000', 'Rp. 25.000.000', 'Rp. 25.000.000', 'Rp. 50.000.000', 'Rp. 50.000.000', 'Rp. 50.000.000', 'Rp. 100.000.000', 'Initial', '2018-04-15 00:00:00', '', '2018-04-22 22:33:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_cash_flow`
--

CREATE TABLE `report_cash_flow` (
  `id_data` int(11) NOT NULL,
  `title_cash_flow` varchar(100) NOT NULL,
  `title_trend` varchar(100) NOT NULL,
  `picture` text NOT NULL,
  `caption_1` varchar(100) NOT NULL,
  `caption_2` varchar(100) NOT NULL,
  `caption_3` varchar(100) NOT NULL,
  `value_1` varchar(100) NOT NULL,
  `value_2` varchar(100) NOT NULL,
  `value_3` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report_cash_flow`
--

INSERT INTO `report_cash_flow` (`id_data`, `title_cash_flow`, `title_trend`, `picture`, `caption_1`, `caption_2`, `caption_3`, `value_1`, `value_2`, `value_3`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'IKHTISAR ARUS KAS UNTUK PERIODE 1 JANUARI - 30 MARET 2018', 'ARUS KAS PER BULAN', '1_120180414071851pm.jpg', 'ARUS KAS MASUK - YTD', ' ARUS KAS KELUAR - YTD', ' SALDO AKHIR', 'Rp. 150.000.000', 'Rp. 50.000.000', 'Rp. 100.000.000', 'Initial', '2018-04-14 00:00:00', '', '2018-04-15 00:18:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_checking_account`
--

CREATE TABLE `report_checking_account` (
  `id_data` int(11) NOT NULL,
  `year` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `attachment` text NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report_checking_account`
--

INSERT INTO `report_checking_account` (`id_data`, `year`, `caption`, `attachment`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(2, '2018', 'Januari', 'file_2.sql', '', '2018-04-04 22:41:08', '', '2018-04-04 22:45:42'),
(3, '2018', 'Februari', 'file_3.sql', '', '2018-04-04 22:41:38', '', '2018-04-04 22:45:32'),
(4, '2018', 'Maret', '', '', '2018-04-04 22:45:54', NULL, NULL),
(5, '2018', 'April', '', '', '2018-04-04 22:47:03', NULL, NULL),
(6, '2018', 'Mei', 'file_6.sql', '', '2018-04-04 22:47:48', '', '2018-04-04 22:48:18'),
(7, '2018', 'Juni', 'file_7.pdf', '', '2018-04-04 22:51:27', NULL, NULL),
(8, '2017', 'Rekening Koran Tahun 2017', 'file_8.sql', '', '2018-04-04 22:53:06', NULL, NULL),
(9, '2016', 'Rekening Koran Tahun 2016', 'file_9.sql', '', '2018-04-04 22:53:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_description`
--

CREATE TABLE `report_description` (
  `id_data` int(11) NOT NULL,
  `rekening_koran` text NOT NULL,
  `laba_rugi` text NOT NULL,
  `arus_kas` text NOT NULL,
  `neraca` text NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report_description`
--

INSERT INTO `report_description` (`id_data`, `rekening_koran`, `laba_rugi`, `arus_kas`, `neraca`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee<br />\r\n<br />\r\nWoodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee<br />\r\n<br />\r\nWoodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee<br />\r\n<br />\r\nWoodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', 'Initial', '2018-04-04 00:00:00', '', '2018-04-22 22:34:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_donation_equipments`
--

CREATE TABLE `report_donation_equipments` (
  `id_data` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `caption_1` varchar(100) NOT NULL,
  `caption_2` varchar(100) NOT NULL,
  `caption_3` varchar(100) NOT NULL,
  `value_1` varchar(100) NOT NULL,
  `value_2` varchar(100) NOT NULL,
  `value_3` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report_donation_equipments`
--

INSERT INTO `report_donation_equipments` (`id_data`, `title`, `caption_1`, `caption_2`, `caption_3`, `value_1`, `value_2`, `value_3`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'IKHTISAR PENERIMAAN KANDANG PER 30 MARET 2018', 'TARGET DONASI', 'PENDAPATAN DONASI', 'SELISIH', '23 Unit', '13 Unit', '10 Unit', '', '2018-04-04 21:54:53', '', '2018-04-04 21:55:11'),
(3, 'IKHTISAR PENERIMAAN TALI PER 30 MARET 2018', 'TARGET DONASI', 'PENDAPATAN DONASI', 'SELISIH', '23 Unit', '13 Unit', '10 Unit', '', '2018-04-04 21:56:02', NULL, NULL),
(4, 'IKHTISAR PENERIMAAN TEMPAT MAKAN/MINUM PER 30 MARET 2018', 'TARGET DONASI', 'PENDAPATAN DONASI', 'SELISIH', '23 Unit', '13 Unit', '10 Unit', '', '2018-04-04 21:56:02', NULL, NULL),
(5, 'IKHTISAR PENERIMAAN PERAWATAN PER 30 MARET 2018', 'TARGET DONASI', 'PENDAPATAN DONASI', 'SELISIH', '23 Unit', '13 Unit', '10 Unit', '', '2018-04-04 21:56:02', NULL, NULL),
(6, 'IKHTISAR PENERIMAAN LAINNYA PER 30 MARET 2018', 'TARGET DONASI', 'PENDAPATAN DONASI', 'SELISIH', '23 Unit', '13 Unit', '10 Unit', '', '2018-04-04 21:56:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_donation_overview`
--

CREATE TABLE `report_donation_overview` (
  `id_data` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `caption_1` varchar(100) NOT NULL,
  `caption_2` varchar(100) NOT NULL,
  `caption_3` varchar(100) NOT NULL,
  `value_1` varchar(100) NOT NULL,
  `value_2` varchar(100) NOT NULL,
  `value_3` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report_donation_overview`
--

INSERT INTO `report_donation_overview` (`id_data`, `title`, `caption_1`, `caption_2`, `caption_3`, `value_1`, `value_2`, `value_3`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(3, 'IKHTISAR TARGET DONASI PER 30 MARET 2018', 'TARGET DONASI', 'PENDAPATAN DONASI', 'SELISIH', 'Rp. 150.000.000', 'Rp. 50.000.000', 'Rp. 100.000.000', '', '2018-04-04 21:46:32', NULL, NULL),
(4, 'IKHTISAR ARUS KAS PER 30 MARET 2018', 'ARUS KAS MASUK - YTD', 'ARUS KAS KELUAR - YTD', 'SALDO AKHIR', 'Rp. 150.000.000', 'Rp. 50.000.000', 'Rp. 100.000.000', '', '2018-04-04 21:48:00', NULL, NULL),
(5, 'IKHTISAR BEBAN OPERASIONAL SAMPAI DENGAN TANGGAL 30 MARET 2018', 'PENDAPATAN DONASI', 'BEBAN OPERASIONAL', 'SELISIH', 'Rp. 150.000.000', 'Rp. 50.000.000', 'Rp. 100.000.000', '', '2018-04-04 21:48:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_donation_trend`
--

CREATE TABLE `report_donation_trend` (
  `id_data` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picture` text NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report_donation_trend`
--

INSERT INTO `report_donation_trend` (`id_data`, `title`, `picture`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'TREN DONASI', '1_120180404120847pm.png', 'Initial', '2018-04-04 00:00:00', '', '2018-04-04 22:02:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_policies`
--

CREATE TABLE `report_policies` (
  `id_data` int(11) NOT NULL,
  `description` text NOT NULL,
  `caption` text NOT NULL,
  `picture` text NOT NULL,
  `footer` text NOT NULL,
  `attachment` text NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report_policies`
--

INSERT INTO `report_policies` (`id_data`, `description`, `caption`, `picture`, `footer`, `attachment`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee<br />\r\n<br />\r\nMy service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee<br />\r\n<br />\r\nWoodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee<br />\r\n<br />\r\nMy service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise', '1_120180404091022am.png', 'Woodwork painting elictrical plumbing and more. My service might be varied but they all come with with the some promise of quality dedication and durability. Licensed and insured I\'m experienced contractor with knowledge passed down from generations. I can offer a I-year guarantee for all my services along with free estimates.<br />\r\n<br />\r\nadaw', 'file_1.sql', 'Initial', '2018-04-04 00:00:00', '', '2018-04-04 14:34:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_profit_and_loss`
--

CREATE TABLE `report_profit_and_loss` (
  `id_data` int(11) NOT NULL,
  `title_1` varchar(100) NOT NULL,
  `title_2` varchar(100) NOT NULL,
  `title_3` varchar(100) NOT NULL,
  `title_4` varchar(100) NOT NULL,
  `title_5` varchar(100) NOT NULL,
  `title_6` varchar(100) NOT NULL,
  `title_7` varchar(100) NOT NULL,
  `caption_1` varchar(100) NOT NULL,
  `caption_2` varchar(100) NOT NULL,
  `caption_3` varchar(100) NOT NULL,
  `caption_4` varchar(100) NOT NULL,
  `caption_5` varchar(100) NOT NULL,
  `caption_6` varchar(100) NOT NULL,
  `value_1` varchar(100) NOT NULL,
  `value_2` varchar(100) NOT NULL,
  `value_3` varchar(100) NOT NULL,
  `value_4` varchar(100) NOT NULL,
  `value_5` varchar(100) NOT NULL,
  `value_6` varchar(100) NOT NULL,
  `picture_1` text NOT NULL,
  `picture_2` text NOT NULL,
  `picture_3` text NOT NULL,
  `picture_4` text NOT NULL,
  `picture_5` text NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report_profit_and_loss`
--

INSERT INTO `report_profit_and_loss` (`id_data`, `title_1`, `title_2`, `title_3`, `title_4`, `title_5`, `title_6`, `title_7`, `caption_1`, `caption_2`, `caption_3`, `caption_4`, `caption_5`, `caption_6`, `value_1`, `value_2`, `value_3`, `value_4`, `value_5`, `value_6`, `picture_1`, `picture_2`, `picture_3`, `picture_4`, `picture_5`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'IKHTISAR LAPORAN LABA RUGI UNTUK PERIODE 1 JANUARI - 30 MARET 2018', 'PENJUALAN PER PRODUK', 'JENIS DONASI', 'TOTAL PENJUALAN', 'TOTAL DONASI', 'IKHTISAR PENDAPATAN UNTUK PERIODE 1 JANUARI - 30 MARET 2018', 'IKIKHTISAR BEBAN OPERASIONAL UNTUK PERIODE 1 JANUARI - 30 MARET 2018', 'TARGET DONASI', 'PENDAPATAN DONASI', 'SELISIH', 'ANGGARAN', 'AKTUAL', 'SELISIH', 'Rp. 150.000.000', 'Rp. 50.000.000', 'Rp. 100.000.000', 'Rp. 150.000.000', 'Rp. 50.000.000', 'Rp. 1o0.000.000', '1_120180410115757am.jpg', '1_220180410120158pm.jpg', '1_320180410120158pm.jpg', '1_420180410120158pm.jpg', '1_520180410120158pm.jpg', 'Initial', '2018-04-10 00:00:00', '', '2018-04-10 17:04:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system`
--

CREATE TABLE `system` (
  `id_data` int(11) NOT NULL,
  `logo` text NOT NULL,
  `item_viewer` text NOT NULL,
  `food_viewer` text NOT NULL,
  `medical_viewer` text NOT NULL,
  `item_policies` text NOT NULL,
  `money_policies` text NOT NULL,
  `acc_owner` varchar(100) NOT NULL,
  `acc_number` varchar(50) NOT NULL,
  `acc_bank` varchar(100) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `system`
--

INSERT INTO `system` (`id_data`, `logo`, `item_viewer`, `food_viewer`, `medical_viewer`, `item_policies`, `money_policies`, `acc_owner`, `acc_number`, `acc_bank`, `instagram`, `twitter`, `facebook`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'logo.png', 'item_viewer.gif', 'food_viewer.gif', 'medical_viewer.gif', 'item_policies.pdf', 'money_policies.pdf', 'PT ANGIN RIBUT', '102 990 1291', 'BCA', '#ins', '#twit', '#face', 'INITIAL', '2018-03-12 00:00:00', '', '2018-06-11 04:25:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `talk_to_us`
--

CREATE TABLE `talk_to_us` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `confirmation` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(100) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_data`, `name`, `username`, `password`, `type`, `departmentId`, `picture`, `confirmation`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(0, 'Administrator', 'admin@ayomindonesia.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1, 'users_1.gif', 'belum', 'SESSION_TEST', '2017-10-23 19:57:19', 'SESSION_TEST', '2017-10-23 20:10:30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about_contact`
--
ALTER TABLE `about_contact`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `about_founder`
--
ALTER TABLE `about_founder`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `about_story`
--
ALTER TABLE `about_story`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `donation_detail`
--
ALTER TABLE `donation_detail`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `donation_money_detail`
--
ALTER TABLE `donation_money_detail`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `feedback_policy`
--
ALTER TABLE `feedback_policy`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `home_carousel`
--
ALTER TABLE `home_carousel`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `home_donate`
--
ALTER TABLE `home_donate`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `home_donate_head`
--
ALTER TABLE `home_donate_head`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `mailing_list`
--
ALTER TABLE `mailing_list`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `money_category`
--
ALTER TABLE `money_category`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `product_equipment`
--
ALTER TABLE `product_equipment`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `product_foods`
--
ALTER TABLE `product_foods`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `product_medical`
--
ALTER TABLE `product_medical`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `product_shipment`
--
ALTER TABLE `product_shipment`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `report_annual`
--
ALTER TABLE `report_annual`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `report_annual_trend`
--
ALTER TABLE `report_annual_trend`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `report_balance_sheets`
--
ALTER TABLE `report_balance_sheets`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `report_cash_flow`
--
ALTER TABLE `report_cash_flow`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `report_checking_account`
--
ALTER TABLE `report_checking_account`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `report_description`
--
ALTER TABLE `report_description`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `report_donation_equipments`
--
ALTER TABLE `report_donation_equipments`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `report_donation_overview`
--
ALTER TABLE `report_donation_overview`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `report_donation_trend`
--
ALTER TABLE `report_donation_trend`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `report_policies`
--
ALTER TABLE `report_policies`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `report_profit_and_loss`
--
ALTER TABLE `report_profit_and_loss`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `talk_to_us`
--
ALTER TABLE `talk_to_us`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_data`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about_contact`
--
ALTER TABLE `about_contact`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `about_founder`
--
ALTER TABLE `about_founder`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `about_story`
--
ALTER TABLE `about_story`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `blog`
--
ALTER TABLE `blog`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `departments`
--
ALTER TABLE `departments`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `donation`
--
ALTER TABLE `donation`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `donation_detail`
--
ALTER TABLE `donation_detail`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `donation_money_detail`
--
ALTER TABLE `donation_money_detail`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `feedback_policy`
--
ALTER TABLE `feedback_policy`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `home_carousel`
--
ALTER TABLE `home_carousel`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `home_donate`
--
ALTER TABLE `home_donate`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `home_donate_head`
--
ALTER TABLE `home_donate_head`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mailing_list`
--
ALTER TABLE `mailing_list`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `money_category`
--
ALTER TABLE `money_category`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `partner`
--
ALTER TABLE `partner`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `product_equipment`
--
ALTER TABLE `product_equipment`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `product_foods`
--
ALTER TABLE `product_foods`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `product_medical`
--
ALTER TABLE `product_medical`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `product_shipment`
--
ALTER TABLE `product_shipment`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `report_annual`
--
ALTER TABLE `report_annual`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `report_annual_trend`
--
ALTER TABLE `report_annual_trend`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `report_balance_sheets`
--
ALTER TABLE `report_balance_sheets`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `report_cash_flow`
--
ALTER TABLE `report_cash_flow`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `report_checking_account`
--
ALTER TABLE `report_checking_account`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `report_description`
--
ALTER TABLE `report_description`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `report_donation_equipments`
--
ALTER TABLE `report_donation_equipments`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `report_donation_overview`
--
ALTER TABLE `report_donation_overview`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `report_donation_trend`
--
ALTER TABLE `report_donation_trend`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `report_policies`
--
ALTER TABLE `report_policies`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `report_profit_and_loss`
--
ALTER TABLE `report_profit_and_loss`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `system`
--
ALTER TABLE `system`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `talk_to_us`
--
ALTER TABLE `talk_to_us`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
