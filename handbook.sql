-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 12:03 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `handbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add person', 1, 'add_person'),
(2, 'Can change person', 1, 'change_person'),
(3, 'Can delete person', 1, 'delete_person'),
(4, 'Can view person', 1, 'view_person'),
(5, 'Can add contacts', 2, 'add_contacts'),
(6, 'Can change contacts', 2, 'change_contacts'),
(7, 'Can delete contacts', 2, 'delete_contacts'),
(8, 'Can view contacts', 2, 'view_contacts'),
(9, 'Can add person', 3, 'add_person'),
(10, 'Can change person', 3, 'change_person'),
(11, 'Can delete person', 3, 'delete_person'),
(12, 'Can view person', 3, 'view_person'),
(13, 'Can add contact', 4, 'add_contact'),
(14, 'Can change contact', 4, 'change_contact'),
(15, 'Can delete contact', 4, 'delete_contact'),
(16, 'Can view contact', 4, 'view_contact'),
(17, 'Can add log entry', 5, 'add_logentry'),
(18, 'Can change log entry', 5, 'change_logentry'),
(19, 'Can delete log entry', 5, 'delete_logentry'),
(20, 'Can view log entry', 5, 'view_logentry'),
(21, 'Can add permission', 6, 'add_permission'),
(22, 'Can change permission', 6, 'change_permission'),
(23, 'Can delete permission', 6, 'delete_permission'),
(24, 'Can view permission', 6, 'view_permission'),
(25, 'Can add group', 7, 'add_group'),
(26, 'Can change group', 7, 'change_group'),
(27, 'Can delete group', 7, 'delete_group'),
(28, 'Can view group', 7, 'view_group'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add content type', 9, 'add_contenttype'),
(34, 'Can change content type', 9, 'change_contenttype'),
(35, 'Can delete content type', 9, 'delete_contenttype'),
(36, 'Can view content type', 9, 'view_contenttype'),
(37, 'Can add session', 10, 'add_session'),
(38, 'Can change session', 10, 'change_session'),
(39, 'Can delete session', 10, 'delete_session'),
(40, 'Can view session', 10, 'view_session'),
(41, 'Can add topic', 11, 'add_topic'),
(42, 'Can change topic', 11, 'change_topic'),
(43, 'Can delete topic', 11, 'delete_topic'),
(44, 'Can view topic', 11, 'view_topic'),
(45, 'Can add comity', 12, 'add_comity'),
(46, 'Can change comity', 12, 'change_comity'),
(47, 'Can delete comity', 12, 'delete_comity'),
(48, 'Can view comity', 12, 'view_comity'),
(49, 'Can add members', 13, 'add_members'),
(50, 'Can change members', 13, 'change_members'),
(51, 'Can delete members', 13, 'delete_members'),
(52, 'Can view members', 13, 'view_members'),
(53, 'Can add event info', 14, 'add_eventinfo'),
(54, 'Can change event info', 14, 'change_eventinfo'),
(55, 'Can delete event info', 14, 'delete_eventinfo'),
(56, 'Can view event info', 14, 'view_eventinfo'),
(57, 'Can add member', 15, 'add_member'),
(58, 'Can change member', 15, 'change_member'),
(59, 'Can delete member', 15, 'delete_member'),
(60, 'Can view member', 15, 'view_member');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$2ydJjpidzmM3$nz44a9LvzjWCsBB+jj8BO0np5/ZR/5ZnRV1xnH014wE=', '2019-04-18 01:06:35.231970', 1, 'sreerag', '', '', '', 1, 1, '2019-04-17 23:25:52.132378');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calender_eventinfo`
--

CREATE TABLE `calender_eventinfo` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `priority` varchar(80) NOT NULL,
  `Grand_Event` varchar(80) DEFAULT NULL,
  `By` varchar(200) NOT NULL,
  `Photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calender_eventinfo`
--

