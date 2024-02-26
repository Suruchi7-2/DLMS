-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2020 at 06:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `management`
--

-- --------------------------------------------------------

--
-- Table structure for table `addbook`
--

CREATE TABLE `addbook` (
  `id` varchar(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `author` varchar(45) NOT NULL,
  `price` varchar(10) NOT NULL,
  `pages` varchar(10) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `edition` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addbook`
--

INSERT INTO `addbook` (`id`, `name`, `author`, `price`, `pages`, `quantity`, `edition`) VALUES
('553', 'basic of java', 'oracle', '800', '1200', '78', 'Ed.5'),
('525', 'Let\'s us c', 'Harman dubey', '1000', '1500', '4', 'Ed.2'),
('408', 'THE RED AND THE BLACK', 'STENDHAL', '900', '1200', '2', 'Ed.1'),
('621', 'THE HISTORY OF TOM AND JONES', 'HENRY FIELDING', '400', '600', '3', 'Ed.2');

-- --------------------------------------------------------

--
-- Table structure for table `addlibrarian`
--

CREATE TABLE `addlibrarian` (
  `libname` varchar(20) NOT NULL,
  `libemail` varchar(30) NOT NULL,
  `libadd` varchar(30) NOT NULL,
  `libphone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addlibrarian`
--

INSERT INTO `addlibrarian` (`libname`, `libemail`, `libadd`, `libphone`) VALUES
('Mr. SUKHDEV SINGH', 'sukhdevsingh2342gmail.com', 'sukhdevsingh2342gmail.com', '9656389234');

-- --------------------------------------------------------

--
-- Table structure for table `addstudent`
--

CREATE TABLE `addstudent` (
  `sid` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `trade` varchar(30) NOT NULL,
  `rgno.` varchar(20) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `bookfine` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addstudent`
--

INSERT INTO `addstudent` (`sid`, `name`, `fname`, `trade`, `rgno.`, `year`, `semester`, `bookfine`) VALUES
('1143', 'p', 'q', 'CPT', '2', '2012', 'Sem1', ''),
('30', 'suruchi', 'shailendra thakur', 'CDE', '1810012', '2003', 'Sem1', '56'),
('7932', 'shana', 'juliala', 'CPT', '13790', '2005', 'Sem1', '');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `s.no.` varchar(5) NOT NULL,
  `books name` varchar(40) NOT NULL,
  `author` varchar(30) NOT NULL,
  `pages` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='nothing';

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`s.no.`, `books name`, `author`, `pages`) VALUES
('1', 'java', 'oracle', '600'),
('2', 'android', 'asmd', '900'),
('3', 'godan', 'premchand', '1200'),
('4', 'ms dhoni\'the untold ', 'singha reddy', '2500');

-- --------------------------------------------------------

--
-- Table structure for table `books detail`
--

CREATE TABLE `books detail` (
  `s.no.` varchar(5) NOT NULL,
  `books name` varchar(20) NOT NULL,
  `author` varchar(30) NOT NULL,
  `pages` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books detail`
--

INSERT INTO `books detail` (`s.no.`, `books name`, `author`, `pages`) VALUES
('1', 'let\'s see', 'carry baba', '800');

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `sid` varchar(15) NOT NULL,
  `sname` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `trade` varchar(20) NOT NULL,
  `rgno.` varchar(15) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `bid` varchar(15) NOT NULL,
  `bname` varchar(40) NOT NULL,
  `author` varchar(40) NOT NULL,
  `price` varchar(15) NOT NULL,
  `page` varchar(15) NOT NULL,
  `quantity` varchar(15) NOT NULL,
  `edition` varchar(15) NOT NULL,
  `issueDate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`sid`, `sname`, `fname`, `trade`, `rgno.`, `year`, `semester`, `bid`, `bname`, `author`, `price`, `page`, `quantity`, `edition`, `issueDate`) VALUES
('30', 'suruchi', 'shailendra thakur', 'CDE', '1810012', '2003', 'Sem1', '621', 'THE HISTORY OF TOM AND JONES', 'HENRY FIELDING', '400', '600', '3', 'Ed.2', '16-07-2020');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `sid` varchar(15) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `trade` varchar(10) NOT NULL,
  `rgno.` varchar(20) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `bid` varchar(15) NOT NULL,
  `bname` varchar(30) NOT NULL,
  `author` varchar(40) NOT NULL,
  `price` varchar(15) NOT NULL,
  `page` varchar(15) NOT NULL,
  `quantity` varchar(15) NOT NULL,
  `edition` varchar(15) NOT NULL,
  `dateofissue` varchar(20) NOT NULL,
  `dateofreturn` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`sid`, `sname`, `fname`, `trade`, `rgno.`, `year`, `semester`, `bid`, `bname`, `author`, `price`, `page`, `quantity`, `edition`, `dateofissue`, `dateofreturn`) VALUES
