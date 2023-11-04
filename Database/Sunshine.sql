-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2023 at 07:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `samp`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `accounts`(
  `master_id` int(11) NOT NULL,
  `master_name` varchar(64) NOT NULL DEFAULT 'None',
  `password` varchar(129) NOT NULL,
  `user_1` int DEFAULT '0',
  `user_2` int DEFAULT '0',
  `user_3` int DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(129) NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `gender` int(1) NOT NULL DEFAULT 1,
  `age` int(3) NOT NULL,
  `skin` int(3) NOT NULL DEFAULT 299,
  `email` varchar(64) NOT NULL,
  `pos_x` float DEFAULT 0.0,
  `pos_y` float DEFAULT 0.0,
  `pos_z` float DEFAULT 0.0,
  `camera_x` float DEFAULT 0.0,
  `camera_y` float DEFAULT 0.0,
  `camera_z` float DEFAULT 0.0,
  `facing_angle` float DEFAULT 0.0,
  `health` float DEFAULT 100.0,
  `armour` float DEFAULT 100.0,
  `cash` int(11) DEFAULT 5000,
  `bank` int(11) DEFAULT 5000,
  `masteracc` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
COMMIT;


