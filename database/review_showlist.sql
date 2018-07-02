-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2018 at 07:11 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `review_showlist`
--

CREATE TABLE `review_showlist` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `rating` decimal(11,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_showlist`
--

INSERT INTO `review_showlist` (`id`, `name`, `rating`) VALUES
(1, 'Cobra Kai', '9.0'),
(2, 'Krypton', '7.2'),
(3, 'Troy: Fall of a City', '3.8'),
(4, 'Black Lightning', '6.5'),
(5, '9-1-1', '7.4'),
(6, 'Knightfall', '6.5'),
(7, 'Future Man', '7.9'),
(8, 'The Punisher', '8.7'),
(9, 'S.W.A.T.', '6.5'),
(10, 'Britannia', '6.6'),
(11, 'Runaways', '7.3'),
(12, 'The Gifted', '7.7'),
(13, 'SEAL Team', '6.9'),
(14, 'The Brave', '7.5'),
(15, 'Star Trek: Discovery', '7.4'),
(16, 'Inhumans', '5.1'),
(17, 'The Tick', '7.4'),
(18, 'The Defenders', '7.5'),
(19, 'Castlevania', '8.0'),
(20, 'Money Heist', '8.7'),
(21, 'Brooklyn Nine-Nine', '8.3'),
(22, 'Suits', '8.6'),
(23, 'Roseanne', '7.0'),
(24, 'Arrested Development', '8.9'),
(25, 'The Office', '8.8'),
(26, 'Modern Family', '8.5'),
(27, 'Friends', '8.9'),
(28, 'Shameless', '8.7'),
(29, 'The Big Bang Theory', '8.3'),
(30, 'Silicon Valley', '8.6'),
(31, 'New Girl', '7.7'),
(32, 'Unbreakable Kimmy Schmidt', '7.8'),
(33, 'Orange Is the New Black', '8.2'),
(34, 'Atlanta', '8.6'),
(35, 'How I Met Your Mother', '8.4'),
(36, 'Jane the Virgin', '7.8'),
(37, 'Parks and Recreation', '8.6'),
(38, 'Mom', '7.2'),
(39, 'The Middle', '7.5'),
(40, 'Two and a Half Men', '7.1'),
(41, 'Riverdale', '7.6'),
(42, 'Animal Kingdom', '8.1'),
(43, 'Lucifer', '8.2'),
(44, 'Law & Order: Special Victims Unit', '8.0'),
(45, 'The Americans', '8.3'),
(46, 'Criminal Minds', '8.1'),
(47, 'Gotham', '7.9'),
(48, 'NCIS', '7.9'),
(49, 'The Blacklist', '8.1'),
(50, 'Peaky Blinders', '8.8'),
(51, 'Elementary', '7.9'),
(52, 'Sons of Anarchy', '8.6'),
(53, 'Homeland', '8.4'),
(54, 'Breaking Bad', '9.5'),
(55, 'Sherlock', '9.2'),
(56, 'Quantico', '6.8'),
(57, 'Dexter', '8.7'),
(58, 'Narcos', '8.9'),
(59, 'Prison Break', '8.4'),
(60, 'Blue Bloods', '7.5'),
(61, 'Supernatural', '8.5'),
(62, 'Fear the Walking Dead', '7.0'),
(63, 'The Walking Dead', '8.4'),
(64, 'Stranger Things', '8.9'),
(65, 'The Originals', '8.3'),
(66, 'American Horror Story', '8.1'),
(67, 'iZombie', '8.0'),
(68, 'The Vampire Diaries', '7.8'),
(69, 'Teen Wolf', '7.7'),
(70, 'The Terror', '8.2'),
(71, 'Grimm', '7.8'),
(72, 'Bates Motel', '8.2'),
(73, 'It', '6.9'),
(74, 'Hannibal', '8.6'),
(75, 'The Strain', '7.4'),
(76, 'Z Nation', '6.7'),
(77, 'Penny Dreadful', '8.2'),
(78, 'Ash vs Evil Dead', '8.5'),
(79, 'Scream', '7.3'),
(80, 'Slasher', '6.6'),
(81, 'Haters Back Off!', '6.1'),
(82, 'The Good Place', '8.1'),
(83, 'You Me Her', '7.1'),
(84, 'Love', '7.7'),
(85, 'Poldark', '8.4'),
(86, 'Younger', '7.8'),
(87, 'Man Seeking Woman', '7.7'),
(88, 'Togetherness', '7.5'),
(89, 'Queer as Folk', '8.3'),
(90, 'A to Z', '6.8'),
(91, 'You\'re the Worst', '8.2'),
(92, 'Young & Hungry', '7.5'),
(93, 'Chasing Life', '7.9'),
(94, 'Faking It', '7.5'),
(95, 'About a Boy', '7.5'),
(96, 'Mistresses', '7.1'),
(97, 'Please Like Me', '8.4'),
(98, 'The Carrie Diaries', '7.0'),
(99, 'Beauty and the Beast', '7.2'),
(100, 'Nashville', '7.7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `review_showlist`
--
ALTER TABLE `review_showlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `review_showlist`
--
ALTER TABLE `review_showlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