('7932', 'shana', 'juliala', 'CPT', '13790', '2005', 'Sem1', '882', 'class 10th maths', 'rs agarwal', '500', '2000', '1', 'Ed.2', '13 Jul, 2020', '23 Jul, 2020'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '24 Jul, 2020'),
('7932', 'shana', 'juliala', 'CPT', '13790', '2005', 'Sem1', '553', 'basic of java', 'oracle', '800', '1200', '78', 'Ed.5', '11 Jul, 2020', '24 Jul, 2020'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '24 Jul, 2020'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`username`, `password`) VALUES
('kavya', '2$34'),
('ashmita', '333'),
('suruchi', 'long');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` varchar(10) NOT NULL,
  `stu_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`) VALUES
('67', 'suru'),
('85', 'nutan'),
('pa', 'name'),
('student id', 'name'),
('suruchi', 'df');

-- --------------------------------------------------------

--
-- Table structure for table `viewbooks`
--

CREATE TABLE `viewbooks` (
  `Bid` varchar(10) NOT NULL,
  `Bname` varchar(30) NOT NULL,
  `author` varchar(30) NOT NULL,
  `price` varchar(5) NOT NULL,
  `pages` varchar(10) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `edition` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viewbooks`
--

INSERT INTO `viewbooks` (`Bid`, `Bname`, `author`, `price`, `pages`, `quantity`, `edition`) VALUES
('553', 'basic of java', ' oracle ', '800', '1200', '78', 'Ed.5'),
('555', 'Let\'s us c', 'Harman dubey', '1000', '1500', '4', 'Ed.2'),
('408', 'THE RED AND THE BLACK ', ' STENDHAL ', '900', '1200', '2', 'ED.1'),
('621 ', 'THE HISTORY OF TOM AND JONES', ' HENRY FIELDING ', '400', '600', '3', 'Ed.2');

-- --------------------------------------------------------

--
-- Table structure for table `viewissuebook`
--

CREATE TABLE `viewissuebook` (
  `Sid` varchar(10) NOT NULL,
  `Bid` varchar(20) NOT NULL,
  `Bname` varchar(30) NOT NULL,
  `author` varchar(30) NOT NULL,
  `price` varchar(10) NOT NULL,
  `pages` varchar(10) NOT NULL,
  `quantity` varchar(15) NOT NULL,
  `edition` varchar(15) NOT NULL,
  `issuedate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viewissuebook`
--

INSERT INTO `viewissuebook` (`Sid`, `Bid`, `Bname`, `author`, `price`, `pages`, `quantity`, `edition`, `issuedate`) VALUES
('30', '408', 'THE RED AND THE BLACK', 'STENDHAL', '900', '1200', '2', 'Ed.1', '17 jul,2020');

-- --------------------------------------------------------

--
-- Table structure for table `viewlibrarian`
--

CREATE TABLE `viewlibrarian` (
  `libname` varchar(30) NOT NULL,
  `libemail` varchar(30) NOT NULL,
  `libadd` varchar(30) NOT NULL,
  `libphone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viewlibrarian`
--

INSERT INTO `viewlibrarian` (`libname`, `libemail`, `libadd`, `libphone`) VALUES
('sanata ', 'sur34@gmail.com ', ' sur34@gmail.com ', '2y87273909');

-- --------------------------------------------------------

--
-- Table structure for table `viewuser`
--

CREATE TABLE `viewuser` (
  `sid` varchar(10) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `sfname` varchar(45) NOT NULL,
  `trade` varchar(10) NOT NULL,
  `rgno` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `stfine` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viewuser`
--

INSERT INTO `viewuser` (`sid`, `sname`, `sfname`, `trade`, `rgno`, `year`, `semester`, `stfine`) VALUES
('30', 'suruchi', ' shailendra thakur', 'CDE', '1810012', '2003', 'Sem1', '56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`password`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
