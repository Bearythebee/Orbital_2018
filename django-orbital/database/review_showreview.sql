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
-- Table structure for table `review_showreview`
--

CREATE TABLE `review_showreview` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `review` longtext NOT NULL,
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_showreview`
--

INSERT INTO `review_showreview` (`id`, `name`, `review`, `username`) VALUES
(1, 'Brooklyn Nine-Nine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a pharetra diam. Nunc porttitor pharetra libero, ac fringilla ex euismod ut. Integer tempus pharetra ultricies. Pellentesque vestibulum libero eros, ut elementum quam lacinia eget. Nam sit amet lacus non odio lacinia efficitur in vitae neque. Aliquam erat volutpat. Sed sed lacus sed mauris posuere consectetur. Maecenas sed ipsum sed mi finibus posuere. Sed et tincidunt turpis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n\r\nMorbi tristique sed magna nec blandit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin consectetur tristique leo, a suscipit nulla rhoncus tincidunt. Sed interdum lectus sit amet massa cursus dapibus. In hac habitasse platea dictumst. Nulla quis quam molestie, fermentum quam in, viverra nulla. Nam non mauris cursus, iaculis nulla quis, semper elit. Morbi rhoncus dolor a faucibus tristique. Nulla vel dui metus. Morbi aliquam dictum commodo. Praesent faucibus risus at urna placerat, nec bibendum ex congue. Proin sit amet nisi at ipsum efficitur molestie non sed magna. Nullam at condimentum quam, vel mollis orci. Ut id sodales lectus. Nullam interdum eu enim non aliquet. Duis sit amet nisi a leo accumsan efficitur.\r\n\r\nNullam purus ipsum, tincidunt in ipsum nec, ullamcorper suscipit lectus. Nam consectetur turpis in ligula condimentum, sit amet commodo est consequat. Pellentesque quis pulvinar eros, vitae dapibus libero. Sed nec semper neque. Proin imperdiet ut est non tempus. Nunc a lectus dui. Maecenas odio ante, tempor id dictum rutrum, porttitor eu lectus. Phasellus ut augue eu diam sollicitudin pellentesque in id eros. Aliquam et purus erat. Aenean fringilla condimentum orci, eget fermentum sem aliquet non. Aenean at sollicitudin magna. Phasellus risus leo, euismod vitae placerat a, venenatis eu felis. Nulla ut justo eu diam efficitur blandit non at libero.\r\n\r\nUt ac porttitor justo. Duis rhoncus tempor rhoncus. Nulla at sodales sapien, ac vestibulum arcu. Curabitur in efficitur diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at pharetra diam. Integer vitae aliquam metus, a dictum diam.\r\n\r\nDonec semper, tortor ac gravida commodo, ipsum est mattis mauris, pharetra pharetra ante metus id nisl. Etiam leo libero, pellentesque a ultrices a, iaculis at arcu. Proin molestie nunc quis diam malesuada eleifend. Phasellus lobortis vestibulum massa. Donec aliquet convallis lectus, a viverra enim iaculis id. Donec auctor sapien vitae odio finibus consectetur. Donec rutrum finibus sem eu ullamcorper. Aenean feugiat faucibus velit quis tincidunt.', 'Anonymous'),
(2, 'Brooklyn Nine-Nine', 'Qui diam libris ei, vidisse incorrupte at mel. His euismod salutandi dissentiunt eu. Habeo offendit ea mea. Nostro blandit sea ea, viris timeam molestiae an has. At nisl platonem eum. Vel et nonumy gubergren, ad has tota facilis probatus. Ea legere legimus tibique cum, sale tantas vim ea, eu vivendo expetendis vim. Voluptua vituperatoribus et mel, ius no elitr deserunt mediocrem. Mea facilisi torquatos ad.\r\n                ', 'Sample User'),
(3, 'Cobra Kai ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a pharetra diam. Nunc porttitor pharetra libero, ac fringilla ex euismod ut. Integer tempus pharetra ultricies. Pellentesque vestibulum libero eros, ut elementum quam lacinia eget. Nam sit amet lacus non odio lacinia efficitur in vitae neque. Aliquam erat volutpat. Sed sed lacus sed mauris posuere consectetur. Maecenas sed ipsum sed mi finibus posuere. Sed et tincidunt turpis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Sample'),
(4, 'Cobra Kai ', 'Morbi tristique sed magna nec blandit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin consectetur tristique leo, a suscipit nulla rhoncus tincidunt. Sed interdum lectus sit amet massa cursus dapibus. In hac habitasse platea dictumst. Nulla quis quam molestie, fermentum quam in, viverra nulla. Nam non mauris cursus, iaculis nulla quis, semper elit. Morbi rhoncus dolor a faucibus tristique. Nulla vel dui metus. Morbi aliquam dictum commodo. Praesent faucibus risus at urna placerat, nec bibendum ex congue. Proin sit amet nisi at ipsum efficitur molestie non sed magna. Nullam at condimentum quam, vel mollis orci. Ut id sodales lectus. Nullam interdum eu enim non aliquet. Duis sit amet nisi a leo accumsan efficitur.', 'Sample Review'),
(5, 'Cobra Kai ', 'Nullam purus ipsum, tincidunt in ipsum nec, ullamcorper suscipit lectus. Nam consectetur turpis in ligula condimentum, sit amet commodo est consequat. Pellentesque quis pulvinar eros, vitae dapibus libero. Sed nec semper neque. Proin imperdiet ut est non tempus. Nunc a lectus dui. Maecenas odio ante, tempor id dictum rutrum, porttitor eu lectus. Phasellus ut augue eu diam sollicitudin pellentesque in id eros. Aliquam et purus erat. Aenean fringilla condimentum orci, eget fermentum sem aliquet non. Aenean at sollicitudin magna. Phasellus risus leo, euismod vitae placerat a, venenatis eu felis. Nulla ut justo eu diam efficitur blandit non at libero.', 'Test Review'),
(6, 'Brooklyn Nine-Nine', 'This is a sample review. Please ignore.', 'Test Review'),
(7, 'The Good Place', 'Donec semper, tortor ac gravida commodo, ipsum est mattis mauris, pharetra pharetra ante metus id nisl. Etiam leo libero, pellentesque a ultrices a, iaculis at arcu. Proin molestie nunc quis diam malesuada eleifend. Phasellus lobortis vestibulum massa. Donec aliquet convallis lectus, a viverra enim iaculis id. Donec auctor sapien vitae odio finibus consectetur. Donec rutrum finibus sem eu ullamcorper. Aenean feugiat faucibus velit quis tincidunt.', 'Sample');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `review_showreview`
--
ALTER TABLE `review_showreview`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `review_showreview`
--
ALTER TABLE `review_showreview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
