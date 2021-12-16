-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2016 at 01:05 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE IF NOT EXISTS `advertisement` (
  `adv_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_title` varchar(100) NOT NULL,
  `org_by` varchar(100) NOT NULL,
  `pic` varchar(700) NOT NULL,
  `detail` varchar(900) NOT NULL,
  PRIMARY KEY (`adv_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`adv_id`, `camp_title`, `org_by`, `pic`, `detail`) VALUES
(4, 'Govt Edward Collage', 'Edward consial', '2.jpg', 'Blood donation camp Organised by REC.  One who donate get certificate by REC\r\nThat can help you also to gets blood in jeopard time');

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE IF NOT EXISTS `bloodgroup` (
  `bg_id` int(100) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(100) NOT NULL,
  PRIMARY KEY (`bg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(13, 'o+'),
(14, 'o-'),
(15, 'AB+'),
(16, 'AB-'),
(17, 'A+'),
(18, 'A-'),
(19, 'B+'),
(20, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE IF NOT EXISTS `camp` (
  `camp_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_title` varchar(500) NOT NULL,
  `organised_by` varchar(500) NOT NULL,
  `state` int(100) NOT NULL,
  `city` int(100) NOT NULL,
  `pic` varchar(900) NOT NULL,
  `detail` varchar(1000) NOT NULL,
  PRIMARY KEY (`camp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`camp_id`, `camp_title`, `organised_by`, `state`, `city`, `pic`, `detail`) VALUES
(1, 'Govt Edward Collage', 'Edward Counsil', 1, 1, 'blood_donation_camp.jpg', 'A Blood Donation Camp at Govt Edward Collage , Pabna.'),
(7, 'Pabna Collage', 'Pabna Collage', 1, 1, 'B.D camp 034.jpg', 'A Blood Donation Camp at Pabna Collage , Pabna.'),
(8, 'S.M. Munsur Ali Collage', 'Munsur Club', 1, 1, 'p36.jpg', 'A Blood Donation Camp at S.M. Munsur Ali Collage, Pabna.'),
(9, 'Shahid Bulbul Collage', 'Shahid Bulbul Society', 1, 1, 'p38_2.jpg', 'A Blood Donation Camp at Shahid Bulbul Collage, Pabna.\n ');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(100) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` int(100) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `pin_code`, `district`, `state`) VALUES
(1, 'pabna', '144401', 'atua', 1),
(4, 'narayangang', '121001', 'nodirhepar', 2),
(7, 'naugoan', '144001', 'seigoan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `row_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subj` varchar(700) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`row_id`, `name`, `email`, `mobile`, `subj`) VALUES
(1, 'abdurrahman', 'abdur12@gmail.com', '01738362889', 'save life'),
(2, 'samiul', 'samiul@gmail.com', '01738367889', 'save life'),
(3, 'riaz', 'riaz@gmail.com', '01738362880', 'give blooooooood'),
(4, 'sadman', 'sadman@gmail.com', '01738362809', 'save life'),
(10, 'alim', 'alim@gmail.com', '01738362878', 'give me a blood');

-- --------------------------------------------------------

--
-- Table structure for table `donarregistration`
--

CREATE TABLE IF NOT EXISTS `donarregistration` (
  `donar_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL,
  PRIMARY KEY (`donar_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `donarregistration`
--

INSERT INTO `donarregistration` (`donar_id`, `name`, `gender`, `age`, `mobile`, `b_id`, `email`, `pwd`, `pic`) VALUES
(3, 'salma', 'female', '20', '01946395805', 13, 'salma@gmail.com', 123, 'neeru.jpg'),
(4, 'samiul', 'male', '21', '019888961990', 13, 'samiul@gmail.com', 123, '00000.jpg'),
(5, 'riaz', 'male', '22', '019876505652', 17, 'riaz@gmil.com', 123, '1002679_629448530471361_5912528223898153120_n.jpg'),
(6, 'yesmin', 'female', '20', '019779730479', 13, 'yesmin@yahoo.com', 123, '12144826_691191231017304_7118038794667291151_n.jpg'),
(7, 'sadman', 'male', '22', '01823280290', 17, 'sadman@gmail.com', 123, 'p3Penguins.jpg'),
(8, 'sakib', 'male', '24', '0123456780', 19, 'sakib@ymail.com', 123, 'resizedBlood donation (1).jpg'),
(9, 'selina', 'female', '26', '019295769630', 15, 'selina@yahoo.com', 123, '11261437_1624099511137421_8482759699813102898_n.jpg'),
(10, 'alim', 'male', '26', '019878967543', 15, 'alim@yahoo.com', 123, '10593057_728311113906338_1063644592728298376_n.jpg'),
(11, 'ahnaf', 'male', '24', '019445678765', 16, 'ahnaf@gmail.com', 123, '12038392_969929529729736_1007747926670734265_n (1).jpg'),
(12, 'selim', 'male', '20', '018591824296', 13, 'selim@gmail.com', 123, '12038380_834746969972073_6382623771453128938_n.jpg'),
(13, 'bulbul', 'male', '25', '019594918765', 16, 'bulbul@gmail.com', 123, '11863382_1032998280067097_2552428582935820453_n.jpg'),
(14, 'rakib', 'male', '24', '01824230721', 18, 'rakib@gmail.com', 123, '11175046_366978330169273_8044521424217911178_n.jpg'),
(15, 'shoaib', 'male', '19', '01781846758', 19, 'shoaib@ymail.com', 123, '1491626_647476172014342_6155162312561723489_n.jpg'),
(16, 'Rahul', 'male', '25', '019216291294', 20, 'rahul@gmail.com', 123, '11899909_948967995160204_759838727467883977_n.jpg'),
(17, 'sampad', 'male', '24', '019818134576', 20, 'sampad@gmail.com', 123, '11899866_690854484348510_8725848025714675727_n.jpg'),
(18, 'Sharmin Akter', 'female', '24', '019889786545', 14, 'sharminakter@gmail.com', 12345, 'rima.jpg'),
(19, 'Sharmin Akter Rima', 'female', '24', '018427429079', 14, 'sharminakterrima@gmail.com', 12345, 'rima.jpg'),
(20, 'Rima', 'female', '24', '019888976570', 18, 'rima@gmail.com', 12345, 'rima.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE IF NOT EXISTS `donation` (
  `donation_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_id` int(100) NOT NULL,
  `ddate` datetime NOT NULL,
  `units` int(100) NOT NULL,
  `detail` varchar(800) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `camp_id`, `ddate`, `units`, `detail`, `email`) VALUES
(28, 1, '2014-09-14 00:00:00', 20, 'A Blood Donation Camp at Dhaka', 'ahnaf@gmail.com'),
(29, 7, '2015-05-11 00:00:00', 30, 'A Blood Donation Camp at Khulna', 'sadman@gmail.com'),
(30, 8, '2014-11-04 00:00:00', 25, 'A Blood Donation Camp at Pabna', 'bulbul@gmail.com'),
(31, 9, '2014-12-18 00:00:00', 22, 'A Blood Donation Camp at Cumilla', 'selim08@gmail.com'),
(32, 7, '2010-06-19 00:00:00', 27, 'A Blood Donation Camp at Narayangonj', 'samiul@yahoo.com'),
(33, 8, '2010-08-20 00:00:00', 17, 'save life', 'jannat@yahoo.com'),
(34, 9, '2009-06-05 00:00:00', 10, 'give blood', 'sakib@yahoo.com'),
(35, 1, '2012-09-13 00:00:00', 22, 'save life', 'samiul@gmail.com'),
(36, 9, '0000-00-00 00:00:00', 444, 'kjj', 'rahul@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE IF NOT EXISTS `gallary` (
  `camp_id` int(100) NOT NULL,
  `pic_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(400) NOT NULL,
  `pic` varchar(800) NOT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`camp_id`, `pic_id`, `title`, `pic`) VALUES
(9, 15, 'pic 1', 'p48_2.jpg'),
(9, 16, 'pic 2', 'p11 (1).jpg'),
(9, 17, 'pic 3', 'p141.jpg'),
(9, 18, 'pic 5', 'p177_2.jpg'),
(9, 19, 'pic 6', 'p279.jpg'),
(8, 20, 'pic 8', 'p246.jpg'),
(9, 21, 'pic 9', 'p82.jpg'),
(7, 22, 'pic 2', 'p82.jpg'),
(7, 23, 'pic 3', 'p93.jpg'),
(7, 24, 'pic 6', 'p148.jpg'),
(7, 25, 'pic 7', 'pamrik@ymail.com1 (2).jpg'),
(7, 26, 'pic 8', 'slider4.jpg'),
(7, 27, 'pic 9', 'slider7.jpg'),
(1, 28, 'pic 2', 'slider8.jpg'),
(1, 29, 'pic 3', 'slider3.jpg'),
(1, 30, 'pic 4', 'donation.jpg'),
(1, 31, 'pic 3', 'Blood-Donation2.jpg'),
(1, 32, 'pic 4', 'blood-donation-.jpg'),
(1, 33, 'pic 6', 'blood-donation.jpg'),
(8, 34, 'pic 1', 'resizedBlood donation (1).jpg'),
(8, 35, 'pic 2', 'Blood-donation-camp.jpg'),
(8, 36, 'pic 4', '3.jpg'),
(8, 37, 'pic 5', '4.jpg'),
(8, 38, 'pic 7', '5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `detail` varchar(900) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `detail`) VALUES
(1, 'blood donate', 'give blood give bloodgive blood'),
(2, 'blood bank', 'blooooddddd\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE IF NOT EXISTS `requestes` (
  `req_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bgroup` int(100) NOT NULL,
  `reqdate` datetime NOT NULL,
  `detail` varchar(500) NOT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`req_id`, `name`, `gender`, `age`, `mobile`, `email`, `bgroup`, `reqdate`, `detail`) VALUES
(7, 'hasan', 'male', '22', '018427420298', 'hasan@gmail.com', 19, '2015-01-15 00:00:00', 'save life'),
(8, 'jasmin', 'female', '22', '019216291294', 'jasmin@gmail.com', 13, '2014-01-12 00:00:00', 'save life'),
(9, 'sarah', 'female', '21', '018427420291', 'sarah@gmail.com', 17, '2015-01-18 00:00:00', 'save life'),
(10, 'siren', 'male', '55', '017589325050', 'siren@ymail.com', 14, '2012-01-29 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(100) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Pabna'),
(2, 'Cumilla'),
(3, 'Narayangonj'),
(4, 'Khulna'),
(5, 'Rajshahi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--



INSERT INTO `users` (`username`, `pwd`, `typeofuser`) VALUES
('samiul', 'samiul', 'Admin'),
('alim', 'alim', 'General');




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
