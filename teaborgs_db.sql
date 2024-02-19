-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: localhost:3306
-- Timp de generare: feb. 19, 2024 la 09:11 PM
-- Versiune server: 5.7.44
-- Versiune PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `teaborgs_db`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `nume` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `poza` set('gold','silver','bronze') COLLATE utf8mb4_bin NOT NULL,
  `imp` int(11) NOT NULL,
  `an` enum('2019','2020','2021','2022','2023') COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Eliminarea datelor din tabel `awards`
--

INSERT INTO `awards` (`id`, `nume`, `poza`, `imp`, `an`) VALUES
(1, 'Winning Alliance Captain - Bucharest National Phase 2022', 'gold', 0, '2022'),
(2, 'Design Award Winner - Bucharest National Phase 2022', 'gold', 0, '2022'),
(3, 'Top Ranked Team - Timi&#351;oara Regional Phase 2022', 'gold', 0, '2022'),
(4, 'First Place - Quantum Robotics Demo 2022', 'gold', 0, '2022'),
(5, 'Second Place - RobotX & Raventech Demo 2022', 'silver', 0, '2022'),
(6, 'Finalist Alliance Captain, Thrid place - Bucharest National Phase 2021', 'bronze', 0, '2021'),
(7, 'Second Place - Gear Maniacs Demo 2021', 'silver', 0, '2021'),
(8, 'First Place - RobotX, RobotY Demo 2021', 'gold', 0, '2021'),
(9, 'Winning Alliance Award - National Phase Timi&#351;oara 2020', 'gold', 0, '2020'),
(10, 'Second Place Design Award - National Phase Timi&#351;oara 2020', 'silver', 0, '2020'),
(11, 'Fourth Place - RobotX, RobotY Demo 2020', 'bronze', 0, '2020'),
(12, 'Winning Alliance, First Pick - Bionic Royals II 2019', 'gold', 0, '2019'),
(13, 'Second Place - Bionic Royals I 2018', 'silver', 0, '2019'),
(14, 'Third Place Think Award - Bucharest National Phase 2023', 'bronze', 0, '2023'),
(15, 'Second Place Inspire Award - Bucharest Regional Phase 2023', 'silver', 0, '2023'),
(16, 'Finalist Alliance, First Pick - Bucharest Regional Phase 2023', 'gold', 0, '2023'),
(17, 'First Place Team OPR Ranking Romania - FTC 2023', 'gold', 0, '2023'),
(18, '8th Place Team OPR Ranking Mondial - FTC 2023', 'bronze', 0, '2023'),
(19, '8th Place Jemison Division - World Robotics Championship 2022, Houston - Texas, USA\n', 'gold', 100, '2022'),
(20, 'Finalist New Technology Experience - First Global Challenge 2022, Geneve, Switzerland', 'gold', 100, '2022'),
(21, '25th Place (out of 165 countries) - First Global Challange 2022, Geneve, Switzerland', 'gold', 100, '2022');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `nume` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `poza` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `descriere` longtext COLLATE utf8mb4_bin NOT NULL,
  `imagini` longtext COLLATE utf8mb4_bin NOT NULL,
  `an` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Eliminarea datelor din tabel `gallery`
--

