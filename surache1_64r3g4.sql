-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 16, 2023 at 11:15 PM
-- Server version: 5.6.38
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
-- Database: `surache1_64r3g4`
--

-- --------------------------------------------------------

--
-- Table structure for table `Tbl_Grade`
--

CREATE TABLE `Tbl_Grade` (
  `GID` int(11) NOT NULL,
  `Grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Tbl_Grade`
--

INSERT INTO `Tbl_Grade` (`GID`, `Grade`) VALUES
(1, 'A'),
(2, 'B+'),
(3, 'B'),
(4, 'C+'),
(5, 'C'),
(6, 'D+'),
(7, 'D'),
(8, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `Tbl_NameTitle`
--

CREATE TABLE `Tbl_NameTitle` (
  `TitleID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TitleName` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Tbl_NameTitle`
--

INSERT INTO `Tbl_NameTitle` (`TitleID`, `TitleName`) VALUES
('NT1', 'เด็กชาย'),
('NT2', 'เด็กหญิง'),
('NT3', 'นาย'),
('NT4', 'นางสาว');

-- --------------------------------------------------------

--
-- Table structure for table `Tbl_Role`
--

CREATE TABLE `Tbl_Role` (
  `roleID` int(11) NOT NULL,
  `roleType` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Tbl_Role`
--

INSERT INTO `Tbl_Role` (`roleID`, `roleType`) VALUES
(1, 'Teacher'),
(2, 'Student'),
(3, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `Tbl_ShowGrade`
--

CREATE TABLE `Tbl_ShowGrade` (
  `SID` int(11) NOT NULL,
  `GradeID` int(11) NOT NULL,
  `SubjectID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Tbl_ShowGrade`
--

INSERT INTO `Tbl_ShowGrade` (`SID`, `GradeID`, `SubjectID`) VALUES
(41, 1, 1),
(41, 1, 3),
(42, 1, 4),
(43, 1, 4),
(43, 1, 5),
(51, 1, 4),
(53, 1, 2),
(54, 1, 1),
(55, 1, 5),
(56, 1, 1),
(56, 1, 3),
(56, 1, 4),
(56, 1, 5),
(57, 1, 1),
(58, 1, 1),
(58, 1, 2),
(58, 1, 4),
(60, 1, 1),
(60, 1, 3),
(60, 1, 4),
(61, 1, 1),
(61, 1, 5),
(62, 1, 3),
(62, 1, 5),
(41, 2, 2),
(42, 2, 1),
(42, 2, 3),
(42, 2, 5),
(51, 2, 2),
(51, 2, 5),
(52, 2, 1),
(53, 2, 1),
(54, 2, 3),
(54, 2, 4),
(55, 2, 1),
(55, 2, 2),
(59, 2, 2),
(59, 2, 3),
(60, 2, 2),
(62, 2, 1),
(62, 2, 2),
(41, 3, 5),
(43, 3, 1),
(51, 3, 1),
(53, 3, 4),
(55, 3, 3),
(59, 3, 1),
(41, 4, 4),
(52, 4, 2),
(52, 4, 5),
(53, 4, 3),
(54, 4, 2),
(55, 4, 4),
(57, 4, 5),
(59, 4, 5),
(61, 4, 2),
(61, 4, 3),
(42, 5, 2),
(43, 5, 2),
(51, 5, 3),
(52, 5, 4),
(53, 5, 5),
(54, 5, 5),
(57, 5, 2),
(57, 5, 3),
(57, 5, 4),
(58, 5, 3),
(58, 5, 5),
(59, 5, 4),
(60, 5, 5),
(61, 5, 4),
(62, 5, 4),
(56, 6, 2),
(43, 7, 3),
(52, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Tbl_Subject`
--

CREATE TABLE `Tbl_Subject` (
  `SJID` int(11) NOT NULL,
  `Subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Tbl_Subject`
--

INSERT INTO `Tbl_Subject` (`SJID`, `Subject`) VALUES
(1, 'Math'),
(2, 'Science'),
(3, 'Social'),
(4, 'English'),
(5, 'Thai');

-- --------------------------------------------------------

--
-- Table structure for table `Tbl_User`
--

CREATE TABLE `Tbl_User` (
  `user_id` int(255) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TitleID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roleID` int(255) NOT NULL,
  `tel` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Tbl_User`
--

INSERT INTO `Tbl_User` (`user_id`, `username`, `password`, `TitleID`, `Fname`, `Lname`, `email`, `roleID`, `tel`, `address`) VALUES
(1, 'admin', '123', 'NT3', 'admin', 'admin', 'admin@admin.admin', 3, '0985237241', 'บนท้องฟ้า'),
(41, 'Ssomsri', '1150', 'NT2', 'สมศรี', 'จะมีบุญ', 'sombat555@gmail.com', 2, '0801230384', 'ซอย 231/6 บ้านเลขที่ 9 หมู่ 800 จ.นนทบุรี 11000 '),
(42, 'Swutichai', '1234', 'NT1', 'วุฒิชัย', 'มีผล', 'wutichatzaza@gmail.com', 2, '0914234592', 'ซอย 500/6 บ้านเลขที่ 10 ต.ท่าทราย จ.นนทบุรี'),
(43, 'Ssantidet', '9876', 'NT1', 'สานธิเดช', 'มัวผี', 'santidet@gmail.com', 2, '0945251590', 'ซอย 200/4 บ้านเลขที่ 100 ต.ท่าทราย จ.นนทบุรี'),
(46, 'Tpassakorn', '5566', 'NT3', 'ภัสกร', 'หลังหัน', 'passakornko@gmail.com', 1, '084149023', 'ซอย 60/14 บ้านเลขที่ 1150 จ.ปราจีนบุรี'),
(47, 'Tdeeradek', '8866', 'NT3', 'ดีรเดช', 'จูเกอ', 'Deeradek74@gmail.com', 1, '0804123540', 'ซอย 345/60 บ้านเลขที่ 89 จ.สมุทรปราการ'),
(48, 'Tpongsapak', '1213', 'NT3', 'พงศพักต์', 'มีเรื่อง', 'pongsapakNH@gmail.com', 1, '0851238394', 'ซอย 6000/613 บ้านเลขที่ 9 หมู่ 1150 จ.นนทบุรี'),
(51, 'Sploy', '1669', 'NT2', 'พลอยดาว', 'มหัตนันน์', 'ploydao@gmail.com', 2, '0965834667', '123 ถนนสุขุมวิท, เขตคลองเตย, กรุงเทพมหานคร, ประเทศไทย'),
(52, 'Stanakit', '8806', 'NT1', 'ธนกิตณ์', 'ปรยันวรรณ', 'TanakitPo@gmail.com', 2, '0859970484', '789 ถนนพระราม 4, เขตสาทร, กรุงเทพมหานคร, ประเทศไทย'),
(53, 'Sploytunwa', '7364', 'NT2', 'พลอยธันวา', 'หวานเพลา', 'ploytunwaWan@gmail.com', 2, '0883649956', '456 หมู่บ้านบางมด, ตำบลบางมด, อำเภอบางพลี, สมุทรปราการ, ประเทศไทย'),
(54, 'Ssurapong', '123', 'NT1', 'สุรพงศ์', 'วานิช', 'surapong@gmail.com', 2, '0854125632', '120 หมู่ที่ 3 ถนน แจ้งวัฒนะ แขวงทุ่งสองห้อง เขตหลักสี่ กรุงเทพมหานคร 10210'),
(55, 'Stidarat', '123', 'NT2', 'ธิดารัตน์', 'ธัญรส', 'tidarat@hotmail.com', 2, '0861124488', '93 Popular Road, Banmai Subdistrict, NONTHABURI, 11120'),
(56, 'Sjaturong', '123', 'NT1', 'จตุรงค์', 'วันรัตน์', 'jaturong@gmail.com', 2, '0966641122', '2043 ถ. พัฒนาการ แขวงสวนหลวง เขตสวนหลวง กรุงเทพมหานคร 10250'),
(57, 'Swannarat', '123', 'NT2', 'วรรณรัตน์', 'สารินทร์', 'wannarat@gmail.com', 2, '0698845151', '71/15 Soi Pattanavate 12, Preedeepanomyong 14 ถ. สุขุมวิท 71 Prakanong-Nua เขตวัฒนา กรุงเทพมหานคร 10110'),
(58, 'Swaiwit', '123', 'NT1', 'ไววิทย์', 'ชิตพงษ์', 'waiwit@gmail.com', 2, '0894612358', '335 ถ. ศรีนครินทร์ แขวงหัวหมาก เขตบางกะปิ กรุงเทพมหานคร 10240'),
(59, 'Spongsak', '123', 'NT1', 'พงศักดิ์', 'คำภีร์', 'pongsak@gmail.com', 2, '0641121155', '8 ซอย เคหะร่มเกล้า 78 แยก 1 แขวงราษฎร์พัฒนา เขตสะพานสูง กรุงเทพมหานคร 10240'),
(60, 'Srungrawee', '123', 'NT2', 'รุ่งรวี', 'ศรีประจักษ์', 'rungrawee@hotmail.com', 2, '0878063154', '42 44 ถ. ร่มเกล้า เขตมีนบุรี กรุงเทพมหานคร 10510'),
(61, 'Ssomjai', '123', 'NT2', 'สมใจ', 'รักษาวรรณ', 'somjai@gmail.com', 2, '0631548080', 'พฤกษาวิลล์ 14 ซอย12 ถนน ประชาร่วมใจ เขตมีนบุรี กรุงเทพมหานคร 10510'),
(62, 'Spluemjit', '123', 'NT2', 'ปลื้มจิตต์', 'เรืองวดี', 'pluemjit@gmail.com', 2, '0978441754', '9 236-9/239 หมู่ที่ 4 แขวงอนุสาวรีย์ เขตบางเขน กรุงเทพมหานคร 10220');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Tbl_Grade`
--
ALTER TABLE `Tbl_Grade`
  ADD PRIMARY KEY (`GID`);

--
-- Indexes for table `Tbl_NameTitle`
--
ALTER TABLE `Tbl_NameTitle`
  ADD PRIMARY KEY (`TitleID`);

--
-- Indexes for table `Tbl_Role`
--
ALTER TABLE `Tbl_Role`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `Tbl_ShowGrade`
--
ALTER TABLE `Tbl_ShowGrade`
  ADD PRIMARY KEY (`SID`,`GradeID`,`SubjectID`),
  ADD UNIQUE KEY `SID` (`SID`,`GradeID`,`SubjectID`),
  ADD KEY `ShowGrade_GradeID` (`GradeID`),
  ADD KEY `ShowGrade_SubjectID` (`SubjectID`);

--
-- Indexes for table `Tbl_Subject`
--
ALTER TABLE `Tbl_Subject`
  ADD PRIMARY KEY (`SJID`);

--
-- Indexes for table `Tbl_User`
--
ALTER TABLE `Tbl_User`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `User_Role` (`roleID`),
  ADD KEY `User_NameTitle` (`TitleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Tbl_Role`
--
ALTER TABLE `Tbl_Role`
  MODIFY `roleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Tbl_User`
--
ALTER TABLE `Tbl_User`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Tbl_ShowGrade`
--
ALTER TABLE `Tbl_ShowGrade`
  ADD CONSTRAINT `ShowGrade_GradeID` FOREIGN KEY (`GradeID`) REFERENCES `Tbl_Grade` (`GID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ShowGrade_SID` FOREIGN KEY (`SID`) REFERENCES `Tbl_User` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ShowGrade_SubjectID` FOREIGN KEY (`SubjectID`) REFERENCES `Tbl_Subject` (`SJID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Tbl_User`
--
ALTER TABLE `Tbl_User`
  ADD CONSTRAINT `User_NameTitle` FOREIGN KEY (`TitleID`) REFERENCES `Tbl_NameTitle` (`TitleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `User_Role` FOREIGN KEY (`roleID`) REFERENCES `Tbl_Role` (`roleID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
