-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 23, 2019 at 04:38 AM
-- Server version: 5.7.26
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrix`
--

-- --------------------------------------------------------

--
-- Table structure for table `matrix`
--

DROP TABLE IF EXISTS `matrix`;
CREATE TABLE IF NOT EXISTS `matrix` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `depth` tinyint(4) UNSIGNED NOT NULL DEFAULT '3' COMMENT 'Уровни матрицы',
  `pow` tinyint(4) UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Вид матрицы (например двоичная)',
  `date_create` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Дата создания',
  `date_close` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Дата закрытия',
  `filled` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Матрица поделена',
  `parent_id` int(11) UNSIGNED DEFAULT NULL COMMENT 'Идентификатор родительской матрицы',
  PRIMARY KEY (`id`),
  KEY `matrix_alias_id` (`id`),
  KEY `FK_matrix_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Матрицы';

-- --------------------------------------------------------

--
-- Table structure for table `member_log`
--

DROP TABLE IF EXISTS `member_log`;
CREATE TABLE IF NOT EXISTS `member_log` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_log`
--

INSERT INTO `member_log` (`id`, `name`, `parent_id`) VALUES
(335, 'Hiten Pingolia', 0),
(336, 'Ramesh kumar', 335),
(337, 'Shyam lal', 336),
(338, 'Chander Prakash', 335),
(339, 'Rajesh', 335),
(340, 'Mahesh', 339),
(341, 'Mahendra singh', 338),
(342, 'Rakesh kumar', 341),
(343, 'Sanjay', 341);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` text NOT NULL,
  `member_id` text NOT NULL,
  `member_name` text NOT NULL,
  `product_id` text NOT NULL,
  `qty` text NOT NULL,
  `is_igst` text NOT NULL,
  `unit_price` text NOT NULL,
  `create_date` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `member_id`, `member_name`, `product_id`, `qty`, `is_igst`, `unit_price`, `create_date`) VALUES
(242, '03351527834133', '335', 'Hiten Pingolia', '234263', '1', 'undefined', '45000', '2018-06-01 08:22:13'),
(243, '03351527834332', '335', 'Hiten Pingolia', '234262', '1', 'undefined', '20000', '2018-06-01 08:25:32'),
(245, '03351527834508', '335', 'Bhawani Singh', '234261', '1', 'undefined', '15000', '2018-06-01 08:28:28'),
(246, '03351527834551', '335', 'Bhawani', '234261', '1', 'undefined', '15000', '2018-06-01 08:29:11'),
(247, '03361527834641', '336', 'Ramesh kumar', '234263', '1', 'undefined', '45000', '2018-06-01 08:30:41'),
(248, '03371527834720', '337', 'Shyam lal', '234260', '1', 'undefined', '10000', '2018-06-01 08:32:00'),
(249, '03381527834813', '338', 'Chander Prakash', '234262', '1', 'undefined', '20000', '2018-06-01 08:33:33'),
(250, '03391527835036', '339', 'Rajesh', '234261', '1', 'undefined', '15000', '2018-06-01 08:37:16'),
(251, '03401527835071', '340', 'Mahesh', '234263', '1', 'undefined', '45000', '2018-06-01 08:37:51'),
(252, '03411527835114', '341', 'Mahendra singh', '234260', '1', 'undefined', '10000', '2018-06-01 08:38:34'),
(253, '03421527835156', '342', 'Rakesh kumar', '234262', '1', 'undefined', '20000', '2018-06-01 08:39:16'),
(254, '03431527835180', '343', 'Sanjay', '234262', '1', 'undefined', '20000', '2018-06-01 08:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `type` text NOT NULL,
  `ProductName` text NOT NULL,
  `ProductCategory` text NOT NULL,
  `Tax` text NOT NULL,
  `sgst` float NOT NULL,
  `cgst` float NOT NULL,
  `igst` float NOT NULL,
  `Available_qty` int(10) NOT NULL,
  `SKU` text NOT NULL,
  `Price` int(11) NOT NULL,
  `hsn` varchar(20) NOT NULL,
  `sac` varchar(20) NOT NULL,
  `SalePrice` int(11) NOT NULL,
  `description` text NOT NULL,
  `productImage` text NOT NULL,
  `company_name` text NOT NULL,
  `company_email` text NOT NULL,
  `company_phone` text NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `Pincode` text NOT NULL,
  `company_address` text NOT NULL,
  `ip_address` text NOT NULL,
  `create_date` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=234265 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `type`, `ProductName`, `ProductCategory`, `Tax`, `sgst`, `cgst`, `igst`, `Available_qty`, `SKU`, `Price`, `hsn`, `sac`, `SalePrice`, `description`, `productImage`, `company_name`, `company_email`, `company_phone`, `City`, `State`, `Pincode`, `company_address`, `ip_address`, `create_date`) VALUES