INSERT INTO `gallery` (`id`, `nume`, `poza`, `descriere`, `imagini`, `an`) VALUES
(1, 'CHILDREN\'S DAY', '/static/gallery-photos/7/7-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/7/7-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/7/7-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/7/7-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/7/7-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/7/7-5.jpg\'>', '', '2023-06-01 14:02:08'),
(2, 'ROBOTICS AT THE FORTRESS', '/static/gallery-photos/1/1-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/1/1-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/1/1-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/1/1-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/1/1-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/1/1-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/1/1-6.jpg\'>', '', '2023-07-22 13:47:03'),
(3, 'EDUPOWER ACTIVITY', '/static/gallery-photos/2/2-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/2/2-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-8.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-9.jpg\'>', '', '2023-11-01 14:46:55'),
(4, 'EDUPOWER PROJECT LAUNCH', '/static/gallery-photos/6/6-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/6/6-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-8.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-9.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-10.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-11.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-12.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-13.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-14.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-15.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-16.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-17.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-18.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-19.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-20.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-21.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-22.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-23.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-24.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-25.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-26.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-27.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-28.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-29.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-30.jpg\'>', '', '2023-09-29 13:46:00'),
(5, 'EUROPEAN RESEARCHERS\' NIGHT', '/static/gallery-photos/5/5-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/5/5-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-8.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-9.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-10.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-11.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-12.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-13.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-14.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-15.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-16.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-17.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-18.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-19.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-20.jpg\'>', '', '2023-09-29 13:46:10'),
(6, 'HACKATHON ALPHABIT', '/static/gallery-photos/4/4-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/4/4-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/4/4-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/4/4-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/4/4-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/4/4-5.jpg\'>\n', '', '2023-07-04 13:46:33'),
(7, 'EDUCATIONAL OFFERS FAIR', '/static/gallery-photos/3/3-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/3/3-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-8.jpg\'>', '', '2023-05-27 13:46:43'),
(8, 'ROBOTICS IN MEDICINE', '/static/gallery-photos/8/8-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/8/8-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-8.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-9.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-10.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-11.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-12.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-13.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-14.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-15.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-16.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-17.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-18.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-19.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-20.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-21.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-22.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-23.jpg\'>', '', '2023-10-28 11:18:11'),
(9, 'CODE KIDS 2023 GORJ', '/static/gallery-photos/9/9-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/9/9-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-8.jpg\'>', '', '2023-11-06 17:11:57'),
(10, 'BUCHAREST TWIN CUP', '/static/gallery-photos/10/10-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/10/10-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-8.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-9.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-10.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-11.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-12.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-13.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-14.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-15.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-16.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-17.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-18.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-19.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-20.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-21.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-22.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-23.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-24.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-25.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-26.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-27.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-28.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-29.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-30.jpg\'>\n', '', '2023-08-11 16:11:51'),
(11, 'PAPER PLANES - INTERACT', '/static/gallery-photos/11/11-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/11/11-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/11/11-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/11/11-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/11/11-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/11/11-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/11/11-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/11/11-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/11/11-8.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/11/11-9.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/11/11-10.jpg\'>', '', '2023-11-12 12:18:11'),
(12, 'LEGO Education CSEdWeek', '/static/gallery-photos/12/12-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/12/12-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/12/12-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/12/12-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/12/12-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/12/12-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/12/12-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/12/12-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/12/12-8.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/12/12-9.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/12/12-10.jpg\'>', '', '2023-11-16 12:18:11'),
(13, 'Natalia Intotero Visit', '/static/gallery-photos/13/13-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/13/13-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/13/13-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/13/13-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/13/13-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/13/13-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/13/13-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/13/13-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/13/13-8.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/13/13-9.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/13/13-10.jpg\'>', '', '2023-11-18 12:18:11'),
(14, 'Youth Summit', '/static/gallery-photos/14/14-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/14/14-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/14/14-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/14/14-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/14/14-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/14/14-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/14/14-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/14/14-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/14/14-8.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/14/14-9.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/14/14-10.jpg\'>', '', '2023-11-19 12:18:11'),
(15, 'Youth Gala', '/static/gallery-photos/15/15-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/15/15-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/15/15-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/15/15-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/15/15-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/15/15-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/15/15-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/15/15-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/15/15-8.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/15/15-9.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/15/15-10.jpg\'>', '', '2023-11-18 17:18:11'),
(16, 'First Won Meet', '/static/gallery-photos/16/16-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/16/16-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/16/16-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/16/16-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/16/16-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/16/16-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/16/16-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/16/16-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/16/16-8.jpg\'>', '', '2023-12-09 05:00:00'),
(17, 'Together for Christmas', '/static/gallery-photos/17/17-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/17/17-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/17/17-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/17/17-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/17/17-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/17/17-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/17/17-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/17/17-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/17/17-8.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/17/17-9.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/17/17-10.jpg\'>', '', '2023-12-10 17:18:11'),
(18, 'First Place Meet Won', '/static/gallery-photos/18/18-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/18/18-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/18/18-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/18/18-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/18/18-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/18/18-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/18/18-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/18/18-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/18/18-8.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/18/18-9.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/18/18-10.jpg\'>', '', '2023-12-17 05:00:00'),
(19, 'Meet the Tea Borgs Team', '/static/gallery-photos/19/19-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/19/19-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/19/19-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/19/19-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/19/19-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/19/19-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/19/19-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/19/19-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/19/19-8.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/19/19-9.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/19/19-10.jpg\'>', '', '2023-12-22 18:07:11'),
(20, 'Fundraising Course', '/static/gallery-photos/20/20-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/20/20-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/20/20-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/20/20-3.jpg\'>', '', '2023-12-27 05:00:00'),
(21, 'Helping Alphatronic', '/static/gallery-photos/21/21-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/21/21-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/21/21-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/21/21-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/21/21-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/21/21-5.jpg\'>', '', '2023-12-28 05:00:00'),
(22, 'T-Shirt Giveaway', '/static/gallery-photos/22/22-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/22/22-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/22/22-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/22/22-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/22/22-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/22/22-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/22/22-6.jpg\'>', '', '2024-01-09 18:03:06'),
(23, 'Helping Meet', '/static/gallery-photos/23/23-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/23/23-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/23/23-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/23/23-3.jpg\'>', '', '2024-01-06 05:00:00'),
(24, 'Helping Meet', '/static/gallery-photos/24/24-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/24/24-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/24/24-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/24/24-3.jpg\'>', '', '2024-01-13 05:00:00'),
(25, 'First Place Meet Won', '/static/gallery-photos/25/25-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/26/26-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-8.jpg\'>', '', '2024-01-20 05:00:00'),
(26, 'AUTO', '/static/gallery-photos/26/26-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/26/26-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-8.jpg\'>', '', '2024-02-05 05:00:00'),
(27, 'Study in America', '/static/gallery-photos/27/27-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/27/27-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-8.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-9.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-10.jpg\'>', '', '2024-02-06 05:00:00');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `map`
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
-- Eliminarea datelor din tabel `map`
--

