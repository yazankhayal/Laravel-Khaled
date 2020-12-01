-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 12:11 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khaled`
--

-- --------------------------------------------------------

--
-- Table structure for table `adv_block`
--

CREATE TABLE `adv_block` (
  `id` int(10) UNSIGNED NOT NULL,
  `adv_blog_1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_blog_2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_blog_view_1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_blog_view_2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `trending` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `avatar`, `trending`, `featured`, `user_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Website Development', 'upload/category/1600250189.png', 0, 0, 1, 1, '2020-09-16 06:56:29', '2020-09-16 06:56:29'),
(2, 'Graphic Designing', 'upload/category/1600250202.png', 0, 0, 1, 1, '2020-09-16 06:56:42', '2020-09-16 06:56:42'),
(3, 'Digital Marketing', 'upload/category/1600250215.png', 0, 0, 1, 1, '2020-09-16 06:56:55', '2020-09-16 06:56:55'),
(4, 'App Development', 'upload/category/1600250245.png', 0, 0, 1, 1, '2020-09-16 06:57:25', '2020-09-16 06:57:25'),
(5, 'seo & content', 'upload/category/1600250272.png', 0, 0, 1, 1, '2020-09-16 06:57:52', '2020-09-16 06:57:52'),
(6, 'Ui/UX  designing', 'upload/category/1600250291.png', 0, 0, 1, 1, '2020-09-16 06:58:11', '2020-09-16 06:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `category_portfolio`
--

CREATE TABLE `category_portfolio` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_portfolio`
--

