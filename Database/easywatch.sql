-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2023 at 05:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easywatch`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_name` varchar(30) NOT NULL,
  `admin_pass` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_name`, `admin_pass`, `name`) VALUES
('admin1', '0fcfc5a26462f77e9e57308765375a481dc2cfdd', 'testAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `username` varchar(30) DEFAULT NULL,
  `product_model` varchar(200) DEFAULT NULL,
  `unit` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`username`, `product_model`, `unit`) VALUES
('user01', 'CA0360-58E', 1),
('user01', 'LA680WGA-1DF', 2);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `product_id` int(10) NOT NULL,
  `img_path` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`product_id`, `img_path`) VALUES
(33, 'images/casio1pic1.jpg'),
(33, 'images/casio1pic2.jpg'),
(33, 'images/casio1pic3.jpg'),
(33, 'images/casio1pic4.jpg'),
(33, 'images/casio1pic1.jpg'),
(33, 'images/casio1pic2.jpg'),
(33, 'images/casio1pic3.jpg'),
(33, 'images/casio1pic4.jpg'),
(33, 'images/casio1pic1.jpg'),
(33, 'images/casio1pic2.jpg'),
(33, 'images/casio1pic3.jpg'),
(33, 'images/casio1pic4.jpg'),
(34, 'images/casio2pic1.jpg'),
(34, 'images/casio2pic2.jpg'),
(34, 'images/casio2pic3.jpg'),
(34, 'images/casio2pic4.jpg'),
(35, 'images/casio3-1.jpg'),
(35, 'images/casio3-2.jpg'),
(35, 'images/casio3-3.jpg'),
(35, 'images/casio3-4.jpg'),
(35, 'images/casio3-5.jpg'),
(36, 'images/casio3pic1.jpg'),
(36, 'images/casio3pic2.jpg'),
(36, 'images/casio3pic3.JPG'),
(36, 'images/casio3pic4.jpg'),
(36, 'images/casio3pic5.JPG'),
(37, 'images/casio2pic1.jpg'),
(37, 'images/casio2pic2.jpg'),
(37, 'images/casio2pic3.jpg'),
(37, 'images/casio2pic4.jpg'),
(38, 'images/GShock1pic1.jpg'),
(38, 'images/GShock1pic2.jpg'),
(38, 'images/GShock1pic3.jpg'),
(38, 'images/GShock1pic4.jpg'),
(39, 'images/G-shock2pic4.jpg'),
(39, 'images/G-shock2pic2.jpg'),
(39, 'images/G-shock2pic3.jpg'),
(39, 'images/G-shock2pic5.jpg'),
(39, 'images/G-shock2pic1.jpg'),
(40, 'images/G-shock3pic3.jpg'),
(40, 'images/G-shock3pic5.jpg'),
(40, 'images/G-shock3pic2.jpg'),
(40, 'images/G-shock3pic4.jpg'),
(40, 'images/G-shock3pic6.jpg'),
(41, 'images/G-shock4pic3.jpg'),
(41, 'images/G-shock4pic1.jpg'),
(41, 'images/G-shock4pic2.jpg'),
(41, 'images/G-shock4pic4.jpg'),
(41, 'images/G-shock4pic5.jpg'),
(41, 'images/G-shock4pic6.jpg'),
(42, 'images/G-shock5pic1.jpg'),
(42, 'images/G-shock5pic3.jpg'),
(42, 'images/G-shock5pic2.jpg'),
(42, 'images/G-shock5pic5.jpg'),
(43, 'images/Swatch1pic1.jpg'),
(43, 'images/Swatch1pic2.jpg'),
(43, 'images/Swatch1pic4.jpg'),
(44, 'images/Swatch2pic2.JPG'),
(44, 'images/Swatch2pic3.jpg'),
(44, 'images/Swatch2pic4.jpg'),
(44, 'images/Swatch2pic1.jpg'),
(45, 'images/Seiko1pic2.jpg'),
(45, 'images/Seiko1pic1.jpg'),
(45, 'images/seiko1pic3.jpg'),
(45, 'images/seiko1pic4.jpg'),
(45, 'images/seiko1pic5.jpg'),
(45, 'images/Seiko1pic6.jpg'),
(46, 'images/Seiko2pic1.jpg'),
(46, 'images/Seiko2pic2.jpg'),
(46, 'images/seiko2pic3.jpg'),
(46, 'images/seiko2pic4.jpg'),
(46, 'images/seiko2pic5.jpg'),
(47, 'images/Seiko3pic1.jpg'),
(47, 'images/Seiko3pic2.jpg'),
(47, 'images/seiko3pic3.jpg'),
(47, 'images/seiko3pic4.jpg'),
(47, 'images/seiko3pic5.jpg'),
(48, 'images/Seiko4pic2.jpg'),
(48, 'images/seiko4pic1.jpg'),
(48, 'images/seiko4pic3.jpg'),
(48, 'images/seiko4pic4.jpg'),
(48, 'images/seiko4pic5.jpg'),
(49, 'images/Citizen1pic6.jpg'),
(49, 'images/Citizen1pic2.JPG'),
(49, 'images/Citizen1pic3.jpg'),
(49, 'images/Citizen1pic5.jpg'),
(50, 'images/Citizen_2pic1.jpg'),
(50, 'images/Citizen_2pic2.jpg'),
(50, 'images/Citizen_2pic3.jpg'),
(50, 'images/Citizen_2pic21.jpg'),
(50, 'images/Citizen 2pic2.jpg'),
(51, 'images/ct21.jpg'),
(51, 'images/ct22.jpg'),
(51, 'images/ct23.jpg'),
(51, 'images/ct24.jpeg'),
(51, 'images/ct25.jpg'),
(52, 'images/ot11.jpg'),
(52, 'images/ot12.jpg'),
(52, 'images/ot13.jpg'),
(52, 'images/ot14.jpg'),
(52, 'images/ot15.jpg'),
(53, 'images/ot21.jpg'),
(53, 'images/ot22.jpg'),
(53, 'images/ot23.jpg'),
(53, 'images/ot24.jpg'),
(53, 'images/ot25.jpg'),
(54, 'images/ot31.jpg'),
(54, 'images/ot32.jpg'),
(54, 'images/ot33.jpg'),
(54, 'images/ot34.jpg'),
(54, 'images/ot35.jpg'),
(55, 'images/ot51.jpg'),
(55, 'images/ot52.jpg'),
(55, 'images/ot53.jpg'),
(55, 'images/ot54.jpg'),
(55, 'images/ot55.jpg'),
(56, 'images/ct11.jpg'),
(56, 'images/ct12.jpg'),
(56, 'images/ct13.jpg'),
(56, 'images/ct14.jpg'),
(57, 'images/crb1.jpg'),
(57, 'images/crb4.jpg'),
(57, 'images/crb5.jpg'),
(57, 'images/crb2.jpg'),
(57, 'images/crb3.jpg'),
(58, 'images/er1.jpg'),
(58, 'images/er2.jpg'),
(58, 'images/er3.JPG'),
(58, 'images/er4.jpg'),
(59, 'images/gs13.jpg'),
(59, 'images/gs14.jpg'),
(59, 'images/gs15.jpg'),
(59, 'images/gs11.png'),
(59, 'images/gs12.jpg'),
(60, 'images/gs21.jpg'),
(60, 'images/gs22.jpg'),
(60, 'images/gs23.jpg'),
(60, 'images/gs24.jpg'),
(60, 'images/gs25.jpg'),
(0, 'images/gs31.jpg'),
(0, 'images/gs32.jpg'),
(0, 'images/gs33.jpg'),
(0, 'images/gs34.jpg'),
(61, 'images/gs41.jpg'),
(61, 'images/gs42.jpg'),
(61, 'images/gs43.jpg'),
(61, 'images/gs44.jpg'),
(61, 'images/gs45.jpg'),
(62, 'images/se11.jpg'),
(62, 'images/se12.jpg'),
(62, 'images/se13.jpg'),
(62, 'images/se14.jpg'),
(63, 'images/se25.jpg'),
(63, 'images/se23.jpg'),
(63, 'images/se24.jpg'),
(63, 'images/se22.jpg'),
(64, 'images/se31.jpg'),
(64, 'images/se32.jpg'),
(64, 'images/se33.jpg'),
(64, 'images/se34.jpg'),
(64, 'images/se35.jpg'),
(65, 'images/se52.jpg'),
(65, 'images/se54.jpeg'),
(65, 'images/se54.jpg'),
(66, 'images/a11.jpg'),
(66, 'images/a12.jpg'),
(66, 'images/a13.jpg'),
(66, 'images/a14.jpg'),
(67, 'images/a21.jpg'),
(67, 'images/a22.jpg'),
(67, 'images/a23.jpg'),
(67, 'images/a24.jpg'),
(68, 'images/a115.jpg'),
(68, 'images/a111.jpg'),
(68, 'images/a112.jpg'),
(68, 'images/a113.jpg'),
(68, 'images/a114.jpg'),
(69, 'images/aa15.jpg'),
(69, 'images/1aa14.jpg'),
(69, 'images/aa12.jpg'),
(70, 'images/aa22.jpg'),
(70, 'images/aa21.jpg'),
(70, 'images/aa23.jpg'),
(70, 'images/aa24.jpg'),
(70, 'images/aa25.jpg'),
(70, 'images/aa26.jpg'),
(71, 'images/aa33.jpg'),
(71, 'images/aa32.jpg'),
(71, 'images/aa31.jpg'),
(71, 'images/aa34.jpg'),
(71, 'images/aa35.jpg'),
(72, 'images/a41.jpg'),
(72, 'images/a42.jpg'),
(72, 'images/a43.jpg'),
(72, 'images/a44.jpg'),
(72, 'images/a45.jpg'),
(73, 'images/a51.jpg'),
(73, 'images/a52.jpg'),
(73, 'images/a53.jpg'),
(73, 'images/a54.jpg'),
(74, 'images/11.jpg'),
(74, 'images/12.jpg'),
(74, 'images/13.jpg'),
(74, 'images/14.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `m_id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `msg` varchar(1000) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `total_price` int(10) NOT NULL,
  `order_date` date NOT NULL DEFAULT '0000-00-00',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `ems_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `order_status`, `total_price`, `order_date`, `first_name`, `last_name`, `phone`, `email`, `address`, `bank_name`, `account_number`, `pay_date`, `ems_code`) VALUES
(1, 'user01', 'จัดส่งแล้ว', 9200, '2023-11-25', 'sdf', 'sef', 'sefefsr', 'sfe', 'sefesf', 'adawdawdw', '325652995', '2023-10-30', '6584848484'),
(2, 'user01', 'จัดส่งแล้ว', 12300, '2023-11-25', 'asd', 'awd', 'adadw', 'adwdad', 'addadadw', 'adwdawd', 'adawdad', '2023-11-15', '8888');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `order_id` int(10) NOT NULL,
  `product_model` varchar(200) NOT NULL,
  `unit` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `brand` int(10) NOT NULL,
  `model` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `price_promotion` int(10) NOT NULL,
  `color` varchar(30) DEFAULT NULL,
  `warranty` varchar(100) DEFAULT NULL,
  `stock` int(10) NOT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  `add_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand`, `model`, `price`, `price_promotion`, `color`, `warranty`, `stock`, `detail`, `add_date`) VALUES
(33, 1, 'F-200W-1ADF', 1100, 0, 'ดำ', '1 ปี', 20, '<p><b>รูปแบบ </b>นาฬิการะบบ Analog </p><p><b>ตัวเรือน</b> ทำจาก พลาสติกชนิดแข็ง </p><p><b>สาย</b> ทำจาก ยางเรซิ่น <br/></p><p><b>รายละเอียด  </b>เป็นนาฬิกาที่มีดีไซน์ทันสมัย ทำจากวัสดุคุณภาพดีเยี่ยม จึงมอบความรู้สึกที่เบา สบาย ไม่อึดอัด เเละพร้อมให้คุณออกไปใช้ชีวิตข้างนอกบ้านได้อย่างมีสีสัน และยังคงคอนเซ็ปต์ตามแนวทางของคุณได้เป็นอย่างดี แมตช์ได้กับทุกสไตล์ นอกจากจะเป็นการดีไซน์ที่ดูโดดเด่นอย่างลงตัวแล้วนั้น ยังเป็นนาฬิกาที่สามารถใส่เข้ากับสไตล์ของคุณได้อย่างง่ายดาย และยังสามารถใส่ได้ทุกโอกาสตามที่คุณต้องการ</p>', '2015-11-07'),
(34, 1, 'A178WGA-1AUDF', 1960, 0, 'สีทอง', '1 ปี', 20, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ ดิจิตอล <br/><b>ตัวเรือน</b> ทำจาก แสตนเลส <br/><b>สาย</b> ทำจาก แสตนเลส <br/><b>รายละเอียด</b> มีการดีไซน์ตัวเรือนเพื่อเพิ่มสไตล์ในตัวได้เป็นอย่างดี โดยมีขนาด หน้าปัดกว้าง 4.9 ซม. จึงทำให้คุณสวมใส่ได้อย่างสบายเหมาะสำหรับทังชายและหญิง ทำจากวัสดุคุณภาพดีเยี่ยม จึงมอบความรู้สึกที่เบา สบาย ไม่อึดอัด เเละพร้อมให้คุณออกไปใช้ชีวิตข้างนอกบ้านได้อย่างมีสีสัน และยังคงคอนเซ็ปต์ตามแนวทางของคุณได้เป็นอย่างดี แมตช์ได้กับทุกสไตล์ นอกจากจะเป็นการดีไซน์ที่ดูโดดเด่นอย่างลงตัวแล้วนั้น ยังเป็นนาฬิกาที่สามารถใส่เข้ากับสไตล์ของคุณได้อย่างง่ายดาย และยังสามารถใส่ได้ทุกโอกาสตามที่คุณต้องการ</p>', '2015-11-07'),
(35, 1, 'W-S220C-7BVDF-White', 2900, 0, 'สีขาว', '1 ปี', 20, '<p><b>รูปแบบ</b>  นาฬิกาข้อมือ แบบดิจิตอล <br/><b>ตัวเรือน</b> ทำจาก เรซิ่นอย่างดี  <br/> <b>สาย</b> ทำจาก เรซิ่นอย่างดี <br/><b>รายละเอียด</b> มีการดีไซน์ตัวเรือนเพื่อเพิ่มสไตล์ในตัวได้เป็นอย่างดี โดยมีขนาด หน้าปัดกว้าง 4.9 ซม. จึงทำให้คุณสวมใส่ได้อย่างสบายเหมาะสำหรับทังชายและหญิง<br/><b>คุณสมบัติ</b><br/>1.ไฟหน้าจอ LED  <br/>2. ระบบ Solar Powered<br/> 3. ระบบเปรียบเทียบเวลา 48 เมืองทั่วโลก<br/>4. แบตเตอรี่สำรองในกรณีไม่โดนแสง 11 เดือน ในกรณีที่ชาร์จแบตเต็ม<br/>5.กันน้ำ 100 เมตร</p>', '2015-11-07'),
(36, 1, 'MTP-1170G-7A', 4050, 0, 'สีขาวทอง', '1 ปี', 10, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจากเหล็ก Iron Plate <br/><b>สาย</b> ทำจาก แสตนเลสสตีลสีทอง<br/><b>รายละเอียด</b> เป็นนาฬิกาที่มีดีไซน์ทันสมัย ทำจากวัสดุคุณภาพดีเยี่ยม จึงมอบความรู้สึกที่เบา สบาย ไม่อึดอัด เเละพร้อมให้คุณออกไปใช้ชีวิตข้างนอกบ้านได้อย่างมีสีสัน และยังคงคอนเซ็ปต์ตามแนวทางของคุณได้เป็นอย่างดี แมตช์ได้กับทุกสไตล์ นอกจากจะเป็นการดีไซน์ที่ดูโดดเด่นอย่างลงตัวแล้วนั้น ยังเป็นนาฬิกาที่สามารถใส่เข้ากับสไตล์ของคุณได้อย่างง่ายดาย และยังสามารถใส่ได้ทุกโอกาสตามที่คุณต้องการ</p>', '2015-11-07'),
(37, 1, 'LA680WGA-1DF', 1550, 0, 'สีทอง', '1 ปี', 20, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจากเหล็ก Iron Plate <br/><b>สาย</b> ทำจาก แสตนเลสสตีลสีทอง<br/><!--StartFragment--><b style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"><b>รายละเอียด  </b></b><span>เป็นนาฬิกาที่มีดีไซน์ทันสมัย ทำจากวัสดุคุณภาพดีเยี่ยม จึงมอบความรู้สึกที่เบา สบาย ไม่อึดอัด เเละพร้อมให้คุณออกไปใช้ชีวิตข้างนอกบ้านได้อย่างมีสีสัน และยังคงคอนเซ็ปต์ตามแนวทางของคุณได้เป็นอย่างดี แมตช์ได้กับทุกสไตล์ นอกจากจะเป็นการดีไซน์ที่ดูโดดเด่นอย่างลงตัวแล้วนั้น ยังเป็นนาฬิกาที่สามารถใส่เข้ากับสไตล์ของคุณได้อย่างง่ายดาย และยังสามารถใส่ได้ทุกโอกาสตามที่คุณต้องการ</span></p>', '2015-11-07'),
(38, 2, 'GA-110AC-7ALimitedEdition', 6500, 0, 'สีขาวฟ้า', '1 ปี', 11, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ ดิจิตอล และ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก เรซินอย่างดี<br/><b>สาย</b> ทำจาก เรซินอย่างดี<br/><!--StartFragment--><b style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"><b>รายละเอียด  </b></b>เหมาะสำหรับผู้ชาย เป็นนาฬิกาที่มีดีไซน์ทันสมัย ทำจากวัสดุคุณภาพดีเยี่ยม จึงมอบความรู้สึกที่เบา สบาย ไม่อึดอัด เเละพร้อมให้คุณออกไปใช้ชีวิตข้างนอกบ้านได้อย่างมีสีสัน และยังคงคอนเซ็ปต์ตามแนวทางของคุณได้เป็นอย่างดี แมตช์ได้กับทุกสไตล์ นอกจากจะเป็นการดีไซน์ที่ดูโดดเด่นอย่างลงตัวแล้วนั้น ยังเป็นนาฬิกาที่สามารถใส่เข้ากับสไตล์ของคุณได้อย่างง่ายดาย และยังสามารถใส่ได้ทุกโอกาสตามที่คุณต้องการ</p>', '2015-11-07'),
(39, 2, 'GD-120N-1B3DR', 4500, 0, 'สีดำ', '1 ปี', 10, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ ดิจิตอล และ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก เรซินอย่างดี<br/><b>สาย</b> ทำจาก เรซินอย่างดี<br/><!--StartFragment--><b style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"><b></b><b><b>รายละเอียด  </b></b></b>เหมาะสำหรับผู้ชาย เป็นนาฬิกาที่มีดีไซน์ทันสมัย ทำจากวัสดุคุณภาพดีเยี่ยม จึงมอบความรู้สึกที่เบา สบาย ไม่อึดอัด เเละพร้อมให้คุณออกไปใช้ชีวิตข้างนอกบ้านได้อย่างมีสีสัน และยังคงคอนเซ็ปต์ตามแนวทางของคุณได้เป็นอย่างดี แมตช์ได้กับทุกสไตล์ นอกจากจะเป็นการดีไซน์ที่ดูโดดเด่นอย่างลงตัวแล้วนั้น ยังเป็นนาฬิกาที่สามารถใส่เข้ากับสไตล์ของคุณได้อย่างง่ายดาย และยังสามารถใส่ได้ทุกโอกาสตามที่คุณต้องการ</p>', '2015-11-07'),
(40, 2, 'DW-6900AC-2DR', 3300, 0, 'สีนำเงินแดง', '6 เดือน', 10, '<p><b>รูปแบบ</b>  เป็นนาฬิกาแบบ ดิจิตอล และ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก เรซินอย่างดี<br/><b>สาย</b> ทำจาก เรซินอย่างดี<br/><!--StartFragment--></p><p style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"><b><b>รายละเอียด</b></b></p><ul style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"><li>กันสะเทือน (G-SHOCK)</li><li> กันน้ำ 200 เมตร</li><li>ระบบป้องกันสนามแม่เหล็ก</li><li>ไฟแบบ LED</li><li> ระบบไฟอัตโนมัติ พลิกมือไฟติด</li><li> ระบบเวลา 48 เมืองใหญ่ทั่วโลก</li><li> ระบบจับเวลาเดินหน้า</li><li> ระบบจับเวลาถอยหลัง</li><li> ระบบตั้งปลุก 5 เวลา</li><li> ระบบปฏิทินอัตโนมัติ ถึงปี 2099,ระบบบอกเวลา 12/24 ชั่วโมง</li><li><span> หน้าจอนาฬิกามี 2 ระบบ</span></li><li><span> (เข็ม+ดิจิตอล)</span></li><li><span>แบตเตอรี่ 3 ปี รุ่น CR1220</span></li></ul><!--EndFragment--><p><br/></p><p><br/></p><p></p>', '2015-11-07'),
(41, 2, 'GA-100A-9ADR', 5600, 0, 'สีเหลือง', '1 ปี', 10, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ ดิจิตอล และ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก เรซินอย่างดี<br/><b>สาย</b> ทำจาก เรซินอย่างดี<br/><b>รายละเอียด</b> เหมาะสำหรับผู้ชาย เป็นนาฬิกาที่มีดีไซน์ทันสมัย ทำจากวัสดุคุณภาพดีเยี่ยม จึงมอบความรู้สึกที่เบา สบาย ไม่อึดอัด เเละพร้อมให้คุณออกไปใช้ชีวิตข้างนอกบ้านได้อย่างมีสีสัน และยังคงคอนเซ็ปต์ตามแนวทางของคุณได้เป็นอย่างดี แมตช์ได้กับทุกสไตล์ นอกจากจะเป็นการดีไซน์ที่ดูโดดเด่นอย่างลงตัวแล้วนั้น ยังเป็นนาฬิกาที่สามารถใส่เข้ากับสไตล์ของคุณได้อย่างง่ายดาย และยังสามารถใส่ได้ทุกโอกาสตามที่คุณต้องการ</p>', '2015-11-07'),
(42, 2, 'DW-6900SC-1DR', 3900, 0, 'สีขาวดำ', '6 เดือน', 15, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ ดิจิตอล และ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก เรซินอย่างดี<br/><b>สาย</b> ทำจาก เรซินอย่างดี<br/><b>รายละเอียด</b> เหมาะสำหรับผู้ชาย เป็นนาฬิกาที่มีดีไซน์ทันสมัย ทำจากวัสดุคุณภาพดีเยี่ยม จึงมอบความรู้สึกที่เบา สบาย ไม่อึดอัด เเละพร้อมให้คุณออกไปใช้ชีวิตข้างนอกบ้านได้อย่างมีสีสัน และยังคงคอนเซ็ปต์ตามแนวทางของคุณได้เป็นอย่างดี แมตช์ได้กับทุกสไตล์ นอกจากจะเป็นการดีไซน์ที่ดูโดดเด่นอย่างลงตัวแล้วนั้น ยังเป็นนาฬิกาที่สามารถใส่เข้ากับสไตล์ของคุณได้อย่างง่ายดาย และยังสามารถใส่ได้ทุกโอกาสตามที่คุณต้องการ</p>', '2015-11-07'),
(43, 5, 'YCS568', 5450, 0, 'สีดำแดง', '6 เดือน', 10, '<p><b>รูปแบบ </b>เป็นนาฬิกาแบบ ดิจิตอล และ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลสสตีล หน้าปัดดำ สปอร์ตโครโนกราฟ  <br/><b>สาย </b>ทำจาก ยางสปอร์ต<br/><b>รายละเอียด</b> เหมาะกับสุภาพบุรุษและสุภาพสตรีที่ชอบนาฬิกาสปอร์ต ดีไซน์รูปแบบตามแบบฉบับ Swatch มีช่องบอกวันที่ ณ ตำแหน่ง 6 น. ระบบควอทซ์โครโนกราฟ ETA swiss made ขนาดตัวเรือน 39 มม. ไม่รวมเม็ดมะยม ตัวเรือนหนา 11.5 mm. กันน้ำ 30 เมตร สายยางสปอร์ต</p>', '2015-11-07'),
(44, 5, 'YTS406G', 5450, 0, 'สีเงิน', '1 ปี', 4, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลส หน้าปัดสีน้ำตาล  <br/><b>สาย</b> ทำจากสแตนเลส<br/><b>รายละเอียด</b> ดีไซน์รูปแบบตามแบบฉบับ Swatch แสดงเวลาแบบสามเข็ม แสดงวันที่ ณ ตำแหน่ง 6 น.  ระบบควอทซ์ ETA swiss made ขนาดตัวเรือน 43 มม. หนา 9 mm. ไม่รวมเม็ดยะยม กันน้ำลึกได้ถึง 30 เมตร มี lumibrite เรืองแสงชัดเจนในที่มืด</p>', '2015-11-07'),
(45, 4, 'SRP307K1', 9500, 0, 'สีเงินแสตนเลส', '2 ปี', 12, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลส  <br/><b>สาย</b> ทำจาก สแตนเลส</p><p><b>รายละเอียด</b> ดีไซน์ที่เคลือบมนต์เสน่ห์ลุ่มลึก ด้วยแรงบันดาลใจในการออกแบบจากเขี้ยวของอสูรร้ายในจินตนาการ น่าตาดุดัน แต่น่าค้นหา น่าครอบครอง และยังมาพร้อมเครื่องใหม่ 4R ให้คุณเลือกขึ้นลานได้ด้วยมือ หรืออัตโนมัติ แถมตั้งเวลาได้ละเอียดแม้วินาที</p>', '2015-11-07'),
(46, 4, 'SSC081', 7650, 0, 'สีนำตาลดำ', '1 ปี', 7, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลสสตีล หน้าปัดดำ สปอร์ตโครโนกราฟ  <br/><b>สาย</b> ทำจาก หนังแท้ สีนำตาล<br/><b>รายละเอียด</b> ฟังก์ชั่นคำนวนทิศทาง ภายในบรรจุกลไกใช้พลังงานแสงอาทิตย์ โครโนกราฟจับเวลา ตั้งปลุกได้ ,กันน้ำลึก 100 เมตร,ระบบพลังงานแสงอาทิตย์ สำรองพลังงานได้นาน 10 เดือน,ตัวเรือนแสตนเลสแท้ ขนาด 42 mmแสดงเวลาแบบ 3 เข็ม พร้อมฟังก์ชั่นเข็มย่อยแสดงเข็มวินาที,เข็มจับเวลาในหน่วยนาที และชุดเข็มตั้งปลุกเข็มเรืองแสงได้ในที่มืดแสดงวันที่ ณ ตำแหน่ง 4 น.ฝาหลังเกลียวกันน้ำลึก 100 เมตรกระจกหนา Hardlex Crystal</p>', '2015-11-07'),
(47, 4, 'SNK805K2', 2350, 0, 'สีเขียว', '3 เดือน', 20, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลสสตีล หน้าปัดดำ <br/><b>สาย</b> ทำจาก ผ้าไนลอนสีเขียว<br/><b>รายละเอียด</b></p><ul><li> ระบบ AUTOMATIC เครื่อง SEIKO CAL. 7S26 ไม่ต้องใช้แบตเตอรี่</li></ul><ul><li>หน้าบัดบอก เวลา /วัน/วันที่, กันน้ำได้ลึก 30 เมตร</li></ul><ul><li>ฝาหลังแบบเกลียว เป็นกระจกใสเปลือย มองเห็นตัวเครื่อง</li></ul><ul><li>ขนาดตัวเรือน 37 มม. หนา 11 มม.กว้างของสาย 18 มม</li></ul><ul><li> มีทัมทิมในตัวเครื่อง 21 เม็ด</li></ul><ul><li>ด้านฝาหลังมีซีเรียลนัมเบอร์ 6 หลักแต่ละเรือนไม่ซ้ำกัน มีเรือนเดียวในโลก</li></ul>', '2015-11-07'),
(48, 10, 'SRP315J1', 7900, 0, 'สีส้มดำ', '1 ปี', 5, '<p>รูปแบบ เป็นนาฬิกาแบบ อนาล็อก <br/>ตัวเรือน ทำจาก สแตนเลสสตีล หน้าปัดดำ<br/>สาย ทำจาก เรซิ่น<br/>รายละเอียด </p><ul><li>กระจก Hardlex Crystal</li><li>เครื่อง Automatic 4R36</li><li> ระบบ Automatic ไม่ต้องใช้แบตเตอรี่ สำรองพลังงานได้ 48 ชม.</li><li> กว้าง 42 mm หนา 13mm</li><li>กรอบหมุนทางเดียวสำหรับการจับเวลาดำน้ำ </li><li>กันน้ำ 200 เมตร </li><li>ฝาหลังและเม็ดมะยมเกลียว </li><li>พรายน้ำสว่างพิเศษเหมาะสำหรับการดำน้ำ</li></ul>', '2015-11-07'),
(49, 3, 'AN8055-06E', 3900, 0, 'สีน้ำตาลดำ', '1 ปี', 20, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลสสตีล หน้าปัดดำ สปอร์ตโครโนกราฟ  <br/><b>สาย</b> ทำจาก หนังแท้ สีนำตาล  </p><p><span><b>รายละเอียด</b> เป็นนาฬิกาที่มีดีไซน์ทันสมัย ทำจากวัสดุคุณภาพดีเยี่ยม จึงมอบความรู้สึกที่เบา สบาย ไม่อึดอัด เเละพร้อมให้คุณออกไปใช้ชีวิตข้างนอกบ้านได้อย่างมีสีสัน และยังคงคอนเซ็ปต์ตามแนวทางของคุณได้เป็นอย่างดี แมตช์ได้กับทุกสไตล์ นอกจากจะเป็นการดีไซน์ที่ดูโดดเด่นอย่างลงตัวแล้วนั้น ยังเป็นนาฬิกาที่สามารถใส่เข้ากับสไตล์ของคุณได้อย่างง่ายดาย และยังสามารถใส่ได้ทุกโอกาสตามที่คุณต้องการ</span></p>', '2015-11-07'),
(50, 3, 'CA0360-58E', 9200, 0, 'สีเงิน', '1 ปี', 10, '<p><b>รูปแบบ </b>เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลสสตีล หน้าปัดดำ   <br/><b>สาย</b> ทำจาก สแตนเลสสตีล<br/><b>รายละเอียด</b> สำรองพลังงานนาน 10 เดือนแม้อยู่ในที่มืด หน้าปัดแสดงเวลาแบบสามเข็ม พร้อมฟังก์ชั่นจับเวลา แสดงเข็มย่อย เป็นเข็มจับเวลาหน่วยนาที จับเวลาได้สูงสุด 60 นาที เข็ม 24 ชม. และ เข็มวินาที แสดงวันที่ ณ ตำแหน่ง 3 น. กระจกแบบ hardlex crystal หนา ฝาหลังเกลียวกันน้ำลึก 100 เมตร</p>', '2015-11-07'),
(51, 3, 'BJ7019-62E', 6900, 0, 'สีเงินดำ', '2 ปี', 12, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลสสตีล หน้าปัดดำ   <br/><b>สาย</b> ทำจาก สแตนเลสสตีลสีเงินดำ<br/><b>รายละเอียด</b> </p><ul><li>นาฬิกาใช้พลังงานแสง</li><li>ตัวเครื่องCitizen Caliber B877 Eco-Drive Japan Movement</li><li>กันน้ำลึก 200 เมตร ( 20 Bar )</li><li>บอกวันที่ ณ ตำแหน่ง 3 นาฬิกา</li><li>มีหน้าปัดบอกเวลาแบบ 24 ชั่วโมง</li><li>มีสเกลที่ใช้งานเกี่ยวกับการบิน</li><li>มีฟังก์ชั่นป้องกันการประจุเกิน</li><li>มี Lumibrite เรืองแสงในที่มืด</li><li>กระจกหน้าปัดทำจากคริสตัลเคลือบกันแสงสะท้อน,ฝาหลังแบบเกลียว ทำจากสแตนเลส</li><li>ตัวเรือนทำจากสแตนเลสรมดำ</li><li>สายทำจากสแตนเลสรมดำ</li><li>ขนาดของตัวเรือน 45 mm.</li><li>ขนาดของหน้าปัด  42 mm.</li><li>ขนาดความหนาของตัวเรือน 12 mm.</li><li>สำรองพลังงานได้ยาวนาน 6 เดือนต่อการประจุเต็มที่</li></ul>', '2015-11-07'),
(52, 11, 'FTV01001T', 11200, 0, 'สีทอง', '2 ปี', 3, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลส   <br/><b>สาย</b> ทำจาก หนังแท้<br/><b>รายละเอียด</b> </p><ul><li>นาฬิกาข้อมือ Analogue Quartz Cal.KFC00 Made in Japan</li><li><span> กันน้ำ 100 เมตร, บอกวันที่, มีเข็มบอกเวลา 24 ชม</span></li><li><span>มีเข็มบอกวินาทีแบบหน้าปัดวงกลม, มี Tachymeter Scale</span></li><li><span>กระจกหน้าปัดแบบคริสตัลแซฟไฟร์</span></li><li><span>หน้าปัดกว้าง 41.50 mm.</span></li><li><span>ด้านฝาหลังมีซีเรียลนัมเบอร์ 8 หลัก แต่ละเรือนไม่ซ้ำกันมีเพียงเรือนเดียวในโลก</span></li></ul>', '2015-11-07'),
(53, 11, 'FTT0V002W', 6800, 0, 'สีทอง', '2 ปี', 6, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลสสตีล หน้าปัด สีขาว   <br/><b>สาย</b> ทำจาก หนังแท้<br/><b>รายละเอียด</b> Analogue Quartz Movement, Orient caliber KFB00 Made in Japan, สายหนังแท้สีน้ำตาลเข้ม, บอกวันที่, กันน้ำ 50 เมตร, มีฟังก์ชั่นจับเวลา, มี Tachymeter Scale, กระจกหน้าปัดแก้วคริสตัลโดม, ฝาหลังสแตนเลสแบบเกลียวหมุน, ตัวเรือนสแตนเลสสีทอง หน้าปัดสีขาว, ขนาดตัวพเรือน 42.60 mm.</p>', '2015-11-07'),
(54, 11, 'FER02004B0', 11900, 0, 'สีดำ', '1 ปี', 2, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลสสตีลดำ หน้าปัดดำ   <br/><b>สาย </b>ทำจาก สแตนเลสสตีลดำ<br/><b>รายละเอียด</b> ระบบออโตเมติก ไม่ใช้แบตเตอรี่• Orient Caliber Japan Movement., ความถึ่ 21600 รอบต่อชั่วโมง ( 6 รอบต่อนาที ), มีทับทิม 21 jewels., กันน้ำ 50 เมตร ( 5 Bar ), บอกวันที่ ณ ตำแหน่ง 3 นาฬิกา, หน้าปัดสีดำ เข็มและขีดบอกเวลาสีทอง, กระจกหน้าปัดทำจาก Sapphire Crystal, ด้านหลังเปลือย เพื่อโชว์กลไกลเครื่อง, ตัวเรือนทำจากสแตนเลสรมดำ, สายทำจากสแตนเลสรมดำ, ขนาดตัวเรือนเส้นผ่าศูนย์กลาง 41 mm. , ขนาดความหนาของตัวเรือน 11 mm., น้ำหนัก 130 g</p>', '2015-11-07'),
(55, 11, 'FGW0100EW', 5500, 0, 'สีเงินขาว', '1 ปี', 10, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน </b>ทำจาก สแตนเลสสตีลดำ หน้าปัดดำ   <br/><b>สาย </b>ทำจาก สแตนเลสสตีลดำ<br/><b>รายละเอียด</b> ระบบ Quartz, Orient Cal. JP600, กันน้ำ 50 เมตร, สายหนังแท้สีน้ำตาล, บอกวันที่, ตัวเรือนสแตนเลสเคลือบทอง pinkgold หน้าปัดสีขาว, ขนาดตัวเรือน 38.00 มม., กระจกหน้าปัดแก้วคริสตัลแซฟไฟร์, ฝาหลังแบบเกลียวหมุน</p>', '2015-11-07'),
(56, 3, 'BM7130-58A', 2940, 0, 'สีเงิน', '3 เดือน', 12, '<div><b style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"><b>รูปแบบ</b></b><span style=\"color: rgb(115, 135, 156);float: none;background-color: rgb(255, 255, 255);\"><span class=\"Apple-converted-space\"> </span>เป็นนาฬิกาแบบ อนาล็อก<span class=\"Apple-converted-space\"> </span></span><br style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"/><b style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"><b>ตัวเรือน</b></b><span style=\"color: rgb(115, 135, 156);float: none;background-color: rgb(255, 255, 255);\"><span class=\"Apple-converted-space\"> </span>ทำจาก สแตนเลสสตีลดำ</span></div><div><b><b>สาย</b></b><span> ทำจาก สแตนเล<b>ส</b></span></div><div><span><!--StartFragment--></span><p style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"><b>รายละเอียด </b></p><ul style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"><li>ระบบควอทซ์</li><li>กันน้ำ 50 เมตร</li><li>ฟังก์ชั่นจับเวลา,</li><li>สายสแตนเลสสตีล<', '2015-11-07'),
(57, 1, 'ERA-200RB-1A-RedbullEdition', 9800, 0, 'สีดำ', '1 ปี', 2, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลสสตีลดำ หน้าปัดดำ   <br/><b>สาย</b> ทำจาก สแตนเลสสตีลดำ<br/><b>รายละเอียด</b> </p><ul><li>ชุบเคลือบสีบางส่วน</li><li> กระจกมิเนอรัล</li><li>มาตรความเร็ว</li><li>กันน้ำลึก 100 เมตร</li><li> วัสดุตัวเรือน / กรอบ: สเตนเลสสตีล, สายสเตนเลสสตีล</li><li> ล็อคพับสามทบและกดเพียงครั้งเดียวเพื่อล็อค</li><li>ไฟ LED ให้แสงพื้นหลัง (ตัวเรืองแสงโดดเด่น)</li><li>สวิตช์เปิดไฟอัตโนมัติ,</li><li>เลือกระยะเวลาการเรืองแสงได้ แสงระเรื่อ,</li><li> แสดงเวลาโลก<span>31 โซนเวลา (48 เมือง + เวลาสากลเชิงพิกัด (Coordinated Universal Time)</span></li><li><span> แสดงรหัสเมือง ปิด/เปิดเวลาออมแสง (Daylight saving)</span></li><li><span> เข็มทิศดิจิตอล (ทิศเหนือ)</span></li><li><span> เข็มชี้ไปทางทิศเหนือ (วัดทิศทางต่อเนื่อง 20 วินาที)</span></li><li><span> วัดและแสดงทิศทาง 1 ใน 16 จุด</span></li><li><span> ช่วงการวัดทิศ: 0 ถึง 359°</span></li></ul>', '2015-11-07'),
(58, 1, 'EFR-528RBP-1A-RedbullEdition', 4600, 0, 'สีดำ', '6 เดือน', 4, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลสสตีลดำ หน้าปัดดำ   <br/><b>สาย</b> ทำจาก เรซิ่นสีดำอย่างดี<br/><b>รายละเอียด</b> </p><ul><li>กันน้ำ 100 เมตร</li><li> ระบบโครโนกราฟจับเวลา 1/100 วินาที</li><li> หน้าปัดกระจกทรงกลม</li><li>โหมดวัด: เวลาที่ผ่านไปแบ่งเวลาครั้งที่ 1-2, แสดงวันที่,</li><li>การจับเวลาปกติ</li><li>3 อะนาล็อก (ชั่วโมง, นาที, วินาทีสำหรับจับเวลา)</li><li> เข็มย่อย 3 เข็ม</li><li> ความถูกต้อง: ± 20 วินาทีต่อเดือน</li><li>แบตเตอรี่ 3 ปี SR927W,</li><li>ขนาดหน้าปัด 47 X 43.9 X 11.4</li><li> น้ำหนัก160 กรัม</li></ul>', '2015-11-07'),
(59, 2, 'GA-100MC-2A', 3000, 0, 'สีน้ำเงิน', '1 ปี', 10, '<p><b>รุปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก เรซิ่นอย่างดี   <br/><b>สาย</b> ทำจาก สายผ้า หน้าปัดสีน้ำเงิน<br/><!--StartFragment--></p><p style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"><b><b>รายละเอียด</b></b></p><ul style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"><li>กันสะเทือน (G-SHOCK)</li><li> กันน้ำ 200 เมตร</li><li>ระบบป้องกันสนามแม่เหล็ก</li><li>ไฟแบบ LED</li><li> ระบบไฟอัตโนมัติ พลิกมือไฟติด</li><li> ระบบเวลา 48 เมืองใหญ่ทั่วโลก</li><li> ระบบจับเวลาเดินหน้า</li><li> ระบบจับเวลาถอยหลัง</li><li> ระบบตั้งปลุก 5 เวลา</li><li> ระบบปฏิทินอัตโนมัติ ถึงปี 2099,ระบบบอกเวลา 12/24 ชั่วโมง</li><li><span> หน้าจอนาฬิกามี 2 ระบบ</span></li><li><span> (เข็ม+ดิจิตอล)</span></li><li><span>แบตเตอรี่ 3 ปี รุ่น CR1220</span></li></ul><!--EndFragment--><p><br/></p><p><br/></p><p></p>', '2015-11-07'),
(60, 2, 'GA-110NE-9A', 15000, 0, 'สีทอง ดำ', '2 ปี', 2, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก และดิจิตอล <br/><b>ตัวเรือน</b> ทำจาก สแตนเลสสตีล   <br/><b>สาย</b> ทำจาก เรซิ่นอย่างดี<br/><b>รายละเอียด</b></p><ul><li> กันสะเทือน (G-SHOCK)</li><li> กันน้ำ 200 เมตร</li><li>ระบบป้องกันสนามแม่เหล็ก</li><li>ไฟแบบ LED</li><li> ระบบไฟอัตโนมัติ พลิกมือไฟติด</li><li> ระบบเวลา 48 เมืองใหญ่ทั่วโลก</li><li> ระบบจับเวลาเดินหน้า</li><li> ระบบจับเวลาถอยหลัง</li><li> ระบบตั้งปลุก 5 เวลา</li><li> ระบบปฏิทินอัตโนมัติ ถึงปี 2099,ระบบบอกเวลา 12/24 ชั่วโมง</li><li><span> หน้าจอนาฬิกามี 2 ระบบ</span></li><li><span> (เข็ม+ดิจิตอล)</span></li><li><span>แบตเตอรี่ 3 ปี รุ่น CR1220</span><br/></li></ul>', '2015-11-07'),
(61, 2, 'GA-200BW-1A', 4600, 0, 'สีดำ', '6 เดือน', 12, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก และดิจิตอล <br/><b>ตัวเรือน </b>ทำจาก สแตนเลสสตีล   <br/><b>สาย</b> ทำจาก เรซิ่นอย่างดี<br/><b>รายละเอียด</b></p><ul><li> กันน้ำ 200 เมตร</li><li> ระบบป้องกันสนามแม่เหล็ก</li><li> ไฟแบบ LED</li><li> ระบบไฟอัตโนมัติ พลิกมือไฟติด </li><li> ระบบเวลา 48 เมืองใหญ่ทั่วโลก,</li><li>ระบบจับเวลาเดินหน้า</li><li> ระบบจับเวลาถอยหลัง</li><li> ระบบตั้งปลุก 5 เวลา</li><li>ระบบปฏิทินอัตโนมัติ ถึงปี 2099</li><li>ระบบบอกเวลา 12/24 ชั่วโมง</li><li> หน้าจอนาฬิกามี 2 ระบบ</li><li> (เข็ม+ดิจิตอล)</li><li> แบตเตอรี่ 3 ปี รุ่น CR1220</li></ul>', '2015-11-07'),
(62, 4, 'SRP219K1', 6800, 0, 'สีดำ', '6 เดือน', 4, '<p><b>รูปแบบ </b>เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลส หน้าปัดสีน้ำตาล  <br/><b>สาย</b> ทำจาก หนังอย่างดี<br/><b>รายละเอียด</b><br/><!--StartFragment--></p><ul style=\"color: rgb(115, 135, 156);background-color: rgb(255, 255, 255);\"><li>กันน้ำ 200 เมตร</li><li> ระบบ Automatic</li><li>หน้าปัดมีพรายน้ำ มองเห็นชัดเจนในที่มืด</li><li>เครื่อง 7S36 มีทับทิม 23 เม็ด </li><li> ฟังก์ชั่น Map Meter วัดหาระยะทางบนแผนที่</li><li> มีระบบมิเตอร์แผนที่ 1/50000</li><li> ขอบหน้าปัดสามารถหมุนเพื่อแสดงทิศทาง</li><li>สายข้อมือและตัวเรือนทำมาจาก Stainless Steel</li><li>มีระบบการคำนวณในการเดินทาง</li><li>กรอบวง Bezel หมุนได้ 2 ทาง</li><li> สามารถบอกทิศทางโค้งได้ในระบบเทคโนโลยียอดเยี่ยม</li><li>กระจกคริสตัลกันรอย 99%<span class=\"Apple-converted-space\"> </span></li></ul><!--EndFragment--><p><br/></p><p><br/></p><p></p>', '2015-11-07'),
(63, 4, 'SKZ229K1', 9900, 0, 'สีเงิน ดำ', '2 ปี', 6, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลส หน้าปัดสีดำ  <br/><b>สาย</b> ทำจากสแตนเลส สีเงิน<br/><b>รายละเอียด</b></p><ul><li> กันน้ำ 200 เมตร</li><li> ระบบ Automatic</li><li>หน้าปัดมีพรายน้ำ มองเห็นชัดเจนในที่มืด</li><li>เครื่อง 7S36 มีทับทิม 23 เม็ด </li><li> ฟังก์ชั่น Map Meter วัดหาระยะทางบนแผนที่</li><li> มีระบบมิเตอร์แผนที่ 1/50000</li><li> ขอบหน้าปัดสามารถหมุนเพื่อแสดงทิศทาง</li><li>สายข้อมือและตัวเรือนทำมาจาก Stainless Steel</li><li>มีระบบการคำนวณในการเดินทาง</li><li>กรอบวง Bezel หมุนได้ 2 ทาง</li><li> สามารถบอกทิศทางโค้งได้ในระบบเทคโนโลยียอดเยี่ยม</li><li>กระจกคริสตัลกันรอย 99% ,</li><li>ขนาดหน้าปัด 42 มม x 13 มม ไม่รวมเม็ดมะยม</li><li>ขนาดหน้าปัด 55 มม x 13 มม รวมเม็ดมะยม</li><li> น้ำหนักรวม 214g</li></ul>', '2015-11-07'),
(64, 4, 'SRH006P1', 12000, 0, 'สีทอง ดำ', '1 ปี', 3, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลส หน้าปัดสีดำ <br/><b>สาย</b> ทำจาก เรซิ่นอย่างดี<br/><b>รายละเอียด</b></p><ul><li> ตัวเครื่องรุ่นCaliber 5D44, ระบบ Kinetic</li><li>วงใบพัดบอกพลังงานในตัวนาฬิกา</li><li> สายยางยูริเทนทนทาน, ขอบไม่ลอก Pink Gold</li><li>วงใบพัดบอกวันดีไซน์ที่ลงตัว</li><li>หน้าปัดเเสดงวันที่ ณ.ตำเเหน่ง 6 นาฬิกา</li><li> พรายน้ำสว่างชัดเจนในความมืดล้ำสมัยด้วย Emotional Technology</li><li>ที่ตอบสนองการไขลาน</li><li> ช่องแสดงพลังงานสำรองอย่างชัดเจนให้ผู้สวมใส่รู้ขณะสวมใส่</li><li>สามารถตรวจเช็คพลังงานได้และสำรองพลังงานได้เต็ม 1 เดือน</li><li>เข็มแสดงวันตีย้อนกลับ (Retrograde)</li><li> กระจก Sapphire Crystal กันรอยขีดข่วน 100% </li><li> ตัวเรือนทำจาก Stainless Steel</li><li>ขนาดเส้นผ่าศูนย์กลาง 43.5 มม (ไม่รวมเม็ดมะยม)</li><li> ขนาดความหนา 13 มม, น้ำหนัก 132 กรัม , กันน้ำ 100 เมตร</li></ul>', '2015-11-07'),
(65, 4, 'SRP343K', 7800, 0, 'สีเงิน', '6 เดือน', 6, 'เป็นนาฬิกาแบบ อนาล็อก <br>ตัวเรือน ทำจาก สแตนเลส หน้าปัดสีน้ำเงิน  <br>สาย ทำจากสแตนเลส<br>ระบบออโตเมติก ไม่ใช้แบตเตอรี่, Seiko Caliber 4R36 Automatic Japan movement. , มีทับทิม 24 Jewels., กันน้ำลึก 100 เมตร ( 10 Bar ), บอกวันที่ ณ ตำแหน่ง 3 นาฬิกา, บอกวันที่ ณ ตำแหน่ง 3 นาฬิกา, หน้าปัดสีน้ำเงินขอบดำ, มี Lumibrite เรืองแสงในที่มืด, กระจกหน้าปัดทำจากกระจกคริสตัล Hardlex, ฝาหลังแบบเปลือยใส มองเห็นกลไกการทำงานภายใน, ตัวเรือนทำจากสแตนเลส, สายทำจากสแตนเลสรมดำตรงกลาง, ขนาดของตัวเรือน 41.6 mm., สำรองพลังงานได้ 45 ชั่วโมง', '2015-11-07'),
(66, 11, '2EV03000BY', 4400, 0, 'สีทอง เงิน', '6 เดือน', 5, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน </b>ทำจาก สแตนเลส หน้าปัดสีดำ  <br/><b>สาย</b> ทำจากสแตนเลส<br/><b>รายละเอียด</b> </p><ul><li>นาฬิกาข้อมือผู้ชายสองกษัตริย์ ขอบหยัก</li><li>กันน้ำ 30 เมตร สำรองพลังงานประมาณ 38 ชม.</li><li> แสดงวัน ณ. ตำแหน่ง 12 นาฬิกา แสดงวันที่ ณ. ตำแหน่ง 3 นาฬิกา</li><li>เม็ดทับทิม 21 เม็ด สามารถเรืองแสงในที่มืด</li><li>ขนาดหน้าปัด 37 mm.</li><li>ด้านฝาหลังมีซีเรียลนัมเบอร์ 6 หลัก แต่ละเรือนไม่ซ้ำกันมีเพียงเรือนเดียวในโลก</li></ul>', '2015-11-07'),
(67, 11, '2EV03001WY', 4800, 0, 'สีเงิน', '3 เดือน', 10, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลส หน้าปัดสีเงิน  <br/><b>สาย</b> ทำจากสแตนเลส<br/><b>รายละเอียด </b>นาฬิกาข้อมือผู้ชายสายสแตนเลส ขอบหยัก, กันน้ำ 30 เมตร สำรองพลังงานประมาณ 38 ชม., แสดงวัน ณ. ตำแหน่ง 12 นาฬิกา แสดงวันที่ ณ. ตำแหน่ง 3 นาฬิกา, เม็ดทับทิม 21 เม็ด สามารถเรืองแสงในที่มืด,• ขนาดหน้าปัด 37 mm., ด้านฝาหลังมีซีเรียลนัมเบอร์ 6 หลัก แต่ละเรือนไม่ซ้ำกันมีเพียงเรือนเดียวในโลก</p>', '2015-11-07'),
(68, 11, '2EV03001D', 7600, 0, 'สีเงิน', '1 ปี', 4, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน </b>ทำจาก สแตนเลส หน้าปัดสีน้ำเงิน  <br/><b>สาย</b> ทำจากสแตนเลส<br/><b>รายละเอียด</b></p><ul><li> นาฬิกาข้อมือผู้ชายสายสแตนเลส ขอบหยัก</li><li>กันน้ำ 30 เมตร สำรองพลังงานประมาณ 38 ชม.</li><li> แสดงวัน ณ. ตำแหน่ง 12 นาฬิกา แสดงวันที่ ณ. ตำแหน่ง 3 นาฬิกา,</li><li>เม็ดทับทิม 21 เม็ด , ขนาดหน้าปัด 37 mm. (หน้าปัดสีน้ำเงิน)</li><li> ด้านฝาหลังมีซีเรียลนัมเบอร์ 6 หลัก แต่ละเรือนไม่ซ้ำกันมีเพียงเรือนเดียวในโลก</li></ul>', '2015-11-07'),
(69, 1, 'EMA-100B-1A9DR', 4500, 0, 'สีเหลือง', '3 เดือน', 2, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก และ ดิจิตอล <br/><b>ตัวเรือน</b> ทำจาก เรซิ่น หน้าปัดสีดำ  <br/><b>สาย </b>ยางเรซิ่นอย่างดี สีเหลือง<br/><b>รายละเอียด</b> </p><ul><li>ระบบ Analog -Digital,</li><li> ไฟ LED Auto light switch</li><li>ระบบ Analog tide graph</li><li> กันน้ำ 200 เมตร , ระบบ Thermometer</li><li> 5 Alarms, เสียงเตือนทุกๆชั่วโมง</li><li>แสดงเวลา 12/24ชั่วโมง</li><li> บอกเวลา World time, ระบบ Moon data</li><li>จับเวลา 1/100-second stopwatch</li><li> แบตเตอรี่ 2-3 ปี</li><li> หน้าปัดค่อนข้างใหญ่</li><li>ขนาดหน้าปัด 50.3 X 46.7 X 13.2 mm, น้ำหนัก 109 กรัม</li></ul>', '2015-11-07'),
(70, 1, 'EFR-515PB-1A2VDF', 5500, 0, 'สีดำ', '1 ปี', 9, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลส หน้าปัดสีดำ  <br/><b>สาย</b> ทำจาก เรซิ่นอย่างดี สีดำ<br/></p>', '2015-11-07'),
(71, 3, 'AN8050-51A', 3500, 0, 'สีเงิน', '1 ปี', 3, '<p>รูปแบบ เป็นนาฬิกาแบบ อนาล็อก <br/>ตัวเรือน ทำจาก สแตนเลส หน้าปัดสีขาว  <br/>สาย ทำจากสแตนเลส สีขาว<br/>รายละเอียด </p><ul><li>ระบบควอทซ์</li><li>กันน้ำ 50 เมตร</li><li>ฟังก์ชั่นจับเวลา,</li><li>สายสแตนเลสสตีล</li><li> ตัวเรือนสแตนเลสสตีล</li><li>หน้าปัดสีขาว</li><li>เข็มมีพรายน้ำ</li><li>ขนาดหน้าปัด 42 มม.</li><li> น้ำหนัก 130 กรัม</li></ul>', '2015-11-07'),
(72, 3, 'BH1650-04E', 4400, 0, 'สีดำ', '1 ปี', 10, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลสสีเงิน หน้าปัดสีดำ  <br/><b>สาย</b> ทำจาก หนังสีดำ<br/><b>รายละเอียด</b> </p><ul><li>นาฬิกาข้อมือผู้ชายระบบควอทซ์ </li><li>ตัวเรือนสแตนเลส  , ขนาดตัวเรือน 28x39 มม.</li><li>กันน้ำลึก 50 เมตร </li><li> แสดงเวลาแบบสามเข็ม </li><li> แสดงวันที่ ณ ตำแหน่ง 3 น.</li><li><span> ภายในบรรจุกลไกควอทซ์ซิติเซ่นทานทานเที่ยงตรง </span></li><li><span>ตัวเรือนหนา 6 มม.</span><br/></li></ul>', '2015-11-07'),
(73, 3, 'NY0040-09W', 3500, 0, 'สีดำ', '6 เดือน', 5, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลส หน้าปัดสีเปลือกไข่  <br/><b>สาย</b> ทำจากเรซิ่นสีดำ<br/><b>รายละเอียด</b></p><ul><li><b></b>ระบบออโตเมติก ไม่ใช้แบตเตอรี่</li><li><span> กันน้ำลึก 200 เมตร ( 20 Bar )</span></li><li><span>บอกวันที่ ณ ตำแหน่ง 3 นาฬิกา, บอกวัน ณ ตำแหน่ง 3 นาฬิกา</span></li><li><span> หน้าปัดเรืองแสง</span></li><li><span>มี Lumibrite ขนาดใหญ่เรืองแสงชัดเจนในที่มืด</span></li><li><span> กระจกหน้าปัดทำจากคริสตัล</span></li><li><span>ฝาหลังแบบเกลียว ทำจากสแตนเลส</span></li><li><span>ตัวเรือนทำจากสแตนเลส</span></li><li><span>สายทำจากยางเรซิ่นสีดำ</span></li><li><span> ขนาดของตัวเรือน  43 mm.</span></li><li><span>ขนาดความหนาของตัวเรือน 13 mm.</span></li><li><span> น้ำหนัก 96 g</span></li><li><span> สำรองพลังงานได้ยาวนาน 42 ชั่วโมง</span></li></ul>', '2015-11-07'),
(74, 3, 'JZ1000-51L', 8800, 0, 'สีทอง', '1 ปี', 2, '<p><b>รูปแบบ</b> เป็นนาฬิกาแบบ อนาล็อก <br/><b>ตัวเรือน</b> ทำจาก สแตนเลส หน้าปัดสีน้ำเงิน  <br/><b>สาย</b> ทำจากสแตนเลส<br/><b>รายละเอียด</b> ระบบ Eco-Drive, ระบบจับเวลา Chronograph, สายและตัวเรือนสแตนเลสสตีล, สำรองพลังงานได้ 240 วัน กรณีที่ชาร์ตแบตเตอรี่เต็ม, มี Luminous เรืองแสงในที่มืด, กันน้ำ 100 เมตร, ขนาดหน้าปัด 43 มม., น้ำหนักนาฬิกา 117 กรัม, ภายในบรรจุกลไกอีโคไดรฟ์เอกสิทธิ์หนึ่งเดียว จากซิติเซ่นทานทานเที่ยงตรง</p>', '2015-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `products_brand`
--

CREATE TABLE `products_brand` (
  `brand_id` int(10) NOT NULL,
  `brand_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products_brand`
--

INSERT INTO `products_brand` (`brand_id`, `brand_name`) VALUES
(1, 'CasioStandard'),
(2, 'CasioGShock'),
(3, 'Citizen'),
(4, 'Seiko'),
(5, 'Swatch'),
(10, 'SeikoMonsterTheFang'),
(11, 'Orient');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('user01', 'c3f96ea82748bf1470c8493b8afc1020ec72398e'),
('user02', '9f65a119839a2a2a293ae68b2beb974726e939fb'),
('user03', '84ed23eb4b46963a44c2160f89f52fd930897719');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_name`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_brand`
--
ALTER TABLE `products_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `m_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `products_brand`
--
ALTER TABLE `products_brand`
  MODIFY `brand_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