INSERT INTO `map` (`id`, `nume`, `url`, `poza`, `coord`, `data`) VALUES
(1, 'Tea Borgs #19121 | RO087', 'https://teaborgs.ro/map/', 'https://teaborgs.ro/static/logo/logo-v2-2024.png', '23.273869950499023, 45.0373408489883', '2024-02-09 17:03:39'),
(2, 'InfinityBolts #19093 RO056', 'https://www.instagram.com/infinity.bolts/', '/static/map-photos/920217252a107165f660729ce30f18a9f1074c8e.png', '21.32905709,46.18271643', '2024-02-13 21:01:19'),
(3, 'Clockworks #19075 | RO108', 'https://clockworks.ro/ro/', '/static/map-photos/3f18440b57c5e6d303bcf77563ad9c923334c46d.png', '26.103710,44.414237', '2024-02-13 21:00:47'),
(4, 'AlphaBit ', 'https://www.alphabit.ro/', '/static/map-photos/e813f6b4283263c317fc4bb5eeb6ccbbb089385c.png', '23.3731288,45.4161434', '2024-02-15 18:10:49'),
(14, 'Dark Energy #19106 | RO115', 'https://www.instagram.com/darkenergy.ro115?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==', '/static/map-photos/769ee62dd5304716a8971ee9860585533a70dafe.png', '22.9008209, 45.8831246', '2024-02-15 19:00:43'),
(15, 'WATT`s UP 16166 | RP023', 'https://www.wattsup.ro/', '/static/map-photos/6b344cff09a63a90129888e5f7d75471c5f27c95.png', '25.04081385767053, 45.26439676755202', '2024-02-19 11:35:42'),
(6, 'RavenTech HD #19047 | RO121', 'https://www.instagram.com/raventech_hd?igsh=NmJ1amtiN3UzMzRk', '/static/map-photos/4ccb5d811b16d704a1815c213bd13eedb07ece11.png', '22.9096903,45.7502867', '2024-02-15 18:18:54'),
(5, 'Wafy #20985/ RO_063', 'https://www.instagram.com/echipa_wafy?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==', '/static/map-photos/a9936f255f4ce0e4b4d486be0dc93c16ae987525.png', '23.40345712223176,45.45133062862227', '2024-02-15 18:18:51');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `nume` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `rol` text COLLATE utf8mb4_bin NOT NULL,
  `poza` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `an` set('2019','2020','2021','2022','2023','2024') COLLATE utf8mb4_bin NOT NULL,
  `imp` text COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Eliminarea datelor din tabel `members`
--

