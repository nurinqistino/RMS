-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 13, 2025 at 07:54 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_street_1` varchar(255) NOT NULL,
  `company_street_2` varchar(255) NOT NULL,
  `company_postcode` varchar(10) NOT NULL,
  `company_city` varchar(50) NOT NULL,
  `company_state` varchar(50) NOT NULL,
  `att_name` varchar(255) NOT NULL,
  `app_date` date DEFAULT NULL,
  `branch_id` int NOT NULL,
  `semester_id` int NOT NULL,
  `faculty_id` int NOT NULL,
  `program_id` int NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `student_name_1` varchar(255) NOT NULL,
  `student_matrix_1` varchar(255) NOT NULL,
  `student_phone_1` varchar(255) NOT NULL,
  `student_name_2` varchar(255) NOT NULL,
  `student_matrix_2` varchar(255) NOT NULL,
  `student_phone_2` varchar(255) NOT NULL,
  `student_name_3` varchar(255) NOT NULL,
  `student_matrix_3` varchar(255) NOT NULL,
  `student_phone_3` varchar(255) NOT NULL,
  `student_name_4` varchar(255) NOT NULL,
  `student_matrix_4` varchar(255) NOT NULL,
  `student_phone_4` varchar(255) NOT NULL,
  `student_name_5` varchar(255) NOT NULL,
  `student_matrix_5` varchar(255) NOT NULL,
  `student_phone_5` varchar(255) NOT NULL,
  `visiting_date` date NOT NULL,
  `visiting_time` time NOT NULL,
  `lecturer_name` varchar(255) NOT NULL,
  `lecturer_phone` varchar(255) NOT NULL,
  `lecturer_email` varchar(255) NOT NULL,
  `approval_datetime` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `ref_no` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `company_name`, `company_street_1`, `company_street_2`, `company_postcode`, `company_city`, `company_state`, `att_name`, `app_date`, `branch_id`, `semester_id`, `faculty_id`, `program_id`, `subject_code`, `subject_name`, `student_name_1`, `student_matrix_1`, `student_phone_1`, `student_name_2`, `student_matrix_2`, `student_phone_2`, `student_name_3`, `student_matrix_3`, `student_phone_3`, `student_name_4`, `student_matrix_4`, `student_phone_4`, `student_name_5`, `student_matrix_5`, `student_phone_5`, `visiting_date`, `visiting_time`, `lecturer_name`, `lecturer_phone`, `lecturer_email`, `approval_datetime`, `status`, `ref_no`, `created`, `modified`) VALUES
(1, 'Code The Pixel', '11/4 Jalan Ilmu', 'Menara i-Cityy', '47130', 'Shah Alam', 'Selangor', 'John Rambo', '2023-11-24', 1, 2, 1, 1, 'IMS566', 'Advance Web Application Development', 'Azka Mikael bin Muhammad', '2019856621', '012-85669556', 'Ahmad bin Ali', '2019232356', '012-8852478', 'Siti binti Ali', '2020159663', '74653325645', 'Musa bin Ahmad', '55555555555', '235235325235', 'Aminah binti Ahmad', '444444444444', '35252532523', '2023-11-29', '20:00:00', 'Muhammad Asyraf bin Wahi Anuar', '+60125295785', 'asyraf.wahianuar@gmail.com', NULL, 0, '', '2024-11-23 15:21:35', '2024-11-27 14:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
