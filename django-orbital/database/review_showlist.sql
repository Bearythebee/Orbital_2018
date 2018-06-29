-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2018 at 08:31 PM
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
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_showlist`
--

INSERT INTO `review_showlist` (`id`, `name`) VALUES
(1, 'Cobra Kai'),
(2, 'Krypton'),
(3, 'Troy: Fall of a City'),
(4, 'Black Lightning'),
(5, '9-1-1'),
(6, 'Knightfall'),
(7, 'Future Man'),
(8, 'The Punisher'),
(9, 'S.W.A.T.'),
(10, 'Britannia'),
(11, 'Runaways'),
(12, 'The Gifted'),
(13, 'SEAL Team'),
(14, 'The Brave'),
(15, 'Star Trek: Discovery'),
(16, 'Inhumans'),
(17, 'The Tick'),
(18, 'The Defenders'),
(19, 'Castlevania'),
(20, 'Money Heist'),
(21, 'Brooklyn Nine-Nine'),
(22, 'Suits'),
(23, 'Roseanne'),
(24, 'Arrested Development'),
(25, 'The Office'),
(26, 'Modern Family'),
(27, 'Friends'),
(28, 'Shameless'),
(29, 'The Big Bang Theory'),
(30, 'Silicon Valley'),
(31, 'New Girl'),
(32, 'Unbreakable Kimmy Schmidt'),
(33, 'Orange Is the New Black'),
(34, 'Atlanta'),
(35, 'How I Met Your Mother'),
(36, 'Jane the Virgin'),
(37, 'Parks and Recreation'),
(38, 'Mom'),
(39, 'The Middle'),
(40, 'Two and a Half Men'),
(41, 'Riverdale'),
(42, 'Animal Kingdom'),
(43, 'Lucifer'),
(44, 'Law & Order: Special Victims Unit'),
(45, 'The Americans'),
(46, 'Criminal Minds'),
(47, 'Gotham'),
(48, 'NCIS'),
(49, 'The Blacklist'),
(50, 'Peaky Blinders'),
(51, 'Elementary'),
(52, 'Sons of Anarchy'),
(53, 'Homeland'),
(54, 'Breaking Bad'),
(55, 'Sherlock'),
(56, 'Quantico'),
(57, 'Dexter'),
(58, 'Narcos'),
(59, 'Prison Break'),
(60, 'Blue Bloods'),
(61, 'Supernatural'),
(62, 'Fear the Walking Dead'),
(63, 'The Walking Dead'),
(64, 'Stranger Things'),
(65, 'The Originals'),
(66, 'American Horror Story'),
(67, 'iZombie'),
(68, 'The Vampire Diaries'),
(69, 'Teen Wolf'),
(70, 'The Terror'),
(71, 'Grimm'),
(72, 'Bates Motel'),
(73, 'It'),
(74, 'Hannibal'),
(75, 'The Strain'),
(76, 'Z Nation'),
(77, 'Penny Dreadful'),
(78, 'Ash vs Evil Dead'),
(79, 'Scream'),
(80, 'Slasher'),
(81, 'Haters Back Off!'),
(82, 'The Good Place'),
(83, 'You Me Her'),
(84, 'Love'),
(85, 'Poldark'),
(86, 'Younger'),
(87, 'Man Seeking Woman'),
(88, 'Togetherness'),
(89, 'Queer as Folk'),
(90, 'A to Z'),
(91, 'You\'re the Worst'),
(92, 'Young & Hungry'),
(93, 'Chasing Life'),
(94, 'Faking It'),
(95, 'About a Boy'),
(96, 'Mistresses'),
(97, 'Please Like Me'),
(98, 'The Carrie Diaries'),
(99, 'Beauty and the Beast'),
(100, 'Nashville');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
