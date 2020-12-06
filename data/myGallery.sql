-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2020 at 06:44 AM
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
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myGallery`
--

INSERT INTO `myGallery` (`id`, `category`, `description`, `content`) VALUES
(1, 'Videography', 'Short documentary style film - Spring 2019', 'vid.mp4'),
(2, 'Motion Design', 'Sportsnet Football Intro - Cinema 4D', 'sportsnet.mp4'),
(3, 'Photography', 'Nuthatches - Fanshawe Conservation Area - Spring 2019', 'bird.jpg'),
(4, 'Motion Design', 'Disney Channel TV Bumper - Cinema 4D & After Effects', 'kids.mp4'),
(5, 'Photography', 'Red-winged Blackbird - Lambton Shores, ON', 'bird1.jpg'),
(6, 'Photography', 'Red-winged Blackbird - Lambton Shores, ON', 'bird3.jpg');

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
