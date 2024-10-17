-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2024 at 11:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(6) UNSIGNED NOT NULL,
  `fullname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(50) NOT NULL,
  `img_profile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fullname`, `email`, `Birthday`, `reg_date`, `password`, `img_profile`) VALUES
(1, 'Nguyen Thanh Phat', 'phatb2110023@student.ctu.edu.vn', '0000-00-00', '2024-09-19 07:54:41', 'e99a18c428cb38d5f260853678922e03', 'unnamed.jpg'),
(2, 'Le Thi B', 'lethib@example.com', '1988-02-25', '2023-09-18 04:00:00', '96b33694c4bb7dbd07391e0be54745fb', ''),
(3, 'Tran Van C', 'tranvanc@example.com', '1992-07-20', '2023-09-18 05:00:00', '7d347cf0ee68174a3588f6cba31b8a67', ''),
(4, 'Pham Thi D', 'phamthid@example.com', '1995-09-12', '2023-09-18 06:00:00', 'db6ae64dfa9e78039db6df5b8edbc38c', ''),
(5, 'Do Van E', 'dovane@example.com', '1985-11-30', '2023-09-18 07:00:00', 'b3009649b95347794283e38005637a7d', ''),
(6, 'Hoang Thi F', 'hoangthif@example.com', '1993-03-04', '2023-09-18 08:00:00', 'a6dddd6eb6098b00e167d1ee89b1385a', ''),
(7, 'Nguyen Van G', 'nguyenvang@example.com', '1991-08-17', '2023-09-18 09:00:00', '775ec8620c3ddb0f18d8cb1a44ce7272', ''),
(8, 'Le Thi H', 'lethih@example.com', '1990-12-22', '2023-09-18 10:00:00', 'ddea23110c9008ee59e634bbcd09d777', ''),
(9, 'Tran Van I', 'tranvani@example.com', '1989-06-05', '2023-09-18 11:00:00', '2d9f5d179482a9a8af4e395196b0208a', ''),
(10, 'Pham Thi J', 'phamthij@example.com', '1994-01-10', '2023-09-18 12:00:00', 'e195c54bac461154f33b8c225b0a8d42', ''),
(11, 'Do Van K', 'dovank@example.com', '1997-04-22', '2023-09-18 13:00:00', 'f7c6af6ae8919d72d00d8acb8caff2e4', ''),
(12, 'Hoang Thi L', 'hoangthil@example.com', '1986-10-30', '2023-09-18 14:00:00', 'd2f80ec31556abb0ec0532cfc023c74d', ''),
(13, 'Nguyen Van M', 'nguyenvanm@example.com', '1992-02-28', '2023-09-18 15:00:00', 'e3006ece3efd21ca79c543ff7ad269e2', ''),
(14, 'Le Thi N', 'lethin@example.com', '1993-09-03', '2023-09-18 16:00:00', '9a10a9334d839d97595869a76cea8bdb', ''),
(15, 'Tran Van O', 'tranvano@example.com', '1991-11-15', '2023-09-18 02:00:00', '6f6a9711b9890e0afa09d18cecc1b5af', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
