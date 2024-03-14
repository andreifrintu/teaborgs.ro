-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 14, 2024 at 08:38 AM
-- Server version: 5.7.44
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teaborgs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `id` int(11) NOT NULL,
  `nume` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `url` text COLLATE utf8mb4_bin NOT NULL,
  `poza` text COLLATE utf8mb4_bin NOT NULL,
  `coord` text COLLATE utf8mb4_bin NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`id`, `nume`, `url`, `poza`, `coord`, `data`) VALUES
(1, 'Tea Borgs #19121 | RO087', 'https://teaborgs.ro/map/', 'https://teaborgs.ro/static/logo/logo-v2-2024.png', '23.273869950499023, 45.0373408489883', '2024-02-09 17:03:39'),
(2, 'InfinityBolts #19093 RO056', 'https://www.instagram.com/infinity.bolts/', '/static/map-photos/920217252a107165f660729ce30f18a9f1074c8e.png', '21.32905709,46.18271643', '2024-02-13 21:01:19'),
(3, 'Clockworks #19075 | RO108', 'https://clockworks.ro/ro/', '/static/map-photos/3f18440b57c5e6d303bcf77563ad9c923334c46d.png', '26.103710,44.414237', '2024-02-13 21:00:47'),
(4, 'AlphaBit ', 'https://www.alphabit.ro/', '/static/map-photos/e813f6b4283263c317fc4bb5eeb6ccbbb089385c.png', '23.3731288,45.4161434', '2024-02-15 18:10:49'),
(14, 'Dark Energy #19106 | RO115', 'https://www.instagram.com/darkenergy.ro115?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==', '/static/map-photos/769ee62dd5304716a8971ee9860585533a70dafe.png', '22.9008209, 45.8831246', '2024-02-15 19:00:43'),
(15, 'WATT`s UP 16166 | RP023', 'https://www.wattsup.ro/', '/static/map-photos/6b344cff09a63a90129888e5f7d75471c5f27c95.png', '25.04081385767053, 45.26439676755202', '2024-02-19 11:35:42'),
(16, 'RobotX HUNEDOARA ', 'https://robotxhd.com/', '/static/map-photos/dc5fe46cb8fe178a66577262649e04c4ea395732.png', '22.903923, 45.751207', '2024-02-23 07:52:15'),
(6, 'RavenTech HD #19047 | RO121', 'https://www.instagram.com/raventech_hd?igsh=NmJ1amtiN3UzMzRk', '/static/map-photos/4ccb5d811b16d704a1815c213bd13eedb07ece11.png', '22.9096903,45.7502867', '2024-02-15 18:18:54'),
(5, 'Wafy #20985/ RO_063', 'https://www.instagram.com/echipa_wafy?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==', '/static/map-photos/a9936f255f4ce0e4b4d486be0dc93c16ae987525.png', '23.40345712223176,45.45133062862227', '2024-02-15 18:18:51'),
(18, 'Harambe Cartel 20912', 'https://www.instagram.com/harambecartel/', '/static/map-photos/9b08ebc5b2f0533dd3e7fb4cc278cee16544b758.png', '21.319642910441914, 46.17094275001669', '2024-02-23 07:51:03'),
(19, 'Bots Brain #19081 / RO110', 'https://www.instagram.com/bots.brain/', '/static/map-photos/2f1f61da7f124218e3b7ca7bb5c693e3c475fbef.png', '22.938561, 43.9903548', '2024-02-23 08:02:36'),
(20, 'Rasky #19109 / RO#122', 'https://www.instagram.com/raskyrobotics/', '/static/map-photos/66539cf405133f5ef6bbb1fab77adddf710c08a6.png', '23.7903267, 44.319957', '2024-02-23 08:08:05'),
(21, 'DecebalTech', 'https://cnd.ro/cndrobotics/', '/static/map-photos/fe9f4db933cf8cd0ab397cd59adedfbe65015181.png', '22.8980043, 45.8702435', '2024-02-23 09:28:49'),
(23, 'ROBO TEAM ALPHA 23015', 'https://m.facebook.com/p/Robot-Team-Alpha-100063791360636/', '/static/map-photos/7761a5eb7a8a2833ba14ead8784732f81fd571b0.png', '21.31676218251035, 46.164871708164775', '2024-02-23 08:43:27'),
(41, 'RoboKey #20963 | RO161', 'https://infopetrosani.ro/', '/static/map-photos/8c5c3bf27d7eaf8196055cb3116111c1d82c19cd.png', '23.371973,45.407029', '2024-03-14 06:21:51'),
(32, 'Soft Hoarders | #12560', 'https://www.soft-hoarders.com/', '/static/map-photos/6eaf5a0acd4acfe28eb5a5ec36ebd0b039a964f5.png', '23.794046671872255, 44.31355949839238', '2024-02-23 09:47:00'),
(25, 'Atlas CNB- 20732', 'https://linktr.ee/atlas_cnb', '/static/map-photos/b4745d4e332711ae26a7976c8eb2a7457a5fbd69.png', '21.212813612690578, 45.74395634088676', '2024-02-23 08:48:35'),
(36, 'Team CSH 17861', 'https://www.instagram.com/team_csh/', '/static/map-photos/6ec14aedf55e6ce2f3d440548aae85c467f5436e.png', '21.2255659, 45.7480314', '2024-02-24 07:09:04'),
(43, 'WizzTech #19094', 'https://www.instagram.com/wizztech.tm/?hl=en', '/static/map-photos/38b7b452de01fd0b008d910765d7b53320cca601.png', '21.1449, 45.7414075', '2024-02-24 08:02:20'),
(29, 'RoboDojo #23205', 'https://robodojo.ro/', '/static/map-photos/28757a5bec23bfd1c917a9bfd94dfa5b10416bb4.png', '21.235642686184935, 45.755767200120225', '2024-02-23 09:17:56'),
(30, 'Robosmart #19110', 'https://www.facebook.com/robosmartcnim/', '/static/map-photos/07c9f1d953ca15db29a5bbbc65afa0c6ff56b950.png', '24.3632266247265, 44.42454315582546', '2024-02-23 09:20:53'),
(39, 'UNplugged 19257', 'https://unplugged.lenau.ro/', '/static/map-photos/b55584e4249584854372907f17625fb5b9375d60.png', '21.2242524, 45.7578959', '2024-02-24 07:30:11'),
(46, 'Brute Force Robotics 22941/RO166', 'https://www.instagram.com/bruteforceroboticss/', '/static/map-photos/717ceaed4cc365d408bd8749b3d2b53cb7f3f97e.png', '24.2589742, 44.6594581', '2024-02-24 09:20:59'),
(48, 'Lazarus Ascending #24446', 'https://www.instagram.com/lazarusascending/', '/static/map-photos/15e4f896d9bccc544ccb212099fdc9002eb7df04.png', '23.294685769925177, 45.37721955235036', '2024-02-24 10:43:02'),
(50, 'The Emperor #19073 | RO124', 'https://theemperorftc.netlify.app/', '/static/map-photos/ee67a70e08ddb467d8e20d2a10412d966a04ab87.png', '22.6568956, 44.6243756', '2024-02-24 12:06:50'),
(56, 'Delta Force', 'https://www.instagram.com/delta_force_robotics/', '/static/map-photos/1a5d584109a7f1a8e3cbd3026d911caeba11cf86.png', '26.0931584, 44.4432384', '2024-02-24 16:50:43'),
(60, 'Technical Difficulties #7172', 'https://ftc7172.org', '/static/map-photos/ef726277f5090d78156be54f66c042b99739f1bd.png', '-96.6752,33.0334', '2024-03-14 06:35:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `map`
--
ALTER TABLE `map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