INSERT INTO `members` (`id`, `nume`, `rol`, `poza`, `an`, `imp`) VALUES
(1, 'Andrei Fr&#238;ntu', 'marketing', '/static/member-photos/Andrei Fr&#238;ntu.webp', '2023,2024', '0,0,0,0,20,50'),
(2, 'Bogdan Vasiloiu', 'mechanic', '/static/member-photos/Bogdan Vasiloiu.webp', '2019,2020,2021', '90,90,90,0,0,0'),
(3, 'Paul C&#259;lin Danet', 'mechanic,programmer', '/static/member-photos/Paul C&#259;lin Danet.webp', '2019', '40,0,0,0,0,0'),
(4, 'Ana Maria B&#259;l&#259;cescu', 'public relations', '/static/member-photos/Ana Maria B&#259;l&#259;cescu.webp', '2019,2020', '80,70,0,0,0,0'),
(5, 'Sorin Alexandru Stoian', 'mechanic', '/static/member-photos/Sorin Alexandru Stoian.webp', '2019,2020', '70,80,0,0,0,0'),
(6, 'Mihnea Popeang&#259;', 'mechanic,programmer', '/static/member-photos/Mihnea Popeang&#259;.webp', '2019,2020', '100,100,0,0,0,0'),
(7, 'Mateea Popescu', 'public relations', '/static/member-photos/Mateea Popescu.webp', '2019,2020', '60,60,0,0,0,0'),
(8, 'C&#259;t&#259;lin P&#259;tra&#351;cu', 'mechanic', '/static/member-photos/C&#259;t&#259;lin P&#259;tra&#351;cu.webp', '2019,2020', '50,75,0,0,0,0'),
(9, 'Mihai Sebastian Bir&#259;u', 'mechanic,driver', '/static/member-photos/Mihai Sebastian Bir&#259;u.webp', '2020,2021', '0,55,40,0,0,0'),
(10, 'Alexandru Barb', 'mechanic', '/static/member-photos/Alexandru Barb.webp', '2020,2021', '0,35,35,0,0,0'),
(11, 'Robert Damian ', 'programmer', '/static/member-photos/Robert Damian.webp', '2020,2021', '0,85,100,0,0,0'),
(12, 'Iarina Popa ', 'public relations', '/static/member-photos/Iarina Popa.webp', '2020,2021', '0,40,45,0,0,0'),
(13, 'Raluca Chiriac', 'public relations', '/static/member-photos/Raluca Chiriac.webp', '2020,2021', '0,15,30,0,0,0'),
(14, 'Alina Agurid&#259;', 'mechanic,public relations', '/static/member-photos/Alina Agurid&#259;.webp', '2020', '0,25,0,0,0,0'),
(15, '&#350;tefania P&#238;slaru', 'public relations', '/static/member-photos/&#350;tefania P&#238;slaru.webp', '2020', '0,50,0,0,0,0'),
(16, 'Alexandra Marinica', 'public relations', '/static/member-photos/Alexandra Marinica.webp', '2020', '0,14,0,0,0,0'),
(17, 'Maria Fiu', 'public relations', '/static/member-photos/Maria Fiu.webp', '2020', '0,18,0,0,0,0'),
(18, 'Andrei Vintilescu', 'programmer', '/static/member-photos/Andrei Vintilescu.webp', '2020', '0,65,0,0,0,0'),
(19, 'Andrei Stan', 'programmer', '/static/member-photos/Andrei Stan.webp', '2020,2021', '0,45,14,0,0,0'),
(20, 'Mihai S&#259;voiu', 'public relations', '/static/member-photos/Mihai S&#259;voiu.webp', '2020,2021', '0,13,60,0,0,0'),
(21, 'Denis Covei', 'programmer', '/static/member-photos/Denis Covei.webp', '2020,2021', '0,20,70,0,0,0'),
(22, 'Armand Moalf&#259;', 'public relations', '/static/member-photos/Armand Moalf&#259;.webp', '2020,2021', '0,16,65,0,0,0'),
(23, 'Bogdan Iliescu', 'programmer', '/static/member-photos/Bogdan Iliescu.webp', '2020,2021', '0,12,55,0,0,0'),
(24, 'Caleb Corvin Tulpan', 'mechanic', '/static/member-photos/Caleb Corvin Tulpan.webp', '2020,2021', '0,17,50,0,0,0'),
(25, 'Nicolae Dan', 'mechanic', '/static/member-photos/Nicolae Dan.webp', '2020,2021', '0,19,18,0,0,0'),
(26, '&#350;tefania Dumitru', 'programmer', '/static/member-photos/&#350;tefania Dumitru.webp', '2020,2021', '0,30,75,0,0,0'),
(27, 'Adrian G&#259;v&#259;nescu', 'public relations', '/static/member-photos/Adrian G&#259;v&#259;nescu.webp', '2021,2022', '0,0,13,45,0,0'),
(28, 'Andrei Achim', 'mechanic', '/static/member-photos/Andrei Achim.webp', '2021,2022,2023', '0,0,16,65,35,0'),
(29, 'Daniel Tudorescu', 'programmer,public relations', '/static/member-photos/Daniel Tudorescu.webp', '2021,2022,2023', '0,0,19,75,85,0'),
(30, 'Silviana Mungiu', 'public relations', '/static/member-photos/Silviana Mungiu.webp', '2021', '0,0,17,0,0,0'),
(31, 'Miruna Popeang&#259;', 'public relations', '/static/member-photos/Miruna Popeang&#259;.webp', '2021,2022,2023', '0,0,15,70,50,0'),
(32, 'Radu T&#259;erel', 'driver,programmer', '/static/member-photos/Radu T&#259;erel.webp', '2021,2022,2023', '0,0,80,90,100,0'),
(33, 'Elena D&#259;n&#259;ia&#355;&#259; ', 'mechanic', '/static/member-photos/Elena D&#259;n&#259;ia&#355;&#259;.webp', '2021', '0,0,25,0,0,0'),
(34, 'Theodor Vulpe', 'driver,programmer', '/static/member-photos/Theodor Vulpe.webp', '2021,2022', '0,0,85,100,0,0'),
(35, 'David Petreu&#351;', 'mechanic', '/static/member-photos/David Petreu&#351;.webp', '2021,2022,2023,2024', '0,0,20,85,90,90'),
(36, 'Bogdan Zamfiroiu', 'mechanic,public relations', '/static/member-photos/Bogdan Zamfiroiu.webp', '2022,2023', '0,0,0,60,40,0'),
(37, '&#350;tefan Grigore', 'mechanic', '/static/member-photos/&#350;tefan Grigore.webp', '2022', '0,0,0,17,0,0'),
(38, 'Laura Dolofan', 'public relations', '/static/member-photos/Laura Dolofan.webp', '2022,2023', '0,0,0,55,60,0'),
(39, 'Daria Matei', 'public relations', '/static/member-photos/Daria Matei.webp', '2022,2023', '0,0,0,80,80,0'),
(40, 'Radu Cr&#259;ciunel', 'public relations', '/static/member-photos/Radu Cr&#259;ciunel.webp', '2022', '0,0,0,16,0,0'),
(41, 'Amalia Gridan', 'public relations', '/static/member-photos/Amalia Gridan.webp', '2022', '0'),
(42, 'Teodora Secot&#259;', 'driver,programmer', '/static/member-photos/Teodora Secot&#259;.webp', '2022,2023', '0,0,0,50,25,0'),
(43, 'Alexandra Prodan', 'mechanic,driver', '/static/member-photos/Alexandra Prodan.webp', '2022', '0,0,0,19,0,0'),
(44, 'Matei Istratie', 'mechanic,public relations', '/static/member-photos/Matei Istratie.webp', '2022', '0,0,0,18,0,0'),
(45, 'David Firiza', 'mechanic,programmer', '/static/member-photos/David Firiza.webp', '2022', '0,0,0,20,0,0'),
(46, 'Luca Gheorghescu', 'driver,mechanic', '/static/member-photos/Luca Gheorghescu.webp', '2023,2024', '0,0,0,0,30,55'),
(47, 'R&#259;zvan - Costin G&#238;rlea', 'driver,mechanic,CAD', '/static/member-photos/R&#259;zvan - Costin G&#238;rlea.webp', '2023,2024', '0,0,0,0,70,60'),
(48, 'Vlad Popescu', 'programmer', '/static/member-photos/Vlad Popescu.webp', '2023,2024', '0,0,0,0,18,70'),
(50, 'Andra - Gabriela C&#238;rstoiu', 'outreach,awards & finance', '/static/member-photos/Andra - Gabriela C&#238;rstoiu.webp', '2023,2024', '0,0,0,0,65,100'),
(51, 'Andra - Ionela Morie', 'mechanic,outreach', '/static/member-photos/Andra - Ionela Morie.webp', '2023,2024', '0,0,0,0,16,65'),
(52, 'Luca - Mihai Zguroiu', 'mechanic', '/static/member-photos/Luca - Mihai Zguroiu.webp', '2023,2024', '0,0,0,0,55,80'),
(53, 'Patrick Guran - Lupulescu', 'mechanic,outreach', '/static/member-photos/Patrick Guran - Lupulescu.webp', '2023,2024', '0,0,0,0,15,30'),
(55, '&#350;tefan - Constantin Copil&#259;u', 'driver,mechanic,CAD', '/static/member-photos/&#350;tefan - Constantin Copil&#259;u.webp', '2023,2024', '0,0,0,0,45,85'),
(56, 'Renata - Gabriela Sgr&#259;bun&#355;&#259;', 'mechanic,outreach', '/static/member-photos/Renata - Gabriela Sgr&#259;bun&#355;&#259;.webp', '2023,2024', '0,0,0,0,17,75'),
(58, 'Roxana Preda', 'driver', '/static/member-photos/Roxana Preda.webp', '2024', '0,0,0,0,0,45'),
(59, '&#350;tefania Alina Log&#259;scu', '3D designer', '/static/member-photos/&#350;tefania Alina Log&#259;scu.webp', '2023,2024', '0,0,0,0,19,35'),
(60, 'Christian - Andrei Petroniu', 'programmer', '/static/member-photos/Christian - Andrei Petroniu.webp', '2024', '0,0,0,0,0,40'),
(61, 'Mario - C&#259;t&#259;lin Iovi&#355;a', 'mechanic', '/static/member-photos/Mario - C&#259;t&#259;lin Iovi&#355;a.webp', '2024', '0,0,0,0,0,19'),
(62, 'Andreas - Alexandru Marinescu', 'driver', '/static/member-photos/Andreas - Alexandru Marinescu.webp', '2024', '0,0,0,0,0,25'),
(65, 'Eric G&#259;man', 'driver,mechanic', '/static/member-photos/Eric G&#259;man.webp', '2024', '0,0,0,0,0,18'),
(66, 'Tudor Avram', 'driver', '/static/member-photos/Tudor Avram.webp', '2023', '0,0,0,0,70,0'),
(67, 'Iulia Groza', 'programare', '/static/member-photos/Iulia Groza.png', '2019', '30');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `descriere` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `an` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Eliminarea datelor din tabel `news`
--

