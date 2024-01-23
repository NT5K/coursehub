-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2024 at 12:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it1150`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` varchar(55) NOT NULL,
  `title` varchar(55) NOT NULL,
  `credit_hrs` int(11) NOT NULL,
  `description` text NOT NULL,
  `prerequisites` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `title`, `credit_hrs`, `description`, `prerequisites`) VALUES
('IT-1050', 'Programming Logic', 3, 'Learn to solve business problems by designing, coding, and testing programming solutions using a current high-level programming language. Learn and apply standard language constructs, control flow, and beginning object-oriented programming concepts.', 'IT-1025 Information Technology Concepts for Programmers, or concurrent enrollment.'),
('IT-1080', 'Introduction to Data Analytics', 3, 'Broad coverage of topics key to data scientists to convert information to knowledge. Focus is on current data analytics methods to address business problems.', 'IT-1025 Information Technology Concepts for Programmers or concurrent enrollment.'),
('IT-1150', 'Introduction to Web Programming', 3, 'Build Web pages using current technologies including but not limited to HTML, cascading style sheets and JavaScript using an HTML editor. Focus is on developing a foundation in web programming.', 'IT-1025 Information Technology Concepts for Programmers, or concurrent enrollment.'),
('IT-1200', 'Introduction to Software Quality Assurance', 4, 'Introductory course in Software Quality Assurance that provides the fundamentals of software development life cycle, role of a tester, software testing types, methodologies, software testing cycle and testing tools.', 'None'),
('IT-2030', 'ASP.NET Web Programming', 4, 'Capstone course for Programming and Development majors. Advanced server-side programming course. Create server-side, database-driven websites using the ASP.NET framework in combination with markup, style sheets and client-side scripting.', 'IT-1150 Introduction to Web Programming and IT-2351 Enterprise Database.'),
('IT-2080', 'Data Visualization', 4, 'Create static and dynamic data visualizations using the latest development tools and techniques. Advanced topics include dashboards and stories.', 'IT-1025 Information Technology Concepts for Programmers, and IT-1080 Introduction to Data Analytics or concurrent enrollment, and IT-2351 Enterprise Database Systems.'),
('IT-2090', 'Data Analytics Programming', 4, 'This course covers the fundamental concepts of R and the use of R for effective data analysis. Students will develop skills to develop solutions to complex problems across a variety of disciplines using data and real-world case studies.', 'IT-1050 Programming Logic, and IT-1080 Introduction to Data Analytics or concurrent enrollment.'),
('IT-2100', 'iOS Application Programming', 4, 'Focuses on skills required to successfully create dynamic and efficient iOS applications. Covers the fundamentals of objects, classes and behaviors as well as object communication and user interface design considerations. Mac computer required with ability to download/install software.', 'T-2650 Java Programming.'),
('IT-2110', 'Android Mobile Application Development', 4, 'Introduction to mobile development using the Android Software Development Kit (SDK). Focuses on the skills required to design, develop and publish applications for the Android platform. Covers the fundamentals of Android application development including designing an application, implementing specific framework components such as a splash screen and main menu, how to handle user interaction and make an application available in the Android market.', 'IT-2650 Java Programming.'),
('IT-2200', 'Software Quality Assurance Techniques', 4, 'Continuation of Software Quality Assurance process covering testing types, techniques and test management cycle and will also get exposure to Agile Testing. Gain practical experience creating and executing test cases and plans, logging and tracking defects etc.', 'IT-1200 Software Quality Assurance.'),
('IT-2320', 'Interactive Internet Programming', 4, 'Introduction to interactive object-oriented programming in an Internet environment from a conceptual approach. Emphasis is on understanding the basic Internet technologies (mostly from the client side), how and when to use them and how to integrate them into a system.', 'T-1050 Programming Logic, and IT-1150 Introduction to Web Programming.'),
('IT-2351', 'Enterprise Database Systems', 4, 'Apply knowledge of: relational algebra, data migration, data warehousing, data mining, distributed databases and security to design, develop and normalize a Structured Query Language (SQL) database to 3rd normal form using appropriate diagrams and database objects. Retrieve, insert, update, delete, troubleshoot and report data from complex SQL databases.', 'IT-1025 Information Technology Concepts for Programmers; IT-1050 Programming Logic; and MATH-0955 Beginning Algebra, or MATH-0990 Math Literacy for College Students, appropriate score on Math placement test.'),
('IT-2600', 'E-Business Programming Technologies', 4, 'Use of web programming technologies to create Internet client/server applications. Design, create, code and debug applications using Web objects. Topics include, but are not limited to, SQL, XML, C# .Net, Visual Basic .Net, and a server-side technology such as PHP.', 'IT-1150 Introduction to Web Programming, and IT-2351 Enterprise Database Systems; and IT-1050 Programming Logic; or IT-2650 Java Programming; or IT-2670 C/C++ Programming Language, or IT-2680 Visual C#.NET.'),
('IT-2650', 'Java Programming', 4, 'Introduction to object-oriented methodologies and programming using the Java programming language. Design, code, and debug Java applications. Other topics include GUI components, event handling, and exception handling.', 'IT-1050 Programming Logic.'),
('IT-2660', 'Data Structures & Algorithms', 4, 'Programming and problem-solving skills are further developed by using language features to implement various data structures such as stacks, queues, linked lists, trees and graphs. Additional topics include recursion, sorting, searching, and hashing algorithms.', 'IT-2650 Java Programming.'),
('IT-2700', 'Systems Analysis and Design', 4, 'Overview of systems development life cycle. Utilize structured tools and object-oriented techniques to analyze and document process flow, data flows, data structures, file designs, input & output designs and program specifications in the systems development life cycle. Examine information gathering and reporting activities. Analyze strategies and techniques for producing logical methodologies which deal with complexity in development of information systems.', 'IT-1050 Programming Logic.');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `user_id` varchar(45) NOT NULL,
  `crn` varchar(45) NOT NULL,
  `semester` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`user_id`, `crn`, `semester`) VALUES