(234260, 133, '', 'Product 1', 'Category 2', '', 5, 2, 1, 10, 'KJO8754', 10000, '', '', 10000, 'product desctrion ', 'test_-_Copy_(2).png', '', '', '', '', '', '', '', '::1', '2018-06-01 08:15:03'),
(234261, 133, '', 'Product 2', 'Category 3', '', 5, 2, 1, 10, 'KJO8754', 15000, '', '', 15000, 'product desctrion ', 'test_-_Copy_(2).png', '', '', '', '', '', '', '', '::1', '2018-06-01 08:16:48'),
(234262, 133, '', 'Product 3', 'Category 4', '', 5, 2, 1, 10, 'KJO8755', 20000, '', '', 20000, 'product desctrion ', 'test_-_Copy_(2).png', '', '', '', '', '', '', '', '::1', '2018-06-01 08:17:02'),
(234263, 133, '', 'Product 4', 'Category 5', '', 5, 2, 1, 10, 'KJO8754', 45000, '', '', 45000, 'product desctrion ', 'test_-_Copy_(2).png', '', '', '', '', '', '', '', '::1', '2018-06-01 08:17:16'),
(234264, 0, 'Purchase', 'test', '', '2', 0, 0, 0, 50, '', 4500, '', '', 4500, 'test', '', 'sinhit', 'test@test.com', '9785834', 'Jaipur', 'rajasthan', '302039', 'VDN, Jaipur, dfdf, dfdf\r\ndfdf', '::1', '2018-06-01 08:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_products`
--

DROP TABLE IF EXISTS `purchase_products`;
CREATE TABLE IF NOT EXISTS `purchase_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `qty` int(10) NOT NULL,
  `unit_price` int(10) NOT NULL,
  `TaxAmount` text NOT NULL,
  `Tax` text NOT NULL,
  `description` text NOT NULL,
  `company_name` text NOT NULL,
  `company_email` text NOT NULL,
  `company_phone` text NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `Pincode` text NOT NULL,
  `company_address` text NOT NULL,
  `ip_address` text NOT NULL,
  `create_date` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_products`
--

INSERT INTO `purchase_products` (`id`, `name`, `qty`, `unit_price`, `TaxAmount`, `Tax`, `description`, `company_name`, `company_email`, `company_phone`, `City`, `State`, `Pincode`, `company_address`, `ip_address`, `create_date`) VALUES
(12, 'Producth', 80, 599, '', '', 'Test test sadlfk', 'Testing', 'test@gmail.com', '978585834812', '', '', '', 'tes asdlf asdf ', '::1', '2018-01-25 11:47:15'),
(15, 'Product 1111', 5, 250, '', '', 'asdfaasfasdf', ' asldfk', 'test@gmail.com', '3424234', '', '', '', 'sdfsadfsdf', '::1', '2018-01-24 19:01:51'),
(17, 'Product 6', 5, 599, '', '', 'Test test sadlfk', 'Testing', 'test@gmail.com', '978585834812', '', '', '', 'tes asdlf asdf ', '::1', '2018-01-25 09:38:29'),
(18, 'Productererre', 5, 599, '', '', 'Test test sadlfk', 'Testing', 'test@gmail.com', '978585834812', '', '', '', 'tes asdlf asdf ', '::1', '2018-01-25 09:40:10'),
(23, 'Product Helo', 800, 599, '', '', 'Test test sadlfk', 'Testing', 'test@gmail.com', '978585834812', '', '', '', 'tes asdlf asdf ', '::1', '2018-01-25 11:47:24'),
(26, 'sari', 100, 500, '2500', '', 'rffghfhf', 'bvvb fg', 'gfg@gdfg', '878768768', 'ggfh', 'hgfhgfh', '4545', 'ghjgjhgj', '157.37.128.110', '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `value`) VALUES
(1, 'tax', '5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `parent`) VALUES
(1, 'ADMIN', NULL),
(2, 'Siba', 1),
(3, 'Ande', 1),
(4, 'Lwande', 1),
(9, 'Daki', 2),
(12, 'Kamva', 4),
(13, 'Baby', 2),
(14, 'Sese', 2),
(15, 'Amani', 3),
(16, 'Asante', 3);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `matrix`
--
ALTER TABLE `matrix`
  ADD CONSTRAINT `FK_matrix_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `matrix` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
