-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 12:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `likies`
--

--
-- Dumping data for table `create_by`
--

INSERT INTO `create_by` (`E_ID`, `C_name`, `E_creator`) VALUES
(0005, 'Fiction', 'มดแลง'),
(0006, 'Music', 'Oh my girl'),
(0012, 'Music', 'Cherry Bullet'),
(0013, 'Music', 'UMI'),
(0111, 'Music', 'Loona'),
(0112, 'Music', 'Weki Meki'),
(0113, 'Fiction', 'parachix'),
(0114, 'Fiction', 'pimthaimaidaika'),
(0115, 'Music', 'IZ*ONE'),
(0116, 'Music', 'WJSN'),
(0117, 'Music', 'Raiden'),
(0118, 'Music', 'Oh my girl'),
(0119, 'Music', 'Rocket Punch'),
(0120, 'Music', '(G)-IDLE'),
(0121, 'Music', 'Cignature'),
(0122, 'Music', 'APRIL'),
(0123, 'Music', 'Oh my girl'),
(0124, 'Music', 'GWSN'),
(0125, 'Music', 'Apink'),
(0126, 'Music', 'CHUNG HA'),
(0127, 'Music', 'NCT DREAM'),
(0128, 'Music', 'ONEUS'),
(0129, 'Music', 'THE BOYZ'),
(0130, 'Music', 'ITZY'),
(0131, 'Music', 'ATEEZ'),
(0132, 'Music', 'ANS'),
(0133, 'Music', 'Tiffany Young'),
(0134, 'Fiction', 'LORDNUAD'),
(0135, 'Fiction', '7ฮาเร็ม'),
(0136, 'Fiction', 'lilpea'),
(0137, 'Fiction', 'beaconicerene'),
(0138, 'Fiction', '98'),
(0139, 'Fiction', 'คิมฮยอนดง'),
(0140, 'Fiction', 'number7'),
(0141, 'Fiction', 'tewisthebest'),
(0142, 'Fiction', 'saranghye'),
(0143, 'Fiction', 'J. K. Rowling'),
(0144, 'Fiction', 'J. K. Rowling'),
(0145, 'Fiction', 'J. K. Rowling'),
(0146, 'Fiction', 'J. K. Rowling'),
(0147, 'Fiction', 'J. K. Rowling'),
(0148, 'Fiction', 'J. K. Rowling'),
(0149, 'Fiction', 'J. K. Rowling'),
(0150, 'Fiction', 'J. K. Rowling'),
(0151, 'Fiction', 'E. L. James'),
(0152, 'Fiction', 'E. L. James'),
(0153, 'Fiction', 'E. L. James'),
(0154, 'Fiction', 'E. L. James'),
(0155, 'Fiction', 'E. L. James'),
(0156, 'Fiction', 'Rick Riordan'),
(0157, 'Fiction', 'Rick Riordan'),
(0158, 'Fiction', 'Rick Riordan'),
(0159, 'Fiction', 'Rick Riordan'),
(0160, 'Fiction', 'Rick Riordan'),
(0161, 'Music', 'Oh my girl'),
(0162, 'Music', 'Oh my girl'),
(0163, 'Music', 'Oh my girl'),
(0164, 'Music', 'Oh my girl'),
(0165, 'Music', 'Oh my girl'),
(0166, 'Music', 'Oh my girl'),
(0167, 'Music', 'Loona'),
(0168, 'Music', 'Loona'),
(0169, 'Music', 'Loona'),
(0170, 'Music', 'Loona'),
(0171, 'Music', 'Loona'),
(0172, 'Music', 'Loona'),
(0173, 'Music', 'Loona'),
(0174, 'Music', 'Loona'),
(0175, 'Music', 'Loona'),
(0176, 'Music', 'Loona'),
(0177, 'Music', 'Loona'),
(0178, 'Music', 'Loona'),
(0179, 'Music', 'Loona'),
(0180, 'Music', 'Loona'),
(0181, 'Music', 'Loona'),
(0182, 'Music', 'Red Velvet'),
(0183, 'Music', 'Red Velvet'),
(0184, 'Music', 'Red Velvet'),
(0185, 'Music', 'Red Velvet'),
(0186, 'Music', 'Red Velvet'),
(0187, 'Music', 'Red Velvet'),
(0188, 'Music', 'Red Velvet'),
(0189, 'Music', 'Red Velvet'),
(0190, 'Music', 'Red Velvet'),
(0191, 'Music', 'Red Velvet'),
(0192, 'Music', 'Red Velvet'),
(0193, 'Music', 'Red Velvet'),
(0194, 'Music', 'Red Velvet'),
(0195, 'Music', 'Red Velvet'),
(0196, 'Music', 'Red Velvet'),
(0197, 'Music', 'Red Velvet'),
(0198, 'Music', 'Red Velvet'),
(0199, 'Music', 'Dreamcatcher'),
(0200, 'Music', 'Dreamcatcher'),
(0201, 'Music', 'Dreamcatcher'),
(0202, 'Music', 'Dreamcatcher'),
(0203, 'Music', 'Dreamcatcher'),
(0204, 'Music', 'Dreamcatcher'),
(0205, 'Music', 'Dreamcatcher'),
(0206, 'Music', 'Dreamcatcher'),
(0207, 'Music', 'Dreamcatcher');

--
-- Dumping data for table `create_in`
--