('id1', '11301', 'Spring 2025');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `crn` varchar(45) NOT NULL,
  `course_id` varchar(45) DEFAULT NULL,
  `semester` varchar(45) NOT NULL,
  `room` varchar(45) DEFAULT NULL,
  `days` varchar(45) DEFAULT NULL,
  `times` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`crn`, `course_id`, `semester`, `room`, `days`, `times`) VALUES
('11301', 'IT-2700', 'Spring 2025', 'D205', 'W', '900-1050'),
('12175', 'IT-2351', 'Spring 2024', 'D205', 'T', '1000-1150'),
('123543', 'IT-1050', 'Summer 2025', 'D999', 'TS', '800-1200'),
('12375', 'IT-1150', 'Fall 2022', 'D207', 'M', '1030-1145'),
('12378', 'IT-2320', 'Spring 2024', 'D205', 'R', '1000-1150'),
('12382', 'IT-2650', 'Summer 2024', 'D205', 'MW', '1300-1515'),
('12383', 'IT-2660', 'Spring 2024', 'D205', 'MWF', '1300-1515'),
('13226', 'IT-2080', 'Spring 2024', 'GT 205', 'TR', '900-1050'),
('13227', 'IT-1080', 'Spring 2024', 'GT 205', 'MW', '900-1050'),
('13229', 'IT-1200', 'Spring 2026', 'GT 205', 'TR', '1100-1250'),
('13230', 'IT-2090', 'Fall 2025', 'GT 205', 'MW', '1100-1250'),
('13231', 'IT-2100', 'Spring 2024', 'GT 213', 'TR', '1300-1450'),
('13232', 'IT-1050', 'Spring 2024', 'GT 205', 'W', '1800-2050'),
('13233', 'IT-2110', 'Spring 2024', 'GT 205', 'MW', '1300-1450'),
('13234', 'IT-2200', 'Spring 2024', 'GT 205', 'M', '1500-1750'),
('13235', 'IT-2600', 'Spring 2024', 'GT 205', 'TR', '1400-1550'),
('13237', 'IT-2030', 'Spring 2024', 'GT 213', 'TR', '1000-1150'),
('13469', 'IT-1050', 'Spring 2024', 'D205', 'M', '1000-1150'),
('13470', 'IT-1050', 'Spring 2024', 'D205', 'MW', '1800-1950'),
('13853', 'IT-1025', 'Spring 2024', 'D205', 'M', '900-1015'),
('13854', 'IT-1025', 'Spring 2024', 'D205', 'MWF', '1800-1950'),
('asd13', 'IT-2200', 'Spring 2027', 'ab43', 'MTSU', '800-1200');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`) VALUES
('id1', 'name@email.com', '$2y$10$rfyKrjpLROu5ugvNcxWrF.pImL7GfAGjeeb4Ehof.p9x1tO2A2d7q');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`user_id`,`crn`,`semester`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`crn`,`semester`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
