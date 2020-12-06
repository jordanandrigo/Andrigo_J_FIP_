-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2020 at 04:18 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `myGallery`
--

CREATE TABLE `myGallery` (
  `id` int(12) NOT NULL,
  `category` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `img` text NOT NULL,
  `display` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myGallery`
--

INSERT INTO `myGallery` (`id`, `category`, `description`, `img`, `display`) VALUES
(1, 'Photography', 'Nuthatches - Fanshawe Conservation Area - Spring 2019', 'bird.jpg', 'bird.jpg'),
(2, 'Motion Design', 'Spportsnet Football Intro - Cinema 4d & After Effects', 'sportsnet.jpg', 'sportsnet.mp4'),
(3, 'Photography', 'Redwinged Balckbird - Lambton Shores, ON', 'bird1.jpg', 'bird1.jpg'),
(4, 'Videography', 'Short Documentary Style film - Adobe Premiere Pro', 'vid.jpg', 'vid.mp4'),
(5, 'Photography', 'Redwinged Blackbird - Lambton Shores, ON', 'bird2.jpg', 'bird2.jpg'),
(6, 'Motion Design', 'Disney Channel TV Bumper - Cinema 4D & After Effects', 'kids.jpg', 'kids.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myGallery`
--
ALTER TABLE `myGallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myGallery`
--
ALTER TABLE `myGallery`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