INSERT INTO `create_in` (`E_ID`, `C_name`, `E_year`) VALUES
(0001, 'Cartoon', 2019),
(0002, 'Series', 2020),
(0003, 'Cartoon', 2013),
(0004, 'Movie', 2019),
(0007, 'Cartoon', 2019),
(0008, 'Cartoon', 2009),
(0010, 'Series', 2020),
(0011, 'Series', 2013),
(0014, 'Series', 2019),
(0015, 'Series', 2016),
(0018, 'Series', 2016),
(0019, 'Series', 2019),
(0020, 'Series', 2018),
(0021, 'Movie', 2019),
(0022, 'Movie', 2017),
(0023, 'Movie', 2019),
(0024, 'Movie', 2011),
(0025, 'Movie', 2013),
(0026, 'Movie', 2017),
(0027, 'Series', 2016),
(0028, 'Series', 2019),
(0030, 'Series', 2015),
(0031, 'Series', 2017),
(0033, 'Series', 2009),
(0034, 'Cartoon', 2017),
(0035, 'Cartoon', 2016),
(0036, 'Series', 2016),
(0037, 'Series', 2015),
(0038, 'Series', 2015),
(0039, 'Movie', 2020),
(0040, 'Movie', 2012),
(0041, 'Movie', 2015),
(0042, 'Movie', 2018),
(0043, 'Movie', 2019),
(0044, 'Movie', 2019),
(0045, 'Cartoon', 2013),
(0046, 'Cartoon', 2016),
(0047, 'Cartoon', 2013),
(0048, 'Cartoon', 2010),
(0049, 'Cartoon', 2016),
(0050, 'Cartoon', 2005),
(0051, 'Cartoon', 1998),
(0052, 'Cartoon', 2015),
(0053, 'Cartoon', 2013),
(0054, 'Movie', 2016),
(0055, 'Movie', 2014),
(0056, 'Movie', 1980),
(0057, 'Movie', 2019),
(0058, 'Movie', 2018),
(0059, 'Movie', 2018),
(0060, 'Movie', 2018),
(0061, 'Movie', 2018),
(0062, 'Movie', 2018),
(0063, 'Cartoon', 2011),
(0064, 'Cartoon', 2014),
(0065, 'Cartoon', 2013),
(0066, 'Movie', 2019),
(0067, 'Movie', 2018),
(0068, 'Movie', 2019),
(0069, 'Cartoon', 2016),
(0070, 'Cartoon', 2014),
(0071, 'Cartoon', 2015),
(0072, 'Series', 2020),
(0073, 'Movie', 2017),
(0074, 'Movie', 2014),
(0075, 'Movie', 2014),
(0076, 'Movie', 2008),
(0077, 'Movie', 2017),
(0078, 'Movie', 2019),
(0079, 'Movie', 2019),
(0080, 'Movie', 2019),
(0081, 'Movie', 2019),
(0082, 'Movie', 2019),
(0083, 'Movie', 2019),
(0084, 'Movie', 2019),
(0085, 'Movie', 2017),
(0086, 'Movie', 2014),
(0087, 'Movie', 2015),
(0088, 'Movie', 2019),
(0089, 'Movie', 2018),
(0090, 'Movie', 2019),
(0091, 'Movie', 2001),
(0092, 'Movie', 2003),
(0093, 'Movie', 2006),
(0094, 'Movie', 2009),
(0095, 'Movie', 2011),
(0096, 'Movie', 2013),
(0097, 'Movie', 2015),
(0098, 'Movie', 2017),
(0099, 'Movie', 2019),
(0100, 'Movie', 2011),
(0101, 'Movie', 2014),
(0102, 'Movie', 2016),
(0103, 'Movie', 2018),
(0104, 'Movie', 2019),
(0105, 'Movie', 2014),
(0106, 'Movie', 2017),
(0107, 'Series', 2014),
(0108, 'Series', 2018),
(0109, 'Series', 2017),
(0110, 'Series', 2017);

--
-- Dumping data for table `entertainment`
--

