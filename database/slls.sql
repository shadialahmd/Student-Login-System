-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2017 at 10:25 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slls`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `admin_image` varchar(100) NOT NULL,
  `admin_type` varchar(100) NOT NULL,
  `admin_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `confirm_password`, `admin_image`, `admin_type`, `admin_added`) VALUES
(41, 'Jamyde', 'A', 'Honrejas', 'jam', '123', '123', 'jam.jpg', 'Admin', '2017-08-03 15:05:20'),
(44, 'Lyca', 'H', 'Epilepsia', 'like', '123', '123', 'lyka.jpg', 'Admin', '2017-08-06 11:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `admin_head`
--

CREATE TABLE `admin_head` (
  `admin_id` int(15) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `confirm_password` varchar(25) NOT NULL,
  `admin_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_head`
--

INSERT INTO `admin_head` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `confirm_password`, `admin_image`) VALUES
(1, 'Lord', 'Dalinas', 'admin', '123', '123', 'lord.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `all_eventaction`
--

CREATE TABLE `all_eventaction` (
  `id` int(15) NOT NULL,
  `admin_fullname` text NOT NULL,
  `action` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `all_eventaction`
--

INSERT INTO `all_eventaction` (`id`, `admin_fullname`, `action`, `date`) VALUES
(136, 'Jamyde&nbspA&nbspHonrejas', 'Changed profile picture ', '2017-08-28 15:48:27'),
(137, 'jam', 'Logged out', '2017-08-28 15:48:34'),
(138, 'like', 'Logged in', '2017-08-28 15:50:01'),
(139, 'Lyca&nbspH&nbspEpilepsia', 'Changed profile picture ', '2017-08-28 15:50:25'),
(140, 'like', 'Logged out', '2017-08-28 15:53:28'),
(141, 'a', 'Logged in', '2017-08-28 15:54:04'),
(142, 'a', 'Logged out', '2017-08-28 15:55:45'),
(143, 'a', 'Logged in', '2017-08-28 15:55:51'),
(144, 'a', 'Logged out', '2017-08-28 15:55:56'),
(145, 'A', 'Logged in', '2017-08-28 15:57:29'),
(146, 'a', 'Logged out', '2017-08-28 15:57:33'),
(147, 'A', 'Logged in', '2017-08-28 15:57:39'),
(148, 'dfd&nbspDfds&nbspdfds', 'Changed profile picture ', '2017-08-28 15:57:50'),
(149, 'a', 'Logged out', '2017-08-28 15:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `backup_login_logs`
--

CREATE TABLE `backup_login_logs` (
  `user_id` int(11) NOT NULL,
  `school_number` varchar(15) NOT NULL,
  `date1` date NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `total_rendered` time NOT NULL,
  `remarks` varchar(15) NOT NULL,
  `status` int(15) NOT NULL,
  `Note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `backup_student`
--

CREATE TABLE `backup_student` (
  `user_id` int(11) NOT NULL,
  `school_number` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `course` varchar(25) NOT NULL,
  `year` varchar(25) NOT NULL,
  `school` varchar(100) NOT NULL,
  `totaltime_render` int(11) NOT NULL,
  `remain_time` int(25) NOT NULL,
  `finish_time` int(25) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `check_in`
--

CREATE TABLE `check_in` (
  `user_id` int(11) NOT NULL,
  `school_number` varchar(15) NOT NULL,
  `date1` date NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `total_rendered` time NOT NULL,
  `remarks` varchar(15) NOT NULL,
  `status` int(15) NOT NULL,
  `Note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `check_in`
--

INSERT INTO `check_in` (`user_id`, `school_number`, `date1`, `check_in`, `check_out`, `total_rendered`, `remarks`, `status`, `Note`) VALUES
(1, 'CFC-9090', '2017-08-27', '2017-08-27 13:41:02', '2017-08-28 13:41:20', '24:00:18', 'Log Out', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `signatory`
--

CREATE TABLE `signatory` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `position` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signatory`
--

INSERT INTO `signatory` (`id`, `fullname`, `position`) VALUES
(2, 'Mr.frans', 'CEO');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `user_id` int(11) NOT NULL,
  `school_number` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `course` varchar(25) NOT NULL,
  `year` varchar(25) NOT NULL,
  `school` varchar(100) NOT NULL,
  `totaltime_render` int(11) NOT NULL,
  `remain_time` int(25) NOT NULL,
  `finish_time` int(25) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`user_id`, `school_number`, `firstname`, `middlename`, `lastname`, `gender`, `address`, `course`, `year`, `school`, `totaltime_render`, `remain_time`, `finish_time`, `status`) VALUES
(49, 'CFC-012783', 'Engelica', 's', 'Alejandro', 'Female', 'Barracks General Santos City', 'BSIS', '4th Year', 'CFC', 486, 486, 0, 'Incomplete'),
(50, 'CFC-100254', 'Mart', 'O', 'Languido', 'Male', 'Pineda Compound Brgy City Hieghts', 'BSIS', '4th Year', 'CFC', 486, 486, 0, 'Incomplete'),
(51, 'CFC-1300828', 'Francis', 'B.', 'Lumabe', 'Male', 'Prk. Tomasa, Calumpang,GSC', 'BSIS', '4th Year', 'CFC', 486, 486, 0, 'Incomplete'),
(52, 'CFC-1400995', 'Omar', 's', 'Ogay', 'Male', 'Litan Village', 'BSIS', '4th Year', 'CFC', 486, 486, 0, 'Incomplete'),
(53, 'CFC-1400800', 'Allyssa Denise', 'Y', 'Lasquite', 'Female', 'Bgry. Apopong', 'BSIS', '4th Year', 'CFC', 486, 486, 0, 'Incomplete'),
(54, 'CFC-123456', 'Ronaldo', 'S.', 'Dublas Jr', 'Male', 'D.B.P Homes PHASE 3 GSC', 'BSIS', '4th Year', 'CFC', 486, 486, 0, 'Incomplete'),
(55, 'GSW-003100', 'Rene', 'B.', 'YbaÃ±ez', 'Male', 'Fatima Uhaw General Santos City', 'BSIT', '4th Year', 'GSW', 500, 500, 0, 'Incomplete'),
(56, 'GSW-122797', 'Joshua', 'L.', 'Combista', 'Male', 'Prk. Oblipas cahilsot calumpang GSC ', 'BSIT', '4th Year', 'GSW', 500, 500, 0, 'Incomplete'),
(57, 'GSW-024532', 'Robert', 'V', 'NapeÃ±as', 'Male', 'zone 4 blk 2 ext. Brgy Fatima Uhaw G.S.C', 'BSIT', '4th Year', 'GSW', 500, 500, 0, 'Incomplete'),
(58, 'CFC-1400014', 'Argie', 'Gregorio', 'Armada', 'Male', '014, Mansanitas Street, General Santos City', 'BSIS', '4th Year', 'CFC', 486, 486, 0, 'Incomplete'),
(59, 'GSW-140613', 'Adrian', 'S.', 'Valderama', 'Male', 'Habitat Phase b G.S.C', 'BSIT', '4th Year', 'GSW', 500, 500, 0, 'Incomplete'),
(60, 'CFC-100200', 'Christine Mae', 'A', 'Dunque', 'Female', 'Brgy. Calumpang,GSC', 'BSIS', '4th Year', 'CFC', 486, 486, 0, 'Incomplete'),
(61, 'CFC-123321', 'Jeric', 'E', 'jopson', 'Male', 'Brgy. Bula,GSC', 'BSIS', '4th Year', 'CFC', 486, 486, 0, 'Incomplete'),
(62, 'GSW-092995', 'Charles Jade', '', 'Andong', 'Male', '001 Sampalok St., General Santos City', 'BSIT', '4th Year', 'GSW', 500, 500, 0, 'Incomplete'),
(63, 'CFC-1400323', 'Mia Jean', 'R.', 'EspaÃ±a', 'Female', 'prk.7,new society,apopong ,GSC.', 'BSIS', '4th Year', 'CFC', 486, 486, 0, 'Incomplete'),
(64, 'GSW-2896', 'Michael Jann', 'A.', 'Otadoy', 'Male', 'Rambutan St GSC', 'BSIT', '4th Year', 'GSW', 500, 500, 0, 'Incomplete'),
(65, 'GSW-111115', 'Rexford', 'S.', 'Dulay', 'Male', 'Prk. Cahilsot village calumpang G.S.C', 'BSIT', '4th Year', 'GSW', 500, 500, 0, 'Incomplete'),
(99, 'CFC-1400690', 'Amir', 'D', 'Edsil', 'Male', 'POlomolok South Cotabato', 'BSIS', '4th Year', 'CFC', 486, 0, 0, 'Incomplete'),
(130, 'GSW-1213', 'yu', 'yuy', 'u', 'Male', 'ewqe', 'ew', '1st Year', 'GSW', 334, 334, 0, 'incomplete'),
(132, 'CFC-9090', 'ui', 'uiu', 'ui', 'Male', 'iu', 'ui', '1st Year', 'CFC', 24, 0, 24, 'Completed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_head`
--
ALTER TABLE `admin_head`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `all_eventaction`
--
ALTER TABLE `all_eventaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_login_logs`
--
ALTER TABLE `backup_login_logs`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `backup_student`
--
ALTER TABLE `backup_student`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `check_in`
--
ALTER TABLE `check_in`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `signatory`
--
ALTER TABLE `signatory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `admin_head`
--
ALTER TABLE `admin_head`
  MODIFY `admin_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `all_eventaction`
--
ALTER TABLE `all_eventaction`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `backup_login_logs`
--
ALTER TABLE `backup_login_logs`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `backup_student`
--
ALTER TABLE `backup_student`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `check_in`
--
ALTER TABLE `check_in`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `signatory`
--
ALTER TABLE `signatory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
