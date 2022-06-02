-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 08:02 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sis_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(30) NOT NULL,
  `admin_password` varchar(128) NOT NULL,
  `admin_salt` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`, `admin_salt`) VALUES
(1, 'admin', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', '$2y$11$.phSWInHPAB17yH6u3kY/eWuhfJQq/9lB1lInx98fnUb6R.2t.U6S'),
(3, 'harry', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '$2y$11$q.MDXM5ioI2TbhwdfFBWYubLSWPCkKPL9GeZg0WdXDSRkcGO8QEj2');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `course_credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_credit`) VALUES
(101, 'Object Oriented Programming', 3),
(102, 'Software Engineering', 4),
(103, 'Peripheral and Interfacing', 3.5),
(121, 'Digital Logic', 3),
(226, 'Web Designing', 5),
(669, 'Database', 4);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(111, 'CSE'),
(112, 'ECE'),
(113, 'BBA'),
(114, 'BIT'),
(115, 'MIT');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL,
  `student_roll` int(11) NOT NULL,
  `mark_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_roll` int(11) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `student_sex` char(1) NOT NULL,
  `student_semester` varchar(5) NOT NULL,
  `student_department` int(3) NOT NULL,
  `student_session` varchar(9) NOT NULL,
  `student_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_roll`, `student_name`, `student_email`, `student_sex`, `student_semester`, `student_department`, `student_session`, `student_address`) VALUES
(1101, 'Issac Asimov', 'asdf@g.com', 'M', '3rd', 111, '2010-2011', 'Seattle'),
(1102, 'Dan Brown', 'asdf@g.com', 'M', '6th', 113, '2009-2010', 'New Jersy'),
(1103, 'Danny Johnsonn', 'dannyj@gmail.com', 'M', '1st', 111, '2020-2021', '1169 DriveBi Street'),
(1117, 'Arther Cleck', 'asdf@g.com', 'M', '8th', 111, '200-2009', 'Miami'),
(1172, 'Edith Hamilton', 'psf@g.com', 'F', '2nd', 112, '2012-2013', 'Boston'),
(1215, 'Joost Van', 'stu@s.com', 'M', '2nd', 113, '2015-2020', 'Texas'),
(1253, 'Model Mamun', 'm@m.com', 'M', '7th', 111, '2010-2011', 'Dhaka'),
(1535, 'Castor Troy', 'castor@c.com', 'M', '2nd', 112, '2010-2011', 'North Carolina'),
(5550, 'Christine Moore', 'christine@gmail.com', 'F', '3rd', 114, '2018', 'Demo Address'),
(5670, 'Gary Reeds', 'reedsgry@gmail.com', 'M', '1st', 114, '2019', '1781 Walnut Hill Drive'),
(6990, 'Bruno Den', 'brunoden@gmail.com', 'M', '1st', 114, '2019', 'Fairview Street'),
(9000, 'Steeve', 'steever@gmail.com', 'M', '1st', 114, '2019-2021', '2487  Stoney Lonesome Road');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`),
  ADD KEY `student_roll` (`student_roll`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_roll`),
  ADD KEY `student_department` (`student_department`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `mark`
--
ALTER TABLE `mark`
  ADD CONSTRAINT `mark_ibfk_1` FOREIGN KEY (`student_roll`) REFERENCES `student` (`student_roll`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`student_department`) REFERENCES `department` (`department_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