INSERT INTO `entertainment` (`E_ID`, `E_name`, `C_name`) VALUES
(0001, 'Asobi Asobase', 'Cartoon'),
(0002, 'Home before dark', 'Series'),
(0003, 'Hibike Euphonium ', 'Cartoon'),
(0004, 'Little women', 'Movie'),
(0005, 'วันนี้ชูเจออะไร', 'Fiction'),
(0006, 'Nonstop', 'Music'),
(0007, 'Joshi kousei no mudazukai', 'Cartoon'),
(0008, 'K-on', 'Cartoon'),
(0010, 'Hollywood', 'Series'),
(0011, 'Brooklyn nine-nine', 'Series'),
(0012, 'Hands up', 'Music'),
(0013, 'Love affair', 'Music'),
(0014, 'Vagabond', 'Series'),
(0015, 'Doctors', 'Series'),
(0018, 'Stranger Things', 'Series'),
(0019, 'Dead to Me ', 'Series'),
(0020, 'Sky Castle', 'Series'),
(0021, '1917', 'Movie'),
(0022, 'It ', 'Movie'),
(0023, 'It Chapter Two', 'Movie'),
(0024, 'Thor', 'Movie'),
(0025, 'Thor : The Dark World', 'Movie'),
(0026, 'Thor : Ragnarok', 'Movie'),
(0027, 'Dr. Romantic', 'Series'),
(0028, 'Search: WWW', 'Series'),
(0030, 'Reply 1988', 'Series'),
(0031, 'Atypical', 'Series'),
(0033, 'Modern Family', 'Series'),
(0034, 'Flying Witch', 'Cartoon'),
(0035, 'Haikyuu', 'Cartoon'),
(0036, 'Descendants of the Sun', 'Series'),
(0037, 'Who Are You: School 2015', 'Series'),
(0038, 'Blood', 'Series'),
(0039, 'The Half of It', 'Movie'),
(0040, 'The Avengers', 'Movie'),
(0041, 'The Avengers 2 : Age of Ultron', 'Movie'),
(0042, 'Avengers : Infinity War', 'Movie'),
(0043, 'Avengers : Endgame', 'Movie'),
(0044, 'Captain Marvel', 'Movie'),
(0045, 'Attack on Titan', 'Cartoon'),
(0046, 'Yuri on ice', 'Cartoon'),
(0047, 'Love Live!', 'Cartoon'),
(0048, 'My little pony', 'Cartoon'),
(0049, 'Orange', 'Cartoon'),
(0050, 'Ben 10', 'Cartoon'),
(0051, 'The Powerpuff Girls', 'Cartoon'),
(0052, 'Yowamushi Pedal', 'Cartoon'),
(0053, 'Kyoukai no Kanata', 'Cartoon'),
(0054, 'London Has Fallen', 'Movie'),
(0055, 'American Sniper', 'Movie'),
(0056, 'The Shining', 'Movie'),
(0057, 'Doctor Sleep', 'Movie'),
(0058, 'The Favourite', 'Movie'),
(0059, 'The Nun', 'Movie'),
(0060, 'A Simple Favor', 'Movie'),
(0061, 'The House with a Clock in Its Walls', 'Movie'),
(0062, 'Hell Fest', 'Movie'),
(0063, 'Yuru Yuri', 'Cartoon'),
(0064, 'Cross Ange', 'Cartoon'),
(0065, 'Kill la Kill', 'Cartoon'),
(0066, 'Joker', 'Movie'),
(0067, 'Venom', 'Movie'),
(0068, 'Ready or Not', 'Movie'),
(0069, '91 Days', 'Cartoon'),
(0070, 'Akuma no Riddle', 'Cartoon'),
(0071, 'Kantai Collection', 'Cartoon'),
(0072, 'Into the Night', 'Series'),
(0073, '1922', 'Movie'),
(0074, 'Unbroken', 'Movie'),
(0075, 'Gone Girl', 'Movie'),
(0076, 'Death Race', 'Movie'),
(0077, 'Dunkirk', 'Movie'),
(0078, 'Velvet Buzzsaw', 'Movie'),
(0079, 'Eli', 'Movie'),
(0080, 'Brightburn', 'Movie'),
(0081, 'In the Tall Grass', 'Movie'),
(0082, 'Annabelle Comes Home', 'Movie'),
(0083, 'Midsommar', 'Movie'),
(0084, 'Crawl', 'Movie'),
(0085, 'What Happened to Monday', 'Movie'),
(0086, 'Little Forest: Summer/Autumn', 'Movie'),
(0087, 'Little Forest: Winter/Spring', 'Movie'),
(0088, 'Pet Sematary', 'Movie'),
(0089, 'Aquaman', 'Movie'),
(0090, 'Glass', 'Movie'),
(0091, 'The Fast and The Furious', 'Movie'),
(0092, '2 Fast 2 Furious', 'Movie'),
(0093, 'The Fast and The Furious : Tokyo Drift', 'Movie'),
(0094, 'Fast & Furious ', 'Movie'),
(0095, 'Fast & Furious 5', 'Movie'),
(0096, 'Fast & Furious 6', 'Movie'),
(0097, 'Fast & Furious 7', 'Movie'),
(0098, 'Fast & Furious 8', 'Movie'),
(0099, 'Fast & Furious Hobb & Shaw', 'Movie'),
(0100, 'Captain America: The First Avenger', 'Movie'),
(0101, 'Captain America: The Winter Soldier', 'Movie'),
(0102, 'Captain America: Civil War', 'Movie'),
(0103, 'Black Panther', 'Movie'),
(0104, 'Spider-Man: Far From Home', 'Movie'),
(0105, 'Guardians of the Galaxy', 'Movie'),
(0106, 'Guardians of the Galaxy Vol. 2', 'Movie'),
(0107, 'The Flash', 'Series'),
(0108, 'You', 'Series'),
(0109, '13 Reasons Why', 'Series'),
(0110, 'Mindhunter', 'Series'),
(0111, 'So What', 'Music'),
(0112, 'DAZZLE DAZZLE', 'Music'),
(0113, 'wikihow', 'Fiction'),
(0114, 'ระบำดวง #พืมไทยไมาได่ ka', 'Fiction'),
(0115, 'FIESTA', 'Music'),
(0116, 'Save Me, Save You', 'Music'),
(0117, 'The Only (feat. IRENE of Red Velvet)', 'Music'),
(0118, 'Guerilla', 'Music'),
(0119, 'BOUNCY', 'Music'),
(0120, 'Oh my god', 'Music'),
(0121, 'ASSA', 'Music'),
(0122, 'LALALILALA', 'Music'),
(0123, 'Dolphin', 'Music'),
(0124, 'BAZOOKA!', 'Music'),
(0125, '%%', 'Music'),
(0126, 'Stay Tonight', 'Music'),
(0127, 'Ridin', 'Music'),
(0128, 'A Song Written Easily', 'Music'),
(0129, 'REVEAL', 'Music'),
(0130, 'WANNABE', 'Music'),
(0131, 'Answer', 'Music'),
(0132, 'Say My Name', 'Music'),
(0133, 'Run For Your Life', 'Music'),
(0134, '#มิติพิศวงงง', 'Fiction'),
(0135, 'คุณครูคะ อย่ามายุ่งกับหนู', 'Fiction'),
(0136, '#ไม้สองกองหน้า', 'Fiction'),
(0137, '#30วันของกุมภา', 'Fiction'),
(0138, 'rose', 'Fiction'),
(0139, 'ออกสาวปากแดง', 'Fiction'),
(0140, 'midnight', 'Fiction'),
(0141, 'My Playlist', 'Fiction'),
(0142, 'Close Friend', 'Fiction'),
(0143, 'Harry Potter and the Philosophers Stone', 'Fiction'),
(0144, 'Harry Potter and the Chamber of Secrets', 'Fiction'),
(0145, 'Harry Potter and the Prisoner of Azkaban', 'Fiction'),
(0146, 'Harry Potter and the Goblet of Fire', 'Fiction'),
(0147, 'Harry Potter and the Order of the Phoenix', 'Fiction'),
(0148, 'Harry Potter and the Half-Blood Prince', 'Fiction'),
(0149, 'Harry Potter and the Deathly Hallows', 'Fiction'),
(0150, 'Harry Potter and the Cursed Child - Parts One and Two', 'Fiction'),
(0151, 'Fifty Shades of Grey', 'Fiction'),
(0152, 'Fifty Shades Darker', 'Fiction'),
(0153, 'Fifty Shades Freed', 'Fiction'),
(0154, 'Grey: Fifty Shades of Grey as Told by Christian', 'Fiction'),
(0155, 'Darker: Fifty Shades Darker as Told by Christian', 'Fiction'),
(0156, 'Percy Jackson & the Olympians: The Lightning Thief', 'Fiction'),
(0157, 'The Sea of Monsters', 'Fiction'),
(0158, 'The Titans Curse', 'Fiction'),
(0159, 'The Battle of the Labyrinth', 'Fiction'),
(0160, 'Percy Jackson and the Last Olympian', 'Fiction'),
(0161, 'Coloring Book', 'Music'),
(0162, 'Secret Garden', 'Music'),
(0163, 'CLOSER', 'Music'),
(0164, 'The fifth season (SSFWL)', 'Music'),
(0165, 'BUNGEE (Fall in love)', 'Music'),
(0166, 'In my dream', 'Music'),
(0167, 'ViVid', 'Music'),
(0168, 'Around you', 'Music'),
(0169, 'Let me in', 'Music'),
(0170, 'Kiss later', 'Music'),
(0171, 'Everyday I love you', 'Music'),
(0172, 'Eclipse', 'Music'),
(0173, 'Singing in the rain', 'Music'),
(0174, 'Love cherry motion', 'Music'),
(0175, 'New', 'Music'),
(0176, 'Heart Attack', 'Music'),
(0177, 'One & only', 'Music'),
(0178, 'Egoist', 'Music'),
(0179, 'Hi High', 'Music'),
(0180, 'Butterfly', 'Music'),
(0181, 'favOriTe', 'Music'),
(0182, 'Happiness', 'Music'),
(0183, 'One Of These Night', 'Music'),
(0184, 'Rookie', 'Music'),
(0185, 'Ice Cream cake', 'Music'),
(0186, 'Dump Dump', 'Music'),
(0187, 'Russian Roulette', 'Music'),
(0188, 'Umpah Umpah', 'Music'),
(0189, 'RBB', 'Music'),
(0190, 'Zimzalabim', 'Music'),
(0191, 'Bad Boy', 'Music'),
(0192, 'Peek-A-Boo', 'Music'),
(0193, 'Red Flavor', 'Music'),
(0194, 'Psycho', 'Music'),
(0195, 'Power Up', 'Music'),
(0196, '#Cookie Jar', 'Music'),
(0197, 'Sayonara', 'Music'),
(0198, 'Kingdom come', 'Music'),
(0199, 'Chase Me', 'Music'),
(0200, 'Fly High', 'Music'),
(0201, 'Good Night', 'Music'),
(0202, 'You and I', 'Music'),
(0203, 'What', 'Music'),
(0204, 'Piri', 'Music'),
(0205, 'Dejavu', 'Music'),
(0206, 'Scream', 'Music'),
(0207, 'Wonderland', 'Music');

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`U_ID`, `username`, `password`, `email`, `DOB`) VALUES
(0001, 'username', 'password', 'email@email.com', '2000-03-30'),
(0002, 'KimSeola', 'password1', 'email1@email.com', '1994-12-24'),
(0003, 'XuanYi__', 'password3', 'email3@email.com', '1995-11-26'),
(0004, 'ChuSoJung', 'password2', 'email2@email.com', '1995-11-06'),
(0005, 'KimBona_', 'password4', 'email4@email.com', '1995-08-19'),
(0006, 'ParkSoobin', 'password5', 'email5@email.com', '1996-11-14'),
(0007, 'LeeLuda_', 'password6', 'email6@email.com', '1997-03-06'),
(0008, 'NamDawaon', 'password7', 'email7@email.com', '1997-05-27'),
(0009, 'Eunseo__', 'password8', 'email8@email.com', '1998-05-27'),
(0010, 'ChengXiao', 'password9', 'email9@email.com', '1998-07-15'),
(0011, 'MeiMIki_', 'password10', 'email10@email.com', '1998-10-15'),
(0012, 'LeeYeoreum', 'password11', 'email11@email.com', '1999-01-10'),
(0013, 'LimDayoung', 'password12', 'email12@email.com', '1999-05-14'),
(0014, 'Yeonjung', 'password13', 'email13@email.com', '1999-08-03'),
(0015, 'S_Coups_', 'password31', 'email31@email.com', '1995-08-08'),
(0016, 'Jeonghan', 'password32', 'email32@email.com', '1995-10-04'),
(0017, 'WenJunhui', 'password33', 'email33@email.com', '1996-06-10'),
(0018, 'JoshuaHong', 'password34', 'email34@email.com', '1995-12-30'),
(0019, 'KwonHoshi', 'password35', 'email35@email.com', '1996-06-15'),
(0020, 'Wonwoo__', 'password36', 'email36@email.com', '1996-07-17'),
(0021, 'WooziLee', 'password37', 'email37@email.com', '1996-11-22'),
(0022, 'LeeSeokmin', 'password38', 'email38@email.com', '1997-02-18'),
(0023, 'KimMingyu', 'password39', 'email39@email.com', '1997-04-06'),
(0024, 'XuMinghao', 'password40', 'email40@email.com', '1997-11-07'),
(0025, 'Seungkwan', 'password41', 'email41@email.com', '1998-01-16'),
(0026, 'VernonChoi', 'password42', 'email42@email.com', '1998-02-18'),
(0027, 'JoHaSeul', 'password14', 'email14@email.com', '1997-08-18'),
(0028, 'V_i_V_i_', 'password15', 'email15@email.com', '1996-12-09'),
(0029, 'HaSooYoung', 'password16', 'email16@email.com', '1997-05-24'),
(0030, 'JungJinSou', 'password17', 'email17@email.com', '1997-06-13'),
(0031, 'Kim_Lip_', 'password18', 'email18@email.com', '1999-02-10'),
(0032, 'Kim_Chuu', 'password19', 'email19@email.com', '1999-10-20'),
(0033, 'JeonHeejin', 'password20', 'email20@email.com', '2000-10-19'),
(0034, 'KimHyunJin', 'password21', 'email21@email.com', '2000-11-15'),
(0035, 'ParkGowon', 'password22', 'email22@email.com', '2000-11-19'),
(0036, 'Choerry_', 'password23', 'email23@email.com', '2001-06-04'),
(0037, 'OliviaHye', 'password24', 'email24@email.com', '2001-11-13'),
(0038, 'ImYeojin', 'password25', 'email25@email.com', '2002-11-11'),
(0040, 'BaeIrene', 'password26', 'email26@email.com', '1991-03-29'),
(0041, 'KandSeulgi', 'password27', 'email27@email.com', '1994-02-10'),
(0042, 'WendySon', 'password28', 'email28@email.com', '1994-02-21'),
(0043, 'Park_Joy', 'password29', 'email29@email.com', '1996-09-03'),
(0044, 'KimYeRim', 'password30', 'email30@email.com', '1999-03-05'),
(0045, 'JeonSoyeon', 'password43', 'email43@email.com', '1998-08-26'),
(0046, 'ChoMiYeon', 'password44', 'email44@email.com', '1997-01-31'),
(0047, 'Min_nie_', 'password45', 'email45@email.com', '1997-10-23'),
(0048, 'SeoSujin', 'password46', 'email46@email.com', '1998-03-09'),
(0049, 'SongYuQi', 'password47', 'email47@email.com', '1999-09-23'),
(0050, 'YehShuhua', 'password48', 'email48@email.com', '2000-01-06'),
(0051, 'ParkJiHyo', 'password49', 'email49@email.com', '1997-02-01'),
(0052, 'ImNaYeon', 'password50', 'email50@email.com', '1995-09-22'),
(0053, 'Jeongyeon', 'password51', 'email51@email.com', '1996-11-01'),
(0054, 'HiraiMomo', 'password52', 'email52@email.com', '1996-11-09'),
(0055, 'sanapomu', 'password53', 'email53@email.com', '1996-12-29'),
(0056, 'mina0324', 'password54', 'email54@email.com', '1997-03-24'),
(0057, 'KimDahyun', 'password55', 'email55@email.com', '1998-05-28'),
(0058, 'Chaeyoung', 'password56', 'email56@email.com', '1999-04-23'),
(0059, 'ChouTzuyu', 'password57', 'email57@email.com', '1999-06-14'),
(0060, 'Hyo_jung', 'password58', 'email58@email.com', '1994-07-28'),
(0061, 'KimMiHyun', 'password59', 'email59@email.com', '1995-05-01'),
(0062, 'YooShiAh', 'password60', 'email60@email.com', '1995-09-17'),
(0063, 'Seunghee', 'password61', 'email61@email.com', '1996-01-25'),
(0064, 'Kim_JiHo', 'password62', 'email62@email.com', '1997-04-04'),
(0065, 'BaeYuBin', 'password63', 'email63@email.com', '1997-09-09'),
(0066, 'ChoiArin', 'password64', 'email64@email.com', '1999-06-18'),
(0067, 'HwangYeji', 'password65', 'email65@email.com', '2000-05-26'),
(0068, 'Choi_Lia', 'password66', 'email66@email.com', '2000-07-21'),
(0069, 'ShinRyujin', 'password67', 'email67@email.com', '2001-04-17'),
(0070, 'Chaeryeong', 'password68', 'email68@email.com', '2001-06-05'),
(0071, 'ShinYuna', 'password69', 'email69@email.com', '2003-12-09'),
(0072, 'ImNayoung', 'password70', 'email70@email.com', '1995-12-18'),
(0073, 'Minkyeung', 'password71', 'email71@email.com', '1997-07-29'),
(0074, 'Gyeongwon', 'password72', 'email72@email.com', '1997-11-05'),
(0075, 'JungEunwoo', 'password73', 'email73@email.com', '1998-07-01'),
(0076, 'KangYeabin', 'password74', 'email74@email.com', '1998-10-19'),
(0077, 'Jieqiong', 'password75', 'email75@email.com', '1998-12-16'),
(0078, 'KimYewon', 'password76', 'email76@email.com', '1999-02-22'),
(0079, 'Sungyeon', 'password77', 'email77@email.com', '1999-05-25'),
(0080, 'ParkXiyeon', 'password78', 'email78@email.com', '2000-11-14'),
(0081, 'KylaMassie', 'password79', 'email79@email.com', '2001-12-26'),
(0082, 'Kim_Bada', 'password80', 'email80@email.com', '2002-05-28'),
(0083, 'KimMinji', 'password81', 'email81@email.com', '1994-05-17'),
(0084, 'Kim_Bora', 'password82', 'email82@email.com', '1994-08-10'),
(0085, 'LeeSiyeon', 'password83', 'email83@email.com', '1995-10-01'),
(0086, 'HanDong_', 'password84', 'email84@email.com', '1996-03-26'),
(0087, 'YooHyeon', 'password85', 'email85@email.com', '1997-01-07'),
(0088, 'LeeYubin', 'password86', 'email86@email.com', '1997-03-07'),
(0089, 'LeeGahyeon', 'password87', 'email87@email.com', '1999-02-03'),
(0090, 'KwonEunbi', 'password88', 'email88@email.com', '1995-09-27'),
(0091, '39sakuchan', 'password89', 'email89@email.com', '1998-03-19'),
(0092, 'KangHyewon', 'password90', 'email90@email.com', '1999-07-05'),
(0093, 'ChoiYena', 'password91', 'email91@email.com', '1999-11-29'),
(0094, 'Chaeyeon', 'password92', 'email92@email.com', '2000-01-11'),
(0095, 'KimChaewon', 'password93', 'email93@email.com', '2000-08-01'),
(0096, 'KimMinju', 'password94', 'email94@email.com', '2001-02-05'),
(0097, 'YabukiNako', 'password95', 'email95@email.com', '2001-06-18'),
(0098, '_Hitomi_', 'password96', 'email96@email.com', '2001-10-06'),
(0099, '_JoYuri_', 'password97', 'email97@email.com', '2001-10-22'),
(0100, 'AhnYujin', 'password98', 'email98@email.com', '2003-09-01'),
(0101, 'Wonyoung', 'password99', 'email99@email.com', '2004-08-31');

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`U_ID`, `E_ID`, `E_date`, `E_detail`, `E_pic`, `E_rating`) VALUES
(0001, 0001, '2020-01-01', 'สนุกมากขำมาก หัวเราะตลอดทั้งเรื่อง เบาสมองบั่นทอนปัญญาดีมากๆ555555', 'thumb-1920-936193.png', 5),
(0001, 0003, '2020-04-09', 'เรนะสวยมาก คุมิโกะเรนะเป็นแฟน', 'sound-euphonium-wallpaper-preview.jpg', 5),
(0001, 0004, '2020-04-11', NULL, 'merlin_166233777_760ee787-8178-40fc-86b7-4fe3710a1b44-superJumbo.jpg', 5),
(0001, 0010, '2020-05-09', 'ชอบบรรยากาศในเรื่องมาก เป็นบรรยากาศของฮอลลีวูดประมาณยุค40 เรื่องก็ดูแล้วอบอุุ่นใจเหมือนกัน', 'hollywood-101-unit-01217rc.jpg', 5),
(0001, 0011, '2020-05-03', 'ชอบมาก ดูได้เพลินๆยาวๆเลย', 'brooklyn_main-1280x720.jpg', 5),
(0001, 0030, '2020-04-16', 'เป็นเรื่องที่ดูแล้วอบอุ่นหัวใจมาก ดูกี่ทีก็ชอบ', 'o1390kgsfv5d5o9cpXm-o.jpg', 5),
(0001, 0073, '2020-05-09', NULL, '1922-002.jpg', 3),
(0001, 0074, '2020-04-07', NULL, NULL, 4),
(0001, 0111, '2020-05-18', NULL, 'q6ex4eg45M3F1Ew6aOr-o.jpg', 5),
(0001, 0112, '2020-05-14', NULL, NULL, 5),
(0001, 0113, '2020-05-15', NULL, NULL, 5),
(0001, 0114, '2020-05-04', NULL, NULL, 5),
(0001, 0115, '2020-04-06', NULL, NULL, 5),
(0001, 0116, '2020-05-15', NULL, NULL, 5),
(0001, 0118, '2020-05-15', 'เพลงดีมากๆๆ', NULL, 5),
(0002, 0001, '2020-05-01', 'สนุกมากขำมาก หัวเราะตลอดทั้งเรื่อง เบาสมองบั่นทอนปัญญาดีมากๆ555555', 'thumb-1920-936193.png', 5),
(0002, 0002, '2020-03-17', NULL, 'Home-Before-Dark-Trailer-Journalism-Runs-in-the-Family.png', 4),
(0002, 0003, '2019-06-12', NULL, 'sound-euphonium-wallpaper-preview.jpg', 5),
(0002, 0004, '2020-03-25', NULL, 'merlin_166233777_760ee787-8178-40fc-86b7-4fe3710a1b44-superJumbo.jpg', 5),
(0002, 0005, '2017-06-20', NULL, NULL, 3),
(0002, 0006, '2020-05-14', NULL, 'OHMYGIRL_NONSTOP_Dance-Player_concept-teaser.jpg', 4),
(0002, 0007, '2020-05-13', NULL, '959c90069bda4868a7045798e912f1dd.jpg', 4),
(0002, 0008, '2019-06-04', NULL, 'onpsn5vyyqimYIR4OeI-o.jpg', 5),
(0002, 0010, '2020-05-14', NULL, 'hollywood-101-unit-01217rc.jpg', 4),
(0002, 0011, '2020-04-01', NULL, 'brooklyn_main-1280x720.jpg', 5),
(0002, 0012, '2020-05-14', NULL, 'unnamed.jpg', 5),
(0002, 0013, '2020-05-01', NULL, NULL, 4),
(0002, 0018, '2020-05-01', NULL, 'Stranger-Things-4.jpg', 5),
(0003, 0001, '2020-05-01', NULL, NULL, 5),
(0003, 0006, '2020-05-05', NULL, NULL, 5),
(0005, 0006, '2020-05-07', NULL, NULL, 5),
(0005, 0008, '2019-05-13', NULL, NULL, 5),
(0005, 0010, '2020-05-14', NULL, NULL, 5),
(0005, 0014, '2020-05-02', NULL, 'WE30545870_ori.jpg', 4),
(0005, 0015, '2020-03-24', NULL, 'abb8609a93774db1886d761faf5af57d.jpg', 3),
(0005, 0018, '2020-05-07', NULL, NULL, 5),
(0006, 0018, '2020-05-01', NULL, NULL, 5),
(0007, 0018, '2019-09-23', NULL, 'Stranger_Things_logo.png', 5),
(0009, 0018, '2020-01-22', NULL, NULL, 5),
(0011, 0019, '2020-05-05', NULL, 'dead_to_me-publicity_still-embed_2-_2019.jpg', 4),
(0011, 0020, '2020-01-07', NULL, NULL, 4),
(0014, 0057, '2020-02-15', NULL, NULL, 5),
(0014, 0075, '2020-04-07', NULL, NULL, 4),
(0014, 0076, '2020-03-12', NULL, NULL, 3),
(0014, 0077, '2020-05-02', NULL, NULL, 5),
(0014, 0078, '2020-03-02', NULL, NULL, 2),
(0014, 0079, '2020-03-14', NULL, NULL, 1),
(0014, 0080, '2020-05-02', NULL, NULL, 1),
(0014, 0081, '2020-03-12', NULL, NULL, 3),
(0014, 0082, '2020-03-05', NULL, NULL, 3),
(0014, 0083, '2020-02-03', NULL, NULL, 4),
(0014, 0084, '2020-03-14', NULL, NULL, 2),
(0015, 0085, '2020-03-16', NULL, NULL, 5),
(0015, 0086, '2020-05-09', NULL, NULL, 5),
(0015, 0087, '2020-05-10', NULL, NULL, 5),
(0015, 0088, '2020-03-16', NULL, NULL, 3),
(0015, 0089, '2020-02-04', NULL, NULL, 4),
(0015, 0090, '2020-02-04', NULL, NULL, 5),
(0027, 0004, '2020-05-14', NULL, NULL, 5),
(0027, 0021, '2020-05-08', NULL, 'POP_SPOTLIGHT_เบื้องหลังสมรภูมิ-‘1917’_WEB.jpg', 5),
(0028, 0111, '2020-05-14', NULL, NULL, 5),
(0028, 0167, '2020-04-01', NULL, NULL, 5),
(0028, 0168, '2020-05-02', NULL, NULL, 5),
(0028, 0169, '2020-05-03', NULL, NULL, 5),
(0028, 0170, '2020-05-04', NULL, NULL, 4),
(0028, 0171, '2020-05-05', NULL, NULL, 4),
(0028, 0172, '2020-05-06', NULL, NULL, 5),
(0028, 0173, '2020-05-07', NULL, NULL, 5),
(0028, 0174, '2020-05-08', NULL, NULL, 5),
(0028, 0175, '2020-05-09', NULL, NULL, 5),
(0028, 0176, '2020-05-10', NULL, NULL, 5),
(0028, 0177, '2020-05-11', NULL, NULL, 5),
(0028, 0178, '2020-05-12', NULL, NULL, 5),
(0028, 0179, '2020-05-13', NULL, NULL, 5),
(0028, 0180, '2020-05-14', NULL, NULL, 5),
(0028, 0181, '2020-05-15', NULL, NULL, 5),
(0031, 0023, '2020-05-13', NULL, '6C133B94-C6F4-4161-9D89-92ABADF240A3.jpg', 4),
(0031, 0024, '2020-03-25', NULL, NULL, 4),
(0031, 0025, '2020-04-26', NULL, NULL, 4),
(0031, 0026, '2020-04-28', NULL, NULL, 5),
(0031, 0091, '2020-05-01', NULL, NULL, 5),
(0031, 0092, '2020-05-02', NULL, NULL, 5),
(0031, 0093, '2020-05-03', NULL, NULL, 5),
(0031, 0094, '2020-05-04', NULL, NULL, 5),
(0031, 0095, '2020-05-05', NULL, NULL, 5),
(0031, 0096, '2020-05-06', NULL, NULL, 5),
(0031, 0097, '2020-05-07', NULL, NULL, 5),
(0031, 0098, '2020-05-08', NULL, NULL, 5),
(0031, 0099, '2020-05-09', NULL, NULL, 5),
(0032, 0022, '2020-05-08', NULL, 'it.jpg', 4),
(0033, 0021, '2020-03-11', NULL, NULL, 5),
(0033, 0040, '2020-03-19', NULL, NULL, 4),
(0033, 0041, '2020-05-03', NULL, NULL, 4),
(0033, 0042, '2020-05-04', NULL, NULL, 4),
(0033, 0043, '2020-05-05', NULL, NULL, 5),
(0033, 0044, '2020-05-06', NULL, NULL, 5),
(0035, 0006, '2020-05-08', NULL, NULL, 5),
(0035, 0027, '2020-01-14', NULL, NULL, 4),
(0035, 0028, '2020-03-05', NULL, 'Search-WWW-01-1-600x373.jpg', 5),
(0035, 0123, '2020-05-08', NULL, NULL, 5),
(0035, 0161, '2020-02-05', NULL, NULL, 5),
(0035, 0162, '2020-04-07', NULL, NULL, 5),
(0035, 0163, '2020-03-03', NULL, NULL, 5),
(0035, 0164, '2020-04-09', NULL, NULL, 5),
(0035, 0165, '2020-04-09', NULL, NULL, 5),
(0035, 0166, '2020-02-06', NULL, NULL, 5),
(0036, 0004, '2020-05-06', NULL, NULL, 5),
(0036, 0031, '2020-05-05', NULL, '11794726-3x2-large.png', 5),
(0036, 0039, '2020-05-06', NULL, 'Ontwerp-zonder-titel-2-1.png', 5),
(0036, 0053, '2020-04-17', NULL, '81IHqtQ27qL._AC_SL1500_.jpg', 5),
(0036, 0067, '2020-05-01', NULL, '1524552144-avenom.jpg', 5),
(0036, 0068, '2020-05-01', NULL, '1_0QPFf6cFN4eKoFiIYj1mvg.jpeg', 5),
(0036, 0070, '2020-03-13', NULL, 'Akuma-no-Riddle-Title.jpg', 5),
(0036, 0071, '2020-04-09', NULL, NULL, 5),
(0036, 0072, '2020-05-07', NULL, NULL, 5),
(0037, 0039, '2020-05-15', NULL, NULL, 5),
(0037, 0065, '2020-03-11', NULL, NULL, 5),
(0037, 0066, '2020-05-01', NULL, 'Joker.jpg', 5),
(0037, 0067, '2020-04-07', NULL, '1524552144-avenom.jpg', 4),
(0037, 0068, '2020-04-17', NULL, '1_0QPFf6cFN4eKoFiIYj1mvg.jpeg', 5),
(0037, 0069, '2020-05-07', NULL, NULL, 4),
(0038, 0001, '2020-05-07', NULL, NULL, 5),
(0038, 0035, '2020-05-08', NULL, NULL, 4),
(0038, 0045, '2020-04-16', NULL, NULL, 4),
(0038, 0046, '2020-04-24', NULL, NULL, 4),
(0038, 0047, '2020-03-17', NULL, 'images.jpg', 5),
(0038, 0048, '2020-05-08', NULL, NULL, 3),
(0038, 0049, '2020-05-02', NULL, '05.jpg', 4),
(0040, 0006, '2020-05-04', NULL, NULL, 5),
(0040, 0012, '2020-05-06', NULL, NULL, 5),
(0040, 0115, '2020-03-20', NULL, NULL, 5),
(0040, 0117, '2020-03-01', NULL, NULL, 5),
(0040, 0118, '2020-03-22', NULL, NULL, 5),
(0040, 0119, '2020-05-04', NULL, NULL, 5),
(0040, 0120, '2020-05-11', NULL, NULL, 5),
(0040, 0121, '2020-05-09', NULL, NULL, 5),
(0040, 0122, '2020-05-13', NULL, NULL, 5),
(0040, 0123, '2020-05-11', NULL, NULL, 5),
(0041, 0001, '2020-05-11', NULL, NULL, 5),
(0041, 0003, '2020-03-18', NULL, NULL, 5),
(0041, 0034, '2020-05-05', NULL, '01327.jpg', 5),
(0043, 0001, '2020-05-06', NULL, NULL, 5),
(0043, 0058, '2020-03-23', NULL, NULL, 5),
(0043, 0059, '2020-03-11', NULL, NULL, 2),
(0043, 0060, '2020-04-16', NULL, NULL, 5),
(0043, 0061, '2020-04-06', NULL, NULL, 4),
(0043, 0062, '2020-03-17', NULL, NULL, 4),
(0043, 0063, '2020-01-08', NULL, NULL, 3),
(0043, 0064, '2020-01-07', NULL, NULL, 4),
(0044, 0010, '2020-05-14', NULL, NULL, 5),
(0044, 0028, '2020-05-14', NULL, NULL, 5),
(0044, 0030, '2020-05-01', NULL, 'o1390kgsfv5d5o9cpXm-o.jpg', 5),
(0046, 0108, '2020-05-04', NULL, NULL, 4),
(0046, 0109, '2020-04-06', NULL, NULL, 3),
(0046, 0110, '2020-04-17', NULL, NULL, 5),
(0047, 0018, '2020-03-18', NULL, NULL, 5),
(0047, 0030, '2020-05-01', NULL, NULL, 5),
(0047, 0038, '2020-04-18', NULL, NULL, 4),
(0047, 0039, '2020-05-08', NULL, NULL, 5),
(0049, 0044, '2020-05-04', NULL, NULL, 5),
(0049, 0100, '2020-05-01', NULL, NULL, 5),
(0049, 0101, '2020-05-02', NULL, NULL, 5),
(0049, 0102, '2020-05-03', NULL, NULL, 4),
(0049, 0103, '2020-05-05', NULL, NULL, 5),
(0049, 0104, '2020-05-07', NULL, NULL, 4),
(0049, 0105, '2020-05-11', NULL, NULL, 4),
(0049, 0106, '2020-05-12', NULL, NULL, 4),
(0049, 0107, '2020-04-07', NULL, NULL, 4),
(0060, 0003, '2020-05-02', NULL, NULL, 5),
(0060, 0010, '2020-05-01', NULL, NULL, 5),
(0060, 0028, '2020-05-01', NULL, NULL, 5),
(0060, 0030, '2020-04-14', NULL, NULL, 5),
(0060, 0035, '2020-05-07', NULL, 'maxresdefault.jpg', 4),
(0060, 0036, '2020-03-12', NULL, 'ดมสพท้.jpg', 4),
(0060, 0037, '2020-03-18', NULL, NULL, 4),
(0062, 0010, '2020-05-08', NULL, NULL, 5),
(0062, 0030, '2020-05-01', NULL, NULL, 5),
(0062, 0055, '2020-05-07', NULL, '_80357869_bradley1.jpg', 5),
(0062, 0056, '2020-05-02', NULL, 'The Shining.jpg', 4),
(0062, 0057, '2020-05-10', NULL, 'imagen-1.jpg', 5),
(0066, 0050, '2020-01-14', NULL, NULL, 3),
(0066, 0051, '2020-03-26', NULL, NULL, 3),
(0066, 0052, '2020-05-07', NULL, 'unnamed (1).jpg', 4),
(0066, 0053, '2020-05-04', NULL, '81IHqtQ27qL._AC_SL1500_.jpg', 5),
(0071, 0004, '2020-05-01', NULL, NULL, 5),
(0071, 0030, '2020-04-10', NULL, 'o1390kgsfv5d5o9cpXm-o.jpg', 5),
(0071, 0053, '2020-05-06', NULL, NULL, 5),
(0071, 0054, '2020-05-08', NULL, NULL, 5),
(0077, 0143, '2020-03-01', NULL, NULL, 5),
(0077, 0144, '2020-03-02', NULL, NULL, 5),
(0077, 0145, '2020-03-03', NULL, NULL, 5),
(0077, 0146, '2020-03-04', NULL, NULL, 5),
(0077, 0147, '2020-03-05', NULL, NULL, 5),
(0077, 0148, '2020-03-06', NULL, NULL, 5),
(0077, 0149, '2020-03-07', NULL, NULL, 5),
(0077, 0150, '2020-03-08', NULL, NULL, 5),
(0078, 0113, '2020-05-18', NULL, NULL, 5),
(0078, 0118, '2020-05-15', NULL, 'oh_my_girl___guerilla_by_vanessa_van3ss4_ddm4fbm-fullview.jpg', 5),
(0078, 0123, '2020-05-15', NULL, 'watch-oh-my-girls-dolphin-music-video-and-find-out-why-its-topping-music-charts-1280x720.jpg', 5),
(0078, 0128, '2020-05-10', NULL, NULL, 3),
(0078, 0129, '2020-05-12', NULL, NULL, 5),
(0078, 0130, '2020-05-09', NULL, NULL, 4),
(0078, 0131, '2020-04-09', NULL, NULL, 5),
(0078, 0132, '2020-03-08', NULL, NULL, 3),
(0078, 0133, '2020-04-10', NULL, NULL, 5),
(0078, 0134, '2020-02-02', NULL, NULL, 4),
(0078, 0135, '2020-04-06', NULL, NULL, 5),
(0078, 0136, '2020-04-11', NULL, NULL, 5),
(0078, 0137, '2020-02-12', NULL, NULL, 5),
(0078, 0138, '2020-05-06', NULL, NULL, 4),
(0078, 0139, '2020-05-10', NULL, NULL, 3),
(0078, 0140, '2020-05-05', NULL, NULL, 4),
(0078, 0141, '2020-05-04', NULL, NULL, 4),
(0078, 0142, '2020-05-02', NULL, NULL, 4),
(0080, 0118, '2020-05-14', NULL, NULL, 5),
(0080, 0123, '2020-05-04', NULL, NULL, 5),
(0080, 0124, '2020-05-10', NULL, NULL, 4),
(0080, 0125, '2020-04-27', NULL, NULL, 5),
(0080, 0126, '2020-05-12', NULL, NULL, 4),
(0080, 0127, '2020-05-06', NULL, NULL, 5),
(0082, 0018, '2020-05-02', NULL, 'Stranger_Things_logo.png', 5),
(0083, 0151, '2020-05-01', NULL, NULL, 4),
(0083, 0152, '2020-05-02', NULL, NULL, 4),
(0083, 0153, '2020-05-03', NULL, NULL, 4),
(0083, 0154, '2020-05-04', NULL, NULL, 4),
(0083, 0155, '2020-05-05', NULL, NULL, 4),
(0083, 0156, '2020-04-01', NULL, NULL, 5),
(0083, 0157, '2020-04-02', NULL, NULL, 5),
(0083, 0158, '2020-04-03', NULL, NULL, 5),
(0083, 0159, '2020-04-04', NULL, NULL, 5),
(0083, 0160, '2020-04-06', NULL, NULL, 5),
(0086, 0199, '2020-05-01', NULL, NULL, 5),
(0086, 0200, '2020-05-02', NULL, NULL, 5),
(0086, 0201, '2020-05-03', NULL, NULL, 5),
(0086, 0202, '2020-05-04', NULL, NULL, 5),
(0086, 0203, '2020-05-05', NULL, NULL, 5),
(0086, 0204, '2020-05-06', NULL, NULL, 5),
(0086, 0205, '2020-05-06', NULL, NULL, 5),
(0086, 0206, '2020-05-09', NULL, NULL, 5),
(0086, 0207, '2020-05-13', NULL, NULL, 5),
(0090, 0030, '2020-04-08', NULL, NULL, 5),
(0090, 0031, '2020-04-21', NULL, '11794726-3x2-large.png', 5),
(0090, 0033, '2020-05-12', NULL, 'modern_family_finale_-publicity_-_h_2020_.jpg', 4),
(0091, 0182, '2020-05-01', NULL, NULL, 5),
(0091, 0183, '2020-05-02', NULL, NULL, 5),
(0091, 0184, '2020-05-03', NULL, NULL, 5),
(0091, 0185, '2020-05-03', NULL, NULL, 5),
(0091, 0186, '2020-05-04', NULL, NULL, 5),
(0091, 0187, '2020-05-05', NULL, NULL, 5),
(0091, 0188, '2020-05-07', NULL, NULL, 5),
(0091, 0189, '2020-05-09', NULL, NULL, 5),
(0091, 0190, '2020-05-05', NULL, NULL, 5),
(0091, 0191, '2020-05-12', NULL, NULL, 5),
(0091, 0192, '2020-05-08', NULL, NULL, 5),
(0091, 0193, '2020-05-09', NULL, NULL, 5),
(0091, 0194, '2020-05-15', NULL, NULL, 5),
(0091, 0195, '2020-05-10', NULL, NULL, 5),
(0091, 0196, '2020-05-12', NULL, NULL, 5),
(0091, 0197, '2020-05-13', NULL, NULL, 5),
(0091, 0198, '2020-05-14', NULL, NULL, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;