INSERT INTO `news` (`id`, `descriere`, `an`) VALUES
(1, 'https://www.instagram.com/p/C3LkGPKoNTL/', '2023-09-29 16:39:41'),
(2, 'https://www.instagram.com/p/C3NRJzborfs/', '2023-08-13 16:39:41'),
(3, 'https://www.instagram.com/p/C3SoAswIZwk/', '2023-10-19 19:04:22');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(11) NOT NULL,
  `rol` text COLLATE utf8mb4_bin NOT NULL,
  `poza` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `an` set('2019','2020','2021','2022','2023') COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Eliminarea datelor din tabel `sponsors`
--

INSERT INTO `sponsors` (`id`, `rol`, `poza`, `an`) VALUES
(1, '0,0,0,bronze,gold', '/static/sponsor-photos/s2.webp', '2021,2022,2023'),
(2, '0,0,0,bronze,gold', '/static/sponsor-photos/s1.webp', '2021,2022,2023'),
(3, '0,0,0,gold,gold', '/static/sponsor-photos/s8.webp', '2021,2022,2023'),
(4, '0,0,0,gold,0', '/static/sponsor-photos/s7.webp', '2022'),
(5, '0,0,0,silver,silver', '/static/sponsor-photos/s3.webp', '2021,2022,2023'),
(6, 'silver,0,0,silver,0', '/static/sponsor-photos/s4.webp', '2019,2022'),
(7, '0,0,0,silver,bronze', '/static/sponsor-photos/s5.webp', '2021,2022,2023'),
(8, '0,0,0,silver,0', '/static/sponsor-photos/s6.webp', '2022'),
(9, 'bronze,0,0,0,gold', '/static/sponsor-photos/s11.webp', '2019,2020,2023'),
(10, '0,0,0,0,silver', '/static/sponsor-photos/s10.webp', '2023'),
(11, '0,0,0,0,bronze', '/static/sponsor-photos/s9.webp', '2023'),
(12, 'gold,0,0,0,0', '/static/sponsor-photos/s14.webp', '2019,2020'),
(13, 'silver,0,0,0,0', '/static/sponsor-photos/s15.webp', '2019,2020'),
(14, 'bronze,0,0,0,0', '/static/sponsor-photos/s16.webp', '2019,2020'),
(15, 'bronze,0,0,0,0', '/static/sponsor-photos/s17.webp', '2019,2020'),
(16, 'silver,0,0,0,0', '/static/sponsor-photos/s13.webp', '2019,2020');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pentru tabele `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pentru tabele `map`
--
ALTER TABLE `map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pentru tabele `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pentru tabele `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
