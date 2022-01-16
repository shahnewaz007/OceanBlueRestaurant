-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2020 at 06:07 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocean_blue_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(15) NOT NULL,
  `food_title` varchar(50) NOT NULL,
  `food_image` varchar(55) DEFAULT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_title`, `food_image`, `price`) VALUES
(1, 'Thai Breakfast', 'egg.jpg', 180),
(2, 'Beef Pizza 8\"', 'pizza.jpg', 400),
(3, 'French Fry', 'french fry.jpg', 120),
(4, 'Appetizer Bread Chicken', 'appetizer bread chicken.jpg', 450),
(5, 'Beef Burger', 'beef burger.jpg', 150),
(6, 'Chicken Biryani', 'biryani.jpg', 120),
(7, 'Cup Cake', 'cake.jpg', 50),
(8, 'chicken fry', 'chicken fry.jpg', 120),
(9, 'Chicken Swrma', 'chicken swrma.jpeg', 120),
(10, 'Beef Biriyani', 'chickenBiriyani.jpg', 120),
(11, 'Donut', 'donat.jpg', 80),
(12, 'Grill Chicken', 'grill.jpeg', 150),
(13, 'Mini Burger', 'mini burger.jpg', 40),
(14, 'Chicken wings', 'wings.jpg', 90),
(15, 'Chicken Swrma', 'swrma.jpeg', 130),
(16, 'Rice Bowl', 'rice bowl.jpeg', 130),
(17, 'Chinese Breakfast', 'Chinese Breakfast.jpg', 150),
(18, 'Chicken Pizza', 'Chicken Pizza.jpg', 290);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `Name`, `phone`, `email`, `message`) VALUES
(1, 'AyonMahmud', '01785499257', 'ayonmahmud53@gmail.com', 'fghfhfhdffgdhdfh'),
(2, 'AyonMahmud', '01785499257', 'ayonmahmud53@gmail.com', 'Hey, Dummy Message'),
(3, 'AyonMahmud', '01785499257', 'ayonmahmud53@gmail.com', 'kjdfklgfd');

-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE `orderlist` (
  `order_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `Date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `item_name` varchar(50) NOT NULL,
  `quantity` int(15) NOT NULL,
  `price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderlist`
--

INSERT INTO `orderlist` (`order_id`, `user_id`, `Date_time`, `item_name`, `quantity`, `price`, `total_price`) VALUES
(97, 13, '2019-10-13 03:30:36', 'Special Coffee ', 1, 200, 200),
(98, 13, '2019-10-13 03:30:36', 'Special Tripple Peti Burger ', 1, 300, 300),
(99, 12, '2019-10-13 03:31:10', 'Beef Burger', 1, 150, 150),
(100, 12, '2019-10-13 03:32:41', 'Beef Pizza 8', 1, 400, 400),
(101, 12, '2019-10-13 03:32:41', 'Chicken Biryani', 1, 120, 120),
(102, 12, '2019-10-13 09:43:59', 'Beef Pizza 8', 1, 400, 400),
(103, 12, '2019-10-13 09:43:59', 'Appetizer Bread Chicken', 1, 450, 450),
(104, 16, '2019-10-13 10:17:16', 'Special Love Coffee', 1, 250, 250),
(105, 16, '2019-10-13 10:20:21', 'Special Love Coffee', 1, 250, 250),
(106, 18, '2019-11-06 13:45:09', 'Thai Breakfast', 2, 180, 360);

-- --------------------------------------------------------

--
-- Table structure for table `specialfood`
--

CREATE TABLE `specialfood` (
  `food_id` int(11) NOT NULL,
  `food_title` varchar(50) NOT NULL,
  `food_image` varchar(55) NOT NULL,
  `price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialfood`
--

INSERT INTO `specialfood` (`food_id`, `food_title`, `food_image`, `price`) VALUES
(1, 'Special Love Coffee', 'coffee2.jpg', 250),
(2, 'Special Coffee ', 'cofee.jpg', 200),
(3, 'Special Tripple Peti Burger ', 's_burger.jpg', 300);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`) VALUES
(1, 'Samsung J2 Pro', '1.jpg', 100.00),
(2, 'HP Notebook', '2.jpg', 299.00),
(3, 'Panasonic T44 Lite', '3.jpg', 125.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `user_password`, `phone`, `address`) VALUES
(12, 'Ayon', 'Mahmud', 'ayonmahmud53@gmail.com', 'acf7ef943fdeb3cbfed8dd0d8f584731', '01785499257', 'WapdaRoad'),
(13, 'Mahadi', 'Hasan', 'mahadi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01521424853', 'jgdfsg'),
(14, 'Samsul', 'Islam', 'samsul@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '123456', 'Hazaribag'),
(15, 'Shariar', 'Mahmud', 'shahnayas@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '123456', 'Mirbag'),
(16, 'A', 'B', 'a@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '123456', 'a'),
(17, 'a', 'b', 'a@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '123456', 'a'),
(18, 'Ayon', 'Mahmud', 'ayonmahmud53@gmail.com', '202cb962ac59075b964b07152d234b70', '111', 'TGJ'),
(19, 'Ayon', 'Mahmud', 'ayonmahmud53@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '01712519906', 'hjh'),
(20, 'Ayon', 'Mahmud', 'ayonmahmud53@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '565', '54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `specialfood`
--
ALTER TABLE `specialfood`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `order_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `specialfood`
--
ALTER TABLE `specialfood`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
