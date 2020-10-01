-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2018 at 10:57 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students arena`
--

-- --------------------------------------------------------

--
-- Table structure for table `heading`
--

CREATE TABLE `heading` (
  `id` int(10) NOT NULL,
  `title` varchar(45) NOT NULL,
  `visible` tinyint(2) NOT NULL,
  `extension` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `heading`
--

INSERT INTO `heading` (`id`, `title`, `visible`, `extension`) VALUES
(1, 'books', 1, 'sell_books'),
(2, 'instruments', 1, 'sell_instruments'),
(3, 'tiffin', 1, 'service'),
(4, 'accomodation', 1, 'service');

-- --------------------------------------------------------

--
-- Table structure for table `postad`
--

CREATE TABLE `postad` (
  `r_id` int(5) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `title` text NOT NULL,
  `category` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(1000) NOT NULL,
  `price` int(10) NOT NULL,
  `year` int(4) NOT NULL,
  `field` text NOT NULL,
  `weblink` varchar(30) NOT NULL,
  `accommodation` text NOT NULL,
  `username` text NOT NULL,
  `contactno` int(255) NOT NULL,
  `area` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postad`
--

INSERT INTO `postad` (`r_id`, `cat_id`, `title`, `category`, `description`, `image`, `price`, `year`, `field`, `weblink`, `accommodation`, `username`, `contactno`, `area`) VALUES
(1, 1, 'my books', 'Books', 'my first books on ad', 'Array', 650, 3, 'CE', 'olx.in', 'Pg', 'amanmistry18@gmail.com', 2147483647, 'wadi vadodara'),
(2, 0, 'jignesh tiffin service', 'Tiffin', 'testy food at your door ', 'Array', 2600, 3, 'IT', 'olx.in', 'Pg', 'amanmistry15@yahoo.com', 2147483647, 'danteshwar'),
(3, 0, '', 'Books', '', 'Array', 0, 1, 'Mechanical', '', 'hostel', '', 0, ''),
(4, 0, 'accommodation provide for students', 'Accommodation', 'hello,we provide accommodation fasilities for college students', 'Array', 6000, 3, 'EC', 'olx.in', 'Pg', 'amanmistry18@gmail.com', 2147483647, 'mangalpur'),
(5, 0, 'aiyub KING', 'Books', 'aiyub king is best ', 'Array', 7000, 3, 'CE', 'aiyubking.in', 'Pg', 'aiyub king', 2147483647, 'mandvi'),
(6, 0, 'visio calculatter', 'Instruments', '1 year used calculatter in very good condition', 'Array', 300, 0, 'Information Technology(IT)', 'Satudentsarena.in', 'PG', 'aman mistry', 2147483647, ''),
(7, 0, 'the lost boy ', 'Books', 'the lost boy journy...', 'Array', 350, 0, 'Information Technology(IT)', 'thelostboy.in', 'Hostel', 'jigneshthakur', 2147483647, 'danteshwar vadodara'),
(8, 0, 'hostel', 'Accommodation', 'here is comfort zone as your wish', 'Array', 0, 0, 'Select Field', 'www.hostel.com', 'Hostel', 'abhi', 2147483647, 'pratapnagar'),
(9, 0, 'veg food', 'Tiffin', 'we are provide healthy & testy veg food.', 'Array', 230, 0, 'Computer Enginnering(CE)', 'vegfood.com', 'PG', 'aman mistry', 1234569870, 'wadi vadodara'),
(10, 0, 'your home food', 'Tiffin', 'home made food', 'Array', 360, 0, 'Computer Enginnering(CE)', 'yourfood.in', 'PG', 'kabir', 2147483647, 'fategunj'),
(11, 0, 'mybooks', 'Books', 'dfdffsd', 'Array', 50, 0, 'Information Technology(IT)', 'olx.in', 'Hostel', 'jignesh', 2147483647, 'wadi vadodara'),
(12, 0, 'abcd', 'Books', 'ssddAD', 'Array', 50, 0, 'Information Technology(IT)', 'olx.in', 'Hostel', 'aman mistry', 2147483647, 'wadi vadodara'),
(13, 0, 'abcd', 'Books', 'kkkkkk', 'Array', 100, 0, 'Information Technology(IT)', 'olx.in', 'Hostel', 'jignesh', 2147483647, 'wadi vadodara');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `r_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactno` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`r_id`, `username`, `email`, `password`, `contactno`) VALUES
(1, 'aman', '', '1234', 1111111111),
(2, 'jignesh', 'amanmistry18@gmail.com', '$2y$10$f8rPZOZjs.6mlpzs0XeGEurz273yGA3AT6jhmHH0QPTPrsWBGn9Sy', 2147483647),
(3, 'mistry', 'amanmistry15@yahoo.com', '$2y$10$WxziM0evwXGPToEzfaeSXudLfsrz/K21yw6dXJMrzNxlC3VkIj9Wy', 2147483647),
(4, 'krishna', 'krishna@gmail.com', '$2y$10$MmM8SOkC4t91GbGoTzFw2ua/0Og21hWCptUuprABLWH40GOxQmbtu', 1234567890),
(5, 'kabir', 'amanmistry8@gmail.com', '$2y$10$tE4ou/TydeUxZh.1LTOjROH6UmJqTr81sc0OLPrdmPTiurNf6QO.K', 1234567890),
(6, 'shivani', 'shivanipatel18@yahoo.com', '$2y$10$QMVNinezq/eYnw2M8L9qZO/TErGutmqUIawiP/Zfbu06ijrwz2tcO', 2147483647),
(7, 'shivanimistry', 'shivanipatel18@gmail.com', '$2y$10$gjpNlCXslmvnBX9B9WeR3uUBXnZT0V6NB5Ig50QC9ddsnguv7aGvO', 2147483647),
(8, 'gitanjalitillu', 'gitanjalitillu@hotmail.com', '$2y$10$DjYmzCHfEnvTdepyJJhF4e2GuOHb2sw/WfqE/9s7tWwMhTJzOPkYG', 123456790),
(9, 'shivanimore', 'shivanimore@gmail.com', '4375a23dfc4b20cb97c25ebe3b52488c61293ac2', 2147483647),
(10, 'parth', 'parthmistry454@yahoo.com', 'd4d4b882ff08081684570d22944c24dc09b5c904', 2147483647),
(11, 'aiyub', 'aiyub@gmail.com', '$2y$10$Kld2PahiZUgrfqdW3wTBUOkEEDbx/8w90X1/TIu22deNWWtLIypOi', 123456789),
(12, 'jaypatel', 'jaypatel@gmail.com', '$2y$10$9tKAnVFM4otM07uNF0s/huwikfCIB8bHekX/9WN9500vVkHKQnfaO', 2147483647),
(13, 'janvi', 'janvis@gmail.com', '$2y$10$No1qO4B/lRgGwf2P2xwN9eZebXFLKOhaZzlqgDqmyoUOLx1MBuxlq', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `sub_heading`
--

CREATE TABLE `sub_heading` (
  `id` int(10) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `sub_title` varchar(45) NOT NULL,
  `position` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_heading`
--

INSERT INTO `sub_heading` (`id`, `sub_id`, `sub_title`, `position`) VALUES
(1, 1, 'books', 1),
(2, 2, 'instruments', 2),
(3, 3, 'tiffin', 3),
(4, 4, 'accomodation', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `heading`
--
ALTER TABLE `heading`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postad`
--
ALTER TABLE `postad`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `sub_heading`
--
ALTER TABLE `sub_heading`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `heading`
--
ALTER TABLE `heading`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `postad`
--
ALTER TABLE `postad`
  MODIFY `r_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `r_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `sub_heading`
--
ALTER TABLE `sub_heading`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `postad`
--
ALTER TABLE `postad`
  ADD CONSTRAINT `postad_idfk` FOREIGN KEY (`r_id`) REFERENCES `register` (`r_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
