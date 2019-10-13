-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2019 at 07:20 AM
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
-- Table structure for table `account_account`
--

CREATE TABLE `account_account` (
  `id` int(11) NOT NULL,
  `timezone` varchar(100) NOT NULL,
  `language` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_account`
--

INSERT INTO `account_account` (`id`, `timezone`, `language`, `user_id`) VALUES
(1, '', 'en-us', 2),
(2, '', 'en-us', 3);

-- --------------------------------------------------------

--
-- Table structure for table `account_accountdeletion`
--

CREATE TABLE `account_accountdeletion` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `date_requested` datetime(6) NOT NULL,
  `date_expunged` datetime(6) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, 'admin@gmail.com', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_passwordexpiry`
--

CREATE TABLE `account_passwordexpiry` (
  `id` int(11) NOT NULL,
  `expiry` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_passwordhistory`
--

CREATE TABLE `account_passwordhistory` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_signupcode`
--

CREATE TABLE `account_signupcode` (
  `id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `max_uses` int(10) UNSIGNED NOT NULL,
  `expiry` datetime(6) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `notes` longtext NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `use_count` int(10) UNSIGNED NOT NULL,
  `inviter_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_signupcoderesult`
--

CREATE TABLE `account_signupcoderesult` (
  `id` int(11) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `signup_code_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(60, 'Can view member', 15, 'view_member'),
(61, 'Can add Scheduling', 16, 'add_event'),
(62, 'Can change Scheduling', 16, 'change_event'),
(63, 'Can delete Scheduling', 16, 'delete_event'),
(64, 'Can view Scheduling', 16, 'view_event'),
(65, 'Can add site', 17, 'add_site'),
(66, 'Can change site', 17, 'change_site'),
(67, 'Can delete site', 17, 'delete_site'),
(68, 'Can view site', 17, 'view_site'),
(69, 'Can add account', 18, 'add_account'),
(70, 'Can change account', 18, 'change_account'),
(71, 'Can delete account', 18, 'delete_account'),
(72, 'Can view account', 18, 'view_account'),
(73, 'Can add account deletion', 19, 'add_accountdeletion'),
(74, 'Can change account deletion', 19, 'change_accountdeletion'),
(75, 'Can delete account deletion', 19, 'delete_accountdeletion'),
(76, 'Can view account deletion', 19, 'view_accountdeletion'),
(77, 'Can add email address', 20, 'add_emailaddress'),
(78, 'Can change email address', 20, 'change_emailaddress'),
(79, 'Can delete email address', 20, 'delete_emailaddress'),
(80, 'Can view email address', 20, 'view_emailaddress'),
(81, 'Can add email confirmation', 21, 'add_emailconfirmation'),
(82, 'Can change email confirmation', 21, 'change_emailconfirmation'),
(83, 'Can delete email confirmation', 21, 'delete_emailconfirmation'),
(84, 'Can view email confirmation', 21, 'view_emailconfirmation'),
(85, 'Can add signup code', 22, 'add_signupcode'),
(86, 'Can change signup code', 22, 'change_signupcode'),
(87, 'Can delete signup code', 22, 'delete_signupcode'),
(88, 'Can view signup code', 22, 'view_signupcode'),
(89, 'Can add signup code result', 23, 'add_signupcoderesult'),
(90, 'Can change signup code result', 23, 'change_signupcoderesult'),
(91, 'Can delete signup code result', 23, 'delete_signupcoderesult'),
(92, 'Can view signup code result', 23, 'view_signupcoderesult'),
(93, 'Can add password expiry', 24, 'add_passwordexpiry'),
(94, 'Can change password expiry', 24, 'change_passwordexpiry'),
(95, 'Can delete password expiry', 24, 'delete_passwordexpiry'),
(96, 'Can view password expiry', 24, 'view_passwordexpiry'),
(97, 'Can add password history', 25, 'add_passwordhistory'),
(98, 'Can change password history', 25, 'change_passwordhistory'),
(99, 'Can delete password history', 25, 'delete_passwordhistory'),
(100, 'Can view password history', 25, 'view_passwordhistory'),
(101, 'Can add log', 26, 'add_log'),
(102, 'Can change log', 26, 'change_log'),
(103, 'Can delete log', 26, 'delete_log'),
(104, 'Can view log', 26, 'view_log'),
(105, 'Can add event', 27, 'add_event'),
(106, 'Can change event', 27, 'change_event'),
(107, 'Can delete event', 27, 'delete_event'),
(108, 'Can view event', 27, 'view_event'),
(109, 'Can add Event', 28, 'add_calendarevent'),
(110, 'Can change Event', 28, 'change_calendarevent'),
(111, 'Can delete Event', 28, 'delete_calendarevent'),
(112, 'Can view Event', 28, 'view_calendarevent'),
(113, 'Can add departments', 29, 'add_departments'),
(114, 'Can change departments', 29, 'change_departments'),
(115, 'Can delete departments', 29, 'delete_departments'),
(116, 'Can view departments', 29, 'view_departments'),
(117, 'Can add time table', 30, 'add_timetable'),
(118, 'Can change time table', 30, 'change_timetable'),
(119, 'Can delete time table', 30, 'delete_timetable'),
(120, 'Can view time table', 30, 'view_timetable'),
(121, 'Can add department', 31, 'add_department'),
(122, 'Can change department', 31, 'change_department'),
(123, 'Can delete department', 31, 'delete_department'),
(124, 'Can view department', 31, 'view_department'),
(125, 'Can add time tables', 30, 'add_timetables'),
(126, 'Can change time tables', 30, 'change_timetables'),
(127, 'Can delete time tables', 30, 'delete_timetables'),
(128, 'Can view time tables', 30, 'view_timetables'),
(129, 'Can add department', 32, 'add_department'),
(130, 'Can change department', 32, 'change_department'),
(131, 'Can delete department', 32, 'delete_department'),
(132, 'Can view department', 32, 'view_department'),
(133, 'Can add time_table', 33, 'add_time_table'),
(134, 'Can change time_table', 33, 'change_time_table'),
(135, 'Can delete time_table', 33, 'delete_time_table'),
(136, 'Can view time_table', 33, 'view_time_table');

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
(1, 'pbkdf2_sha256$120000$2ydJjpidzmM3$nz44a9LvzjWCsBB+jj8BO0np5/ZR/5ZnRV1xnH014wE=', '2019-08-23 13:44:21.350521', 1, 'sreerag', '', '', '', 1, 1, '2019-04-17 23:25:52.132378'),
(2, 'pbkdf2_sha256$120000$ySsZ016deXan$2hHlmTN4s0ReZnFQ7CuNF/qG53oGWwgdQk2cFsvfXqA=', NULL, 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2019-07-07 05:12:59.467589'),
(3, 'pbkdf2_sha256$120000$iiAVIKayUCoP$tDsTQ8CYBPtNEweTrahzP8hd23W/7udKNrCCgZF6JZU=', NULL, 1, 'user', '', '', '', 1, 1, '2019-07-07 06:50:18.268514');

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
  `By` varchar(200) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Event_type` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calender_eventinfo`
--

INSERT INTO `calender_eventinfo` (`id`, `title`, `date`, `description`, `priority`, `By`, `Photo`, `Event_type`) VALUES
(3, 'DS202 First Assignment Submission', '2020-05-13', '', 'Normal', 'Sreerag CSE', '11ffe044ec04e', 'Class-Event'),
(4, 'CS202 Second Assignment Submission', '2019-04-19', 'Submit CS202 Assignment on 2019-04-19', 'Trending', 'Sreerag CSE', '11ffe044ec04e', 'Class-Event'),
(5, 'MA101 Retest', '2019-04-19', 'Calculus retest for s2', 'Trending', 'Sreerag CSE', 'images/classevents.jpg', 'Class-Event'),
(6, 'College day', '2019-06-01', 'College day is a beautiful festival   of arts and science', 'Normal', 'Sreerag CSE', 'images/collegeday.jpg', 'Non-Academic'),
(7, 'Christmas Celebration', '2019-04-20', 'Christmas Celebration all are welcome', 'Normal', 'Sreerag CSE', 'images/christmas-package.jpg', 'Non-Academic'),
(8, 'Onam celebration', '2019-04-19', 'Onam celebration all are invited', 'Normal', 'Sreerag CSE', 'images/onam.jpg', 'Non-Academic'),
(9, 'CS202 First Assignment Submission', '2019-06-14', 'Exam day is a beautiful festival   of arts and science', 'Normal', 'Sreerag CSE', '11ffe044ec04e', 'Class-Event'),
(10, 'University Exam for S2', '2019-04-19', 'Learn your ABC\'s with KidsFirstTV\'s ABCD song for children. Sing along with songs for kids and learn the', 'Normal', 'Sreerag CSE', 'images/exam.jpg', 'Academic'),
(11, 'University Exam for S1', '2019-05-05', 'University Exam for S1', 'Normal', 'Sreerag CSE', 'images/exams1.jpg', 'Academic'),
(12, 'CSEA ingratiation', '2019-04-20', 'Computer Engineering Students Association inagration', 'Normal', 'Sreerag CSE', 'images/cesa.jpg', 'Non-Academic'),
(14, 'Second internals', '2019-07-11', 'Second internals starts', 'Normal', 'Sreerag CSE', 'images/internal_HUYJWlY.jpg', 'Academic'),
(19, 'First Internal Exam', '2019-04-21', 'Hello event description', 'Normal', 'Sreerag CSE', 'images/internal.jpg', 'Academic'),
(20, 'Union  Day', '2019-04-21', 'Day for ingratiation of college elected union', 'Normal', 'Sreerag CSE', 'images/unionday.jpg', 'Non-Academic'),
(21, 'Tharang', '2019-07-04', 'Tarang is a beautiful festival   of arts and science', 'Trending', 'Sreerag CSE', 'images/tharang.jpg', 'Non-Academic');

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
  `departments_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts_contact`
--

INSERT INTO `contacts_contact` (`id`, `Name`, `Phone_Number`, `Email`, `Designation`, `Qualification`, `jecc_code`, `departments_id`) VALUES
(1, 'Shaiju Paul', '9495275350', 'paulson@jecc.ac.in', 'Assistant Professor', 'M.Tech', 'JEC422', 1),
(2, 'Fr. Roy Joseph Vadakkan', '9526964455', 'fr.royjoseph@jecc.ac.in', 'Campus Head,Asst. Manager', 'M B A . PG D M L E', 'JEC367', 6),
(3, 'Prof Ratnan P', '7561888515', 'pratanan@jecc.ac.in', 'Professor', 'M E', 'JEC342', 6),
(4, 'Vinod K', '949527535', 'VINU.cs@jecc.ac.in', 'Assistant Professor', 'M.A. M.Phil. B.Th. PhD', 'JEC593', 1),
(5, 'Unnikrishnan P', '9592251499', 'unnikrishnanp@jecc.ac.in', 'Assistant Professor', 'M TEC', 'JEC387', 1),
(6, 'Prof S Rathish', '944713820', 'rathishs@jecc.ac.in', 'Associate Professor', 'M.Tech,MS', 'JEC562', 8),
(7, 'Dr Jose P Therattil', '9496731126', 'dr.joseptherattil@jecc.ac.in', 'Professor', 'M Tech,Phd', 'JEC052', 3),
(8, 'Dr Jarin T', '123645689', 'dr.jarint@jecc.ac.in', 'Professor', 'PhD,ME', 'JEC601', 4),
(9, 'Dr Biju P L', '9897844649', 'dr.bijupl@jecc.ac.in', 'Bus Codinator,HOD', 'Phd , MTech', 'JEC648', 2),
(10, 'Fr John Tharayil', '789496165', 'fr.johntarayil@jecc.ac.in', 'Professor', 'MA , MSC', 'JEC015', 7),
(11, 'Namita', '1234576565', 'namitha@jecc.ac.in', 'Assistant Professor', 'M TECH', 'JEC270', 1),
(12, 'Swapna', '1213241467', 'swapna@jecc.ac.in', 'Assistant Professor', 'M TEC', 'JEC345', 1),
(18, 'Vivek Lukose', '12343', 'VivekLukose@jecc.ac.in', 'HOD', 'M TEC', 'JEC172', 5);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_department`
--

CREATE TABLE `contacts_department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts_department`
--

INSERT INTO `contacts_department` (`id`, `department_name`) VALUES
(1, 'CSE'),
(2, 'ME'),
(3, 'ECE'),
(4, 'EEE'),
(5, 'MR'),
(6, 'Administration'),
(7, 'BSH'),
(8, 'CIVIL');

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
(129, '2019-04-21 15:58:09.283486', '2', ' Fr. Roy Joseph Vadakkan Administration JEC367', 2, '[{\"changed\": {\"fields\": [\"Designation\"]}}]', 4, 1),
(130, '2019-04-24 03:49:09.210879', '11', ' Namita CSE JEC270', 2, '[{\"changed\": {\"fields\": [\"Designation\", \"Qualification\", \"Email\", \"jecc_code\"]}}]', 4, 1),
(131, '2019-07-06 11:33:07.069490', '1', 'Event object (1)', 1, '[{\"added\": {}}]', 16, 1),
(132, '2019-07-06 11:34:36.605192', '2', 'Event object (2)', 1, '[{\"added\": {}}]', 16, 1),
(133, '2019-07-06 11:36:28.519567', '3', 'Event object (3)', 1, '[{\"added\": {}}]', 16, 1),
(134, '2019-07-07 01:57:03.312225', '12', ' Swapna CSE JEC345', 2, '[{\"changed\": {\"fields\": [\"Designation\", \"jecc_code\"]}}]', 4, 1),
(135, '2019-07-07 02:03:55.974013', '13', ' Sreerag CSE JEC888', 3, '', 4, 1),
(136, '2019-07-11 10:35:42.273685', '21', 'EventInfo object (21)', 2, '[{\"changed\": {\"fields\": [\"Event_type\"]}}]', 14, 1),
(137, '2019-07-11 10:37:43.566485', '20', 'EventInfo object (20)', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\", \"Event_type\"]}}]', 14, 1),
(138, '2019-07-11 10:38:21.037728', '19', 'EventInfo object (19)', 2, '[{\"changed\": {\"fields\": [\"title\", \"Event_type\"]}}]', 14, 1),
(139, '2019-07-11 10:40:05.915075', '14', 'EventInfo object (14)', 2, '[{\"changed\": {\"fields\": [\"title\", \"date\", \"description\", \"Event_type\"]}}]', 14, 1),
(140, '2019-07-11 10:42:17.355317', '12', 'EventInfo object (12)', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\", \"Event_type\"]}}]', 14, 1),
(141, '2019-07-11 10:43:30.436982', '11', 'EventInfo object (11)', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\", \"Event_type\"]}}]', 14, 1),
(142, '2019-07-11 10:44:06.419727', '10', 'EventInfo object (10)', 2, '[{\"changed\": {\"fields\": [\"title\", \"Event_type\"]}}]', 14, 1),
(143, '2019-07-11 10:45:26.372003', '9', 'EventInfo object (9)', 2, '[{\"changed\": {\"fields\": [\"title\", \"Event_type\"]}}]', 14, 1),
(144, '2019-07-11 10:46:54.301174', '8', 'EventInfo object (8)', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\", \"Event_type\"]}}]', 14, 1),
(145, '2019-07-11 10:47:48.680769', '7', 'EventInfo object (7)', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\", \"Event_type\"]}}]', 14, 1),
(146, '2019-07-11 10:48:05.687338', '6', 'EventInfo object (6)', 2, '[{\"changed\": {\"fields\": [\"Event_type\"]}}]', 14, 1),
(147, '2019-07-11 10:49:20.769509', '5', 'EventInfo object (5)', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\", \"Event_type\"]}}]', 14, 1),
(148, '2019-07-11 10:50:35.334913', '4', 'EventInfo object (4)', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\", \"Event_type\"]}}]', 14, 1),
(149, '2019-07-11 10:52:56.317465', '3', 'EventInfo object (3)', 2, '[{\"changed\": {\"fields\": [\"title\", \"Event_type\"]}}]', 14, 1),
(150, '2019-07-11 10:53:46.052825', '21', 'EventInfo object (21)', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 14, 1),
(151, '2019-07-18 10:08:33.352258', '1', 'Computer Science', 1, '[{\"added\": {}}]', 31, 1),
(152, '2019-07-18 10:09:03.204024', '1', 'CSE', 2, '[{\"changed\": {\"fields\": [\"department_name\"]}}]', 31, 1),
(153, '2019-07-18 10:09:07.985178', '2', 'ME', 1, '[{\"added\": {}}]', 31, 1),
(154, '2019-07-18 10:09:13.982010', '3', 'ECE', 1, '[{\"added\": {}}]', 31, 1),
(155, '2019-07-18 10:09:22.829580', '4', 'EEE', 1, '[{\"added\": {}}]', 31, 1),
(156, '2019-07-18 10:09:41.097385', '5', 'MR', 1, '[{\"added\": {}}]', 31, 1),
(157, '2019-07-18 10:11:47.246091', '1', 'TimeTable object (1)', 1, '[{\"added\": {}}]', 30, 1),
(158, '2019-07-18 10:25:04.981503', '1', 'TimeTable object (1)', 2, '[{\"changed\": {\"fields\": [\"Time_Table_of_Division_A\"]}}]', 30, 1),
(159, '2019-07-18 12:04:32.541838', '2', 'TimeTables object (2)', 1, '[{\"added\": {}}]', 30, 1),
(160, '2019-07-18 12:08:03.137487', '3', 'TimeTables object (3)', 1, '[{\"added\": {}}]', 30, 1),
(161, '2019-07-18 12:09:06.884048', '4', 'TimeTables object (4)', 1, '[{\"added\": {}}]', 30, 1),
(162, '2019-07-18 12:09:42.106748', '5', 'TimeTables object (5)', 1, '[{\"added\": {}}]', 30, 1),
(163, '2019-07-18 12:11:05.254208', '6', 'TimeTables object (6)', 1, '[{\"added\": {}}]', 30, 1),
(164, '2019-07-18 18:07:01.106061', '7', 'TimeTables object (7)', 1, '[{\"added\": {}}]', 30, 1),
(165, '2019-07-19 08:13:33.043903', '1', 'CSE', 1, '[{\"added\": {}}]', 32, 1),
(166, '2019-07-19 08:13:36.762867', '2', 'ECE', 1, '[{\"added\": {}}]', 32, 1),
(167, '2019-07-19 08:13:39.643884', '3', 'EEE', 1, '[{\"added\": {}}]', 32, 1),
(168, '2019-07-19 08:13:42.639468', '4', 'MR', 1, '[{\"added\": {}}]', 32, 1),
(169, '2019-07-19 08:14:03.523092', '5', 'ME', 1, '[{\"added\": {}}]', 32, 1),
(170, '2019-07-19 08:15:03.880592', '1', 'Time_table object (1)', 1, '[{\"added\": {}}]', 33, 1),
(171, '2019-07-19 08:17:15.516157', '2', 'Time_table object (2)', 1, '[{\"added\": {}}]', 33, 1),
(172, '2019-07-19 08:18:17.325217', '1', 'Time_table object (1)', 2, '[{\"changed\": {\"fields\": [\"semester\"]}}]', 33, 1),
(173, '2019-07-19 08:18:41.040772', '3', 'Time_table object (3)', 1, '[{\"added\": {}}]', 33, 1),
(174, '2019-07-19 08:19:03.187886', '4', 'Time_table object (4)', 1, '[{\"added\": {}}]', 33, 1),
(175, '2019-07-19 08:19:34.559888', '5', 'Time_table object (5)', 1, '[{\"added\": {}}]', 33, 1),
(176, '2019-07-19 08:20:40.234560', '6', 'Time_table object (6)', 1, '[{\"added\": {}}]', 33, 1),
(177, '2019-07-19 08:22:18.434008', '7', 'Time_table object (7)', 1, '[{\"added\": {}}]', 33, 1),
(178, '2019-07-19 08:22:40.813224', '8', 'Time_table object (8)', 1, '[{\"added\": {}}]', 33, 1),
(179, '2019-07-19 08:23:07.652682', '9', 'Time_table object (9)', 1, '[{\"added\": {}}]', 33, 1),
(180, '2019-07-19 10:13:06.616983', '3', ' Prof Ratnan P Administration JEC342', 2, '[{\"changed\": {\"fields\": [\"departments\"]}}]', 4, 1),
(181, '2019-07-19 10:14:20.144621', '6', 'Administration', 1, '[{\"added\": {}}]', 31, 1),
(182, '2019-07-19 10:14:57.488872', '3', ' Prof Ratnan P Administration JEC342', 2, '[{\"changed\": {\"fields\": [\"departments\"]}}]', 4, 1),
(183, '2019-07-19 10:15:06.731274', '2', ' Fr. Roy Joseph Vadakkan Administration JEC367', 2, '[{\"changed\": {\"fields\": [\"departments\"]}}]', 4, 1),
(184, '2019-07-19 10:16:59.473390', '7', 'BSH', 1, '[{\"added\": {}}]', 31, 1),
(185, '2019-07-19 10:17:36.652038', '10', ' Fr John Tharayil BSH JEC015', 2, '[{\"changed\": {\"fields\": [\"departments\", \"Designation\", \"Qualification\"]}}]', 4, 1),
(186, '2019-07-19 10:18:06.744603', '8', 'CIVIL', 1, '[{\"added\": {}}]', 31, 1),
(187, '2019-07-19 10:18:26.189151', '6', ' Prof S Rathish CIVIL JEC562', 2, '[{\"changed\": {\"fields\": [\"departments\", \"Designation\"]}}]', 4, 1),
(188, '2019-07-19 10:18:36.403344', '12', ' Swapna CSE JEC345', 2, '[{\"changed\": {\"fields\": [\"departments\"]}}]', 4, 1),
(189, '2019-07-19 10:18:45.006229', '11', ' Namita CSE JEC270', 2, '[{\"changed\": {\"fields\": [\"departments\"]}}]', 4, 1),
(190, '2019-07-19 10:19:19.884544', '5', ' Unnikrishnan P CSE JEC387', 2, '[{\"changed\": {\"fields\": [\"departments\", \"Email\"]}}]', 4, 1),
(191, '2019-07-19 10:19:43.550727', '4', ' Vinod K CSE JEC593', 2, '[{\"changed\": {\"fields\": [\"departments\", \"Designation\"]}}]', 4, 1),
(192, '2019-07-19 10:19:55.598162', '1', ' Shaiju Paul CSE JEC422', 2, '[{\"changed\": {\"fields\": [\"departments\"]}}]', 4, 1),
(193, '2019-07-19 10:20:16.922141', '7', ' Dr Jose P Therattil ECE JEC052', 2, '[{\"changed\": {\"fields\": [\"departments\", \"Designation\"]}}]', 4, 1),
(194, '2019-07-19 10:20:56.520511', '8', ' Dr Jarin T EEE JEC601', 2, '[{\"changed\": {\"fields\": [\"departments\", \"Designation\"]}}]', 4, 1),
(195, '2019-07-19 10:21:24.842860', '9', ' Dr Biju P L ME JEC648', 2, '[{\"changed\": {\"fields\": [\"departments\", \"Designation\"]}}]', 4, 1),
(196, '2019-07-19 11:08:57.772136', '9', ' Dr Biju P L ME JEC648', 2, '[{\"changed\": {\"fields\": [\"Designation\"]}}]', 4, 1),
(197, '2019-08-23 13:45:07.607430', '10', 'EventInfo object (10)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(198, '2019-08-23 13:51:19.078619', '8', 'EventInfo object (8)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(199, '2019-08-23 13:57:01.829855', '5', 'EventInfo object (5)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(200, '2019-08-23 14:01:01.750185', '8', 'EventInfo object (8)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(201, '2019-08-23 14:05:16.447156', '10', 'EventInfo object (10)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(202, '2019-08-23 14:08:23.825906', '8', 'EventInfo object (8)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(203, '2019-08-23 14:09:56.488396', '7', 'EventInfo object (7)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(204, '2019-08-23 14:11:37.490572', '12', 'EventInfo object (12)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(205, '2019-08-23 14:14:50.462506', '20', 'EventInfo object (20)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(206, '2019-08-23 14:18:31.514042', '19', 'EventInfo object (19)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(207, '2019-08-23 14:22:15.976864', '11', 'EventInfo object (11)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(208, '2019-08-23 14:24:15.210638', '21', 'EventInfo object (21)', 2, '[{\"changed\": {\"fields\": [\"title\", \"Photo\"]}}]', 14, 1),
(209, '2019-08-23 14:24:51.102795', '14', 'EventInfo object (14)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(210, '2019-08-23 14:26:33.483023', '6', 'EventInfo object (6)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 14, 1),
(211, '2019-08-23 17:31:22.075395', '10', 'Time_table object (10)', 1, '[{\"added\": {}}]', 33, 1),
(212, '2019-08-23 17:55:23.562418', '18', ' Rev.Mgr.Thomas Kakkassery JEC', 1, '[{\"added\": {}}]', 4, 1),
(213, '2019-08-23 17:56:49.740115', '18', ' Vivek Lukose JEC172.jpg', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Qualification\", \"Email\", \"Phone_Number\", \"jecc_code\"]}}]', 4, 1),
(214, '2019-08-23 17:57:02.769462', '18', ' Vivek Lukose JEC172', 2, '[{\"changed\": {\"fields\": [\"jecc_code\"]}}]', 4, 1);

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
(18, 'account', 'account'),
(19, 'account', 'accountdeletion'),
(20, 'account', 'emailaddress'),
(21, 'account', 'emailconfirmation'),
(24, 'account', 'passwordexpiry'),
(25, 'account', 'passwordhistory'),
(22, 'account', 'signupcode'),
(23, 'account', 'signupcoderesult'),
(5, 'admin', 'logentry'),
(7, 'auth', 'group'),
(6, 'auth', 'permission'),
(8, 'auth', 'user'),
(2, 'calender', 'contacts'),
(16, 'calender', 'event'),
(14, 'calender', 'eventinfo'),
(3, 'calender', 'person'),
(12, 'comity', 'comity'),
(15, 'comity', 'member'),
(13, 'comity', 'members'),
(11, 'comity', 'topic'),
(4, 'contacts', 'contact'),
(31, 'contacts', 'department'),
(29, 'contacts', 'departments'),
(9, 'contenttypes', 'contenttype'),
(26, 'eventlog', 'log'),
(27, 'events', 'event'),
(28, 'fullcalendar', 'calendarevent'),
(10, 'sessions', 'session'),
(17, 'sites', 'site'),
(1, 'table', 'person'),
(32, 'TimeTable', 'department'),
(30, 'TimeTable', 'timetables'),
(33, 'TimeTable', 'time_table');

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
(67, 'comity', '0008_auto_20190422_0546', '2019-04-22 00:18:16.130870'),
(68, 'calender', '0032_auto_20190427_2244', '2019-07-06 11:30:06.454177'),
(69, 'calender', '0033_auto_20190706_1658', '2019-07-06 11:30:06.556405'),
(70, 'account', '0001_initial', '2019-07-07 05:12:09.587040'),
(71, 'account', '0002_fix_str', '2019-07-07 05:12:09.766527'),
(72, 'account', '0003_passwordexpiry_passwordhistory', '2019-07-07 05:12:20.457927'),
(73, 'account', '0004_auto_20170416_1821', '2019-07-07 05:12:20.519762'),
(74, 'eventlog', '0001_initial', '2019-07-07 05:12:21.857185'),
(75, 'eventlog', '0002_auto_20150113_1450', '2019-07-07 05:12:24.911016'),
(76, 'eventlog', '0003_auto_20160111_0208', '2019-07-07 05:12:24.992799'),
(77, 'events', '0001_initial', '2019-07-07 05:12:25.745781'),
(78, 'events', '0002_auto_20160730_2231', '2019-07-07 05:12:26.566623'),
(79, 'sites', '0001_initial', '2019-07-07 05:12:26.861834'),
(80, 'sites', '0002_alter_domain_unique', '2019-07-07 05:12:27.391382'),
(81, 'calender', '0034_auto_20190711_1601', '2019-07-11 10:34:04.884232'),
(82, 'contacts', '0014_departments', '2019-07-18 10:01:29.200561'),
(83, 'TimeTable', '0001_initial', '2019-07-18 10:01:29.991988'),
(84, 'contacts', '0015_auto_20190718_1531', '2019-07-18 11:04:04.737545'),
(85, 'TimeTable', '0002_auto_20190718_1630', '2019-07-18 11:04:05.002768'),
(86, 'TimeTable', '0003_auto_20190719_1340', '2019-07-19 08:11:47.142822');

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
('gxltr4mm1pfvblms9kvs99xzje985ld2', 'NDQ3MzBkNmJkNWQwZjZiMThhZWFmYjQwZTM2MzkwYTA5MmNmNGYzYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NGNjYTZiNmFjYTVlZDU3NDAxODBhMzc3YTg0OTdiMmM2YWMyNzRjIn0=', '2019-07-18 01:37:08.601894'),
('m730wwr2f76wetu4knxns8s8wtmvbsxd', 'NDQ3MzBkNmJkNWQwZjZiMThhZWFmYjQwZTM2MzkwYTA5MmNmNGYzYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NGNjYTZiNmFjYTVlZDU3NDAxODBhMzc3YTg0OTdiMmM2YWMyNzRjIn0=', '2019-09-06 13:44:21.407614'),
('nhvlk3wxqg5u1ct3ie5dk5oy4b7s6xah', 'NDQ3MzBkNmJkNWQwZjZiMThhZWFmYjQwZTM2MzkwYTA5MmNmNGYzYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NGNjYTZiNmFjYTVlZDU3NDAxODBhMzc3YTg0OTdiMmM2YWMyNzRjIn0=', '2019-08-02 07:49:51.682014'),
('o54k8f5dm8n0vwufvq6wm9v9vdksojkb', 'NDQ3MzBkNmJkNWQwZjZiMThhZWFmYjQwZTM2MzkwYTA5MmNmNGYzYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NGNjYTZiNmFjYTVlZDU3NDAxODBhMzc3YTg0OTdiMmM2YWMyNzRjIn0=', '2019-08-02 10:11:16.956868'),
('s8x0cumh6q1y0bn5owaazpz8vk8lc8z6', 'NDQ3MzBkNmJkNWQwZjZiMThhZWFmYjQwZTM2MzkwYTA5MmNmNGYzYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NGNjYTZiNmFjYTVlZDU3NDAxODBhMzc3YTg0OTdiMmM2YWMyNzRjIn0=', '2019-05-11 17:12:41.121712'),
('y7jt4vuvgwcsnml2btx87tg5twyvgesv', 'NDQ3MzBkNmJkNWQwZjZiMThhZWFmYjQwZTM2MzkwYTA5MmNmNGYzYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NGNjYTZiNmFjYTVlZDU3NDAxODBhMzc3YTg0OTdiMmM2YWMyNzRjIn0=', '2019-07-22 00:32:46.503829');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `eventlog_log`
--

CREATE TABLE `eventlog_log` (
  `id` int(11) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `action` varchar(50) NOT NULL,
  `extra` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events_event`
--

CREATE TABLE `events_event` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `created_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timetable_department`
--

CREATE TABLE `timetable_department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable_department`
--

INSERT INTO `timetable_department` (`id`, `department_name`) VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'EEE'),
(4, 'MR'),
(5, 'ME');

-- --------------------------------------------------------

--
-- Table structure for table `timetable_time_table`
--

CREATE TABLE `timetable_time_table` (
  `id` int(11) NOT NULL,
  `semester` varchar(80) NOT NULL,
  `Time_Table_of_Division_A` varchar(100) NOT NULL,
  `Time_Table_of_Division_B` varchar(100) DEFAULT NULL,
  `Department_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable_time_table`
--

INSERT INTO `timetable_time_table` (`id`, `semester`, `Time_Table_of_Division_A`, `Time_Table_of_Division_B`, `Department_name_id`) VALUES
(1, 'S2', 'TimeTable/437648_1.pdf', 'TimeTable/TRANSCRIPT1_Y7kF45P.pdf', 1),
(2, 'S1', 'TimeTable/437648_1.pdf', 'Null', 1),
(3, 'S3', 'TimeTable/437648_1.pdf', 'Null', 1),
(4, 'S4', 'TimeTable/ilovepdf_merged_CLoZb6a.pdf', 'Null', 1),
(5, 'S5', 'TimeTable/Semester_Grade_Card_1.pdf', 'TimeTable/437648_1.pdf', 1),
(6, 'S6', 'TimeTable/ilovepdf_merged_hChp5O2.pdf', 'Null', 1),
(7, 'S7', 'TimeTable/TRANSCRIPT1_vdcAsYh.pdf', 'Null', 1),
(8, 'S8', 'TimeTable/437648_1.pdf', 'Null', 1),
(9, 'S2', 'TimeTable/437648_1.pdf', 'Null', 3),
(10, 'S1', 'TimeTable/082860321.pdf', 'Null', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_account`
--
ALTER TABLE `account_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `account_accountdeletion`
--
ALTER TABLE `account_accountdeletion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_accountdeletion_user_id_c205475f_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `account_passwordexpiry`
--
ALTER TABLE `account_passwordexpiry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `account_passwordhistory`
--
ALTER TABLE `account_passwordhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_passwordhistory_user_id_dc325181_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_signupcode`
--
ALTER TABLE `account_signupcode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `account_signupcode_inviter_id_9706983e_fk_auth_user_id` (`inviter_id`);

--
-- Indexes for table `account_signupcoderesult`
--
ALTER TABLE `account_signupcoderesult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_signupcodere_signup_code_id_1adc486e_fk_account_s` (`signup_code_id`),
  ADD KEY `account_signupcoderesult_user_id_c10dc604_fk_auth_user_id` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `contacts_department`
--
ALTER TABLE `contacts_department`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `eventlog_log`
--
ALTER TABLE `eventlog_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventlog_log_user_id_a3f98596_fk_auth_user_id` (`user_id`),
  ADD KEY `eventlog_log_timestamp_a2d88eb2` (`timestamp`),
  ADD KEY `eventlog_log_action_cb30ff93` (`action`),
  ADD KEY `eventlog_log_content_type_id_e36144c9_fk_django_content_type_id` (`content_type_id`);

--
-- Indexes for table `events_event`
--
ALTER TABLE `events_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_event_created_by_id_2c28ea90_fk_auth_user_id` (`created_by_id`);

--
-- Indexes for table `timetable_department`
--
ALTER TABLE `timetable_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable_time_table`
--
ALTER TABLE `timetable_time_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TimeTable_time_table_Department_name_id_132100db_fk_TimeTable` (`Department_name_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_account`
--
ALTER TABLE `account_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_accountdeletion`
--
ALTER TABLE `account_accountdeletion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_passwordexpiry`
--
ALTER TABLE `account_passwordexpiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_passwordhistory`
--
ALTER TABLE `account_passwordhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_signupcode`
--
ALTER TABLE `account_signupcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_signupcoderesult`
--
ALTER TABLE `account_signupcoderesult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contacts_department`
--
ALTER TABLE `contacts_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eventlog_log`
--
ALTER TABLE `eventlog_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events_event`
--
ALTER TABLE `events_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timetable_department`
--
ALTER TABLE `timetable_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `timetable_time_table`
--
ALTER TABLE `timetable_time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_account`
--
ALTER TABLE `account_account`
  ADD CONSTRAINT `account_account_user_id_8d4f4816_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_accountdeletion`
--
ALTER TABLE `account_accountdeletion`
  ADD CONSTRAINT `account_accountdeletion_user_id_c205475f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `account_passwordexpiry`
--
ALTER TABLE `account_passwordexpiry`
  ADD CONSTRAINT `account_passwordexpiry_user_id_905230ec_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_passwordhistory`
--
ALTER TABLE `account_passwordhistory`
  ADD CONSTRAINT `account_passwordhistory_user_id_dc325181_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_signupcode`
--
ALTER TABLE `account_signupcode`
  ADD CONSTRAINT `account_signupcode_inviter_id_9706983e_fk_auth_user_id` FOREIGN KEY (`inviter_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_signupcoderesult`
--
ALTER TABLE `account_signupcoderesult`
  ADD CONSTRAINT `account_signupcodere_signup_code_id_1adc486e_fk_account_s` FOREIGN KEY (`signup_code_id`) REFERENCES `account_signupcode` (`id`),
  ADD CONSTRAINT `account_signupcoderesult_user_id_c10dc604_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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

--
-- Constraints for table `eventlog_log`
--
ALTER TABLE `eventlog_log`
  ADD CONSTRAINT `eventlog_log_content_type_id_e36144c9_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `eventlog_log_user_id_a3f98596_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `events_event`
--
ALTER TABLE `events_event`
  ADD CONSTRAINT `events_event_created_by_id_2c28ea90_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
