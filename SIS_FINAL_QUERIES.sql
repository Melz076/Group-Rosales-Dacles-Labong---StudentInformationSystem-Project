-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2025 at 08:04 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sis_final`
--

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Attendance_ID`, `Enrollment_ID`, `Attendance_Date`, `Attendance_Status`) VALUES
(1, 1, '2022-01-08', 'Present'),
(2, 2, '2022-01-15', 'Absent'),
(3, 3, '2022-01-12', 'Late'),
(4, 4, '2022-01-20', 'Present'),
(5, 5, '2022-01-22', 'Present'),
(6, 6, '2022-02-02', 'Present'),
(7, 7, '2022-02-10', 'Present'),
(8, 8, '2022-02-12', 'Late'),
(9, 9, '2022-02-15', 'Absent'),
(10, 10, '2022-02-20', 'Present'),
(11, 11, '2022-02-21', 'Present'),
(12, 12, '2022-02-22', 'Present');

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Credits`, `Dept_ID`) VALUES
(1, 'Intro to CS', 3, 1),
(2, 'Calculus I', 4, 2),
(3, 'English Lit', 3, 3),
(4, 'Biology I', 4, 4),
(5, 'General Physics', 4, 5),
(6, 'Data Structures', 3, 1),
(7, 'Algorithms', 3, 1),
(8, 'Operating Systems', 3, 1),
(9, 'Database Systems', 3, 1),
(10, 'Software Engineering', 3, 1);

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`Dept_ID`, `Dept_Name`) VALUES
(4, 'Biology'),
(1, 'Computer Science'),
(3, 'English'),
(2, 'Mathematics'),
(5, 'Physics');

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`Enrollment_ID`, `Student_ID`, `Course_ID`, `Enrollment_Date`) VALUES
(1, 1, 1, '2022-01-01'),
(2, 2, 2, '2022-01-05'),
(3, 3, 3, '2022-01-10'),
(4, 4, 4, '2022-01-15'),
(5, 5, 5, '2022-01-20'),
(6, 6, 6, '2022-01-25'),
(7, 7, 7, '2022-02-01'),
(8, 8, 8, '2022-02-05'),
(9, 9, 9, '2022-02-10'),
(10, 10, 10, '2022-02-15'),
(11, 11, 1, '2022-02-16'),
(12, 12, 2, '2022-02-17');

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`Grade_ID`, `Enrollment_ID`, `Assignment_Name`, `Grade`) VALUES
(1, 1, 'Quiz 1', '100.00'),
(2, 2, 'Quiz 1', '90.00'),
(3, 3, 'Quiz 1', '78.00'),
(4, 4, 'Quiz 1', '92.00'),
(5, 5, 'Quiz 1', '88.00'),
(6, 6, 'Quiz 1', '95.00'),
(7, 7, 'Quiz 1', '89.00'),
(8, 8, 'Quiz 1', '91.00'),
(9, 9, 'Quiz 1', '82.00'),
(10, 10, 'Quiz 1', '98.00'),
(11, 11, 'Quiz 1', '87.00'),
(12, 12, 'Quiz 1', '93.00');

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `First_Name`, `Last_Name`, `Email`, `Phone`, `Street`, `City`, `Zip_Code`) VALUES
(1, 'John', 'Doe', 'johndoe@example.com', NULL, '999 High St', 'Brooklyn', '11201'),
(2, 'Jane', 'Smith', 'janesmith@example.com', NULL, NULL, 'Los Angeles', NULL),
(3, 'Bob', 'Johnson', 'bobjohnson@example.com', NULL, NULL, 'Chicago', NULL),
(4, 'Alice', 'Brown', 'alicebrown@example.com', NULL, NULL, 'Houston', NULL),
(5, 'Mike', 'Davis', 'mikedavis@example.com', NULL, NULL, 'Phoenix', NULL),
(6, 'Emily', 'Taylor', 'emilytaylor@example.com', NULL, NULL, 'Philadelphia', NULL),
(7, 'Sarah', 'Lee', 'sarahlee@example.com', NULL, NULL, 'San Antonio', NULL),
(8, 'Kevin', 'White', 'kevinwhite@example.com', NULL, NULL, 'San Diego', NULL),
(9, 'Lisa', 'Harris', 'lisaharris@example.com', NULL, NULL, 'Dallas', NULL),
(10, 'Tom', 'Jackson', 'tomjackson@example.com', NULL, NULL, 'San Jose', NULL),
(11, 'Chris', 'Evans', 'cevans@example.com', NULL, NULL, 'Boston', NULL),
(12, 'Robert', 'Downey', 'rdowney@example.com', NULL, NULL, 'Malibu', NULL),
(13, 'Mark', 'Zuckerberg', 'mzuck@meta.com', '555-0199', '1 Hacker Way', 'Menlo Park', '94025');
COMMIT;

-- ==========================================================
-- STUDENT INFORMATION SYSTEM: FUNCTIONAL & SECURITY TESTING
-- ==========================================================
USE sis_final;

-- 1. DATA INSERTION
-- Requirement: Insert a new student record
INSERT INTO Students (Student_ID, First_Name, Last_Name, Email, Phone, Street, City, Zip_Code) 
VALUES (13, 'Mark', 'Zuckerberg', 'mzuck@meta.com', '555-0199', '1 Hacker Way', 'Menlo Park', '94025');

-- 2. DATA UPDATES
-- Requirement: Update an existing student's address
UPDATE Students 
SET Street = '999 High St', City = 'Brooklyn', Zip_Code = '11201' 
WHERE Student_ID = 1;

-- 3. DATA RETRIEVAL (SELECT WITH JOINs)
-- Requirement: Retrieve Student Name, Course, and Final Grade
SELECT 
    CONCAT(s.First_Name, ' ', s.Last_Name) AS 'Student Name',
    c.Course_Name AS 'Course',
    g.Grade AS 'Final Grade'
FROM Students s
JOIN Enrollments e ON s.Student_ID = e.Student_ID
JOIN Courses c ON e.Course_ID = c.Course_ID
JOIN Grades g ON e.Enrollment_ID = g.Enrollment_ID;

-- 4. AGGREGATE FUNCTIONS
-- Requirement: Calculate Average Grade for Course_ID = 1
SELECT 
    c.Course_Name, 
    AVG(g.Grade) AS 'Average Class Grade'
FROM Grades g
JOIN Enrollments e ON g.Enrollment_ID = e.Enrollment_ID
JOIN Courses c ON e.Course_ID = c.Course_ID
WHERE c.Course_ID = 1;

-- Requirement: Count total "Present" attendance for Student_ID = 1
SELECT 
    COUNT(Attendance_Status) AS 'Total Days Present'
FROM Attendance a
JOIN Enrollments e ON a.Enrollment_ID = e.Enrollment_ID
WHERE e.Student_ID = 1 AND a.Attendance_Status = 'Present';

-- 5. SECURITY TESTING (USER ACCESS RESTRICTIONS)
-- Note: This is performed after creating 'student_test' user
-- Expected Result: ERROR 1142 (Access Denied)
UPDATE Grades SET Grade = 100.00 WHERE Enrollment_ID = 1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
