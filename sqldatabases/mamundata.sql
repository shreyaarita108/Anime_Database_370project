-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 21, 2023 at 11:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Anime`
--

-- --------------------------------------------------------

--
-- Table structure for table `Anime`
--

CREATE TABLE `Anime` (
  `name` varchar(255) NOT NULL,
  `studio` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `poster_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Anime`
--

INSERT INTO `Anime` (`name`, `studio`, `start_date`, `description`, `genre`, `poster_url`) VALUES
('Attack on Titan', 'Wit Studio', '2013-04-06', 'In a world where humanity resides within enormous walled cities, protecting themselves from Titans.', 'Action, Drama', 'https://m.media-amazon.com/images/I/81dH7-pkjiL.jpg'),
('Naruto', 'Studio Pierrot', '2002-10-03', 'A young ninja seeks recognition from his peers and dreams of becoming the Hokage.', 'Action, Adventure', 'https://m.media-amazon.com/images/I/71U6KzJ2w-L._AC_UF894,1000_QL80_.jpg'),
('Naruto Movie', 'Studio XYZ', '2023-08-01', 'Description of Naruto Movie', 'Action', 'naruto_movie_poster_url'),
('One Piece', 'Toei Animation', '1999-10-20', 'Follows the adventures of Monkey D. Luffy and his pirate crew in the Grand Line.', 'Action, Adventure', 'https://w0.peakpx.com/wallpaper/225/554/HD-wallpaper-anime-one-piece-monkey-d-luffy-gear-5-one-piece.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `ticket_price` decimal(10,2) DEFAULT NULL,
  `Attraction` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `year`, `location`, `date`, `ticket_price`, `Attraction`, `image_url`) VALUES
(1, 'AnimeCon Expo', 2023, 'Tokyo, Japan', '2023-08-25', 25.00, 'Cosplay, Music , Anime Voice Actors', 'https://img.mipon.org/wp-content/uploads/2019/07/27071551/wcs-tokyo14.02.41.jpg'),
(2, 'Otaku Fest', 2023, 'Los Angeles, USA', '2023-09-10', 20.00, 'Otaku Contest, Quiz, Cosplay and Gifts', 'https://www.anime-expo.org/wp-content/uploads/2020/12/Anime-Expo-Logo-Blog-Thumb.jpg'),
(3, 'MangaMania', 2023, 'London, UK', '2023-10-05', 15.00, 'New Manga Launches, Producers and Writers and Meet and Greet', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4T9SRW7bu0Cze_yC-rd88pk8CUXBhRwT5Qg&usqp=CAU'),
(4, 'Japanimation Jamboree', 2023, 'New York, USA', '2023-11-15', 18.50, 'Japan based Anime Writers and Producers,Otaku Summit, Cosplayers and Concerts', 'https://m.media-amazon.com/images/M/MV5BODUxMTNmZTAtNjQ4OC00NmM2LWJkMjgtOWE3MTIzM2RjMjgwXkEyXkFqcGdeQXVyMTE0MzQwMjgz._V1_QL75_UY281_CR18,0,500,281_.jpg'),
(5, 'Cosplay Carnival', 2023, 'Sydney, Australia', '2023-12-02', 22.00, 'Cosplayers meet and greet', 'https://www.animephproject.com/wp-content/uploads/2023/01/Cosplay-Carnival-2023.jpg'),
(7, 'AmazeCon', 2023, 'Banani', '2023-08-17', 500.00, 'Amaze to be Conned', 'https://pbs.twimg.com/media/ECcMkMMXsAAOCy_.jpg'),
(10, 'Initial D', 2024, 'Japan', '2023-08-31', 123.00, 'Initial D Collectors and Car shows', 'https://static.displate.com/280x392/displate/2020-06-12/3e86a46fd6bfba00d654055dd95915e0_de289f48f252fe1138ebb0cb16678ea7.jpg'),
(11, 'HelloKity', 2023, 'Dhaka', '2023-08-17', 500.00, 'hellokity Party', 'https://hellokitty45.com/cdn/shop/files/social-image.png?v=905385811671423901'),
(12, 'Kong Kong', 2023, 'Dhaka', '2023-08-16', 100.00, 'Kong vs Godzilla ', 'https://cdn.vox-cdn.com/thumbor/zD4ZTTBKutLuKAYr6CV1L3cjS0c=/0x0:2864x1200/1200x800/filters:focal(799x609:1257x1067)/cdn.vox-cdn.com/uploads/chorus_image/image/53591117/kongyell.0.jpg'),
(13, 'BRAC University', 2024, 'Dhaka', '2023-08-29', 90.00, 'New Campus', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Brac_University_Logo.png/432px-Brac_University_Logo.png'),
(14, 'Cowboy Bebop', 1993, 'USA', '2023-08-22', 100.00, 'COwboys ungabuga', 'https://img.i-scmp.com/cdn-cgi/image/fit=contain,width=1098,format=auto/sites/default/files/styles/1200x800/public/d8/images/canvas/2021/11/12/1386da4d-1371-405e-ab32-5077d43f76ba_a6043c1c.jpg?itok=a0A064Ea&v=1636702371');

-- --------------------------------------------------------

--
-- Table structure for table `Manga`
--

CREATE TABLE `Manga` (
  `manga_id` int(11) NOT NULL,
  `anime_name` varchar(255) DEFAULT NULL,
  `chapters` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Manga`
