-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 22, 2024 at 08:48 AM
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
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `nume` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `poza` set('gold','silver','bronze') COLLATE utf8mb4_bin NOT NULL,
  `imp` int(11) NOT NULL,
  `an` enum('2019','2020','2021','2022','2023','2024') COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `awards`
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
(21, '25th Place (out of 165 countries) - First Global Challange 2022, Geneve, Switzerland', 'gold', 100, '2022'),
(22, '1st place - Bionic Royals Meet', 'gold', 0, '2024'),
(23, '1st place - Soft Hoarders Meet', 'gold', 0, '2024'),
(24, '1st place - RobotX Meet', 'gold', 0, '2024'),
(25, 'Semi-Finalist Alliance, Captain - Arad Regional Phase 2024\r\n', 'gold', 99, '2024'),
(26, 'First Place Motivate Award - Arad Regional Phase 2024', 'gold', 100, '2024');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
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
-- Dumping data for table `gallery`
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
(25, 'First Place Meet Won', '/static/gallery-photos/25/25-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/25/25-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/25/25-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/25/25-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/25/25-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/25/25-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/25/25-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/25/25-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/25/25-8.jpg\'>', '', '2024-01-20 05:00:00'),
(26, 'AUTO', '/static/gallery-photos/26/26-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/26/26-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/26/26-8.jpg\'>', '', '2024-02-05 05:00:00'),
(27, 'Study in America', '/static/gallery-photos/27/27-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/27/27-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-8.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-9.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/27/27-10.jpg\'>', '', '2024-02-06 05:00:00'),
(28, 'Training with WATT\'s UP', '/static/gallery-photos/28/28-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/28/28-1.jpg\'>', '', '2024-02-10 05:00:00'),
(29, 'Girls in STEM', '/static/gallery-photos/29/29-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/29/29-1.jpg\'>', '', '2024-02-11 05:00:00'),
(30, 'Arad Regional Phase 2024', '/static/gallery-photos/30/30-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/30/30-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-8.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-9.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-10.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-11.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-12.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-13.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-14.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-15.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-16.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-17.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-18.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-19.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-20.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-21.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-22.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-23.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-24.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-25.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-26.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-27.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/30/30-28.jpg\'>\n', '', '2024-02-25 05:00:00'),
(31, 'Tehnical Difficulties USA', '/static/gallery-photos/31/31-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/31/31-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/31/31-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/31/31-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/31/31-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/31/31-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/31/31-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/31/31-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/31/31-8.jpg\'>', '', '2024-03-13 05:00:00');

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
(1, 'Tea Borgs #19121 | RO087', 'https://teaborgs.ro/', '/static/logo/logo-v3-2024.png', '23.273869950499023, 45.0373408489883', '2024-03-15 17:29:47'),
(2, 'Technical Difficulties #7172', 'https://ftc7172.org/', '/static/map-photos/241e7900be87609be5285df1ee9edbb047fffcfd.png', '-96.6752, 33.0334', '2024-03-14 07:55:33'),
(3, 'Clockworks #19075 | RO108', 'https://clockworks.ro/ro/', '/static/map-photos/a4dc8c5f86362c5faf33efb767c3c20d7e8863e7.png', '26.103710, 44.414237', '2024-03-14 07:57:29'),
(4, 'Team CSH #17861', 'https://www.instagram.com/team_csh/', '/static/map-photos/3779fdfc6a6f9f80d3717a08206396ee3c460f6d.png', '21.2255659, 45.7480314', '2024-03-14 08:02:32'),
(5, 'UNplugged #19257', 'https://unplugged.lenau.ro/', '/static/map-photos/69cb9f9e1670d285040c9b21c5d6f2988335dc06.png', '21.2242524, 45.7578959', '2024-03-14 08:05:31'),
(6, 'RoboDojo #23205', 'https://robodojo.ro/', '/static/map-photos/61ccb4444d731c16bec3ddbf41d48d531a8bbae4.png', '21.235642686184935, 45.755767200120225', '2024-03-14 08:08:18'),
(7, 'Atlas CNB #20732', 'https://linktr.ee/atlas_cnb', '/static/map-photos/40727c5b64c7bda0bf6555b6c7003c93240d5619.png', '21.212813612690578, 45.74395634088676', '2024-03-14 08:10:23'),
(9, 'AlphaBit RO137', 'https://www.alphabit.ro/', '/static/map-photos/7983dabf4d623478a782d60f6adf836c18d52e8b.png', '23.3731288, 45.4161434', '2024-03-14 10:01:44'),
(8, 'Wafy #20985 | RO063', 'https://www.instagram.com/echipa_wafy', '/static/map-photos/ac2d02c94c19ed4cdd08f4ac2f78db7ac2bacbcb.png', '23.40345712223176, 45.45133062862227', '2024-03-14 10:01:47'),
(10, 'RoboKey #20963 | RO161', 'https://infopetrosani.ro/', '/static/map-photos/ffa0d56cb9a03a3ccab8503e4fae4b85f120695e.png', '23.371973, 45.407029', '2024-03-14 08:19:05'),
(11, 'Lazarus Ascending #24446', 'https://www.instagram.com/lazarusascending/', '/static/map-photos/67fe767a1b48b4200ccc85949e58690b5d4aa4b4.png', '23.294685769925177, 45.37721955235036', '2024-03-14 08:21:22'),
(12, 'Delta Force #17713', 'https://www.instagram.com/delta_force_robotics/', '/static/map-photos/f4e96708ddcb0473b1ab0015f4dabf890851a9bf.png', '21.329053, 46.181922', '2024-03-14 10:08:13'),
(13, 'InfinityBolts #19093 | RO056', 'https://www.instagram.com/infinity.bolts/', '/static/map-photos/117acba856a5e0097f09030efbee48145d253970.png', '21.32905709, 46.18271643', '2024-03-14 10:15:07'),
(14, 'Harambe Cartel #20912', 'https://www.instagram.com/harambecartel/', '/static/map-photos/0d48f1c88d80a013ce21b8e6c0a7c3eb351863ca.png', '21.319642910441914, 46.17094275001669', '2024-03-14 10:19:18'),
(15, 'ROBO TEAM ALPHA #23015', 'https://m.facebook.com/p/Robot-Team-Alpha-100063791360636/', '/static/map-photos/3baf1d85c031268d2f34882fde046dba9758eea5.png', '21.31676218251035, 46.164871708164775', '2024-03-14 10:23:03'),
(16, 'Soft Hoarders | #12560', 'https://www.soft-hoarders.com/', '/static/map-photos/aaaea4462adb91878c8e500d9a69d70308aa5b7f.png', '23.794046671872255, 44.31355949839238', '2024-03-14 10:25:33'),
(17, 'Rasky #19109 | RO122', 'https://www.instagram.com/raskyrobotics/', '/static/map-photos/683a1355efbbe0edc554b17b57549420595fe14f.png', '23.7903267, 44.319957', '2024-03-14 10:48:53'),
(18, 'Dark Energy #19106 | RO115', 'https://www.instagram.com/darkenergy.ro115', '/static/map-photos/8ed981905d6c0c651af2e55e7fea962ac96b4bcf.png', '22.9008209, 45.8831246', '2024-03-14 10:51:05'),
(19, 'DecebalTech #19105 | RO060', 'https://cnd.ro/cndrobotics/', '/static/map-photos/c92eda5ee88f91a16f50a2fc67c7c84a88fb96ee.png', '22.8980043, 45.8702435', '2024-03-14 10:54:11'),
(20, 'RavenTech HD #19047 | RO121', 'https://www.instagram.com/raventech_hd', '/static/map-photos/b7f92153a8909d078e3a4bf4884ab7bbd9f4d4c3.png', '22.9096903, 45.7502867', '2024-03-14 10:59:37'),
(21, 'RobotX HUNEDOARA', 'https://robotxhd.com/', '/static/map-photos/9cf4f42c1cafbec40f82b7ec4859998495cf12a2.png', '22.903923, 45.751207', '2024-03-14 11:04:53'),
(22, 'Brute Force Robotics #22941 | RO166', 'https://www.instagram.com/bruteforceroboticss/', '/static/map-photos/35a451fbb2f7f538745f294da1f019bb3b322fc6.png', '24.2589742, 44.6594581', '2024-03-14 11:11:46'),
(23, 'Bots Brain #19081 | RO110', 'https://www.instagram.com/bots.brain/', '/static/map-photos/b3ff9d95216b23947486dd60f575c19e333dc3e4.png', '22.938561, 43.9903548', '2024-03-14 11:12:49'),
(24, 'The Emperor #19073 | RO124', 'https://theemperorftc.netlify.app/', '/static/map-photos/6ab5871b56e21e91c34fb3c228bc630d9f9b5640.png', '22.6568956, 44.6243756', '2024-03-14 11:14:37'),
(25, 'WizzTech #19094', 'https://www.instagram.com/wizztech.tm/', '/static/map-photos/10c4b9f14e452bee609cc91a80879544a8cde354.png', '21.1449, 45.7414075', '2024-03-14 11:17:31'),
(26, 'WATTs UP #16166 | RO023', 'https://www.wattsup.ro/', '/static/map-photos/515c3d8326a6160d0562095c343ff7c13a2fe377.png', '25.04081385767053, 45.26439676755202', '2024-03-14 11:19:27'),
(27, 'Robosmart #19110', 'https://www.facebook.com/robosmartcnim/', '/static/map-photos/8c8a5dc584cfe346a3d33f121bee50b7ff8e0b4e.png', '24.3632266247265, 44.42454315582546', '2024-03-14 11:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `members`
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
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `nume`, `rol`, `poza`, `an`, `imp`) VALUES
(1, 'Andrei Fr&#238;ntu', 'full-stack developer', '/static/member-photos/Andrei Fr&#238;ntu.webp', '2023,2024', '0,0,0,0,20,50'),
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
(35, 'David Petreu&#351;', 'mechanic', '/static/member-photos/David Petreu&#351;.webp', '2021,2022,2023', '0,0,20,85,90,90'),
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
(46, 'Luca Gheorghescu', 'mechanic', '/static/member-photos/Luca Gheorghescu.webp', '2023,2024', '0,0,0,0,30,55'),
(47, 'R&#259;zvan - Costin G&#238;rlea', 'driver,mechanic,CAD', '/static/member-photos/R&#259;zvan - Costin G&#238;rlea.webp', '2023,2024', '0,0,0,0,70,60'),
(48, 'Vlad Popescu', 'programmer', '/static/member-photos/Vlad Popescu.webp', '2023,2024', '0,0,0,0,18,70'),
(50, 'Andra - Gabriela C&#238;rstoiu', 'leader,public relations', '/static/member-photos/Andra - Gabriela C&#238;rstoiu.webp', '2023,2024', '0,0,0,0,65,100'),
(51, 'Andra - Ionela Morie', 'mechanic,public relations', '/static/member-photos/Andra - Ionela Morie.webp', '2023,2024', '0,0,0,0,16,65'),
(52, 'Luca - Mihai Zguroiu', 'mechanic', '/static/member-photos/Luca - Mihai Zguroiu.webp', '2023,2024', '0,0,0,0,55,80'),
(53, 'Patrick Guran - Lupulescu', 'public relations', '/static/member-photos/Patrick Guran - Lupulescu.webp', '2023,2024', '0,0,0,0,15,30'),
(55, '&#350;tefan - Constantin Copil&#259;u', 'driver,mechanic,CAD', '/static/member-photos/&#350;tefan - Constantin Copil&#259;u.webp', '2023,2024', '0,0,0,0,45,85'),
(56, 'Renata - Gabriela Sgr&#259;bun&#355;&#259;', 'public relations', '/static/member-photos/Renata - Gabriela Sgr&#259;bun&#355;&#259;.webp', '2023,2024', '0,0,0,0,17,75'),
(58, 'Roxana Preda', 'driver', '/static/member-photos/Roxana Preda.webp', '2024', '0,0,0,0,0,45'),
(59, '&#350;tefania Alina Log&#259;scu', '3D designer', '/static/member-photos/&#350;tefania Alina Log&#259;scu.webp', '2023,2024', '0,0,0,0,19,35'),
(60, 'Christian - Andrei Petroniu', 'programmer', '/static/member-photos/Christian - Andrei Petroniu.webp', '2024', '0,0,0,0,0,40'),
(61, 'Mario - C&#259;t&#259;lin Iovi&#355;a', 'mechanic', '/static/member-photos/Mario - C&#259;t&#259;lin Iovi&#355;a.webp', '2024', '0,0,0,0,0,19'),
(62, 'Andreas - Alexandru Marinescu', 'mechanic,driver', '/static/member-photos/Andreas - Alexandru Marinescu.webp', '2024', '0,0,0,0,0,25'),
(65, 'Eric G&#259;man', 'mechanic', '/static/member-photos/Eric G&#259;man.webp', '2024', '0,0,0,0,0,18'),
(66, 'Tudor Avram', 'driver', '/static/member-photos/Tudor Avram.webp', '2023', '0,0,0,0,70,0'),
(67, 'Iulia Groza', 'programare', '/static/member-photos/Iulia Groza.png', '2019', '30');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `descriere` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `an` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `descriere`, `an`) VALUES
(1, 'https://www.instagram.com/p/C4Y9ajuIcMT/', '2023-09-29 16:39:41'),
(2, 'https://www.instagram.com/p/C4cai5XoZD4/', '2023-08-13 16:39:41'),
(3, 'https://www.instagram.com/p/C4gaNIFNCXy/', '2023-10-19 19:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(11) NOT NULL,
  `rol` text COLLATE utf8mb4_bin NOT NULL,
  `poza` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `an` set('2019','2020','2021','2022','2023') COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `sponsors`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `map`
--
ALTER TABLE `map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
