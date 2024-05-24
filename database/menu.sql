-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 24, 2024 at 01:26 PM
-- Server version: 5.7.33
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kiosk_menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` int(255) NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `item_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`item_id`, `item_name`, `item_price`, `item_category`, `item_image`) VALUES
(1, 'McChicken Voordeelmenu', 15, 'voordeelmenu', 'McChicken_Voordeelmenu.png'),
(2, 'Big Mac Voordeelmenu', 15, 'voordeelmenu', 'Big_Mac_Voordeelmenu.png'),
(3, 'cheeseburger voordeelmenu', 15, 'voordeelmenu', 'Cheeseburger_McSmart_menu.png'),
(4, 'chili chicken voordeelmenu', 15, 'voordeelmenu', 'Chili_Chicken_McSmart_menu.png'),
(5, 'Double big tasty voordeelmenu', 15, 'voordeelmenu', 'Double_Big_Tasty_Voordeelmenu.png'),
(6, 'Double quarter pounder voordeelmenu', 15, 'voordeelmenu', 'Double_Quarter_Pounder_Voordeelmenu.png'),
(7, 'Fillet o fish voordeelmenu', 15, 'voordeelmenu', 'Filet_O_Fish_Voordeelmenu.png'),
(8, 'Homestyle crispy chicken honey mustard voordeelmenu', 15, 'voordeelmenu', 'Homestyle_Crispy_Chicken_Honey_Mustard_Voordeelmenu.png'),
(9, 'Fillet o fish deluxe', 9, 'vis', 'Filet_O_Fish_Deluxe.png'),
(10, 'Filet o fish', 8, 'vis', 'Filet_O_Fish.png'),
(11, 'McFish', 10, 'vis', 'McFish.png'),
(12, 'Chicken mcnuggets 4', 6, 'kip', 'Chicken_McNuggets_four.png'),
(13, 'Chicken mcnuggets 9', 10, 'kip', 'Chicken_McNuggets_nine.png'),
(14, 'Chicken mcnuggets 20', 16, 'kip', 'Chicken_McNuggets_twenty.png'),
(15, 'Chicken tenders', 5, 'kip', 'Chicken_Tenders.png'),
(16, 'Chili chicken', 12, 'kip', 'Chili_Chicken.png'),
(17, 'Double chili chicken', 12, 'kip', 'Double_Chili_Chicken.png'),
(18, 'Chicken salad honey', 12, 'salades', 'Chicken_Salad_Honey_Mustard.png'),
(19, 'Side Salad', 8, 'salades', 'Side_Salad.png'),
(20, 'Veggie chicken salad honey mustard', 13, 'salades', 'Veggie_Chicken_Salad_Honey_Mustard.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
