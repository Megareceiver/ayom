-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 11 Feb 2018 pada 13.08
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id_data` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL COMMENT 'donate, shop',
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `change_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Struktur dari tabel `donate`
--

CREATE TABLE `donate` (
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
-- Struktur dari tabel `donate_detail`
--

CREATE TABLE `donate_detail` (
  `id_data` int(11) NOT NULL,
  `donate_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_link`
--

CREATE TABLE `home_link` (
  `id_data` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_slider`
--

CREATE TABLE `home_slider` (
  `id_data` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `change_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id_data` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `detail` text NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(10) NOT NULL COMMENT 'donate, shop',
  `type_id` int(11) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `change_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Struktur dari tabel `product_size`
--

CREATE TABLE `product_size` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(20) DEFAULT NULL,
  `changed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_type`
--

CREATE TABLE `product_type` (
  `id_data` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
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
-- Indeks untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `donate_detail`
--
ALTER TABLE `donate_detail`
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
-- Indeks untuk tabel `home_link`
--
ALTER TABLE `home_link`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `home_slider`
--
ALTER TABLE `home_slider`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `mailing_list`
--
ALTER TABLE `mailing_list`
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
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `product_shipment`
--
ALTER TABLE `product_shipment`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `product_type`
--
ALTER TABLE `product_type`
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
-- AUTO_INCREMENT untuk tabel `blog`
--
ALTER TABLE `blog`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `departments`
--
ALTER TABLE `departments`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `donate`
--
ALTER TABLE `donate`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `donate_detail`
--
ALTER TABLE `donate_detail`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `feedback_policy`
--
ALTER TABLE `feedback_policy`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `home_link`
--
ALTER TABLE `home_link`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `home_slider`
--
ALTER TABLE `home_slider`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mailing_list`
--
ALTER TABLE `mailing_list`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_shipment`
--
ALTER TABLE `product_shipment`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