INSERT INTO `calender_eventinfo` (`id`, `title`, `date`, `description`, `priority`, `Grand_Event`, `By`, `Photo`) VALUES
(3, 'New principle Joins', '2020-05-13', '', 'Normal', NULL, 'Sreerag CSE', '11ffe044ec04e'),
(4, 'Happy birthday Vinodh Sir', '2019-04-19', 'Wishing many many happy returns of the day Vinod', 'Trending', 'Grand Event-3', 'Sreerag CSE', '11ffe044ec04e'),
(5, 'Akhila Mam weding', '2019-04-19', 'Wishing many many happy returns of the day Akliha', 'Trending', 'Grand Event-2', 'Sreerag CSE', '11ffe044ec04e'),
(6, 'College day', '2019-06-01', 'College day is a beautiful festival   of arts and science', 'Normal', NULL, 'Sreerag CSE', '11ffe044ec04e'),
(7, 'Break dance day', '2019-04-20', 'Break dance day is for dance', 'Normal', NULL, 'Sreerag CSE', '11ffe044ec04e'),
(8, 'Eating day', '2019-04-19', 'Free food for all', 'Normal', NULL, 'Sreerag CSE', '11ffe044ec04e'),
(9, 'Exam day', '2019-06-14', 'Exam day is a beautiful festival   of arts and science', 'Normal', NULL, 'Sreerag CSE', '11ffe044ec04e'),
(10, 'Abcd', '2019-04-19', 'Learn your ABC\'s with KidsFirstTV\'s ABCD song for children. Sing along with songs for kids and learn the', 'Normal', NULL, 'Sreerag CSE', '11ffe044ec04e'),
(11, 'Thanks giving day', '2019-05-05', 'Free food for all', 'Normal', NULL, 'Sreerag CSE', '11ffe044ec04e'),
(12, 'sreerag', '2019-04-20', 'Sreerag is a good boy', 'Normal', NULL, 'Sreerag CSE', '11ffe044ec04e'),
(14, 'real time traffic light system', '2019-04-21', 'Description of real time traffic light system', 'Normal', NULL, 'Sreerag CSE', '11ffe044ec04e'),
(19, 'Hello Event', '2019-04-21', 'Hello event description', 'Normal', NULL, 'Sreerag CSE', '11ffe044ec04e'),
(20, 'India is my country', '2019-04-21', '', 'Normal', NULL, 'Sreerag CSE', 'images/6.jpg'),
(21, 'Tarang is here', '2019-07-04', 'Tarang is a beautiful festival   of arts and science', 'Trending', 'Grand Event-1', 'Sreerag CSE', '11ffe044ec04e');

-- --------------------------------------------------------

--
-- Table structure for table `comity_comity`
--

