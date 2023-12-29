CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `nume` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `poza` set('gold','silver','bronze') COLLATE utf8mb4_bin NOT NULL,
  `imp` int(11) NOT NULL,
  `an` enum('2019','2020','2021','2022','2023') COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `nume` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `poza` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `descriere` longtext COLLATE utf8mb4_bin NOT NULL,
  `imagini` longtext COLLATE utf8mb4_bin NOT NULL,
  `an` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

INSERT INTO `gallery` (`id`, `nume`, `poza`, `descriere`, `imagini`, `an`) VALUES
(1, 'CHILDREN\'S DAY', '/static/gallery-photos/7/7-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/7/7-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/7/7-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/7/7-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/7/7-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/7/7-5.jpg\'>', '', '2023-06-01 14:02:08'),
(2, 'ROBOTICS AT THE FORTRESS', '/static/gallery-photos/1/1-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/1/1-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/1/1-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/1/1-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/1/1-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/1/1-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/1/1-6.jpg\'>', '', '2023-07-22 13:47:03'),
(3, 'EDUPOWER ACTIVITY', '/static/gallery-photos/2/2-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/2/2-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-8.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/2/2-9.jpg\'>', '', '2023-11-01 14:46:55'),
(4, 'EDUPOWER PROJECT LAUNCH', '/static/gallery-photos/6/6-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/6/6-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-8.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-9.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-10.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-11.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-12.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-13.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-14.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-15.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-16.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-17.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-18.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-19.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-20.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-21.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-22.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-23.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-24.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-25.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-26.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-27.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-28.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-29.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/6/6-30.jpg\'>', '', '2023-09-29 13:46:00'),
(5, 'EUROPEAN RESEARCHERS\' NIGHT', '/static/gallery-photos/5/5-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/5/5-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-8.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-9.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-10.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-11.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-12.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-13.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-14.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-15.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-16.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-17.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-18.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-19.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/5/5-20.jpg\'>', '', '2023-09-29 13:46:10'),
(6, 'HACKATHON ALPHABIT', '/static/gallery-photos/4/4-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/4/4-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/4/4-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/4/4-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/4/4-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/4/4-5.jpg\'>\n', '', '2023-07-04 13:46:33'),
(7, 'EDUCATIONAL OFFERS FAIR', '/static/gallery-photos/3/3-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/3/3-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/3/3-8.jpg\'>', '', '2023-05-27 13:46:43'),
(8, 'ROBOTICS IN MEDICINE', '/static/gallery-photos/8/8-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/8/8-1.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-2.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-3.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-4.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-5.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-6.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-7.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-8.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-9.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-10.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-11.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-12.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-13.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-14.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-15.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-16.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-17.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-18.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-19.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-20.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-21.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-22.jpg\'>\n<img class=\'w-100\' src=\'/static/gallery-photos/8/8-23.jpg\'>', '', '2023-10-28 11:18:11'),
(9, 'CODE KIDS 2023 GORJ', '/static/gallery-photos/9/9-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/9/9-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/9/9-8.jpg\'>', '', '2023-11-08 11:04:10'),
(10, 'BUCHAREST TWIN CUP', '/static/gallery-photos/10/10-1.jpg', '<img class=\'w-100\' src=\'/static/gallery-photos/10/10-1.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-2.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-3.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-4.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-5.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-6.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-7.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-8.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-9.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-10.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-11.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-12.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-13.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-14.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-15.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-16.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-17.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-18.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-19.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-20.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-21.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-22.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-23.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-24.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-25.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-26.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-27.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-28.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-29.jpg\'>\r\n<img class=\'w-100\' src=\'/static/gallery-photos/10/10-30.jpg\'>\r\n', '', '2023-08-15 10:18:15');

CREATE TABLE `map` (
  `id` int(11) NOT NULL,
  `nume` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `url` text COLLATE utf8mb4_bin NOT NULL,
  `poza` text COLLATE utf8mb4_bin NOT NULL,
  `coord` text COLLATE utf8mb4_bin NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

INSERT INTO `map` (`id`, `nume`, `url`, `poza`, `coord`, `data`) VALUES
(1, 'Tea Borgs #19121 | RO087', 'https://teaborgs.ro/map/', '/static/map-photos/bcdb5f710b826f7462b81241e4ccbd3130c97402.png', '23.273869950499023, 45.0373408489883', '2023-11-18 17:43:38');

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `nume` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `rol` text COLLATE utf8mb4_bin NOT NULL,
  `poza` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `an` set('2019','2020','2021','2022','2023','2024') COLLATE utf8mb4_bin NOT NULL,
  `imp` text COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `descriere` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `an` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

INSERT INTO `news` (`id`, `descriere`, `an`) VALUES
(1, 'https://www.instagram.com/p/C0tDHKLoAkf/', '2023-09-29 16:39:41'),
(2, 'https://www.instagram.com/p/C0zkThfIsaj/', '2023-08-13 16:39:41'),
(3, 'https://www.instagram.com/p/C04y1p3o8eB/', '2023-10-19 19:04:22');

CREATE TABLE `sponsors` (
  `id` int(11) NOT NULL,
  `rol` text COLLATE utf8mb4_bin NOT NULL,
  `poza` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `an` set('2019','2020','2021','2022','2023') COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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

ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `sponsors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;