--

INSERT INTO `Manga` (`manga_id`, `anime_name`, `chapters`) VALUES
(1, 'Naruto', 'https://docs.google.com/file/d/0B9k2vgdoGoJ1SkZ0WXNsT2Mwa1k/view?resourcekey=0-wt0D3NSkSBapGz_IvxvweA'),
(2, 'One Piece', 'https://example.com/one_piece_chapters.pdf'),
(3, 'Attack on Titan', 'https://example.com/attack_on_titan_chapters.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `Movies`
--

CREATE TABLE `Movies` (
  `movie_id` int(11) NOT NULL,
  `anime_name` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `poster_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Movies`
--

INSERT INTO `Movies` (`movie_id`, `anime_name`, `duration`, `poster_url`) VALUES
(1, 'Naruto', 110, NULL),
(2, 'One Piece', 130, NULL),
(3, 'Attack on Titan', 115, NULL),
(6, 'Naruto Movie', 120, 'naruto_movie_poster_url');

-- --------------------------------------------------------

--
-- Table structure for table `Series`
--

CREATE TABLE `Series` (
  `series_id` int(11) NOT NULL,
  `anime_name` varchar(255) DEFAULT NULL,
  `episodes` int(11) DEFAULT NULL,
  `seasons` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Series`
--

INSERT INTO `Series` (`series_id`, `anime_name`, `episodes`, `seasons`) VALUES
(1, 'Naruto', 220, 5),
(2, 'One Piece', 1000, 21),
(3, 'Attack on Titan', 75, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `joining_date` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `joining_date`, `email`, `dob`, `role`) VALUES
(1, 'mina', 'qwerty', '2023-08-15', 'mina@gmail.com', '2018-06-15', 'client'),
(3, 'anika', 'zxcv', '2023-08-17', 'anika@gmail.com', '2003-02-13', 'client'),
(4, 'asif', 'werty', '2023-08-17', 'asif@gmail.com', '2005-10-13', 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Anime`
--
ALTER TABLE `Anime`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Manga`
--
ALTER TABLE `Manga`
  ADD PRIMARY KEY (`manga_id`),
  ADD KEY `anime_name` (`anime_name`);

--
-- Indexes for table `Movies`
--
ALTER TABLE `Movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `anime_name` (`anime_name`);

--
-- Indexes for table `Series`
--
ALTER TABLE `Series`
  ADD PRIMARY KEY (`series_id`),
  ADD KEY `anime_name` (`anime_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Manga`
--
ALTER TABLE `Manga`
  MODIFY `manga_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Movies`
--
ALTER TABLE `Movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Series`
--
ALTER TABLE `Series`
  MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Manga`
--
ALTER TABLE `Manga`
  ADD CONSTRAINT `manga_ibfk_1` FOREIGN KEY (`anime_name`) REFERENCES `Anime` (`name`);

--
-- Constraints for table `Movies`
--
ALTER TABLE `Movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`anime_name`) REFERENCES `Anime` (`name`);

--
-- Constraints for table `Series`
--
ALTER TABLE `Series`
  ADD CONSTRAINT `series_ibfk_1` FOREIGN KEY (`anime_name`) REFERENCES `Anime` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