CREATE TABLE `comity_comity` (
  `id` int(11) NOT NULL,
  `comity_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comity_comity`
--

INSERT INTO `comity_comity` (`id`, `comity_name`) VALUES
(3, 'Transport Committee'),
(4, 'Placement Cell');

-- --------------------------------------------------------

--
-- Table structure for table `comity_member`
--

CREATE TABLE `comity_member` (
  `id` int(11) NOT NULL,
  `Member_name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `comity_id` int(11) NOT NULL,
  `jecc_code` varchar(100) NOT NULL,
  `department` varchar(77) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comity_member`
--

INSERT INTO `comity_member` (`id`, `Member_name`, `designation`, `comity_id`, `jecc_code`, `department`) VALUES
(4, 'Fr. Roy Joseph Vadakkan', 'Chairman', 3, 'JEC367', 'Administration'),
(5, 'Prof Ratnan P', 'Member', 3, 'JEC342', 'ECE'),
(6, 'Vinod K', 'Member', 3, 'JEC593', 'CSE'),
(7, 'Shaiju Paul', 'Member', 3, 'JEC422', 'CSE'),
(8, 'Dr Biju P L', 'Member', 3, 'JEC648', 'ME'),
(9, 'Fr. Roy Joseph Vadakkan', 'Chairman', 4, 'JEC367', 'Administration'),
(14, 'Vinod K', 'Convener', 4, 'JEC593', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `comity_members`
--

CREATE TABLE `comity_members` (
  `id` int(11) NOT NULL,
  `Member_name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `comity_id` int(11) NOT NULL,
  `jecc_code` varchar(100) NOT NULL,
  `department` varchar(77) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comity_members`
--

INSERT INTO `comity_members` (`id`, `Member_name`, `designation`, `comity_id`, `jecc_code`, `department`) VALUES
(4, 'Fr. Roy Joseph Vadakkan', 'Chairman', 3, 'JEC367', 'Administration'),
(5, 'Prof Ratnan P', 'Member', 3, 'JEC342', 'ECE'),
(6, 'Vinod K', 'Member', 3, 'JEC593', 'CSE'),
(7, 'Shaiju Paul', 'Member', 3, 'JEC422', 'CSE'),
(8, 'Dr Biju P L', 'Member', 3, 'JEC648', 'ME'),
(9, 'Fr. Roy Joseph Vadakkan', 'Chairman', 4, 'JEC367', 'Administration'),
(14, 'Vinod K', 'Convener', 4, 'JEC593', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_contact`
--

CREATE TABLE `contacts_contact` (
  `id` int(11) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `Phone_Number` varchar(20) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Designation` varchar(264) NOT NULL,
  `Qualification` varchar(80) NOT NULL,
  `jecc_code` varchar(100) NOT NULL,
  `Department` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts_contact`
--

INSERT INTO `contacts_contact` (`id`, `Name`, `Phone_Number`, `Email`, `Designation`, `Qualification`, `jecc_code`, `Department`) VALUES
(1, 'Shaiju Paul', '9495275350', 'paulson@jecc.ac.in', 'Assistant Professor', 'M.Tech', 'JEC422', 'CSE'),
(2, 'Fr. Roy Joseph Vadakkan', '9526964455', 'fr.royjoseph@jecc.ac.in', 'Campus Head,Asst. Manager', 'M B A . PG D M L E', 'JEC367', 'Administration'),
(3, 'Prof Ratnan P', '7561888515', 'pratanan@jecc.ac.in', 'Professor', 'M E', 'JEC342', 'Administration'),
(4, 'Vinod K', '949527535', 'VINU.cs@jecc.ac.in', 'Systems Administrator', 'M.A. M.Phil. B.Th. PhD', 'JEC593', 'CSE'),
(5, 'Unnikrishnan P', '9592251499', 'unnikrishnanp@jecc@ac.in', 'Assistant Professor', 'M TEC', 'JEC387', 'CSE'),
(6, 'Prof S Rathish', '944713820', 'rathishs@jecc.ac.in', 'CIVIL HOD AND Professor', 'M.Tech,MS', 'JEC562', 'CIVIL'),
(7, 'Dr Jose P Therattil', '9496731126', 'dr.joseptherattil@jecc.ac.in', 'HOD ECE , Professor', 'M Tech,Phd', 'JEC052', 'ECE'),
(8, 'Dr Jarin T', '123645689', 'dr.jarint@jecc.ac.in', 'HOD EEE ,', 'PhD,ME', 'JEC601', 'EEE'),
(9, 'Dr Biju P L', '9897844649', 'dr.bijupl@jecc.ac.in', 'ME HOD , Professor', 'Phd , MTech', 'JEC648', 'ME'),
(10, 'Fr John Tharayil', '789496165', 'fr.johntarayil@jecc.ac.in', 'BHS HOD , Professor', 'MA , MSC ', 'JEC015', 'BSH'),
(11, 'Namita', '1234576565', 'namita@jecc.ac.in', 'Assistant Prof', 'M TEC', 'JEC075', 'CSE'),
(12, 'Swapna', '1213241467', 'swapna@jecc.ac.in', 'Assistant Prof', 'M TEC', 'JEC', 'CSE'),
(13, 'Sreerag', '7561888516', 'sreerag.cs17@jecc.ac.in', '', 'M.A. M.Phil. B.Th. PhD', 'JEC888', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-04-17 23:26:48.685544', '1', 'abc', 1, '[{\"added\": {}}]', 12, 1),
(2, '2019-04-17 23:31:01.489238', '1', 'Members object (1)', 1, '[{\"added\": {}}]', 13, 1),
(3, '2019-04-17 23:31:12.953672', '1', 'Members object (1)', 3, '', 13, 1),
(4, '2019-04-17 23:54:10.112204', '2', 'Members object (2)', 1, '[{\"added\": {}}]', 13, 1),
(5, '2019-04-18 00:06:18.990978', '2', 'zxc', 1, '[{\"added\": {}}]', 12, 1),
(6, '2019-04-18 00:14:25.278030', '3', 'Members object (3)', 1, '[{\"added\": {}}]', 13, 1),
(7, '2019-04-18 00:45:32.106259', '2', 'zxc', 3, '', 12, 1),
(8, '2019-04-18 00:45:32.198456', '1', 'abc', 3, '', 12, 1),
(9, '2019-04-18 00:46:58.961111', '3', 'Transport Committee', 1, '[{\"added\": {}}]', 12, 1),
(10, '2019-04-18 00:47:34.028564', '4', 'Placement Cell', 1, '[{\"added\": {}}]', 12, 1),
(11, '2019-04-18 00:51:48.455847', '4', 'Members object (4)', 1, '[{\"added\": {}}]', 13, 1),
(12, '2019-04-18 00:52:29.971959', '5', 'Members object (5)', 1, '[{\"added\": {}}]', 13, 1),
(13, '2019-04-18 00:53:23.122198', '6', 'Members object (6)', 1, '[{\"added\": {}}]', 13, 1),
(14, '2019-04-18 00:54:30.302377', '7', 'Members object (7)', 1, '[{\"added\": {}}]', 13, 1),
(15, '2019-04-18 00:55:30.087747', '8', 'Members object (8)', 1, '[{\"added\": {}}]', 13, 1),
(16, '2019-04-18 00:56:22.055705', '9', 'Members object (9)', 1, '[{\"added\": {}}]', 13, 1),
(17, '2019-04-18 01:09:21.430168', '9', 'Members object (9)', 2, '[{\"changed\": {\"fields\": [\"jecc_code\"]}}]', 13, 1),
(18, '2019-04-18 01:09:56.630131', '14', 'Members object (14)', 1, '[{\"added\": {}}]', 13, 1),
(19, '2019-04-18 01:34:53.731210', '4', 'Members object (4)', 2, '[{\"changed\": {\"fields\": [\"department\"]}}]', 13, 1),
(20, '2019-04-18 01:34:57.651392', '4', 'Members object (4)', 2, '[]', 13, 1),
(21, '2019-04-18 01:35:06.557786', '5', 'Members object (5)', 2, '[{\"changed\": {\"fields\": [\"department\"]}}]', 13, 1),
(22, '2019-04-18 01:35:39.930297', '6', 'Members object (6)', 2, '[]', 13, 1),
(23, '2019-04-18 01:35:47.970160', '5', 'Members object (5)', 2, '[{\"changed\": {\"fields\": [\"designation\"]}}]', 13, 1),
(24, '2019-04-18 01:36:05.950103', '7', 'Members object (7)', 2, '[{\"changed\": {\"fields\": [\"designation\"]}}]', 13, 1),
(25, '2019-04-18 01:36:24.464230', '8', 'Members object (8)', 2, '[{\"changed\": {\"fields\": [\"designation\", \"department\"]}}]', 13, 1),
(26, '2019-04-18 01:36:51.038367', '9', 'Members object (9)', 2, '[{\"changed\": {\"fields\": [\"department\"]}}]', 13, 1),
(27, '2019-04-18 01:36:57.196772', '14', 'Members object (14)', 2, '[]', 13, 1),
(28, '2019-04-18 01:46:06.342046', '6', 'Members object (6)', 2, '[{\"changed\": {\"fields\": [\"designation\"]}}]', 13, 1),
(29, '2019-04-18 22:03:06.502235', '1', 'EventInfo object (1)', 1, '[{\"added\": {}}]', 14, 1),
(30, '2019-04-18 22:11:10.113559', '1', 'EventInfo object (1)', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 14, 1),
(31, '2019-04-18 22:12:42.982771', '1', 'EventInfo object (1)', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 14, 1),
(32, '2019-04-18 22:15:53.898373', '1', 'EventInfo object (1)', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 14, 1),
(33, '2019-04-18 22:17:30.617246', '1', 'EventInfo object (1)', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 14, 1),
(34, '2019-04-18 22:19:02.174356', '1', 'EventInfo object (1)', 2, '[{\"changed\": {\"fields\": [\"profile_pic\"]}}]', 14, 1),
(35, '2019-04-18 22:24:24.086214', '1', 'EventInfo object (1)', 3, '', 14, 1),
(36, '2019-04-18 22:24:35.009303', '2', 'EventInfo object (2)', 1, '[{\"added\": {}}]', 14, 1),
(37, '2019-04-19 00:41:29.707725', '2', 'EventInfo: JEC ', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 14, 1),
(38, '2019-04-19 00:53:01.316271', '2', 'EventInfo: JEC ', 2, '[]', 14, 1),
(39, '2019-04-19 01:06:36.690142', '3', 'EventInfo: iyiy ', 1, '[{\"added\": {}}]', 14, 1),
(40, '2019-04-19 01:06:45.243818', '3', 'EventInfo: iyiy ', 2, '[{\"changed\": {\"fields\": [\"Make_breaking_news\"]}}]', 14, 1),
(41, '2019-04-19 01:06:53.172083', '2', 'EventInfo: JEC ', 2, '[{\"changed\": {\"fields\": [\"Make_breaking_news\"]}}]', 14, 1),
(42, '2019-04-19 01:10:55.259816', '3', 'EventInfo: iyiy ', 2, '[{\"changed\": {\"fields\": [\"Make_breaking_news\"]}}]', 14, 1),
(43, '2019-04-19 01:31:51.209645', '2', 'Event Info: JEC Normal Breaking news-1 19 April 2019', 2, '[{\"changed\": {\"fields\": [\"Make_breaking_news\"]}}]', 14, 1),
(44, '2019-04-19 01:43:54.209233', '3', 'Event Info: iyiy Normal   01/April/2019', 2, '[{\"changed\": {\"fields\": [\"priority\"]}}]', 14, 1),
(45, '2019-04-19 01:58:59.232193', '3', 'Event Info: iyiy Normal   13/May/2020', 2, '[{\"changed\": {\"fields\": [\"date\"]}}]', 14, 1),
(46, '2019-04-19 06:46:08.870875', '2', 'Event Info: JEC Normal Grand Event-1 19/April/2019', 2, '[{\"changed\": {\"fields\": [\"Grand_Event\"]}}]', 14, 1),
(47, '2019-04-19 07:25:11.591688', '2', 'Event Info: JEC Trending Grand Event-1 19/April/2019', 2, '[{\"changed\": {\"fields\": [\"priority\"]}}]', 14, 1),
(48, '2019-04-19 07:34:43.520343', '2', 'Event Info: Tarang is here Trending Grand Event-1 19/April/2019', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\"]}}]', 14, 1),
(49, '2019-04-19 07:35:08.087096', '3', 'Event Info: New principle Joins Normal   13/May/2020', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 14, 1),
(50, '2019-04-19 07:36:52.161253', '4', 'Event Info: Happy birthday Vinodh Sir Trending   19/April/2019', 1, '[{\"added\": {}}]', 14, 1),
(51, '2019-04-19 07:38:18.785810', '5', 'Event Info: Akhila Mam weding Trending Grand Event-2 19/April/2019', 1, '[{\"added\": {}}]', 14, 1),
(52, '2019-04-19 08:07:44.929128', '4', 'Event Info: Happy birthday Vinodh Sir Trending Grand Event-3 19/April/2019', 2, '[{\"changed\": {\"fields\": [\"Grand_Event\"]}}]', 14, 1),
(53, '2019-04-19 08:23:46.716487', '6', 'Event Info: College day    01/June/2019', 1, '[{\"added\": {}}]', 14, 1),
(54, '2019-04-19 08:27:26.155400', '7', 'Event Info: Break dance day    20/April/2019', 1, '[{\"added\": {}}]', 14, 1),
(55, '2019-04-19 08:27:55.212333', '8', 'Event Info: Eating day    19/April/2019', 1, '[{\"added\": {}}]', 14, 1),
(56, '2019-04-19 08:29:45.950589', '9', 'Event Info: Exam day    14/June/2019', 1, '[{\"added\": {}}]', 14, 1),
(57, '2019-04-19 08:30:24.483225', '10', 'Event Info: Abcd    19/April/2019', 1, '[{\"added\": {}}]', 14, 1),
(58, '2019-04-19 08:31:38.587848', '11', 'Event Info: Thanks giving day    05/May/2019', 1, '[{\"added\": {}}]', 14, 1),
(59, '2019-04-19 08:56:14.235232', '11', 'Event Info: Thanks giving day Normal   05/May/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"priority\"]}}]', 14, 1),
(60, '2019-04-19 08:56:21.194855', '10', 'Event Info: Abcd Normal   19/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"priority\"]}}]', 14, 1),
(61, '2019-04-19 08:56:29.306849', '9', 'Event Info: Exam day Normal   14/June/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"priority\"]}}]', 14, 1),
(62, '2019-04-19 08:56:41.305642', '8', 'Event Info: Eating day Normal   19/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"priority\"]}}]', 14, 1),
(63, '2019-04-19 08:56:47.784816', '7', 'Event Info: Break dance day Normal   20/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"priority\"]}}]', 14, 1),
(64, '2019-04-19 08:56:56.785847', '6', 'Event Info: College day Normal   01/June/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"priority\"]}}]', 14, 1),
(65, '2019-04-19 12:30:56.587484', '11', 'Event Info: Thanks giving day Normal   05/May/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"photo\"]}}]', 14, 1),
(66, '2019-04-19 13:30:56.645267', '11', 'Event Info: Thanks giving day Normal   05/May/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 14, 1),
(67, '2019-04-19 13:32:41.836764', '11', 'Event Info: Thanks giving day Normal   05/May/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 14, 1),
(68, '2019-04-19 13:33:37.313177', '11', 'Event Info: Thanks giving day Normal   05/May/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 14, 1),
(69, '2019-04-20 08:58:39.463375', '12', 'Event Info: sreerag Normal   20/April/2019 | By Sreerag CSE', 1, '[{\"added\": {}}]', 14, 1),
(70, '2019-04-20 09:06:15.407754', '11', 'Event Info: Thanks giving day Normal   05/May/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 14, 1),
(71, '2019-04-20 09:06:52.028331', '12', 'Event Info: sreerag Normal   20/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 14, 1),
(72, '2019-04-20 09:10:08.376338', '11', 'Event Info: Thanks giving day Normal   05/May/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(73, '2019-04-20 09:10:51.170598', '6', 'Event Info: College day Normal   01/June/2019 | By Sreerag CSE', 2, '[]', 14, 1),
(74, '2019-04-20 09:17:38.611561', '12', 'Event Info: sreerag Normal   20/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(75, '2019-04-20 09:19:47.820467', '11', 'Event Info: Thanks giving day Normal   05/May/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(76, '2019-04-20 10:51:17.352487', '5', 'Event Info: Akhila Mam weding Trending Grand Event-2 19/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(77, '2019-04-20 11:12:09.844752', '12', 'Event Info: sreerag Normal   20/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(78, '2019-04-21 01:37:41.509211', '12', 'Event Info: sreerag Normal   20/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(79, '2019-04-21 01:40:57.316024', '12', 'Event Info: sreerag Normal   20/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(80, '2019-04-21 06:22:53.305711', '5', 'Event Info: Akhila Mam weding Trending Grand Event-2 19/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(81, '2019-04-21 06:27:00.947296', '5', 'Event Info: Akhila Mam weding Trending Grand Event-2 19/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(82, '2019-04-21 07:05:40.544004', '9', 'Event Info: Exam day Normal   14/June/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(83, '2019-04-21 07:12:57.333399', '2', 'Event Info: Tarang is here Trending   19/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Grand_Event\"]}}]', 14, 1),
(84, '2019-04-21 07:14:03.646100', '13', 'Event Info: ssreerag Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 1, '[{\"added\": {}}]', 14, 1),
(85, '2019-04-21 07:15:31.638846', '13', 'Event Info: ssreerag Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 3, '', 14, 1),
(86, '2019-04-21 07:16:18.106991', '14', 'Event Info: real time traffic light system Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 1, '[{\"added\": {}}]', 14, 1),
(87, '2019-04-21 07:18:04.599434', '14', 'Event Info: real time traffic light system Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(88, '2019-04-21 07:21:21.645560', '14', 'Event Info: real time traffic light system Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(89, '2019-04-21 07:24:34.275558', '14', 'Event Info: real time traffic light system Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(90, '2019-04-21 07:25:36.337151', '14', 'Event Info: real time traffic light system Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(91, '2019-04-21 07:25:42.164654', '14', 'Event Info: real time traffic light system Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[]', 14, 1),
(92, '2019-04-21 07:26:45.246383', '14', 'Event Info: real time traffic light system Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[]', 14, 1),
(93, '2019-04-21 07:27:25.178974', '14', 'Event Info: real time traffic light system Normal   21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Grand_Event\"]}}]', 14, 1),
(94, '2019-04-21 07:27:45.649462', '15', 'Event Info: dydu Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 1, '[{\"added\": {}}]', 14, 1),
(95, '2019-04-21 07:29:09.437789', '15', 'Event Info: dydu Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 3, '', 14, 1),
(96, '2019-04-21 07:29:31.553514', '14', 'Event Info: real time traffic light system Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Grand_Event\"]}}]', 14, 1),
(97, '2019-04-21 07:29:56.204548', '16', 'Event Info: ggy Normal   21/April/2019 | By Sreerag CSE', 1, '[{\"added\": {}}]', 14, 1),
(98, '2019-04-21 07:30:10.178040', '14', 'Event Info: real time traffic light system Normal   21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Grand_Event\"]}}]', 14, 1),
(99, '2019-04-21 07:31:02.492021', '16', 'Event Info: ggy Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Grand_Event\"]}}]', 14, 1),
(100, '2019-04-21 07:32:55.368016', '16', 'Event Info: ggy Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 3, '', 14, 1),
(101, '2019-04-21 07:33:20.436782', '17', 'Event Info: dydu Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 1, '[{\"added\": {}}]', 14, 1),
(102, '2019-04-21 07:39:57.437304', '17', 'Event Info: dydu Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(103, '2019-04-21 07:40:32.139113', '17', 'Event Info: dydu Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 3, '', 14, 1),
(104, '2019-04-21 07:41:24.460148', '18', 'Event Info: ygy Trending Grand Event-1 21/April/2019 | By Sreerag CSE', 1, '[{\"added\": {}}]', 14, 1),
(105, '2019-04-21 07:42:29.084575', '18', 'Event Info: ygy Trending Grand Event-1 21/April/2019 | By Sreerag CSE', 3, '', 14, 1),
(106, '2019-04-21 07:42:41.153110', '19', 'Event Info: gig Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 1, '[{\"added\": {}}]', 14, 1),
(107, '2019-04-21 07:53:12.200976', '20', 'Event Info: ivszdigb Normal   21/April/2019 | By Sreerag CSE', 1, '[{\"added\": {}}]', 14, 1),
(108, '2019-04-21 08:02:31.244646', '19', 'Event Info: gig Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"photo\"]}}]', 14, 1),
(109, '2019-04-21 08:10:35.001213', '19', 'Event Info: gig Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[]', 14, 1),
(110, '2019-04-21 08:11:22.608272', '19', 'Event Info: gig Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(111, '2019-04-21 08:11:53.587057', '19', 'Event Info: gig Normal   21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Grand_Event\"]}}]', 14, 1),
(112, '2019-04-21 08:12:09.187721', '20', 'Event Info: ivszdigb Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Grand_Event\"]}}]', 14, 1),
(113, '2019-04-21 08:22:13.520952', '20', 'Event Info: ivszdigb Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(114, '2019-04-21 08:29:36.330914', '20', 'Event Info: ivszdigb Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(115, '2019-04-21 10:21:21.963931', '19', 'Event Info: Hello Event Normal   21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\"]}}]', 14, 1),
(116, '2019-04-21 10:23:25.255790', '14', 'Event Info: real time traffic light system Normal   21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 14, 1),
(117, '2019-04-21 10:24:31.431910', '10', 'Event Info: Abcd Normal   19/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 14, 1),
(118, '2019-04-21 10:25:15.394530', '12', 'Event Info: sreerag Normal   20/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 14, 1),
(119, '2019-04-21 10:35:07.704484', '2', 'Event Info: Tarang is here Trending   19/April/2019 | By Sreerag CSE', 3, '', 14, 1),
(120, '2019-04-21 10:35:30.958877', '21', 'Event Info: Tarang is here Trending   21/April/2019 | By Sreerag CSE', 1, '[{\"added\": {}}]', 14, 1),
(121, '2019-04-21 10:38:39.329665', '21', 'Event Info: Tarang is here Normal   21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"priority\"]}}]', 14, 1),
(122, '2019-04-21 10:39:53.323598', '21', 'Event Info: Tarang is here Trending   21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"priority\"]}}]', 14, 1),
(123, '2019-04-21 13:43:55.690816', '21', 'Event Info: Tarang is here Trending   04/July/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"date\"]}}]', 14, 1),
(124, '2019-04-21 15:38:25.515731', '20', 'Event Info: India is my country Normal Grand Event-1 21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 14, 1),
(125, '2019-04-21 15:47:16.018827', '20', 'Event Info: India is my country Normal   21/April/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Grand_Event\"]}}]', 14, 1),
(126, '2019-04-21 15:47:26.182153', '21', 'Event Info: Tarang is here Trending Grand Event-1 04/July/2019 | By Sreerag CSE', 2, '[{\"changed\": {\"fields\": [\"Grand_Event\"]}}]', 14, 1),
(127, '2019-04-21 15:57:19.000092', '3', ' Prof Ratnan P Administration JEC342', 2, '[{\"changed\": {\"fields\": [\"Designation\", \"Email\"]}}]', 4, 1),
(128, '2019-04-21 15:57:43.044250', '3', ' Prof Ratnan P Administration JEC342', 2, '[]', 4, 1),
(129, '2019-04-21 15:58:09.283486', '2', ' Fr. Roy Joseph Vadakkan Administration JEC367', 2, '[{\"changed\": {\"fields\": [\"Designation\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(5, 'admin', 'logentry'),
(7, 'auth', 'group'),
(6, 'auth', 'permission'),
(8, 'auth', 'user'),
(2, 'calender', 'contacts'),
(14, 'calender', 'eventinfo'),
(3, 'calender', 'person'),
(12, 'comity', 'comity'),
(15, 'comity', 'member'),
(13, 'comity', 'members'),
(11, 'comity', 'topic'),
(4, 'contacts', 'contact'),
(9, 'contenttypes', 'contenttype'),
(10, 'sessions', 'session'),
(1, 'table', 'person');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-04-17 23:08:45.315747'),
(2, 'auth', '0001_initial', '2019-04-17 23:08:53.558065'),
(3, 'admin', '0001_initial', '2019-04-17 23:08:55.549405'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-04-17 23:08:55.581154'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-17 23:08:55.626516'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-17 23:08:56.504259'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-17 23:08:57.261707'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-17 23:08:58.110531'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-17 23:08:58.157167'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-17 23:08:58.475288'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-17 23:08:58.506930'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-17 23:08:58.569415'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-17 23:08:59.406660'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-17 23:09:00.295211'),
(15, 'calender', '0001_initial', '2019-04-17 23:09:00.603477'),
(16, 'contacts', '0001_initial', '2019-04-17 23:09:00.826448'),
(17, 'contacts', '0002_auto_20190301_2002', '2019-04-17 23:09:01.697626'),
(18, 'contacts', '0003_contact_photos', '2019-04-17 23:09:02.087853'),
(19, 'contacts', '0004_auto_20190301_2307', '2019-04-17 23:09:02.660206'),
(20, 'contacts', '0005_contact_department', '2019-04-17 23:09:03.048287'),
(21, 'contacts', '0006_auto_20190321_1643', '2019-04-17 23:09:03.131325'),
(22, 'contacts', '0007_auto_20190321_1712', '2019-04-17 23:09:03.151242'),
(23, 'contacts', '0008_auto_20190402_0001', '2019-04-17 23:09:03.189396'),
(24, 'contacts', '0009_auto_20190402_0006', '2019-04-17 23:09:03.217355'),
(25, 'contacts', '0010_auto_20190402_0114', '2019-04-17 23:09:03.756513'),
(26, 'contacts', '0011_auto_20190417_1510', '2019-04-17 23:09:03.813199'),
(27, 'sessions', '0001_initial', '2019-04-17 23:09:04.602161'),
(28, 'contacts', '0012_auto_20190418_0439', '2019-04-17 23:13:24.222011'),
(29, 'comity', '0001_initial', '2019-04-17 23:14:13.065078'),
(30, 'comity', '0002_auto_20190418_0444', '2019-04-17 23:15:11.397647'),
(31, 'comity', '0003_members', '2019-04-17 23:28:14.639886'),
(32, 'comity', '0004_auto_20190418_0520', '2019-04-17 23:53:27.503045'),
(33, 'comity', '0005_auto_20190418_0628', '2019-04-18 01:28:59.427396'),
(34, 'comity', '0006_members_department', '2019-04-18 01:32:32.403609'),
(35, 'comity', '0007_auto_20190418_0702', '2019-04-18 01:32:40.992187'),
(36, 'calender', '0002_auto_20190419_0330', '2019-04-18 22:00:19.648924'),
(37, 'calender', '0003_eventinfo_title', '2019-04-18 23:25:53.660656'),
(38, 'calender', '0004_auto_20190419_0503', '2019-04-18 23:36:32.719399'),
(39, 'calender', '0005_auto_20190419_0525', '2019-04-18 23:56:14.596088'),
(40, 'calender', '0006_auto_20190419_0608', '2019-04-19 00:38:46.631206'),
(41, 'calender', '0007_auto_20190419_0619', '2019-04-19 00:49:34.493359'),
(42, 'calender', '0008_auto_20190419_0633', '2019-04-19 01:03:48.090675'),
(43, 'calender', '0009_auto_20190419_1214', '2019-04-19 06:44:33.714596'),
(44, 'calender', '0010_auto_20190419_1406', '2019-04-19 08:36:56.400131'),
(45, 'contacts', '0013_auto_20190419_1413', '2019-04-19 08:43:30.177408'),
(46, 'calender', '0011_auto_20190419_1735', '2019-04-19 12:09:09.744755'),
(47, 'calender', '0012_eventinfo_thumbnail', '2019-04-19 12:09:10.061097'),
(48, 'calender', '0013_auto_20190419_1741', '2019-04-19 12:12:07.769359'),
(49, 'calender', '0014_auto_20190419_1813', '2019-04-19 12:43:31.524608'),
(50, 'calender', '0015_auto_20190419_1859', '2019-04-19 13:29:56.235318'),
(51, 'calender', '0016_auto_20190420_1419', '2019-04-20 08:49:57.499385'),
(52, 'calender', '0017_auto_20190420_1427', '2019-04-20 08:58:03.053239'),
(53, 'calender', '0018_auto_20190420_1439', '2019-04-20 09:09:44.268635'),
(54, 'calender', '0019_auto_20190420_1611', '2019-04-20 10:41:57.476509'),
(55, 'calender', '0020_auto_20190421_1256', '2019-04-21 07:38:34.367065'),
(56, 'calender', '0021_auto_20190421_1308', '2019-04-21 07:38:41.018426'),
(57, 'calender', '0022_auto_20190421_1312', '2019-04-21 07:42:07.142312'),
(58, 'calender', '0023_auto_20190421_1319', '2019-04-21 07:49:11.318434'),
(59, 'calender', '0024_auto_20190421_1320', '2019-04-21 07:50:47.903451'),
(60, 'calender', '0025_auto_20190421_1320', '2019-04-21 07:50:47.935256'),
(61, 'calender', '0026_auto_20190421_1322', '2019-04-21 08:10:11.657424'),
(62, 'calender', '0027_auto_20190421_1339', '2019-04-21 08:10:11.786141'),
(63, 'calender', '0028_auto_20190421_1343', '2019-04-21 08:13:22.953645'),
(64, 'calender', '0029_auto_20190421_1344', '2019-04-21 08:14:19.759179'),
(65, 'calender', '0030_auto_20190421_1357', '2019-04-21 08:27:18.143889'),
(66, 'calender', '0031_auto_20190421_1357', '2019-04-21 14:57:25.909553'),
(67, 'comity', '0008_auto_20190422_0546', '2019-04-22 00:18:16.130870');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('pbfcxnz949s5o6sznhjeiq3ax4d84w0l', 'NDQ3MzBkNmJkNWQwZjZiMThhZWFmYjQwZTM2MzkwYTA5MmNmNGYzYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NGNjYTZiNmFjYTVlZDU3NDAxODBhMzc3YTg0OTdiMmM2YWMyNzRjIn0=', '2019-05-02 01:06:35.348370');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `calender_eventinfo`
--
ALTER TABLE `calender_eventinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Grand_Event` (`Grand_Event`);

--
-- Indexes for table `comity_comity`
--
ALTER TABLE `comity_comity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comity_member`
--
ALTER TABLE `comity_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comity_members_comity_id_193811e2_fk_comity_comity_id` (`comity_id`);

--
-- Indexes for table `comity_members`
--
ALTER TABLE `comity_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comity_members_comity_id_193811e2_fk_comity_comity_id` (`comity_id`);

--
-- Indexes for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`Phone_Number`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calender_eventinfo`
--
ALTER TABLE `calender_eventinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `comity_comity`
--
ALTER TABLE `comity_comity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comity_member`
--
ALTER TABLE `comity_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comity_members`
--
ALTER TABLE `comity_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `comity_members`
--
ALTER TABLE `comity_members`
  ADD CONSTRAINT `comity_members_comity_id_193811e2_fk_comity_comity_id` FOREIGN KEY (`comity_id`) REFERENCES `comity_comity` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
