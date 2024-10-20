-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2024 at 07:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xxx`
--

-- --------------------------------------------------------

--
-- Table structure for table `addip`
--

CREATE TABLE `addip` (
  `id` int(11) NOT NULL,
  `uip` varchar(250) NOT NULL,
  `refferer` varchar(250) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user` varchar(250) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `password`) VALUES
('admin', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `cimg`
--

CREATE TABLE `cimg` (
  `id` int(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  `myurl` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cimg`
--

INSERT INTO `cimg` (`id`, `img`, `myurl`) VALUES
(34, '1363767379.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`) VALUES
(11, '001.webp'),
(12, '002.webp');

-- --------------------------------------------------------

--
-- Table structure for table `imges`
--

CREATE TABLE `imges` (
  `id` int(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  `myurl` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `imges`
--

INSERT INTO `imges` (`id`, `img`, `myurl`) VALUES
(78, '1322739148.jpg', ''),
(79, '518170126.jpg', ''),
(80, '2074775240.jpg', ''),
(81, '170852059.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `ipa`
--

CREATE TABLE `ipa` (
  `id` int(11) NOT NULL,
  `uipa` varchar(250) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `referer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ipa`
--

INSERT INTO `ipa` (`id`, `uipa`, `time`, `referer`) VALUES
(65, '::1', '2024-09-21 04:20:00', 'http://localhost/fb/facebook/admin/index.php'),
(66, '::1', '2024-09-21 04:21:54', ''),
(67, '::1', '2024-09-21 04:21:55', 'http://localhost/fb/facebook/'),
(68, '::1', '2024-09-21 05:04:21', 'http://localhost/fb/');

-- --------------------------------------------------------

--
-- Table structure for table `ipb`
--

CREATE TABLE `ipb` (
  `id` int(11) NOT NULL,
  `uipb` varchar(250) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(11) NOT NULL,
  `imglg` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modal`
--

CREATE TABLE `modal` (
  `id` int(11) NOT NULL,
  `home` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfb`
--

CREATE TABLE `pfb` (
  `id` int(11) NOT NULL,
  `pfb_a` varchar(1000) NOT NULL,
  `pfb_b` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfb_b`
--

CREATE TABLE `pfb_b` (
  `id` int(11) NOT NULL,
  `pixel` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(200) NOT NULL,
  `heads` varchar(1000) NOT NULL,
  `p` varchar(5000) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `img`, `heads`, `p`, `time`) VALUES
(1, 'title', 'img	', 'heads', 'ppppp', '2024-02-21 09:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `sweet`
--

CREATE TABLE `sweet` (
  `id` int(11) NOT NULL,
  `sw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_a` varchar(250) NOT NULL,
  `name_b` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `name_a`, `name_b`) VALUES
(2, 'name', 'name_a', 'name_b');

-- --------------------------------------------------------

--
-- Table structure for table `weburl`
--

CREATE TABLE `weburl` (
  `id` int(11) NOT NULL,
  `weburls` varchar(250) NOT NULL,
  `urllines` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `weburl`
--

INSERT INTO `weburl` (`id`, `weburls`, `urllines`) VALUES
(46, 'https://ta.promoleo88.org/', 'https://member.usun123.com/register');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addip`
--
ALTER TABLE `addip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cimg`
--
ALTER TABLE `cimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imges`
--
ALTER TABLE `imges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipa`
--
ALTER TABLE `ipa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipb`
--
ALTER TABLE `ipb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modal`
--
ALTER TABLE `modal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfb`
--
ALTER TABLE `pfb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfb_b`
--
ALTER TABLE `pfb_b`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weburl`
--
ALTER TABLE `weburl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addip`
--
ALTER TABLE `addip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cimg`
--
ALTER TABLE `cimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `imges`
--
ALTER TABLE `imges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `ipa`
--
ALTER TABLE `ipa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `ipb`
--
ALTER TABLE `ipb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `modal`
--
ALTER TABLE `modal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `pfb`
--
ALTER TABLE `pfb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pfb_b`
--
ALTER TABLE `pfb_b`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `weburl`
--
ALTER TABLE `weburl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