INSERT INTO `category_portfolio` (`id`, `name`, `user_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Branding', 1, 1, '2020-09-16 09:09:32', '2020-09-16 09:09:32'),
(2, 'illustration', 1, 1, '2020-09-16 09:13:22', '2020-09-16 09:13:22'),
(3, 'Photography', 1, 1, '2020-09-16 09:13:29', '2020-09-16 09:13:29'),
(4, 'Web Design', 1, 1, '2020-09-16 09:13:38', '2020-09-16 09:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `category_portfolio_translate`
--

CREATE TABLE `category_portfolio_translate` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `category_portfolio_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_portfolio_translate`
--

INSERT INTO `category_portfolio_translate` (`id`, `name`, `language_id`, `category_portfolio_id`, `created_at`, `updated_at`) VALUES
(1, 'Branding', 2, 1, '2020-09-16 09:12:49', '2020-09-16 09:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `category_translate`
--

CREATE TABLE `category_translate` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city_translate`
--

CREATE TABLE `city_translate` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `email`, `phone`, `l_name`, `f_name`, `summary`, `created_at`, `updated_at`) VALUES
(1, 'yazan.khayal@gmail.com', '+972599327008', 'Yazan', 'Khayal', 'dadasdasdas', '2020-09-16 12:30:29', '2020-09-16 12:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `country_list`
--

CREATE TABLE `country_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `select` int(11) NOT NULL DEFAULT 0,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'currencies/no.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `select`, `avatar`, `created_at`, `updated_at`) VALUES
(1, '$', '$', 1, 'currencies/no.png', '2020-03-27 16:39:53', '2020-02-15 13:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `currency_conversions`
--

CREATE TABLE `currency_conversions` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `currencies_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_setting`
--

CREATE TABLE `email_setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encrption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `avatar`, `created_at`, `updated_at`) VALUES
(1, '2.png', '2020-09-16 11:33:17', '2020-09-16 11:33:17'),
(2, '1.png', '2020-09-16 11:33:17', '2020-09-16 11:33:17'),
(3, '3.png', '2020-09-16 11:33:17', '2020-09-16 11:33:17'),
(4, '4.png', '2020-09-16 11:33:18', '2020-09-16 11:33:18'),
(5, '5.png', '2020-09-16 11:33:18', '2020-09-16 11:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `hp_contact_us`
--

CREATE TABLE `hp_contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hours` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iframe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hp_contact_us`
--

INSERT INTO `hp_contact_us` (`id`, `whatsapp`, `fax`, `phone`, `email`, `address`, `facebook`, `twitter`, `instagram`, `hours`, `pinterest`, `iframe`, `created_at`, `updated_at`) VALUES
(1, '0123456789', '0123456789', '0123456789', 'test@t.com', '0123456789', '#', '#', '#', '#', '#', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d12042.09030311691!2d28.9412191!3d41.01382175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sar!2str!4v1578522842202!5m2!1sar!2str\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '2020-05-13 12:14:19', '2020-09-16 12:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `hp_contents`
--

CREATE TABLE `hp_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_summary2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'upload/contents/no.png',
  `avatar2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'upload/contents/no.png',
  `avatar3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'upload/contents/no.png',
  `avatar4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'upload/contents/no.png',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `summary3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hp_contents`
--

INSERT INTO `hp_contents` (`id`, `active`, `name`, `sub_name`, `summary`, `sub_summary`, `summary1`, `sub_summary2`, `video`, `link`, `avatar1`, `avatar2`, `avatar3`, `avatar4`, `type`, `user_id`, `language_id`, `created_at`, `updated_at`, `summary3`) VALUES
(1, 0, NULL, NULL, '<div class=\"sec-title\" style=\"margin: 0px 0px 35px; padding: 0px; border: none; font-size: 20px; line-height: inherit; position: relative; color: rgb(104, 106, 111); font-family: Teko, sans-serif;\"><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: none; font-size: 70px; line-height: 0.9em; position: relative; background: none; font-family: var(--thm-font); text-transform: uppercase;\">WE’RE THE BEST AGENCY<br style=\"margin: 0px; padding: 0px; border: none; line-height: inherit;\">IN DOWNTOWN&nbsp;<span class=\"dot\" style=\"margin: 0px; padding: 0px 0px 0px 7px; border: none; line-height: inherit; color: var(--thm-base);\">.</span></h2><div class=\"lower-text\" style=\"margin: 0px; padding: 30px 0px 0px; border: none; font-size: 26px; line-height: 1.7em; position: relative; letter-spacing: 0px; color: var(--thm-base); text-transform: uppercase;\">WE ARE COMMITTED TO PROVIDING OUR CUSTOMERS WITH EXCEPTIONAL SERVICE WHILE OFFERING OUR EMPLOYEES THE BEST TRAINING.</div></div><div class=\"text\" style=\"margin: 0px; padding: 0px; border: none; font-size: 20px; line-height: 1.7em; position: relative; letter-spacing: 0.02em; color: rgb(104, 106, 111); font-family: Teko, sans-serif;\"><p style=\"margin-right: 0px; margin-bottom: 32px; margin-left: 0px; padding: 0px; border: none; line-height: 1.7em; letter-spacing: 0.1em;\">Lorem Ipsum is simply dummy text of free available in market the printing and typesetting industry has been the industry\'s standard dummy text ever.</p></div><div class=\"text clearfix\" style=\"margin: 0px; padding: 0px; border: none; font-size: 20px; line-height: 1.7em; position: relative; letter-spacing: 0.02em; color: rgb(104, 106, 111); font-family: Teko, sans-serif;\"><ul style=\"border: none; line-height: inherit; list-style-position: initial; list-style-image: initial; position: relative; float: left;\"><li style=\"margin: 0px 0px 10px; padding: 0px 0px 0px 35px; border: none; line-height: 1.7em; list-style: none; position: relative; letter-spacing: 0.1em;\">Suspe ndisse suscipit sagittis leo.</li><li style=\"margin: 0px 0px 10px; padding: 0px 0px 0px 35px; border: none; line-height: 1.7em; list-style: none; position: relative; letter-spacing: 0.1em;\">Entum estibulum dignissim posuere.</li><li style=\"margin: 0px 0px 10px; padding: 0px 0px 0px 35px; border: none; line-height: 1.7em; list-style: none; position: relative; letter-spacing: 0.1em;\">If you are going to use a passage.</li></ul><div class=\"since\" style=\"margin: 10px 0px 0px 82px; padding: 0px; border: none; line-height: inherit; position: relative; float: left;\"><span class=\"txt\" style=\"margin: 0px; padding: 21px 5px; border: none; line-height: 24px; position: relative; display: block; width: 90px; height: 90px; text-align: center; background: var(--thm-black); text-transform: uppercase; color: rgb(255, 255, 255); border-radius: 50%;\">SINCE<br style=\"margin: 0px; padding: 0px; border: none; line-height: inherit;\">2008</span></div></div><div class=\"link-box\" style=\"margin: 0px; padding: 30px 0px 0px; border: none; font-size: 20px; line-height: inherit; color: rgb(104, 106, 111); font-family: Teko, sans-serif;\"><a class=\"theme-btn btn-style-one\" href=\"file:///C:/Users/Napster/Documents/khaled/khaled/about.html\" style=\"margin: 0px; padding: 0px; border: none; line-height: inherit; color: var(--thm-black); text-decoration: none; background-image: ; background-position-x: ; background-position-y: ; background-size: ; background-repeat-x: ; background-repeat-y: ; background-attachment: ; background-origin: ; background-clip: ; cursor: pointer; display: inline-block; transition: all 0.3s ease 0s; position: relative; text-align: center; text-transform: uppercase; letter-spacing: 0.05em; border-radius: 5px; overflow: hidden;\"><i class=\"btn-curve\" style=\"margin: 0px 0px 0px 3px; padding: 0px; border: none; font-size: 14px; line-height: inherit; position: absolute; display: inline-block; right: -15px; top: 0px; width: 26px; height: 65px; background: var(--thm-black); opacity: 0.2; z-index: 0; transform: skewX(-22deg); transition: all 0.5s ease 0s;\"></i><span class=\"btn-title\" style=\"margin: 0px; padding: 19px 50px 16px; border: none; font-size: 18px; line-height: 30px; position: relative; display: block; z-index: 1;\">DISCOVER MORE</span></a></div>', NULL, NULL, NULL, NULL, '#', 'upload/about/1600250393.jpg', 'upload/about/1600250386.jpg', 'upload/contents/no.png', 'upload/contents/no.png', 'about', 1, 1, '2020-09-16 06:59:46', '2020-09-16 06:59:53', NULL),
(2, 0, 'We help to create   visual strategies', NULL, 'There are many variations of passages the majority have suffered alteration in some fo injected humour, or randomised words believable.', NULL, NULL, NULL, NULL, NULL, 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'faq', 1, 1, '2020-09-16 07:06:04', '2020-09-16 07:06:04', NULL),
(3, 0, 'Motion Graphics & Animations', NULL, 'There are many variations of passages the majority have suffered alteration in some fo injected humour, or randomised words believable.', NULL, NULL, NULL, NULL, NULL, 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'faq', 1, 1, '2020-09-16 07:06:28', '2020-09-16 07:06:28', NULL),
(4, 0, 'We help to achieve mutual goals', NULL, 'There are many variations of passages the majority have suffered alteration in some fo injected humour, or randomised words believable.', NULL, NULL, NULL, NULL, NULL, 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'faq', 1, 1, '2020-09-16 07:06:46', '2020-09-16 07:06:46', NULL),
(5, 0, NULL, NULL, '<div class=\"auto-container\">\r\n                <div class=\"inner-container\">\r\n\r\n                    <!-- Fact Counter -->\r\n                    <div class=\"fact-counter\">\r\n                        <div class=\"row clearfix\">\r\n\r\n                            <!--Column-->\r\n                            <div class=\"column counter-column col-lg-3 col-md-6 col-sm-12\">\r\n                                <div class=\"inner\">\r\n                                    <div class=\"content\">\r\n                                        <div class=\"count-outer count-box counted\">\r\n                                            <span class=\"count-text\" data-speed=\"4000\" data-stop=\"8705\">8705</span>\r\n                                        </div>\r\n                                        <div class=\"counter-title\">Projects Completed</div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n                            <!--Column-->\r\n                            <div class=\"column counter-column col-lg-3 col-md-6 col-sm-12\">\r\n                                <div class=\"inner\">\r\n                                    <div class=\"content\">\r\n                                        <div class=\"count-outer count-box alternate counted\">\r\n                                            <span class=\"count-text\" data-speed=\"3000\" data-stop=\"480\">480</span>\r\n                                        </div>\r\n                                        <div class=\"counter-title\">Active clients</div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n                            <!--Column-->\r\n                            <div class=\"column counter-column col-lg-3 col-md-6 col-sm-12\">\r\n                                <div class=\"inner\">\r\n                                    <div class=\"content\">\r\n                                        <div class=\"count-outer count-box counted\">\r\n                                            <span class=\"count-text\" data-speed=\"3000\" data-stop=\"626\">626</span>\r\n                                        </div>\r\n                                        <div class=\"counter-title\">cups of coffee</div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n                            <!--Column-->\r\n                            <div class=\"column counter-column col-lg-3 col-md-6 col-sm-12\">\r\n                                <div class=\"inner\">\r\n                                    <div class=\"content\">\r\n                                        <div class=\"count-outer count-box counted\">\r\n                                            <span class=\"count-text\" data-speed=\"4000\" data-stop=\"9704\">9704</span>\r\n                                        </div>\r\n                                        <div class=\"counter-title\">happy clients</div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n                        </div>\r\n                    </div>\r\n\r\n                </div>\r\n            </div>', NULL, NULL, NULL, NULL, NULL, 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'special', 1, 1, '2020-09-16 07:08:46', '2020-09-16 07:08:46', NULL),
(6, 0, 'EXPERIENCE US LIVE', NULL, '<h3 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: none; font-size: 60px; line-height: 1em; position: relative; background: none rgb(255, 170, 23); font-family: Teko, sans-serif; text-transform: uppercase;\">AGENCY THAT GETS<br style=\"margin: 0px; padding: 0px; border: none; line-height: inherit;\">EXCITED ABOUT</h3>', NULL, NULL, NULL, 'https://www.youtube.com/watch?v=Get7rqXYrbQ', 'https://www.instagram.com/', 'upload/how_work/1600251372.jpg', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'how_work', 1, 1, '2020-09-16 07:16:12', '2020-09-16 07:16:12', NULL),
(7, 0, 'WE DO MORE THEN EVER', 'PLATFORMS', '<p><span style=\"color: rgb(104, 106, 111); font-family: Teko, sans-serif; font-size: 20px; letter-spacing: 2px;\">There are many variatns of passages the majority have suffered alteration in some foor randomised words believable.</span><br></p>', NULL, NULL, NULL, NULL, NULL, 'upload/fact/1600251961.jpg', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'fact', 1, 1, '2020-09-16 07:26:02', '2020-09-16 07:26:02', NULL),
(8, 0, 'BEST DESIGN AGENCY', 'SOLUTIONS', '<p><span style=\"color: rgb(104, 106, 111); font-family: Teko, sans-serif; font-size: 20px; letter-spacing: 1px;\">There are many variations of passages of available but the majority have suffered alteration in some form, by injected humou or randomised words which don\'t look even slightly believable</span><br></p>', '<p><span style=\"color: rgb(104, 106, 111); font-family: Teko, sans-serif; font-size: 20px; letter-spacing: 2px;\">There are many variations of passages of avaialable but the majority have in some form, by injected humou or words which don\'t look even slightly believable. There are many variations of but the majority have suffered.</span><span style=\"color: rgb(37, 37, 42);\">Mission</span><br></p>', '<p><span style=\"color: rgb(104, 106, 111); font-family: Teko, sans-serif; font-size: 20px; letter-spacing: 2px;\">There are many variations of passages of avaialable but the majority have in some form, by injected humou or words which don\'t look even slightly believable. There are many variations of but the majority have suffered.</span><span style=\"color: rgb(37, 37, 42);\">Vision</span><br></p>', '<p><span style=\"color: rgb(104, 106, 111); font-family: Teko, sans-serif; font-size: 20px; letter-spacing: 2px;\">There are many variations of passages of avaialable but the majority have in some form, by injected humou or words which don\'t look even slightly believable. There are many variations of but the majority have suffered.</span><span style=\"color: rgb(37, 37, 42);\">History</span><br></p>', NULL, NULL, 'upload/agency/1600256572.jpg', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'agency', 1, 1, '2020-09-16 08:42:52', '2020-09-16 11:37:47', '<ul style=\"border: none; font-size: 20px; line-height: inherit; list-style-position: initial; list-style-image: initial; position: relative; color: rgb(104, 106, 111); font-family: Teko, sans-serif; letter-spacing: 2px;\"><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 30px; border: none; line-height: 1.7em; list-style: none; position: relative; color: var(--thm-text);\">Nsectetur cing elit.</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 30px; border: none; line-height: 1.7em; list-style: none; position: relative; color: var(--thm-text);\">Suspe ndisse suscipit sagittis leo.</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 30px; border: none; line-height: 1.7em; list-style: none; position: relative; color: var(--thm-text);\">Entum estibulum dignissim posuere.</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 30px; border: none; line-height: 1.7em; list-style: none; position: relative; color: var(--thm-text);\">If you are going to use a passage.</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 30px; border: none; line-height: 1.7em; list-style: none; position: relative; color: var(--thm-text);\">Lorem Ipsum on the tend to repeat.</li></ul>'),
(9, 0, 'welcome to Khalid agency', 'Discover', 'new Khalid agency', NULL, NULL, NULL, 'https://www.youtube.com/watch?v=Get7rqXYrbQ', 'https://www.instagram.com/', 'upload/slider/1600259513.jpg', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'slider', 1, 1, '2020-09-16 09:31:55', '2020-09-16 09:31:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hp_contents_translate`
--

CREATE TABLE `hp_contents_translate` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_summary2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `hp_contents_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `summary3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hp_contents_translate`
--

INSERT INTO `hp_contents_translate` (`id`, `name`, `sub_name`, `sub_summary`, `summary`, `summary1`, `sub_summary2`, `language_id`, `hp_contents_id`, `created_at`, `updated_at`, `summary3`) VALUES
(1, NULL, NULL, NULL, '<div class=\"sec-title\" style=\"margin: 0px 0px 35px; padding: 0px; border: none; font-size: 20px; line-height: inherit; position: relative; color: rgb(104, 106, 111); font-family: Teko, sans-serif;\"><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: none; font-size: 70px; line-height: 0.9em; position: relative; background: none; font-family: var(--thm-font); text-transform: uppercase;\">WE’RE THE BEST AGENCY<br style=\"margin: 0px; padding: 0px; border: none; line-height: inherit;\">IN DOWNTOWN&nbsp;<span class=\"dot\" style=\"margin: 0px; padding: 0px 0px 0px 7px; border: none; line-height: inherit; color: var(--thm-base);\">.</span></h2><div class=\"lower-text\" style=\"margin: 0px; padding: 30px 0px 0px; border: none; font-size: 26px; line-height: 1.7em; position: relative; letter-spacing: 0px; color: var(--thm-base); text-transform: uppercase;\">WE ARE COMMITTED TO PROVIDING OUR CUSTOMERS WITH EXCEPTIONAL SERVICE WHILE OFFERING OUR EMPLOYEES THE BEST TRAINING.</div></div><div class=\"text\" style=\"margin: 0px; padding: 0px; border: none; font-size: 20px; line-height: 1.7em; position: relative; letter-spacing: 0.02em; color: rgb(104, 106, 111); font-family: Teko, sans-serif;\"><p style=\"margin-right: 0px; margin-bottom: 32px; margin-left: 0px; padding: 0px; border: none; line-height: 1.7em; letter-spacing: 0.1em;\">Lorem Ipsum is simply dummy text of free available in market the printing and typesetting industry has been the industry\'s standard dummy text ever.</p></div><div class=\"text clearfix\" style=\"margin: 0px; padding: 0px; border: none; font-size: 20px; line-height: 1.7em; position: relative; letter-spacing: 0.02em; color: rgb(104, 106, 111); font-family: Teko, sans-serif;\"><ul style=\"border: none; line-height: inherit; list-style-position: initial; list-style-image: initial; position: relative; float: left;\"><li style=\"margin: 0px 0px 10px; padding: 0px 0px 0px 35px; border: none; line-height: 1.7em; list-style: none; position: relative; letter-spacing: 0.1em;\">Suspe ndisse suscipit sagittis leo.</li><li style=\"margin: 0px 0px 10px; padding: 0px 0px 0px 35px; border: none; line-height: 1.7em; list-style: none; position: relative; letter-spacing: 0.1em;\">Entum estibulum dignissim posuere.</li><li style=\"margin: 0px 0px 10px; padding: 0px 0px 0px 35px; border: none; line-height: 1.7em; list-style: none; position: relative; letter-spacing: 0.1em;\">If you are going to use a passage.</li></ul><div class=\"since\" style=\"margin: 10px 0px 0px 82px; padding: 0px; border: none; line-height: inherit; position: relative; float: left;\"><span class=\"txt\" style=\"margin: 0px; padding: 21px 5px; border: none; line-height: 24px; position: relative; display: block; width: 90px; height: 90px; text-align: center; background: var(--thm-black); text-transform: uppercase; color: rgb(255, 255, 255); border-radius: 50%;\">SINCE<br style=\"margin: 0px; padding: 0px; border: none; line-height: inherit;\">2008</span></div></div><div class=\"link-box\" style=\"margin: 0px; padding: 30px 0px 0px; border: none; font-size: 20px; line-height: inherit; color: rgb(104, 106, 111); font-family: Teko, sans-serif;\"><a class=\"theme-btn btn-style-one\" href=\"file:///C:/Users/Napster/Documents/khaled/khaled/about.html\" style=\"margin: 0px; padding: 0px; border: none; line-height: inherit; color: var(--thm-black); text-decoration: none; background-image: ; background-position-x: ; background-position-y: ; background-size: ; background-repeat-x: ; background-repeat-y: ; background-attachment: ; background-origin: ; background-clip: ; cursor: pointer; display: inline-block; transition: all 0.3s ease 0s; position: relative; text-align: center; text-transform: uppercase; letter-spacing: 0.05em; border-radius: 5px; overflow: hidden;\"><i class=\"btn-curve\" style=\"margin: 0px 0px 0px 3px; padding: 0px; border: none; font-size: 14px; line-height: inherit; position: absolute; display: inline-block; right: -15px; top: 0px; width: 26px; height: 65px; background: var(--thm-black); opacity: 0.2; z-index: 0; transform: skewX(-22deg); transition: all 0.5s ease 0s;\"></i><span class=\"btn-title\" style=\"margin: 0px; padding: 19px 50px 16px; border: none; font-size: 18px; line-height: 30px; position: relative; display: block; z-index: 1;\">DISCOVER MORE</span></a></div>', NULL, NULL, 2, 1, '2020-09-16 07:00:14', '2020-09-16 07:00:14', NULL),
(2, NULL, NULL, NULL, '<div class=\"auto-container\">\r\n                <div class=\"inner-container\">\r\n\r\n                    <!-- Fact Counter -->\r\n                    <div class=\"fact-counter\">\r\n                        <div class=\"row clearfix\">\r\n\r\n                            <!--Column-->\r\n                            <div class=\"column counter-column col-lg-3 col-md-6 col-sm-12\">\r\n                                <div class=\"inner\">\r\n                                    <div class=\"content\">\r\n                                        <div class=\"count-outer count-box counted\">\r\n                                            <span class=\"count-text\" data-speed=\"4000\" data-stop=\"8705\">8705</span>\r\n                                        </div>\r\n                                        <div class=\"counter-title\">Projects Completed</div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n                            <!--Column-->\r\n                            <div class=\"column counter-column col-lg-3 col-md-6 col-sm-12\">\r\n                                <div class=\"inner\">\r\n                                    <div class=\"content\">\r\n                                        <div class=\"count-outer count-box alternate counted\">\r\n                                            <span class=\"count-text\" data-speed=\"3000\" data-stop=\"480\">480</span>\r\n                                        </div>\r\n                                        <div class=\"counter-title\">Active clients</div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n                            <!--Column-->\r\n                            <div class=\"column counter-column col-lg-3 col-md-6 col-sm-12\">\r\n                                <div class=\"inner\">\r\n                                    <div class=\"content\">\r\n                                        <div class=\"count-outer count-box counted\">\r\n                                            <span class=\"count-text\" data-speed=\"3000\" data-stop=\"626\">626</span>\r\n                                        </div>\r\n                                        <div class=\"counter-title\">cups of coffee</div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n                            <!--Column-->\r\n                            <div class=\"column counter-column col-lg-3 col-md-6 col-sm-12\">\r\n                                <div class=\"inner\">\r\n                                    <div class=\"content\">\r\n                                        <div class=\"count-outer count-box counted\">\r\n                                            <span class=\"count-text\" data-speed=\"4000\" data-stop=\"9704\">9704</span>\r\n                                        </div>\r\n                                        <div class=\"counter-title\">happy clients</div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n                        </div>\r\n                    </div>\r\n\r\n                </div>\r\n            </div>', NULL, NULL, 2, 5, '2020-09-16 07:08:51', '2020-09-16 07:08:51', NULL),
(3, 'EXPERIENCE US LIVE', NULL, NULL, 'EXPERIENCE US LIVE', NULL, NULL, 2, 6, '2020-09-16 07:17:52', '2020-09-16 07:17:52', NULL),
(4, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'هناك حقيقة مثبتة منذ زمن طويل وه', '<p><span style=\"color: rgb(104, 106, 111); font-family: Teko, sans-serif; font-size: 20px; letter-spacing: 2px;\">There are many variations of passages of avaialable but the majority have in some form, by injected humou or words which don\'t look even slightly believable. There are many variations of but the majority have suffered.</span><br></p>', '<span style=\"color: rgb(104, 106, 111); font-family: Teko, sans-serif; font-size: 20px; letter-spacing: 2px;\">There are many variations of passages of avaialable but the majority have in some form, by injected humou or words which don\'t look even slightly believable. There are many variations of but the majority have suffered.</span>', '<p><span style=\"color: rgb(104, 106, 111); font-family: Teko, sans-serif; font-size: 20px; letter-spacing: 2px;\">There are many variations of passages of avaialable but the majority have in some form, by injected humou or words which don\'t look even slightly believable. There are many variations of but the majority have suffered.</span><br></p>', '<p><span style=\"color: rgb(104, 106, 111); font-family: Teko, sans-serif; font-size: 20px; letter-spacing: 2px;\">There are many variations of passages of avaialable but the majority have in some form, by injected humou or words which don\'t look even slightly believable. There are many variations of but the majority have suffered.</span><br></p>', 2, 8, '2020-09-16 08:48:10', '2020-09-16 08:48:10', '<ul style=\"border: none; font-size: 20px; line-height: inherit; list-style-position: initial; list-style-image: initial; position: relative; color: rgb(104, 106, 111); font-family: Teko, sans-serif; letter-spacing: 2px;\"><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 30px; border: none; line-height: 1.7em; list-style: none; position: relative; color: var(--thm-text);\">Nsectetur cing elit.</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 30px; border: none; line-height: 1.7em; list-style: none; position: relative; color: var(--thm-text);\">Suspe ndisse suscipit sagittis leo.</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 30px; border: none; line-height: 1.7em; list-style: none; position: relative; color: var(--thm-text);\">Entum estibulum dignissim posuere.</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 30px; border: none; line-height: 1.7em; list-style: none; position: relative; color: var(--thm-text);\">If you are going to use a passage.</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 30px; border: none; line-height: 1.7em; list-style: none; position: relative; color: var(--thm-text);\">Lorem Ipsum on the tend to repeat.</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dir` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `select` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `dir`, `avatar`, `select`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'upload/language/1600249726.PNG', 1, '2019-11-03 09:27:13', '2020-09-16 06:48:46'),
(2, 'العربية', 'ar', 'upload/language/1600249735.png', 0, '2020-02-27 08:24:25', '2020-09-16 06:48:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_085606_create_language_table', 1),
(4, '2019_12_14_111650_create_setting_table', 1),
(5, '2019_12_19_082552_create_post_table', 1),
(6, '2019_12_19_082615_create_post_translate_table', 1),
(7, '2019_12_21_080720_create_newsletter_table', 1),
(8, '2019_12_21_142229_create_contact_us_table', 1),
(9, '2019_12_21_153109_create_currencies_table', 1),
(10, '2020_01_01_114058_create_category_table', 1),
(11, '2020_01_01_114129_create_category_translate_table', 1),
(12, '2020_01_08_095519_create_setting_translate_table', 1),
(13, '2020_01_08_104327_create_currency_conversions_table', 1),
(14, '2020_01_25_092006_create_testimonials_table', 1),
(15, '2020_01_26_122955_create_hp_contact_us_table', 1),
(16, '2020_02_06_083243_create_hp_contents_table', 1),
(17, '2020_02_06_083448_create_hp_contents_translate_table', 1),
(18, '2020_02_10_102941_create_testimonials_translate_table', 1),
(19, '2020_02_10_160717_create_partners_table', 1),
(24, '2020_03_17_113322_create_gallery_table', 1),
(25, '2020_03_23_082311_create_city_table', 1),
(26, '2020_03_23_082523_create_city_translate_table', 1),
(27, '2020_03_23_082914_create_email_setting_table', 1),
(28, '2020_03_23_083057_create_scripts_setting_table', 1),
(29, '2020_03_25_111638_create_adv_block_table', 1),
(30, '2020_04_12_105550_create_country_list_table', 1),
(31, '2020_05_16_205736_update_products_table', 1),
(32, '2020_09_16_115502_create_category_portfolio_table', 2),
(33, '2020_09_16_115626_create_category_portfolio_translate_table', 2),
(36, '2020_09_16_115719_create_portfolio_table', 3),
(37, '2020_09_16_115745_create_portfolio_translate_table', 3),
(42, '2020_02_27_101430_create_products_table', 4),
(43, '2020_02_27_101455_create_products_translate_table', 4),
(44, '2020_02_27_101556_create_products_gallery_table', 4),
(45, '2020_02_27_101628_create_products_request_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'yazan.khayal@gmail.com', '2020-09-16 10:03:45', '2020-09-16 10:03:45'),
(2, 'yazan.kh2ayal@gmail.com', '2020-09-16 10:03:58', '2020-09-16 10:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'portfolio/no.png',
  `language_id` int(10) UNSIGNED NOT NULL,
  `category_portfolio_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `name`, `sub_name`, `avatar`, `language_id`, `category_portfolio_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'upload/portfolio/1600258927.jpg', 1, 1, '2020-09-16 09:22:07', '2020-09-16 09:22:07'),
(2, 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'upload/portfolio/1600259068.jpg', 1, 2, '2020-09-16 09:24:28', '2020-09-16 09:24:28'),
(3, 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'upload/portfolio/1600259082.jpg', 1, 3, '2020-09-16 09:24:42', '2020-09-16 09:24:42'),
(4, 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'upload/portfolio/1600259092.jpg', 1, 4, '2020-09-16 09:24:52', '2020-09-16 09:24:52'),
(5, 'Lorem Ipsum', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'upload/portfolio/1600259104.jpg', 1, 4, '2020-09-16 09:25:04', '2020-09-16 09:25:04'),
(6, 'Lorem Ipsum', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'upload/portfolio/1600259113.jpg', 1, 3, '2020-09-16 09:25:13', '2020-09-16 09:25:13'),
(7, 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'upload/portfolio/1600259120.jpg', 1, 2, '2020-09-16 09:25:20', '2020-09-16 09:25:20'),
(8, 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'upload/portfolio/1600259128.jpg', 1, 1, '2020-09-16 09:25:28', '2020-09-16 09:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_translate`
--

CREATE TABLE `portfolio_translate` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portfolio_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_translate`
--

INSERT INTO `portfolio_translate` (`id`, `name`, `sub_name`, `portfolio_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'هناك حقيقة مثبتة منذ زمن طويل وههناك حقيقة مثبتة منذ زمن طويل وه', 8, 2, '2020-09-16 09:25:41', '2020-09-16 09:25:41'),
(2, 'هناك حقيقة مثبتة منذ زمن طويل وه', 'هناك حقيقة مثبتة منذ زمن طويل وه', 7, 2, '2020-09-16 09:26:25', '2020-09-16 09:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `user_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `name`, `type`, `tags`, `summary`, `featured`, `avatar`, `user_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'BASIC RULES OF RUNNING WEB AGENCY BUSINESS', '1', 'Lorem ipsum is simply free text used by copytyping refreshing.', '<h4 style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; border: none; font-size: 40px; line-height: 1.1em; position: relative; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Teko, sans-serif; text-transform: uppercase;\">BASIC RULES OF RUNNING WEB AGENCY BUSINESS</h4><div class=\"text\" style=\"margin: 0px; padding: 0px; border: none; font-size: 20px; line-height: 1.6em; position: relative; letter-spacing: 0.1em; color: rgb(104, 106, 111); font-family: Teko, sans-serif;\"><p style=\"margin-right: 0px; margin-bottom: 35px; margin-left: 0px; padding: 0px; border: none; line-height: 1.6em; position: relative;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p style=\"margin-right: 0px; margin-bottom: 35px; margin-left: 0px; padding: 0px; border: none; line-height: 1.6em; position: relative;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.</p></div>', 1, 'upload/posts/1600257110.jpg', 1, 1, '2020-09-16 08:51:50', '2020-09-16 08:51:53'),
(2, 'DELIVERING THE BEST DIGITAL MARKETING', '1', 'Lorem ipsum is simply free text used by copytyping refreshing.', '<h4 style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; border: none; font-size: 40px; line-height: 1.1em; position: relative; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Teko, sans-serif; text-transform: uppercase;\">BASIC RULES OF RUNNING WEB AGENCY BUSINESS</h4><div class=\"text\" style=\"margin: 0px; padding: 0px; border: none; font-size: 20px; line-height: 1.6em; position: relative; letter-spacing: 0.1em; color: rgb(104, 106, 111); font-family: Teko, sans-serif;\"><p style=\"margin-right: 0px; margin-bottom: 35px; margin-left: 0px; padding: 0px; border: none; line-height: 1.6em; position: relative;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p style=\"margin-right: 0px; margin-bottom: 35px; margin-left: 0px; padding: 0px; border: none; line-height: 1.6em; position: relative;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.</p></div>', 1, 'upload/posts/1600257131.jpg', 1, 1, '2020-09-16 08:52:11', '2020-09-16 08:52:36'),
(3, 'INTRODUCING THE LATEST KHALID FEATURES', '1', 'Lorem ipsum is simply free text used by copytyping refreshing.', '<h4 style=\"font-family: Teko, sans-serif; margin-right: 0px; margin-bottom: 30px; margin-left: 0px; line-height: 1.1em; font-size: 40px; color: rgb(0, 0, 0); padding: 0px; border: none; position: relative; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-transform: uppercase;\">BASIC RULES OF RUNNING WEB AGENCY BUSINESS</h4><div class=\"text\" style=\"font-family: Teko, sans-serif; margin: 0px; padding: 0px; border: none; font-size: 20px; line-height: 1.6em; position: relative; letter-spacing: 0.1em; color: rgb(104, 106, 111);\"><p style=\"margin-right: 0px; margin-bottom: 35px; margin-left: 0px; padding: 0px; border: none; line-height: 1.6em; position: relative;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p style=\"margin-right: 0px; margin-bottom: 35px; margin-left: 0px; padding: 0px; border: none; line-height: 1.6em; position: relative;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.</p></div>', 1, 'upload/posts/1600257151.jpg', 1, 1, '2020-09-16 08:52:31', '2020-09-16 08:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `post_translate`
--

CREATE TABLE `post_translate` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed_rooms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bath_rooms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sq` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provide` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'products/no.png',
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'products/no.png',
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `related_products` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar/no.png',
  `features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sub_name`, `from_date`, `to_date`, `type`, `bed_rooms`, `bath_rooms`, `car`, `sq`, `address`, `provide`, `city`, `country`, `post_code`, `area`, `video`, `avatar`, `file`, `summary`, `language_id`, `category_id`, `created_at`, `updated_at`, `related_products`, `files`, `avatar1`, `features`, `price`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2020-09-01', '2020-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'upload/products/11600375830.jpg', 'products/no.png', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', 1, 1, '2020-09-17 17:47:56', '2020-09-17 18:52:09', '2,3,4,5', '16003755836342.jpg,16003755836331.jpg,16003755836352-1.jpg,16003755836362-2.jpg,,,', 'upload/products/21600375816.jpg', 'Gardens,Turkish bath,Gym,Gardens,', '130.00'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2020-09-01', '2020-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'upload/products/11600375933.jpg', 'products/no.png', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', 1, 3, '2020-09-17 17:48:00', '2020-09-17 17:52:13', NULL, ',', 'upload/products/21600375933.jpg', 'Gardens,Turkish bath,Gym,Gardens,', '1589.00'),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2020-09-01', '2020-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'upload/products/11600375918.jpg', 'products/no.png', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', 1, 4, '2020-09-17 17:48:01', '2020-09-17 17:51:58', NULL, ',', 'upload/products/21600375918.jpg', 'Gardens,Turkish bath,Gym,Gardens,', '3695.00'),
(4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2020-09-01', '2020-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'upload/products/11600375912.jpg', 'products/no.png', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', 1, 2, '2020-09-17 17:48:02', '2020-09-17 17:51:52', NULL, ',', 'upload/products/21600375912.jpg', 'Gardens,Turkish bath,Gym,Gardens,', '4785.00'),
(5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2020-09-01', '2020-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'upload/products/11600375904.jpg', 'products/no.png', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', 1, 3, '2020-09-17 17:48:02', '2020-09-17 17:51:44', NULL, ',', 'upload/products/21600375904.jpg', 'Gardens,Turkish bath,Gym,Gardens,', '2360.00'),
(6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2020-09-01', '2020-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'upload/products/11600375897.jpg', 'products/no.png', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', 1, 1, '2020-09-17 17:48:03', '2020-09-17 17:51:37', NULL, ',', 'upload/products/21600375897.jpg', 'Gardens,Turkish bath,Gym,Gardens,', '6974.00'),
(7, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2020-09-01', '2020-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'upload/products/11600375889.jpg', 'products/no.png', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', 1, 4, '2020-09-17 17:48:04', '2020-09-17 17:51:30', NULL, ',', 'upload/products/21600375889.jpg', 'Gardens,Turkish bath,Gym,Gardens,', '2596.00'),
(8, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2020-09-01', '2020-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'upload/products/11600375842.jpg', 'products/no.png', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', 1, 2, '2020-09-17 17:48:05', '2020-09-17 18:12:10', NULL, ',,', 'upload/products/21600375842.jpg', 'Gardens,Turkish bath,Gym,Gardens,', '78510.00');

-- --------------------------------------------------------

--
-- Table structure for table `products_gallery`
--

CREATE TABLE `products_gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'products_gallery/no.png',
  `products_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_request`
--

CREATE TABLE `products_request` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_request`
--

INSERT INTO `products_request` (`id`, `status`, `email`, `phone`, `l_name`, `f_name`, `products_id`, `created_at`, `updated_at`, `summary`) VALUES
(1, 1, 'yazan.khayal@gmail.com', '+972599327008', 'Khayal', 'Yazan', 5, '2020-09-17 18:57:50', '2020-09-17 18:57:50', 'dsads');

-- --------------------------------------------------------

--
-- Table structure for table `products_translate`
--

CREATE TABLE `products_translate` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_translate`
--

INSERT INTO `products_translate` (`id`, `name`, `summary`, `products_id`, `language_id`, `created_at`, `updated_at`, `sub_name`, `features`) VALUES
(1, 'هناك حقيقة مثبتة منذ زمن طويل وه', '<p>هناك حقيقة مثبتة منذ زمن طويل وه<br></p>', 1, 2, '2020-09-17 17:54:44', '2020-09-17 17:54:44', 'هناك حقيقة مثبتة منذ زمن طويل وه', '');

-- --------------------------------------------------------

--
-- Table structure for table `scripts_setting`
--

CREATE TABLE `scripts_setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `js` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `public` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/',
  `fav` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `bunner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `avatar1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar/no.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `summary`, `public`, `fav`, `avatar`, `bunner`, `avatar1`, `language_id`, `created_at`, `updated_at`, `fact`) VALUES
(1, 'Khalid', 'Khalid', '/', 'upload/setting/1600249771.png', 'upload/setting/1600249762.png', 'upload/setting/1600249779.jpg', 'upload/setting/1600249767.png', 1, '2020-03-27 16:39:53', '2020-09-16 11:43:30', 'upload/fact/1600267410.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translate`
--

CREATE TABLE `setting_translate` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'products/no.png',
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `avatar`, `summary`, `bio`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Shirley Smith', 'upload/testimonials/1600268023.jpg', 'There are many variations of passages of lorem ipsum available but the\r\n                                    majority have suffered alteration in some form, by injected humour, or randomised\r\n                                    words which don\'t look even slightly believable', 'Director', 1, '2020-09-16 11:53:43', '2020-09-16 11:53:43'),
(2, 'Mike hardson', 'upload/testimonials/1600268040.jpg', 'There are many variations of passages of lorem ipsum available but the\r\n                                    majority have suffered alteration in some form, by injected humour, or randomised\r\n                                    words which don\'t look even slightly believable.', 'Director', 1, '2020-09-16 11:54:00', '2020-09-16 11:54:00'),
(3, 'Sarah albert', 'upload/testimonials/1600268060.jpg', 'There are many variations of passages of lorem ipsum available but the\r\n                                    majority have suffered alteration in some form, by injected humour, or randomised\r\n                                    words which don\'t look even slightly believable.<', 'Director', 1, '2020-09-16 11:54:20', '2020-09-16 11:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials_translate`
--

CREATE TABLE `testimonials_translate` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `testimonials_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 2,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$CjTC0TNRBAqnLoRCrGJtCeHEJ6BLK59wXujkN6Qg.w1spe/IFzZDa', 1, 'upload/avatar/1600249805.jpg', 'WiDEICGhTsVmyVtcaGA0AVnmXRsYYPqVCnDvSGXSjOe0Lzz7oUeMoB3HtnUR', '2020-09-16 06:22:47', '2020-09-16 06:50:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adv_block`
--
ALTER TABLE `adv_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_user_id_index` (`user_id`),
  ADD KEY `category_language_id_index` (`language_id`);

--
-- Indexes for table `category_portfolio`
--
ALTER TABLE `category_portfolio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_portfolio_user_id_index` (`user_id`),
  ADD KEY `category_portfolio_language_id_index` (`language_id`);

--
-- Indexes for table `category_portfolio_translate`
--
ALTER TABLE `category_portfolio_translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_portfolio_translate_language_id_index` (`language_id`),
  ADD KEY `category_portfolio_translate_category_portfolio_id_index` (`category_portfolio_id`);

--
-- Indexes for table `category_translate`
--
ALTER TABLE `category_translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_translate_category_id_index` (`category_id`),
  ADD KEY `category_translate_language_id_index` (`language_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_user_id_index` (`user_id`),
  ADD KEY `city_language_id_index` (`language_id`);

--
-- Indexes for table `city_translate`
--
ALTER TABLE `city_translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_translate_city_id_index` (`city_id`),
  ADD KEY `city_translate_language_id_index` (`language_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_list`
--
ALTER TABLE `country_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_conversions`
--
ALTER TABLE `currency_conversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_conversions_currencies_id_index` (`currencies_id`);

--
-- Indexes for table `email_setting`
--
ALTER TABLE `email_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hp_contact_us`
--
ALTER TABLE `hp_contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hp_contents`
--
ALTER TABLE `hp_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hp_contents_user_id_index` (`user_id`),
  ADD KEY `hp_contents_language_id_index` (`language_id`);

--
-- Indexes for table `hp_contents_translate`
--
ALTER TABLE `hp_contents_translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hp_contents_translate_language_id_index` (`language_id`),
  ADD KEY `hp_contents_translate_hp_contents_id_index` (`hp_contents_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_language_id_index` (`language_id`),
  ADD KEY `portfolio_category_portfolio_id_index` (`category_portfolio_id`);

--
-- Indexes for table `portfolio_translate`
--
ALTER TABLE `portfolio_translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_translate_portfolio_id_index` (`portfolio_id`),
  ADD KEY `portfolio_translate_language_id_index` (`language_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_id_index` (`user_id`),
  ADD KEY `post_language_id_index` (`language_id`);

--
-- Indexes for table `post_translate`
--
ALTER TABLE `post_translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_translate_post_id_index` (`post_id`),
  ADD KEY `post_translate_language_id_index` (`language_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_language_id_index` (`language_id`),
  ADD KEY `products_category_id_index` (`category_id`);

--
-- Indexes for table `products_gallery`
--
ALTER TABLE `products_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_gallery_products_id_index` (`products_id`);

--
-- Indexes for table `products_request`
--
ALTER TABLE `products_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_request_products_id_index` (`products_id`);

--
-- Indexes for table `products_translate`
--
ALTER TABLE `products_translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_translate_products_id_index` (`products_id`),
  ADD KEY `products_translate_language_id_index` (`language_id`);

--
-- Indexes for table `scripts_setting`
--
ALTER TABLE `scripts_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_language_id_index` (`language_id`);

--
-- Indexes for table `setting_translate`
--
ALTER TABLE `setting_translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_translate_setting_id_index` (`setting_id`),
  ADD KEY `setting_translate_language_id_index` (`language_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_language_id_index` (`language_id`);

--
-- Indexes for table `testimonials_translate`
--
ALTER TABLE `testimonials_translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_translate_language_id_index` (`language_id`),
  ADD KEY `testimonials_translate_testimonials_id_index` (`testimonials_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adv_block`
--
ALTER TABLE `adv_block`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_portfolio`
--
ALTER TABLE `category_portfolio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_portfolio_translate`
--
ALTER TABLE `category_portfolio_translate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_translate`
--
ALTER TABLE `category_translate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city_translate`
--
ALTER TABLE `city_translate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country_list`
--
ALTER TABLE `country_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency_conversions`
--
ALTER TABLE `currency_conversions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_setting`
--
ALTER TABLE `email_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hp_contact_us`
--
ALTER TABLE `hp_contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hp_contents`
--
ALTER TABLE `hp_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hp_contents_translate`
--
ALTER TABLE `hp_contents_translate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `portfolio_translate`
--
ALTER TABLE `portfolio_translate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_translate`
--
ALTER TABLE `post_translate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products_gallery`
--
ALTER TABLE `products_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_request`
--
ALTER TABLE `products_request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products_translate`
--
ALTER TABLE `products_translate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scripts_setting`
--
ALTER TABLE `scripts_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_translate`
--
ALTER TABLE `setting_translate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials_translate`
--
ALTER TABLE `testimonials_translate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_portfolio`
--
ALTER TABLE `category_portfolio`
  ADD CONSTRAINT `category_portfolio_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_portfolio_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_portfolio_translate`
--
ALTER TABLE `category_portfolio_translate`
  ADD CONSTRAINT `category_portfolio_translate_category_portfolio_id_foreign` FOREIGN KEY (`category_portfolio_id`) REFERENCES `category_portfolio` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_portfolio_translate_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translate`
--
ALTER TABLE `category_translate`
  ADD CONSTRAINT `category_translate_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_translate_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `city_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `city_translate`
--
ALTER TABLE `city_translate`
  ADD CONSTRAINT `city_translate_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `city_translate_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `currency_conversions`
--
ALTER TABLE `currency_conversions`
  ADD CONSTRAINT `currency_conversions_currencies_id_foreign` FOREIGN KEY (`currencies_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hp_contents`
--
ALTER TABLE `hp_contents`
  ADD CONSTRAINT `hp_contents_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hp_contents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hp_contents_translate`
--
ALTER TABLE `hp_contents_translate`
  ADD CONSTRAINT `hp_contents_translate_hp_contents_id_foreign` FOREIGN KEY (`hp_contents_id`) REFERENCES `hp_contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hp_contents_translate_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `portfolio_category_portfolio_id_foreign` FOREIGN KEY (`category_portfolio_id`) REFERENCES `category_portfolio` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `portfolio_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolio_translate`
--
ALTER TABLE `portfolio_translate`
  ADD CONSTRAINT `portfolio_translate_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `portfolio_translate_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolio` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_translate`
--
ALTER TABLE `post_translate`
  ADD CONSTRAINT `post_translate_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_translate_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_gallery`
--
ALTER TABLE `products_gallery`
  ADD CONSTRAINT `products_gallery_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_request`
--
ALTER TABLE `products_request`
  ADD CONSTRAINT `products_request_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_translate`
--
ALTER TABLE `products_translate`
  ADD CONSTRAINT `products_translate_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_translate_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting`
--
ALTER TABLE `setting`
  ADD CONSTRAINT `setting_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translate`
--
ALTER TABLE `setting_translate`
  ADD CONSTRAINT `setting_translate_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `setting_translate_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `setting` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonials_translate`
--
ALTER TABLE `testimonials_translate`
  ADD CONSTRAINT `testimonials_translate_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `testimonials_translate_testimonials_id_foreign` FOREIGN KEY (`testimonials_id`) REFERENCES `testimonials` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
