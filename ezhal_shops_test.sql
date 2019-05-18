-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 17, 2019 at 09:45 PM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.3.5-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezhal_shops_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `am_banks`
--

CREATE TABLE `am_banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_banks`
--

INSERT INTO `am_banks` (`id`, `title`, `img`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ahly', 'bank_1.jpg', 1, NULL, '2018-01-23 09:17:51', '2018-07-01 11:36:12'),
(2, 'Rajhi', 'bank_2.jpg', 1, NULL, '2018-07-01 11:39:36', '2018-07-01 11:39:36'),
(3, 'Bilad', 'bank_3.jpg', 0, '2018-07-01 11:40:07', '2018-07-01 11:39:50', '2018-07-01 11:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `am_banks_translations`
--

CREATE TABLE `am_banks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `bank_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_banks_translations`
--

INSERT INTO `am_banks_translations` (`id`, `bank_id`, `locale`, `title`) VALUES
(1, 1, 'ar', 'البنك الأهلي'),
(2, 1, 'en', 'Ahli Bank'),
(3, 2, 'en', 'rajhi'),
(4, 3, 'en', 'dddd');

-- --------------------------------------------------------

--
-- Table structure for table `am_cards`
--

CREATE TABLE `am_cards` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_buying` double NOT NULL DEFAULT '0',
  `price` double NOT NULL,
  `price_market` double NOT NULL,
  `price_usd` double NOT NULL DEFAULT '0',
  `price_market_usd` double NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0 = inactive  ,1 =active , 3 = soft deleted',
  `soldon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Time sold'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_categories`
--

CREATE TABLE `am_categories` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_prov` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `count_req` int(11) NOT NULL,
  `typeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_categories`
--

INSERT INTO `am_categories` (`id`, `pid`, `title`, `icon`, `count_prov`, `status`, `count_req`, `typeid`) VALUES
(1, 0, 'Leaks', 'leaking-pipe-u-bend.png', 0, 0, 0, 1),
(2, 1, 'Thermal insulator', 'ThermalIcon.png', 0, 0, 0, 1),
(3, 0, 'Moving furniture', 'icon_movingin.png', 0, 0, 0, 1),
(4, 3, 'Unpack, move and install furniture', '1026_Color_icons_Property-Mgmt_LB.png', 0, 0, 0, 1),
(5, 0, 'STC', 'category_20171213120301.png', 0, 1, 0, 2),
(6, 0, 'ZAIN', 'category_20171213120521.png', 0, 1, 0, 2),
(7, 0, 'MOBILY', 'category_20171213120549.png', 0, 1, 0, 2),
(8, 0, 'BEIN SPORTS', 'category_20171213121545.png', 0, 1, 0, 4),
(9, 0, 'ITUNES', 'category_20171213121559.png', 0, 0, 0, 4),
(10, 0, 'OSN', 'category_20171213121341.png', 0, 1, 0, 5),
(12, 0, '', 'category_20171213121621.png', 0, 1, 0, 4),
(13, 0, '', 'category_20171213120616.png', 0, 1, 0, 2),
(14, 0, '', 'category_20180122095231.png', 0, 0, 0, 2),
(15, 0, '', 'category_20171213125908.png', 0, 1, 0, 2),
(16, 0, '', 'category_20171213121326.png', 0, 0, 0, 5),
(17, 0, '', 'category_20171213120649.png', 0, 1, 0, 5),
(18, 0, '', 'category_20171213121647.png', 0, 1, 0, 4),
(19, 0, '', 'facebook3.png', 0, 1, 0, 5),
(20, 0, '', 'amazon.png', 0, 1, 0, 5),
(21, 0, '', 'category_20171213125430.png', 0, 0, 0, 5),
(22, 0, '', 'cashu.png', 0, 0, 0, 5),
(23, 0, '', 'googleplay.png', 0, 1, 0, 4),
(24, 0, '', 'paypal.png', 0, 0, 0, 5),
(25, 0, '', 'ezhalwallet.png', 0, 0, 0, 5),
(26, 0, '', 'category_20180122123222.png', 0, 0, 0, 4),
(27, 0, '', 'category_20180124100402.png', 0, 0, 0, 5),
(28, 0, '', 'category_20180124100250.png', 0, 1, 0, 2),
(29, 0, '', 'category_20180124100446.png', 0, 0, 0, 2),
(30, 0, '', 'category_20180122085001.png', 0, 1, 0, 4),
(31, 0, '', 'category_20180124100514.png', 0, 0, 0, 5),
(32, 0, '', 'category_20180124100535.png', 0, 0, 0, 4),
(33, 0, '', 'category_20180124100152.png', 0, 0, 0, 4),
(34, 0, '', 'type_20180122123816.png', 0, 1, 0, 4),
(35, 0, '', 'category_20180124100225.png', 0, 1, 0, 4),
(36, 0, '', 'type_20180307091229.png', 0, 0, 0, 5),
(37, 0, '', 'type_20180307113523.png', 0, 0, 0, 5),
(38, 0, '', 'type_20180307114131.png', 0, 0, 0, 5),
(39, 0, '', 'type_20180307114252.png', 0, 0, 0, 5),
(40, 0, '', 'type_20180307121459.png', 0, 0, 0, 4),
(41, 0, '', 'type_20180307121657.png', 0, 0, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `am_categories_translations`
--

CREATE TABLE `am_categories_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_categories_translations`
--

INSERT INTO `am_categories_translations` (`id`, `categories_id`, `locale`, `title`) VALUES
(1, 1, 'ar', 'Leaks ar'),
(2, 1, 'en', 'Leaks en'),
(3, 1, 'fr', 'Leaks fr'),
(4, 2, 'ar', 'Thermal insulator - ar'),
(5, 2, 'en', 'Thermal insulator - en'),
(6, 2, 'fr', 'Thermal insulator - fr'),
(7, 3, 'ar', 'Moving furniture -ar'),
(8, 3, 'en', 'Moving furniture - en'),
(9, 3, 'fr', 'Moving furniture - fr'),
(10, 4, 'ar', 'Unpack, move and install furniture - ar'),
(11, 4, 'en', 'Unpack, move and install furniture - en'),
(12, 4, 'fr', 'Unpack, move and install furniture - fr'),
(13, 5, 'ar', 'إس تي سي'),
(14, 5, 'en', 'STC'),
(15, 5, 'fr', 'STC - ft'),
(22, 8, 'ar', 'اي تونز [US]'),
(23, 8, 'en', 'iTunes [US]'),
(24, 8, 'fr', 'iTunes [US]'),
(25, 9, 'ar', ' أي تونز [KSA]'),
(26, 9, 'en', 'iTunes  [KSA]'),
(27, 9, 'fr', 'ITUNES - fr'),
(28, 10, 'ar', 'جوجل بلاي [US] '),
(29, 10, 'en', '[US]  Google Play'),
(30, 10, 'fr', 'Google Play'),
(31, 12, 'ar', 'بلاي ستيشن [KSA]'),
(32, 12, 'en', ' [KSA] Playstation '),
(33, 12, 'fr', ''),
(34, 13, 'ar', 'فيرجن'),
(35, 13, 'en', 'Virgin'),
(36, 14, 'ar', 'جوي'),
(37, 14, 'en', 'Jawwy'),
(38, 15, 'ar', 'ليبارا '),
(39, 15, 'en', '  Lebara'),
(40, 16, 'ar', 'جوجل بلاي [KSA]'),
(41, 16, 'en', 'Google Play [KSA]'),
(42, 17, 'ar', 'ستيم'),
(43, 17, 'en', 'Steam'),
(44, 18, 'ar', 'بلاي ستيشن [USA]'),
(45, 18, 'en', 'PlayStation [USA]'),
(46, 19, 'ar', 'فيس بوك'),
(47, 19, 'en', 'facebook'),
(48, 20, 'ar', 'امازون'),
(49, 20, 'en', 'Amazon'),
(50, 21, 'ar', 'باي سيف'),
(51, 21, 'en', 'Paysafe'),
(52, 22, 'ar', 'كاش يو'),
(53, 22, 'en', 'Cash U'),
(54, 23, 'ar', 'جوجل بلاي'),
(55, 23, 'en', 'Google Play'),
(56, 24, 'ar', 'باي بال'),
(57, 24, 'en', 'PayPal'),
(58, 25, 'ar', 'إزهل'),
(59, 25, 'en', 'Ezhal wallet'),
(60, 26, 'ar', 'إكس بوكس [US]'),
(61, 26, 'en', 'Xbox [US]'),
(62, 27, 'ar', 'جو كاش (جلوبال)'),
(63, 27, 'en', 'GoCash (Global)'),
(64, 28, 'ar', 'فرندي'),
(65, 28, 'en', 'Friendi'),
(72, 29, 'ar', 'جو'),
(73, 29, 'en', 'GO'),
(74, 30, 'ar', 'نينتندو إشوب'),
(75, 30, 'en', 'Nintendo eShop'),
(76, 31, 'ar', 'كرما كوين جلوبال'),
(77, 31, 'en', 'Karma Koin'),
(78, 32, 'ar', 'كملنا كارد'),
(79, 32, 'en', 'Kammelna Card'),
(80, 33, 'ar', 'إكس بوكس [KSA]'),
(81, 33, 'en', 'Xbox [KSA]'),
(82, 34, 'ar', 'إكس بوكس [KSA]'),
(83, 34, 'en', 'Xbox [KSA]'),
(84, 35, 'ar', 'إكس بوكس [US]'),
(85, 35, 'en', 'Xbox [US]'),
(86, 36, 'ar', 'غوغل بلاي [UK]'),
(87, 36, 'en', 'Google Play [UK]'),
(88, 37, 'ar', 'سكايب'),
(89, 37, 'en', 'Skype'),
(90, 38, 'ar', 'ركستي'),
(91, 38, 'en', 'RIXTY'),
(92, 39, 'ar', 'إي باي'),
(93, 39, 'en', 'ebay'),
(94, 40, 'ar', 'بلاي ستيشن [UK]'),
(95, 40, 'en', 'PlayStation [UK]'),
(96, 6, 'en', 'Zain'),
(97, 7, 'en', 'Mobily');

-- --------------------------------------------------------

--
-- Table structure for table `am_categories_type`
--

CREATE TABLE `am_categories_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_type` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_categories_type`
--

INSERT INTO `am_categories_type` (`id`, `title`, `icon`, `service_type`, `status`) VALUES
(1, 'صيانه', 'type_20171018100837.png', 1, 0),
(2, 'تيليكوم', 'type_20171211125647.png', 1, 1),
(3, 'التي في', 'type_20171018101051.png', 1, 0),
(4, 'العاب', 'type_20171211125707.png', 1, 1),
(5, '', 'type_20171211125749.png', 1, 1),
(6, '', 'cat_type_6.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `am_categories_type_translations`
--

CREATE TABLE `am_categories_type_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_type_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_categories_type_translations`
--

INSERT INTO `am_categories_type_translations` (`id`, `categories_type_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'maintainance'),
(2, 1, 'ar', 'صيانه وخدمات منزليه'),
(3, 1, 'fr', 'Français'),
(4, 2, 'ar', 'إتصالات'),
(5, 2, 'en', 'Telecom'),
(6, 2, 'fr', 'Tele'),
(7, 3, 'ar', 'التي في'),
(8, 3, 'en', 'TV'),
(9, 3, 'fr', 'Tv'),
(10, 4, 'ar', 'العاب'),
(11, 4, 'en', 'Games'),
(12, 4, 'fr', 'Game'),
(13, 5, 'ar', 'نت كاردز'),
(14, 5, 'en', 'Net Cards'),
(15, 6, 'ar', '456'),
(16, 6, 'en', '123');

-- --------------------------------------------------------

--
-- Table structure for table `am_cities`
--

CREATE TABLE `am_cities` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `geo_name` text COLLATE utf8mb4_unicode_ci,
  `countryid` int(11) NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_cities`
--

INSERT INTO `am_cities` (`id`, `order`, `title`, `geo_name`, `countryid`, `slug`, `default`, `status`) VALUES
(12, 2, 'الرياض', 'Riyadh | Riyad | SA', 2, 'riyadh', 1, 1),
(13, 3, 'جدة', 'Jeddah | Jiddah', 2, 'jeddah', 0, 1),
(14, 2, 'ابو ظبي', 'Abu Dhabi | ae', 1, 'abu-dhabi', 1, 1),
(15, 4, 'مكّة المكرمة', 'Mecca | Makkah', 2, 'mecca', 1, 1),
(16, 5, 'الدمام', 'Dammam | Ad Dammam | Damman', 2, 'dammam', 0, 1),
(17, 1, 'دبي', 'Dubai | Deira | Jumairah', 1, 'dubai', 0, 1),
(18, 3, 'الشارقة', 'Sharjah | Kalba', 1, 'sharjah', 0, 1),
(22, 6, 'المدينة المنوّرة', 'Medina', 2, 'medina', 0, 1),
(23, 7, 'الظهران', 'Zahran | Dhahran', 2, 'dhahran', 0, 1),
(33, 51, 'دمشق', 'Damascus | SY', 6, 'damascus', 1, 1),
(34, 52, 'حلب', 'Aleppo', 6, 'aleppo', 0, 1),
(35, 53, 'حمص', 'Homs | Hims', 6, 'homs', 0, 1),
(36, 54, 'اللاذقية', 'Lattakia | Latakia', 6, 'latakia', 0, 1),
(37, 1, 'القاهرة', 'Cairo | EG', 3, 'cairo', 1, 1),
(38, 2, 'الإسكندرية', 'Alexandria', 3, 'alexandria', 0, 1),
(40, 4, 'القليوبية', 'Shoubra | Shubra', 3, 'shubra-al-khaima', 0, 1),
(41, 5, 'بور سعيد', 'Port Said', 3, 'port-said', 0, 1),
(42, 6, 'السويس', 'Suez | Suës', 3, 'suez', 0, 1),
(43, 7, 'المحلة الكبرى', 'El Mahalla El Kubra', 3, 'mahalla-al-kubra', 0, 1),
(44, 8, 'الاقصر', NULL, 3, 'luxor', 0, 1),
(45, 9, 'اسيوط', 'Asyut | Assiut', 3, 'asyut', 0, 1),
(46, 10, 'المنصورة', 'Mansoura | Mansourah | Mansûra', 3, 'mansoura', 0, 1),
(47, 11, 'طنطا', 'Tanta', 3, 'tanta', 0, 1),
(48, 12, 'الفيوم', 'El Faiyûm | Fayoum | Fayyoum', 3, 'fayoum', 0, 1),
(49, 13, 'الزقازيق', 'Zagazig', 3, 'zagazig', 0, 1),
(50, 14, 'الإسماعيلية', 'Ismailia', 3, 'ismailia', 0, 1),
(53, 701, 'الرباط - سلا', 'Rabat | MA', 51, 'rabat-sal%c3%a9', 1, 1),
(54, 702, 'الدار البيضاء', 'Casablanca', 51, 'casablanca', 0, 1),
(57, 703, 'اغادير', 'Agadir', 51, 'agadir', 0, 1),
(58, 704, 'طنجة - تطوان', 'Tangier | Tanger | Tétouan', 51, 'tangier-tetouan', 0, 1),
(59, 5, 'راس الخيمة', 'Ras Al Khaimah | Khaimah', 1, 'ras-al-khaimah', 0, 1),
(60, 4, 'عجمان', NULL, 1, 'ajman', 0, 1),
(61, 7, 'ام القيوين', NULL, 1, 'umm-al-quwain', 0, 1),
(62, 6, 'الفجيرة', 'Fujairah', 1, 'fujairah', 0, 1),
(66, 11, 'الجبيل', 'Jubail | Al-jubail', 2, 'jubail', 0, 1),
(67, 12, 'الخبر', 'Khobar | Al Khobar', 2, 'khobar', 0, 1),
(70, 15, 'القصيم', NULL, 2, 'qassim', 0, 1),
(71, 16, 'الطائف', 'Taif', 2, 'taif', 0, 1),
(72, 17, 'الاحساء', NULL, 2, 'hasa', 0, 1),
(73, 18, 'عسير', NULL, 2, 'asir', 0, 1),
(85, 71, 'تونس العاصمة', 'Tunis | TN', 80, 'tunis', 1, 1),
(86, 72, 'بنزرت', 'Bizerte | Bizerta', 80, 'bizerte', 0, 1),
(87, 73, 'صفاقس', 'Safaqis', 80, 'sfax', 0, 1),
(88, 74, 'سوسة', 'Susah | Sousse', 80, 'sousse', 0, 1),
(89, 75, 'القيروان', 'Kairouan', 80, 'kairouan', 0, 1),
(101, 55, 'طرطوس', 'Tartus', 6, 'tartus', 0, 1),
(102, 56, 'دير الزور', NULL, 6, 'deir-ezzor', 0, 1),
(103, 57, 'حماه', 'Hama', 6, 'hama', 0, 1),
(104, 58, 'الرقة', NULL, 6, 'raqa', 0, 1),
(105, 59, 'السويداء', NULL, 6, 'sweida', 0, 1),
(106, 91, 'الكويت العاصمة', 'Kuwait', 95, 'kuwait-city', 1, 1),
(107, 92, 'الجهراء', NULL, 95, 'jahra', 0, 1),
(108, 93, 'الاحمدي', NULL, 95, 'ahmadi', 0, 1),
(114, 111, 'الجزائر العاصمة', 'Algiers | DZ', 113, 'algiers', 1, 1),
(115, 112, 'بومرداس', NULL, 113, 'boumerdes', 0, 1),
(116, 113, 'سطيف', 'Sétif', 113, 'sétif', 0, 1),
(118, 115, 'الشلف', 'Chlef', 113, 'chlef', 0, 1),
(125, 116, 'سيدي بلعباس', 'Sidi Bel Abbès', 113, 'sidi-bel-abbes', 0, 1),
(132, 151, 'عمّان', 'Amman | JO', 131, 'amman', 1, 1),
(133, 152, 'الزرقاء', NULL, 131, 'zarqah', 0, 1),
(134, 153, 'معان', NULL, 131, 'maaden', 0, 1),
(135, 154, 'اربد', 'Irbid', 131, 'irbid', 0, 1),
(136, 155, 'العقبة', NULL, 131, 'aqaba', 0, 1),
(141, 171, 'الدوحة', 'Doha | QA', 140, 'doha', 1, 1),
(143, 172, 'مسيعيد', NULL, 140, 'mesaieed', 0, 1),
(144, 173, 'الوكرة', 'Wakra', 140, 'wakrah', 0, 1),
(145, 174, 'الخور', 'Khor', 140, 'creek', 0, 1),
(151, 191, 'المنامة', 'Manama | BH', 142, 'manama', 1, 1),
(152, 192, 'المحرق', 'Muharraq | Al Muharraq', 142, 'muharraq', 0, 1),
(153, 193, 'مدينة عيسى', 'Isa Town', 142, 'isa-town', 0, 1),
(154, 194, 'الرفاع', NULL, 142, 'riffa', 0, 1),
(166, 221, 'بيروت', 'Beirut | Bayrut | Beyrouth | LB', 165, 'beirut', 1, 1),
(167, 222, 'طرابلس', 'Tripoli', 165, 'tripoli', 0, 1),
(168, 223, 'صيدا', 'Sayda', 165, 'saida', 0, 1),
(169, 224, 'صور', 'Sur', 165, 'sour', 0, 1),
(181, 251, 'مسقط', 'Muscat | OM', 180, 'muscat', 1, 1),
(182, 252, 'صحار', 'Sohar', 180, 'sohar', 0, 1),
(183, 253, 'نزوى', 'Nizwá', 180, 'nizwa', 0, 1),
(184, 254, 'صور', 'Sur', 180, 'sour', 0, 1),
(185, 255, 'ظفار', NULL, 180, 'dhofar', 0, 1),
(189, 291, 'صنعاء', 'Sanaa | Sana | YE', 188, 'sanaa', 1, 1),
(190, 292, 'عدن', 'Aden', 188, 'aden', 0, 1),
(191, 293, 'الحديدة', 'Hodeida', 188, 'hodeidah', 0, 1),
(192, 294, 'صعدة', NULL, 188, 'saada', 0, 1),
(193, 295, 'تعز', 'Taiz', 188, 'taiz', 0, 1),
(194, 296, 'المكلا - حضرموت', NULL, 188, 'mukalla-hadramout', 0, 1),
(207, 500, 'جازان', 'Jizan | Jazan', 2, 'jizan', 0, 1),
(208, 501, 'نجران', 'Najran', 2, 'najran', 0, 1),
(209, 502, 'تبوك', 'Tabuk | Tabouk', 2, 'tabuk', 0, 1),
(210, 503, 'المنطقة الشمالية', NULL, 2, 'northern-region', 0, 1),
(211, 705, 'مراكش', 'Marrakesh | Marrakech', 51, 'marrakesh', 0, 1),
(212, 706, 'وجدة', 'Oujda', 51, 'oujda', 0, 1),
(214, 601, 'طرابلس', 'Tripoli | LY', 213, 'tripoli', 1, 1),
(215, 603, 'مصراته', 'Misratah', 213, 'misurata', 0, 1),
(216, 602, 'بنغازي', 'Benghazi', 213, 'benghazi', 0, 1),
(217, 606, 'ترهونة', 'Tripoli | LY', 213, 'tarhunah', 0, 1),
(219, 331, 'بغداد', 'Baghdad | Bagdad | IQ', 218, 'baghdad', 1, 1),
(220, 332, 'البصرة', 'Basra | Basrah', 218, 'basra', 0, 1),
(221, 333, 'الموصل', 'Mosul', 218, 'mosul', 0, 1),
(222, 334, 'النجف', 'Najaf | An Najaf', 218, 'najaf', 0, 1),
(223, 335, 'كربلاء', NULL, 218, 'kerbala', 0, 1),
(224, 336, 'سامراء', NULL, 218, 'samarra', 0, 1),
(225, 337, 'كركوك', 'Kirkuk', 218, 'kirkuk', 0, 1),
(226, 338, 'اربيل', 'Erbil', 218, 'irbil', 0, 1),
(227, 339, 'السليمانية', 'Sulaimani | Sulaimania | Sulaimaniya | Sulaymaniyah', 218, 'sulaymaniyah', 0, 1),
(229, 361, 'رام الله', 'Ramallah | PS', 228, 'ramallah', 0, 1),
(230, 362, 'القدس', 'Palestine', 228, 'jerusalem', 1, 1),
(231, 363, 'غزة', 'Gaza', 228, 'ghazah', 0, 1),
(232, 364, 'بيت لحم', 'Bethlehem', 228, 'bethlehem', 0, 1),
(233, 365, 'اريحا', 'Palestine', 228, 'areeha', 0, 1),
(234, 366, 'المناطق المحتلة', 'Palestine', 228, 'occupied-territories', 0, 1),
(236, 381, 'الخرطوم', 'Khartoum | SD', 235, 'khartoum', 1, 1),
(237, 382, 'مدني', NULL, 235, 'madeni', 0, 1),
(238, 383, 'ام درمان', NULL, 235, 'omdurman', 0, 1),
(239, 384, 'كسلا', NULL, 235, 'kassala', 0, 1),
(240, 385, 'بورت سودان', NULL, 235, 'port-sudan', 0, 1),
(241, 386, 'الابيض', NULL, 235, 'el-obeid', 0, 1),
(242, 387, 'دنقلا', NULL, 235, 'dongola', 0, 1),
(243, 388, 'جوبا', 'Juba', 235, 'juba', 0, 1),
(247, 76, 'قابس', 'Qabis', 80, 'gabes', 0, 1),
(248, 114, 'ورقلة', 'Ouargla', 113, 'ouargla', 0, 1),
(250, 118, 'وهران', 'Wahran', 113, 'wahran', 0, 1),
(251, 119, 'عنابة', 'Annaba', 113, 'annaba', 0, 1),
(252, 120, 'قسنطينة ', NULL, 113, 'constantine', 0, 1),
(253, 122, 'تلمسان', 'Tlemcen', 113, 'tlemcen', 0, 1),
(254, 607, 'الخمس', 'Tripoli | LY', 213, 'khamis', 0, 1),
(255, 608, 'الزاوية', 'Zawia', 213, 'alzawya', 0, 1),
(256, 225, 'بعلبك', 'Baalbeck | Baalbek', 165, 'baalbeck', 0, 1),
(257, 226, 'زحلة', 'Zahlé', 165, 'zahle', 0, 1),
(258, 227, 'جبل لبنان', NULL, 165, 'mount-lebanon', 0, 1),
(259, 604, 'العزيزية', 'Tripoli | LY', 213, 'aziziyah', 0, 1),
(261, 609, 'زوارة', 'Zuwarah', 213, 'zuwarah', 0, 1),
(262, 610, 'اجدابيا', 'Tripoli | LY', 213, 'ajdabiya', 0, 1),
(263, 611, 'سرت', 'Tripoli | LY', 213, 'sirte', 0, 1),
(264, 612, 'سبها', 'Sabha | Sebha', 213, 'sabha', 0, 1),
(265, 613, 'طبرق', NULL, 213, 'tobruk', 0, 1),
(266, 614, 'البيضا', NULL, 213, 'beida', 0, 1),
(267, 77, 'المنستير', 'Monastir', 80, 'monastir', 0, 1),
(268, 78, 'نابل', 'Nabeul | Nabul', 80, 'nabeul', 0, 1),
(269, 121, 'تيزي اوزو', 'Tizi Ouzou', 113, 'tizi-ouzou', 0, 1),
(270, 707, 'فاس', 'Fez', 51, 'fas', 0, 1),
(271, 708, 'مكناس', 'Meknès', 51, 'meknas', 0, 0),
(272, 709, 'تازة - الحسيمة', NULL, 51, 'taza-al-hoceima', 0, 1),
(273, 710, 'القنيطرة', 'Kenitra', 51, 'kenitra', 0, 1),
(274, 711, 'سطات', 'Settat', 51, 'settat', 0, 1),
(275, 712, 'الجديدة - آسفي', 'Asfi', 51, 'jadedah-safi', 0, 1),
(276, 94, 'حولي', 'حولي', 95, 'hawalli', 0, 1),
(277, 95, 'الفروانية ', 'Kuwait', 95, 'farwaniyah', 0, 1),
(279, 15, 'دمياط', 'Cairo | EG', 3, 'dumyat', 0, 1),
(280, 367, 'الخليل', 'Palestine', 228, 'khallel', 0, 1),
(281, 368, 'نابلس ', 'Palestine', 228, 'nablus', 0, 1),
(283, 60, 'الحسكة', 'Damascus | SY', 6, 'hasaka', 0, 1),
(284, 61, 'القنيطرة', 'Damascus | SY', 6, 'kenitra', 0, 1),
(285, 62, 'ريف دمشق', 'Damascus | SY', 6, 'damascus-countryside', 0, 1),
(286, 63, 'ادلب', 'Damascus | SY', 6, 'idleb', 0, 1),
(288, 65, 'درعا', 'Damascus | SY', 6, 'dara', 0, 1),
(289, 369, 'المنطقة الشمالية', 'Palestine', 228, 'northern-region', 0, 1),
(290, 79, 'تطاوين', 'Tunis | TN', 80, 'tataouine', 0, 1),
(291, 80, 'المهدية', 'Tunis | TN', 80, 'mahdia', 0, 1),
(292, 81, 'سيدي بوزيد', 'Tunis | TN', 80, 'sidi-bouzid', 0, 1),
(293, 82, 'مدنين', 'Tunis | TN', 80, 'medenine', 0, 1),
(294, 83, 'قفصة ', 'Tunis | TN', 80, 'gafsa', 0, 1),
(295, 370, 'طولكرم', 'Palestine', 228, 'tulkarm', 0, 1),
(296, 371, 'قلقيلية', 'Palestine', 228, 'qalqilyah', 0, 1),
(298, 16, 'المنيا', 'Cairo | EG ', 3, 'minya', 0, 1),
(299, 8, 'العين', 'Al Ain', 1, 'al-ain', 0, 0),
(300, 2, 'aaaaaa', 'شسيبسشيب', 3, 'ضض', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `am_contacts`
--

CREATE TABLE `am_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `called` int(11) NOT NULL DEFAULT '0',
  `solved` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_countries`
--

CREATE TABLE `am_countries` (
  `id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `geo_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `big_flag` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JsonDisplayMe` tinyint(1) NOT NULL DEFAULT '0',
  `small_flag` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currencyid` int(11) DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_countries`
--

INSERT INTO `am_countries` (`id`, `title`, `geo_name`, `order`, `big_flag`, `JsonDisplayMe`, `small_flag`, `currencyid`, `slug`, `app_slug`, `status`) VALUES
(1, 'الإمارات', 'United Arab Emirates', 20, 'http://content.bezaat.com/da7983da-9186-4428-991a-625ff920b6f8.jpg', 1, 'http://content.bezaat.com/a321f14f-6db6-4ec3-97ec-5e116c305959.jpg', 1, 'AE', '', 1),
(2, 'السعودية', 'Saudi Arabia', 1, 'http://content.bezaat.com/98b9f7a0-9ca2-406e-9cf1-da955e9953aa.jpg', 1, 'http://content.bezaat.com/33c12905-8818-4ec4-b934-9a53268712cd.jpg', 2, 'SA', 'SA', 1),
(3, 'مصر', 'Egypt', 30, 'http://content.bezaat.com/edd8c4fe-8a1b-4cf2-8934-2a7da85ca58b.jpg', 1, 'http://content.bezaat.com/3642d650-4a4f-4423-8cca-82fbd4fa2590.jpg', 4, 'EG', 'EG', 1),
(6, ' سوريا', 'Syrian Arab Republic', 50, 'http://content.bezaat.com/29c21ce1-f1ef-4dff-ab73-c1ac22c96875.jpg', 1, 'http://content.bezaat.com/51b231b6-53dc-4971-bd36-b6968926631f.jpg', 6, 'syria', '', 1),
(51, 'المغرب', 'Morocco', 700, 'http://content.bezaat.com/0095b0ef-069e-4cc0-af42-5a74dde34cf2.jpg', 1, 'http://content.bezaat.com/cb2fcdf6-81e7-480f-bd9a-427a3b6671cc.jpg', 1, 'morocco', '', 1),
(80, 'تونس', 'Tunisia', 70, 'http://content.bezaat.com/d1ec5fe0-5143-4863-a3c3-edef0d7361ee.jpg', 1, 'http://content.bezaat.com/9cd31f7c-b1cf-4025-b3be-cf934e578fa4.jpg', 7, 'TN', '', 1),
(95, 'الكويت', 'Kuwait', 95, 'http://content.bezaat.com/e83ef9b7-567c-422f-9780-91c6c87f46ed.jpg', 1, 'http://content.bezaat.com/0b9ae8da-75f7-45c0-a6e0-b1e662909d22.jpg', 7, 'KW', '', 1),
(113, 'الجزائر', 'Algeria', 110, 'http://content.bezaat.com/2e94f205-d817-4b11-9876-ab7e5b332ffc.jpg', 1, 'http://content.bezaat.com/36c578dc-83cc-4adb-ad57-8ef688d78efb.jpg', 7, 'DZ', '', 1),
(131, 'الاردن', 'Jordan', 150, 'http://content.bezaat.com/1fba48a7-302f-42e9-a20b-ebaab55c39ec.jpg', 1, 'http://content.bezaat.com/72d69c43-7829-49bb-b494-5b9f02edfff5.jpg', 7, 'jordan', '', 1),
(140, 'قطر', 'Qatar', 170, 'http://content.bezaat.com/01bdcc5a-548c-41fe-8e7d-16322e1ef2ff.jpg', 1, 'http://content.bezaat.com/1c33c2f2-e14d-417a-bcff-81277280d1cb.jpg', 2, 'QA', '', 1),
(142, 'البحرين', 'Bahrain', 190, 'http://content.bezaat.com/89be64b1-227c-477d-b403-da78582bf40d.jpg', 1, 'http://content.bezaat.com/12694cc6-e9e6-4c61-9b27-a532111f2976.jpg', 7, 'bahrain', '', 1),
(165, 'لبنان', 'Lebanon', 220, 'http://content.bezaat.com/1d499d31-3a1d-4b16-aa80-7a20d9db99f4.jpg', 1, 'http://content.bezaat.com/79a4522d-814b-425a-9233-02977d752c71.jpg', 6, 'lebanon', '', 1),
(180, 'عمان', 'Oman', 250, 'http://content.bezaat.com/177472fd-6633-4695-952b-6542d4300322.jpg', 1, 'http://content.bezaat.com/0bb82c3a-ee44-471e-933c-c342403698c0.jpg', 2, 'oman', '', 1),
(213, 'ليبيا', 'Libya', 600, 'http://content.bezaat.com/62e5b843-fa78-4c0b-b7c8-2b106c465b5e.jpg', 1, 'http://content.bezaat.com/2b673fd4-c58a-49ec-b3b9-d9c5a8074d31.jpg', 7, 'LY', '', 1),
(218, 'العراق', 'Iraq', 330, 'http://content.bezaat.com/c50f6e6a-4809-447c-8d59-6e4b55e00be1.jpg', 1, 'http://content.bezaat.com/748a0aef-37df-4bfb-8d40-706a807aa62b.jpg', 7, 'iraq', '', 1),
(228, 'فلسطين', 'Palestine', 360, 'http://content.bezaat.com/5de6b05b-f498-4690-9ae1-564c13aaff52.jpg', 1, 'http://content.bezaat.com/ec8ea43d-596a-4787-89b1-bc7b902a92f1.jpg', 9, 'palestine', '', 1),
(235, 'السودان', 'Sudan', 380, 'http://content.bezaat.com/8127579e-d4bc-4217-895f-4f03683faa65.jpg', 1, 'http://content.bezaat.com/14eeff2a-c905-4891-8bdb-a178133e06fc.jpg', 4, 'SD', '', 1),
(236, 'canada', 'كندا', 55, 'country_bf_.jpg', 0, 'country_sf_.jpg', 7, 'ca', 'can', 1);

-- --------------------------------------------------------

--
-- Table structure for table `am_currencies`
--

CREATE TABLE `am_currencies` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_currencies`
--

INSERT INTO `am_currencies` (`id`, `icon`, `flag`, `status`) VALUES
(1, NULL, 'SR', 1),
(2, NULL, 'usd', 1),
(3, NULL, 'eur', 1),
(4, 'currency_icon_3.png', 'BTC', 1),
(5, 'currency_icon_4.png', 'XRP', 1),
(6, 'currency_icon_5.png', 'LTC', 1),
(7, 'currency_icon_6.png', 'ETH', 1);

-- --------------------------------------------------------

--
-- Table structure for table `am_device_tokens`
--

CREATE TABLE `am_device_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_districts`
--

CREATE TABLE `am_districts` (
  `id` int(11) NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `geo_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_districts`
--

INSERT INTO `am_districts` (`id`, `country`, `city`, `name`, `lat`, `lng`, `country_id`, `city_id`, `geo_name`, `status`) VALUES
(5, 'مصر', 'القاهرة', '6 اكتوبر', '30.0647444', '31.25295010000002', 3, 37, '6 اكتوبر', 1),
(6, 'مصر', 'القاهرة', 'ابو رواش', '30.0822789', '31.284335499999997', 3, 37, 'ابو رواش', 1),
(7, 'مصر', 'القاهرة', 'اطفيح', '29.3692397', '31.30730570000003', 3, 37, 'اطفيح', 1),
(8, 'مصر', 'القاهرة', 'البدرشين', '30.0445885', '31.17901870000003', 3, 37, 'البدرشين', 1),
(9, 'مصر', 'القاهرة', 'البساتين', '29.9749458', '31.279803300000026', 3, 37, 'البساتين', 1),
(10, 'مصر', 'القاهرة', 'البستان', '30.0998626', '31.328428499999973', 3, 37, 'البستان', 1),
(11, 'مصر', 'القاهرة', 'البشاير', '29.9255338', '30.94098359999998', 3, 37, 'البشاير', 1),
(12, 'مصر', 'القاهرة', 'الجيزة', '30.0444196', '31.23571160000006', 3, 37, 'الجيزة', 1),
(13, 'مصر', 'القاهرة', 'الحوامدية', '29.89496', '31.261209000000008', 3, 37, 'الحوامدية', 1),
(14, 'مصر', 'القاهرة', 'الخليفة', '30.0164728', '31.25688779999996', 3, 37, 'الخليفة', 1),
(15, 'مصر', 'القاهرة', 'الدقي', '30.0444196', '31.23571160000006', 3, 37, 'الدقي', 1),
(16, 'مصر', 'القاهرة', 'الروضه', '30.0225', '31.226111100000026', 3, 37, 'الروضه', 1),
(17, 'مصر', 'القاهرة', 'الزاوية الحمراء', '30.0956792', '31.265497900000014', 3, 37, 'الزاوية الحمراء', 1),
(18, 'مصر', 'القاهرة', 'الزيتون', '30.1074263', '31.315669099999923', 3, 37, 'الزيتون', 1),
(19, 'مصر', 'القاهرة', 'الساحل', '30.0879601', '31.245467400000052', 3, 37, 'الساحل', 1),
(20, 'مصر', 'القاهرة', 'السلام', '30.1025028', '31.276045899999986', 3, 37, 'السلام', 1),
(21, 'مصر', 'القاهرة', 'السيدة زينب', '30.028926', '31.242605700000013', 3, 37, 'السيدة زينب', 1),
(22, 'مصر', 'القاهرة', 'الشرابية', '30.0735541', '31.263599200000044', 3, 37, 'الشرابية', 1),
(23, 'مصر', 'القاهرة', 'العجوزة', '30.0444196', '31.23571160000006', 3, 37, 'العجوزة', 1),
(24, 'مصر', 'القاهرة', 'العمرانية', '30.0444196', '31.23571160000006', 3, 37, 'العمرانية', 1),
(25, 'مصر', 'القاهرة', 'العياط', '30.1599313', '31.35945430000004', 3, 37, 'العياط', 1),
(26, 'مصر', 'القاهرة', 'اللشت', '30.0444196', '31.23571160000006', 3, 37, 'اللشت', 1),
(27, 'مصر', 'القاهرة', 'المرج', '30.1521015', '31.335730199999944', 3, 37, 'المرج', 1),
(28, 'مصر', 'القاهرة', 'المطرية', '30.1253988', '31.31812519999994', 3, 37, 'المطرية', 1),
(29, 'مصر', 'القاهرة', 'المقطم', '30.01873819999999', '31.279694199999994', 3, 37, 'المقطم', 1),
(30, 'مصر', 'القاهرة', 'المهندسين', '30.9817781', '31.15566990000002', 3, 37, 'المهندسين', 1),
(31, 'مصر', 'القاهرة', 'الموسكي', '30.05239989999999', '31.25949719999994', 3, 37, 'الموسكي', 1),
(32, 'مصر', 'القاهرة', 'النزهة', '30.1020351', '31.33986679999998', 3, 37, 'النزهة', 1),
(33, 'مصر', 'القاهرة', 'الهرم', '30.0065481', '31.202163199999973', 3, 37, 'الهرم', 1),
(34, 'مصر', 'القاهرة', 'الوايلي', '30.1033903', '31.286762100000033', 3, 37, 'الوايلي', 1),
(35, 'مصر', 'القاهرة', 'الوحدات البحرية', '30.0444196', '31.23571160000006', 3, 37, 'الوحدات البحرية', 1),
(36, 'مصر', 'القاهرة', 'الوراق اوسيم', '30.0444196', '31.23571160000006', 3, 37, 'الوراق اوسيم', 1),
(37, 'مصر', 'القاهرة', 'إمبابة', '30.0444196', '31.23571160000006', 3, 37, 'إمبابة', 1),
(38, 'مصر', 'القاهرة', 'أطفيح', '29.3692397', '31.30730570000003', 3, 37, 'أطفيح', 1),
(39, 'مصر', 'القاهرة', 'باب الشعرية', '30.0553906', '31.252996199999984', 3, 37, 'باب الشعرية', 1),
(40, 'مصر', 'القاهرة', 'بالم هيلز', '30.0132183', '31.234566900000004', 3, 37, 'بالم هيلز', 1),
(41, 'مصر', 'القاهرة', 'بولاق', '30.0631325', '31.23115789999997', 3, 37, 'بولاق', 1),
(42, 'مصر', 'القاهرة', 'بولاق الكدرور', '30.0444196', '31.23571160000006', 3, 37, 'بولاق الكدرور', 1),
(43, 'مصر', 'القاهرة', 'بيفيرلي هيلز القاهرة', '30.0444196', '31.23571160000006', 3, 37, 'بيفيرلي هيلز القاهرة', 1),
(44, 'مصر', 'القاهرة', 'حدائق القبة', '30.0820986', '31.27626310000005', 3, 37, 'حدائق القبة', 1),
(45, 'مصر', 'القاهرة', 'حي الاشجار', '30.006209', '31.30286030000002', 3, 37, 'حي الاشجار', 1),
(46, 'مصر', 'القاهرة', 'دار السلام', '29.9895151', '31.254052300000012', 3, 37, 'دار السلام', 1),
(47, 'مصر', 'القاهرة', 'دريم لاند', '29.9618131', '31.043470100000036', 3, 37, 'دريم لاند', 1),
(48, 'مصر', 'القاهرة', 'روض الفرج', '30.077514', '31.252288099999987', 3, 37, 'روض الفرج', 1),
(49, 'مصر', 'القاهرة', 'رويال غاردنز', '29.9931571', '31.300936500000034', 3, 37, 'رويال غاردنز', 1),
(50, 'مصر', 'القاهرة', 'رويال هيلز', '30.0444196', '31.23571160000006', 3, 37, 'رويال هيلز', 1),
(51, 'مصر', 'القاهرة', 'سقارة', '31.1935991', '29.91222760000005', 3, 37, 'سقارة', 1),
(52, 'مصر', 'القاهرة', 'صفوة سيتي', '30.09483969999999', '31.268747500000018', 3, 37, 'صفوة سيتي', 1),
(53, 'مصر', 'القاهرة', 'عابدين', '30.03329', '31.25030479999998', 3, 37, 'عابدين', 1),
(54, 'مصر', 'القاهرة', 'عين شمس', '30.1279442', '31.33001839999997', 3, 37, 'عين شمس', 1),
(55, 'مصر', 'القاهرة', 'غرب', '30.0444196', '31.23571160000006', 3, 37, 'غرب', 1),
(56, 'مصر', 'القاهرة', 'كرداسة', '30.0171907', '31.09976919999997', 3, 37, 'كرداسة', 1),
(57, 'مصر', 'القاهرة', 'كهشور', '29.7634971', '31.242605700000013', 3, 37, 'كهشور', 1),
(58, 'مصر', 'القاهرة', 'مدينة نصر', '30.0168939', '31.377033600000004', 3, 37, 'مدينة نصر', 1),
(59, 'مصر', 'القاهرة', 'مصر الجديدة', '30.112315', '31.34385069999996', 3, 37, 'مصر الجديدة', 1),
(60, 'مصر', 'القاهرة', 'مصر القديمة', '30.0011413', '31.231602599999974', 3, 37, 'مصر القديمة', 1),
(61, 'مصر', 'القاهرة', 'منشأة ناصر', '29.8857065', '31.3026883', 3, 37, 'منشأة ناصر', 1),
(62, 'مصر', 'القاهرة', 'منف', '30.312247', '31.70614039999998', 3, 37, 'منف', 1),
(63, 'مصر', 'القاهرة', 'مينا غاردن سيتي', '30.0242104', '31.23652919999995', 3, 37, 'مينا غاردن سيتي', 1),
(64, 'مصر', 'القاهرة', 'نيو جيزة', '30.0533251', '31.2242708', 3, 37, 'نيو جيزة', 1),
(65, 'مصر', 'القاهرة', 'هرم ستي', '29.99324459999999', '31.17372219999993', 3, 37, 'هرم ستي', 1),
(66, 'مصر', 'الإسكندرية', '6 اكتوبر', '31.2112352', '29.977072200000066', 3, 38, '6 اكتوبر', 1),
(67, 'مصر', 'الإسكندرية', 'ابو المطامير', '30.9140203', '30.166794900000014', 3, 38, 'ابو المطامير', 1),
(68, 'مصر', 'الإسكندرية', 'ابو تلات', '31.0730014', '29.69920030000003', 3, 38, 'ابو تلات', 1),
(69, 'مصر', 'الإسكندرية', 'ابو حمص', '31.0826317', '30.309772599999974', 3, 38, 'ابو حمص', 1),
(70, 'مصر', 'الإسكندرية', 'ابو قير', '31.3114241', '30.060334199999943', 3, 38, 'ابو قير', 1),
(71, 'مصر', 'الإسكندرية', 'ابيس', '31.1878032', '30.00778200000002', 3, 38, 'ابيس', 1),
(72, 'مصر', 'الإسكندرية', 'الابراهيمية', '31.2120125', '29.92503750000003', 3, 38, 'الابراهيمية', 1),
(73, 'مصر', 'الإسكندرية', 'البرج القديم', '30.9158572', '29.566442300000062', 3, 38, 'البرج القديم', 1),
(74, 'مصر', 'الإسكندرية', 'البلد', '31.2000924', '29.91873869999995', 3, 38, 'البلد', 1),
(75, 'مصر', 'الإسكندرية', 'البيطاش', '31.1810947', '29.875225399999977', 3, 38, 'البيطاش', 1),
(76, 'مصر', 'الإسكندرية', 'الحرمين', '31.1922556', '29.935388399999965', 3, 38, 'الحرمين', 1),
(77, 'مصر', 'الإسكندرية', 'الحضره', '31.197506', '29.928596800000037', 3, 38, 'الحضره', 1),
(78, 'مصر', 'الإسكندرية', 'الحمام', '31.2309177', '29.963604799999985', 3, 38, 'الحمام', 1),
(79, 'مصر', 'الإسكندرية', 'الدخلية', '31.2000924', '29.91873869999995', 3, 38, 'الدخلية', 1),
(80, 'مصر', 'الإسكندرية', 'الدلنجات', '30.8425833', '30.559881099999984', 3, 38, 'الدلنجات', 1),
(81, 'مصر', 'الإسكندرية', 'الضبعه', '31.0419324', '28.433564899999965', 3, 38, 'الضبعه', 1),
(82, 'مصر', 'الإسكندرية', 'الطابية', '31.1806233', '29.90889500000003', 3, 38, 'الطابية', 1),
(83, 'مصر', 'الإسكندرية', 'العامرية', '31.2000924', '29.91873869999995', 3, 38, 'العامرية', 1),
(84, 'مصر', 'الإسكندرية', 'العجمي', '31.0988357', '29.76666720000003', 3, 38, 'العجمي', 1),
(85, 'مصر', 'الإسكندرية', 'العصافره', '31.2628589', '29.997725100000025', 3, 38, 'العصافره', 1),
(86, 'مصر', 'الإسكندرية', 'العوايد', '31.2204299', '29.991688000000067', 3, 38, 'العوايد', 1),
(87, 'مصر', 'الإسكندرية', 'الفتح', '31.2349584', '29.965290299999992', 3, 38, 'الفتح', 1),
(88, 'مصر', 'الإسكندرية', 'الماكس', '31.1668166', '29.867692900000065', 3, 38, 'الماكس', 1),
(89, 'مصر', 'الإسكندرية', 'المحمودية', '27.5519307', '30.819182299999966', 3, 38, 'المحمودية', 1),
(90, 'مصر', 'الإسكندرية', 'المعادي', '30.5905846', '32.26782969999999', 3, 38, 'المعادي', 1),
(91, 'مصر', 'الإسكندرية', 'المعمورة', '31.289076', '30.03222070000004', 3, 38, 'المعمورة', 1),
(92, 'مصر', 'الإسكندرية', 'المنشية', '31.2000924', '29.91873869999995', 3, 38, 'المنشية', 1),
(93, 'مصر', 'الإسكندرية', 'الهانوفيل', '31.1057499', '29.764877599999977', 3, 38, 'الهانوفيل', 1),
(94, 'مصر', 'الإسكندرية', 'ايتاي البارود', '30.9487889', '30.58124470000007', 3, 38, 'ايتاي البارود', 1),
(95, 'مصر', 'الإسكندرية', 'بحرى', '31.2000924', '29.91873869999995', 3, 38, 'بحرى', 1),
(96, 'مصر', 'الإسكندرية', 'برج العرب', '30.8322089', '29.574751200000037', 3, 38, 'برج العرب', 1),
(97, 'مصر', 'الإسكندرية', 'جرين', '31.1939303', '29.9142296', 3, 38, 'جرين', 1),
(98, 'مصر', 'الإسكندرية', 'جليم', '31.2389444', '29.964111499999944', 3, 38, 'جليم', 1),
(99, 'مصر', 'الإسكندرية', 'حوش عيسى', '31.0187586', '30.438258700000006', 3, 38, 'حوش عيسى', 1),
(100, 'مصر', 'الإسكندرية', 'خورشيد', '31.2032609', '30.039078099999983', 3, 38, 'خورشيد', 1),
(101, 'مصر', 'الإسكندرية', 'دمنهور', '31.2053083', '29.935665900000004', 3, 38, 'دمنهور', 1),
(102, 'مصر', 'الإسكندرية', 'رشيد', '31.2661497', '30.000669900000048', 3, 38, 'رشيد', 1),
(103, 'مصر', 'الإسكندرية', 'رمسيس', '31.3203991', '30.061356100000012', 3, 38, 'رمسيس', 1),
(104, 'مصر', 'الإسكندرية', 'سموحة', '31.21454959999999', '29.945102200000065', 3, 38, 'سموحة', 1),
(105, 'مصر', 'الإسكندرية', 'سيدي جابر', '31.2207667', '29.937212000000045', 3, 38, 'سيدي جابر', 1),
(106, 'مصر', 'الإسكندرية', 'سيدي كرير', '31.016776', '29.645819999999958', 3, 38, 'سيدي كرير', 1),
(107, 'مصر', 'الإسكندرية', 'عبد القادر', '31.1905046', '29.920702300000016', 3, 38, 'عبد القادر', 1),
(108, 'مصر', 'الإسكندرية', 'كرموز', '31.1795393', '29.8981139', 3, 38, 'كرموز', 1),
(109, 'مصر', 'الإسكندرية', 'كفر الدوار', '31.2000924', '29.91873869999995', 3, 38, 'كفر الدوار', 1),
(110, 'مصر', 'الإسكندرية', 'كوم حماده', '30.1569433', '31.39168219999999', 3, 38, 'كوم حماده', 1),
(111, 'مصر', 'الإسكندرية', 'ماربيلا', '0', '0', 3, 38, 'ماربيلا', 1),
(112, 'مصر', 'الإسكندرية', 'مبارك', '31.1993095', '29.93859539999994', 3, 38, 'مبارك', 1),
(113, 'مصر', 'الإسكندرية', 'محمول', '31.1507517', '29.856937499999958', 3, 38, 'محمول', 1),
(114, 'مصر', 'الإسكندرية', 'مراقيا', '0', '0', 3, 38, 'مراقيا', 1),
(115, 'مصر', 'الإسكندرية', 'مصطفى كامل', '31.2514182', '29.994200500000034', 3, 38, 'مصطفى كامل', 1),
(116, 'مصر', 'الإسكندرية', 'مطروح', '31.3372074', '27.253349100000037', 3, 38, 'مطروح', 1),
(117, 'مصر', 'الإسكندرية', 'ميامي', '31.2652739', '30.00177020000001', 3, 38, 'ميامي', 1),
(118, 'مصر', 'القليوبية', 'الحسينية', '30.8584329', '32.30718139999999', 3, 40, 'الحسينية', 1),
(119, 'مصر', 'القليوبية', 'العمار', '30.1455681', '31.24982829999999', 3, 40, 'العمار', 1),
(120, 'مصر', 'القليوبية', 'بلتان', '30.3798996', '31.161301699999967', 3, 40, 'بلتان', 1),
(121, 'مصر', 'القليوبية', 'بنها', '30.4659929', '31.18483070000002', 3, 40, 'بنها', 1),
(122, 'مصر', 'القليوبية', 'سنهره', '30.29376199999999', '31.247655099999974', 3, 40, 'سنهره', 1),
(123, 'مصر', 'القليوبية', 'شبرا', '30.1002392', '31.25057400000003', 3, 40, 'شبرا', 1),
(124, 'مصر', 'القليوبية', 'شبين القناطر', '30.3114077', '31.322879899999975', 3, 40, 'شبين القناطر', 1),
(125, 'مصر', 'القليوبية', 'طوخ', '30.35370229999999', '31.202051600000004', 3, 40, 'طوخ', 1),
(126, 'مصر', 'القليوبية', 'فكر شكر', '30.5525838', '31.274081300000034', 3, 40, 'فكر شكر', 1),
(127, 'مصر', 'القليوبية', 'قها', '30.2799364', '31.205630499999984', 3, 40, 'قها', 1),
(128, 'مصر', 'القليوبية', 'ميت كنانه', '30.3856812', '31.261345600000027', 3, 40, 'ميت كنانه', 1),
(129, 'مصر', 'بور سعيد', 'الزهور', '31.2652893', '32.301866099999984', 3, 41, 'الزهور', 1),
(130, 'مصر', 'بور سعيد', 'بورسعيد', '31.2652893', '32.301866099999984', 3, 41, 'بورسعيد', 1),
(131, 'مصر', 'بور سعيد', 'بورفؤاد', '31.24929', '32.32360500000004', 3, 41, 'بورفؤاد', 1),
(132, 'مصر', 'بور سعيد', 'مبارك بورسعيد', '31.2427258', '32.289855699999976', 3, 41, 'مبارك بورسعيد', 1),
(133, 'مصر', 'السويس', 'الجناين', '30.0800007', '31.274609899999973', 3, 42, 'الجناين', 1),
(134, 'مصر', 'السويس', 'السويس', '29.9668343', '32.54980690000002', 3, 42, 'السويس', 1),
(135, 'مصر', 'السويس', 'اميجو', '26.1062489', '34.28092140000001', 3, 42, 'اميجو', 1),
(136, 'مصر', 'السويس', 'جنيفه', '30.1508211', '32.525959599999965', 3, 42, 'جنيفه', 1),
(137, 'مصر', 'السويس', 'رامكو', '29.9668343', '32.54980690000002', 3, 42, 'رامكو', 1),
(138, 'مصر', 'السويس', 'شندوره', '30.0814462', '31.285416499999997', 3, 42, 'شندوره', 1),
(139, 'مصر', 'السويس', 'عتاقه', '29.3682255', '32.17460499999993', 3, 42, 'عتاقه', 1),
(140, 'مصر', 'السويس', 'فيصل', '30.1999078', '32.31075169999997', 3, 42, 'فيصل', 1),
(141, 'مصر', 'السويس', 'قرية عامر', '30.0335201', '32.56838259999995', 3, 42, 'قرية عامر', 1),
(142, 'مصر', 'المحلة الكبرى', 'حى منشية مبارك', '30.9736329', '31.166087199999993', 3, 43, 'حى منشية مبارك', 1),
(143, 'مصر', 'المحلة الكبرى', 'شارع الرجبى', '30.9725563', '31.182418900000016', 3, 43, 'شارع الرجبى', 1),
(144, 'مصر', 'المحلة الكبرى', 'شارع مجمع المحاكم', '0', '0', 3, 43, 'شارع مجمع المحاكم', 1),
(145, 'مصر', 'المحلة الكبرى', 'شارع نادى الشرطة', '30.9728437', '31.180607399999985', 3, 43, 'شارع نادى الشرطة', 1),
(146, 'مصر', 'المحلة الكبرى', 'كفر حجازى', '30.9807168', '31.160569099999975', 3, 43, 'كفر حجازى', 1),
(147, 'مصر', 'المحلة الكبرى', 'محطة الدلتا القديمة', '30.9727657', '31.169598199999996', 3, 43, 'محطة الدلتا القديمة', 1),
(148, 'مصر', 'المحلة الكبرى', 'ميدان الشون', '30.9650243', '31.1624319', 3, 43, 'ميدان الشون', 1),
(149, 'مصر', 'الاقصر', 'اسنا', '25.6363005', '32.60986520000006', 3, 44, 'اسنا', 1),
(150, 'مصر', 'الاقصر', 'الاقصر', '25.6872431', '32.639635699999985', 3, 44, 'الاقصر', 1),
(151, 'مصر', 'الاقصر', 'بليبل', '25.6872431', '32.639635699999985', 3, 44, 'بليبل', 1),
(152, 'مصر', 'الاقصر', 'نجع شندويل', '25.6872431', '32.639635699999985', 3, 44, 'نجع شندويل', 1),
(153, 'مصر', 'اسيوط', 'ابوتيج', '27.0444171', '31.318931900000052', 3, 45, 'ابوتيج', 1),
(154, 'مصر', 'اسيوط', 'ديروط', '27.5502358', '30.807763499999965', 3, 45, 'ديروط', 1),
(155, 'مصر', 'اسيوط', 'ساحل سليم', '27.0450679', '31.337007399999948', 3, 45, 'ساحل سليم', 1),
(156, 'مصر', 'المنصورة', 'اجا', '30.7157716', '31.263994000000025', 3, 46, 'اجا', 1),
(157, 'مصر', 'المنصورة', 'السنبلاوين', '30.9524182', '31.42506419999995', 3, 46, 'السنبلاوين', 1),
(158, 'مصر', 'المنصورة', 'المنزله', '31.0440248', '31.397651699999983', 3, 46, 'المنزله', 1),
(159, 'مصر', 'المنصورة', 'المنصورة', '31.0409483', '31.37847039999997', 3, 46, 'المنصورة', 1),
(160, 'مصر', 'المنصورة', 'بلقاس', '31.0621816', '31.377450100000033', 3, 46, 'بلقاس', 1),
(161, 'مصر', 'المنصورة', 'جمصة', '31.2490969', '31.40803840000001', 3, 46, 'جمصة', 1),
(162, 'مصر', 'المنصورة', 'دكرنس', '31.0805248', '31.59772129999999', 3, 46, 'دكرنس', 1),
(163, 'مصر', 'المنصورة', 'شربين', '31.1904817', '31.524080400000003', 3, 46, 'شربين', 1),
(164, 'مصر', 'المنصورة', 'ميت غمر', '30.7157716', '31.263994000000025', 3, 46, 'ميت غمر', 1),
(165, 'مصر', 'المنصورة', 'نبروة', '31.0988887', '31.30124239999998', 3, 46, 'نبروة', 1),
(166, 'مصر', 'طنطا', 'ابو حلاوة', '30.7889656', '30.99469709999994', 3, 47, 'ابو حلاوة', 1),
(167, 'مصر', 'طنطا', 'الحدادين', '30.7827695', '31.002936699999964', 3, 47, 'الحدادين', 1),
(168, 'مصر', 'طنطا', 'الشوربجى', '30.7884821', '30.993794699999967', 3, 47, 'الشوربجى', 1),
(169, 'مصر', 'طنطا', 'العسراوى', '30.785128', '30.997379799999976', 3, 47, 'العسراوى', 1),
(170, 'مصر', 'طنطا', 'المأمون', '30.78776449999999', '30.99129659999994', 3, 47, 'المأمون', 1),
(171, 'مصر', 'طنطا', 'سعد الدين', '30.7891741', '30.990285299999982', 3, 47, 'سعد الدين', 1),
(172, 'مصر', 'طنطا', 'عوض الله ', '30.79051669999999', '30.996309500000052', 3, 47, 'عوض الله ', 1),
(173, 'مصر', 'طنطا', 'كفر عصام', '30.8070814', '30.983753500000034', 3, 47, 'كفر عصام', 1),
(174, 'مصر', 'طنطا', 'هارون الرشيد', '30.7889981', '30.99194620000003', 3, 47, 'هارون الرشيد', 1),
(175, 'مصر', 'الفيوم', 'ابشواي', '30.68154872529294', '29.358534088575915', 3, 48, 'ابشواي', 1),
(176, 'مصر', 'الفيوم', 'اطسا', '29.2378946', '30.791345800000045', 3, 48, 'اطسا', 1),
(177, 'مصر', 'الفيوم', 'الفيوم', '29.3084021', '30.842849699999988', 3, 48, 'الفيوم', 1),
(178, 'مصر', 'الفيوم', 'سنورس', '29.407521', '30.86639850000006', 3, 48, 'سنورس', 1),
(179, 'مصر', 'الفيوم', 'طاميه', '29.4779861', '30.961644999999976', 3, 48, 'طاميه', 1),
(180, 'مصر', 'الزقازيق', 'ابو حماد', '30.5852645', '31.523791200000005', 3, 49, 'ابو حماد', 1),
(181, 'مصر', 'الزقازيق', 'ابو كبير', '30.7045281', '31.63703320000002', 3, 49, 'ابو كبير', 1),
(182, 'مصر', 'الزقازيق', 'الابراهيمية', '30.6827142', '31.605711199999973', 3, 49, 'الابراهيمية', 1),
(183, 'مصر', 'الزقازيق', 'الحسينية', '30.5726298', '31.504168100000015', 3, 49, 'الحسينية', 1),
(184, 'مصر', 'الزقازيق', 'الزقازيق', '30.5765383', '31.50406559999999', 3, 49, 'الزقازيق', 1),
(185, 'مصر', 'الزقازيق', 'بلبيس', '30.3927767', '31.56651069999998', 3, 49, 'بلبيس', 1),
(186, 'مصر', 'الزقازيق', 'ديرب نجم', '30.7516406', '31.459509600000047', 3, 49, 'ديرب نجم', 1),
(187, 'مصر', 'الزقازيق', 'فاقوس', '30.74361619999999', '31.74502240000004', 3, 49, 'فاقوس', 1),
(188, 'مصر', 'الزقازيق', 'كفر صقر', '30.5757897', '31.500335500000006', 3, 49, 'كفر صقر', 1),
(189, 'مصر', 'الزقازيق', 'مشتول', '30.3579678', '31.376861899999994', 3, 49, 'مشتول', 1),
(190, 'مصر', 'الزقازيق', 'منيا القمح', '30.5108892', '31.344608900000026', 3, 49, 'منيا القمح', 1),
(191, 'مصر', 'الزقازيق', 'ههيا', '30.6092019', '31.557473699999946', 3, 49, 'ههيا', 1),
(192, 'مصر', 'الإسماعيلية', 'ابو خليفه', '30.1038099', '31.21771179999996', 3, 50, 'ابو خليفه', 1),
(193, 'مصر', 'الإسماعيلية', 'ابو سلطان', '30.413099', '32.31388900000002', 3, 50, 'ابو سلطان', 1),
(194, 'مصر', 'الإسماعيلية', 'ابو صوير', '30.5825742', '32.115754899999956', 3, 50, 'ابو صوير', 1),
(195, 'مصر', 'الإسماعيلية', 'الاسماعيلية', '30.5964923', '32.27145870000004', 3, 50, 'الاسماعيلية', 1),
(196, 'مصر', 'الإسماعيلية', 'التل الكبير', '30.4643987', '31.947311000000013', 3, 50, 'التل الكبير', 1),
(197, 'مصر', 'الإسماعيلية', 'الضبعيه', '30.5964923', '32.27145870000004', 3, 50, 'الضبعيه', 1),
(198, 'مصر', 'الإسماعيلية', 'القصاصين', '30.5636977', '31.9335552', 3, 50, 'القصاصين', 1),
(199, 'مصر', 'الإسماعيلية', 'القنطرة', '30.5964923', '32.27145870000004', 3, 50, 'القنطرة', 1),
(200, 'مصر', 'الإسماعيلية', 'الكيلو 11', '30.6081479', '32.239863600000035', 3, 50, 'الكيلو 11', 1),
(201, 'مصر', 'الإسماعيلية', 'المحسمه', '30.5964923', '32.27145870000004', 3, 50, 'المحسمه', 1),
(202, 'مصر', 'الإسماعيلية', 'المستقبل', '27.5537001', '30.814630599999987', 3, 50, 'المستقبل', 1),
(203, 'مصر', 'الإسماعيلية', 'المنايف', '30.5964923', '32.27145870000004', 3, 50, 'المنايف', 1),
(204, 'مصر', 'الإسماعيلية', 'بعالوه الصغري', '0', '0', 3, 50, 'بعالوه الصغري', 1),
(205, 'مصر', 'الإسماعيلية', 'زايد ملاس', '30.5964923', '32.27145870000004', 3, 50, 'زايد ملاس', 1),
(206, 'مصر', 'الإسماعيلية', 'سرابيوم', '30.511669', '32.32830000000001', 3, 50, 'سرابيوم', 1),
(207, 'مصر', 'الإسماعيلية', 'عرابي م س', '30.0410227', '31.205441500000006', 3, 50, 'عرابي م س', 1),
(208, 'مصر', 'الإسماعيلية', 'عين غصين', '30.5964923', '32.27145870000004', 3, 50, 'عين غصين', 1),
(209, 'مصر', 'الإسماعيلية', 'فايد', '30.311831', '32.313319999999976', 3, 50, 'فايد', 1),
(210, 'مصر', 'الإسماعيلية', 'كسفريت', '30.5964923', '32.27145870000004', 3, 50, 'كسفريت', 1),
(211, 'مصر', 'الإسماعيلية', 'نفيشة', '30.570135', '32.23871129999998', 3, 50, 'نفيشة', 1),
(212, 'مصر', 'دمياط', 'الزرقا', '31.2083984', '31.63493440000002', 3, 279, 'الزرقا', 1),
(213, 'مصر', 'دمياط', 'دمياط', '31.4175388', '31.81444339999996', 3, 279, 'دمياط', 1),
(214, 'مصر', 'دمياط', 'رأس البر', '31.5060475', '31.827779599999985', 3, 279, 'رأس البر', 1),
(215, 'مصر', 'دمياط', 'فارسكور', '31.3291027', '31.713298099999975', 3, 279, 'فارسكور', 1),
(216, 'مصر', 'دمياط', 'كفر سعد', '31.35981589999999', '31.686519900000008', 3, 279, 'كفر سعد', 1),
(217, 'مصر', 'المنيا', 'ابو قرقاص', '27.9307825', '30.838066700000013', 3, 298, 'ابو قرقاص', 1),
(218, 'مصر', 'المنيا', 'اطسا', '28.2268928', '30.74074250000001', 3, 298, 'اطسا', 1),
(219, 'مصر', 'المنيا', 'العدوه', '28.6978527', '30.76809800000001', 3, 298, 'العدوه', 1),
(220, 'مصر', 'المنيا', 'المنيا', '28.0870967', '30.761839699999996', 3, 298, 'المنيا', 1),
(221, 'مصر', 'المنيا', 'بني سويف', '28.0927894', '30.754989499999965', 3, 298, 'بني سويف', 1),
(222, 'مصر', 'المنيا', 'بني مزاز', '28.4916998', '30.8026155', 3, 298, 'بني مزاز', 1),
(223, 'مصر', 'المنيا', 'دير مواس', '27.6376503', '30.851069199999984', 3, 298, 'دير مواس', 1),
(224, 'مصر', 'المنيا', 'سملوط', '28.297814', '30.711656100000027', 3, 298, 'سملوط', 1),
(225, 'مصر', 'المنيا', 'مغاغة', '28.6412365', '30.842298400000004', 3, 298, 'مغاغة', 1),
(226, 'مصر', 'المنيا', 'ملوى', '27.7327603', '30.839659799999936', 3, 298, 'ملوى', 1),
(227, 'السعودية', 'الرياض', 'احد', '24.4972348', '46.63674620000006', 2, 12, 'احد', 1),
(228, 'السعودية', 'الرياض', 'اشبيلية', '24.7908094', '46.79139150000003', 2, 12, 'اشبيلية', 1),
(229, 'السعودية', 'الرياض', 'الإزدهار', '24.7821805', '46.714009199999964', 2, 12, 'الإزدهار', 1),
(230, 'السعودية', 'الرياض', 'الاسكان', '24.572859', '46.84950649999996', 2, 12, 'الاسكان', 1),
(231, 'السعودية', 'الرياض', 'الاندلس', '24.7446217', '46.7889715', 2, 12, 'الاندلس', 1),
(232, 'السعودية', 'الرياض', 'البجيري', '24.7361215', '46.57496149999997', 2, 12, 'البجيري', 1),
(233, 'السعودية', 'الرياض', 'البديعة', '24.6192852', '46.68502149999995', 2, 12, 'البديعة', 1),
(234, 'السعودية', 'الرياض', 'البطحاء', '24.6194787', '46.72468320000007', 2, 12, 'البطحاء', 1),
(235, 'السعودية', 'الرياض', 'التعاون', '24.7737343', '46.69709769999997', 2, 12, 'التعاون', 1),
(236, 'السعودية', 'الرياض', 'الجرادية', '24.615686', '46.69830539999998', 2, 12, 'الجرادية', 1),
(237, 'السعودية', 'الرياض', 'الجزيرة', '24.6606656', '46.80107269999996', 2, 12, 'الجزيرة', 1),
(238, 'السعودية', 'الرياض', 'الجنادرية', '24.8770565', '46.9125401', 2, 12, 'الجنادرية', 1),
(239, 'السعودية', 'الرياض', 'الحزم', '24.5387888', '46.646397500000035', 2, 12, 'الحزم', 1),
(240, 'السعودية', 'الرياض', 'الحمراء', '24.7769625', '46.75268540000002', 2, 12, 'الحمراء', 1),
(241, 'السعودية', 'الرياض', 'الخالدية', '24.6228249', '46.75510370000006', 2, 12, 'الخالدية', 1),
(242, 'السعودية', 'الرياض', 'الخزامي', '24.7180874', '46.588517499999966', 2, 12, 'الخزامي', 1),
(243, 'السعودية', 'الرياض', 'الخليج', '24.7751855', '46.80107269999996', 2, 12, 'الخليج', 1),
(244, 'السعودية', 'الرياض', 'الدار البيضاء', '24.5682758', '46.796231900000066', 2, 12, 'الدار البيضاء', 1),
(245, 'السعودية', 'الرياض', 'الدرعية', '27.1746772', '49.53479200000004', 2, 12, 'الدرعية', 1),
(246, 'السعودية', 'الرياض', 'الدرعية الجديدة', '24.7546111', '46.53792759999999', 2, 12, 'الدرعية الجديدة', 1),
(247, 'السعودية', 'الرياض', 'الدريهمية', '24.5908902', '46.69226690000005', 2, 12, 'الدريهمية', 1),
(248, 'السعودية', 'الرياض', 'الدفاع', '24.5885204', '46.83981599999993', 2, 12, 'الدفاع', 1),
(249, 'السعودية', 'الرياض', 'الدوبية', '24.6212385', '46.71219689999998', 2, 12, 'الدوبية', 1),
(250, 'السعودية', 'الرياض', 'الديرة', '24.6311537', '46.71159290000003', 2, 12, 'الديرة', 1),
(251, 'السعودية', 'الرياض', 'الرائد', '24.7068299', '46.63674620000006', 2, 12, 'الرائد', 1),
(252, 'السعودية', 'الرياض', 'الربوة', '24.694573', '46.762359100000026', 2, 12, 'الربوة', 1),
(253, 'السعودية', 'الرياض', 'الربيع', '24.7899729', '46.65605069999992', 2, 12, 'الربيع', 1),
(254, 'السعودية', 'الرياض', 'الرحمانية', '24.7169984', '46.65846429999999', 2, 12, 'الرحمانية', 1),
(255, 'السعودية', 'الرياض', 'الرفيعة', '24.6409762', '46.66570580000007', 2, 12, 'الرفيعة', 1),
(256, 'السعودية', 'الرياض', 'الرمال', '24.930889', '46.796231900000066', 2, 12, 'الرمال', 1),
(257, 'السعودية', 'الرياض', 'الرماية', '24.7707476', '46.86889310000004', 2, 12, 'الرماية', 1),
(258, 'السعودية', 'الرياض', 'الروابي', '24.6953889', '46.79139150000003', 2, 12, 'الروابي', 1),
(259, 'السعودية', 'الرياض', 'الروضة', '24.7327301', '46.762359100000026', 2, 12, 'الروضة', 1),
(260, 'السعودية', 'الرياض', 'الروقية', '24.6196129', '46.68711889999997', 2, 12, 'الروقية', 1),
(261, 'السعودية', 'الرياض', 'الريان', '24.7110201', '46.781712200000015', 2, 12, 'الريان', 1),
(262, 'السعودية', 'الرياض', 'الزهراء', '24.6864943', '46.7297178', 2, 12, 'الزهراء', 1),
(263, 'السعودية', 'الرياض', 'الزهرة', '24.5769026', '46.646397500000035', 2, 12, 'الزهرة', 1),
(264, 'السعودية', 'الرياض', 'السعادة', '24.6935498', '46.83981599999993', 2, 12, 'السعادة', 1),
(265, 'السعودية', 'الرياض', 'السفارات', '24.6778267', '46.62227269999994', 2, 12, 'السفارات', 1),
(266, 'السعودية', 'الرياض', 'السلام', '24.7085871', '46.80833480000001', 2, 12, 'السلام', 1),
(267, 'السعودية', 'الرياض', 'السلي', '24.6584098', '46.83497149999994', 2, 12, 'السلي', 1),
(268, 'السعودية', 'الرياض', 'السليمانية', '24.7024525', '46.704344799999944', 2, 12, 'السليمانية', 1),
(269, 'السعودية', 'الرياض', 'السويدي', '24.5935291', '46.672948299999916', 2, 12, 'السويدي', 1),
(270, 'السعودية', 'الرياض', 'السويدي الغربي', '24.5715285', '46.62468460000002', 2, 12, 'السويدي الغربي', 1),
(271, 'السعودية', 'الرياض', 'الشرفيه', '24.6577573', '46.66932689999999', 2, 12, 'الشرفيه', 1),
(272, 'السعودية', 'الرياض', 'الشفا', '24.5655348', '46.69468219999999', 2, 12, 'الشفا', 1),
(273, 'السعودية', 'الرياض', 'الشميسي', '24.6229377', '46.701928899999984', 2, 12, 'الشميسي', 1),
(274, 'السعودية', 'الرياض', 'الصالحية', '24.6333842', '46.73455220000005', 2, 12, 'الصالحية', 1),
(275, 'السعودية', 'الرياض', 'الصحافة', '24.8020864', '46.63674620000006', 2, 12, 'الصحافة', 1),
(276, 'السعودية', 'الرياض', 'الصفا', '24.6659541', '46.762359100000026', 2, 12, 'الصفا', 1),
(277, 'السعودية', 'الرياض', 'الصناعية', '24.639978', '46.74301360000004', 2, 12, 'الصناعية', 1),
(278, 'السعودية', 'الرياض', 'الضباط', '24.6775125', '46.72125870000002', 2, 12, 'الضباط', 1),
(279, 'السعودية', 'الرياض', 'الطريف', '24.5761703', '46.53701419999993', 2, 12, 'الطريف', 1),
(280, 'السعودية', 'الرياض', 'الطريف الجديدة', '24.7694', '46.61224390000007', 2, 12, 'الطريف الجديدة', 1),
(281, 'السعودية', 'الرياض', 'العارض', '24.8994314', '46.60298119999993', 2, 12, 'العارض', 1),
(282, 'السعودية', 'الرياض', 'العريجاء', '24.6264754', '46.65846429999999', 2, 12, 'العريجاء', 1),
(283, 'السعودية', 'الرياض', 'العريجاء الغربية', '24.5977596', '46.598159500000065', 2, 12, 'العريجاء الغربية', 1),
(284, 'السعودية', 'الرياض', 'العريجاء الوسطى', '24.6115644', '46.63674620000006', 2, 12, 'العريجاء الوسطى', 1),
(285, 'السعودية', 'الرياض', 'العزيزية', '24.5926822', '46.75752209999996', 2, 12, 'العزيزية', 1),
(286, 'السعودية', 'الرياض', 'العقيق', '24.7795671', '46.62709670000004', 2, 12, 'العقيق', 1),
(287, 'السعودية', 'الرياض', 'العليا', '24.6955386', '46.68502149999995', 2, 12, 'العليا', 1),
(288, 'السعودية', 'الرياض', 'العمل', '24.6441384', '46.72125870000002', 2, 12, 'العمل', 1),
(289, 'السعودية', 'الرياض', 'العود', '24.6267909', '46.726092300000005', 2, 12, 'العود', 1),
(290, 'السعودية', 'الرياض', 'الغدير', '24.7709181', '46.65605069999992', 2, 12, 'الغدير', 1),
(291, 'السعودية', 'الرياض', 'الفاخرية', '24.6398692', '46.68260669999995', 2, 12, 'الفاخرية', 1),
(292, 'السعودية', 'الرياض', 'الفاروق', '24.6535697', '46.774453900000026', 2, 12, 'الفاروق', 1),
(293, 'السعودية', 'الرياض', 'الفلاح', '24.7979974', '46.71159290000003', 2, 12, 'الفلاح', 1),
(294, 'السعودية', 'الرياض', 'الفوطة', '24.6414489', '46.71038479999993', 2, 12, 'الفوطة', 1),
(295, 'السعودية', 'الرياض', 'الفيحاء', '24.6832026', '46.81075570000007', 2, 12, 'الفيحاء', 1),
(296, 'السعودية', 'الرياض', 'الفيصلية', '24.6346863', '46.781712200000015', 2, 12, 'الفيصلية', 1),
(297, 'السعودية', 'الرياض', 'القادسية', '24.8202818', '46.82044059999998', 2, 12, 'القادسية', 1),
(298, 'السعودية', 'الرياض', 'القدس', '24.7578871', '46.75268540000002', 2, 12, 'القدس', 1),
(299, 'السعودية', 'الرياض', 'القرى', '24.6280853', '46.71551939999995', 2, 12, 'القرى', 1),
(300, 'السعودية', 'الرياض', 'القيروان', '24.8855007', '46.56442059999995', 2, 12, 'القيروان', 1),
(301, 'السعودية', 'الرياض', 'المحمدية', '24.7325921', '46.64881059999993', 2, 12, 'المحمدية', 1),
(302, 'السعودية', 'الرياض', 'المدينة الصناعية الجديدة', '24.5422619', '46.89798689999998', 2, 12, 'المدينة الصناعية الجديدة', 1),
(303, 'السعودية', 'الرياض', 'المربع', '24.6580314', '46.70676070000002', 2, 12, 'المربع', 1),
(304, 'السعودية', 'الرياض', 'المرسلات', '24.7481734', '46.69226690000005', 2, 12, 'المرسلات', 1),
(305, 'السعودية', 'الرياض', 'المرقب', '24.6362258', '46.72246700000005', 2, 12, 'المرقب', 1),
(306, 'السعودية', 'الرياض', 'المروة', '24.5395851', '46.67536270000005', 2, 12, 'المروة', 1),
(307, 'السعودية', 'الرياض', 'المروج', '24.7553272', '46.66570580000007', 2, 12, 'المروج', 1),
(308, 'السعودية', 'الرياض', 'المريح', '24.73423', '46.57797370000003', 2, 12, 'المريح', 1),
(309, 'السعودية', 'الرياض', 'المصانع', '24.5636717', '46.74301360000004', 2, 12, 'المصانع', 1),
(310, 'السعودية', 'الرياض', 'المصفاة', '24.5224185', '46.86889310000004', 2, 12, 'المصفاة', 1),
(311, 'السعودية', 'الرياض', 'المصيف', '24.7622555', '46.68502149999995', 2, 12, 'المصيف', 1),
(312, 'السعودية', 'الرياض', 'المعذر', '24.6667363', '46.6777773', 2, 12, 'المعذر', 1),
(313, 'السعودية', 'الرياض', 'المعذر الشمالي', '24.699671', '46.663291800000025', 2, 12, 'المعذر الشمالي', 1),
(314, 'السعودية', 'الرياض', 'المعكال', '24.6221005', '46.71461320000003', 2, 12, 'المعكال', 1),
(315, 'السعودية', 'الرياض', 'المعيزلة', '24.7890215', '46.83981599999993', 2, 12, 'المعيزلة', 1),
(316, 'السعودية', 'الرياض', 'المغرزات', '24.7665758', '46.72367540000005', 2, 12, 'المغرزات', 1),
(317, 'السعودية', 'الرياض', 'الملز', '24.66514', '46.73334360000001', 2, 12, 'الملز', 1),
(318, 'السعودية', 'الرياض', 'الملقا', '24.8042208', '46.60298119999993', 2, 12, 'الملقا', 1),
(319, 'السعودية', 'الرياض', 'الملك عبد العزيز', '24.7189012', '46.72367540000005', 2, 12, 'الملك عبد العزيز', 1),
(320, 'السعودية', 'الرياض', 'الملك عبدالله', '24.7338333', '46.74543140000003', 2, 12, 'الملك عبدالله', 1),
(321, 'السعودية', 'الرياض', 'الملك فهد', '24.7397319', '46.67536270000005', 2, 12, 'الملك فهد', 1),
(322, 'السعودية', 'الرياض', 'الملك فيصل', '24.7648069', '46.77203469999995', 2, 12, 'الملك فيصل', 1),
(323, 'السعودية', 'الرياض', 'المناخ', '24.6129451', '46.80107269999996', 2, 12, 'المناخ', 1),
(324, 'السعودية', 'الرياض', 'المنار', '24.7242212', '46.79865219999999', 2, 12, 'المنار', 1),
(325, 'السعودية', 'الرياض', 'المنصورة', '24.6113637', '46.74301360000004', 2, 12, 'المنصورة', 1),
(326, 'السعودية', 'الرياض', 'المنصورية', '24.5174979', '46.80107269999996', 2, 12, 'المنصورية', 1),
(327, 'السعودية', 'الرياض', 'المونسية', '24.831583', '46.77203469999995', 2, 12, 'المونسية', 1),
(328, 'السعودية', 'الرياض', 'المؤتمرات', '24.6701907', '46.68743649999999', 2, 12, 'المؤتمرات', 1),
(329, 'السعودية', 'الرياض', 'الناصرية', '24.6494007', '46.68260669999995', 2, 12, 'الناصرية', 1),
(330, 'السعودية', 'الرياض', 'النخيل', '24.7449337', '46.63674620000006', 2, 12, 'النخيل', 1),
(331, 'السعودية', 'الرياض', 'الندى', '24.8066579', '46.68260669999995', 2, 12, 'الندى', 1),
(332, 'السعودية', 'الرياض', 'النرجس', '24.8912881', '46.646397500000035', 2, 12, 'النرجس', 1),
(333, 'السعودية', 'الرياض', 'النزهة', '24.7596506', '46.704344799999944', 2, 12, 'النزهة', 1),
(334, 'السعودية', 'الرياض', 'النسيم الشرقي', '24.7351924', '46.84950649999996', 2, 12, 'النسيم الشرقي', 1),
(335, 'السعودية', 'الرياض', 'النسيم الغربي', '24.7248337', '46.82044059999998', 2, 12, 'النسيم الغربي', 1),
(336, 'السعودية', 'الرياض', 'النظم', '24.8595994', '46.97079469999994', 2, 12, 'النظم', 1),
(337, 'السعودية', 'الرياض', 'النفل', '24.784131', '46.672948299999916', 2, 12, 'النفل', 1),
(338, 'السعودية', 'الرياض', 'النموذجية', '24.6576193', '46.69226690000005', 2, 12, 'النموذجية', 1),
(339, 'السعودية', 'الرياض', 'النهضة', '24.7630142', '46.82044059999998', 2, 12, 'النهضة', 1),
(340, 'السعودية', 'الرياض', 'النور', '24.635478', '46.81075570000007', 2, 12, 'النور', 1),
(341, 'السعودية', 'الرياض', 'الهدا', '24.662654', '46.646397500000035', 2, 12, 'الهدا', 1),
(342, 'السعودية', 'الرياض', 'الواحة', '24.7425273', '46.71642559999998', 2, 12, 'الواحة', 1),
(343, 'السعودية', 'الرياض', 'الوادي', '24.7910645', '46.69226690000005', 2, 12, 'الوادي', 1),
(344, 'السعودية', 'الرياض', 'الورود', '24.7239196', '46.6777773', 2, 12, 'الورود', 1),
(345, 'السعودية', 'الرياض', 'الوزارات', '24.6788262', '46.71159290000003', 2, 12, 'الوزارات', 1),
(346, 'السعودية', 'الرياض', 'الوسيطاء', '24.8113312', '46.802805600000056', 2, 12, 'الوسيطاء', 1),
(347, 'السعودية', 'الرياض', 'الوشام', '24.6419027', '46.69830539999998', 2, 12, 'الوشام', 1),
(348, 'السعودية', 'الرياض', 'الياسمين', '24.8306614', '46.63674620000006', 2, 12, 'الياسمين', 1),
(349, 'السعودية', 'الرياض', 'اليرموك', '24.8064289', '46.781712200000015', 2, 12, 'اليرموك', 1),
(350, 'السعودية', 'الرياض', 'اليمامة', '24.5947367', '46.71642559999998', 2, 12, 'اليمامة', 1),
(351, 'السعودية', 'الرياض', 'ام الحمام الشرقي', '24.6836488', '46.65846429999999', 2, 12, 'ام الحمام الشرقي', 1),
(352, 'السعودية', 'الرياض', 'ام الحمام الغربي', '24.6879898', '46.64398449999999', 2, 12, 'ام الحمام الغربي', 1),
(353, 'السعودية', 'الرياض', 'ام سليم', '24.6347527', '46.69830539999998', 2, 12, 'ام سليم', 1),
(354, 'السعودية', 'الرياض', 'بدر', '24.5216931', '46.718842100000074', 2, 12, 'بدر', 1),
(355, 'السعودية', 'الرياض', 'ثليم', '24.6411967', '46.7297178', 2, 12, 'ثليم', 1),
(356, 'السعودية', 'الرياض', 'جامعة الامام محمد بن سعود الاسلامية', '24.8135951', '46.701928899999984', 2, 12, 'جامعة الامام محمد بن سعود الاسلامية', 1),
(357, 'السعودية', 'الرياض', 'جامعة الملك سعود', '24.7224191', '46.62709670000004', 2, 12, 'جامعة الملك سعود', 1),
(358, 'السعودية', 'الرياض', 'جبرة', '24.6250165', '46.71944619999999', 2, 12, 'جبرة', 1),
(359, 'السعودية', 'الرياض', 'جرير', '24.6783337', '46.75026730000002', 2, 12, 'جرير', 1),
(360, 'السعودية', 'الرياض', 'حطين', '24.7661337', '46.60298119999993', 2, 12, 'حطين', 1),
(361, 'السعودية', 'الرياض', 'خشم العان', '24.6851878', '46.88343789999999', 2, 12, 'خشم العان', 1),
(362, 'السعودية', 'الرياض', 'ديراب', '24.5094082', '46.61744909999993', 2, 12, 'ديراب', 1),
(363, 'السعودية', 'الرياض', 'سكيرينة', '24.6154305', '46.71763379999993', 2, 12, 'سكيرينة', 1),
(364, 'السعودية', 'الرياض', 'سلطانة', '24.6034659', '46.68743649999999', 2, 12, 'سلطانة', 1),
(365, 'السعودية', 'الرياض', 'سمحان', '24.6796747', '46.6448924', 2, 12, 'سمحان', 1),
(366, 'السعودية', 'الرياض', 'شبرا', '24.5775097', '46.668119899999965', 2, 12, 'شبرا', 1),
(367, 'السعودية', 'الرياض', 'صلاح الدين', '24.7356063', '46.69709769999997', 2, 12, 'صلاح الدين', 1),
(368, 'السعودية', 'الرياض', 'صياح', '24.6086369', '46.701928899999984', 2, 12, 'صياح', 1),
(369, 'السعودية', 'الرياض', 'طويق', '24.5740157', '46.545151600000054', 2, 12, 'طويق', 1),
(370, 'السعودية', 'الرياض', 'طيبة', '24.543834', '46.83497149999994', 2, 12, 'طيبة', 1),
(371, 'السعودية', 'الرياض', 'ظهرة البديعة', '24.5994078', '46.65605069999992', 2, 12, 'ظهرة البديعة', 1),
(372, 'السعودية', 'الرياض', 'ظهرة لبن', '24.63112', '46.545151600000054', 2, 12, 'ظهرة لبن', 1),
(373, 'السعودية', 'الرياض', 'ظهرة نمار', '24.5631143', '46.6078033', 2, 12, 'ظهرة نمار', 1),
(374, 'السعودية', 'الرياض', 'عتيقة', '24.5960589', '46.70676070000002', 2, 12, 'عتيقة', 1),
(375, 'السعودية', 'الرياض', 'عرقة', '24.6895242', '46.588517499999966', 2, 12, 'عرقة', 1),
(376, 'السعودية', 'الرياض', 'عكاظ', '24.5075512', '46.66570580000007', 2, 12, 'عكاظ', 1),
(377, 'السعودية', 'الرياض', 'عليشة', '24.6320628', '46.68743649999999', 2, 12, 'عليشة', 1),
(378, 'السعودية', 'الرياض', 'غبيرة', '24.6199401', '46.73696959999995', 2, 12, 'غبيرة', 1),
(379, 'السعودية', 'الرياض', 'غرناطة', '24.7960376', '46.75268540000002', 2, 12, 'غرناطة', 1),
(380, 'السعودية', 'الرياض', 'قرطبة', '24.8146811', '46.73817830000007', 2, 12, 'قرطبة', 1),
(381, 'السعودية', 'الرياض', 'محافظة الأفلاج ', '25.0054482', '46.54483099999993', 2, 12, 'محافظة الأفلاج ', 1),
(382, 'السعودية', 'الرياض', 'محافظة الحريق', '25.0054482', '46.54483099999993', 2, 12, 'محافظة الحريق', 1),
(383, 'السعودية', 'الرياض', 'محافظة الخرج', '25.0054482', '46.54483099999993', 2, 12, 'محافظة الخرج', 1),
(384, 'السعودية', 'الرياض', 'محافظة الدرعية ', '25.0054482', '46.54483099999993', 2, 12, 'محافظة الدرعية ', 1),
(385, 'السعودية', 'الرياض', 'محافظة الدوادمي', '24.545737', '44.4795173', 2, 12, 'محافظة الدوادمي', 1),
(386, 'السعودية', 'الرياض', 'محافظة الزلفي', '26.3067578', '44.83154149999996', 2, 12, 'محافظة الزلفي', 1),
(387, 'السعودية', 'الرياض', 'محافظة السليل', '25.0054482', '46.54483099999993', 2, 12, 'محافظة السليل', 1),
(388, 'السعودية', 'الرياض', 'محافظة الغاط', '25.0054482', '46.54483099999993', 2, 12, 'محافظة الغاط', 1),
(389, 'السعودية', 'الرياض', 'محافظة القويعية', '24.061571', '45.278279', 2, 12, 'محافظة القويعية', 1),
(390, 'السعودية', 'الرياض', 'محافظة المجمعة', '25.0054482', '46.54483099999993', 2, 12, 'محافظة المجمعة', 1),
(391, 'السعودية', 'الرياض', 'محافظة المزاحمية', '25.0054482', '46.54483099999993', 2, 12, 'محافظة المزاحمية', 1),
(392, 'السعودية', 'الرياض', 'محافظة ثادق', '30.59374069999999', '31.518537899999956', 2, 12, 'محافظة ثادق', 1),
(393, 'السعودية', 'الرياض', 'محافظة حريملاء', '25.0054482', '46.54483099999993', 2, 12, 'محافظة حريملاء', 1),
(394, 'السعودية', 'الرياض', 'محافظة حوطة بني تميم', '25.0054482', '46.54483099999993', 2, 12, 'محافظة حوطة بني تميم', 1),
(395, 'السعودية', 'الرياض', 'محافظة رماح', '25.0054482', '46.54483099999993', 2, 12, 'محافظة رماح', 1),
(396, 'السعودية', 'الرياض', 'محافظة شقراء', '25.0054482', '46.54483099999993', 2, 12, 'محافظة شقراء', 1),
(397, 'السعودية', 'الرياض', 'محافظة ضرما', '25.0054482', '46.54483099999993', 2, 12, 'محافظة ضرما', 1),
(398, 'السعودية', 'الرياض', 'محافظة عفيف', '25.0054482', '46.54483099999993', 2, 12, 'محافظة عفيف', 1),
(399, 'السعودية', 'الرياض', 'محافظة وادي الدواسر', '25.0054482', '46.54483099999993', 2, 12, 'محافظة وادي الدواسر', 1),
(400, 'السعودية', 'الرياض', 'مطار الملك خالد', '24.958202', '46.70077900000001', 2, 12, 'مطار الملك خالد', 1),
(401, 'السعودية', 'الرياض', 'منفوحة', '24.5981817', '46.726092300000005', 2, 12, 'منفوحة', 1),
(402, 'السعودية', 'الرياض', 'منفوحة الجديدة', '24.6107632', '46.72125870000002', 2, 12, 'منفوحة الجديدة', 1),
(403, 'السعودية', 'الرياض', 'نمار', '24.5681797', '46.67536270000005', 2, 12, 'نمار', 1),
(404, 'السعودية', 'الرياض', 'هجرة لبن', '24.6626253', '46.624062200000026', 2, 12, 'هجرة لبن', 1),
(405, 'السعودية', 'جدة', 'ابحر الجنوبية', '21.7429699', '39.14206509999997', 2, 13, 'ابحر الجنوبية', 1),
(406, 'السعودية', 'جدة', 'ابحر الشمالية', '21.7441577', '39.107529200000045', 2, 13, 'ابحر الشمالية', 1),
(407, 'السعودية', 'جدة', 'ابرق الرغامة', '21.4994396', '39.28948439999999', 2, 13, 'ابرق الرغامة', 1),
(408, 'السعودية', 'جدة', 'الاجواد', '21.5993094', '39.26092619999997', 2, 13, 'الاجواد', 1),
(409, 'السعودية', 'جدة', 'الاسكان الجنوبي', '21.4663188', '39.23993129999997', 2, 13, 'الاسكان الجنوبي', 1),
(410, 'السعودية', 'جدة', 'الاطلال', '21.5980775', '39.2400672', 2, 13, 'الاطلال', 1),
(411, 'السعودية', 'جدة', 'الامير فواز', '21.4238261', '39.30246110000007', 2, 13, 'الامير فواز', 1),
(412, 'السعودية', 'جدة', 'الاندلس', '21.5364376', '39.138758699999926', 2, 13, 'الاندلس', 1),
(413, 'السعودية', 'جدة', 'البساتين', '21.684746', '39.115338000000065', 2, 13, 'البساتين', 1),
(414, 'السعودية', 'جدة', 'البغدادية الشرقية', '21.4980006', '39.19207349999999', 2, 13, 'البغدادية الشرقية', 1),
(415, 'السعودية', 'جدة', 'البغدادية الغربية', '21.4982467', '39.177774', 2, 13, 'البغدادية الغربية', 1),
(416, 'السعودية', 'جدة', 'البلد', '21.4818882', '39.18297419999999', 2, 13, 'البلد', 1),
(417, 'السعودية', 'جدة', 'البوادي', '21.6005855', '39.167372200000045', 2, 13, 'البوادي', 1),
(418, 'السعودية', 'جدة', 'التوفيق', '21.5442892', '39.19920139999999', 2, 13, 'التوفيق', 1),
(419, 'السعودية', 'جدة', 'الثعالبة', '21.4646497', '39.18687410000007', 2, 13, 'الثعالبة', 1),
(420, 'السعودية', 'جدة', 'الثغر', '21.4788238', '39.229756899999984', 2, 13, 'الثغر', 1),
(421, 'السعودية', 'جدة', 'الجامعة', '21.4748021', '39.25313529999994', 2, 13, 'الجامعة', 1),
(422, 'السعودية', 'جدة', 'الحمراء', '21.5274436', '39.16217069999993', 2, 13, 'الحمراء', 1),
(423, 'السعودية', 'جدة', 'الخالدية', '21.5595435', '39.13615679999998', 2, 13, 'الخالدية', 1),
(424, 'السعودية', 'جدة', 'الربوة', '21.6044179', '39.180374099999995', 2, 13, 'الربوة', 1),
(425, 'السعودية', 'جدة', 'الربيع', '21.5173314', '39.168232399999965', 2, 13, 'الربيع', 1),
(426, 'السعودية', 'جدة', 'الرحاب', '21.5530492', '39.22196220000001', 2, 13, 'الرحاب', 1),
(427, 'السعودية', 'جدة', 'الروابي', '21.4687036', '39.26611950000006', 2, 13, 'الروابي', 1),
(428, 'السعودية', 'جدة', 'الروضة', '21.5604897', '39.159569799999986', 2, 13, 'الروضة', 1),
(429, 'السعودية', 'جدة', 'الرويس', '21.5146072', '39.17257330000007', 2, 13, 'الرويس', 1),
(430, 'السعودية', 'جدة', 'الزهراء', '21.5990237', '39.128350599999976', 2, 13, 'الزهراء', 1),
(431, 'السعودية', 'جدة', 'السامر', '21.583792', '39.24534349999999', 2, 13, 'السامر', 1),
(432, 'السعودية', 'جدة', 'السبيل', '21.4826841', '39.20247119999999', 2, 13, 'السبيل', 1),
(433, 'السعودية', 'جدة', 'السلامة', '21.5949889', '39.15176650000001', 2, 13, 'السلامة', 1),
(434, 'السعودية', 'جدة', 'السليمانية', '21.5069359', '39.24923949999993', 2, 13, 'السليمانية', 1),
(435, 'السعودية', 'جدة', 'الشاطئ', '21.5820209', '39.11794080000004', 2, 13, 'الشاطئ', 1),
(436, 'السعودية', 'جدة', 'الشرفية', '21.5152406', '39.188174000000004', 2, 13, 'الشرفية', 1),
(437, 'السعودية', 'جدة', 'الصحيفة', '21.4873367', '39.194673100000045', 2, 13, 'الصحيفة', 1),
(438, 'السعودية', 'جدة', 'الصفا', '21.5857702', '39.21156780000001', 2, 13, 'الصفا', 1),
(439, 'السعودية', 'جدة', 'العزيزية', '21.5535624', '39.19337329999996', 2, 13, 'العزيزية', 1),
(440, 'السعودية', 'جدة', 'العمارية', '21.4922279', '39.19272339999998', 2, 13, 'العمارية', 1),
(441, 'السعودية', 'جدة', 'العين ', '21.539522', '39.185638400000016', 2, 13, 'العين ', 1),
(442, 'السعودية', 'جدة', 'الغليل', '21.4512608', '39.20377080000003', 2, 13, 'الغليل', 1),
(443, 'السعودية', 'جدة', 'الفيحاء', '21.493415', '39.22196220000001', 2, 13, 'الفيحاء', 1),
(444, 'السعودية', 'جدة', 'الفيصلية', '21.5745852', '39.180374099999995', 2, 13, 'الفيصلية', 1),
(445, 'السعودية', 'جدة', 'القريات', '21.4642477', '39.19727260000002', 2, 13, 'القريات', 1),
(446, 'السعودية', 'جدة', 'الكندرة', '21.4910205', '39.20377080000003', 2, 13, 'الكندرة', 1),
(447, 'السعودية', 'جدة', 'المتنزهات', '21.4632323', '39.29467539999996', 2, 13, 'المتنزهات', 1),
(448, 'السعودية', 'جدة', 'المحجر', '21.4296181', '39.20117159999995', 2, 13, 'المحجر', 1),
(449, 'السعودية', 'جدة', 'المحمدية', '21.6487732', '39.128350599999976', 2, 13, 'المحمدية', 1),
(450, 'السعودية', 'جدة', 'المرجان', '21.6873437', '39.09711600000003', 2, 13, 'المرجان', 1),
(451, 'السعودية', 'جدة', 'المروة', '21.6184988', '39.20117159999995', 2, 13, 'المروة', 1),
(452, 'السعودية', 'جدة', 'المستودعات', '21.444761', '39.30862419999994', 2, 13, 'المستودعات', 1),
(453, 'السعودية', 'جدة', 'المنطقة الصناعية', '26.9933477', '49.56611129999999', 2, 13, 'المنطقة الصناعية', 1),
(454, 'السعودية', 'جدة', 'النزلة الشرقية', '21.4751418', '39.22066300000006', 2, 13, 'النزلة الشرقية', 1),
(455, 'السعودية', 'جدة', 'النزلة اليمانية', '21.4696959', '39.208968899999945', 2, 13, 'النزلة اليمانية', 1),
(456, 'السعودية', 'جدة', 'النزهة', '21.6254503', '39.167372200000045', 2, 13, 'النزهة', 1),
(457, 'السعودية', 'جدة', 'النسيم', '21.5203359', '39.23235490000002', 2, 13, 'النسيم', 1),
(458, 'السعودية', 'جدة', 'النعيم', '21.6277332', '39.14136050000002', 2, 13, 'النعيم', 1),
(459, 'السعودية', 'جدة', 'النهضة', '21.618923', '39.128350599999976', 2, 13, 'النهضة', 1),
(460, 'السعودية', 'جدة', 'الهنداوية', '21.4398294', '39.78603840000005', 2, 13, 'الهنداوية', 1),
(461, 'السعودية', 'جدة', 'الورود', '21.5190804', '39.20117159999995', 2, 13, 'الورود', 1),
(462, 'السعودية', 'جدة', 'الوزيريه', '21.4408376', '39.23235490000002', 2, 13, 'الوزيريه', 1),
(463, 'السعودية', 'جدة', 'ام الحبلين', '21.7097815', '39.2479409', 2, 13, 'ام الحبلين', 1),
(464, 'السعودية', 'جدة', 'بترومين', '21.4523835', '39.19077370000002', 2, 13, 'بترومين', 1),
(465, 'السعودية', 'جدة', 'بريمان', '21.6501476', '39.2479409', 2, 13, 'بريمان', 1),
(466, 'السعودية', 'جدة', 'بنى مالك', '21.5314097', '39.219363799999996', 2, 13, 'بنى مالك', 1),
(467, 'السعودية', 'جدة', 'جوهرة جدة', '21.4717953', '39.197818600000005', 2, 13, 'جوهرة جدة', 1),
(468, 'السعودية', 'جدة', 'قويزة', '21.2854067', '39.23755069999993', 2, 13, 'قويزة', 1),
(469, 'السعودية', 'جدة', 'مخطط العزيزية', '21.5535624', '39.19337329999996', 2, 13, 'مخطط العزيزية', 1),
(470, 'السعودية', 'جدة', 'مخطط حي الحمدانية', '21.7506843', '39.19077370000002', 2, 13, 'مخطط حي الحمدانية', 1),
(471, 'السعودية', 'جدة', 'مخطط حي الصالحية', '21.761814', '39.22196220000001', 2, 13, 'مخطط حي الصالحية', 1),
(472, 'السعودية', 'جدة', 'مخطط حي شمال المطار الجديد', '21.2854067', '39.23755069999993', 2, 13, 'مخطط حي شمال المطار الجديد', 1),
(473, 'السعودية', 'جدة', 'مدائن آل فهد', '21.4677846', '39.22575210000002', 2, 13, 'مدائن آل فهد', 1),
(474, 'السعودية', 'جدة', 'مدينة السلطان', '21.6472894', '39.12761180000007', 2, 13, 'مدينة السلطان', 1),
(475, 'السعودية', 'جدة', 'مستودعات', '21.444761', '39.30862419999994', 2, 13, 'مستودعات', 1),
(476, 'السعودية', 'جدة', 'مشرفة', '21.5372013', '39.19857230000002', 2, 13, 'مشرفة', 1),
(477, 'السعودية', 'جدة', 'مطار الملك عبد العزيز الدولي', '21.6875237', '39.1437995', 2, 13, 'مطار الملك عبد العزيز الدولي', 1),
(478, 'السعودية', 'جدة', 'منطقة المستودعات', '21.444761', '39.30862419999994', 2, 13, 'منطقة المستودعات', 1),
(479, 'السعودية', 'الدمام', 'الاتصالات', '26.4131036', '50.086818799999946', 2, 16, 'الاتصالات', 1),
(480, 'السعودية', 'الدمام', 'الإسكان', '26.5171429', '49.97514879999994', 2, 16, 'الإسكان', 1),
(481, 'السعودية', 'الدمام', 'الأمانة', '26.3827198', '49.9700196', 2, 16, 'الأمانة', 1),
(482, 'السعودية', 'الدمام', 'الأمل', '26.3441599', '50.023898799999984', 2, 16, 'الأمل', 1),
(483, 'السعودية', 'الدمام', 'الأمير محمد بن سعود', '26.43931', '50.1179472', 2, 16, 'الأمير محمد بن سعود', 1),
(484, 'السعودية', 'الدمام', 'البادية', '26.4287777', '50.093242799999985', 2, 16, 'البادية', 1),
(485, 'السعودية', 'الدمام', 'البحيرة', '26.4677484', '50.06626619999997', 2, 16, 'البحيرة', 1),
(486, 'السعودية', 'الدمام', 'البديع', '26.4503955', '50.113804500000015', 2, 16, 'البديع', 1),
(487, 'السعودية', 'الدمام', 'البساتين', '26.3947503', '50.12408800000003', 2, 16, 'البساتين', 1),
(488, 'السعودية', 'الدمام', 'الجامعيين', '26.3960398', '50.098382600000036', 2, 16, 'الجامعيين', 1),
(489, 'السعودية', 'الدمام', 'الجلوية', '26.4366846', '50.072688200000016', 2, 16, 'الجلوية', 1),
(490, 'السعودية', 'الدمام', 'الجوهرة', '26.4646579', '50.0791107', 2, 16, 'الجوهرة', 1),
(491, 'السعودية', 'الدمام', 'الحسام', '26.3855162', '50.17038500000001', 2, 16, 'الحسام', 1),
(492, 'السعودية', 'الدمام', 'الحمراء', '26.4681444', '50.093242799999985', 2, 16, 'الحمراء', 1),
(493, 'السعودية', 'الدمام', 'الخالدية الجنوبية', '26.4035077', '50.165239199999974', 2, 16, 'الخالدية الجنوبية', 1),
(494, 'السعودية', 'الدمام', 'الخالدية الشمالية', '26.4147573', '50.1472321', 2, 16, 'الخالدية الشمالية', 1),
(495, 'السعودية', 'الدمام', 'الخليج (الباطنية)', '0', '0', 2, 16, 'الخليج (الباطنية)', 1),
(496, 'السعودية', 'الدمام', 'الدانة', '26.4665742', '50.042511099999956', 2, 16, 'الدانة', 1),
(497, 'السعودية', 'الدمام', 'الدواسر', '26.4453095', '50.10223769999993', 2, 16, 'الدواسر', 1),
(498, 'السعودية', 'الدمام', 'الرابية', '26.4635701', '50.03352510000002', 2, 16, 'الرابية', 1),
(499, 'السعودية', 'الدمام', 'الراكة الشمالية', '26.3677178', '50.19097290000002', 2, 16, 'الراكة الشمالية', 1),
(500, 'السعودية', 'الدمام', 'الربيع', '26.4404973', '50.10994870000002', 2, 16, 'الربيع', 1),
(501, 'السعودية', 'الدمام', 'الروابي', '26.3767671', '50.12923030000002', 2, 16, 'الروابي', 1),
(502, 'السعودية', 'الدمام', 'الروضة', '26.4039554', '50.077826200000004', 2, 16, 'الروضة', 1),
(503, 'السعودية', 'الدمام', 'الريان (الأندلس)', '26.3875639', '50.09043180000003', 2, 16, 'الريان (الأندلس)', 1),
(504, 'السعودية', 'الدمام', 'الزهراء', '26.41531', '50.116705300000035', 2, 16, 'الزهراء', 1),
(505, 'السعودية', 'الدمام', 'الزهور', '26.4533824', '50.093242799999985', 2, 16, 'الزهور', 1),
(506, 'السعودية', 'الدمام', 'السلام', '26.4518896', '50.103522800000064', 2, 16, 'السلام', 1),
(507, 'السعودية', 'الدمام', 'السليمانية', '25.8834744', '49.81972040000005', 2, 16, 'السليمانية', 1),
(508, 'السعودية', 'الدمام', 'السمحانية', '26.3656842', '50.09059279999997', 2, 16, 'السمحانية', 1),
(509, 'السعودية', 'الدمام', 'السوق', '26.4403882', '50.10223769999993', 2, 16, 'السوق', 1),
(510, 'السعودية', 'الدمام', 'السيف', '26.3859132', '50.2012694', 2, 16, 'السيف', 1),
(511, 'السعودية', 'الدمام', 'الشاطيء الشرقي', '26.4703026', '50.12923030000002', 2, 16, 'الشاطيء الشرقي', 1),
(512, 'السعودية', 'الدمام', 'الشاطيء الغربي', '26.4668746', '50.11894600000005', 2, 16, 'الشاطيء الغربي', 1),
(513, 'السعودية', 'الدمام', 'الشروق', '0', '0', 2, 16, 'الشروق', 1),
(514, 'السعودية', 'الدمام', 'الشعلة (الفاخرية)', '26.3656842', '50.09059279999997', 2, 16, 'الشعلة (الفاخرية)', 1),
(515, 'السعودية', 'الدمام', 'الصدفة', '26.3713251', '50.21671739999999', 2, 16, 'الصدفة', 1),
(516, 'السعودية', 'الدمام', 'الصفا', '26.3857158', '50.185825199999954', 2, 16, 'الصفا', 1),
(517, 'السعودية', 'الدمام', 'الصناعية', '26.4523604', '50.023898799999984', 2, 16, 'الصناعية', 1),
(518, 'السعودية', 'الدمام', 'الضاحية (الملك فهد)', '26.4452585', '49.98797390000004', 2, 16, 'الضاحية (الملك فهد)', 1),
(519, 'السعودية', 'الدمام', 'الضباب', '26.4249079', '50.05214049999995', 2, 16, 'الضباب', 1),
(520, 'السعودية', 'الدمام', 'الطبيشي', '26.432474', '50.122802399999955', 2, 16, 'الطبيشي', 1),
(521, 'السعودية', 'الدمام', 'العدامة', '26.4322039', '50.103522800000064', 2, 16, 'العدامة', 1),
(522, 'السعودية', 'الدمام', 'العروبة', '0', '0', 2, 16, 'العروبة', 1),
(523, 'السعودية', 'الدمام', 'العزيزية', '26.4563641', '50.072688200000016', 2, 16, 'العزيزية', 1),
(524, 'السعودية', 'الدمام', 'العمامرة', '26.4446442', '50.11316190000002', 2, 16, 'العمامرة', 1),
(525, 'السعودية', 'الدمام', 'العنود', '26.4465245', '50.072688200000016', 2, 16, 'العنود', 1),
(526, 'السعودية', 'الدمام', 'الغنام', '0', '0', 2, 16, 'الغنام', 1),
(527, 'السعودية', 'الدمام', 'الفردوس', '26.3782707', '50.11894600000005', 2, 16, 'الفردوس', 1),
(528, 'السعودية', 'الدمام', 'الفرسان', '26.3547117', '49.959762299999966', 2, 16, 'الفرسان', 1),
(529, 'السعودية', 'الدمام', 'الفيحاء', '26.4411534', '50.041869200000065', 2, 16, 'الفيحاء', 1),
(530, 'السعودية', 'الدمام', 'الفيصلية', '26.3972136', '50.064981999999986', 2, 16, 'الفيصلية', 1),
(531, 'السعودية', 'الدمام', 'القادسية', '26.4202106', '50.067550600000004', 2, 16, 'القادسية', 1),
(532, 'السعودية', 'الدمام', 'القزاز', '26.4353574', '50.09452770000007', 2, 16, 'القزاز', 1),
(533, 'السعودية', 'الدمام', 'المارينا (الفنار)', '26.4122557', '50.206418299999996', 2, 16, 'المارينا (الفنار)', 1);
INSERT INTO `am_districts` (`id`, `country`, `city`, `name`, `lat`, `lng`, `country_id`, `city_id`, `geo_name`, `status`) VALUES
(534, 'السعودية', 'الدمام', 'المحمدية', '26.4561374', '50.05727669999999', 2, 16, 'المحمدية', 1),
(535, 'السعودية', 'الدمام', 'المريكبات', '26.4125171', '50.103522800000064', 2, 16, 'المريكبات', 1),
(536, 'السعودية', 'الدمام', 'المزروعية', '26.4439776', '50.12408800000003', 2, 16, 'المزروعية', 1),
(537, 'السعودية', 'الدمام', 'المنار', '26.3770981', '50.034166899999946', 2, 16, 'المنار', 1),
(538, 'السعودية', 'الدمام', 'الميناء السكني', '26.4044896', '50.177461300000004', 2, 16, 'الميناء السكني', 1),
(539, 'السعودية', 'الدمام', 'الناصرية', '26.4234849', '50.12537350000002', 2, 16, 'الناصرية', 1),
(540, 'السعودية', 'الدمام', 'النخيل', '26.4385647', '50.089388299999996', 2, 16, 'النخيل', 1),
(541, 'السعودية', 'الدمام', 'الندى', '26.3744298', '50.077826200000004', 2, 16, 'الندى', 1),
(542, 'السعودية', 'الدمام', 'النزهة', '26.3945403', '50.10866340000007', 2, 16, 'النزهة', 1),
(543, 'السعودية', 'الدمام', 'النور', '26.4293734', '50.02133200000003', 2, 16, 'النور', 1),
(544, 'السعودية', 'الدمام', 'النورس (بترومين)', '0', '0', 2, 16, 'النورس (بترومين)', 1),
(545, 'السعودية', 'الدمام', 'الهضبة', '26.3428254', '49.931563900000015', 2, 16, 'الهضبة', 1),
(546, 'السعودية', 'الدمام', 'الواحة', '26.3795631', '50.093242799999985', 2, 16, 'الواحة', 1),
(547, 'السعودية', 'الدمام', 'الياسمين', '26.4099266', '50.093981600000006', 2, 16, 'الياسمين', 1),
(548, 'السعودية', 'الدمام', 'اليمامة', '0', '0', 2, 16, 'اليمامة', 1),
(549, 'السعودية', 'الدمام', 'إسكان الحرس الوطني', '26.4044896', '50.177461300000004', 2, 16, 'إسكان الحرس الوطني', 1),
(550, 'السعودية', 'الدمام', 'أبراج السيف', '26.3669203', '50.18301759999997', 2, 16, 'أبراج السيف', 1),
(551, 'السعودية', 'الدمام', 'أحد (71)', '26.5591148', '49.959766599999966', 2, 16, 'أحد (71)', 1),
(552, 'السعودية', 'الدمام', 'بدر (91)', '26.343595', '50.13541370000007', 2, 16, 'بدر (91)', 1),
(553, 'السعودية', 'الدمام', 'بن خلدون', '26.4222795', '50.09774010000001', 2, 16, 'بن خلدون', 1),
(554, 'السعودية', 'الدمام', 'جوهرة المطار', '26.3757428', '49.94181639999999', 2, 16, 'جوهرة المطار', 1),
(555, 'السعودية', 'الدمام', 'درة الكورنيش', '0', '0', 2, 16, 'درة الكورنيش', 1),
(556, 'السعودية', 'الدمام', 'شورلين', '0', '0', 2, 16, 'شورلين', 1),
(557, 'السعودية', 'الدمام', 'طيبة', '26.3560324', '50.05214049999995', 2, 16, 'طيبة', 1),
(558, 'السعودية', 'الدمام', 'عبد الله فؤاد', '0', '0', 2, 16, 'عبد الله فؤاد', 1),
(559, 'السعودية', 'الدمام', 'غرناطة (75)', '26.4202488', '50.08066980000001', 2, 16, 'غرناطة (75)', 1),
(560, 'السعودية', 'الدمام', 'قصر الخليج', '26.363705', '50.13437320000003', 2, 16, 'قصر الخليج', 1),
(561, 'السعودية', 'الدمام', 'مدينة العمال', '26.4248755', '50.10737819999997', 2, 16, 'مدينة العمال', 1),
(562, 'السعودية', 'الدمام', 'هجر (نزهة الخليج)', '26.3691503', '50.10189409999998', 2, 16, 'هجر (نزهة الخليج)', 1),
(563, 'السعودية', 'الخبر', 'الأندلس', '26.3216696', '50.185825199999954', 2, 67, 'الأندلس', 1),
(564, 'السعودية', 'الخبر', 'البستان', '26.3219968', '50.21285499999999', 2, 67, 'البستان', 1),
(565, 'السعودية', 'الخبر', 'البندرية', '26.3096757', '50.21285499999999', 2, 67, 'البندرية', 1),
(566, 'السعودية', 'الخبر', 'الثقبة', '26.2740986', '50.19097290000002', 2, 67, 'الثقبة', 1),
(567, 'السعودية', 'الخبر', 'الجسر‎', '26.2101997', '50.206418299999996', 2, 67, 'الجسر‎', 1),
(568, 'السعودية', 'الخبر', 'الجوهرة', '26.3300076', '50.19612089999998', 2, 67, 'الجوهرة', 1),
(569, 'السعودية', 'الخبر', 'الحزام الأخضر', '26.3078796', '50.19998220000002', 2, 67, 'الحزام الأخضر', 1),
(570, 'السعودية', 'الخبر', 'الحزام الذهبي', '26.3169296', '50.2012694', 2, 67, 'الحزام الذهبي', 1),
(571, 'السعودية', 'الخبر', 'الخبر الجنوبية', '26.2742785', '50.206418299999996', 2, 67, 'الخبر الجنوبية', 1),
(572, 'السعودية', 'الخبر', 'الخبر الشمالية', '26.2907674', '50.21156759999997', 2, 67, 'الخبر الشمالية', 1),
(573, 'السعودية', 'الخبر', 'الخزامى', '26.2083293', '50.185825199999954', 2, 67, 'الخزامى', 1),
(574, 'السعودية', 'الخبر', 'الراكة', '26.2737662', '50.21233099999995', 2, 67, 'الراكة', 1),
(575, 'السعودية', 'الخبر', 'العقربية', '26.2987376', '50.19097290000002', 2, 67, 'العقربية', 1),
(576, 'السعودية', 'الخبر', 'العليا', '26.2985518', '50.17553129999999', 2, 67, 'العليا', 1),
(577, 'السعودية', 'الخبر', 'الكورنيش', '26.328676', '50.221867599999996', 2, 67, 'الكورنيش', 1),
(578, 'السعودية', 'الخبر', 'الهدا', '26.3101574', '50.184538400000065', 2, 67, 'الهدا', 1),
(579, 'السعودية', 'الخبر', 'اليرموك', '26.3122314', '50.22057999999993', 2, 67, 'اليرموك', 1),
(580, 'السعودية', 'الخبر', 'إسكان الخبر', '26.2727854', '50.20641009999997', 2, 67, 'إسكان الخبر', 1),
(581, 'السعودية', 'الخبر', 'قرطبة', '26.3413774', '50.185825199999954', 2, 67, 'قرطبة', 1),
(582, 'السعودية', 'الجبيل', 'الاحياء الشرقية', '26.9597709', '49.56874160000007', 2, 66, 'الاحياء الشرقية', 1),
(583, 'السعودية', 'الجبيل', 'الخليج', '27.1144734', '49.56746799999996', 2, 66, 'الخليج', 1),
(584, 'السعودية', 'الجبيل', 'المنتزهات ', '27.1564479', '49.5358622', 2, 66, 'المنتزهات ', 1),
(585, 'السعودية', 'الجبيل', 'الوجهة البحرية ', '26.9597709', '49.56874160000007', 2, 66, 'الوجهة البحرية ', 1),
(586, 'السعودية', 'الجبيل', 'حي الحويلات', '27.0950312', '49.57128890000001', 2, 66, 'حي الحويلات', 1),
(587, 'السعودية', 'الجبيل', 'حي الشاطئ', '27.0791039', '49.5853012', 2, 66, 'حي الشاطئ', 1),
(588, 'السعودية', 'الجبيل', 'حي اللؤلؤ', '27.0870194', '49.576383899999996', 2, 66, 'حي اللؤلؤ', 1),
(589, 'السعودية', 'الجبيل', 'حي ينبع', '27.1559606', '49.53563650000001', 2, 66, 'حي ينبع', 1),
(590, 'السعودية', 'الجبيل', 'رموز الخارطة', '26.9597709', '49.56874160000007', 2, 66, 'رموز الخارطة', 1),
(591, 'السعودية', 'الجبيل', 'محلة الاحساء', '27.1288275', '49.55600670000001', 2, 66, 'محلة الاحساء', 1),
(592, 'السعودية', 'الجبيل', 'محلة الاندلس', '27.1395487', '49.53054509999993', 2, 66, 'محلة الاندلس', 1),
(593, 'السعودية', 'الجبيل', 'محلة الحجاز', '27.1581805', '49.56424530000004', 2, 66, 'محلة الحجاز', 1),
(594, 'السعودية', 'الجبيل', 'محلة الفاروق', '27.1280201', '49.52545409999993', 2, 66, 'محلة الفاروق', 1),
(595, 'السعودية', 'الجبيل', 'محلة الفردوس', '27.1088902', '49.540728400000035', 2, 66, 'محلة الفردوس', 1),
(596, 'السعودية', 'الجبيل', 'محلة الفيحاء', '27.1172973', '49.55091349999998', 2, 66, 'محلة الفيحاء', 1),
(597, 'السعودية', 'الجبيل', 'محلة القدس', '27.1276446', '49.54200149999997', 2, 66, 'محلة القدس', 1),
(598, 'السعودية', 'الجبيل', 'محلة سدير', '27.1323512', '49.56619439999997', 2, 66, 'محلة سدير', 1),
(599, 'السعودية', 'الجبيل', 'محلة مكة ', '27.1453452', '49.55505070000004', 2, 66, 'محلة مكة ', 1),
(600, 'السعودية', 'الجبيل', 'محلة نجد', '27.144838', '49.545820700000036', 2, 66, 'محلة نجد', 1),
(601, 'السعودية', 'المدينة المنوّرة', 'ابيار علي', '24.4135693', '39.54546949999997', 2, 22, 'ابيار علي', 1),
(602, 'السعودية', 'المدينة المنوّرة', 'الاغوات', '0', '0', 2, 22, 'الاغوات', 1),
(603, 'السعودية', 'المدينة المنوّرة', 'البحر', '24.4515191', '39.61696949999998', 2, 22, 'البحر', 1),
(604, 'السعودية', 'المدينة المنوّرة', 'التاجوري', '0', '0', 2, 22, 'التاجوري', 1),
(605, 'السعودية', 'المدينة المنوّرة', 'الجبور', '0', '0', 2, 22, 'الجبور', 1),
(606, 'السعودية', 'المدينة المنوّرة', 'الحرة الشرقية', '0', '0', 2, 22, 'الحرة الشرقية', 1),
(607, 'السعودية', 'المدينة المنوّرة', 'الحرة الغربية', '0', '0', 2, 22, 'الحرة الغربية', 1),
(608, 'السعودية', 'المدينة المنوّرة', 'الخانسة', '21.4551957', '39.80775599999993', 2, 22, 'الخانسة', 1),
(609, 'السعودية', 'المدينة المنوّرة', 'الرصيفة', '21.4366203', '39.81068729999993', 2, 22, 'الرصيفة', 1),
(610, 'السعودية', 'المدينة المنوّرة', 'الزاهر', '21.4466104', '39.808673', 2, 22, 'الزاهر', 1),
(611, 'السعودية', 'المدينة المنوّرة', 'الساحة', '21.4464606', '39.80883389999997', 2, 22, 'الساحة', 1),
(612, 'السعودية', 'المدينة المنوّرة', 'السبهاني', '0', '0', 2, 22, 'السبهاني', 1),
(613, 'السعودية', 'المدينة المنوّرة', 'الستين', '24.4631151', '39.61096470000007', 2, 22, 'الستين', 1),
(614, 'السعودية', 'المدينة المنوّرة', 'الشرائع', '0', '0', 2, 22, 'الشرائع', 1),
(615, 'السعودية', 'المدينة المنوّرة', 'الشرقية', '27.0020287', '49.635909500000025', 2, 22, 'الشرقية', 1),
(616, 'السعودية', 'المدينة المنوّرة', 'العباس', '24.4255213', '39.59302070000001', 2, 22, 'العباس', 1),
(617, 'السعودية', 'المدينة المنوّرة', 'العتيبية', '21.4667902', '39.80159630000003', 2, 22, 'العتيبية', 1),
(618, 'السعودية', 'المدينة المنوّرة', 'العزيزية', '24.4216149', '39.5019638', 2, 22, 'العزيزية', 1),
(619, 'السعودية', 'المدينة المنوّرة', 'العنباس', '24.4719297', '39.58726939999997', 2, 22, 'العنباس', 1),
(620, 'السعودية', 'المدينة المنوّرة', 'العنبرية', '24.4621409', '39.60181829999999', 2, 22, 'العنبرية', 1),
(621, 'السعودية', 'المدينة المنوّرة', 'العوالي', '24.5753282', '46.60294099999999', 2, 22, 'العوالي', 1),
(622, 'السعودية', 'المدينة المنوّرة', 'العيون', '24.5198736', '39.59243570000001', 2, 22, 'العيون', 1),
(623, 'السعودية', 'المدينة المنوّرة', 'الكعكية', '0', '0', 2, 22, 'الكعكية', 1),
(624, 'السعودية', 'المدينة المنوّرة', 'المستراح', '24.4930713', '39.60827710000001', 2, 22, 'المستراح', 1),
(625, 'السعودية', 'المدينة المنوّرة', 'المسفلة', '21.4366203', '39.81068729999993', 2, 22, 'المسفلة', 1),
(626, 'السعودية', 'المدينة المنوّرة', 'الملاوي', '0', '0', 2, 22, 'الملاوي', 1),
(627, 'السعودية', 'المدينة المنوّرة', 'المناخة', '24.4695899', '39.60470380000004', 2, 22, 'المناخة', 1),
(628, 'السعودية', 'المدينة المنوّرة', 'النزهة', '21.6209293', '39.154462100000046', 2, 22, 'النزهة', 1),
(629, 'السعودية', 'المدينة المنوّرة', 'النكاسه', '0', '0', 2, 22, 'النكاسه', 1),
(630, 'السعودية', 'المدينة المنوّرة', 'النورية', '0', '0', 2, 22, 'النورية', 1),
(631, 'السعودية', 'المدينة المنوّرة', 'باب الشامي', '0', '0', 2, 22, 'باب الشامي', 1),
(632, 'السعودية', 'المدينة المنوّرة', 'باب المجيدي', '0', '0', 2, 22, 'باب المجيدي', 1),
(633, 'السعودية', 'المدينة المنوّرة', 'بو طبنجة', '0', '0', 2, 22, 'بو طبنجة', 1),
(634, 'السعودية', 'المدينة المنوّرة', 'ريع زاخر', '21.4551957', '39.80775599999993', 2, 22, 'ريع زاخر', 1),
(635, 'السعودية', 'المدينة المنوّرة', 'شارع منصور', '30.5853428', '31.504526800000008', 2, 22, 'شارع منصور', 1),
(636, 'السعودية', 'المدينة المنوّرة', 'قباء', '24.4165986', '39.6214923', 2, 22, 'قباء', 1),
(637, 'السعودية', 'المدينة المنوّرة', 'كدي', '21.4366203', '39.81068729999993', 2, 22, 'كدي', 1),
(638, 'السعودية', 'الظهران', 'البندرية', '26.3096757', '50.21285499999999', 2, 23, 'البندرية', 1),
(639, 'السعودية', 'الظهران', 'الدانة', '26.3375746', '50.14466010000001', 2, 23, 'الدانة', 1),
(640, 'السعودية', 'الظهران', 'الدوحة', '26.3206386', '50.15414320000002', 2, 23, 'الدوحة', 1),
(641, 'السعودية', 'الظهران', 'الربوة', '26.3423004', '50.12923030000002', 2, 23, 'الربوة', 1),
(642, 'السعودية', 'القصيم', 'الاسياح', '26.813491', '44.19443269999999', 2, 70, 'الاسياح', 1),
(643, 'السعودية', 'القصيم', 'البدائع', '25.9811805', '43.73340889999997', 2, 70, 'البدائع', 1),
(644, 'السعودية', 'القصيم', 'البصر', '26.2959521', '43.86971010000002', 2, 70, 'البصر', 1),
(645, 'السعودية', 'القصيم', 'البكيرية', '26.1616245', '43.65672189999998', 2, 70, 'البكيرية', 1),
(646, 'السعودية', 'القصيم', 'الرس', '25.8517475', '43.52223129999993', 2, 70, 'الرس', 1),
(647, 'السعودية', 'القصيم', 'الشماسية', '26.3189107', '44.257377399999996', 2, 70, 'الشماسية', 1),
(648, 'السعودية', 'القصيم', 'القوارة', '26.7709451', '43.474109999999996', 2, 70, 'القوارة', 1),
(649, 'السعودية', 'القصيم', 'المذنب', '25.8568978', '44.22421059999999', 2, 70, 'المذنب', 1),
(650, 'السعودية', 'القصيم', 'النبهانية', '25.8579098', '43.06804910000005', 2, 70, 'النبهانية', 1),
(651, 'السعودية', 'القصيم', 'بريدة', '26.3592309', '43.98181199999999', 2, 70, 'بريدة', 1),
(652, 'السعودية', 'القصيم', 'دخنة', '25.3355648', '43.60873170000002', 2, 70, 'دخنة', 1),
(653, 'السعودية', 'القصيم', 'رياض الخبراء', '26.0533267', '43.5414667', 2, 70, 'رياض الخبراء', 1),
(654, 'السعودية', 'القصيم', 'ضربة', '0', '0', 2, 70, 'ضربة', 1),
(655, 'السعودية', 'القصيم', 'عقلة الصقور', '25.8310445', '42.18689900000004', 2, 70, 'عقلة الصقور', 1),
(656, 'السعودية', 'القصيم', 'عنيزة', '26.0833976', '43.96274919999996', 2, 70, 'عنيزة', 1),
(657, 'السعودية', 'القصيم', 'عيون الجواء', '26.5170934', '43.61833350000006', 2, 70, 'عيون الجواء', 1),
(658, 'السعودية', 'القصيم', 'قبة', '27.0234319', '44.07656910000003', 2, 70, 'قبة', 1),
(659, 'السعودية', 'الطائف', 'البهجة', '21.2603986', '40.38933369999995', 2, 71, 'البهجة', 1),
(660, 'السعودية', 'الطائف', 'الحلقة', '21.4372729', '40.512714200000005', 2, 71, 'الحلقة', 1),
(661, 'السعودية', 'الطائف', 'الحوية', '21.4235678', '40.49236080000003', 2, 71, 'الحوية', 1),
(662, 'السعودية', 'الطائف', 'الربوة الجديدة', '21.4372729', '40.512714200000005', 2, 71, 'الربوة الجديدة', 1),
(663, 'السعودية', 'الطائف', 'الريان ', '21.2855981', '40.42234229999997', 2, 71, 'الريان ', 1),
(664, 'السعودية', 'الطائف', 'الشرفية', '21.3605599', '40.41342480000003', 2, 71, 'الشرفية', 1),
(665, 'السعودية', 'الطائف', 'الشهداء الجنوبي', '21.2594695', '40.423616100000004', 2, 71, 'الشهداء الجنوبي', 1),
(666, 'السعودية', 'الطائف', 'الشهداء الشمالي', '21.2692833', '40.423616100000004', 2, 71, 'الشهداء الشمالي', 1),
(667, 'السعودية', 'الطائف', 'العزيزية ', '21.2801858', '40.40705439999999', 2, 71, 'العزيزية ', 1),
(668, 'السعودية', 'الطائف', 'العقيق ', '21.2884078', '40.40832850000004', 2, 71, 'العقيق ', 1),
(669, 'السعودية', 'الطائف', 'الفيصلية ', '21.303633', '40.423616100000004', 2, 71, 'الفيصلية ', 1),
(670, 'السعودية', 'الطائف', 'القطبية', '21.2830382', '40.44399329999999', 2, 71, 'القطبية', 1),
(671, 'السعودية', 'الطائف', 'القمرية', '21.2825363', '40.42871109999999', 2, 71, 'القمرية', 1),
(672, 'السعودية', 'الطائف', 'القـيم ', '21.2724983', '40.418266700000004', 2, 71, 'القـيم ', 1),
(673, 'السعودية', 'الطائف', 'المثناة ', '21.2610035', '40.39400069999999', 2, 71, 'المثناة ', 1),
(674, 'السعودية', 'الطائف', 'النزهة ', '21.2496559', '40.423616100000004', 2, 71, 'النزهة ', 1),
(675, 'السعودية', 'الطائف', 'النسيم', '21.2688224', '40.459271599999965', 2, 71, 'النسيم', 1),
(676, 'السعودية', 'الطائف', 'الوسام', '21.2169439', '40.375191900000004', 2, 71, 'الوسام', 1),
(677, 'السعودية', 'الطائف', 'الوشحاء', '21.2506692', '40.454179299999964', 2, 71, 'الوشحاء', 1),
(678, 'السعودية', 'الطائف', 'ام السباع', '21.4372729', '40.512714200000005', 2, 71, 'ام السباع', 1),
(679, 'السعودية', 'الطائف', 'بن بكر', '21.3545281', '40.50635450000004', 2, 71, 'بن بكر', 1),
(680, 'السعودية', 'الطائف', 'شبرا', '21.2820955', '40.41533579999998', 2, 71, 'شبرا', 1),
(681, 'السعودية', 'الطائف', 'شهار ', '21.2476805', '40.41342480000003', 2, 71, 'شهار ', 1),
(682, 'السعودية', 'الطائف', 'قروى ', '21.2758539', '40.375191900000004', 2, 71, 'قروى ', 1),
(683, 'السعودية', 'الطائف', 'مسرة ', '21.2982237', '40.40832850000004', 2, 71, 'مسرة ', 1),
(684, 'السعودية', 'الطائف', 'معشي ', '21.2865613', '40.40195760000006', 2, 71, 'معشي ', 1),
(685, 'السعودية', 'الاحساء', 'البطالية', '25.4336333', '49.62735789999999', 2, 72, 'البطالية', 1),
(686, 'السعودية', 'الاحساء', 'التويثير', '25.42268', '49.68730870000002', 2, 72, 'التويثير', 1),
(687, 'السعودية', 'الاحساء', 'الجسة', '25.3871522', '49.754985799999986', 2, 72, 'الجسة', 1),
(688, 'السعودية', 'الاحساء', 'الجفر', '25.377098', '49.72433000000001', 2, 72, 'الجفر', 1),
(689, 'السعودية', 'الاحساء', 'الحليلة', '25.4289865', '49.65796350000005', 2, 72, 'الحليلة', 1),
(690, 'السعودية', 'الاحساء', 'الرميلة', '25.4131833', '49.729438200000004', 2, 72, 'الرميلة', 1),
(691, 'السعودية', 'الاحساء', 'الساباط', '25.388491', '49.71411490000003', 2, 72, 'الساباط', 1),
(692, 'السعودية', 'الاحساء', 'الشعبة', '25.4744561', '49.617159600000036', 2, 72, 'الشعبة', 1),
(693, 'السعودية', 'الاحساء', 'الشقيق', '25.4814174', '49.575110100000074', 2, 72, 'الشقيق', 1),
(694, 'السعودية', 'الاحساء', 'الطرف', '25.3573732', '49.72448899999995', 2, 72, 'الطرف', 1),
(695, 'السعودية', 'الاحساء', 'العمران', '25.4163616', '49.71666849999997', 2, 72, 'العمران', 1),
(696, 'السعودية', 'الاحساء', 'العيون', '25.6212969', '49.57893160000003', 2, 72, 'العيون', 1),
(697, 'السعودية', 'الاحساء', 'الفضول', '25.3710876', '49.68730870000002', 2, 72, 'الفضول', 1),
(698, 'السعودية', 'الاحساء', 'القارة', '25.415248', '49.67965200000003', 2, 72, 'القارة', 1),
(699, 'السعودية', 'الاحساء', 'القرين', '25.489075', '49.60568850000004', 2, 72, 'القرين', 1),
(700, 'السعودية', 'الاحساء', 'الكلابية', '25.445337', '49.65541239999993', 2, 72, 'الكلابية', 1),
(701, 'السعودية', 'الاحساء', 'المبرز', '25.4051051', '49.54836709999995', 2, 72, 'المبرز', 1),
(702, 'السعودية', 'الاحساء', 'المركز', '25.3935211', '49.729438200000004', 2, 72, 'المركز', 1),
(703, 'السعودية', 'الاحساء', 'المطيرفي', '25.482034', '49.55473329999995', 2, 72, 'المطيرفي', 1),
(704, 'السعودية', 'الاحساء', 'المنصورة', '25.3938561', '49.66689310000004', 2, 72, 'المنصورة', 1),
(705, 'السعودية', 'الاحساء', 'المنيزلة', '25.3783094', '49.668168899999955', 2, 72, 'المنيزلة', 1),
(706, 'السعودية', 'الاحساء', 'الهفوف', '25.3141558', '49.62990769999999', 2, 72, 'الهفوف', 1),
(707, 'السعودية', 'الاحساء', 'جليجلة', '25.5025179', '49.599953899999946', 2, 72, 'جليجلة', 1),
(708, 'السعودية', 'الاحساء', 'قرية الجبيل', '27.1406862', '49.53723549999995', 2, 72, 'قرية الجبيل', 1),
(709, 'السعودية', 'عسير', ' بحر ابو سكينة', '18.3364492', '41.91468540000005', 2, 73, ' بحر ابو سكينة', 1),
(710, 'السعودية', 'عسير', 'ابها', '18.2464685', '42.51172380000003', 2, 73, 'ابها', 1),
(711, 'السعودية', 'عسير', 'احد رفيدة', '18.2121712', '42.84429130000001', 2, 73, 'احد رفيدة', 1),
(712, 'السعودية', 'عسير', 'البشاير', '19.7430897', '41.924608300000045', 2, 73, 'البشاير', 1),
(713, 'السعودية', 'عسير', 'الحرجة', '17.9203758', '43.37290329999996', 2, 73, 'الحرجة', 1),
(714, 'السعودية', 'عسير', 'الربوعة', '17.5775382', '43.32463729999995', 2, 73, 'الربوعة', 1),
(715, 'السعودية', 'عسير', 'المجاردة', '19.1284443', '41.924608300000045', 2, 73, 'المجاردة', 1),
(716, 'السعودية', 'عسير', 'النماص', '19.1134285', '42.16714830000001', 2, 73, 'النماص', 1),
(717, 'السعودية', 'عسير', 'بارق', '18.9305324', '41.929569000000015', 2, 73, 'بارق', 1),
(718, 'السعودية', 'عسير', 'بلقرن', '0', '0', 2, 73, 'بلقرن', 1),
(719, 'السعودية', 'عسير', 'بللسمر', '18.7925199', '42.255968499999994', 2, 73, 'بللسمر', 1),
(720, 'السعودية', 'عسير', 'بيشة', '19.9763524', '42.590167199999996', 2, 73, 'بيشة', 1),
(721, 'السعودية', 'عسير', 'تثليث', '19.5342205', '43.50298840000005', 2, 73, 'تثليث', 1),
(722, 'السعودية', 'عسير', 'تنومة', '18.9290182', '42.17702459999998', 2, 73, 'تنومة', 1),
(723, 'السعودية', 'عسير', 'خميس مشيط', '18.3093394', '42.7662325', 2, 73, 'خميس مشيط', 1),
(724, 'السعودية', 'عسير', 'رجال المع', '0', '0', 2, 73, 'رجال المع', 1),
(725, 'السعودية', 'عسير', 'سراة عبيدة', '18.0993174', '43.11656210000001', 2, 73, 'سراة عبيدة', 1),
(726, 'السعودية', 'عسير', 'طريب', '18.5587398', '43.20860849999997', 2, 73, 'طريب', 1),
(727, 'السعودية', 'عسير', 'ظهران الجنوب', '17.6652253', '43.517421300000024', 2, 73, 'ظهران الجنوب', 1),
(728, 'السعودية', 'عسير', 'محايل', '18.5473952', '42.05343979999998', 2, 73, 'محايل', 1),
(729, 'السعودية', 'عسير', 'وادي بن هشبل', '18.5827935', '42.66849239999999', 2, 73, 'وادي بن هشبل', 1),
(730, 'السعودية', 'جازان', 'ابو عريش', '16.9692482', '42.84429130000001', 2, 207, 'ابو عريش', 1),
(731, 'السعودية', 'جازان', 'احد المسارحة', '16.7075151', '42.95142850000002', 2, 207, 'احد المسارحة', 1),
(732, 'السعودية', 'جازان', 'الخوبة', '16.7816991', '43.21586819999993', 2, 207, 'الخوبة', 1),
(733, 'السعودية', 'جازان', 'الداير', '17.3392252', '43.13110689999996', 2, 207, 'الداير', 1),
(734, 'السعودية', 'جازان', 'الدرب', '17.7336268', '42.26582819999999', 2, 207, 'الدرب', 1),
(735, 'السعودية', 'جازان', 'السهي', '16.5012662', '42.75524599999994', 2, 207, 'السهي', 1),
(736, 'السعودية', 'جازان', 'الطوال', '16.5279691', '42.96845229999997', 2, 207, 'الطوال', 1),
(737, 'السعودية', 'جازان', 'العارضة', '17.0378768', '43.048630900000035', 2, 207, 'العارضة', 1),
(738, 'السعودية', 'جازان', 'العيدابي', '17.2376555', '42.93926510000006', 2, 207, 'العيدابي', 1),
(739, 'السعودية', 'جازان', 'الموسم', '16.4200896', '42.82234930000004', 2, 207, 'الموسم', 1),
(740, 'السعودية', 'جازان', 'بيش', '17.374003', '42.53625009999996', 2, 207, 'بيش', 1),
(741, 'السعودية', 'جازان', 'شقيق', '17.7198733', '42.028688500000044', 2, 207, 'شقيق', 1),
(742, 'السعودية', 'جازان', 'صامطة', '16.5970442', '42.93915770000001', 2, 207, 'صامطة', 1),
(743, 'السعودية', 'جازان', 'صبيا', '17.1547981', '42.62689690000002', 2, 207, 'صبيا', 1),
(744, 'السعودية', 'جازان', 'ضمد', '17.1090117', '42.77599639999994', 2, 207, 'ضمد', 1),
(745, 'السعودية', 'جازان', 'فرسان', '16.701895', '42.12098400000002', 2, 207, 'فرسان', 1),
(746, 'السعودية', 'جازان', 'فيفاء', '17.2472916', '43.10686320000002', 2, 207, 'فيفاء', 1),
(747, 'السعودية', 'جازان', 'هروب', '17.4350092', '42.88571179999997', 2, 207, 'هروب', 1),
(748, 'السعودية', 'جازان', 'وادي جازان', '17.0166667', '42.56666670000004', 2, 207, 'وادي جازان', 1),
(749, 'السعودية', 'نجران', 'الخرخير', '17.5656036', '44.228944100000035', 2, 208, 'الخرخير', 1),
(750, 'السعودية', 'نجران', 'الوديعة', '17.0853697', '47.09724240000003', 2, 208, 'الوديعة', 1),
(751, 'السعودية', 'نجران', 'بدر الجنوب', '17.8802883', '43.7190392', 2, 208, 'بدر الجنوب', 1),
(752, 'السعودية', 'نجران', 'ثار', '17.9809401', '44.10553720000007', 2, 208, 'ثار', 1),
(753, 'السعودية', 'نجران', 'حبونا', '17.8411031', '44.024675900000034', 2, 208, 'حبونا', 1),
(754, 'السعودية', 'نجران', 'خباش', '17.557546', '44.74752079999996', 2, 208, 'خباش', 1),
(755, 'السعودية', 'نجران', 'شرورة', '17.4850321', '47.116723699999966', 2, 208, 'شرورة', 1),
(756, 'السعودية', 'نجران', 'يدمه', '18.5315621', '44.228944100000035', 2, 208, 'يدمه', 1),
(757, 'السعودية', 'تبوك', 'ابو سبعة', '28.3658598', '36.53985250000005', 2, 209, 'ابو سبعة', 1),
(758, 'السعودية', 'تبوك', 'الاخضر', '28.3995005', '36.53232779999996', 2, 209, 'الاخضر', 1),
(759, 'السعودية', 'تبوك', 'الاشرفية', '28.3835079', '36.56619079999996', 2, 209, 'الاشرفية', 1),
(760, 'السعودية', 'تبوك', 'الاندليس', '27.1512682', '49.56033890000003', 2, 209, 'الاندليس', 1),
(761, 'السعودية', 'تبوك', 'البساتين', '28.3675534', '36.556737099999964', 2, 209, 'البساتين', 1),
(762, 'السعودية', 'تبوك', 'البوادي', '26.2421948', '36.451824999999985', 2, 209, 'البوادي', 1),
(763, 'السعودية', 'تبوك', 'التعاون', '24.7773517', '46.72047079999993', 2, 209, 'التعاون', 1),
(764, 'السعودية', 'تبوك', 'الحمراء', '24.7773517', '46.72047079999993', 2, 209, 'الحمراء', 1),
(765, 'السعودية', 'تبوك', 'الخالدية', '28.3767903', '36.56146409999997', 2, 209, 'الخالدية', 1),
(766, 'السعودية', 'تبوك', 'الرابية', '28.4657458', '36.55268509999996', 2, 209, 'الرابية', 1),
(767, 'السعودية', 'تبوك', 'الراقي', '28.3835079', '36.56619079999996', 2, 209, 'الراقي', 1),
(768, 'السعودية', 'تبوك', 'الربوة', '27.6244429', '38.52834370000005', 2, 209, 'الربوة', 1),
(769, 'السعودية', 'تبوك', 'الربيع', '28.4004617', '36.5762148', 2, 209, 'الربيع', 1),
(770, 'السعودية', 'تبوك', 'الروبعيات', '28.3835079', '36.56619079999996', 2, 209, 'الروبعيات', 1),
(771, 'السعودية', 'تبوك', 'الروضة', '28.4053025', '36.520261600000026', 2, 209, 'الروضة', 1),
(772, 'السعودية', 'تبوك', 'الريان', '24.7008587', '46.75222680000002', 2, 209, 'الريان', 1),
(773, 'السعودية', 'تبوك', 'السعادة', '25.0313608', '37.259280200000035', 2, 209, 'السعادة', 1),
(774, 'السعودية', 'تبوك', 'السلام', '28.4120457', '36.612091899999996', 2, 209, 'السلام', 1),
(775, 'السعودية', 'تبوك', 'السلمان', '28.3657685', '36.559375000000045', 2, 209, 'السلمان', 1),
(776, 'السعودية', 'تبوك', 'السليمانية', '28.4053311', '36.5729427', 2, 209, 'السليمانية', 1),
(777, 'السعودية', 'تبوك', 'الشفا', '31.3315296', '37.34184529999993', 2, 209, 'الشفا', 1),
(778, 'السعودية', 'تبوك', 'الشيخ', '28.3692281', '36.55133439999997', 2, 209, 'الشيخ', 1),
(779, 'السعودية', 'تبوك', 'الصالحية', '28.3835079', '36.56619079999996', 2, 209, 'الصالحية', 1),
(780, 'السعودية', 'تبوك', 'الصفا', '26.2548621', '36.44996279999998', 2, 209, 'الصفا', 1),
(781, 'السعودية', 'تبوك', 'الصناعية', '28.3851744', '36.54660680000006', 2, 209, 'الصناعية', 1),
(782, 'السعودية', 'تبوك', 'العزيزية الجديدة', '28.3835119', '36.57429300000001', 2, 209, 'العزيزية الجديدة', 1),
(783, 'السعودية', 'تبوك', 'العزيزية القديمة', '28.3893827', '36.565515600000026', 2, 209, 'العزيزية القديمة', 1),
(784, 'السعودية', 'تبوك', 'العليا', '28.384355', '36.583744499999966', 2, 209, 'العليا', 1),
(785, 'السعودية', 'تبوك', 'العوايشة', '28.3835079', '36.56619079999996', 2, 209, 'العوايشة', 1),
(786, 'السعودية', 'تبوك', 'العين', '25.0243704', '38.09024950000003', 2, 209, 'العين', 1),
(787, 'السعودية', 'تبوك', 'الفيصلية الجنوبية', '28.388549', '36.57834379999997', 2, 209, 'الفيصلية الجنوبية', 1),
(788, 'السعودية', 'تبوك', 'الفيصلية الشمالية', '28.4044834', '36.55133439999997', 2, 209, 'الفيصلية الشمالية', 1),
(789, 'السعودية', 'تبوك', 'القادسية', '28.3956306', '36.564739799999984', 2, 209, 'القادسية', 1),
(790, 'السعودية', 'تبوك', 'القدس', '27.3475543', '35.69211150000001', 2, 209, 'القدس', 1),
(791, 'السعودية', 'تبوك', 'المدينة الجامعية', '28.3835079', '36.56619079999996', 2, 209, 'المدينة الجامعية', 1),
(792, 'السعودية', 'تبوك', 'المروج الاول', '28.3835079', '36.56619079999996', 2, 209, 'المروج الاول', 1),
(793, 'السعودية', 'تبوك', 'المروج الثاني', '28.3835079', '36.56619079999996', 2, 209, 'المروج الثاني', 1),
(794, 'السعودية', 'تبوك', 'المصيف', '28.4506367', '36.52836879999995', 2, 209, 'المصيف', 1),
(795, 'السعودية', 'تبوك', 'المنتزه', '28.3704948', '36.56146409999997', 2, 209, 'المنتزه', 1),
(796, 'السعودية', 'تبوك', 'المنشية الجديدة', '28.3835079', '36.56619079999996', 2, 209, 'المنشية الجديدة', 1),
(797, 'السعودية', 'تبوك', 'المنشية القديمة ', '28.3835079', '36.56619079999996', 2, 209, 'المنشية القديمة ', 1),
(798, 'السعودية', 'تبوك', 'المهرجان', '28.4002946', '36.56889160000003', 2, 209, 'المهرجان', 1),
(799, 'السعودية', 'تبوك', 'النخيل', '29.2993331', '34.94911209999998', 2, 209, 'النخيل', 1),
(800, 'السعودية', 'تبوك', 'النزهة', '24.7773517', '46.72047079999993', 2, 209, 'النزهة', 1),
(801, 'السعودية', 'تبوك', 'النظيم', '28.3835079', '36.56619079999996', 2, 209, 'النظيم', 1),
(802, 'السعودية', 'تبوك', 'الهضيبة', '28.3700801', '36.56889160000003', 2, 209, 'الهضيبة', 1),
(803, 'السعودية', 'تبوك', 'الورود', '28.4120457', '36.57969400000002', 2, 209, 'الورود', 1),
(804, 'السعودية', 'تبوك', 'اليرموك', '24.8056052', '46.76251709999997', 2, 209, 'اليرموك', 1),
(805, 'السعودية', 'تبوك', 'رحيل', '28.3793016', '36.55133439999997', 2, 209, 'رحيل', 1),
(806, 'السعودية', 'تبوك', 'غرناطة', '24.7773517', '46.72047079999993', 2, 209, 'غرناطة', 1),
(807, 'السعودية', 'تبوك', 'قرطبة', '24.7773517', '46.72047079999993', 2, 209, 'قرطبة', 1),
(808, 'السعودية', 'تبوك', 'كريم', '28.3717398', '36.54322969999998', 2, 209, 'كريم', 1),
(809, 'السعودية', 'المنطقة الشمالية', 'الخفجي', '0', '0', 2, 210, 'الخفجي', 1),
(810, 'السعودية', 'المنطقة الشمالية', 'القيصومه', '0', '0', 2, 210, 'القيصومه', 1),
(811, 'السعودية', 'المنطقة الشمالية', 'حايل', '0', '0', 2, 210, 'حايل', 1),
(812, 'السعودية', 'المنطقة الشمالية', 'حفر الباطن', '0', '0', 2, 210, 'حفر الباطن', 1),
(813, 'السعودية', 'المنطقة الشمالية', 'رفحا', '0', '0', 2, 210, 'رفحا', 1),
(814, 'السعودية', 'المنطقة الشمالية', 'سكاكا الجوف', '29.87800309999999', '40.10430569999994', 2, 210, 'سكاكا الجوف', 1),
(815, 'السعودية', 'المنطقة الشمالية', 'طريف ', '24.0260564', '53.75861199999997', 2, 210, 'طريف ', 1),
(816, 'السعودية', 'المنطقة الشمالية', 'عرعر ', '30.9507661', '41.03467660000001', 2, 210, 'عرعر ', 1),
(817, 'الإمارات', 'دبي', 'البراحة ', '25.2819897', '55.31849639999996', 1, 17, 'البراحة ', 1),
(818, 'الإمارات', 'دبي', 'البرشاء ', '25.0952928', '55.19554449999998', 1, 17, 'البرشاء ', 1),
(819, 'الإمارات', 'دبي', 'البطين', '25.2275804', '55.175012100000004', 1, 17, 'البطين', 1),
(820, 'الإمارات', 'دبي', 'الجي بي آر', '25.0769441', '55.13413460000004', 1, 17, 'الجي بي آر', 1),
(821, 'الإمارات', 'دبي', 'الحمرية ', '25.2601903', '55.304672799999935', 1, 17, 'الحمرية ', 1),
(822, 'الإمارات', 'دبي', 'الخوانيج ', '25.2130291', '55.55365389999997', 1, 17, 'الخوانيج ', 1),
(823, 'الإمارات', 'دبي', 'الخور', '25.2710678', '55.29719219999993', 1, 17, 'الخور', 1),
(824, 'الإمارات', 'دبي', 'الراشدية ', '25.2244647', '55.389030899999966', 1, 17, 'الراشدية ', 1),
(825, 'الإمارات', 'دبي', 'الرفاعة ', '25.255758', '55.288087399999995', 1, 17, 'الرفاعة ', 1),
(826, 'الإمارات', 'دبي', 'الرقة ', '25.2675792', '55.31296670000006', 1, 17, 'الرقة ', 1),
(827, 'الإمارات', 'دبي', 'الرمول ', '25.2273007', '55.36231440000006', 1, 17, 'الرمول ', 1),
(828, 'الإمارات', 'دبي', 'السطوة ', '25.21937', '55.27288699999997', 1, 17, 'السطوة ', 1),
(829, 'الإمارات', 'دبي', 'السهول', '25.2275804', '55.175012100000004', 1, 17, 'السهول', 1),
(830, 'الإمارات', 'دبي', 'الضغـّاية', '25.2275804', '55.175012100000004', 1, 17, 'الضغـّاية', 1),
(831, 'الإمارات', 'دبي', 'العوير ', '25.1824842', '55.5210366', 1, 17, 'العوير ', 1),
(832, 'الإمارات', 'دبي', 'الفقع', '25.2275804', '55.175012100000004', 1, 17, 'الفقع', 1),
(833, 'الإمارات', 'دبي', 'القرهود ', '25.2400295', '55.35029899999995', 1, 17, 'القرهود ', 1),
(834, 'الإمارات', 'دبي', 'القصيص ', '25.2769816', '55.37242939999999', 1, 17, 'القصيص ', 1),
(835, 'الإمارات', 'دبي', 'الليسيلي', '25.2275804', '55.175012100000004', 1, 17, 'الليسيلي', 1),
(836, 'الإمارات', 'دبي', 'المارينا', '25.0767968', '55.14225639999995', 1, 17, 'المارينا', 1),
(837, 'الإمارات', 'دبي', 'المدينة الطبية ', '25.2740669', '55.34525069999995', 1, 17, 'المدينة الطبية ', 1),
(838, 'الإمارات', 'دبي', 'المرابع العربية', '25.0523684', '55.267360199999985', 1, 17, 'المرابع العربية', 1),
(839, 'الإمارات', 'دبي', 'المرقبات ', '25.2653598', '55.32402639999998', 1, 17, 'المرقبات ', 1),
(840, 'الإمارات', 'دبي', 'المرموم', '24.8334208', '55.372250500000064', 1, 17, 'المرموم', 1),
(841, 'الإمارات', 'دبي', 'المزهر ', '25.2491579', '55.452699499999994', 1, 17, 'المزهر ', 1),
(842, 'الإمارات', 'دبي', 'المطينة ', '25.2740443', '55.3226439', 1, 17, 'المطينة ', 1),
(843, 'الإمارات', 'دبي', 'الممزر ', '25.3182034', '55.33785309999996', 1, 17, 'الممزر ', 1),
(844, 'الإمارات', 'دبي', 'المنارة ', '25.1410786', '55.212111999999934', 1, 17, 'المنارة ', 1),
(845, 'الإمارات', 'دبي', 'المنامة ', '25.1593179', '55.3930752', 1, 17, 'المنامة ', 1),
(846, 'الإمارات', 'دبي', 'المنخول ', '25.2459667', '55.29499759999999', 1, 17, 'المنخول ', 1),
(847, 'الإمارات', 'دبي', 'النخيل', '25.0547746', '55.131548000000066', 1, 17, 'النخيل', 1),
(848, 'الإمارات', 'دبي', 'الوحيدة ', '25.2897475', '55.33785309999996', 1, 17, 'الوحيدة ', 1),
(849, 'الإمارات', 'دبي', 'الورقاء ', '25.1914848', '55.43054859999995', 1, 17, 'الورقاء ', 1),
(850, 'الإمارات', 'دبي', 'الينابيع', '25.0432043', '55.19973809999999', 1, 17, 'الينابيع', 1),
(851, 'الإمارات', 'دبي', 'ام الشيف ', '25.1327715', '55.205208500000026', 1, 17, 'ام الشيف ', 1),
(852, 'الإمارات', 'دبي', 'ام سقيم ', '25.1551127', '55.206589099999974', 1, 17, 'ام سقيم ', 1),
(853, 'الإمارات', 'دبي', 'ام هرير ', '25.2452224', '55.312066200000004', 1, 17, 'ام هرير ', 1),
(854, 'الإمارات', 'دبي', 'أبوهيل ', '25.2275804', '55.175012100000004', 1, 17, 'أبوهيل ', 1),
(855, 'الإمارات', 'دبي', 'بر دبي', '25.2145565', '55.30329059999997', 1, 17, 'بر دبي', 1),
(856, 'الإمارات', 'دبي', 'برج نهار ', '25.2275804', '55.175012100000004', 1, 17, 'برج نهار ', 1),
(857, 'الإمارات', 'دبي', 'بورسعيد ', '25.2625223', '55.33141479999995', 1, 17, 'بورسعيد ', 1),
(858, 'الإمارات', 'دبي', 'جبل علي ', '24.9857145', '55.02729039999997', 1, 17, 'جبل علي ', 1),
(859, 'الإمارات', 'دبي', 'جميرا ', '25.2016428', '55.24525670000003', 1, 17, 'جميرا ', 1),
(860, 'الإمارات', 'دبي', 'حتا', '25.1529339', '55.52278439999998', 1, 17, 'حتا', 1),
(861, 'الإمارات', 'دبي', 'ديرة', '25.2788468', '55.3309395', 1, 17, 'ديرة', 1),
(862, 'الإمارات', 'دبي', 'رقعة مسالي', '25.2275804', '55.175012100000004', 1, 17, 'رقعة مسالي', 1),
(863, 'الإمارات', 'دبي', 'زعبيل', '25.2230543', '55.30605509999998', 1, 17, 'زعبيل', 1),
(864, 'الإمارات', 'دبي', 'عود ميثاء ', '25.239126', '55.31296670000006', 1, 17, 'عود ميثاء ', 1),
(865, 'الإمارات', 'دبي', 'قرية المعرفة', '25.1040726', '55.16310899999996', 1, 17, 'قرية المعرفة', 1),
(866, 'الإمارات', 'دبي', 'قريطسة', '25.0693417', '55.305968699999994', 1, 17, 'قريطسة', 1),
(867, 'الإمارات', 'دبي', 'لهباب', '25.2275804', '55.175012100000004', 1, 17, 'لهباب', 1),
(868, 'الإمارات', 'دبي', 'مدينة دبي الرياضية', '25.009385', '55.26779239999996', 1, 17, 'مدينة دبي الرياضية', 1),
(869, 'الإمارات', 'دبي', 'مدينة دبي للإعلام', '25.042606', '55.196831299999985', 1, 17, 'مدينة دبي للإعلام', 1),
(870, 'الإمارات', 'دبي', 'مدينة دبي للإنترنت', '25.0976119', '55.16310899999996', 1, 17, 'مدينة دبي للإنترنت', 1),
(871, 'الإمارات', 'دبي', 'مرغم', '25.2275804', '55.175012100000004', 1, 17, 'مرغم', 1),
(872, 'الإمارات', 'دبي', 'مرقّب', '25.2275804', '55.175012100000004', 1, 17, 'مرقّب', 1),
(873, 'الإمارات', 'دبي', 'نايف ', '25.2727524', '55.31296670000006', 1, 17, 'نايف ', 1),
(874, 'الإمارات', 'دبي', 'ند الحمر ', '25.2004324', '55.38626380000005', 1, 17, 'ند الحمر ', 1),
(875, 'الإمارات', 'دبي', 'هور العنز ', '25.2769983', '55.33370489999993', 1, 17, 'هور العنز ', 1),
(876, 'الإمارات', 'دبي', 'راس الخور', '25.1945448', '55.3641298', 1, 17, 'راس الخور', 1),
(877, 'الإمارات', 'الشارقة', 'البحيرة', '25.3197794', '55.38268100000005', 1, 18, 'البحيرة', 1),
(878, 'الإمارات', 'الشارقة', 'التعاون', '25.3063711', '55.37104610000006', 1, 18, 'التعاون', 1),
(879, 'الإمارات', 'الشارقة', 'الجرينة', '25.2938623', '55.49424750000003', 1, 18, 'الجرينة', 1),
(880, 'الإمارات', 'الشارقة', 'الحزانة', '25.3767711', '55.44309350000003', 1, 18, 'الحزانة', 1),
(881, 'الإمارات', 'الشارقة', 'الحيرة', '25.3553466', '55.3945655', 1, 18, 'الحيرة', 1),
(882, 'الإمارات', 'الشارقة', 'الخالدية', '25.3376063', '55.36689630000001', 1, 18, 'الخالدية', 1),
(883, 'الإمارات', 'الشارقة', 'الخان', '25.32892', '55.36827949999997', 1, 18, 'الخان', 1),
(884, 'الإمارات', 'الشارقة', 'الخزامية', '25.3412769', '55.43885460000001', 1, 18, 'الخزامية', 1),
(885, 'الإمارات', 'الشارقة', 'الدراري', '25.3274068', '55.44023889999994', 1, 18, 'الدراري', 1),
(886, 'الإمارات', 'الشارقة', 'الرحمانية', '25.3516384', '55.615435700000035', 1, 18, 'الرحمانية', 1),
(887, 'الإمارات', 'الشارقة', 'الرفاع', '25.3318309', '55.4568534', 1, 18, 'الرفاع', 1),
(888, 'الإمارات', 'الشارقة', 'الرفاعة', '25.3767711', '55.44309350000003', 1, 18, 'الرفاعة', 1),
(889, 'الإمارات', 'الشارقة', 'الرقة (الجزات)', '25.3767711', '55.44309350000003', 1, 18, 'الرقة (الجزات)', 1),
(890, 'الإمارات', 'الشارقة', 'الرماقية', '25.357535', '55.46100750000005', 1, 18, 'الرماقية', 1),
(891, 'الإمارات', 'الشارقة', 'الرمثاء', '25.3767711', '55.44309350000003', 1, 18, 'الرمثاء', 1),
(892, 'الإمارات', 'الشارقة', 'الرملة', '25.3767711', '55.44309350000003', 1, 18, 'الرملة', 1),
(893, 'الإمارات', 'الشارقة', 'السوق المركزي', '25.3477412', '55.38198360000001', 1, 18, 'السوق المركزي', 1),
(894, 'الإمارات', 'الشارقة', 'السويحات', '25.3466287', '55.454084100000046', 1, 18, 'السويحات', 1),
(895, 'الإمارات', 'الشارقة', 'السيوح', '25.2413629', '55.61900949999995', 1, 18, 'السيوح', 1),
(896, 'الإمارات', 'الشارقة', 'الشهباء', '25.3329606', '55.43193289999999', 1, 18, 'الشهباء', 1),
(897, 'الإمارات', 'الشارقة', 'الصناعية', '25.3054094', '55.43054859999995', 1, 18, 'الصناعية', 1),
(898, 'الإمارات', 'الشارقة', 'الطرفانة', '25.3274068', '55.44023889999994', 1, 18, 'الطرفانة', 1),
(899, 'الإمارات', 'الشارقة', 'الطلاع', '25.3390496', '55.449930300000005', 1, 18, 'الطلاع', 1),
(900, 'الإمارات', 'الشارقة', 'العزرة', '25.3767711', '55.44309350000003', 1, 18, 'العزرة', 1),
(901, 'الإمارات', 'الشارقة', 'الغافية', '25.3760774', '55.442450399999984', 1, 18, 'الغافية', 1),
(902, 'الإمارات', 'الشارقة', 'الغبيبة', '25.3767711', '55.44309350000003', 1, 18, 'الغبيبة', 1),
(903, 'الإمارات', 'الشارقة', 'الفشت', '25.3767711', '55.44309350000003', 1, 18, 'الفشت', 1),
(904, 'الإمارات', 'الشارقة', 'الفلاح', '25.2848992', '55.53858709999997', 1, 18, 'الفلاح', 1),
(905, 'الإمارات', 'الشارقة', 'الفلج', '25.3767711', '55.44309350000003', 1, 18, 'الفلج', 1),
(906, 'الإمارات', 'الشارقة', 'الفيحاء', '25.3767711', '55.44309350000003', 1, 18, 'الفيحاء', 1),
(907, 'الإمارات', 'الشارقة', 'القادسية', '25.3767711', '55.44309350000003', 1, 18, 'القادسية', 1),
(908, 'الإمارات', 'الشارقة', 'القاسمية', '25.3459198', '55.39318179999998', 1, 18, 'القاسمية', 1),
(909, 'الإمارات', 'الشارقة', 'القرائن', '25.2978915', '55.51918569999998', 1, 18, 'القرائن', 1),
(910, 'الإمارات', 'الشارقة', 'القوز', '25.3521826', '55.445776799999976', 1, 18, 'القوز', 1),
(911, 'الإمارات', 'الشارقة', 'الليه', '25.3494341', '55.37242939999999', 1, 18, 'الليه', 1),
(912, 'الإمارات', 'الشارقة', 'المجاز', '25.3213384', '55.38349670000002', 1, 18, 'المجاز', 1),
(913, 'الإمارات', 'الشارقة', 'المجرة', '25.3674421', '55.39534379999998', 1, 18, 'المجرة', 1),
(914, 'الإمارات', 'الشارقة', 'المرقاب', '25.3767711', '55.44309350000003', 1, 18, 'المرقاب', 1),
(915, 'الإمارات', 'الشارقة', 'المريجة', '25.3566416', '55.38488029999996', 1, 18, 'المريجة', 1),
(916, 'الإمارات', 'الشارقة', 'المصلى', '25.3674421', '55.39534379999998', 1, 18, 'المصلى', 1),
(917, 'الإمارات', 'الشارقة', 'الممزر', '25.3182034', '55.33785309999996', 1, 18, 'الممزر', 1),
(918, 'الإمارات', 'الشارقة', 'المناخ', '25.3525731', '55.39871659999994', 1, 18, 'المناخ', 1),
(919, 'الإمارات', 'الشارقة', 'المنصورة', '25.3767711', '55.44309350000003', 1, 18, 'المنصورة', 1),
(920, 'الإمارات', 'الشارقة', 'الموافجة', '25.3501276', '55.47208610000007', 1, 18, 'الموافجة', 1),
(921, 'الإمارات', 'الشارقة', 'الناصرية', '25.3767711', '55.44309350000003', 1, 18, 'الناصرية', 1),
(922, 'الإمارات', 'الشارقة', 'النباعة', '25.3674421', '55.39534379999998', 1, 18, 'النباعة', 1),
(923, 'الإمارات', 'الشارقة', 'النخيلات', '25.3767711', '55.44309350000003', 1, 18, 'النخيلات', 1),
(924, 'الإمارات', 'الشارقة', 'النهدة', '25.2919567', '55.365512999999964', 1, 18, 'النهدة', 1),
(925, 'الإمارات', 'الشارقة', 'النوف', '25.2742248', '55.508101200000056', 1, 18, 'النوف', 1),
(926, 'الإمارات', 'الشارقة', 'الياش', '25.3418107', '55.46516180000003', 1, 18, 'الياش', 1),
(927, 'الإمارات', 'الشارقة', 'اليرموك', '25.3488745', '55.4042518', 1, 18, 'اليرموك', 1),
(928, 'الإمارات', 'الشارقة', 'أبو طينة', '25.3767711', '55.44309350000003', 1, 18, 'أبو طينة', 1),
(929, 'الإمارات', 'الشارقة', 'أم خنور (الصبخة)', '0', '0', 1, 18, 'أم خنور (الصبخة)', 1),
(930, 'الإمارات', 'الشارقة', 'حلوان (الآبار)', '25.3486799', '55.42778020000003', 1, 18, 'حلوان (الآبار)', 1),
(931, 'الإمارات', 'الشارقة', 'دسمان', '25.3767711', '55.44309350000003', 1, 18, 'دسمان', 1),
(932, 'الإمارات', 'الشارقة', 'سمنان', '25.3403633', '55.42085939999993', 1, 18, 'سمنان', 1),
(933, 'الإمارات', 'الشارقة', 'سوق البحر', '0', '0', 1, 18, 'سوق البحر', 1),
(934, 'الإمارات', 'الشارقة', 'سوق العرصة', '0', '0', 1, 18, 'سوق العرصة', 1),
(935, 'الإمارات', 'الشارقة', 'سوق المجرة', '0', '0', 1, 18, 'سوق المجرة', 1),
(936, 'الإمارات', 'الشارقة', 'شرقان', '25.3767711', '55.44309350000003', 1, 18, 'شرقان', 1),
(937, 'الإمارات', 'الشارقة', 'ميسلون', '25.3767711', '55.44309350000003', 1, 18, 'ميسلون', 1),
(938, 'الإمارات', 'ابو ظبي', 'الختم', '24.1738545', '55.00524900000005', 1, 14, 'الختم', 1),
(939, 'الإمارات', 'ابو ظبي', 'الخزنة', '24.1612064', '55.37519610000004', 1, 14, 'الخزنة', 1),
(940, 'الإمارات', 'ابو ظبي', 'الرحبة', '24.6198221', '54.71100179999996', 1, 14, 'الرحبة', 1),
(941, 'الإمارات', 'ابو ظبي', 'الرويس', '24.1048998', '52.724191399999995', 1, 14, 'الرويس', 1),
(942, 'الإمارات', 'ابو ظبي', 'الساد', '24.2334429', '55.53616169999998', 1, 14, 'الساد', 1),
(943, 'الإمارات', 'ابو ظبي', 'السلع', '24.0787881', '51.725599099999954', 1, 14, 'السلع', 1),
(944, 'الإمارات', 'ابو ظبي', 'السمحة', '24.6812993', '54.757681899999966', 1, 14, 'السمحة', 1),
(945, 'الإمارات', 'ابو ظبي', 'السميح', '0', '0', 1, 14, 'السميح', 1),
(946, 'الإمارات', 'ابو ظبي', 'الشهامة', '24.5403273', '54.683555299999966', 1, 14, 'الشهامة', 1),
(947, 'الإمارات', 'ابو ظبي', 'الشويب', '24.7278218', '55.780073300000026', 1, 14, 'الشويب', 1),
(948, 'الإمارات', 'ابو ظبي', 'العين', '24.3274319', '55.80126859999996', 1, 14, 'العين', 1),
(949, 'الإمارات', 'ابو ظبي', 'القوع', '23.2334987', '55.04933749999998', 1, 14, 'القوع', 1),
(950, 'الإمارات', 'ابو ظبي', 'المرفأ', '24.4983881', '54.379654200000004', 1, 14, 'المرفأ', 1),
(951, 'الإمارات', 'ابو ظبي', 'الهير', '24.5575424', '55.72450119999996', 1, 14, 'الهير', 1),
(952, 'الإمارات', 'ابو ظبي', 'ام النار', '24.4012042', '54.55228199999999', 1, 14, 'ام النار', 1),
(953, 'الإمارات', 'ابو ظبي', 'بني', '0', '0', 1, 14, 'بني', 1),
(954, 'الإمارات', 'ابو ظبي', 'جزيرةداس', '0', '0', 1, 14, 'جزيرةداس', 1),
(955, 'الإمارات', 'ابو ظبي', 'دلما', '0', '0', 1, 14, 'دلما', 1),
(956, 'الإمارات', 'ابو ظبي', 'رماح', '24.1846411', '55.325409000000036', 1, 14, 'رماح', 1),
(957, 'الإمارات', 'ابو ظبي', 'زايد', '24.4983881', '54.379654200000004', 1, 14, 'زايد', 1),
(958, 'الإمارات', 'ابو ظبي', 'سويحان', '24.4672486', '55.32873589999997', 1, 14, 'سويحان', 1),
(959, 'الإمارات', 'ابو ظبي', 'غياثي', '23.8068351', '52.74559350000004', 1, 14, 'غياثي', 1),
(960, 'الإمارات', 'ابو ظبي', 'مدينةياس', '0', '0', 1, 14, 'مدينةياس', 1),
(961, 'الإمارات', 'عجمان', 'عجمان', '25.4212221', '55.59378149999998', 1, 60, 'عجمان', 1),
(962, 'الإمارات', 'عجمان', 'البستان', '25.412463', '55.44854580000003', 1, 60, 'البستان', 1),
(963, 'الإمارات', 'عجمان', 'الجرف', '25.1227027', '55.443358699999976', 1, 60, 'الجرف', 1),
(964, 'الإمارات', 'عجمان', 'الحليو', '25.4075039', '55.64460380000003', 1, 60, 'الحليو', 1),
(965, 'الإمارات', 'عجمان', 'الحميدية', '25.3979235', '55.578789099999995', 1, 60, 'الحميدية', 1),
(966, 'الإمارات', 'عجمان', 'الراشدية', '0', '0', 1, 60, 'الراشدية', 1),
(967, 'الإمارات', 'عجمان', 'الزهراء', '0', '0', 1, 60, 'الزهراء', 1),
(968, 'الإمارات', 'عجمان', 'السوان', '0', '0', 1, 60, 'السوان', 1),
(969, 'الإمارات', 'عجمان', 'الكرامة', '0', '0', 1, 60, 'الكرامة', 1),
(970, 'الإمارات', 'عجمان', 'المنامة', '25.3301904', '55.997132599999986', 1, 60, 'المنامة', 1),
(971, 'الإمارات', 'عجمان', 'النعيمية', '0', '0', 1, 60, 'النعيمية', 1),
(972, 'الإمارات', 'عجمان', 'مشيرف', '25.4021014', '55.46793149999996', 1, 60, 'مشيرف', 1),
(973, 'الإمارات', 'عجمان', 'مصفوت', '0', '0', 1, 60, 'مصفوت', 1),
(974, 'الإمارات', 'ام القيوين', 'الراشدية', '0', '0', 1, 61, 'الراشدية', 1),
(975, 'الإمارات', 'ام القيوين', 'الراعفة', '0', '0', 1, 61, 'الراعفة', 1),
(976, 'الإمارات', 'ام القيوين', 'الرملة', '25.5113818', '55.5718564', 1, 61, 'الرملة', 1),
(977, 'الإمارات', 'ام القيوين', 'السرة', '0', '0', 1, 61, 'السرة', 1),
(978, 'الإمارات', 'ام القيوين', 'السلمة', '0', '0', 1, 61, 'السلمة', 1),
(979, 'الإمارات', 'ام القيوين', 'السينية', '0', '0', 1, 61, 'السينية', 1),
(980, 'الإمارات', 'ام القيوين', 'اللبسة', '0', '0', 1, 61, 'اللبسة', 1),
(981, 'الإمارات', 'ام القيوين', 'المعلا', '0', '0', 1, 61, 'المعلا', 1),
(982, 'الإمارات', 'ام القيوين', 'أم القيوين', '25.4480542', '55.66384960000005', 1, 61, 'أم القيوين', 1),
(983, 'الإمارات', 'ام القيوين', 'تل الأبرق', '0', '0', 1, 61, 'تل الأبرق', 1),
(984, 'الإمارات', 'ام القيوين', 'جزيرة', '0', '0', 1, 61, 'جزيرة', 1),
(985, 'الإمارات', 'ام القيوين', 'فلج', '0', '0', 1, 61, 'فلج', 1),
(986, 'الإمارات', 'ام القيوين', 'كابر', '0', '0', 1, 61, 'كابر', 1),
(987, 'الإمارات', 'ام القيوين', 'مهذب', '0', '0', 1, 61, 'مهذب', 1),
(988, 'الإمارات', 'راس الخيمة', 'رأس الخيمة', '25.7189396', '55.86131569999998', 1, 59, 'رأس الخيمة', 1),
(989, 'الإمارات', 'راس الخيمة', 'الدقداقة', '0', '0', 1, 59, 'الدقداقة', 1),
(990, 'الإمارات', 'راس الخيمة', 'الرمس', '0', '0', 1, 59, 'الرمس', 1),
(991, 'الإمارات', 'راس الخيمة', 'خت', '0', '0', 1, 59, 'خت', 1),
(992, 'الإمارات', 'راس الخيمة', 'شعم', '0', '0', 1, 59, 'شعم', 1),
(993, 'الإمارات', 'راس الخيمة', 'شمل', '25.7934031', '55.97249599999998', 1, 59, 'شمل', 1),
(994, 'الإمارات', 'راس الخيمة', 'غليلة', '0', '0', 1, 59, 'غليلة', 1),
(995, 'الإمارات', 'الفجيرة', 'البثنة', '0', '0', 1, 62, 'البثنة', 1),
(996, 'الإمارات', 'الفجيرة', 'البدية', '25.4408691', '56.34326290000001', 1, 62, 'البدية', 1),
(997, 'الإمارات', 'الفجيرة', 'الحلاة', '0', '0', 1, 62, 'الحلاة', 1),
(998, 'الإمارات', 'الفجيرة', 'الحيل', '0', '0', 1, 62, 'الحيل', 1),
(999, 'الإمارات', 'الفجيرة', 'السيجي', '0', '0', 1, 62, 'السيجي', 1),
(1000, 'الإمارات', 'الفجيرة', 'الطيبة', '0', '0', 1, 62, 'الطيبة', 1),
(1001, 'الإمارات', 'الفجيرة', 'العقة', '25.4940198', '56.35724670000002', 1, 62, 'العقة', 1),
(1002, 'الإمارات', 'الفجيرة', 'الغرفة', '0', '0', 1, 62, 'الغرفة', 1),
(1003, 'الإمارات', 'الفجيرة', 'الفجيرة', '25.1288099', '56.32648489999997', 1, 62, 'الفجيرة', 1),
(1004, 'الإمارات', 'الفجيرة', 'الفرفار', '0', '0', 1, 62, 'الفرفار', 1),
(1005, 'الإمارات', 'الفجيرة', 'اوحلة', '0', '0', 1, 62, 'اوحلة', 1),
(1006, 'الإمارات', 'الفجيرة', 'ثوبان', '0', '0', 1, 62, 'ثوبان', 1),
(1007, 'الإمارات', 'الفجيرة', 'دبا', '25.5911171', '56.25940330000003', 1, 62, 'دبا', 1),
(1008, 'الإمارات', 'الفجيرة', 'سهم', '0', '0', 1, 62, 'سهم', 1),
(1009, 'الإمارات', 'الفجيرة', 'شرم', '0', '0', 1, 62, 'شرم', 1),
(1010, 'الإمارات', 'الفجيرة', 'شوكة', '0', '0', 1, 62, 'شوكة', 1),
(1011, 'الإمارات', 'الفجيرة', 'ضدنا', '25.5347189', '56.34326290000001', 1, 62, 'ضدنا', 1),
(1012, 'الإمارات', 'الفجيرة', 'قدفع', '0', '0', 1, 62, 'قدفع', 1),
(1013, 'الإمارات', 'الفجيرة', 'مدوك', '0', '0', 1, 62, 'مدوك', 1),
(1014, 'الإمارات', 'الفجيرة', 'مربح', '25.2901579', '56.36563810000007', 1, 62, 'مربح', 1),
(1015, 'الإمارات', 'الفجيرة', 'مريشيد', '0', '0', 1, 62, 'مريشيد', 1),
(1016, 'الإمارات', 'الفجيرة', 'مسافي', '25.3145564', '56.167244799999935', 1, 62, 'مسافي', 1),
(1017, 'الإمارات', 'الفجيرة', 'وادي', '0', '0', 1, 62, 'وادي', 1),
(1018, 'السودان', 'ام درمان', 'امدرمان', '15.6475782', '32.480689400000074', 235, 238, 'امدرمان', 1),
(1019, 'السودان', 'الخرطوم', 'بحرى', '15.6569409', '32.54858730000001', 235, 236, 'بحرى', 1),
(1020, 'الإمارات', 'دبي', 'واحة دبي للسيليكون', '25.0947421', '55.40264990000003', 1, 17, 'واحة دبي للسيليكون', 1),
(1021, 'السودان', 'الخرطوم', 'الخر', '15.5571643', '32.57872099999997', 235, 236, 'الخر', 1),
(1022, 'السعودية', 'الرياض', 'العليا العام', '24.6565403', '46.724279600000045', 2, 12, 'العليا العام', 1),
(1023, 'مصر', 'الإسكندرية', 'سيدى بشر بحرى', '31.26708559999999', '29.99284149999994', 3, 38, 'سيدى بشر بحرى', 1),
(1024, 'السعودية', 'عسير', 'الشطيبه', '19.8526923', '41.59868600000004', 2, 73, 'الشطيبه', 1),
(1025, 'السعودية', 'عسير', 'الدرب  الكدرة', '0', '0', 2, 73, 'الدرب  الكدرة', 1),
(1026, 'السعودية', 'عسير', 'العرين', '18.566179', '43.390479899999946', 2, 73, 'العرين', 1),
(1027, 'مصر', 'القاهرة', 'حدائق الاهرام', '29.99324459999999', '31.17372219999993', 3, 37, 'حدائق الاهرام', 1),
(1028, 'السعودية', 'المدينة المنوّرة', 'عروة', '24.4421942', '39.58726939999997', 2, 22, 'عروة', 1),
(1029, 'ليبيا', 'طرابلس', 'خلة الفرجان', '32.7945628', '13.217478300000039', 213, 167, 'خلة الفرجان', 1),
(1030, 'الإمارات', 'العين', 'صناعية العين', '24.2198255', '55.75813449999998', 1, 299, 'صناعية العين', 1),
(1031, 'مصر', 'القاهرة', 'القاهرة الجديدة', '30.0444196', '31.23571160000006', 3, 37, 'القاهرة الجديدة', 1),
(1032, 'السودان', 'الخرطوم', 'المعمورة', '15.5379635', '32.57545140000002', 235, 236, 'المعمورة', 1),
(1033, 'مصر', 'القاهرة', 'سته أكتوبر', '30.0647444', '31.25295010000002', 3, 37, 'سته أكتوبر', 1),
(1034, 'السودان', 'الخرطوم', 'المنشيه', '15.593633', '32.58110609999994', 235, 236, 'المنشيه', 1),
(1035, ' سوريا', 'دمشق', 'المهاجرين', '33.5229947', '36.27664189999996', 6, 33, 'المهاجرين', 1),
(1036, 'السودان', 'الخرطوم', 'الازهرى', '15.6415525', '32.524587', 235, 236, 'الازهرى', 1),
(1037, 'مصر', 'القاهرة', 'مدينة الشروق', '30.1442115', '31.639718399999992', 3, 37, 'مدينة الشروق', 1),
(1038, 'مصر', 'القاهرة', 'عباس العقاد', '29.9885167', '31.212126200000057', 3, 37, 'عباس العقاد', 1),
(1039, 'مصر', 'الإسكندرية', 'السيوف', '31.2346783', '29.999192600000015', 3, 38, 'السيوف', 1),
(1040, 'السودان', 'الخرطوم', 'الصافيه', '15.6500376', '32.53585989999999', 235, 236, 'الصافيه', 1),
(1041, 'مصر', 'الإسكندرية', 'العجمى', '31.0988357', '29.76666720000003', 3, 38, 'العجمى', 1),
(1042, 'السودان', 'الخرطوم', 'اركويت', '15.5481335', '32.56838259999995', 235, 236, 'اركويت', 1),
(1043, 'السودان', 'ام درمان', 'الدوحه', '15.6318809', '32.46653839999999', 235, 238, 'الدوحه', 1),
(1044, 'مصر', 'القاهرة', 'العجمي', '30.1045557', '31.219597099999987', 3, 37, 'العجمي', 1),
(1045, 'مصر', 'القاهرة', 'مدينه بدر', '30.1343541', '31.75374039999997', 3, 37, 'مدينه بدر', 1),
(1046, 'السعودية', 'جدة', 'الشرفيه', '21.5152406', '39.188174000000004', 2, 13, 'الشرفيه', 1),
(1047, 'مصر', 'الإسكندرية', 'زيزينيا', '31.2409932', '29.96486630000004', 3, 38, 'زيزينيا', 1),
(1048, 'السودان', 'الخرطوم', 'العمارات', '15.5775997', '32.54575920000002', 235, 236, 'العمارات', 1),
(1049, 'مصر', 'القاهرة', 'فيصل', '30.0189901', '31.32438049999996', 3, 37, 'فيصل', 1),
(1050, 'مصر', 'القاهرة', 'التجمع الخامس', '30.0084868', '31.428475599999956', 3, 37, 'التجمع الخامس', 1),
(1051, 'مصر', 'الإسكندرية', 'الطريق الدولى', '31.2438269', '30.037609699999962', 3, 38, 'الطريق الدولى', 1),
(1052, 'الكويت', 'الجهراء', 'الهجن', '29.102948', '47.83779049999998', 95, 107, 'الهجن', 1),
(1053, 'الكويت', 'الاحمدي', 'الخيران', '28.6691107', '48.36888339999996', 95, 108, 'الخيران', 1),
(1054, 'مصر', 'القاهرة', 'حدائق اكتوبر', '30.0709581', '31.267926999999986', 3, 37, 'حدائق اكتوبر', 1),
(1055, 'مصر', 'القاهرة', 'مدينه نصر', '30.0168939', '31.377033600000004', 3, 37, 'مدينه نصر', 1),
(1056, 'مصر', 'القاهرة', 'مكرم عبيد مدينة نصر', '30.0620484', '31.345206899999994', 3, 37, 'مكرم عبيد مدينة نصر', 1),
(1057, 'مصر', 'القاهرة', 'الحى الرابع', '29.9962576', '31.425618299999996', 3, 37, 'الحى الرابع', 1),
(1058, 'مصر', 'القاهرة', 'سته اكتوبر', '30.0647444', '31.25295010000002', 3, 37, 'سته اكتوبر', 1),
(1059, 'الاردن', 'عمّان', 'أبو نصير', '32.0325189', '35.86323749999997', 131, 132, 'أبو نصير', 1),
(1060, 'الاردن', 'عمّان', 'مرج الحمام', '0', '0', 131, 132, 'مرج الحمام', 1),
(1061, 'الاردن', 'عمّان', 'رحاب', '31.1847275', '29.899344499999984', 131, 132, 'رحاب', 1),
(1062, 'الاردن', 'عمّان', 'أم الرصاص', '0', '0', 131, 132, 'أم الرصاص', 1),
(1063, 'الاردن', 'عمّان', 'الطنيب', '0', '0', 131, 132, 'الطنيب', 1),
(1064, 'الاردن', 'عمّان', 'الحسينية', '31.9607442', '35.94076819999998', 131, 132, 'الحسينية', 1),
(1065, 'الاردن', 'عمّان', 'أم العمد', '0', '0', 131, 132, 'أم العمد', 1),
(1066, 'الاردن', 'عمّان', 'خربة خليفة', '0', '0', 131, 132, 'خربة خليفة', 1),
(1067, 'الاردن', 'عمّان', 'سافوط', '31.1776879', '29.89835919999996', 131, 132, 'سافوط', 1),
(1068, 'الاردن', 'عمّان', 'الفحيص', '0', '0', 131, 132, 'الفحيص', 1),
(1069, 'الاردن', 'عمّان', 'الرفاعيات', '0', '0', 131, 132, 'الرفاعيات', 1),
(1070, 'الاردن', 'عمّان', 'السبيتة', '0', '0', 131, 132, 'السبيتة', 1),
(1071, 'الاردن', 'عمّان', 'المفرق', '32.3616821', '36.21933620000004', 131, 132, 'المفرق', 1),
(1072, 'مصر', 'الإسكندرية', 'العامريه', '31.2000924', '29.91873869999995', 3, 38, 'العامريه', 1),
(1073, 'قطر', 'الدوحة', 'الهلال', '25.2583192', '51.53866590000007', 140, 141, 'الهلال', 1),
(1074, 'مصر', 'القاهرة', 'المعادى الجديدة', '30.5897838', '32.26891449999994', 3, 37, 'المعادى الجديدة', 1),
(1075, 'فلسطين', 'غزة', 'الرمال', '31.51777779999999', '34.44777780000004', 228, 231, 'الرمال', 1);
INSERT INTO `am_districts` (`id`, `country`, `city`, `name`, `lat`, `lng`, `country_id`, `city_id`, `geo_name`, `status`) VALUES
(1076, 'مصر', 'القاهرة', 'اكتوبر', '30.0647444', '31.25295010000002', 3, 37, 'اكتوبر', 1),
(1077, 'مصر', 'الإسكندرية', 'طوسون', '31.3031005', '30.057807700000012', 3, 38, 'طوسون', 1),
(1078, 'مصر', 'القاهرة', 'زهراء المعادى', '29.9619782', '31.30318790000001', 3, 37, 'زهراء المعادى', 1),
(1079, 'السعودية', 'مكّة المكرمة', 'بطحاء قريش', '21.3618079', '39.83218790000001', 2, 15, 'بطحاء قريش', 1),
(1080, 'مصر', 'القاهرة', 'مصر الجديده', '30.112315', '31.34385069999996', 3, 37, 'مصر الجديده', 1),
(1081, 'مصر', 'الإسكندرية', 'شاطئ النخيل', '31.13613759999999', '29.821334699999966', 3, 38, 'شاطئ النخيل', 1),
(1082, 'قطر', 'الدوحة', 'الدفنة', '25.3077469', '51.516321800000014', 140, 141, 'الدفنة', 1),
(1083, 'مصر', 'القاهرة', 'المعادي', '29.9626961', '31.276942299999973', 3, 37, 'المعادي', 1),
(1084, 'مصر', 'القاهرة', 'المعادى', '29.9626961', '31.276942299999973', 3, 37, 'المعادى', 1),
(1085, 'مصر', 'القاهرة', 'السادس من اكتوبر', '30.0647444', '31.25295010000002', 3, 37, 'السادس من اكتوبر', 1),
(1086, 'مصر', 'القاهرة', 'الشماليات', '30.1242656', '31.26399820000006', 3, 37, 'الشماليات', 1),
(1087, 'مصر', 'القاهرة', 'اسماعليه', '30.0899933', '31.268277600000033', 3, 37, 'اسماعليه', 1),
(1088, 'مصر', 'القاهرة', 'الشيخ زايد الحى السادس عشر', '30.04083109999999', '30.99236989999997', 3, 37, 'الشيخ زايد الحى السادس عشر', 1),
(1089, 'مصر', 'طنطا', 'شارع الجلاء', '30.7807043', '31.00947819999999', 3, 47, 'شارع الجلاء', 1),
(1090, 'مصر', 'القاهرة', 'العبور', '30.2283408', '31.47989480000001', 3, 37, 'العبور', 1),
(1091, 'الكويت', 'الاحمدي', 'المهبوله', '29.1496559', '48.119198600000004', 95, 108, 'المهبوله', 1),
(1092, 'الكويت', 'حولي', 'سلوى', '29.2964866', '48.07937900000002', 95, 276, 'سلوى', 1),
(1093, 'الكويت', 'حولي', 'حولي', '29.3332984', '48.015892699999995', 95, 276, 'حولي', 1),
(1094, 'الكويت', 'الفروانية ', 'اشبيلية', '29.2728333', '47.93913710000004', 95, 277, 'اشبيلية', 1),
(1095, 'الكويت', 'الفروانية ', 'الاندلس', '29.3042048', '47.884732100000065', 95, 277, 'الاندلس', 1),
(1096, 'الكويت', 'الفروانية ', 'الفروانية', '29.281596', '47.960251799999924', 95, 277, 'الفروانية', 1),
(1097, 'الكويت', 'الفروانية ', 'المهبولة', '29.1461879', '48.12141539999993', 95, 277, 'المهبولة', 1),
(1098, 'الكويت', 'الفروانية ', 'جليب شيوخ', '29.2552218', '47.93666289999999', 95, 277, 'جليب شيوخ', 1),
(1099, 'الكويت', 'حولي', 'السالميه', '29.3352938', '48.07156120000002', 95, 276, 'السالميه', 1),
(1100, 'الكويت', 'حولي', 'الجابريه', '29.31805739999999', '48.025804600000015', 95, 276, 'الجابريه', 1),
(1101, 'الكويت', 'الفروانية ', 'الفحيحيل', '29.0855048', '48.1282056', 95, 277, 'الفحيحيل', 1),
(1102, 'الكويت', 'الفروانية ', 'المنقف', '29.1137893', '48.125218500000074', 95, 277, 'المنقف', 1),
(1103, 'الكويت', 'الفروانية ', 'الفنطاس', '29.1461879', '48.12141539999993', 95, 277, 'الفنطاس', 1),
(1104, 'الكويت', 'الفروانية ', 'الرقعي', '29.3061333', '47.91440069999999', 95, 277, 'الرقعي', 1),
(1105, 'الكويت', 'الفروانية ', 'الضجيج', '29.2616452', '47.96264730000007', 95, 277, 'الضجيج', 1),
(1106, 'الكويت', 'الفروانية ', 'خيطان', '29.279973', '47.97626319999995', 95, 277, 'خيطان', 1),
(1107, 'الكويت', 'الكويت العاصمة', 'ضاحية عبد الله السالم', '29.3474245', '47.97318580000001', 95, 106, 'ضاحية عبد الله السالم', 1),
(1108, 'الكويت', 'الكويت العاصمة', 'الشويخ', '29.354444', '47.90972199999999', 95, 106, 'الشويخ', 1),
(1109, 'مصر', 'المنيا', 'المنيا الجديدة', '28.1022548', '30.75376319999998', 3, 298, 'المنيا الجديدة', 1),
(1110, 'الكويت', 'الكويت العاصمة', 'الروضة', '29.3290126', '47.99855119999995', 95, 106, 'الروضة', 1),
(1111, 'الكويت', 'الكويت العاصمة', 'الصوابر', '29.3763692', '47.982453299999975', 95, 106, 'الصوابر', 1),
(1112, 'الكويت', 'الكويت العاصمة', 'المرقاب', '29.3661375', '47.98369150000008', 95, 106, 'المرقاب', 1),
(1113, 'الكويت', 'الفروانية ', 'الحساوي', '29.2758711', '47.972289899999964', 95, 277, 'الحساوي', 1),
(1114, 'الكويت', 'الفروانية ', 'الشهداء', '29.3774272', '47.989641000000006', 95, 277, 'الشهداء', 1),
(1115, 'الكويت', 'الفروانية ', 'الشعب', '29.34996499999999', '48.02828290000002', 95, 277, 'الشعب', 1),
(1116, 'الكويت', 'الكويت العاصمة', 'القيروان', '29.3002821', '47.80076059999999', 95, 106, 'القيروان', 1),
(1117, 'الكويت', 'حولي', 'بيان', '29.2979895', '48.05108710000002', 95, 276, 'بيان', 1),
(1118, 'الكويت', 'الجهراء', 'العبدلي', '30.0235274', '47.70460359999993', 95, 107, 'العبدلي', 1),
(1119, 'الكويت', 'الجهراء', 'الصليبية', '29.2855773', '47.818038', 95, 107, 'الصليبية', 1),
(1120, 'الكويت', 'الجهراء', 'الرميثية', '0', '0', 95, 107, 'الرميثية', 1),
(1121, 'الكويت', 'الفروانية ', 'الرابية', '29.29663009999999', '47.93913710000004', 95, 277, 'الرابية', 1),
(1122, 'الكويت', 'الفروانية ', 'الصديق', '29.2937781', '47.993597499999964', 95, 277, 'الصديق', 1),
(1123, 'الكويت', 'الفروانية ', 'العمرية', '29.29758649999999', '47.95398439999997', 95, 277, 'العمرية', 1),
(1124, 'الكويت', 'حولي', 'ميدان حولي', '29.33408589999999', '48.02820539999993', 95, 276, 'ميدان حولي', 1),
(1125, 'الجزائر', 'وهران', 'درين', '35.6976541', '-0.6337376000000177', 113, 250, 'درين', 1),
(1126, 'الكويت', 'الفروانية ', 'النويصيب', '29.281596', '47.960251799999924', 95, 277, 'النويصيب', 1),
(1127, 'الكويت', 'الفروانية ', 'الصباحية', '29.1461879', '48.12141539999993', 95, 277, 'الصباحية', 1),
(1128, 'الكويت', 'الفروانية ', 'إشبيليه', '29.2728333', '47.93913710000004', 95, 277, 'إشبيليه', 1),
(1129, 'الكويت', 'الفروانية ', 'بنيدر', '29.281596', '47.960251799999924', 95, 277, 'بنيدر', 1),
(1130, 'الكويت', 'الفروانية ', 'الظهر', '29.156732', '48.09062570000003', 95, 277, 'الظهر', 1),
(1131, 'الكويت', 'الفروانية ', 'الأندلس', '29.3042048', '47.884732100000065', 95, 277, 'الأندلس', 1),
(1132, 'الكويت', 'الاحمدي', 'الوفرة', '28.5930251', '48.104851499999995', 95, 108, 'الوفرة', 1),
(1133, 'الكويت', 'الكويت العاصمة', 'اليرموك', '29.3128217', '47.96883589999993', 95, 106, 'اليرموك', 1),
(1134, 'الكويت', 'الكويت العاصمة', 'قرطبة', '29.3123481', '47.986167799999976', 95, 106, 'قرطبة', 1),
(1135, 'الكويت', 'الاحمدي', 'الجليعة', '28.8844085', '48.262994100000014', 95, 108, 'الجليعة', 1),
(1136, 'الكويت', 'الكويت العاصمة', 'الخالدية', '29.3251956', '47.96388490000004', 95, 106, 'الخالدية', 1),
(1137, 'مصر', 'القاهرة', 'حى المخابرات اكتوبر', '30.0444196', '31.23571160000006', 3, 37, 'حى المخابرات اكتوبر', 1),
(1138, 'قطر', 'الدوحة', 'المريخ', '25.2842826', '51.444083800000044', 140, 141, 'المريخ', 1),
(1139, 'قطر', 'الدوحة', 'عين خالد', '25.2258227', '51.45721209999999', 140, 141, 'عين خالد', 1),
(1140, 'قطر', 'الدوحة', 'النصر', '25.2695833', '51.49792649999995', 140, 141, 'النصر', 1),
(1141, 'الكويت', 'الكويت العاصمة', 'كيفان', '29.3375672', '47.95893449999994', 95, 106, 'كيفان', 1),
(1142, 'الكويت', 'الكويت العاصمة', 'الصليبيخات', '29.3155591', '47.84026010000002', 95, 106, 'الصليبيخات', 1),
(1143, 'الكويت', 'الكويت العاصمة', 'الفيحاء', '29.3404328', '47.978739099999984', 95, 106, 'الفيحاء', 1),
(1144, 'قطر', 'الدوحة', 'الدوحة', '25.3521436', '51.49398529999996', 140, 141, 'الدوحة', 1),
(1145, 'قطر', 'الدوحة', 'الخور', '25.3854022', '51.50023269999997', 140, 141, 'الخور', 1),
(1146, 'قطر', 'الدوحة', 'ام صلال', '25.2854473', '51.53103979999992', 140, 141, 'ام صلال', 1),
(1147, 'قطر', 'الدوحة', 'معيذر', '25.262897', '51.41521080000007', 140, 141, 'معيذر', 1),
(1148, 'قطر', 'الدوحة', 'بني هاجر', '25.3163231', '51.40209089999996', 140, 141, 'بني هاجر', 1),
(1149, 'قطر', 'الدوحة', 'الخريطيات', '25.3860778', '51.42570860000001', 140, 141, 'الخريطيات', 1),
(1150, 'المغرب', 'طنجة - تطوان', 'العرائش', '35.1744271', '-6.147396399999934', 51, 58, 'العرائش', 1),
(1151, 'قطر', 'الدوحة', 'الوسيل', '25.4253918', '51.50449570000001', 140, 141, 'الوسيل', 1),
(1152, 'قطر', 'الدوحة', 'الغرافة', '25.3325814', '51.44670929999995', 140, 141, 'الغرافة', 1),
(1153, 'قطر', 'الدوحة', 'ازغواي', '25.3593335', '51.43620809999993', 140, 141, 'ازغواي', 1),
(1154, 'قطر', 'الدوحة', 'الناصرية', '25.2854473', '51.53103979999992', 140, 141, 'الناصرية', 1),
(1155, 'قطر', 'الدوحة', 'الدحيل', '25.3490535', '51.46771669999998', 140, 141, 'الدحيل', 1),
(1156, 'لبنان', 'جبل لبنان', 'مار بطرس', '33.9359772', '35.683340499999986', 165, 258, 'مار بطرس', 1),
(1157, 'مصر', 'طنطا', 'ايتاي البارود', '30.9487889', '30.58124470000007', 3, 47, 'ايتاي البارود', 1),
(1158, 'قطر', 'الدوحة', 'النجمة', '25.2683268', '51.53866590000007', 140, 141, 'النجمة', 1),
(1159, 'لبنان', 'بيروت', 'انطلياس', '33.8985551', '35.56437549999998', 165, 166, 'انطلياس', 1),
(1160, 'قطر', 'الدوحة', 'الوكرة', '25.2854473', '51.53103979999992', 140, 141, 'الوكرة', 1),
(1161, 'لبنان', 'بيروت', 'المنصورية', '33.8522849', '35.56852189999995', 165, 166, 'المنصورية', 1),
(1162, 'قطر', 'الدوحة', 'الوكير', '25.2105713', '51.577436300000045', 140, 141, 'الوكير', 1),
(1163, 'قطر', 'الدوحة', 'السد', '25.2838208', '51.491357900000025', 140, 141, 'السد', 1),
(1164, 'قطر', 'الدوحة', 'المنتزة', '25.2718822', '51.51763600000004', 140, 141, 'المنتزة', 1),
(1165, 'مصر', 'القاهرة', 'مرسى مطروح', '30.1193284', '31.30044040000007', 3, 37, 'مرسى مطروح', 1),
(1166, 'مصر', 'الإسكندرية', 'العصافرة', '31.2628589', '29.997725100000025', 3, 38, 'العصافرة', 1),
(1167, 'مصر', 'الإسكندرية', 'المراغي', '31.2167905', '30.01162709999994', 3, 38, 'المراغي', 1),
(1168, 'الكويت', 'الاحمدي', 'القصور', '29.2146014', '48.07291129999999', 95, 108, 'القصور', 1),
(1169, 'الكويت', 'الفروانية ', 'الرحاب', '29.2852067', '47.93418889999998', 95, 277, 'الرحاب', 1),
(1170, 'الكويت', 'الكويت العاصمة', 'كبد', '0', '0', 95, 106, 'كبد', 1),
(1171, 'الكويت', 'الفروانية ', 'الزهراء', '29.2780625', '47.99607430000003', 95, 277, 'الزهراء', 1),
(1172, 'الكويت', 'الاحمدي', 'القرين', '29.2021951', '48.07787229999997', 95, 108, 'القرين', 1),
(1173, 'الكويت', 'الاحمدي', 'الصباحيه', '29.1100606', '48.105165899999974', 95, 108, 'الصباحيه', 1),
(1174, 'الكويت', 'الكويت العاصمة', 'القادسيه', '29.3499618', '48.00350530000003', 95, 106, 'القادسيه', 1),
(1175, 'الكويت', 'الاحمدي', 'الفنطاس', '29.1696666', '48.11757669999997', 95, 108, 'الفنطاس', 1),
(1176, 'الكويت', 'الفروانية ', 'الرابيه', '29.29663009999999', '47.93913710000004', 95, 277, 'الرابيه', 1),
(1177, 'الإمارات', 'ابو ظبي', 'المرور', '0', '0', 1, 14, 'المرور', 1),
(1178, 'السعودية', 'مكّة المكرمة', 'العزيزية', '21.4152259', '39.8527679', 2, 15, 'العزيزية', 1),
(1179, 'الإمارات', 'ابو ظبي', 'الخبيصي', '24.2359556', '55.733442500000024', 1, 14, 'الخبيصي', 1),
(1180, 'السعودية', 'جدة', 'الشوقية', '21.2758544', '40.41772119999996', 2, 13, 'الشوقية', 1),
(1181, 'الكويت', 'حولي', 'اشبيله', '29.2728333', '47.93913710000004', 95, 276, 'اشبيله', 1),
(1182, 'السعودية', 'جدة', 'العزيزيه', '21.5535624', '39.19337329999996', 2, 13, 'العزيزيه', 1),
(1183, 'الكويت', 'حولي', 'الأندلس', '29.3369141', '47.96110020000003', 95, 276, 'الأندلس', 1),
(1184, 'السعودية', 'جدة', 'الصفاء', '21.5857702', '39.21156780000001', 2, 13, 'الصفاء', 1),
(1185, 'الكويت', 'حولي', 'العدان', '29.2284396', '48.065470600000026', 95, 276, 'العدان', 1),
(1186, 'السعودية', 'القصيم', 'الريان', '26.4051626', '43.9174448', 2, 70, 'الريان', 1),
(1187, 'مصر', 'القاهرة', 'الشروق', '30.0219514', '31.22501060000002', 3, 37, 'الشروق', 1),
(1188, 'مصر', 'القاهرة', 'القاهره الجديده', '30.0444196', '31.23571160000006', 3, 37, 'القاهره الجديده', 1),
(1189, 'مصر', 'القاهرة', 'شرم الشيخ', '29.9935938', '31.19994870000005', 3, 37, 'شرم الشيخ', 1),
(1190, 'المغرب', 'الدار البيضاء', 'زحليكة', '33.5731104', '-7.589843400000063', 51, 54, 'زحليكة', 1),
(1191, 'مصر', 'الإسكندرية', 'العيسوي', '31.190918', '29.932341199999996', 3, 38, 'العيسوي', 1),
(1192, 'مصر', 'الإسكندرية', 'سموحه', '31.21454959999999', '29.945102200000065', 3, 38, 'سموحه', 1),
(1193, 'السعودية', 'جدة', 'الشرائع', '21.2854067', '39.23755069999993', 2, 13, 'الشرائع', 1),
(1194, 'السعودية', 'مكّة المكرمة', 'الهدا', '21.357765', '40.27822390000006', 2, 15, 'الهدا', 1),
(1195, 'السعودية', 'جدة', 'الحرازات', '21.4787783', '39.333836099999985', 2, 13, 'الحرازات', 1),
(1196, 'السودان', 'ام درمان', 'امبده', '15.6676939', '32.461381099999926', 235, 238, 'امبده', 1),
(1197, 'مصر', 'الإسكندرية', 'ترعة زايد', '31.0226363', '30.46171579999998', 3, 38, 'ترعة زايد', 1),
(1198, 'السعودية', 'جدة', 'كورنيش قاردنز', '21.2854067', '39.23755069999993', 2, 13, 'كورنيش قاردنز', 1),
(1199, 'السودان', 'الخرطوم', 'الصحافه', '15.5373564', '32.54010249999999', 235, 236, 'الصحافه', 1),
(1200, 'السعودية', 'مكّة المكرمة', 'الشرائع', '21.5033306', '39.924742899999956', 2, 15, 'الشرائع', 1),
(1201, 'السودان', 'الخرطوم', 'الجريف', '15.5752566', '32.55653499999994', 235, 236, 'الجريف', 1),
(1202, 'السودان', 'الخرطوم', 'الديم', '15.6027497', '32.50306169999999', 235, 236, 'الديم', 1),
(1203, 'السودان', 'الخرطوم', 'الحله  الجديدة', '15.5719698', '32.51747290000003', 235, 236, 'الحله  الجديدة', 1),
(1204, 'السودان', 'الخرطوم', 'جبرة', '15.5391412', '32.52531810000005', 235, 236, 'جبرة', 1),
(1205, 'السودان', 'الخرطوم', 'السجانه', '15.5759496', '32.52808649999997', 235, 236, 'السجانه', 1),
(1206, 'السعودية', 'جدة', 'القمريه', '21.2758544', '40.41772119999996', 2, 13, 'القمريه', 1),
(1207, 'السودان', 'ام درمان', 'بانت', '15.6247391', '32.470783900000015', 235, 238, 'بانت', 1),
(1208, 'السودان', 'ام درمان', 'الثورة', '15.6853502', '32.48564899999997', 235, 238, 'الثورة', 1),
(1209, 'مصر', 'الإسماعيلية', 'الاسماعيليه', '30.5964923', '32.27145870000004', 3, 50, 'الاسماعيليه', 1),
(1210, 'مصر', 'القاهرة', 'الحى العاشر', '30.0242628', '31.38846710000007', 3, 37, 'الحى العاشر', 1),
(1211, 'السودان', 'ام درمان', 'الصالحه', '15.5351041', '32.41274720000001', 235, 238, 'الصالحه', 1),
(1212, 'السعودية', 'جدة', 'جوهرة العروس', '21.2854067', '39.23755069999993', 2, 13, 'جوهرة العروس', 1),
(1213, 'السودان', 'ام درمان', 'المهندسين', '15.6164228', '32.46653839999999', 235, 238, 'المهندسين', 1),
(1214, 'مصر', 'القاهرة', 'الزمالك', '30.0609422', '31.219708999999966', 3, 37, 'الزمالك', 1),
(1215, 'السودان', 'الخرطوم', 'الحلفايا', '15.7140246', '32.531415400000014', 235, 236, 'الحلفايا', 1),
(1216, 'السودان', 'الخرطوم', 'الصبابى', '15.6347027', '32.511814800000025', 235, 236, 'الصبابى', 1),
(1217, 'البحرين', 'المنامة', 'ستره', '26.2090151', '50.60475240000005', 142, 151, 'ستره', 1),
(1218, 'السودان', 'الخرطوم', 'المغتربين', '15.5006544', '32.55989939999995', 235, 236, 'المغتربين', 1),
(1219, 'الإمارات', 'الشارقة', 'مردف', '25.2196159', '55.41947529999993', 1, 18, 'مردف', 1),
(1220, 'السودان', 'دنقلا', 'دنقلا', '19.1461403', '30.470325799999955', 235, 242, 'دنقلا', 1),
(1221, 'السودان', 'الخرطوم', 'برى', '15.6022892', '32.57545140000002', 235, 236, 'برى', 1),
(1222, 'مصر', 'القاهرة', 'شبرا الخيمه', '30.0444196', '31.23571160000006', 3, 37, 'شبرا الخيمه', 1),
(1223, 'السودان', 'الخرطوم', 'الاندلس', '30.0699698', '31.199860299999955', 235, 236, 'الاندلس', 1),
(1224, 'لبنان', 'بيروت', 'معمورة', '33.8886289', '35.49547940000002', 165, 166, 'معمورة', 1),
(1225, 'لبنان', 'بيروت', 'شويفات', '33.8087097', '35.522343399999954', 165, 166, 'شويفات', 1),
(1226, 'السودان', 'الخرطوم', 'الفيحاء', '15.6041292', '32.62086780000004', 235, 236, 'الفيحاء', 1),
(1227, 'السودان', 'ام درمان', 'الملازمين', '15.6426622', '32.494838399999935', 235, 238, 'الملازمين', 1),
(1228, 'العراق', 'بغداد', 'زيونه', '33.3280378', '44.46301089999997', 218, 219, 'زيونه', 1),
(1229, 'السعودية', 'مكّة المكرمة', 'العوالي', '21.3123809', '39.919604700000036', 2, 15, 'العوالي', 1),
(1230, 'العراق', 'بغداد', 'الكرخ', '33.316263', '44.40401220000001', 218, 219, 'الكرخ', 1),
(1231, 'العراق', 'بغداد', 'الغزالي', '33.3419543', '44.27632349999999', 218, 219, 'الغزالي', 1),
(1232, 'العراق', 'بغداد', 'الرصافة', '33.3366904', '44.40873480000005', 218, 219, 'الرصافة', 1),
(1233, 'العراق', 'بغداد', 'الداودي', '33.3131894', '44.335481399999935', 218, 219, 'الداودي', 1),
(1234, 'السودان', 'الخرطوم', 'شمبات', '15.6444538', '32.50498279999999', 235, 236, 'شمبات', 1),
(1235, 'العراق', 'بغداد', 'المنصور', '33.3146572', '44.347304099999974', 218, 219, 'المنصور', 1),
(1236, 'مصر', 'الإسكندرية', 'أبو قير', '31.3114241', '30.060334199999943', 3, 38, 'أبو قير', 1),
(1237, 'العراق', 'بغداد', 'الحارثية', '33.3052448', '44.37330380000003', 218, 219, 'الحارثية', 1),
(1238, 'مصر', 'القاهرة', 'عزبة النخل', '30.1450984', '31.318670399999974', 3, 37, 'عزبة النخل', 1),
(1239, 'مصر', 'دمياط', 'دمياط الجديدة', '31.430926', '31.76559539999994', 3, 279, 'دمياط الجديدة', 1),
(1240, 'الاردن', 'عمّان', 'بليلا', '31.9749524', '35.89198520000002', 131, 132, 'بليلا', 1),
(1241, 'مصر', 'القاهرة', 'جسر السويس', '30.0988601', '31.314828000000034', 3, 37, 'جسر السويس', 1),
(1242, 'مصر', 'القاهرة', 'شبرا الخيمة', '30.0444196', '31.23571160000006', 3, 37, 'شبرا الخيمة', 1),
(1243, 'السعودية', 'جدة', 'الروضه', '21.5604897', '39.159569799999986', 2, 13, 'الروضه', 1),
(1244, 'الاردن', 'عمّان', 'الدابوق', '0', '0', 131, 132, 'الدابوق', 1),
(1245, 'الاردن', 'عمّان', 'الجيزة', '29.989875', '31.25104650000003', 131, 132, 'الجيزة', 1),
(1246, 'الاردن', 'عمّان', 'الحنوطية', '0', '0', 131, 132, 'الحنوطية', 1),
(1247, 'المغرب', 'مراكش', 'سيدى زوين', '31.6656696', '-8.344439299999976', 51, 211, 'سيدى زوين', 1),
(1248, 'الاردن', 'عمّان', 'أم نوارة', '0', '0', 131, 132, 'أم نوارة', 1),
(1249, 'الاردن', 'عمّان', 'الظهر', '0', '0', 131, 132, 'الظهر', 1),
(1250, 'الاردن', 'عمّان', 'بلعما', '0', '0', 131, 132, 'بلعما', 1),
(1251, 'الاردن', 'عمّان', 'بلعاس', '31.89727', '35.92977459999997', 131, 132, 'بلعاس', 1),
(1252, 'الاردن', 'عمّان', 'دحل', '31.9825387', '35.83611459999997', 131, 132, 'دحل', 1),
(1253, 'الاردن', 'عمّان', 'عبدون', '31.9260571', '35.93528089999995', 131, 132, 'عبدون', 1),
(1254, 'الاردن', 'عمّان', 'بيرين', '0', '0', 131, 132, 'بيرين', 1),
(1255, 'الاردن', 'عمّان', 'السرو', '0', '0', 131, 132, 'السرو', 1),
(1256, 'الاردن', 'عمّان', 'أبو السوس', '31.1776879', '29.89835919999996', 131, 132, 'أبو السوس', 1),
(1257, 'الاردن', 'عمّان', 'حوض أبو العساكر', '0', '0', 131, 132, 'حوض أبو العساكر', 1),
(1258, 'الاردن', 'عمّان', 'وادي السير', '31.9552514', '35.829294000000004', 131, 132, 'وادي السير', 1),
(1259, 'الاردن', 'عمّان', 'الناعور', '31.8633483', '35.822131799999966', 131, 132, 'الناعور', 1),
(1260, 'الاردن', 'عمّان', 'الظهير', '31.9764226', '35.88518709999994', 131, 132, 'الظهير', 1),
(1261, 'الاردن', 'عمّان', 'الكرسي', '0', '0', 131, 132, 'الكرسي', 1),
(1262, 'الاردن', 'عمّان', 'النيبو', '31.766667', '35.72500000000002', 131, 132, 'النيبو', 1),
(1263, 'الاردن', 'عمّان', 'الجبيهة', '32.0360667', '35.86795140000004', 131, 132, 'الجبيهة', 1),
(1264, 'الاردن', 'عمّان', 'شفا بدران', '0', '0', 131, 132, 'شفا بدران', 1),
(1265, 'الإمارات', 'ابو ظبي', 'بني ياس', '0', '0', 1, 14, 'بني ياس', 1),
(1266, 'الاردن', 'عمّان', 'جرش', '32.0245049', '35.84225909999998', 131, 132, 'جرش', 1),
(1267, 'قطر', 'الدوحة', 'ازدان', '25.332579', '51.45579550000002', 140, 141, 'ازدان', 1),
(1268, 'الاردن', 'عمّان', 'الشكارة', '0', '0', 131, 132, 'الشكارة', 1),
(1269, 'الاردن', 'عمّان', 'البيادر', '31.9545286', '35.84033929999998', 131, 132, 'البيادر', 1),
(1270, 'قطر', 'الدوحة', 'ابو هامور', '25.2388065', '51.491357900000025', 140, 141, 'ابو هامور', 1),
(1271, 'قطر', 'الدوحة', 'المنصورة', '25.2692576', '51.52946450000002', 140, 141, 'المنصورة', 1),
(1272, 'قطر', 'الدوحة', 'النعيم', '25.3059184', '51.496308399999975', 140, 141, 'النعيم', 1),
(1273, 'قطر', 'الدوحة', 'الخيسة', '25.3981991', '51.4519239', 140, 141, 'الخيسة', 1),
(1274, 'الاردن', 'عمّان', 'الحويطي', '0', '0', 131, 132, 'الحويطي', 1),
(1275, 'قطر', 'الدوحة', 'الخليفة', '25.3354978', '51.51336949999995', 140, 141, 'الخليفة', 1),
(1276, 'قطر', 'الدوحة', 'أم اصلال', '25.2854473', '51.53103979999992', 140, 141, 'أم اصلال', 1),
(1277, 'الاردن', 'عمّان', 'أم زويتينة', '0', '0', 131, 132, 'أم زويتينة', 1),
(1278, 'قطر', 'الدوحة', 'الخريطات', '25.3860778', '51.42570860000001', 140, 141, 'الخريطات', 1),
(1279, 'الاردن', 'عمّان', 'الناعور الجديدة', '0', '0', 131, 132, 'الناعور الجديدة', 1),
(1280, 'الاردن', 'عمّان', 'عين الباشا', '31.2037523', '29.90413549999994', 131, 132, 'عين الباشا', 1),
(1281, 'الاردن', 'عمّان', 'أم الزويتينة', '0', '0', 131, 132, 'أم الزويتينة', 1),
(1282, 'الاردن', 'عمّان', 'زينات الربوع', '0', '0', 131, 132, 'زينات الربوع', 1),
(1283, 'الاردن', 'عمّان', 'الخريم', '0', '0', 131, 132, 'الخريم', 1),
(1284, 'السعودية', 'الدمام', 'غنام', '0', '0', 2, 16, 'غنام', 1),
(1285, 'قطر', 'الدوحة', 'العزيزية', '25.2425954', '51.44670929999995', 140, 141, 'العزيزية', 1),
(1286, 'الإمارات', 'ابو ظبي', 'الشامخة', '24.3948831', '54.70825680000007', 1, 14, 'الشامخة', 1),
(1287, 'مصر', 'الإسكندرية', 'المندرة', '31.2748287', '30.00615700000003', 3, 38, 'المندرة', 1),
(1288, 'مصر', 'الإسكندرية', 'مرسى مطروح', '31.3372074', '27.253349100000037', 3, 38, 'مرسى مطروح', 1),
(1289, 'قطر', 'الدوحة', 'النصرب', '25.2695833', '51.49792649999995', 140, 141, 'النصرب', 1),
(1290, 'قطر', 'الدوحة', 'المرة', '25.3746108', '51.48651410000002', 140, 141, 'المرة', 1),
(1291, 'الإمارات', 'ابو ظبي', 'الجيمي', '24.2359556', '55.733442500000024', 1, 14, 'الجيمي', 1),
(1292, 'الاردن', 'عمّان', 'السلط', '31.8666667', '35.633333300000004', 131, 132, 'السلط', 1),
(1293, 'الاردن', 'عمّان', 'شفابدران', '0', '0', 131, 132, 'شفابدران', 1),
(1294, 'الاردن', 'عمّان', 'اللبن', '32.056231', '35.880300300000044', 131, 132, 'اللبن', 1),
(1295, 'الاردن', 'عمّان', 'صروت', '31.9887288', '35.86248360000002', 131, 132, 'صروت', 1),
(1296, 'الاردن', 'عمّان', 'شارع الحرية', '31.2037523', '29.90413549999994', 131, 132, 'شارع الحرية', 1),
(1297, 'الاردن', 'عمّان', 'الرابية', '0', '0', 131, 132, 'الرابية', 1),
(1298, 'الاردن', 'عمّان', 'حنوطيا', '0', '0', 131, 132, 'حنوطيا', 1),
(1299, 'الاردن', 'عمّان', 'الرابيه', '0', '0', 131, 132, 'الرابيه', 1),
(1300, 'الاردن', 'عمّان', 'الطفيلة', '30.83583299999999', '35.612221999999974', 131, 132, 'الطفيلة', 1),
(1301, 'مصر', 'القاهرة', 'بدر', '30.0506311', '31.268230000000017', 3, 37, 'بدر', 1),
(1302, 'مصر', 'الإسكندرية', 'ميامى', '31.2652739', '30.00177020000001', 3, 38, 'ميامى', 1),
(1303, 'مصر', 'القاهرة', 'مدينة السلام', '30.1703332', '31.41187530000002', 3, 37, 'مدينة السلام', 1),
(1304, 'مصر', 'القاهرة', 'ارض الجولف', '30.0889636', '31.30127010000001', 3, 37, 'ارض الجولف', 1),
(1305, 'مصر', 'الإسكندرية', 'ستانللى', '31.2338372', '29.95074139999997', 3, 38, 'ستانللى', 1),
(1306, 'مصر', 'الإسكندرية', 'فيكتوريا', '31.1356994', '29.822136499999942', 3, 38, 'فيكتوريا', 1),
(1307, 'مصر', 'القاهرة', 'الياسمين', '30.04397519999999', '31.451331400000072', 3, 37, 'الياسمين', 1),
(1308, 'مصر', 'القاهرة', 'النعام', '30.137614', '31.243939299999965', 3, 37, 'النعام', 1),
(1309, 'مصر', 'الإسكندرية', 'ابوقير', '31.3114241', '30.060334199999943', 3, 38, 'ابوقير', 1),
(1310, 'مصر', 'القليوبية', 'قليوب', '30.1762897', '31.206785099999934', 3, 40, 'قليوب', 1),
(1311, 'مصر', 'القاهرة', 'العباسية', '30.0650259', '31.271430799999962', 3, 37, 'العباسية', 1),
(1312, 'مصر', 'القاهرة', 'التحرير', '30.0439275', '31.231719099999964', 3, 37, 'التحرير', 1),
(1313, 'مصر', 'القاهرة', 'حدائق حلوان', '30.02939769999999', '31.235234499999933', 3, 37, 'حدائق حلوان', 1),
(1314, 'مصر', 'الإسكندرية', 'الساحل', '30.0951105', '31.223427700000002', 3, 38, 'الساحل', 1),
(1315, 'مصر', 'القاهرة', 'الشيخ زايد', '30.1759753', '31.42418040000007', 3, 37, 'الشيخ زايد', 1),
(1316, 'مصر', 'القاهرة', 'الساحل الشمالي', '30.0818466', '31.26085999999998', 3, 37, 'الساحل الشمالي', 1),
(1317, 'مصر', 'الإسكندرية', 'لوران', '31.2518211', '29.976451699999984', 3, 38, 'لوران', 1),
(1318, 'مصر', 'طنطا', 'الفاتح', '30.7928045', '30.989938199999983', 3, 47, 'الفاتح', 1),
(1319, 'مصر', 'الإسكندرية', 'محرم بك', '31.1916027', '29.91181419999998', 3, 38, 'محرم بك', 1),
(1320, 'مصر', 'القاهرة', 'حي الأشجار', '30.006209', '31.30286030000002', 3, 37, 'حي الأشجار', 1),
(1321, 'مصر', 'الإسكندرية', 'فكتوريا', '31.1356994', '29.822136499999942', 3, 38, 'فكتوريا', 1),
(1322, 'مصر', 'الإسكندرية', 'زيزنيا', '31.2409932', '29.96486630000004', 3, 38, 'زيزنيا', 1),
(1323, 'مصر', 'القاهرة', 'الغردقة', '30.1703046', '31.411051499999985', 3, 37, 'الغردقة', 1),
(1324, 'مصر', 'القاهرة', 'مدينة العبور', '30.2283408', '31.47989480000001', 3, 37, 'مدينة العبور', 1),
(1325, 'مصر', 'القاهرة', 'العين السخنه', '29.9259483', '31.606894699999998', 3, 37, 'العين السخنه', 1),
(1326, 'مصر', 'الإسكندرية', 'مارينا', '30.8180344', '29.027451199999973', 3, 38, 'مارينا', 1),
(1327, 'مصر', 'القاهرة', 'المنيب', '30.0213609', '31.226864699999965', 3, 37, 'المنيب', 1),
(1328, 'مصر', 'القاهرة', 'دمياط', '30.0902279', '31.26836359999993', 3, 37, 'دمياط', 1),
(1329, 'مصر', 'القاهرة', 'الرحاب', '30.06602579999999', '31.485606599999983', 3, 37, 'الرحاب', 1),
(1330, 'مصر', 'الإسكندرية', 'النوبارية', '31.1564686', '29.86409320000007', 3, 38, 'النوبارية', 1),
(1331, 'مصر', 'الإسكندرية', 'المندره', '31.2748287', '30.00615700000003', 3, 38, 'المندره', 1),
(1332, 'مصر', 'القاهرة', 'جمال عبد الناصر', '30.0898145', '31.25961259999997', 3, 37, 'جمال عبد الناصر', 1),
(1333, 'الإمارات', 'ابو ظبي', 'الخالديه', '24.4983881', '54.379654200000004', 1, 14, 'الخالديه', 1),
(1334, 'الإمارات', 'ابو ظبي', 'الدفاع', '0', '0', 1, 14, 'الدفاع', 1),
(1335, 'السودان', 'الخرطوم', 'امدرمان', '15.5006544', '32.55989939999995', 235, 236, 'امدرمان', 1),
(1336, 'الاردن', 'عمّان', 'الشميساني', '0', '0', 131, 132, 'الشميساني', 1),
(1337, 'الكويت', 'الفروانية ', 'غرناطة', '29.312521', '47.87855319999994', 95, 277, 'غرناطة', 1),
(1338, 'مصر', 'القاهرة', 'وادي النطون', '30.5044805', '30.213797399999976', 3, 37, 'وادي النطون', 1),
(1339, 'مصر', 'الإسكندرية', 'شدس', '31.2383014', '29.97234209999999', 3, 38, 'شدس', 1),
(1340, 'السودان', 'ام درمان', 'الواحه', '15.6965297', '32.511814800000025', 235, 238, 'الواحه', 1),
(1341, 'السودان', 'الخرطوم', 'الاملاك', '15.6201316', '32.53373850000003', 235, 236, 'الاملاك', 1),
(1342, 'مصر', 'القاهرة', 'حلوان', '29.8483192', '31.33685289999994', 3, 37, 'حلوان', 1),
(1343, 'مصر', 'الإسماعيلية', 'الشيخ زايد', '30.6125703', '32.27889890000006', 3, 50, 'الشيخ زايد', 1),
(1344, 'مصر', 'القاهرة', 'العجمى', '30.1045557', '31.219597099999987', 3, 37, 'العجمى', 1),
(1345, 'مصر', 'الإسكندرية', 'سبورتنج', '31.2216072', '29.93430079999996', 3, 38, 'سبورتنج', 1),
(1346, 'مصر', 'القاهرة', 'سوهاج', '30.1030493', '31.278264900000067', 3, 37, 'سوهاج', 1),
(1347, 'مصر', 'القاهرة', 'الدقى', '30.0444196', '31.23571160000006', 3, 37, 'الدقى', 1),
(1348, 'السعودية', 'الرياض', 'العمارية', '24.6985864', '46.70848130000002', 2, 12, 'العمارية', 1),
(1349, 'مصر', 'القاهرة', 'حدائق الأهرام', '29.99324459999999', '31.17372219999993', 3, 37, 'حدائق الأهرام', 1),
(1350, 'مصر', 'دمياط', 'ميدان سرور', '31.2277502', '29.963189100000022', 3, 279, 'ميدان سرور', 1),
(1351, 'مصر', 'القاهرة', 'المريوطية', '30.0962635', '31.19962099999998', 3, 37, 'المريوطية', 1),
(1352, 'مصر', 'القاهرة', 'شبرا', '30.1002392', '31.25057400000003', 3, 37, 'شبرا', 1),
(1353, 'الإمارات', 'ابو ظبي', 'المفرق', '24.331032', '54.60401209999998', 1, 14, 'المفرق', 1),
(1354, 'الإمارات', 'ابو ظبي', 'الكورنيش', '0', '0', 1, 14, 'الكورنيش', 1),
(1355, 'السعودية', 'الرياض', 'حي قرطبة', '24.8157379', '46.73364570000001', 2, 12, 'حي قرطبة', 1),
(1356, 'الإمارات', 'ابو ظبي', 'راس زويد', '0', '0', 1, 14, 'راس زويد', 1),
(1357, 'السعودية', 'الرياض', 'الخرج', '24.5037338', '46.93395639999994', 2, 12, 'الخرج', 1),
(1358, 'السعودية', 'الرياض', 'دانة الياسمين', '24.8306614', '46.63674620000006', 2, 12, 'دانة الياسمين', 1),
(1359, 'السعودية', 'الرياض', 'عليشه', '24.6320628', '46.68743649999999', 2, 12, 'عليشه', 1),
(1360, 'السعودية', 'الرياض', 'حي المهديه', '30.5885368', '31.495857699999988', 2, 12, 'حي المهديه', 1),
(1361, 'السعودية', 'الدمام', 'الضاحية', '26.4452585', '49.98797390000004', 2, 16, 'الضاحية', 1),
(1362, 'مصر', 'الإسكندرية', 'رشدي', '31.2324872', '29.949082699999963', 3, 38, 'رشدي', 1),
(1363, 'مصر', 'القاهرة', 'مدينة اكتوبر', '30.1024302', '31.277383099999952', 3, 37, 'مدينة اكتوبر', 1),
(1364, 'الكويت', 'الكويت العاصمة', 'الهجن', '0', '0', 95, 106, 'الهجن', 1),
(1365, 'مصر', 'الإسكندرية', 'باكوس', '31.2383983', '29.967002500000035', 3, 38, 'باكوس', 1),
(1366, 'الكويت', 'الاحمدي', 'المنقف', '29.1070609', '48.12398940000003', 95, 108, 'المنقف', 1),
(1367, 'المغرب', 'الرباط - سلا', 'سـلا', '34.0367367', '-6.748201600000016', 51, 53, 'سـلا', 1),
(1368, 'السعودية', 'جدة', 'العتيبية', '21.4364317', '39.79509989999997', 2, 13, 'العتيبية', 1),
(1369, 'السعودية', 'الرياض', 'الواحه', '24.7425273', '46.71642559999998', 2, 12, 'الواحه', 1),
(1370, 'الكويت', 'الاحمدي', 'أبوحليفه', '29.1271757', '48.125024499999995', 95, 108, 'أبوحليفه', 1),
(1371, 'السعودية', 'جدة', 'المشاعل', '21.5635788', '39.177342700000054', 2, 13, 'المشاعل', 1),
(1372, 'الكويت', 'الفروانية ', 'الفروانيه', '29.281596', '47.960251799999924', 95, 277, 'الفروانيه', 1),
(1373, 'السعودية', 'جدة', 'بقشان', '21.5469591', '39.16268200000002', 2, 13, 'بقشان', 1),
(1374, 'السعودية', 'جدة', 'الحرمين', '21.5261141', '39.24309130000006', 2, 13, 'الحرمين', 1),
(1375, 'مصر', 'القاهرة', 'جمصة', '30.0444196', '31.23571160000006', 3, 37, 'جمصة', 1),
(1376, 'الكويت', 'حولي', 'الرميثيه', '29.3180299', '48.075391699999955', 95, 276, 'الرميثيه', 1),
(1377, 'المغرب', 'الدار البيضاء', 'وزان', '33.5844132', '-7.522862799999984', 51, 54, 'وزان', 1),
(1378, 'الكويت', 'الكويت العاصمة', 'العديليه', '29.328058', '47.98369150000008', 95, 106, 'العديليه', 1),
(1379, 'لبنان', 'طرابلس', 'الكريمية', '34.4380941', '35.83083710000005', 165, 167, 'الكريمية', 1),
(1380, 'قطر', 'الدوحة', 'السيلية', '25.2854473', '51.53103979999992', 140, 141, 'السيلية', 1),
(1381, 'قطر', 'الدوحة', 'المنتزه', '25.2718822', '51.51763600000004', 140, 141, 'المنتزه', 1),
(1382, 'قطر', 'الدوحة', 'الروضة', '25.2589214', '51.52438050000001', 140, 141, 'الروضة', 1),
(1383, 'ليبيا', 'بنغازي', 'القوارشه', '32.0947711', '20.18791060000001', 213, 216, 'القوارشه', 1),
(1384, 'السعودية', 'الرياض', 'اليمامه', '24.5947367', '46.71642559999998', 2, 12, 'اليمامه', 1),
(1385, 'السعودية', 'الرياض', 'المهديه', '24.6523147', '46.511448700000074', 2, 12, 'المهديه', 1),
(1386, 'السعودية', 'الرياض', 'شارع الشيخ حسن', '30.5885368', '31.495857699999988', 2, 12, 'شارع الشيخ حسن', 1),
(1387, 'السعودية', 'الرياض', 'الفريان', '24.6068338', '46.7197989', 2, 12, 'الفريان', 1),
(1388, 'السعودية', 'الرياض', 'الامانه', '24.6241432', '46.747252600000024', 2, 12, 'الامانه', 1),
(1389, 'السعودية', 'الرياض', 'الخير', '25.0897537', '46.420084900000006', 2, 12, 'الخير', 1),
(1390, 'السعودية', 'الرياض', 'حي ثليم', '24.7102877', '46.812268899999935', 2, 12, 'حي ثليم', 1),
(1391, 'السعودية', 'الرياض', 'مخطط هشام', '24.7221595', '46.76137640000002', 2, 12, 'مخطط هشام', 1),
(1392, 'السعودية', 'الرياض', 'الثمامه', '24.6237282', '46.744517900000005', 2, 12, 'الثمامه', 1),
(1393, 'السعودية', 'الرياض', 'حي المؤتمرات', '24.6701907', '46.68743649999999', 2, 12, 'حي المؤتمرات', 1),
(1394, 'السعودية', 'الرياض', 'حي البديعة', '24.5784551', '46.58911999999998', 2, 12, 'حي البديعة', 1),
(1395, 'السعودية', 'الرياض', 'بنبان', '24.9796952', '46.535519799999975', 2, 12, 'بنبان', 1),
(1396, 'السعودية', 'الرياض', 'القمرا', '25.0054482', '46.54483099999993', 2, 12, 'القمرا', 1),
(1397, 'السعودية', 'الرياض', 'حي الملك عبدالله', '24.7203443', '46.64674830000001', 2, 12, 'حي الملك عبدالله', 1),
(1398, 'السعودية', 'الرياض', 'الأمانة', '24.6241432', '46.747252600000024', 2, 12, 'الأمانة', 1),
(1399, 'السعودية', 'الرياض', 'المهديه مخطط ب', '25.0054482', '46.54483099999993', 2, 12, 'المهديه مخطط ب', 1),
(1400, 'السعودية', 'الرياض', 'أم الحمام الشرقية', '24.6854455', '46.65223100000003', 2, 12, 'أم الحمام الشرقية', 1),
(1401, 'السعودية', 'الرياض', 'ضاحية لبن', '24.6066451', '46.54602520000003', 2, 12, 'ضاحية لبن', 1),
(1402, 'السعودية', 'الرياض', 'السليمانيه', '24.7024525', '46.704344799999944', 2, 12, 'السليمانيه', 1),
(1403, 'السعودية', 'الرياض', 'الصحافه الذهبي', '24.8149817', '46.62782160000006', 2, 12, 'الصحافه الذهبي', 1),
(1404, 'السعودية', 'الرياض', 'العزيزيه', '24.5926822', '46.75752209999996', 2, 12, 'العزيزيه', 1),
(1405, 'السعودية', 'الرياض', 'العريض', '24.7248296', '46.64746100000002', 2, 12, 'العريض', 1),
(1406, 'الإمارات', 'ابو ظبي', 'كورنيش البحيرة', '0', '0', 1, 14, 'كورنيش البحيرة', 1),
(1407, 'الإمارات', 'ابو ظبي', 'مدينة عمالية', '0', '0', 1, 14, 'مدينة عمالية', 1),
(1408, 'الإمارات', 'ابو ظبي', 'منطقة مويلح', '0', '0', 1, 14, 'منطقة مويلح', 1),
(1409, 'مصر', 'الزقازيق', 'تلحوين', '30.5867347', '31.473149000000035', 3, 49, 'تلحوين', 1),
(1410, 'مصر', 'القاهرة', 'منتجع السليمانيه', '30.0444196', '31.23571160000006', 3, 37, 'منتجع السليمانيه', 1),
(1411, 'العراق', 'بغداد', 'شارع محمد القاسم   سبع ابكار', '33.3929242', '44.36914139999999', 218, 219, 'شارع محمد القاسم   سبع ابكار', 1),
(1412, 'الكويت', 'الاحمدي', 'الفححيل', '29.083128', '48.133464300000014', 95, 108, 'الفححيل', 1),
(1413, 'الاردن', 'اربد', 'اربد المنطقه الشرقيه بالقرب من ال SOS', '32.5454418', '35.85715319999997', 131, 135, 'اربد المنطقه الشرقيه بالقرب من ال SOS', 1),
(1414, 'السودان', 'الخرطوم', 'الخرطوم بحرى شمبالت الشمالية جوار مسرح خضر بشير', '15.5006544', '32.55989939999995', 235, 236, 'الخرطوم بحرى شمبالت الشمالية جوار مسرح خضر بشير', 1),
(1415, 'الإمارات', 'ام القيوين', 'السلمه', '0', '0', 1, 61, 'السلمه', 1),
(1416, 'الإمارات', 'الفجيرة', 'الفجيرة المحطه', '25.1288099', '56.32648489999997', 1, 62, 'الفجيرة المحطه', 1),
(1417, 'الإمارات', 'ام القيوين', 'ابيضة', '0', '0', 1, 61, 'ابيضة', 1),
(1418, 'الإمارات', 'ام القيوين', 'مقابل البحر', '0', '0', 1, 61, 'مقابل البحر', 1),
(1419, 'الإمارات', 'ام القيوين', 'الظيت براس الخيمة', '0', '0', 1, 61, 'الظيت براس الخيمة', 1),
(1420, 'الإمارات', 'ام القيوين', 'جابر', '0', '0', 1, 61, 'جابر', 1),
(1421, 'الإمارات', 'ام القيوين', 'شعبية المرور', '0', '0', 1, 61, 'شعبية المرور', 1),
(1422, 'الإمارات', 'ام القيوين', 'شعبية الشيوخ  - الراس 2', '0', '0', 1, 61, 'شعبية الشيوخ  - الراس 2', 1),
(1423, 'الإمارات', 'ام القيوين', 'ام التعوب', '0', '0', 1, 61, 'ام التعوب', 1),
(1424, 'الإمارات', 'ام القيوين', 'الروضه', '25.5705917', '55.56076519999999', 1, 61, 'الروضه', 1),
(1425, 'الإمارات', 'ام القيوين', 'الحزام الأخضر', '25.5217535', '55.5330434', 1, 61, 'الحزام الأخضر', 1),
(1426, 'الإمارات', 'ام القيوين', 'الهبوب', '0', '0', 1, 61, 'الهبوب', 1),
(1427, 'الإمارات', 'ام القيوين', 'الرعفة', '0', '0', 1, 61, 'الرعفة', 1),
(1428, 'الإمارات', 'الفجيرة', 'صناعيه دبا الفجيره', '0', '0', 1, 62, 'صناعيه دبا الفجيره', 1),
(1429, 'الإمارات', 'ام القيوين', 'الصناعيه', '0', '0', 1, 61, 'الصناعيه', 1),
(1430, 'الإمارات', 'الفجيرة', 'الرحيب /دبا الفجيره', '0', '0', 1, 62, 'الرحيب /دبا الفجيره', 1),
(1431, 'الإمارات', 'ام القيوين', 'الهيوب 5', '0', '0', 1, 61, 'الهيوب 5', 1),
(1432, 'الإمارات', 'الفجيرة', 'الفيوم طامية', '0', '0', 1, 62, 'الفيوم طامية', 1),
(1433, 'الإمارات', 'ام القيوين', 'الفيوم طامية', '0', '0', 1, 61, 'الفيوم طامية', 1),
(1434, 'الإمارات', 'ام القيوين', 'الاذاعة', '0', '0', 1, 61, 'الاذاعة', 1),
(1435, 'الإمارات', 'الفجيرة', 'الطيبه', '0', '0', 1, 62, 'الطيبه', 1),
(1436, 'الإمارات', 'ام القيوين', 'ام الثعوب  الصناعية', '0', '0', 1, 61, 'ام الثعوب  الصناعية', 1),
(1437, 'الإمارات', 'عجمان', 'عجمان', '25.4212221', '55.59378149999998', 1, 60, 'عجمان', 1),
(1438, 'الإمارات', 'الفجيرة', 'صناعية الحيل', '0', '0', 1, 62, 'صناعية الحيل', 1),
(1439, 'الإمارات', 'عجمان', 'العامرة', '25.3899573', '55.582948999999985', 1, 60, 'العامرة', 1),
(1440, 'الإمارات', 'عجمان', 'الحوشي', '0', '0', 1, 60, 'الحوشي', 1),
(1441, 'الإمارات', 'عجمان', 'الياسمين', '25.3714642', '55.5718564', 1, 60, 'الياسمين', 1),
(1442, 'الإمارات', 'عجمان', 'شارع الملك فيصل', '0', '0', 1, 60, 'شارع الملك فيصل', 1),
(1443, 'الإمارات', 'عجمان', 'سيتي تاور', '0', '0', 1, 60, 'سيتي تاور', 1),
(1444, 'الإمارات', 'عجمان', 'ابراج اللؤلؤة', '0', '0', 1, 60, 'ابراج اللؤلؤة', 1),
(1445, 'الإمارات', 'عجمان', 'الراشديه - النعيميه - السوان ', '0', '0', 1, 60, 'الراشديه - النعيميه - السوان ', 1),
(1446, 'الإمارات', 'ام القيوين', 'المنامة', '26.2285161', '50.58604969999999', 1, 61, 'المنامة', 1),
(1447, 'الإمارات', 'ام القيوين', 'الصناعيه الجديدة', '0', '0', 1, 61, 'الصناعيه الجديدة', 1),
(1448, 'الإمارات', 'عجمان', 'المنامة', '25.3301904', '55.997132599999986', 1, 60, 'المنامة', 1),
(1449, 'الإمارات', 'ابو ظبي', ' بني ياس', '0', '0', 1, 14, ' بني ياس', 1),
(1450, 'الإمارات', 'ام القيوين', 'الحوية', '0', '0', 1, 61, 'الحوية', 1),
(1451, 'الإمارات', 'عجمان', 'الحوية', '0', '0', 1, 60, 'الحوية', 1),
(1452, 'الإمارات', 'ابو ظبي', 'المصفح', '24.3525309', '54.47628800000007', 1, 14, 'المصفح', 1),
(1453, 'الإمارات', 'ابو ظبي', 'مصفح الصناعية', '24.3711707', '54.509826100000055', 1, 14, 'مصفح الصناعية', 1),
(1454, 'الإمارات', 'ابو ظبي', 'مصفح الشعبية', '24.3228284', '54.51187989999994', 1, 14, 'مصفح الشعبية', 1),
(1455, 'الإمارات', 'ابو ظبي', 'الشهامة ', '24.5403273', '54.683555299999966', 1, 14, 'الشهامة ', 1),
(1456, 'الإمارات', 'ابو ظبي', 'أم النار', '24.4012042', '54.55228199999999', 1, 14, 'أم النار', 1),
(1457, 'الإمارات', 'ابو ظبي', 'مدينة الضباط', '0', '0', 1, 14, 'مدينة الضباط', 1),
(1458, 'الإمارات', 'ابو ظبي', ' بين الجسرين', '24.4012042', '54.55228199999999', 1, 14, ' بين الجسرين', 1),
(1459, 'الإمارات', 'ابو ظبي', 'الوثبة', '24.2018779', '54.71923760000004', 1, 14, 'الوثبة', 1),
(1460, 'الإمارات', 'ابو ظبي', 'الزهرة', '24.4324763', '54.42805850000002', 1, 14, 'الزهرة', 1),
(1461, 'الإمارات', 'ابو ظبي', 'الريحان', '24.4324763', '54.42805850000002', 1, 14, 'الريحان', 1),
(1462, 'الإمارات', 'ابو ظبي', 'الجوية', '0', '0', 1, 14, 'الجوية', 1),
(1463, 'الإمارات', 'ابو ظبي', 'المشرف', '24.4324763', '54.42805850000002', 1, 14, 'المشرف', 1),
(1464, 'الإمارات', 'ابو ظبي', 'القبيسات', '0', '0', 1, 14, 'القبيسات', 1),
(1465, 'الإمارات', 'ابو ظبي', 'الحضارم', '0', '0', 1, 14, 'الحضارم', 1),
(1466, 'الإمارات', 'ابو ظبي', 'الخالدية', '24.4983881', '54.379654200000004', 1, 14, 'الخالدية', 1),
(1467, 'الإمارات', 'ابو ظبي', ' النادي السياحي', '24.4983881', '54.379654200000004', 1, 14, ' النادي السياحي', 1),
(1468, 'الإمارات', 'ابو ظبي', 'الكرامة', '24.4983881', '54.379654200000004', 1, 14, 'الكرامة', 1),
(1469, 'الإمارات', 'ابو ظبي', 'النهضة', '24.2563522', '54.730219799999986', 1, 14, 'النهضة', 1),
(1470, 'الإمارات', 'ابو ظبي', 'المحاربة', '0', '0', 1, 14, 'المحاربة', 1),
(1471, 'الإمارات', 'ابو ظبي', 'البطين', '24.4983881', '54.379654200000004', 1, 14, 'البطين', 1),
(1472, 'الإمارات', 'ابو ظبي', 'المنهل', '24.4983881', '54.379654200000004', 1, 14, 'المنهل', 1),
(1473, 'الإمارات', 'ابو ظبي', 'المارينا', '24.4585896', '54.314781400000015', 1, 14, 'المارينا', 1),
(1474, 'الإمارات', 'ابو ظبي', 'خليفة أ', '24.4012042', '54.55228199999999', 1, 14, 'خليفة أ', 1),
(1475, 'الإمارات', 'ابو ظبي', 'شارع الكترا', '0', '0', 1, 14, 'شارع الكترا', 1),
(1476, 'الإمارات', 'ابو ظبي', 'شارع حمدان', '24.4952193', '54.37031730000001', 1, 14, 'شارع حمدان', 1),
(1477, 'الإمارات', 'ابو ظبي', ' شارع الدفاع', '0', '0', 1, 14, ' شارع الدفاع', 1),
(1478, 'الإمارات', 'ابو ظبي', ' شارع المطار', '0', '0', 1, 14, ' شارع المطار', 1),
(1479, 'الإمارات', 'دبي', 'أبراج بحيرة جميرا', '25.0692834', '55.141722200000004', 1, 17, 'أبراج بحيرة جميرا', 1),
(1480, 'الإمارات', 'دبي', 'البستكية', '25.2275804', '55.175012100000004', 1, 17, 'البستكية', 1),
(1481, 'الإمارات', 'دبي', 'ند الشبا', '25.1435458', '55.347533099999964', 1, 17, 'ند الشبا', 1),
(1482, 'الإمارات', 'دبي', 'أبو هيل', '25.2858687', '55.328174200000035', 1, 17, 'أبو هيل', 1),
(1483, 'الإمارات', 'دبي', 'أم الشيف', '25.1327715', '55.205208500000026', 1, 17, 'أم الشيف', 1),
(1484, 'الإمارات', 'دبي', 'أم رمول', '25.2289254', '55.36689630000001', 1, 17, 'أم رمول', 1),
(1485, 'الإمارات', 'دبي', 'أم سقيم', '25.1551127', '55.206589099999974', 1, 17, 'أم سقيم', 1),
(1486, 'الإمارات', 'دبي', 'أم هرير', '25.2452224', '55.312066200000004', 1, 17, 'أم هرير', 1),
(1487, 'الإمارات', 'دبي', 'الراس', '25.2687811', '55.29568870000003', 1, 17, 'الراس', 1),
(1488, 'الإمارات', 'دبي', 'القوز', '25.1347894', '55.236969300000055', 1, 17, 'القوز', 1),
(1489, 'الإمارات', 'دبي', 'البدع', '25.2247272', '55.26874190000001', 1, 17, 'البدع', 1),
(1490, 'الإمارات', 'ابو ظبي', 'بو كدره', '0', '0', 1, 14, 'بو كدره', 1),
(1491, 'الإمارات', 'ابو ظبي', 'تلال الإمارات', '25.0687174', '55.173459399999956', 1, 14, 'تلال الإمارات', 1),
(1492, 'الإمارات', 'دبي', 'الجافلية', '25.2378401', '55.283941599999935', 1, 17, 'الجافلية', 1),
(1493, 'الإمارات', 'دبي', 'الجداف', '25.216757', '55.3309395', 1, 17, 'الجداف', 1),
(1494, 'الإمارات', 'دبي', 'جزر جميرا', '25.2201105', '55.25630769999998', 1, 17, 'جزر جميرا', 1),
(1495, 'الإمارات', 'دبي', 'الحضيبة', '25.2431974', '55.279795899999954', 1, 17, 'الحضيبة', 1),
(1496, 'الإمارات', 'دبي', 'عيال ناصر', '25.2748514', '55.30577429999994', 1, 17, 'عيال ناصر', 1),
(1497, 'الإمارات', 'دبي', 'الطوار', '25.255525', '55.389030899999966', 1, 17, 'الطوار', 1),
(1498, 'الإمارات', 'دبي', 'الضغاية', '25.2275804', '55.175012100000004', 1, 17, 'الضغاية', 1),
(1499, 'الإمارات', 'دبي', 'الصفوح', '25.1133927', '55.17621970000005', 1, 17, 'الصفوح', 1),
(1500, 'الإمارات', 'دبي', 'الصفا', '25.1794821', '55.23973169999999', 1, 17, 'الصفا', 1),
(1501, 'الإمارات', 'دبي', 'شارع الشيخ زايد', '25.0794115', '55.1464909', 1, 17, 'شارع الشيخ زايد', 1),
(1502, 'الإمارات', 'دبي', 'الشندغة', '25.2717409', '55.29238699999996', 1, 17, 'الشندغة', 1),
(1503, 'الإمارات', 'دبي', 'السوق الكبير', '25.2275804', '55.175012100000004', 1, 17, 'السوق الكبير', 1),
(1504, 'الإمارات', 'دبي', 'السبخة', '25.2711827', '55.299835099999996', 1, 17, 'السبخة', 1),
(1505, 'الإمارات', 'دبي', 'رقة البطين', '25.2275804', '55.175012100000004', 1, 17, 'رقة البطين', 1),
(1506, 'الإمارات', 'دبي', 'رأس الخور', '25.1945448', '55.3641298', 1, 17, 'رأس الخور', 1),
(1507, 'الإمارات', 'دبي', 'الخبيصي', '25.2275804', '55.175012100000004', 1, 17, 'الخبيصي', 1),
(1508, 'الإمارات', 'دبي', 'الكرامة', '25.2489204', '55.30605509999998', 1, 17, 'الكرامة', 1),
(1509, 'الإمارات', 'دبي', 'الكفاف', '25.2346972', '55.29637969999999', 1, 17, 'الكفاف', 1),
(1510, 'الإمارات', 'دبي', 'محيصنة', '25.26104', '55.41947529999993', 1, 17, 'محيصنة', 1),
(1511, 'الإمارات', 'دبي', 'مردف', '25.2196159', '55.41947529999993', 1, 17, 'مردف', 1),
(1512, 'الإمارات', 'دبي', 'المرر', '25.2764477', '55.30743729999995', 1, 17, 'المرر', 1),
(1513, 'الإمارات', 'دبي', 'مرسى دبي', '25.0805422', '55.14034259999994', 1, 17, 'مرسى دبي', 1),
(1514, 'الإمارات', 'دبي', 'المركاض', '25.2275804', '55.175012100000004', 1, 17, 'المركاض', 1),
(1515, 'الإمارات', 'دبي', 'ميناء الحمرية', '25.2601903', '55.304672799999935', 1, 17, 'ميناء الحمرية', 1),
(1516, 'الإمارات', 'دبي', 'ميناء راشد', '25.27481', '55.29040999999995', 1, 17, 'ميناء راشد', 1),
(1517, 'الإمارات', 'دبي', 'ورسان', '25.1633458', '55.441623400000026', 1, 17, 'ورسان', 1),
(1518, 'الإمارات', 'الشارقة', 'أبوشغارة', '25.3363068', '55.39594920000002', 1, 18, 'أبوشغارة', 1),
(1519, 'الإمارات', 'راس الخيمة', 'القير', '0', '0', 1, 59, 'القير', 1),
(1520, 'الإمارات', 'راس الخيمة', 'خور خوير', '0', '0', 1, 59, 'خور خوير', 1),
(1521, 'الإمارات', 'راس الخيمة', 'ضاية', '0', '0', 1, 59, 'ضاية', 1),
(1522, 'الإمارات', 'راس الخيمة', 'جلفار', '25.7934031', '55.97249599999998', 1, 59, 'جلفار', 1),
(1523, 'الإمارات', 'راس الخيمة', 'المعمورة', '0', '0', 1, 59, 'المعمورة', 1),
(1524, 'الإمارات', 'راس الخيمة', 'النخيل', '25.7934031', '55.97249599999998', 1, 59, 'النخيل', 1),
(1525, 'الإمارات', 'راس الخيمة', 'المعيريض', '0', '0', 1, 59, 'المعيريض', 1),
(1526, 'الإمارات', 'راس الخيمة', 'خزام', '25.748446', '55.92802770000003', 1, 59, 'خزام', 1),
(1527, 'الإمارات', 'راس الخيمة', 'الظيت الشمالي', '25.7451911', '55.93289989999994', 1, 59, 'الظيت الشمالي', 1),
(1528, 'الإمارات', 'راس الخيمة', 'الظيت الجنوبي', '25.7189396', '55.86131569999998', 1, 59, 'الظيت الجنوبي', 1),
(1529, 'الإمارات', 'راس الخيمة', 'الخران', '0', '0', 1, 59, 'الخران', 1),
(1530, 'الإمارات', 'راس الخيمة', 'اذن', '0', '0', 1, 59, 'اذن', 1),
(1531, 'الإمارات', 'راس الخيمة', 'مسافي', '0', '0', 1, 59, 'مسافي', 1),
(1532, 'الإمارات', 'راس الخيمة', 'دهان', '25.748446', '55.92802770000003', 1, 59, 'دهان', 1),
(1533, 'الإمارات', 'راس الخيمة', 'سدروه', '25.748446', '55.92802770000003', 1, 59, 'سدروه', 1),
(1534, 'الإمارات', 'راس الخيمة', 'سهيلة', '0', '0', 1, 59, 'سهيلة', 1),
(1535, 'الإمارات', 'راس الخيمة', 'الحمرانية', '0', '0', 1, 59, 'الحمرانية', 1),
(1536, 'الإمارات', 'راس الخيمة', 'الهمهام', '0', '0', 1, 59, 'الهمهام', 1),
(1537, 'الإمارات', 'راس الخيمة', 'الجزيرة الحمراء', '0', '0', 1, 59, 'الجزيرة الحمراء', 1),
(1538, 'الإمارات', 'راس الخيمة', 'الرفاعة', '0', '0', 1, 59, 'الرفاعة', 1),
(1539, 'الإمارات', 'راس الخيمة', 'المزرع', '0', '0', 1, 59, 'المزرع', 1),
(1540, 'الإمارات', 'راس الخيمة', 'سيح الفحلين', '0', '0', 1, 59, 'سيح الفحلين', 1),
(1541, 'الإمارات', 'راس الخيمة', 'الفلية', '0', '0', 1, 59, 'الفلية', 1),
(1542, 'الإمارات', 'راس الخيمة', 'الصالحية', '0', '0', 1, 59, 'الصالحية', 1),
(1543, 'الإمارات', 'راس الخيمة', 'القصيدات', '0', '0', 1, 59, 'القصيدات', 1),
(1544, 'الإمارات', 'راس الخيمة', 'الحديبة', '0', '0', 1, 59, 'الحديبة', 1),
(1545, 'الإمارات', 'راس الخيمة', 'الزهراء', '25.7934031', '55.97249599999998', 1, 59, 'الزهراء', 1),
(1546, 'الإمارات', 'راس الخيمة', 'سيح البريرات', '25.7934031', '55.97249599999998', 1, 59, 'سيح البريرات', 1),
(1547, 'الإمارات', 'راس الخيمة', 'عوافي', '0', '0', 1, 59, 'عوافي', 1),
(1548, 'الإمارات', 'راس الخيمة', 'وادي البيح', '0', '0', 1, 59, 'وادي البيح', 1),
(1549, 'الإمارات', 'راس الخيمة', 'المنيعي', '0', '0', 1, 59, 'المنيعي', 1),
(1550, 'الإمارات', 'عجمان', 'الرميلة', '25.4002628', '55.43193289999999', 1, 60, 'الرميلة', 1),
(1551, 'الإمارات', 'راس الخيمة', 'المويهات', '0', '0', 1, 59, 'المويهات', 1),
(1552, 'الإمارات', 'عجمان', 'الروضة', '0', '0', 1, 60, 'الروضة', 1),
(1553, 'الإمارات', 'عجمان', 'السوان ', '0', '0', 1, 60, 'السوان ', 1),
(1554, 'الإمارات', 'عجمان', ' الصناعية القديمة', '0', '0', 1, 60, ' الصناعية القديمة', 1),
(1555, 'الإمارات', 'عجمان', 'الصناعية الجديدة', '0', '0', 1, 60, 'الصناعية الجديدة', 1),
(1556, 'قطر', 'الدوحة', 'المرخية', '25.3387579', '51.4992403', 140, 141, 'المرخية', 1),
(1557, 'قطر', 'الدوحة', 'السودان', '25.2672025', '51.48610359999998', 140, 141, 'السودان', 1),
(1558, 'قطر', 'الدوحة', 'ابوهامور', '25.2388065', '51.491357900000025', 140, 141, 'ابوهامور', 1),
(1559, 'قطر', 'الدوحة', 'بن محمود', '25.2831444', '51.51472949999993', 140, 141, 'بن محمود', 1),
(1560, 'قطر', 'الدوحة', 'نعيجة', '25.2467', '51.533407799999964', 140, 141, 'نعيجة', 1),
(1561, 'قطر', 'الدوحة', 'الثمامة', '25.2347365', '51.55970260000004', 140, 141, 'الثمامة', 1),
(1562, 'قطر', 'الدوحة', 'المطار القديم', '25.2481406', '51.55444280000006', 140, 141, 'المطار القديم', 1),
(1563, 'قطر', 'الدوحة', 'خليفة الجديدة', '25.3213341', '51.47195720000002', 140, 141, 'خليفة الجديدة', 1),
(1564, 'قطر', 'الدوحة', 'العسيري', '25.2619994', '51.50580960000002', 140, 141, 'العسيري', 1),
(1565, 'قطر', 'الدوحة', 'السلطة القديمة', '25.2523806', '51.55678820000003', 140, 141, 'السلطة القديمة', 1),
(1566, 'قطر', 'الدوحة', 'الغانم', '25.2799883', '51.539980499999956', 140, 141, 'الغانم', 1),
(1567, 'قطر', 'الدوحة', 'ام الغويلينه', '25.2765555', '51.54918339999995', 140, 141, 'ام الغويلينه', 1),
(1568, 'قطر', 'الدوحة', 'مشيرب', '25.2843485', '51.5215786', 140, 141, 'مشيرب', 1),
(1569, 'قطر', 'الدوحة', 'جنوب شارع سلوى', '25.2325164', '51.454586300000074', 140, 141, 'جنوب شارع سلوى', 1),
(1570, 'قطر', 'الدوحة', 'الوعب', '25.2590525', '51.46771669999998', 140, 141, 'الوعب', 1),
(1571, 'قطر', 'الدوحة', 'عنيزة', '25.3469175', '51.51763600000004', 140, 141, 'عنيزة', 1),
(1572, 'قطر', 'الدوحة', 'المعمورة', '25.2470337', '51.50186789999998', 140, 141, 'المعمورة', 1),
(1573, 'قطر', 'الدوحة', 'غرب خليج لاغون', '25.3619978', '51.50975149999999', 140, 141, 'غرب خليج لاغون', 1),
(1574, 'قطر', 'الدوحة', 'الحي الثقافي كتارا', '25.2854473', '51.53103979999992', 140, 141, 'الحي الثقافي كتارا', 1),
(1575, 'قطر', 'مسيعيد', 'الصنيعة', '0', '0', 140, 143, 'الصنيعة', 1),
(1576, 'قطر', 'الخور', 'الذخيرة', '25.7317689', '51.541295200000036', 140, 145, 'الذخيرة', 1),
(1577, 'قطر', 'الخور', 'الخور', '25.6804078', '51.496850199999926', 140, 145, 'الخور', 1),
(1578, 'مصر', 'الإسكندرية', 'بر', '31.2505603', '29.99925630000007', 3, 38, 'بر', 1),
(1579, 'قطر', 'الدوحة', 'ازغواى', '25.3593335', '51.43620809999993', 140, 141, 'ازغواى', 1),
(1580, 'مصر', 'اسيوط', 'ابراج المدينه', '27.182163', '31.192647699999952', 3, 45, 'ابراج المدينه', 1),
(1581, 'مصر', 'الإسكندرية', 'خالد بن الوليد', '30.8303141', '29.858672899999988', 3, 38, 'خالد بن الوليد', 1),
(1582, 'مصر', 'الإسكندرية', 'محمد نجيب ', '31.2532137', '29.98662420000005', 3, 38, 'محمد نجيب ', 1),
(1583, 'مصر', 'القاهرة', 'جمال عبدالناصر', '30.08922969999999', '31.244032100000027', 3, 37, 'جمال عبدالناصر', 1),
(1584, 'مصر', 'طنطا', 'ثان طنطا', '30.9797298', '30.531771100000014', 3, 47, 'ثان طنطا', 1),
(1585, 'مصر', 'السويس', 'لاسيرينا العين السخنه', '29.6325617', '32.330017099999964', 3, 42, 'لاسيرينا العين السخنه', 1),
(1586, 'الإمارات', 'عجمان', 'النخيل ', '25.406086', '55.436778000000004', 1, 60, 'النخيل ', 1),
(1587, 'الإمارات', 'ابو ظبي', 'مدينة خليفة ا ', '24.4012042', '54.55228199999999', 1, 14, 'مدينة خليفة ا ', 1),
(1588, 'الإمارات', 'الشارقة', 'القصباء', '25.3232212', '55.37971360000006', 1, 18, 'القصباء', 1),
(1589, 'الإمارات', 'الشارقة', 'حلوان', '25.3512764', '55.4084034', 1, 18, 'حلوان', 1),
(1590, 'مصر', 'القاهرة', 'فينيسيا', '30.0444196', '31.23571160000006', 3, 37, 'فينيسيا', 1),
(1591, 'مصر', 'اسيوط', 'تفرعات سيتى', '27.1783117', '31.185925699999984', 3, 45, 'تفرعات سيتى', 1),
(1592, 'الإمارات', 'ابو ظبي', 'خلف الميجا مول', '0', '0', 1, 14, 'خلف الميجا مول', 1),
(1593, 'السعودية', 'الرياض', 'خلف الميجا مول', '25.0054482', '46.54483099999993', 2, 12, 'خلف الميجا مول', 1),
(1594, 'السعودية', 'المدينة المنوّرة', 'درة السليمانيه ', '0', '0', 2, 22, 'درة السليمانيه ', 1),
(1595, 'مصر', 'القاهرة', 'التجمع', '30.0084868', '31.428475599999956', 3, 37, 'التجمع', 1),
(1596, 'السعودية', 'المدينة المنوّرة', 'الرانوناء ', '24.3894861', '39.60534940000002', 2, 22, 'الرانوناء ', 1),
(1597, 'قطر', 'الوكرة', 'الوكره', '25.1659314', '51.59755240000004', 140, 144, 'الوكره', 1),
(1598, 'السعودية', 'المدينة المنوّرة', 'الشيبيه ', '0', '0', 2, 22, 'الشيبيه ', 1),
(1599, 'مصر', 'القاهرة', 'سيدى عبدالرحمن - الساحل الشمالى', '30.0375461', '31.25358970000002', 3, 37, 'سيدى عبدالرحمن - الساحل الشمالى', 1),
(1600, 'السعودية', 'الخبر', 'الشراع 92/2 بعزيزيه الخبر', '0', '0', 2, 67, 'الشراع 92/2 بعزيزيه الخبر', 1),
(1601, 'مصر', 'القاهرة', 'كاليبسو ', '30.0444196', '31.23571160000006', 3, 37, 'كاليبسو ', 1),
(1602, 'مصر', 'الإسكندرية', 'مصطفي كامل', '31.2514182', '29.994200500000034', 3, 38, 'مصطفي كامل', 1),
(1603, 'مصر', 'الفيوم', 'طريق مصر اسيوط الغربي ', '29.2556095', '30.963859599999978', 3, 48, 'طريق مصر اسيوط الغربي ', 1),
(1604, 'قطر', 'الدوحة', 'ازغوي', '25.3593335', '51.43620809999993', 140, 141, 'ازغوي', 1),
(1605, 'مصر', 'اسيوط', 'المهندسين', '27.1885535', '31.18738529999996', 3, 45, 'المهندسين', 1),
(1606, 'الكويت', 'الاحمدي', 'ابو فطيرة', '29.1973723', '48.10268410000003', 95, 108, 'ابو فطيرة', 1),
(1607, 'السعودية', 'جدة', 'السلامه ', '21.5949889', '39.15176650000001', 2, 13, 'السلامه ', 1),
(1608, 'مصر', 'الإسكندرية', 'سيدى بشر الفضالى', '31.2687428', '29.997839800000065', 3, 38, 'سيدى بشر الفضالى', 1),
(1609, 'مصر', 'السويس', 'بلوبلو', '29.9668343', '32.54980690000002', 3, 42, 'بلوبلو', 1),
(1610, 'مصر', 'القاهرة', '6اكتوبر ', '30.0647444', '31.25295010000002', 3, 37, '6اكتوبر ', 1);
INSERT INTO `am_districts` (`id`, `country`, `city`, `name`, `lat`, `lng`, `country_id`, `city_id`, `geo_name`, `status`) VALUES
(1611, 'مصر', 'طنطا', 'متفرع من الفاتح', '30.7928045', '30.989938199999983', 3, 47, 'متفرع من الفاتح', 1),
(1612, 'مصر', 'اسيوط', 'الثوره', '27.1764688', '31.195240000000013', 3, 45, 'الثوره', 1),
(1613, 'السعودية', 'جدة', 'شمال جدة', '21.8380491', '39.205314000000044', 2, 13, 'شمال جدة', 1),
(1614, 'الإمارات', 'دبي', 'مجمع دبى للأستثمار', '24.9789814', '55.17621970000005', 1, 17, 'مجمع دبى للأستثمار', 1),
(1615, 'الإمارات', 'ابو ظبي', 'السوق المركزي الجديد', '0', '0', 1, 14, 'السوق المركزي الجديد', 1),
(1616, 'الاردن', 'عمّان', 'الظهير', '31.9764226', '35.88518709999994', 131, 132, 'الظهير', 1),
(1617, 'مصر', 'الإسكندرية', 'سي فيو الساحل الشمالى ', '0', '0', 3, 38, 'سي فيو الساحل الشمالى ', 1),
(1618, 'مصر', 'طنطا', 'الاستــــــــــــاد', '30.8109845', '30.99425580000002', 3, 47, 'الاستــــــــــــاد', 1),
(1619, 'المغرب', 'مراكش', 'مراكش النخيل', '31.6455639', '-7.980385100000035', 51, 211, 'مراكش النخيل', 1),
(1620, 'مصر', 'اسيوط', 'سيتى العمومى', '30.1297043', '31.351085900000044', 3, 45, 'سيتى العمومى', 1),
(1621, 'السعودية', 'الطائف', 'الهدا', '21.2886983', '40.38908689999994', 2, 71, 'الهدا', 1),
(1622, 'مصر', 'الإسكندرية', 'سيدى بشر - عبد الوهاب', '31.239901', '30.000667099999987', 3, 38, 'سيدى بشر - عبد الوهاب', 1),
(1623, 'مصر', 'اسيوط', 'الشيخ علي عبدالدايم', '30.1280702', '31.332076700000016', 3, 45, 'الشيخ علي عبدالدايم', 1),
(1624, 'قطر', 'الدوحة', 'الصناعيه الجديده', '25.2258005', '51.50928939999994', 140, 141, 'الصناعيه الجديده', 1),
(1625, 'مصر', 'السويس', 'كاليبسو -راس سدر', '29.9668343', '32.54980690000002', 3, 42, 'كاليبسو -راس سدر', 1),
(1626, 'قطر', 'الدوحة', 'الريان شارع السلام ', '25.2804034', '51.420258800000056', 140, 141, 'الريان شارع السلام ', 1),
(1627, 'السعودية', 'الرياض', 'حي الشرق', '27.5181128', '41.70193169999993', 2, 12, 'حي الشرق', 1),
(1628, 'مصر', 'الإسكندرية', 'سموحه', '31.21454959999999', '29.945102200000065', 3, 38, 'سموحه', 1),
(1629, 'مصر', 'الإسكندرية', 'جمال عبد الناصر ', '31.2710517', '30.002462899999955', 3, 38, 'جمال عبد الناصر ', 1),
(1630, 'مصر', 'اسيوط', 'امام التمليك القبلى', '27.1783117', '31.185925699999984', 3, 45, 'امام التمليك القبلى', 1),
(1631, 'مصر', 'طنطا', 'شارع مصطفى كامل متفرع من توت عنخ امون ', '30.7900405', '30.977184399999942', 3, 47, 'شارع مصطفى كامل متفرع من توت عنخ امون ', 1),
(1632, 'مصر', 'طنطا', 'شارع الحلو الرئيسي', '30.1362917', '31.282786200000032', 3, 47, 'شارع الحلو الرئيسي', 1),
(1633, 'مصر', 'المنصورة', '6 اكتوبر', '31.0460512', '31.36708169999997', 3, 46, '6 اكتوبر', 1),
(1634, 'مصر', 'القاهرة', 'وسط القاهرة', '30.0444196', '31.23571160000006', 3, 37, 'وسط القاهرة', 1),
(1635, 'السودان', 'الخرطوم', 'حي الروضة ', '15.6788477', '32.50191229999996', 235, 236, 'حي الروضة ', 1),
(1636, 'مصر', 'اسيوط', 'مركز الفتح ', '27.1783117', '31.185925699999984', 3, 45, 'مركز الفتح ', 1),
(1637, 'الاردن', 'عمّان', 'السابع خلف ال سي تاون', '0', '0', 131, 132, 'السابع خلف ال سي تاون', 1),
(1638, 'السعودية', 'الخبر', 'العزيزيه', '18.30283', '42.70941960000005', 2, 67, 'العزيزيه', 1),
(1639, 'مصر', 'القاهرة', 'الغردقه', '30.1703046', '31.411051499999985', 3, 37, 'الغردقه', 1),
(1640, 'مصر', 'الإسماعيلية', 'رأس سدر', '30.6010084', '32.370546099999956', 3, 50, 'رأس سدر', 1),
(1641, 'السعودية', 'مكّة المكرمة', 'بطحاء قريش', '21.3618079', '39.83218790000001', 2, 15, 'بطحاء قريش', 1),
(1642, 'مصر', 'الإسكندرية', 'المنتزه سيدي بشر', '31.2555336', '29.98320000000001', 3, 38, 'المنتزه سيدي بشر', 1),
(1643, 'قطر', 'الدوحة', 'خلف الميجا مول', '25.2854473', '51.53103979999992', 140, 141, 'خلف الميجا مول', 1),
(1644, 'الإمارات', 'دبي', 'خلف الميجا مول', '25.2275804', '55.175012100000004', 1, 17, 'خلف الميجا مول', 1),
(1645, 'قطر', 'الدوحة', 'الريان دوار الفروسية ', '25.2834829', '51.43203570000003', 140, 141, 'الريان دوار الفروسية ', 1),
(1646, 'مصر', 'الإسكندرية', 'بوكلي', '0', '0', 3, 38, 'بوكلي', 1),
(1647, 'مصر', 'طنطا', 'الاشرف', '30.775872', '30.99162100000001', 3, 47, 'الاشرف', 1),
(1648, 'السعودية', 'الطائف', 'البيعه', '21.2821788', '40.44271990000004', 2, 71, 'البيعه', 1),
(1649, 'مصر', 'القاهرة', 'مساكن شيراتون', '30.10334989999999', '31.374175000000037', 3, 37, 'مساكن شيراتون', 1),
(1650, 'قطر', 'الدوحة', 'خط الشمال العام', '25.2854473', '51.53103979999992', 140, 141, 'خط الشمال العام', 1),
(1651, 'مصر', 'القاهرة', 'مدينة الشروق', '30.1442115', '31.639718399999992', 3, 37, 'مدينة الشروق', 1),
(1652, 'السعودية', 'جدة', 'الحناكي', '21.2854067', '39.23755069999993', 2, 13, 'الحناكي', 1),
(1653, 'مصر', 'الإسكندرية', 'جيفيرا', '30.0495093', '31.038647699999956', 3, 38, 'جيفيرا', 1),
(1654, 'مصر', 'الإسكندرية', 'طوسون', '31.3031005', '30.057807700000012', 3, 38, 'طوسون', 1),
(1655, 'السعودية', 'الرياض', 'اليمامه', '24.5947367', '46.71642559999998', 2, 12, 'اليمامه', 1),
(1656, 'مصر', 'اسيوط', 'الطريق الدائري', '27.1695679', '31.19790809999995', 3, 45, 'الطريق الدائري', 1),
(1657, 'مصر', 'طنطا', 'نجف الجامعه', '30.79872409999999', '30.99086060000002', 3, 47, 'نجف الجامعه', 1),
(1658, 'الاردن', 'عمّان', 'عرقوب خلدا', '0', '0', 131, 132, 'عرقوب خلدا', 1),
(1659, 'مصر', 'الإسكندرية', 'بيانكى', '31.1188194', '29.76721280000004', 3, 38, 'بيانكى', 1),
(1660, 'السعودية', 'الرياض', 'الجيزه', '24.7590954', '46.74462940000001', 2, 12, 'الجيزه', 1),
(1661, 'العراق', 'اربيل', 'كردستان ستي', '36.2134777', '43.99143070000002', 218, 226, 'كردستان ستي', 1),
(1662, 'الإمارات', 'الشارقة', 'المجاز', '25.3213384', '55.38349670000002', 1, 18, 'المجاز', 1),
(1663, 'مصر', 'الإسكندرية', 'سابيدوريا فى الساحل الشمالى ', '0', '0', 3, 38, 'سابيدوريا فى الساحل الشمالى ', 1),
(1664, 'السعودية', 'جدة', 'ابحر الشمالية ', '21.7441577', '39.107529200000045', 2, 13, 'ابحر الشمالية ', 1),
(1665, 'مصر', 'بور سعيد', 'حي الضواحي', '0', '0', 3, 41, 'حي الضواحي', 1),
(1666, 'مصر', 'اسيوط', 'يسرى راغب', '27.1845154', '31.18344300000001', 3, 45, 'يسرى راغب', 1),
(1667, 'مصر', 'الفيوم', 'طريق مصر الفيوم الصحراوي ', '29.78777689999999', '31.018395199999986', 3, 48, 'طريق مصر الفيوم الصحراوي ', 1),
(1668, 'مصر', 'اسيوط', 'اسيوط المدينة بجوار المحطة ', '29.9904725', '31.246558499999992', 3, 45, 'اسيوط المدينة بجوار المحطة ', 1),
(1669, 'مصر', 'القاهرة', 'حدائق القبة', '30.0820986', '31.27626310000005', 3, 37, 'حدائق القبة', 1),
(1670, 'مصر', 'القاهرة', 'وادي النطرون', '30.5044805', '30.213797399999976', 3, 37, 'وادي النطرون', 1),
(1671, 'مصر', 'الإسكندرية', 'السرايا', '30.1201769', '31.298107999999957', 3, 38, 'السرايا', 1),
(1672, 'مصر', 'القاهرة', 'خليج راس الحكمه - مطروح', '30.0444196', '31.23571160000006', 3, 37, 'خليج راس الحكمه - مطروح', 1),
(1673, 'الإمارات', 'العين', 'المرخانية', '24.1851183', '55.70644770000001', 1, 299, 'المرخانية', 1),
(1674, 'الاردن', 'عمّان', 'تلاع العلي خلف سوق السلطان', '0', '0', 131, 132, 'تلاع العلي خلف سوق السلطان', 1),
(1675, 'قطر', 'الدوحة', 'أم صلال محمد', '25.3981114', '51.4250849', 140, 141, 'أم صلال محمد', 1),
(1676, 'العراق', 'اربيل', 'زين ستي', '0', '0', 218, 226, 'زين ستي', 1),
(1677, 'الكويت', 'الكويت العاصمة', 'خلف الميجا مول', '0', '0', 95, 106, 'خلف الميجا مول', 1),
(1678, 'المغرب', 'مراكش', 'route d\'ourika', '0', '0', 51, 211, 'route d\'ourika', 1),
(1679, 'مصر', 'اسيوط', 'الحمرا', '27.1783117', '31.185925699999984', 3, 45, 'الحمرا', 1),
(1680, 'الكويت', 'الكويت العاصمة', 'الفنطاس', '0', '0', 95, 106, 'الفنطاس', 1),
(1681, 'قطر', 'الدوحة', 'بحيرة الخليج الغربي', '25.3634666', '51.514400600000045', 140, 141, 'بحيرة الخليج الغربي', 1),
(1682, 'السودان', 'الخرطوم', 'اركويت', '15.5481335', '32.56838259999995', 235, 236, 'اركويت', 1),
(1683, 'الاردن', 'عمّان', 'السلط', '31.8666667', '35.633333300000004', 131, 132, 'السلط', 1),
(1684, 'السعودية', 'الرياض', 'الندوة', '24.8033286', '46.894383999999945', 2, 12, 'الندوة', 1),
(1685, 'السودان', 'الخرطوم', 'ناصر', '15.5944511', '32.56838259999995', 235, 236, 'ناصر', 1),
(1686, 'الكويت', 'حولي', 'ميدان حولى', '29.33408589999999', '48.02820539999993', 95, 276, 'ميدان حولى', 1),
(1687, 'الإمارات', 'دبي', 'النهده', '25.2919567', '55.365512999999964', 1, 17, 'النهده', 1),
(1688, 'الإمارات', 'العين', 'النيادات', '0', '0', 1, 299, 'النيادات', 1),
(1689, 'المغرب', 'الرباط - سلا', 'السويسي', '33.9799302', '-6.840460000000007', 51, 53, 'السويسي', 1),
(1690, 'المغرب', 'الرباط - سلا', 'اكدال', '33.9933499', '-6.848500899999976', 51, 53, 'اكدال', 1),
(1691, 'المغرب', 'الرباط - سلا', 'الليمون', '34.0145195', '-6.841800000000035', 51, 53, 'الليمون', 1),
(1692, 'المغرب', 'الرباط - سلا', 'جافيل', '34.0336969', '-6.770813800000042', 51, 53, 'جافيل', 1),
(1693, 'المغرب', 'الرباط - سلا', 'السيراج', '30.7888328', '31.00405109999997', 51, 53, 'السيراج', 1),
(1694, 'المغرب', 'الرباط - سلا', 'المسكا', '34.0336969', '-6.770813800000042', 51, 53, 'المسكا', 1),
(1695, 'المغرب', 'الرباط - سلا', 'الثعابين', '34.0336969', '-6.770813800000042', 51, 53, 'الثعابين', 1),
(1696, 'المغرب', 'الرباط - سلا', 'الطوبيس', '34.0336969', '-6.770813800000042', 51, 53, 'الطوبيس', 1),
(1697, 'المغرب', 'الرباط - سلا', 'البراح', '34.0336969', '-6.770813800000042', 51, 53, 'البراح', 1),
(1698, 'المغرب', 'الرباط - سلا', 'البو لا', '34.0336969', '-6.770813800000042', 51, 53, 'البو لا', 1),
(1699, 'المغرب', 'الرباط - سلا', 'الغربال', '34.0336969', '-6.770813800000042', 51, 53, 'الغربال', 1),
(1700, 'المغرب', 'الدار البيضاء', 'الحسني', '33.5731104', '-7.589843400000063', 51, 54, 'الحسني', 1),
(1701, 'المغرب', 'الدار البيضاء', 'المحمدي', '33.5731104', '-7.589843400000063', 51, 54, 'المحمدي', 1),
(1702, 'المغرب', 'الدار البيضاء', 'السلام', '33.5802471', '-7.59327200000007', 51, 54, 'السلام', 1),
(1703, 'المغرب', 'الدار البيضاء', 'الصخور السوداء', '33.6070335', '-7.565350200000012', 51, 54, 'الصخور السوداء', 1),
(1704, 'المغرب', 'الدار البيضاء', 'المدينة القديمة ', '33.6022285', '-7.620910800000047', 51, 54, 'المدينة القديمة ', 1),
(1705, 'المغرب', 'الدار البيضاء', 'مقاطعة مولاي رشيد', '33.5731104', '-7.589843400000063', 51, 54, 'مقاطعة مولاي رشيد', 1),
(1706, 'المغرب', 'الدار البيضاء', 'للا مريم ', '33.5573031', '-7.55527619999998', 51, 54, 'للا مريم ', 1),
(1707, 'المغرب', 'الدار البيضاء', 'عين الشق', '33.5338589', '-7.583149300000059', 51, 54, 'عين الشق', 1),
(1708, 'المغرب', 'الدار البيضاء', 'سيدي مؤمن', '33.5848033', '-7.519309300000032', 51, 54, 'سيدي مؤمن', 1),
(1709, 'المغرب', 'الدار البيضاء', 'سيدي معروف', '33.5155613', '-7.6583160000000134', 51, 54, 'سيدي معروف', 1),
(1710, 'المغرب', 'الدار البيضاء', 'الهناء', '33.577916', '-7.666570800000045', 51, 54, 'الهناء', 1),
(1711, 'المغرب', 'الدار البيضاء', 'النخيل', '33.5822528', '-7.62904530000003', 51, 54, 'النخيل', 1),
(1712, 'المغرب', 'الدار البيضاء', 'الإنارة', '33.540422', '-7.599392800000032', 51, 54, 'الإنارة', 1),
(1713, 'المغرب', 'الدار البيضاء', 'درب السلطان', '33.5657532', '-7.603289200000063', 51, 54, 'درب السلطان', 1),
(1714, 'المغرب', 'الدار البيضاء', 'درب السلطان', '33.5657532', '-7.603289200000063', 51, 54, 'درب السلطان', 1),
(1715, 'المغرب', 'الدار البيضاء', 'درب الكبير', '33.5808799', '-7.564019899999948', 51, 54, 'درب الكبير', 1),
(1716, 'المغرب', 'الدار البيضاء', 'درب غلف', '33.57045859999999', '-7.626530499999944', 51, 54, 'درب غلف', 1),
(1717, 'المغرب', 'اغادير', 'مونابا', '30.93333299999999', '-7.2166670000000295', 51, 57, 'مونابا', 1),
(1718, 'المغرب', 'اغادير', 'لاسيتى سويس', '30.4283745', '-9.599343399999952', 51, 57, 'لاسيتى سويس', 1),
(1719, 'المغرب', 'اغادير', 'الهدى', '34.918486', '-2.328949599999987', 51, 57, 'الهدى', 1),
(1720, 'المغرب', 'اغادير', 'النجاح', '30.4247196', '-9.57152050000002', 51, 57, 'النجاح', 1),
(1721, 'المغرب', 'اغادير', 'ابليغ', '30.4099011', '-9.603169799999932', 51, 57, 'ابليغ', 1),
(1722, 'المغرب', 'اغادير', 'تدرت', '30.93333299999999', '-7.2166670000000295', 51, 57, 'تدرت', 1),
(1723, 'المغرب', 'اغادير', 'الشرف', '31.6256616', '-8.054816599999981', 51, 57, 'الشرف', 1),
(1724, 'المغرب', 'اغادير', 'السلام', '33.9113585', '-5.48481670000001', 51, 57, 'السلام', 1),
(1725, 'المغرب', 'اغادير', 'الداخلة', '30.4156528', '-9.559003299999972', 51, 57, 'الداخلة', 1),
(1726, 'المغرب', 'اغادير', 'تاليورجيت', '30.93333299999999', '-7.2166670000000295', 51, 57, 'تاليورجيت', 1),
(1727, 'المغرب', 'اغادير', 'لازميكال', '30.93333299999999', '-7.2166670000000295', 51, 57, 'لازميكال', 1),
(1728, 'المغرب', 'اغادير', 'الاراك', '31.5120172', '-9.760118700000021', 51, 57, 'الاراك', 1),
(1729, 'المغرب', 'اغادير', 'الوفاق', '32.8792364', '-6.913404000000014', 51, 57, 'الوفاق', 1),
(1730, 'المغرب', 'اغادير', 'الخيام', '30.32943789999999', '-9.498529700000063', 51, 57, 'الخيام', 1),
(1731, 'المغرب', 'اغادير', 'احشاش', '30.4249324', '-9.580735799999957', 51, 57, 'احشاش', 1),
(1732, 'المغرب', 'اغادير', 'البطوار', '30.93333299999999', '-7.2166670000000295', 51, 57, 'البطوار', 1),
(1733, 'المغرب', 'اغادير', 'بنزرقاوو', '30.93333299999999', '-7.2166670000000295', 51, 57, 'بنزرقاوو', 1),
(1734, 'المغرب', 'طنجة - تطوان', 'إقليم شفشاون', '35.018172', '-5.14320680000003', 51, 58, 'إقليم شفشاون', 1),
(1735, 'المغرب', 'طنجة - تطوان', 'إقليم العرائش', '35.1744271', '-6.147396399999934', 51, 58, 'إقليم العرائش', 1),
(1736, 'المغرب', 'طنجة - تطوان', 'إقليم تطوان ', '35.5747119', '-5.435852999999952', 51, 58, 'إقليم تطوان ', 1),
(1737, 'المغرب', 'مراكش', 'السعادة', '31.6746566', '-8.017202099999963', 51, 211, 'السعادة', 1),
(1738, 'المغرب', 'مراكش', 'المنارة', '31.6360026', '-8.057429899999988', 51, 211, 'المنارة', 1),
(1739, 'المغرب', 'مراكش', 'الانارة', '31.641262', '-8.05265589999999', 51, 211, 'الانارة', 1),
(1740, 'المغرب', 'مراكش', 'الشرف', '35.7667438', '-5.805252900000028', 51, 211, 'الشرف', 1),
(1741, 'المغرب', 'مراكش', 'الزيتون', '31.6170456', '-8.06446410000001', 51, 211, 'الزيتون', 1),
(1742, 'المغرب', 'وجدة', 'القدس', '34.6542237', '-1.8951187000000118', 51, 212, 'القدس', 1),
(1743, 'المغرب', 'وجدة', 'الزيتون', '34.6696935', '-1.889167499999985', 51, 212, 'الزيتون', 1),
(1744, 'المغرب', 'وجدة', 'رجافالله ', '34.681962', '-1.9001550000000407', 51, 212, 'رجافالله ', 1),
(1745, 'المغرب', 'وجدة', 'الفتح', '34.692712', '-1.8751320999999734', 51, 212, 'الفتح', 1),
(1746, 'المغرب', 'وجدة', 'ازلى', '31.6232581', '-8.051929900000005', 51, 212, 'ازلى', 1),
(1747, 'المغرب', 'وجدة', 'سيدى مختار', '34.6890124', '-1.913282400000071', 51, 212, 'سيدى مختار', 1),
(1748, 'المغرب', 'فاس', 'انس', '34.0244689', '-5.015706499999965', 51, 270, 'انس', 1),
(1749, 'المغرب', 'فاس', 'بدر', '34.0340066', '-4.989546300000029', 51, 270, 'بدر', 1),
(1750, 'المغرب', 'فاس', 'كريم', '34.0388354', '-5.027998600000046', 51, 270, 'كريم', 1),
(1751, 'المغرب', 'فاس', 'عين شقف', '34.0048891', '-5.010379000000057', 51, 270, 'عين شقف', 1),
(1752, 'المغرب', 'فاس', 'الادراسة', '34.0195993', '-5.012151499999959', 51, 270, 'الادراسة', 1),
(1753, 'المغرب', 'فاس', 'السعادة', '34.0235782', '-5.005753000000027', 51, 270, 'السعادة', 1),
(1754, 'المغرب', 'فاس', 'الاطلس', '34.0312077', '-4.993547000000035', 51, 270, 'الاطلس', 1),
(1755, 'المغرب', 'فاس', 'طريق صفرو', '34.0101862', '-4.979524999999967', 51, 270, 'طريق صفرو', 1),
(1756, 'المغرب', 'فاس', 'ظهر مهراز', '34.0385214', '-4.984450100000004', 51, 270, 'ظهر مهراز', 1),
(1757, 'المغرب', 'فاس', 'الرياض', '34.0470426', '-4.998623700000053', 51, 270, 'الرياض', 1),
(1758, 'المغرب', 'فاس', 'الليدو', '34.034812', '-4.990297999999939', 51, 270, 'الليدو', 1),
(1759, 'المغرب', 'فاس', 'سيدى ابراهيم', '34.0274085', '-4.984450100000004', 51, 270, 'سيدى ابراهيم', 1),
(1760, 'المغرب', 'فاس', 'عوينات الحجاج', '34.0204758', '-4.966910299999995', 51, 270, 'عوينات الحجاج', 1),
(1761, 'المغرب', 'فاس', 'منفلورى', '34.0181246', '-5.00784509999994', 51, 270, 'منفلورى', 1),
(1762, 'المغرب', 'فاس', 'ليراك', '34.064741', '-4.966433800000004', 51, 270, 'ليراك', 1),
(1763, 'المغرب', 'فاس', 'باب الفتوح', '34.0599037', '-4.9644711999999345', 51, 270, 'باب الفتوح', 1),
(1764, 'المغرب', 'فاس', 'باب الخوخة', '30.0694479', '31.27996859999996', 51, 270, 'باب الخوخة', 1),
(1765, 'المغرب', 'فاس', 'عين قادوس', '34.0605148', '-5.00719509999999', 51, 270, 'عين قادوس', 1),
(1766, 'المغرب', 'فاس', 'النسسيم', '33.9120782', '-6.92080820000001', 51, 270, 'النسسيم', 1),
(1767, 'المغرب', 'فاس', 'زواغة', '34.0141803', '-5.036452199999985', 51, 270, 'زواغة', 1),
(1768, 'المغرب', 'مكناس', 'حمرية', '33.8976012', '-5.548685299999988', 51, 271, 'حمرية', 1),
(1769, 'المغرب', 'مكناس', 'تواركة', '33.8730164', '-5.540729899999974', 51, 271, 'تواركة', 1),
(1770, 'المغرب', 'مكناس', 'مسجد الأزهر', '33.8730164', '-5.540729899999974', 51, 271, 'مسجد الأزهر', 1),
(1771, 'المغرب', 'مكناس', 'قصر البيضاء ', '33.8730164', '-5.540729899999974', 51, 271, 'قصر البيضاء ', 1),
(1772, 'المغرب', 'مكناس', 'سيدي عبد الرحمن المجدوب', '33.8730164', '-5.540729899999974', 51, 271, 'سيدي عبد الرحمن المجدوب', 1),
(1773, 'المغرب', 'مكناس', ' قصر المحنشة ', '33.8730164', '-5.540729899999974', 51, 271, ' قصر المحنشة ', 1),
(1774, 'المغرب', 'مكناس', 'قصر الدار الكبيرة', '33.8730164', '-5.540729899999974', 51, 271, 'قصر الدار الكبيرة', 1),
(1775, 'المغرب', 'مكناس', 'سجن قارا ', '33.8912399', '-5.564517300000034', 51, 271, 'سجن قارا ', 1),
(1776, 'المغرب', 'مكناس', 'صهريج السواني', '33.8817269', '-5.560099900000068', 51, 271, 'صهريج السواني', 1),
(1777, 'المغرب', 'مكناس', 'قبة السفراء ', '33.8730164', '-5.540729899999974', 51, 271, 'قبة السفراء ', 1),
(1778, 'المغرب', 'مكناس', ' باب المنصور لعلج', '33.8926129', '-5.5645726000000195', 51, 271, ' باب المنصور لعلج', 1),
(1779, 'مصر', 'طنطا', 'الرفاعى', '30.8042844', '30.997345799999948', 3, 47, 'الرفاعى', 1),
(1780, 'المغرب', 'مكناس', 'باب مراح ', '33.8730164', '-5.540729899999974', 51, 271, 'باب مراح ', 1),
(1781, 'المغرب', 'مكناس', 'باب الحجر', '33.8730164', '-5.540729899999974', 51, 271, 'باب الحجر', 1),
(1782, 'المغرب', 'مكناس', 'دار الباشوات', '33.8730164', '-5.540729899999974', 51, 271, 'دار الباشوات', 1),
(1783, 'المغرب', 'مكناس', 'برج بلقاري', '33.8730164', '-5.540729899999974', 51, 271, 'برج بلقاري', 1),
(1784, 'المغرب', 'تازة - الحسيمة', 'بركم', '35.2445589', '-3.9317468000000417', 51, 272, 'بركم', 1),
(1785, 'المغرب', 'تازة - الحسيمة', 'زنقة الحسيمة', '35.2445589', '-3.9317468000000417', 51, 272, 'زنقة الحسيمة', 1),
(1786, 'المغرب', 'تازة - الحسيمة', 'زنقة الموحدين', '35.2445589', '-3.9317468000000417', 51, 272, 'زنقة الموحدين', 1),
(1787, 'المغرب', 'تازة - الحسيمة', 'زنقة سلا', '35.2445589', '-3.9317468000000417', 51, 272, 'زنقة سلا', 1),
(1788, 'المغرب', 'تازة - الحسيمة', 'زنقة زرهون', '35.2445589', '-3.9317468000000417', 51, 272, 'زنقة زرهون', 1),
(1789, 'المغرب', 'تازة - الحسيمة', 'بنى توزين', '35.2445589', '-3.9317468000000417', 51, 272, 'بنى توزين', 1),
(1790, 'المغرب', 'تازة - الحسيمة', 'زنقة الناظور', '35.2445589', '-3.9317468000000417', 51, 272, 'زنقة الناظور', 1),
(1791, 'المغرب', 'تازة - الحسيمة', 'سيدى عابد', '35.2445589', '-3.9317468000000417', 51, 272, 'سيدى عابد', 1),
(1792, 'المغرب', 'تازة - الحسيمة', 'وزان', '35.2445589', '-3.9317468000000417', 51, 272, 'وزان', 1),
(1793, 'المغرب', 'تازة - الحسيمة', 'زنقة تولال', '35.2445589', '-3.9317468000000417', 51, 272, 'زنقة تولال', 1),
(1794, 'المغرب', 'تازة - الحسيمة', 'زنقة الجاحظ', '35.2445589', '-3.9317468000000417', 51, 272, 'زنقة الجاحظ', 1),
(1795, 'المغرب', 'تازة - الحسيمة', 'زنقة العقاد', '35.2445589', '-3.9317468000000417', 51, 272, 'زنقة العقاد', 1),
(1796, 'قطر', 'الدوحة', 'الؤلؤة ', '25.3746595', '51.54323969999996', 140, 141, 'الؤلؤة ', 1),
(1797, 'المغرب', 'تازة - الحسيمة', 'الجولان', '35.2445589', '-3.9317468000000417', 51, 272, 'الجولان', 1),
(1798, 'المغرب', 'القنيطرة', 'مهدية', '34.2562684', '-6.67584080000006', 51, 273, 'مهدية', 1),
(1799, 'المغرب', 'القنيطرة', 'سيدي الغازي', '34.2590735', '-5.93502680000006', 51, 273, 'سيدي الغازي', 1),
(1800, 'المغرب', 'القنيطرة', 'المدينة القديمة', '34.2621828', '-6.566328099999964', 51, 273, 'المدينة القديمة', 1),
(1801, 'المغرب', 'القنيطرة', 'الخبازات', '34.2650457', '-6.562552099999948', 51, 273, 'الخبازات', 1),
(1802, 'المغرب', 'القنيطرة', 'حمام الأنف ( الزنقة 36 )', '34.2540503', '-6.589016600000036', 51, 273, 'حمام الأنف ( الزنقة 36 )', 1),
(1803, 'المغرب', 'القنيطرة', 'ساحة الشهداء', '34.2631471', '-6.566077899999982', 51, 273, 'ساحة الشهداء', 1),
(1804, 'المغرب', 'القنيطرة', 'لاسيكون', '34.2540503', '-6.589016600000036', 51, 273, 'لاسيكون', 1),
(1805, 'المغرب', 'القنيطرة', 'ديور عشر آلاف', '34.2540503', '-6.589016600000036', 51, 273, 'ديور عشر آلاف', 1),
(1806, 'المغرب', 'القنيطرة', 'ديور الشعبي', '34.2540503', '-6.589016600000036', 51, 273, 'ديور الشعبي', 1),
(1807, 'المغرب', 'القنيطرة', 'سوق الحفرة', '34.2227319', '-5.712378400000034', 51, 273, 'سوق الحفرة', 1),
(1808, 'المغرب', 'القنيطرة', 'أفكا', '34.2540503', '-6.589016600000036', 51, 273, 'أفكا', 1),
(1809, 'المغرب', 'القنيطرة', 'الأطلس', '34.2646847', '-6.559528499999942', 51, 273, 'الأطلس', 1),
(1810, 'المغرب', 'القنيطرة', 'الرياض', '34.2661988', '-6.560740699999997', 51, 273, 'الرياض', 1),
(1811, 'المغرب', 'القنيطرة', 'الملاح', '34.2639356', '-6.572333100000037', 51, 273, 'الملاح', 1),
(1812, 'المغرب', 'القنيطرة', 'الرشاد', '34.2973309', '-5.712213900000052', 51, 273, 'الرشاد', 1),
(1813, 'المغرب', 'القنيطرة', 'لابيطا', '34.2540503', '-6.589016600000036', 51, 273, 'لابيطا', 1),
(1814, 'المغرب', 'القنيطرة', 'ولاد مليك', '34.7828155', '-5.820879999999988', 51, 273, 'ولاد مليك', 1),
(1815, 'المغرب', 'القنيطرة', 'دار الحليب', '34.2540503', '-6.589016600000036', 51, 273, 'دار الحليب', 1),
(1816, 'المغرب', 'القنيطرة', 'المدينة الحديثة', '34.2540503', '-6.589016600000036', 51, 273, 'المدينة الحديثة', 1),
(1817, 'المغرب', 'القنيطرة', 'عرصة القاضي', '34.2710593', '-6.562783800000034', 51, 273, 'عرصة القاضي', 1),
(1818, 'المغرب', 'القنيطرة', 'بـير الرامي الغربية', '34.2540503', '-6.589016600000036', 51, 273, 'بـير الرامي الغربية', 1),
(1819, 'المغرب', 'القنيطرة', 'بـير الرامي الشرقية', '34.2540503', '-6.589016600000036', 51, 273, 'بـير الرامي الشرقية', 1),
(1820, 'المغرب', 'القنيطرة', 'بير انزاران', '33.2341006', '-8.490427599999975', 51, 273, 'بير انزاران', 1),
(1821, 'المغرب', 'القنيطرة', 'ميموزا', '34.2555298', '-6.5960666999999376', 51, 273, 'ميموزا', 1),
(1822, 'المغرب', 'سطات', 'ازلى', '31.6230039', '-8.057747800000016', 51, 274, 'ازلى', 1),
(1823, 'المغرب', 'سطات', ' سيدي بوعبيد', '33.0037848', '-7.622435999999993', 51, 274, ' سيدي بوعبيد', 1),
(1824, 'المغرب', 'سطات', 'سيدي المعطي', '30.7888328', '31.00405109999997', 51, 274, 'سيدي المعطي', 1),
(1825, 'المغرب', 'سطات', 'دشرة أولاد السي الغازي', '32.99242419999999', '-7.622266500000023', 51, 274, 'دشرة أولاد السي الغازي', 1),
(1826, 'المغرب', 'الجديدة - آسفي', 'الهنا', '30.0694479', '31.27996859999996', 51, 275, 'الهنا', 1),
(1827, 'المغرب', 'الجديدة - آسفي', 'زنقة اسفى', '32.2815877', '-9.237533600000006', 51, 275, 'زنقة اسفى', 1),
(1828, 'المغرب', 'الجديدة - آسفي', 'القدس', '32.3008151', '-9.227203299999928', 51, 275, 'القدس', 1),
(1829, 'المغرب', 'الجديدة - آسفي', 'الجوهرة', '32.3008151', '-9.227203299999928', 51, 275, 'الجوهرة', 1),
(1830, 'المغرب', 'الجديدة - آسفي', 'النسيم', '32.3008151', '-9.227203299999928', 51, 275, 'النسيم', 1),
(1831, 'المغرب', 'الجديدة - آسفي', 'السلام', '32.327475', '-9.224239399999988', 51, 275, 'السلام', 1),
(1832, 'المغرب', 'الجديدة - آسفي', 'ام الربيع', '32.2900372', '-9.219416899999942', 51, 275, 'ام الربيع', 1),
(1833, 'قطر', 'الدوحة', 'المره', '25.3746108', '51.48651410000002', 140, 141, 'المره', 1),
(1834, 'مصر', 'طنطا', 'شارع شمس الدين الرئيسي 2 دقيقة من حسن رضوان', '0', '0', 3, 47, 'شارع شمس الدين الرئيسي 2 دقيقة من حسن رضوان', 1),
(1835, 'الجزائر', 'الجزائر العاصمة', 'باب الواد', '36.7927594', '3.051360100000011', 113, 114, 'باب الواد', 1),
(1836, 'الجزائر', 'الجزائر العاصمة', 'بوروبة', '36.7117069', '3.1152484000000413', 113, 114, 'بوروبة', 1),
(1837, 'الجزائر', 'الجزائر العاصمة', 'بلدية واد قريش', '36.7836306', '3.0400945000000092', 113, 114, 'بلدية واد قريش', 1),
(1838, 'الجزائر', 'الجزائر العاصمة', 'سيدي بنور ', '36.6530621', '2.8751690999999937', 113, 114, 'سيدي بنور ', 1),
(1839, 'الجزائر', 'الجزائر العاصمة', 'الحياة', '36.7224724', '3.0895576000000347', 113, 114, 'الحياة', 1),
(1840, 'الجزائر', 'الجزائر العاصمة', 'المستقبل ', '36.6985008', '3.1566328000000112', 113, 114, 'المستقبل ', 1),
(1841, 'الجزائر', 'الجزائر العاصمة', 'ياب الزوار', '36.7206251', '3.1854974999999968', 113, 114, 'ياب الزوار', 1),
(1842, 'الجزائر', 'الجزائر العاصمة', 'النصر', '36.7341842', '3.066071999999963', 113, 114, 'النصر', 1),
(1843, 'الجزائر', 'الجزائر العاصمة', 'العناصر', '36.7490611', '3.07640420000007', 113, 114, 'العناصر', 1),
(1844, 'الجزائر', 'الجزائر العاصمة', 'عين الطويلة', '28.033886', '1.659626000000003', 113, 114, 'عين الطويلة', 1),
(1845, 'الجزائر', 'بومرداس', ' 11ديسمبر', '36.7567824', '3.458039099999951', 113, 115, ' 11ديسمبر', 1),
(1846, 'مصر', 'الإسكندرية', 'برج العرب', '30.8322089', '29.574751200000037', 3, 38, 'برج العرب', 1),
(1847, 'السعودية', 'المدينة المنوّرة', 'المركزيه ', '24.4679938', '39.611805300000015', 2, 22, 'المركزيه ', 1),
(1848, 'السعودية', 'المدينة المنوّرة', 'السرانى ', '0', '0', 2, 22, 'السرانى ', 1),
(1849, 'قطر', 'الوكرة', 'الوكرة الشارع التجارى', '0', '0', 140, 144, 'الوكرة الشارع التجارى', 1),
(1850, 'الاردن', 'عمّان', 'مادبا', '31.71954', '35.794108999999935', 131, 132, 'مادبا', 1),
(1851, 'السعودية', 'جدة', 'جمهوريه مصر العربيه', '29.9968669', '31.239722099999994', 2, 13, 'جمهوريه مصر العربيه', 1),
(1852, 'مصر', 'القاهرة', 'مدينه العبور', '30.2283408', '31.47989480000001', 3, 37, 'مدينه العبور', 1),
(1853, 'السعودية', 'الرياض', 'الرفيعه', '24.6409762', '46.66570580000007', 2, 12, 'الرفيعه', 1),
(1854, 'مصر', 'طنطا', 'شارع محب', '30.7970102', '31.002524799999946', 3, 47, 'شارع محب', 1),
(1855, 'السعودية', 'مكّة المكرمة', 'حي الملك فهد باسكان مكه المكرمه', '0', '0', 2, 15, 'حي الملك فهد باسكان مكه المكرمه', 1),
(1856, 'الاردن', 'عمّان', 'ام السماق,شارع ابراهيم القطان ', '0', '0', 131, 132, 'ام السماق,شارع ابراهيم القطان ', 1),
(1857, 'مصر', 'اسيوط', 'ش-سعد زغلول', '27.1738991', '31.18297419999999', 3, 45, 'ش-سعد زغلول', 1),
(1858, 'المغرب', 'مراكش', 'طريق اوريكا', '31.6167527', '-7.990686299999993', 51, 211, 'طريق اوريكا', 1),
(1859, 'المغرب', 'مراكش', 'طريق فاس', '31.6482105', '-7.9535324999999375', 51, 211, 'طريق فاس', 1),
(1860, 'مصر', 'الإسكندرية', 'العبور', '31.2370298', '29.971042300000022', 3, 38, 'العبور', 1),
(1861, 'الاردن', 'الزرقاء', 'الزرقاء', '31.7515118', '36.86807909999993', 131, 133, 'الزرقاء', 1),
(1862, 'مصر', 'القاهرة', 'مكرم عبيد', '30.0620484', '31.345206899999994', 3, 37, 'مكرم عبيد', 1),
(1863, 'مصر', 'القاهرة', 'العجمى', '30.1045557', '31.219597099999987', 3, 37, 'العجمى', 1),
(1864, 'الاردن', 'عمّان', 'خريبة السوق وجاوا', '0', '0', 131, 132, 'خريبة السوق وجاوا', 1),
(1865, 'مصر', 'القاهرة', 'العاشر', '30.0981766', '31.26712789999999', 3, 37, 'العاشر', 1),
(1866, 'السعودية', 'جدة', 'الفروسيه', '21.8273275', '39.20117159999995', 2, 13, 'الفروسيه', 1),
(1867, 'الإمارات', 'دبي', 'ديرة', '25.2788468', '55.3309395', 1, 17, 'ديرة', 1),
(1868, 'الاردن', 'عمّان', 'جبل الحسين قرب مستشفى اﻻمل', '31.184368', '29.89268100000004', 131, 132, 'جبل الحسين قرب مستشفى اﻻمل', 1),
(1869, 'قطر', 'الدوحة', 'ابو سدرة', '25.3328117', '51.45077909999998', 140, 141, 'ابو سدرة', 1),
(1870, 'الاردن', 'عمّان', 'الشميساني ', '0', '0', 131, 132, 'الشميساني ', 1),
(1871, 'الاردن', 'عمّان', 'ماركا', '31.9741199', '35.98409570000001', 131, 132, 'ماركا', 1),
(1872, 'الاردن', 'عمّان', 'ابو نصير', '32.0325189', '35.86323749999997', 131, 132, 'ابو نصير', 1),
(1873, 'السعودية', 'الرياض', 'النعيمية - امارة عجمان', '25.0054482', '46.54483099999993', 2, 12, 'النعيمية - امارة عجمان', 1),
(1874, 'مصر', 'القاهرة', 'ميامي', '31.2533151', '30.000000699999987', 3, 37, 'ميامي', 1),
(1875, 'السودان', 'الخرطوم', 'يثرِب ', '30.0133721', '31.20532060000005', 235, 236, 'يثرِب ', 1),
(1876, 'مصر', 'المحلة الكبرى', 'سكة زفتي', '30.8572147', '31.18618330000004', 3, 43, 'سكة زفتي', 1),
(1877, 'مصر', 'الإسكندرية', 'كلوبترا', '30.5905846', '32.26782969999999', 3, 38, 'كلوبترا', 1),
(1878, 'قطر', 'الدوحة', 'اسلطه ', '25.2891069', '51.54523919999997', 140, 141, 'اسلطه ', 1),
(1879, 'السعودية', 'الخبر', 'الحمراء', '26.2299174', '50.206418299999996', 2, 67, 'الحمراء', 1),
(1880, 'العراق', 'اربيل', 'هولير سيتي ', '36.2134777', '43.99143070000002', 218, 226, 'هولير سيتي ', 1),
(1881, 'الإمارات', 'ابو ظبي', 'الجوازات', '0', '0', 1, 14, 'الجوازات', 1),
(1882, 'الإمارات', 'الشارقة', 'الغبيبة', '25.3767711', '55.44309350000003', 1, 18, 'الغبيبة', 1),
(1883, 'مصر', 'الإسكندرية', 'شارع فؤاد', '31.1960345', '29.902165500000024', 3, 38, 'شارع فؤاد', 1),
(1884, 'السودان', 'الخرطوم', 'جنوب الخرطوم ', '15.5006544', '32.55989939999995', 235, 236, 'جنوب الخرطوم ', 1),
(1885, 'مصر', 'اسيوط', 'خلف مصنع سيد', '29.8551924', '31.332236400000056', 3, 45, 'خلف مصنع سيد', 1),
(1886, 'مصر', 'اسيوط', 'الواسطي', '27.1730742', '31.21398410000006', 3, 45, 'الواسطي', 1),
(1887, 'مصر', 'اسيوط', 'ليلي خاتون', '27.1783117', '31.185925699999984', 3, 45, 'ليلي خاتون', 1),
(1888, 'مصر', 'الإسكندرية', 'كورونادو بيتش فى الساحل الشمالى ', '0', '0', 3, 38, 'كورونادو بيتش فى الساحل الشمالى ', 1),
(1889, 'مصر', 'القاهرة', 'امام مارينا 7 - الساحل الشمالى', '30.0444196', '31.23571160000006', 3, 37, 'امام مارينا 7 - الساحل الشمالى', 1),
(1890, 'مصر', 'المنصورة', 'سامية الجمل', '31.0306957', '31.367879499999958', 3, 46, 'سامية الجمل', 1),
(1891, 'مصر', 'القاهرة', 'جمال عبد الناصر', '30.0898145', '31.25961259999997', 3, 37, 'جمال عبد الناصر', 1),
(1892, 'مصر', 'طنطا', 'حى اول', '30.0908466', '31.28823979999993', 3, 47, 'حى اول', 1),
(1893, 'السودان', 'الخرطوم', 'المهندسين ', '15.6164228', '32.46653839999999', 235, 236, 'المهندسين ', 1),
(1894, 'مصر', 'القاهرة', 'بلولاجون', '30.0444196', '31.23571160000006', 3, 37, 'بلولاجون', 1),
(1895, 'مصر', 'القاهرة', 'زهراء المعادى', '29.9619782', '31.30318790000001', 3, 37, 'زهراء المعادى', 1),
(1896, 'قطر', 'الدوحة', 'الريان خلف الفروسية ', '25.2854473', '51.53103979999992', 140, 141, 'الريان خلف الفروسية ', 1),
(1897, 'مصر', 'القاهرة', 'السادس من اكتوبر', '30.0647444', '31.25295010000002', 3, 37, 'السادس من اكتوبر', 1),
(1898, 'مصر', 'اسيوط', 'ابو تيج', '27.0324009', '31.3026883', 3, 45, 'ابو تيج', 1),
(1899, 'مصر', 'القاهرة', 'المريوطية', '30.0962635', '31.19962099999998', 3, 37, 'المريوطية', 1),
(1900, 'الإمارات', 'العين', 'خلف الميجا مول', '0', '0', 1, 299, 'خلف الميجا مول', 1),
(1901, 'السعودية', 'مكّة المكرمة', 'شارع الحج مخطط دغش ', '0', '0', 2, 15, 'شارع الحج مخطط دغش ', 1),
(1902, 'مصر', 'طنطا', 'شارع المديرية', '30.7836851', '30.99595039999997', 3, 47, 'شارع المديرية', 1),
(1903, 'قطر', 'الدوحة', 'المدينه الصناعيه', '25.2118303', '51.49714979999999', 140, 141, 'المدينه الصناعيه', 1),
(1904, 'السعودية', 'جدة', 'الشاطئ', '21.5820209', '39.11794080000004', 2, 13, 'الشاطئ', 1),
(1905, 'السعودية', 'جدة', 'الشفا', '21.53275', '39.18812550000007', 2, 13, 'الشفا', 1),
(1906, 'السودان', 'الخرطوم', 'الشهيد طه الماحي', '15.5285545', '32.507570999999984', 235, 236, 'الشهيد طه الماحي', 1),
(1907, 'السودان', 'الخرطوم', 'الرياض الخرطوم', '15.5790102', '32.56838259999995', 235, 236, 'الرياض الخرطوم', 1),
(1908, 'مصر', 'طنطا', 'حسان ابن ثابت', '30.8086379', '30.996483099999978', 3, 47, 'حسان ابن ثابت', 1),
(1909, 'قطر', 'الدوحة', 'الضعاين', '25.2854473', '51.53103979999992', 140, 141, 'الضعاين', 1),
(1910, 'مصر', 'الإسكندرية', 'العجمى الهانوفيل', '31.1057499', '29.764877599999977', 3, 38, 'العجمى الهانوفيل', 1),
(1911, 'مصر', 'اسيوط', 'الغردقه', '30.1552087', '31.397892599999977', 3, 45, 'الغردقه', 1),
(1912, 'مصر', 'اسيوط', 'ابنوب شارع الجمهوريه', '27.1935621', '31.18604670000002', 3, 45, 'ابنوب شارع الجمهوريه', 1),
(1913, 'مصر', 'السويس', 'السويس ', '29.9668343', '32.54980690000002', 3, 42, 'السويس ', 1),
(1914, 'مصر', 'الإسكندرية', 'فيكتوريا', '31.1356994', '29.822136499999942', 3, 38, 'فيكتوريا', 1),
(1915, 'السعودية', 'جدة', 'مخطط الفهد ', '0', '0', 2, 13, 'مخطط الفهد ', 1),
(1916, 'الكويت', 'الكويت العاصمة', 'مبارك الكبير', '29.3725728', '47.98186629999998', 95, 106, 'مبارك الكبير', 1),
(1917, 'الاردن', 'عمّان', 'عمان الغربية ', '31.9586314', '35.852320899999995', 131, 132, 'عمان الغربية ', 1),
(1918, 'مصر', 'الإسكندرية', 'مرسى مطروح', '31.3372074', '27.253349100000037', 3, 38, 'مرسى مطروح', 1),
(1919, 'مصر', 'الإسكندرية', 'الجمرك', '31.2699021', '29.988409899999965', 3, 38, 'الجمرك', 1),
(1920, 'مصر', 'الإسكندرية', 'حى شرق', '31.14089959999999', '29.830665400000044', 3, 38, 'حى شرق', 1),
(1921, 'مصر', 'القاهرة', 'وسط البلد القاهرة', '30.0444196', '31.23571160000006', 3, 37, 'وسط البلد القاهرة', 1),
(1922, 'مصر', 'الإسكندرية', 'سيدى بشر بجوار ش القاهرة ', '31.2533151', '30.000000699999987', 3, 38, 'سيدى بشر بجوار ش القاهرة ', 1),
(1923, 'السعودية', 'المدينة المنوّرة', 'ارض الكردي', '30.947443', '31.151436200000035', 2, 22, 'ارض الكردي', 1),
(1924, 'مصر', 'طنطا', 'السلطان مراد ', '30.7928137', '31.0050344', 3, 47, 'السلطان مراد ', 1),
(1925, 'الكويت', 'الكويت العاصمة', 'مشرف', '29.2839552', '48.03912390000005', 95, 106, 'مشرف', 1),
(1926, 'السعودية', 'جدة', 'الرحيلي طيبه', '21.7905915', '39.130562199999986', 2, 13, 'الرحيلي طيبه', 1),
(1927, 'مصر', 'السويس', 'السلام-السويس', '29.9951305', '32.48351930000001', 3, 42, 'السلام-السويس', 1),
(1928, 'مصر', 'القاهرة', 'الصف', '30.0931477', '31.205783300000007', 3, 37, 'الصف', 1),
(1929, 'مصر', 'اسيوط', 'الزهراء بفريال', '27.1783117', '31.185925699999984', 3, 45, 'الزهراء بفريال', 1),
(1930, 'الكويت', 'الاحمدي', 'المنقف', '29.1070609', '48.12398940000003', 95, 108, 'المنقف', 1),
(1931, 'الاردن', 'عمّان', 'ياجوز', '32.0240191', '35.933610199999976', 131, 132, 'ياجوز', 1),
(1932, 'لبنان', 'بيروت', 'بيروت', '33.8886289', '35.49547940000002', 165, 166, 'بيروت', 1),
(1933, 'مصر', 'الإسماعيلية', 'الاسماعيلية', '30.5964923', '32.27145870000004', 3, 50, 'الاسماعيلية', 1),
(1934, 'السعودية', 'المدينة المنوّرة', 'الكردى', '24.4532655', '39.61918830000002', 2, 22, 'الكردى', 1),
(1935, 'تونس', 'تونس العاصمة', 'منوبة ', '36.8446504', '9.857141599999977', 80, 85, 'منوبة ', 1),
(1936, 'الاردن', 'عمّان', 'شارع الأردن ', '31.9380581', '35.89031829999999', 131, 132, 'شارع الأردن ', 1),
(1937, 'مصر', 'الإسكندرية', 'العجمى ابو يوسف', '31.0973753', '29.74933199999998', 3, 38, 'العجمى ابو يوسف', 1),
(1938, 'عمان', 'مسقط', 'الخوير', '23.5968019', '58.43420000000003', 180, 181, 'الخوير', 1),
(1939, 'مصر', 'القاهرة', 'طريق مصر اسكندرية الصحراوى ', '30.4585723', '30.30484560000002', 3, 37, 'طريق مصر اسكندرية الصحراوى ', 1),
(1940, 'مصر', 'الإسكندرية', 'شهرالعسل', '31.1321438', '29.780963199999974', 3, 38, 'شهرالعسل', 1),
(1941, 'السعودية', 'الرياض', 'الهرم', '24.7698749', '46.76963820000003', 2, 12, 'الهرم', 1),
(1942, 'السعودية', 'جدة', 'حي التيسير ', '30.0339296', '31.18400280000003', 2, 13, 'حي التيسير ', 1),
(1943, 'مصر', 'القاهرة', 'الساحل الشمالى - ماونتن فيو', '30.0444196', '31.23571160000006', 3, 37, 'الساحل الشمالى - ماونتن فيو', 1),
(1944, 'مصر', 'القليوبية', 'العبور ', '30.2283408', '31.47989480000001', 3, 40, 'العبور ', 1),
(1945, 'مصر', 'القاهرة', 'وسط البلد - القاهرة', '30.0444196', '31.23571160000006', 3, 37, 'وسط البلد - القاهرة', 1),
(1946, 'السعودية', 'الرياض', '6 اكتوبر', '29.9936743', '31.275978899999927', 2, 12, '6 اكتوبر', 1),
(1947, 'السعودية', 'الرياض', 'اليرموك الرياض', '24.8163226', '46.821046000000024', 2, 12, 'اليرموك الرياض', 1),
(1948, 'السودان', 'الخرطوم', 'الخوجلاب', '15.8065903', '32.56272719999993', 235, 236, 'الخوجلاب', 1),
(1949, 'السعودية', 'مكّة المكرمة', 'التنعيم', '21.4925783', '39.806453199999964', 2, 15, 'التنعيم', 1),
(1950, 'الكويت', 'الاحمدي', 'المهبولة', '29.1496559', '48.119198600000004', 95, 108, 'المهبولة', 1),
(1951, 'السعودية', 'جدة', 'شارع الأمير سلطان جدة', '21.2854067', '39.23755069999993', 2, 13, 'شارع الأمير سلطان جدة', 1),
(1952, 'قطر', 'الدوحة', 'الريان شارع الوجبة ', '25.2913792', '51.41459469999995', 140, 141, 'الريان شارع الوجبة ', 1),
(1953, 'مصر', 'الإسكندرية', 'الازاريطه', '0', '0', 3, 38, 'الازاريطه', 1),
(1954, 'مصر', 'السويس', 'لاسيرينا', '29.9668343', '32.54980690000002', 3, 42, 'لاسيرينا', 1),
(1955, 'مصر', 'طنطا', 'نادى المعلمين', '30.7975264', '30.994804499999987', 3, 47, 'نادى المعلمين', 1),
(1956, 'الاردن', 'عمّان', 'بالقرب من مكة مول ', '0', '0', 131, 132, 'بالقرب من مكة مول ', 1),
(1957, 'مصر', 'اسيوط', 'الجمهوريه العمومي ', '27.1884334', '31.186343299999976', 3, 45, 'الجمهوريه العمومي ', 1),
(1958, 'فلسطين', 'غزة', 'الزيتون', '31.5174283', '34.44961820000003', 228, 231, 'الزيتون', 1),
(1959, 'فلسطين', 'غزة', 'النصر', '26.1096256', '34.27951729999995', 228, 231, 'النصر', 1),
(1960, 'لبنان', 'بيروت', 'الحمرا ', '33.8951589', '35.48760979999997', 165, 166, 'الحمرا ', 1),
(1961, 'مصر', 'القاهرة', 'بركة السبع', '30.0639167', '31.256802600000015', 3, 37, 'بركة السبع', 1),
(1962, 'الاردن', 'عمّان', 'الرونق', '0', '0', 131, 132, 'الرونق', 1),
(1963, 'الاردن', 'عمّان', 'عميش', '0', '0', 131, 132, 'عميش', 1),
(1964, 'مصر', 'الإسكندرية', 'سيدي عبد الرحمن', '31.2021874', '29.881151700000032', 3, 38, 'سيدي عبد الرحمن', 1),
(1965, 'لبنان', 'جبل لبنان', 'بعبدات', '33.8919523', '35.67575360000001', 165, 258, 'بعبدات', 1),
(1966, 'مصر', 'اسيوط', 'ابوتيج', '27.0444171', '31.318931900000052', 3, 45, 'ابوتيج', 1),
(1967, 'الكويت', 'الكويت العاصمة', 'أبو فطيرة', '0', '0', 95, 106, 'أبو فطيرة', 1),
(1968, 'العراق', 'اربيل', 'مجمع أيندة 1', '0', '0', 218, 226, 'مجمع أيندة 1', 1),
(1969, 'قطر', 'الدوحة', 'جميع المناطق', '25.2854473', '51.53103979999992', 140, 141, 'جميع المناطق', 1),
(1970, 'قطر', 'الدوحة', 'أم عبيريه', '25.2690322', '51.531566500000054', 140, 141, 'أم عبيريه', 1),
(1971, 'الإمارات', 'ابو ظبي', 'معسكر النهيان', '24.4983881', '54.379654200000004', 1, 14, 'معسكر النهيان', 1),
(1972, 'الاردن', 'عمّان', 'سحاب', '31.844851', '36.04548999999997', 131, 132, 'سحاب', 1),
(1973, 'مصر', 'القاهرة', 'بلبيس ', '30.4158383', '31.56211840000003', 3, 37, 'بلبيس ', 1),
(1974, 'قطر', 'الدوحة', 'ام الافاعي', '25.2854473', '51.53103979999992', 140, 141, 'ام الافاعي', 1),
(1975, 'الاردن', 'عمّان', 'الدوار الثاني', '0', '0', 131, 132, 'الدوار الثاني', 1),
(1976, 'مصر', 'المنصورة', 'مجمع المحاكم', '31.0328684', '31.397049299999935', 3, 46, 'مجمع المحاكم', 1),
(1977, 'السعودية', 'الرياض', 'مصفوت - امارة عجمان', '25.0054482', '46.54483099999993', 2, 12, 'مصفوت - امارة عجمان', 1),
(1978, 'مصر', 'المحلة الكبرى', 'ابو دراع', '30.9660344', '31.152497700000026', 3, 43, 'ابو دراع', 1),
(1979, 'مصر', 'اسيوط', 'اسيوط ( فريال)', '27.1783117', '31.185925699999984', 3, 45, 'اسيوط ( فريال)', 1),
(1980, 'قطر', 'الدوحة', 'السيليه', '25.2854473', '51.53103979999992', 140, 141, 'السيليه', 1),
(1981, 'السعودية', 'الطائف', 'جبرة', '21.299773', '40.430621599999995', 2, 71, 'جبرة', 1),
(1982, 'مصر', 'طنطا', 'بركة السبع', '31.1988089', '29.92667689999996', 3, 47, 'بركة السبع', 1),
(1983, 'السودان', 'الخرطوم', 'الامتداد ', '15.5512765', '32.54151669999999', 235, 236, 'الامتداد ', 1),
(1984, 'الكويت', 'حولي', 'الرميثية', '29.3180299', '48.075391699999955', 95, 276, 'الرميثية', 1),
(1985, 'قطر', 'الدوحة', 'الوكرة', '25.2854473', '51.53103979999992', 140, 141, 'الوكرة', 1),
(1986, 'قطر', 'الوكرة', 'الشارع العام بالوكرة', '0', '0', 140, 144, 'الشارع العام بالوكرة', 1),
(1987, 'الاردن', 'عمّان', 'ضاحية الرشيد / خلف الجامعة الاردنية مباشره ', '0', '0', 131, 132, 'ضاحية الرشيد / خلف الجامعة الاردنية مباشره ', 1),
(1988, 'مصر', 'الإسكندرية', 'بيانكى الهانوفيل', '31.1188194', '29.76721280000004', 3, 38, 'بيانكى الهانوفيل', 1),
(1989, 'مصر', 'الإسكندرية', 'كورنادو', '0', '0', 3, 38, 'كورنادو', 1),
(1990, 'مصر', 'اسيوط', 'امام مطعم مؤمن ', '27.1783117', '31.185925699999984', 3, 45, 'امام مطعم مؤمن ', 1),
(1991, 'مصر', 'القاهرة', 'ف الكيلو 64 من مدينه راس سدر - جنوب سيناء ', '30.0612155', '31.263182400000005', 3, 37, 'ف الكيلو 64 من مدينه راس سدر - جنوب سيناء ', 1),
(1992, 'الإمارات', 'ابو ظبي', 'شارع المرور - اشارة 23 على طريق السلام', '0', '0', 1, 14, 'شارع المرور - اشارة 23 على طريق السلام', 1),
(1993, 'مصر', 'اسيوط', 'تفرعات الجلاء ', '27.1783117', '31.185925699999984', 3, 45, 'تفرعات الجلاء ', 1),
(1994, 'المغرب', 'الدار البيضاء', 'كاليفرنيا', '33.5293802', '-7.611261799999966', 51, 54, 'كاليفرنيا', 1),
(1995, 'السعودية', 'مكّة المكرمة', 'الرصيفه', '21.4112337', '39.78843240000003', 2, 15, 'الرصيفه', 1),
(1996, 'السعودية', 'الرياض', 'السلي', '24.6584098', '46.83497149999994', 2, 12, 'السلي', 1),
(1997, 'مصر', 'اسيوط', 'التمليك القبلي ', '27.1783117', '31.185925699999984', 3, 45, 'التمليك القبلي ', 1),
(1998, 'مصر', 'طنطا', 'مصطفى كامل', '30.79266389999999', '31.009540199999947', 3, 47, 'مصطفى كامل', 1),
(1999, 'مصر', 'المنصورة', 'احمد ماهر', '31.0322805', '31.36293809999995', 3, 46, 'احمد ماهر', 1),
(2000, 'العراق', 'اربيل', 'اتلانتك', '0', '0', 218, 226, 'اتلانتك', 1),
(2001, 'العراق', 'اربيل', 'كنجان ', '0', '0', 218, 226, 'كنجان ', 1),
(2002, 'السعودية', 'الطائف', 'كوبري الصيانة', '21.4372729', '40.512714200000005', 2, 71, 'كوبري الصيانة', 1),
(2003, 'السعودية', 'الرياض', 'دبي ', '25.0054482', '46.54483099999993', 2, 12, 'دبي ', 1),
(2004, 'مصر', 'الإسكندرية', 'شاطئ النخيل', '31.13613759999999', '29.821334699999966', 3, 38, 'شاطئ النخيل', 1),
(2005, 'مصر', 'اسيوط', 'محطه اسيوط', '27.5619058', '30.813127200000054', 3, 45, 'محطه اسيوط', 1),
(2006, 'مصر', 'الإسكندرية', 'مطروح', '31.3372074', '27.253349100000037', 3, 38, 'مطروح', 1),
(2007, 'مصر', 'الإسكندرية', 'غبريال', '31.2391422', '29.973636199999987', 3, 38, 'غبريال', 1),
(2008, 'مصر', 'القاهرة', 'الحى الاول', '30.2356518', '31.467042200000037', 3, 37, 'الحى الاول', 1),
(2009, 'مصر', 'اسيوط', 'امتداد يسري راغب ', '27.1845154', '31.18344300000001', 3, 45, 'امتداد يسري راغب ', 1),
(2010, 'مصر', 'اسيوط', 'شارع 26 يوليو العمومي', '27.1793244', '31.1811424', 3, 45, 'شارع 26 يوليو العمومي', 1),
(2011, 'السودان', 'ام درمان', 'الروضة ', '15.6788477', '32.50191229999996', 235, 238, 'الروضة ', 1),
(2012, 'السودان', 'الخرطوم', 'ابو آدم ', '15.4942563', '32.4891791', 235, 236, 'ابو آدم ', 1),
(2013, 'مصر', 'الإسكندرية', 'كورال هيلز', '0', '0', 3, 38, 'كورال هيلز', 1),
(2014, 'مصر', 'السويس', 'مارينا العين السخنه', '29.6325617', '32.330017099999964', 3, 42, 'مارينا العين السخنه', 1),
(2015, 'الإمارات', 'ابو ظبي', 'معسكر أل نهيان', '24.4983881', '54.379654200000004', 1, 14, 'معسكر أل نهيان', 1),
(2016, 'السعودية', 'جدة', 'جده', '21.541308', '39.16288789999999', 2, 13, 'جده', 1),
(2017, 'مصر', 'اسيوط', 'ترعة الابراهيمية', '27.1952129', '31.177133899999944', 3, 45, 'ترعة الابراهيمية', 1),
(2018, 'العراق', 'اربيل', 'اتكونز', '0', '0', 218, 226, 'اتكونز', 1),
(2019, 'مصر', 'طنطا', 'احمد ماهر ', '30.7877115', '30.998648000000003', 3, 47, 'احمد ماهر ', 1),
(2020, 'قطر', 'الدوحة', 'الدفنه ', '25.3077469', '51.516321800000014', 140, 141, 'الدفنه ', 1),
(2021, 'مصر', 'المنصورة', 'مدينة مبارك', '31.0534898', '31.39954130000001', 3, 46, 'مدينة مبارك', 1),
(2022, 'مصر', 'طنطا', 'سوق الجملة', '30.5876155', '32.25592819999997', 3, 47, 'سوق الجملة', 1),
(2023, 'مصر', 'القاهرة', 'مرسى علم', '30.12275929999999', '31.306333699999982', 3, 37, 'مرسى علم', 1),
(2024, 'السودان', 'الخرطوم', 'الحي الراقي ', '15.5006544', '32.55989939999995', 235, 236, 'الحي الراقي ', 1),
(2025, 'السودان', 'الخرطوم', 'الجريف غرب ', '15.5444013', '32.591001000000006', 235, 236, 'الجريف غرب ', 1),
(2026, 'الكويت', 'الكويت العاصمة', 'الشامية', '29.35089859999999', '47.96883589999993', 95, 106, 'الشامية', 1),
(2027, 'الكويت', 'الكويت العاصمة', 'بنيدالقار', '29.373051', '48.004743899999994', 95, 106, 'بنيدالقار', 1),
(2028, 'الإمارات', 'الشارقة', 'خلف الميجا مول', '0', '0', 1, 18, 'خلف الميجا مول', 1),
(2029, 'مصر', 'القاهرة', 'غرب سوميد ', '29.9842051', '30.974331000000006', 3, 37, 'غرب سوميد ', 1),
(2030, 'الكويت', 'الكويت العاصمة', 'ابو فطيرة', '0', '0', 95, 106, 'ابو فطيرة', 1),
(2031, 'مصر', 'طنطا', 'شارع البحر الرئيسي', '30.0576348', '31.21130500000004', 3, 47, 'شارع البحر الرئيسي', 1),
(2032, 'الإمارات', 'الشارقة', 'الحوشى سكنية أولى ', '0', '0', 1, 18, 'الحوشى سكنية أولى ', 1),
(2033, 'مصر', 'طنطا', 'البندارى', '30.0487531', '31.19087830000001', 3, 47, 'البندارى', 1),
(2034, 'مصر', 'طنطا', 'ترعة سناره', '30.7908528', '30.986552500000016', 3, 47, 'ترعة سناره', 1),
(2035, 'مصر', 'الإسكندرية', 'الروضة الخضراء', '31.1969336', '29.928770299999996', 3, 38, 'الروضة الخضراء', 1),
(2036, 'السعودية', 'الرياض', 'طريق الحائر', '24.4967607', '46.78890469999999', 2, 12, 'طريق الحائر', 1),
(2037, 'الكويت', 'الاحمدي', 'العقيله', '29.1687526', '48.10268410000003', 95, 108, 'العقيله', 1),
(2038, 'مصر', 'المنصورة', 'جيهان', '31.0371371', '31.360568000000058', 3, 46, 'جيهان', 1),
(2039, 'السعودية', 'جدة', 'السامر', '21.583792', '39.24534349999999', 2, 13, 'السامر', 1),
(2040, 'السعودية', 'المدينة المنوّرة', 'السلام ', '24.4747013', '39.522654699999975', 2, 22, 'السلام ', 1),
(2041, 'مصر', 'السويس', 'بورتو السخنة', '29.9668343', '32.54980690000002', 3, 42, 'بورتو السخنة', 1),
(2042, 'مصر', 'اسيوط', 'يسري راغب العمومي بقلته', '27.1783117', '31.185925699999984', 3, 45, 'يسري راغب العمومي بقلته', 1),
(2043, 'مصر', 'طنطا', 'ش النادى', '30.7961269', '30.994773200000054', 3, 47, 'ش النادى', 1),
(2044, 'مصر', 'اسيوط', 'التمليك القبلي بالاربعين ', '27.1783117', '31.185925699999984', 3, 45, 'التمليك القبلي بالاربعين ', 1),
(2045, 'الكويت', 'الكويت العاصمة', 'الحليو - امارة عجمان', '0', '0', 95, 106, 'الحليو - امارة عجمان', 1),
(2046, 'مصر', 'السويس', 'حوض الدرس - السويس', '29.9668343', '32.54980690000002', 3, 42, 'حوض الدرس - السويس', 1),
(2047, 'السودان', 'ام درمان', 'حي الروضة ', '15.6788477', '32.50191229999996', 235, 238, 'حي الروضة ', 1),
(2048, 'الإمارات', 'الشارقة', 'القاسمية', '25.3459198', '55.39318179999998', 1, 18, 'القاسمية', 1),
(2049, 'قطر', 'الدوحة', 'المعراض', '25.2499642', '51.37323629999992', 140, 141, 'المعراض', 1),
(2050, 'قطر', 'الدوحة', 'مدينة خليفة الجنوبيه بالقرب من المدرسه الانجليزيه', '25.2854473', '51.53103979999992', 140, 141, 'مدينة خليفة الجنوبيه بالقرب من المدرسه الانجليزيه', 1),
(2051, 'البحرين', 'المنامة', 'المالكية ', '26.1362181', '50.524918699999944', 142, 151, 'المالكية ', 1),
(2052, 'السودان', 'الخرطوم', 'السوق المحلي', '15.5322462', '32.55802629999994', 235, 236, 'السوق المحلي', 1),
(2053, 'الاردن', 'عمّان', 'ام السماق الشمالي', '0', '0', 131, 132, 'ام السماق الشمالي', 1),
(2054, 'الكويت', 'الاحمدي', 'صباح السالم ', '29.2565637', '48.06260499999996', 95, 108, 'صباح السالم ', 1),
(2055, 'مصر', 'طنطا', 'يوسف الصديق', '30.7106627', '31.235167400000023', 3, 47, 'يوسف الصديق', 1),
(2056, 'المغرب', 'الدار البيضاء', 'انفا', '33.5898925', '-7.662949499999968', 51, 54, 'انفا', 1),
(2057, 'مصر', 'طنطا', 'المتوكل', '30.8002017', '31.001291300000048', 3, 47, 'المتوكل', 1),
(2058, 'مصر', 'المحلة الكبرى', 'شكرى القوتلى', '30.9784921', '31.17318649999993', 3, 43, 'شكرى القوتلى', 1),
(2059, 'السعودية', 'الرياض', 'الجله', '24.6344672', '46.59383809999997', 2, 12, 'الجله', 1),
(2060, 'مصر', 'اسيوط', 'الابراهيمية', '27.1896785', '31.159977499999968', 3, 45, 'الابراهيمية', 1),
(2061, 'مصر', 'اسيوط', 'تقسيم جمعيه اسكان المعلمين القديمه بجوار مستشفي العطيفي ', '27.1783117', '31.185925699999984', 3, 45, 'تقسيم جمعيه اسكان المعلمين القديمه بجوار مستشفي العطيفي ', 1),
(2062, 'الكويت', 'حولي', 'حولى', '29.3332984', '48.015892699999995', 95, 276, 'حولى', 1),
(2063, 'السودان', 'ام درمان', 'امدرمان', '15.6475782', '32.480689400000074', 235, 238, 'امدرمان', 1),
(2064, 'السعودية', 'جدة', 'الصفا عياده', '21.6032261', '39.21240020000005', 2, 13, 'الصفا عياده', 1),
(2065, 'الكويت', 'الكويت العاصمة', 'المنامة - امارة عجمان', '26.2285161', '50.58604969999999', 95, 106, 'المنامة - امارة عجمان', 1),
(2066, 'الكويت', 'الكويت العاصمة', 'الكويت العاصمة', '29.3342457', '47.98121519999995', 95, 106, 'الكويت العاصمة', 1),
(2067, 'مصر', 'الإسكندرية', 'شدس', '31.2383014', '29.97234209999999', 3, 38, 'شدس', 1),
(2068, 'مصر', 'السويس', 'قرية بلولاجون فى راس سدر', '29.9668343', '32.54980690000002', 3, 42, 'قرية بلولاجون فى راس سدر', 1),
(2069, 'الاردن', 'عمّان', 'الرونق,مقابل مشاوي عمان', '0', '0', 131, 132, 'الرونق,مقابل مشاوي عمان', 1),
(2070, 'الكويت', 'الكويت العاصمة', 'النعيمية - امارة عجمان', '0', '0', 95, 106, 'النعيمية - امارة عجمان', 1),
(2071, 'الكويت', 'الفروانية ', 'العارضية', '29.2913796', '47.90698199999997', 95, 277, 'العارضية', 1),
(2072, 'الكويت', 'الكويت العاصمة', 'الياسمين - امارة عجمان', '0', '0', 95, 106, 'الياسمين - امارة عجمان', 1),
(2073, 'مصر', 'الإسكندرية', 'كامب شيزرا ', '0', '0', 3, 38, 'كامب شيزرا ', 1),
(2074, 'مصر', 'المنصورة', 'راس البر', '30.1196779', '31.300817400000028', 3, 46, 'راس البر', 1),
(2075, 'السعودية', 'الرياض', 'تلال الرياض', '24.7996834', '46.61021460000006', 2, 12, 'تلال الرياض', 1),
(2076, 'مصر', 'الإسكندرية', 'الساعة', '31.2429378', '29.984287499999937', 3, 38, 'الساعة', 1),
(2077, 'السعودية', 'الرياض', 'الساحل الشمالى', '30.0210791', '31.25647779999997', 2, 12, 'الساحل الشمالى', 1),
(2078, 'قطر', 'الدوحة', 'الخليج الغربي ', '25.3634666', '51.514400600000045', 140, 141, 'الخليج الغربي ', 1),
(2079, 'مصر', 'القاهرة', 'الخصوص', '30.1338497', '31.35702219999996', 3, 37, 'الخصوص', 1),
(2080, 'السودان', 'ام درمان', 'الواحة ', '15.6965297', '32.511814800000025', 235, 238, 'الواحة ', 1),
(2081, 'الإمارات', 'ابو ظبي', 'القاسميه', '0', '0', 1, 14, 'القاسميه', 1),
(2082, 'الإمارات', 'الشارقة', 'الرماقية', '25.357535', '55.46100750000005', 1, 18, 'الرماقية', 1),
(2083, 'الإمارات', 'الشارقة', 'بساتين الطي ', '0', '0', 1, 18, 'بساتين الطي ', 1),
(2084, 'مصر', 'القاهرة', 'التجمع الاول', '30.0084868', '31.428475599999956', 3, 37, 'التجمع الاول', 1),
(2085, 'مصر', 'القاهرة', 'النزهة الجديدة 2', '30.0629619', '31.268236300000012', 3, 37, 'النزهة الجديدة 2', 1),
(2086, 'السودان', 'الخرطوم', 'سباق الخيل ', '15.5006544', '32.55989939999995', 235, 236, 'سباق الخيل ', 1),
(2087, 'الإمارات', 'ابو ظبي', 'ابو ظبى', '24.3274319', '55.80126859999996', 1, 14, 'ابو ظبى', 1),
(2088, 'الإمارات', 'دبي', 'الفرجان', '25.2275804', '55.175012100000004', 1, 17, 'الفرجان', 1),
(2089, 'مصر', 'طنطا', 'ميدان اسكندريه', '30.7865779', '30.988225899999975', 3, 47, 'ميدان اسكندريه', 1),
(2090, 'الإمارات', 'الشارقة', 'الياش', '25.3418107', '55.46516180000003', 1, 18, 'الياش', 1),
(2091, 'الاردن', 'عمّان', 'في عدة مناطق من عمان الغربية', '0', '0', 131, 132, 'في عدة مناطق من عمان الغربية', 1),
(2092, 'مصر', 'الزقازيق', 'الشرقيه - العاشر من رمضان ', '30.5971222', '31.470788500000026', 3, 49, 'الشرقيه - العاشر من رمضان ', 1),
(2093, 'السعودية', 'مكّة المكرمة', 'مكة', '21.3890824', '39.85791180000001', 2, 15, 'مكة', 1),
(2094, 'العراق', 'اربيل', 'بانك', '36.1681534', '43.989841299999966', 218, 226, 'بانك', 1),
(2095, 'العراق', 'اربيل', 'روشنبيري ', '36.1260891', '44.03804439999999', 218, 226, 'روشنبيري ', 1),
(2096, 'العراق', 'اربيل', 'بلاص لايف', '0', '0', 218, 226, 'بلاص لايف', 1),
(2097, 'الكويت', 'الاحمدي', 'القصور', '29.2146014', '48.07291129999999', 95, 108, 'القصور', 1),
(2098, 'الاردن', 'الزرقاء', 'الزرقاء الجديدة ', '32.1395461', '36.13294059999998', 131, 133, 'الزرقاء الجديدة ', 1),
(2099, 'الإمارات', 'ابو ظبي', 'الشامخة', '24.3948831', '54.70825680000007', 1, 14, 'الشامخة', 1),
(2100, 'قطر', 'الدوحة', 'المريخ', '25.2842826', '51.444083800000044', 140, 141, 'المريخ', 1),
(2101, 'مصر', 'طنطا', 'المحطه', '30.0576348', '31.21130500000004', 3, 47, 'المحطه', 1),
(2102, 'السعودية', 'الرياض', 'راس سدر', '30.1183238', '31.306670899999972', 2, 12, 'راس سدر', 1),
(2103, 'مصر', 'طنطا', 'النادى الرئيسى', '30.1362917', '31.282786200000032', 3, 47, 'النادى الرئيسى', 1),
(2104, 'السعودية', 'مكّة المكرمة', 'النسيم', '21.3698998', '39.87334090000002', 2, 15, 'النسيم', 1);
INSERT INTO `am_districts` (`id`, `country`, `city`, `name`, `lat`, `lng`, `country_id`, `city_id`, `geo_name`, `status`) VALUES
(2105, 'السعودية', 'مكّة المكرمة', 'العزيزية ', '21.4152259', '39.8527679', 2, 15, 'العزيزية ', 1),
(2106, 'مصر', 'الإسكندرية', 'كورال هيلز الساحل الشمالي', '0', '0', 3, 38, 'كورال هيلز الساحل الشمالي', 1),
(2107, 'مصر', 'السويس', 'كنوز راس سدر', '29.9668343', '32.54980690000002', 3, 42, 'كنوز راس سدر', 1),
(2108, 'الإمارات', 'عجمان', 'الليوارة', '0', '0', 1, 60, 'الليوارة', 1),
(2109, 'مصر', 'القاهرة', 'النزهة', '30.1020351', '31.33986679999998', 3, 37, 'النزهة', 1),
(2110, 'الاردن', 'عمّان', 'ضاحية الحسين', '31.9694037', '35.88140729999998', 131, 132, 'ضاحية الحسين', 1),
(2111, 'الاردن', 'عمّان', 'بدر  الجديدة', '31.18613119999999', '29.908147900000017', 131, 132, 'بدر  الجديدة', 1),
(2112, 'السعودية', 'جدة', 'الرحمانية', '21.7916429', '39.22196220000001', 2, 13, 'الرحمانية', 1),
(2113, 'مصر', 'اسيوط', 'المجاهدين', '27.4371912', '30.81258509999998', 3, 45, 'المجاهدين', 1),
(2114, 'مصر', 'طنطا', 'المتحف', '30.7938702', '31.000122799999986', 3, 47, 'المتحف', 1),
(2115, 'مصر', 'الإسكندرية', 'زيزينيا', '31.2409932', '29.96486630000004', 3, 38, 'زيزينيا', 1),
(2116, 'مصر', 'الإسكندرية', 'جميله بوحريد', '31.2249815', '29.993576899999994', 3, 38, 'جميله بوحريد', 1),
(2117, 'مصر', 'الإسكندرية', 'السيوف اسكندريه', '31.2346783', '29.999192600000015', 3, 38, 'السيوف اسكندريه', 1),
(2118, 'السعودية', 'جدة', 'شارع الامير سلطان ', '21.6674672', '39.121371599999975', 2, 13, 'شارع الامير سلطان ', 1),
(2119, 'السودان', 'الخرطوم', 'الازهري', '15.6415525', '32.524587', 235, 236, 'الازهري', 1),
(2120, 'الكويت', 'الكويت العاصمة', 'كيفان', '29.3375672', '47.95893449999994', 95, 106, 'كيفان', 1),
(2121, 'مصر', 'اسيوط', 'شارع الخلفاء', '27.186139', '31.184551400000032', 3, 45, 'شارع الخلفاء', 1),
(2122, 'تونس', 'تونس العاصمة', 'المرسى', '30.00550509999999', '31.213010800000006', 80, 85, 'المرسى', 1),
(2123, 'الكويت', 'حولي', 'الجابريه', '29.31805739999999', '48.025804600000015', 95, 276, 'الجابريه', 1),
(2124, 'السعودية', 'جدة', 'طريق المدينة', '21.6507932', '39.1386579', 2, 13, 'طريق المدينة', 1),
(2125, 'العراق', 'اربيل', 'بختياري', '36.2026203', '43.992220599999996', 218, 226, 'بختياري', 1),
(2126, 'المغرب', 'الدار البيضاء', 'عين الدياب', '33.58921910000001', '-7.673802300000034', 51, 54, 'عين الدياب', 1),
(2127, 'قطر', 'الدوحة', 'الوكره', '25.2854473', '51.53103979999992', 140, 141, 'الوكره', 1),
(2128, 'مصر', 'المنصورة', 'المختلط', '31.0500816', '31.391958700000032', 3, 46, 'المختلط', 1),
(2129, 'قطر', 'الدوحة', 'السميسمة', '25.2768834', '51.54628550000007', 140, 141, 'السميسمة', 1),
(2130, 'قطر', 'الدوحة', 'بني هاجر ', '25.3163231', '51.40209089999996', 140, 141, 'بني هاجر ', 1),
(2131, 'مصر', 'الإسكندرية', 'سيدي جابر', '31.2207667', '29.937212000000045', 3, 38, 'سيدي جابر', 1),
(2132, 'مصر', 'اسيوط', 'ابراج الشباب', '27.1783117', '31.185925699999984', 3, 45, 'ابراج الشباب', 1),
(2133, 'الإمارات', 'الشارقة', 'الرحمانية', '25.3516384', '55.615435700000035', 1, 18, 'الرحمانية', 1),
(2134, 'الإمارات', 'الشارقة', 'العرقوب', '0', '0', 1, 18, 'العرقوب', 1),
(2135, 'الإمارات', 'الشارقة', 'مويلح التجارى', '25.3009483', '55.452699499999994', 1, 18, 'مويلح التجارى', 1),
(2136, 'الإمارات', 'دبي', 'الحي المغربي ', '25.2275804', '55.175012100000004', 1, 17, 'الحي المغربي ', 1),
(2137, 'مصر', 'الإسكندرية', 'العين السخنه', '0', '0', 3, 38, 'العين السخنه', 1),
(2138, 'السعودية', 'الطائف', 'عودة', '21.2405395', '40.395585900000015', 2, 71, 'عودة', 1),
(2139, 'مصر', 'القاهرة', 'دار السلام ', '29.9895151', '31.254052300000012', 3, 37, 'دار السلام ', 1),
(2140, 'مصر', 'الإسكندرية', 'المنشيه', '31.2000924', '29.91873869999995', 3, 38, 'المنشيه', 1),
(2141, 'قطر', 'الدوحة', 'النعيم', '25.3059184', '51.496308399999975', 140, 141, 'النعيم', 1),
(2142, 'مصر', 'القاهرة', 'العباسبة', '30.0650259', '31.271430799999962', 3, 37, 'العباسبة', 1),
(2143, 'السعودية', 'الطائف', 'السحيلي ', '21.4372729', '40.512714200000005', 2, 71, 'السحيلي ', 1),
(2144, 'الاردن', 'اربد', 'الحي الشرقي ', '32.5454418', '35.85715319999997', 131, 135, 'الحي الشرقي ', 1),
(2145, 'السودان', 'الخرطوم', 'قاردن سيتي', '15.6111222', '32.564847999999984', 235, 236, 'قاردن سيتي', 1),
(2146, 'تونس', 'تونس العاصمة', 'حي الواحات', '33.886917', '9.537499000000025', 80, 85, 'حي الواحات', 1),
(2147, 'الكويت', 'الكويت العاصمة', 'اشبيليا', '29.2728333', '47.93913710000004', 95, 106, 'اشبيليا', 1),
(2148, 'الكويت', 'الفروانية ', 'عبدالله مبارك', '29.2404657', '47.90450929999997', 95, 277, 'عبدالله مبارك', 1),
(2149, 'مصر', 'القاهرة', 'حمامات القبة', '30.0996202', '31.309868800000004', 3, 37, 'حمامات القبة', 1),
(2150, 'السعودية', 'الطائف', 'نخب', '21.2648817', '40.43889969999998', 2, 71, 'نخب', 1),
(2151, 'مصر', 'اسيوط', 'ارض المعلمين القديمة ', '30.1368097', '31.321016699999973', 3, 45, 'ارض المعلمين القديمة ', 1),
(2152, 'السودان', 'الخرطوم', 'الخرطوم - امدرمان - بحري', '15.5006544', '32.55989939999995', 235, 236, 'الخرطوم - امدرمان - بحري', 1),
(2153, 'مصر', 'الإسكندرية', 'الهرم', '29.9803831', '31.14027020000003', 3, 38, 'الهرم', 1),
(2154, 'الاردن', 'اربد', 'اربد', '32.5454418', '35.85715319999997', 131, 135, 'اربد', 1),
(2155, 'مصر', 'طنطا', 'اول ', '30.0908466', '31.28823979999993', 3, 47, 'اول ', 1),
(2156, 'مصر', 'القاهرة', 'بيفرلى هيلز', '30.0624144', '30.937335800000028', 3, 37, 'بيفرلى هيلز', 1),
(2157, 'مصر', 'الإسكندرية', 'محطة مصر', '31.231271', '29.96819430000005', 3, 38, 'محطة مصر', 1),
(2158, 'مصر', 'طنطا', 'ثان', '31.2631756', '32.31206169999996', 3, 47, 'ثان', 1),
(2159, 'قطر', 'الدوحة', 'طريق سلوى قريب دوار المدماك', '25.2854473', '51.53103979999992', 140, 141, 'طريق سلوى قريب دوار المدماك', 1),
(2160, 'الاردن', 'عمّان', 'شفابدران', '0', '0', 131, 132, 'شفابدران', 1),
(2161, 'الإمارات', 'ابو ظبي', 'أبوظبي', '24.4983881', '54.379654200000004', 1, 14, 'أبوظبي', 1),
(2162, 'مصر', 'المحلة الكبرى', 'ش القوتلي', '30.9780025', '31.171343699999966', 3, 43, 'ش القوتلي', 1),
(2163, 'مصر', 'القاهرة', 'مدينة بدر', '30.1343541', '31.75374039999997', 3, 37, 'مدينة بدر', 1),
(2164, 'السودان', 'الخرطوم', 'الخرطوم 3', '15.5870698', '32.52737400000001', 235, 236, 'الخرطوم 3', 1),
(2165, 'مصر', 'المنصورة', 'حى الجامعة', '31.0334998', '31.35559269999999', 3, 46, 'حى الجامعة', 1),
(2166, 'مصر', 'القاهرة', 'النزهه', '30.1020351', '31.33986679999998', 3, 37, 'النزهه', 1),
(2167, 'السعودية', 'جدة', 'الوزيريه', '21.4408376', '39.23235490000002', 2, 13, 'الوزيريه', 1),
(2168, 'مصر', 'اسيوط', 'المجذوب', '27.1783117', '31.185925699999984', 3, 45, 'المجذوب', 1),
(2169, 'السعودية', 'الطائف', 'شارع الامير متعب ', '21.4372729', '40.512714200000005', 2, 71, 'شارع الامير متعب ', 1),
(2170, 'السعودية', 'الطائف', 'الروضه', '25.2270027', '45.245101100000056', 2, 71, 'الروضه', 1),
(2171, 'مصر', 'القاهرة', 'السيدة زينب', '30.028926', '31.242605700000013', 3, 37, 'السيدة زينب', 1),
(2172, 'السودان', 'الخرطوم', 'كافوري 8 غربي', '15.6337597', '32.5796924', 235, 236, 'كافوري 8 غربي', 1),
(2173, 'الإمارات', 'دبي', 'المرابع العربية ', '25.0523684', '55.267360199999985', 1, 17, 'المرابع العربية ', 1),
(2174, 'الإمارات', 'دبي', 'الحي الفرنسى ', '25.2275804', '55.175012100000004', 1, 17, 'الحي الفرنسى ', 1),
(2175, 'العراق', 'اربيل', 'كولان ستي', '36.2134777', '43.99143070000002', 218, 226, 'كولان ستي', 1),
(2176, 'عمان', 'مسقط', 'الخوض ', '23.6283501', '58.194987500000025', 180, 181, 'الخوض ', 1),
(2177, 'مصر', 'طنطا', 'المعاهدة', '30.8517258', '32.31071080000004', 3, 47, 'المعاهدة', 1),
(2178, 'مصر', 'اسيوط', 'تفرعات يسري راغب ', '27.1783117', '31.185925699999984', 3, 45, 'تفرعات يسري راغب ', 1),
(2179, 'مصر', 'المنصورة', 'الزعفران', '30.0569531', '31.259270499999957', 3, 46, 'الزعفران', 1),
(2180, 'الاردن', 'عمّان', 'جبل الحسين قرب مستشفى اﻻمل ومستشفى اﻻستقﻻل', '0', '0', 131, 132, 'جبل الحسين قرب مستشفى اﻻمل ومستشفى اﻻستقﻻل', 1),
(2181, 'مصر', 'الإسكندرية', 'الساحل الشمالي سيدي عبد الرحمن', '31.2221035', '29.97558300000003', 3, 38, 'الساحل الشمالي سيدي عبد الرحمن', 1),
(2182, 'مصر', 'الإسكندرية', 'الساحل الشمالى - سى اندسى', '0', '0', 3, 38, 'الساحل الشمالى - سى اندسى', 1),
(2183, 'الاردن', 'العقبة', 'العقبه ', '29.5319199', '35.00608420000003', 131, 136, 'العقبه ', 1),
(2184, 'مصر', 'السويس', 'عيون موسي', '31.1783589', '29.907130800000004', 3, 42, 'عيون موسي', 1),
(2185, 'مصر', 'الإسكندرية', 'سيدي بشر بحري', '31.26708559999999', '29.99284149999994', 3, 38, 'سيدي بشر بحري', 1),
(2186, 'مصر', 'الإسكندرية', 'قرية جيفيرا باى فى الساحل الشمالى', '0', '0', 3, 38, 'قرية جيفيرا باى فى الساحل الشمالى', 1),
(2187, 'الكويت', 'الكويت العاصمة', 'شرق', '29.3823227', '47.98864419999995', 95, 106, 'شرق', 1),
(2188, 'مصر', 'المحلة الكبرى', 'المحلة الكبرى', '30.9781287', '31.16244800000004', 3, 43, 'المحلة الكبرى', 1),
(2189, 'الإمارات', 'الشارقة', 'المصلى', '25.3674421', '55.39534379999998', 1, 18, 'المصلى', 1),
(2190, 'الكويت', 'الكويت العاصمة', 'القصور', '0', '0', 95, 106, 'القصور', 1),
(2191, 'الإمارات', 'الشارقة', 'التعاون ', '25.3063711', '55.37104610000006', 1, 18, 'التعاون ', 1),
(2192, 'مصر', 'الإسكندرية', 'مطروح-سى اند سى', '0', '0', 3, 38, 'مطروح-سى اند سى', 1),
(2193, 'الكويت', 'الاحمدي', 'ابوفطيرة', '29.1973723', '48.10268410000003', 95, 108, 'ابوفطيرة', 1),
(2194, 'الاردن', 'عمّان', 'خلف سيفوي الشميساني ', '0', '0', 131, 132, 'خلف سيفوي الشميساني ', 1),
(2195, 'لبنان', 'جبل لبنان', 'بحمدون ', '33.8088597', '35.65992670000003', 165, 258, 'بحمدون ', 1),
(2196, 'السودان', 'الخرطوم', 'حي الشاطئ ', '15.2304995', '33.07714269999997', 235, 236, 'حي الشاطئ ', 1),
(2197, 'الاردن', 'عمّان', 'المنارة ', '31.9433236', '35.95884419999993', 131, 132, 'المنارة ', 1),
(2198, 'مصر', 'السويس', 'اوليمبيا ريزورت', '29.9668343', '32.54980690000002', 3, 42, 'اوليمبيا ريزورت', 1),
(2199, 'الاردن', 'عمّان', 'خلدا الحمارية ', '0', '0', 131, 132, 'خلدا الحمارية ', 1),
(2200, 'السعودية', 'الطائف', 'العرفاء ', '21.5103719', '40.58675310000001', 2, 71, 'العرفاء ', 1),
(2201, 'قطر', 'الدوحة', 'الناصرية', '25.2854473', '51.53103979999992', 140, 141, 'الناصرية', 1),
(2202, 'قطر', 'الدوحة', 'المرة الغربية', '25.2854473', '51.53103979999992', 140, 141, 'المرة الغربية', 1),
(2203, 'الإمارات', 'الشارقة', 'الغوير', '25.3674421', '55.39534379999998', 1, 18, 'الغوير', 1),
(2204, 'مصر', 'اسيوط', 'ثاني اسيوط', '27.1783117', '31.185925699999984', 3, 45, 'ثاني اسيوط', 1),
(2205, 'الإمارات', 'ابو ظبي', 'مدينة زايد', '24.4983881', '54.379654200000004', 1, 14, 'مدينة زايد', 1),
(2206, 'الاردن', 'عمّان', 'خلف فندق الريجنسي  ', '0', '0', 131, 132, 'خلف فندق الريجنسي  ', 1),
(2207, 'السعودية', 'جازان', 'جازان', '16.8893586', '42.57056740000007', 2, 207, 'جازان', 1),
(2208, 'مصر', 'السويس', 'جنوب سيناء - راس سدر', '29.8340176', '32.62628319999999', 3, 42, 'جنوب سيناء - راس سدر', 1),
(2209, 'العراق', 'اربيل', 'عينكاوة', '36.1957968', '44.004225099999985', 218, 226, 'عينكاوة', 1),
(2210, 'قطر', 'الدوحة', 'خليفه الجنوبيه', '25.3223367', '51.47697819999996', 140, 141, 'خليفه الجنوبيه', 1),
(2211, 'مصر', 'الإسكندرية', 'مرسي مرطوح', '31.1404918', '29.83017749999999', 3, 38, 'مرسي مرطوح', 1),
(2212, 'مصر', 'طنطا', 'حافظ وهبى', '30.7815746', '30.991990299999998', 3, 47, 'حافظ وهبى', 1),
(2213, 'مصر', 'القاهرة', 'العين السخنه - السويس', '29.8712304', '31.85453510000002', 3, 37, 'العين السخنه - السويس', 1),
(2214, 'الاردن', 'عمّان', 'جبل النزهة', '0', '0', 131, 132, 'جبل النزهة', 1),
(2215, 'مصر', 'طنطا', 'المأمون', '30.78776449999999', '30.99129659999994', 3, 47, 'المأمون', 1),
(2216, 'مصر', 'السويس', 'ياسمينا ريزورت- راس سدر', '29.9668343', '32.54980690000002', 3, 42, 'ياسمينا ريزورت- راس سدر', 1),
(2217, 'الكويت', 'الكويت العاصمة', 'العمرية', '29.29758649999999', '47.95398439999997', 95, 106, 'العمرية', 1),
(2218, 'قطر', 'الدوحة', 'فريج كليب - بن عمران', '25.3025439', '51.497745099999975', 140, 141, 'فريج كليب - بن عمران', 1),
(2219, 'الإمارات', 'ابو ظبي', 'خالدية ', '24.4983881', '54.379654200000004', 1, 14, 'خالدية ', 1),
(2220, 'الإمارات', 'العين', 'الكويتات', '0', '0', 1, 299, 'الكويتات', 1),
(2221, 'مصر', 'السويس', 'ياسمينا ريزورت – راس سدر', '29.9668343', '32.54980690000002', 3, 42, 'ياسمينا ريزورت – راس سدر', 1),
(2222, 'لبنان', 'بيروت', 'مريجة نزلة حي السلم مقابل صيدلية منعم', '33.8886289', '35.49547940000002', 165, 166, 'مريجة نزلة حي السلم مقابل صيدلية منعم', 1),
(2223, 'الإمارات', 'دبي', '-', '25.2275804', '55.175012100000004', 1, 17, '-', 1),
(2224, 'الاردن', 'عمّان', 'ضاحية الاقصى', '0', '0', 131, 132, 'ضاحية الاقصى', 1),
(2225, 'الاردن', 'الزرقاء', 'البتراوي الجنوبي', '31.7515118', '36.86807909999993', 131, 133, 'البتراوي الجنوبي', 1),
(2226, 'قطر', 'الدوحة', 'ام  قرن', '25.2690322', '51.531566500000054', 140, 141, 'ام  قرن', 1),
(2227, 'قطر', 'الوكرة', 'طريق ميسعيد', '25.0313129', '51.56411589999993', 140, 144, 'طريق ميسعيد', 1),
(2228, 'السعودية', 'الرياض', 'العزيزية', '24.5926822', '46.75752209999996', 2, 12, 'العزيزية', 1),
(2229, 'السعودية', 'الطائف', 'شارع خالد بن الوليد', '30.5979015', '31.474127199999998', 2, 71, 'شارع خالد بن الوليد', 1),
(2230, 'السعودية', 'الطائف', 'وادي وج', '21.2655278', '40.40736879999997', 2, 71, 'وادي وج', 1),
(2231, 'الإمارات', 'الشارقة', 'الممزر ', '25.3182034', '55.33785309999996', 1, 18, 'الممزر ', 1),
(2232, 'السعودية', 'جدة', 'بن لادن', '21.4741672', '39.26168400000006', 2, 13, 'بن لادن', 1),
(2233, 'الاردن', 'عمّان', 'مناطق مادبا ', '31.71954', '35.794108999999935', 131, 132, 'مناطق مادبا ', 1),
(2234, 'مصر', 'الفيوم', 'طاميا', '29.4779861', '30.961644999999976', 3, 48, 'طاميا', 1),
(2235, 'مصر', 'السويس', 'الوادي', '30.1197316', '31.317040099999986', 3, 42, 'الوادي', 1),
(2236, 'السعودية', 'الطائف', 'كوبري الصيانه', '21.4372729', '40.512714200000005', 2, 71, 'كوبري الصيانه', 1),
(2237, 'مصر', 'اسيوط', 'اسيوط (الهلالي)', '27.1819281', '31.191525299999967', 3, 45, 'اسيوط (الهلالي)', 1),
(2238, 'مصر', 'القاهرة', 'راس صدر', '30.0484248', '31.252307100000053', 3, 37, 'راس صدر', 1),
(2239, 'الإمارات', 'دبي', 'الحي اليوناني ', '25.2275804', '55.175012100000004', 1, 17, 'الحي اليوناني ', 1),
(2240, 'الكويت', 'الكويت العاصمة', 'جمهوريه مصر العربيه', '0', '0', 95, 106, 'جمهوريه مصر العربيه', 1),
(2241, 'الكويت', 'الكويت العاصمة', 'القادسية', '29.3499618', '48.00350530000003', 95, 106, 'القادسية', 1),
(2242, 'الكويت', 'حولي', 'بيان', '29.2979895', '48.05108710000002', 95, 276, 'بيان', 1),
(2243, 'السودان', 'الخرطوم', 'كافوري 8', '15.6337597', '32.5796924', 235, 236, 'كافوري 8', 1),
(2244, 'الإمارات', 'عجمان', 'الزهراء', '0', '0', 1, 60, 'الزهراء', 1),
(2245, 'مصر', 'القاهرة', 'مدينه الشروق', '30.1442115', '31.639718399999992', 3, 37, 'مدينه الشروق', 1),
(2246, 'عمان', 'مسقط', 'العديبه ', '23.6012981', '58.357251399999996', 180, 181, 'العديبه ', 1),
(2247, 'عمان', 'مسقط', 'الموالح ', '23.6042885', '58.229166299999974', 180, 181, 'الموالح ', 1),
(2248, 'العراق', 'اربيل', 'مجمع كنجان ستي ', '0', '0', 218, 226, 'مجمع كنجان ستي ', 1),
(2249, 'عمان', 'مسقط', 'المعيبله ', '23.6055626', '58.09843990000002', 180, 181, 'المعيبله ', 1),
(2250, 'السعودية', 'مكّة المكرمة', 'جرول', '21.4305207', '39.820608600000014', 2, 15, 'جرول', 1),
(2251, 'السعودية', 'جدة', 'ابحر الشماليه', '21.7441577', '39.107529200000045', 2, 13, 'ابحر الشماليه', 1),
(2252, 'قطر', 'الدوحة', 'معيزرالجنوبى', '25.2854473', '51.53103979999992', 140, 141, 'معيزرالجنوبى', 1),
(2253, 'الكويت', 'الفروانية ', 'الفروانيه', '29.281596', '47.960251799999924', 95, 277, 'الفروانيه', 1),
(2254, 'مصر', 'السويس', 'السلام 1 - السويس ', '29.9951305', '32.48351930000001', 3, 42, 'السلام 1 - السويس ', 1),
(2255, 'الكويت', 'الكويت العاصمة', 'الروضة', '29.3290126', '47.99855119999995', 95, 106, 'الروضة', 1),
(2256, 'مصر', 'السويس', 'ياسمينا ريزورت  - راس سدر', '29.9668343', '32.54980690000002', 3, 42, 'ياسمينا ريزورت  - راس سدر', 1),
(2257, 'الاردن', 'عمّان', 'خلف سوق السلطان ', '31.1950691', '29.919471199999975', 131, 132, 'خلف سوق السلطان ', 1),
(2258, 'السودان', 'الخرطوم', 'الديم', '15.6027497', '32.50306169999999', 235, 236, 'الديم', 1),
(2259, 'السودان', 'الخرطوم', 'سوبا شرق', '15.504928', '32.68989859999999', 235, 236, 'سوبا شرق', 1),
(2260, 'العراق', 'اربيل', 'اوزال ستي', '0', '0', 218, 226, 'اوزال ستي', 1),
(2261, 'مصر', 'اسيوط', 'اسيوط( النميس)', '27.1839068', '31.18632989999992', 3, 45, 'اسيوط( النميس)', 1),
(2262, 'مصر', 'طنطا', 'امتداد النادي', '30.7961269', '30.994773200000054', 3, 47, 'امتداد النادي', 1),
(2263, 'قطر', 'الدوحة', 'المرة الشرقية', '25.2854473', '51.53103979999992', 140, 141, 'المرة الشرقية', 1),
(2264, 'الكويت', 'الاحمدي', 'هدية', '29.1458815', '48.092758', 95, 108, 'هدية', 1),
(2265, 'الاردن', 'عمّان', ' التلاع  الشمالي ', '0', '0', 131, 132, ' التلاع  الشمالي ', 1),
(2266, 'الكويت', 'الكويت العاصمة', 'قرطبة ', '29.3123481', '47.986167799999976', 95, 106, 'قرطبة ', 1),
(2267, 'مصر', 'الإسكندرية', 'سى اند سى – الساحل الشمالى', '0', '0', 3, 38, 'سى اند سى – الساحل الشمالى', 1),
(2268, 'قطر', 'الدوحة', 'النعيجه', '25.2467', '51.533407799999964', 140, 141, 'النعيجه', 1),
(2269, 'قطر', 'الدوحة', 'معيذر - الشارع التجاري', '25.2854473', '51.53103979999992', 140, 141, 'معيذر - الشارع التجاري', 1),
(2270, 'مصر', 'الإسكندرية', 'سى اند سى ريزورت – الساحل الشمالى ', '0', '0', 3, 38, 'سى اند سى ريزورت – الساحل الشمالى ', 1),
(2271, 'السودان', 'الخرطوم', 'الطايف ', '15.5677832', '32.5740376', 235, 236, 'الطايف ', 1),
(2272, 'مصر', 'القاهرة', 'منطقة العبور', '30.2283408', '31.47989480000001', 3, 37, 'منطقة العبور', 1),
(2273, 'مصر', 'القاهرة', 'مرسي مطروح', '30.1193284', '31.30044040000007', 3, 37, 'مرسي مطروح', 1),
(2274, 'مصر', 'طنطا', 'شارع الحكمه', '30.7717662', '30.99228930000004', 3, 47, 'شارع الحكمه', 1),
(2275, 'قطر', 'الدوحة', 'روضة راشد', '25.2854473', '51.53103979999992', 140, 141, 'روضة راشد', 1),
(2276, 'العراق', 'اربيل', 'لاوان ستي', '0', '0', 218, 226, 'لاوان ستي', 1),
(2277, 'الكويت', 'حولي', 'غرب مشرف', '29.2761034', '48.065470600000026', 95, 276, 'غرب مشرف', 1),
(2278, 'السعودية', 'الرياض', 'وسط الرياض', '22.7554385', '46.2091547', 2, 12, 'وسط الرياض', 1),
(2279, 'مصر', 'السويس', 'روزا ريزورت  - راس سدر  ', '29.9668343', '32.54980690000002', 3, 42, 'روزا ريزورت  - راس سدر  ', 1),
(2280, 'مصر', 'القاهرة', 'راس سدر - جنوب سيناء', '30.1022452', '31.277320799999984', 3, 37, 'راس سدر - جنوب سيناء', 1),
(2281, 'السودان', 'الخرطوم', 'سوبا الحله', '15.5042173', '32.647525599999994', 235, 236, 'سوبا الحله', 1),
(2282, 'مصر', 'اسيوط', 'اول شارع عزت جلال', '27.1798893', '31.19655769999997', 3, 45, 'اول شارع عزت جلال', 1),
(2283, 'مصر', 'الإسكندرية', 'سيدى بشر الفضالى بجوار ش القاهرة ', '31.2687428', '29.997839800000065', 3, 38, 'سيدى بشر الفضالى بجوار ش القاهرة ', 1),
(2284, 'مصر', 'الإسكندرية', 'اسيوط', '31.2109646', '29.928932300000042', 3, 38, 'اسيوط', 1),
(2285, 'السعودية', 'المدينة المنوّرة', 'المليليح', '24.7929802', '39.18557409999994', 2, 22, 'المليليح', 1),
(2286, 'الإمارات', 'ابو ظبي', 'مدبنه محمد بن زايد', '24.4952193', '54.37031730000001', 1, 14, 'مدبنه محمد بن زايد', 1),
(2287, 'الإمارات', 'العين', 'البصرة', '0', '0', 1, 299, 'البصرة', 1),
(2288, 'الكويت', 'الكويت العاصمة', 'سعد العبداللة', '29.3430429', '47.96315290000007', 95, 106, 'سعد العبداللة', 1),
(2289, 'الكويت', 'الاحمدي', 'بوفطيرة', '29.1973723', '48.10268410000003', 95, 108, 'بوفطيرة', 1),
(2290, 'الاردن', 'عمّان', 'بدرالجديدة ', '31.18613119999999', '29.908147900000017', 131, 132, 'بدرالجديدة ', 1),
(2291, 'الكويت', 'الاحمدي', 'المهبوله', '29.1496559', '48.119198600000004', 95, 108, 'المهبوله', 1),
(2292, 'مصر', 'القاهرة', 'الهانوفيل', '31.09645209999999', '29.77161460000002', 3, 37, 'الهانوفيل', 1),
(2293, 'مصر', 'المنصورة', 'عبدالسلام عارف', '31.0343902', '31.386877599999934', 3, 46, 'عبدالسلام عارف', 1),
(2294, 'مصر', 'القاهرة', 'هليوبوليس الجديدة', '30.1244901', '31.689741700000013', 3, 37, 'هليوبوليس الجديدة', 1),
(2295, 'الإمارات', 'دبي', 'الحوشي', '25.2275804', '55.175012100000004', 1, 17, 'الحوشي', 1),
(2296, 'السعودية', 'المدينة المنوّرة', 'القثمي', '0', '0', 2, 22, 'القثمي', 1),
(2297, 'السعودية', 'جدة', 'ثول ', '21.4514865', '39.19990580000001', 2, 13, 'ثول ', 1),
(2298, 'الإمارات', 'دبي', 'منطقة المرابع العربية', '25.0523684', '55.267360199999985', 1, 17, 'منطقة المرابع العربية', 1),
(2299, 'الإمارات', 'الشارقة', 'المجرة', '25.3674421', '55.39534379999998', 1, 18, 'المجرة', 1),
(2300, 'الإمارات', 'العين', 'الشعيبه', '0', '0', 1, 299, 'الشعيبه', 1),
(2301, 'تونس', 'تونس العاصمة', 'الحمامات', '30.0446701', '31.259784099999933', 80, 85, 'الحمامات', 1),
(2302, 'السعودية', 'جدة', 'النسيم', '21.5203359', '39.23235490000002', 2, 13, 'النسيم', 1),
(2303, 'مصر', 'الإسكندرية', 'وادى النطرون', '31.1780764', '29.90299010000001', 3, 38, 'وادى النطرون', 1),
(2304, 'مصر', 'القاهرة', 'القادسيه', '31.2351967', '29.98739660000001', 3, 37, 'القادسيه', 1),
(2305, 'مصر', 'اسيوط', 'المعلمين الجديده شارع الخمسين', '27.1783117', '31.185925699999984', 3, 45, 'المعلمين الجديده شارع الخمسين', 1),
(2306, 'مصر', 'المنصورة', 'جديلة', '31.060604', '31.40954499999998', 3, 46, 'جديلة', 1),
(2307, 'الكويت', 'الفروانية ', 'الفردوس', '29.2861217', '47.87484619999998', 95, 277, 'الفردوس', 1),
(2308, 'الإمارات', 'دبي', 'دبى لاند', '25.2391038', '55.29782190000003', 1, 17, 'دبى لاند', 1),
(2309, 'مصر', 'اسيوط', 'اسيوط (قلته)', '27.1783117', '31.185925699999984', 3, 45, 'اسيوط (قلته)', 1),
(2310, 'العراق', 'اربيل', 'أشتي سيتي 2', '36.18174', '44.12993430000006', 218, 226, 'أشتي سيتي 2', 1),
(2311, 'مصر', 'طنطا', 'شارع المتوكل', '30.8002017', '31.001291300000048', 3, 47, 'شارع المتوكل', 1),
(2312, 'السودان', 'الخرطوم', 'حي الصفاء', '15.6464817', '32.63481019999995', 235, 236, 'حي الصفاء', 1),
(2313, 'السعودية', 'الطائف', 'الشطبه', '21.2548851', '40.42091540000001', 2, 71, 'الشطبه', 1),
(2314, 'مصر', 'اسيوط', 'النميس الرئيسي', '27.1843163', '31.186785900000018', 3, 45, 'النميس الرئيسي', 1),
(2315, 'السودان', 'ام درمان', 'الرياض', '15.6896237', '32.4990828', 235, 238, 'الرياض', 1),
(2316, 'الإمارات', 'ابو ظبي', 'مدينه محمد بن زايد حوض2بالقرب من مدرسه الامارات', '0', '0', 1, 14, 'مدينه محمد بن زايد حوض2بالقرب من مدرسه الامارات', 1),
(2317, 'مصر', 'طنطا', 'ترعة الشيتي', '0', '0', 3, 47, 'ترعة الشيتي', 1),
(2318, 'مصر', 'اسيوط', 'تفرعات النميس والهلالي', '27.1783117', '31.185925699999984', 3, 45, 'تفرعات النميس والهلالي', 1),
(2319, 'مصر', 'طنطا', 'منطقه السريع', '30.59807139999999', '32.266987900000004', 3, 47, 'منطقه السريع', 1),
(2320, 'مصر', 'طنطا', 'متفرع من النحاس', '31.5544856', '31.090498600000046', 3, 47, 'متفرع من النحاس', 1),
(2321, 'مصر', 'طنطا', 'شارع صدقي', '30.792805', '31.004075000000057', 3, 47, 'شارع صدقي', 1),
(2322, 'مصر', 'اسيوط', 'أسيوط الجديدة', '27.1902306', '31.22236220000002', 3, 45, 'أسيوط الجديدة', 1),
(2323, 'مصر', 'اسيوط', 'شارع ثابت ', '27.1797898', '31.184357800000043', 3, 45, 'شارع ثابت ', 1),
(2324, 'مصر', 'طنطا', 'شارع الفاتح', '30.7928045', '30.989938199999983', 3, 47, 'شارع الفاتح', 1),
(2325, 'مصر', 'القاهرة', 'طريق مصر الفيوم ', '29.3184635', '30.84604420000005', 3, 37, 'طريق مصر الفيوم ', 1),
(2326, 'مصر', 'اسيوط', 'التمليك البحري بالاربعين ', '27.1783117', '31.185925699999984', 3, 45, 'التمليك البحري بالاربعين ', 1),
(2327, 'العراق', 'اربيل', 'اشتي 2', '36.18174', '44.12993430000006', 218, 226, 'اشتي 2', 1),
(2328, 'مصر', 'القاهرة', 'قصر النيل', '30.0477057', '31.235450899999933', 3, 37, 'قصر النيل', 1),
(2329, 'مصر', 'طنطا', 'شارع يوسف الصديق', '30.7106627', '31.235167400000023', 3, 47, 'شارع يوسف الصديق', 1),
(2330, 'المغرب', 'مراكش', 'gueliez', '31.6336545', '-8.008898999999928', 51, 211, 'gueliez', 1),
(2331, 'الإمارات', 'عجمان', 'النعيمية', '0', '0', 1, 60, 'النعيمية', 1),
(2332, 'الاردن', 'عمّان', 'عرجان قرب دوار الداخلية ', '0', '0', 131, 132, 'عرجان قرب دوار الداخلية ', 1),
(2333, 'مصر', 'اسيوط', 'كوك دور', '29.9886678', '31.26431290000005', 3, 45, 'كوك دور', 1),
(2334, 'مصر', 'طنطا', 'شارع النحاس', '31.5544856', '31.090498600000046', 3, 47, 'شارع النحاس', 1),
(2335, 'السعودية', 'المدينة المنوّرة', 'القثمى ', '0', '0', 2, 22, 'القثمى ', 1),
(2336, 'الكويت', 'الكويت العاصمة', 'عجمان', '25.4052165', '55.51364330000001', 95, 106, 'عجمان', 1),
(2337, 'الكويت', 'حولي', 'صباح السالم ', '29.2565637', '48.06260499999996', 95, 276, 'صباح السالم ', 1),
(2338, 'مصر', 'اسيوط', 'جسر السويس', '30.1297043', '31.351085900000044', 3, 45, 'جسر السويس', 1),
(2339, 'مصر', 'طنطا', 'شارع البندارى', '30.0263342', '31.186856799999987', 3, 47, 'شارع البندارى', 1),
(2340, 'السعودية', 'الطائف', 'الطحلاوي', '21.2720941', '40.451037900000074', 2, 71, 'الطحلاوي', 1),
(2341, 'قطر', 'الدوحة', 'ام الافاعى', '25.2854473', '51.53103979999992', 140, 141, 'ام الافاعى', 1),
(2342, 'الإمارات', 'ابو ظبي', 'شارع دلما ', '0', '0', 1, 14, 'شارع دلما ', 1),
(2343, 'الاردن', 'عمّان', 'جبل الحسين قرب مستشفى اﻻمل واﻻستقﻻل', '0', '0', 131, 132, 'جبل الحسين قرب مستشفى اﻻمل واﻻستقﻻل', 1),
(2344, 'الإمارات', 'دبي', 'الحي الفرنسي ', '25.2275804', '55.175012100000004', 1, 17, 'الحي الفرنسي ', 1),
(2345, 'السودان', 'الخرطوم', 'المنشية ', '15.593633', '32.58110609999994', 235, 236, 'المنشية ', 1),
(2346, 'الاردن', 'عمّان', 'طريق الرمثا-جابر الدولي', '0', '0', 131, 132, 'طريق الرمثا-جابر الدولي', 1),
(2347, 'السعودية', 'الرياض', 'أول طريق الدمام', '26.341247', '50.14935259999993', 2, 12, 'أول طريق الدمام', 1),
(2348, 'الإمارات', 'الشارقة', 'المليحة', '25.2675928', '55.48949319999997', 1, 18, 'المليحة', 1),
(2349, 'السعودية', 'الطائف', 'السيل الصغير ', '21.5', '40.47999989999994', 2, 71, 'السيل الصغير ', 1),
(2350, 'السعودية', 'الرياض', 'جنوب الرياض ', '24.6248867', '46.816203299999984', 2, 12, 'جنوب الرياض ', 1),
(2351, 'مصر', 'اسيوط', 'مستشفى القدس', '29.9841819', '31.18983060000005', 3, 45, 'مستشفى القدس', 1),
(2352, 'فلسطين', 'غزة', 'تل الهوا', '0', '0', 228, 231, 'تل الهوا', 1),
(2353, 'مصر', 'اسيوط', 'تفرعات محمود رشوان', '27.1783117', '31.185925699999984', 3, 45, 'تفرعات محمود رشوان', 1),
(2354, 'مصر', 'اسيوط', 'درنكة', '27.1239407', '31.188218900000038', 3, 45, 'درنكة', 1),
(2355, 'الإمارات', 'العين', 'اليحر الشمالي', '0', '0', 1, 299, 'اليحر الشمالي', 1),
(2356, 'المغرب', 'مراكش', 'مراكش', '31.6294723', '-7.981084499999952', 51, 211, 'مراكش', 1),
(2357, 'مصر', 'اسيوط', 'الوادى الاسيوطى', '30.0832458', '31.333438099999967', 3, 45, 'الوادى الاسيوطى', 1),
(2358, 'الاردن', 'عمّان', 'ضاحية الأمير راشد', '0', '0', 131, 132, 'ضاحية الأمير راشد', 1),
(2359, 'مصر', 'اسيوط', 'سينما ريسانس', '27.1783117', '31.185925699999984', 3, 45, 'سينما ريسانس', 1),
(2360, 'الإمارات', 'العين', 'المرخانيه', '24.1851183', '55.70644770000001', 1, 299, 'المرخانيه', 1),
(2361, 'السعودية', 'جدة', 'الشفاء', '21.6044728', '39.16476839999996', 2, 13, 'الشفاء', 1),
(2362, 'الاردن', 'عمّان', 'ضاحية الامام الغزالي خلف سيفوي الجبيبهه', '0', '0', 131, 132, 'ضاحية الامام الغزالي خلف سيفوي الجبيبهه', 1),
(2363, 'الإمارات', 'العين', 'المسعودى', '24.3240856', '55.800020899999936', 1, 299, 'المسعودى', 1),
(2364, 'السودان', 'الخرطوم', 'شمال القطينة', '15.5006544', '32.55989939999995', 235, 236, 'شمال القطينة', 1),
(2365, 'الإمارات', 'الشارقة', 'الجزات ', '25.3767711', '55.44309350000003', 1, 18, 'الجزات ', 1),
(2366, 'قطر', 'الدوحة', 'شعبيات خليفه', '25.2854473', '51.53103979999992', 140, 141, 'شعبيات خليفه', 1),
(2367, 'مصر', 'المحلة الكبرى', 'المنشيه الجديده', '30.9163541', '31.167780600000015', 3, 43, 'المنشيه الجديده', 1),
(2368, 'مصر', 'اسيوط', 'التمليك القبلى', '27.1783117', '31.185925699999984', 3, 45, 'التمليك القبلى', 1),
(2369, 'مصر', 'اسيوط', 'حى السادات', '30.1451069', '31.327648100000033', 3, 45, 'حى السادات', 1),
(2370, 'قطر', 'الوكرة', 'الشارع الرئيسى بالوكرة ', '25.1669089', '51.607692499999985', 140, 144, 'الشارع الرئيسى بالوكرة ', 1),
(2371, 'مصر', 'اسيوط', 'أسيوط الجديده', '27.1902306', '31.22236220000002', 3, 45, 'أسيوط الجديده', 1),
(2372, 'السودان', 'الخرطوم', 'حطاب', '29.980182', '31.145842000000016', 235, 236, 'حطاب', 1),
(2373, 'السعودية', 'مكّة المكرمة', 'ريع ذاخر', '21.4479897', '39.83800859999997', 2, 15, 'ريع ذاخر', 1),
(2374, 'السعودية', 'جدة', 'خليج سليمان', '30.1287025', '31.25675530000001', 2, 13, 'خليج سليمان', 1),
(2375, 'السعودية', 'جدة', 'خليج سلمان', '30.1287025', '31.25675530000001', 2, 13, 'خليج سلمان', 1),
(2376, 'مصر', 'اسيوط', 'شارع المحافظة الرئيسي', '27.1888844', '31.1894681', 3, 45, 'شارع المحافظة الرئيسي', 1),
(2377, 'قطر', 'الدوحة', 'شارع النصر', '25.2671874', '51.49881700000003', 140, 141, 'شارع النصر', 1),
(2378, 'قطر', 'الدوحة', 'مدينة خليفه', '25.3222888', '51.478222800000026', 140, 141, 'مدينة خليفه', 1),
(2379, 'مصر', 'اسيوط', 'الاسكندرية', '31.2109646', '29.928932300000042', 3, 45, 'الاسكندرية', 1),
(2380, 'السعودية', 'الخبر', 'الثنيانية ', '26.3146876', '50.20020539999996', 2, 67, 'الثنيانية ', 1),
(2381, 'قطر', 'الدوحة', 'ام السنيم عين خالد', '25.2336276', '51.47063790000004', 140, 141, 'ام السنيم عين خالد', 1),
(2382, 'المغرب', 'مراكش', 'hivernage', '31.6230844', '-8.015157300000055', 51, 211, 'hivernage', 1),
(2383, 'السعودية', 'جدة', 'الهجرة', '21.4655699', '39.202916800000025', 2, 13, 'الهجرة', 1),
(2384, 'السعودية', 'الدمام', 'القطيف', '26.5723431', '50.005893600000036', 2, 16, 'القطيف', 1),
(2385, 'مصر', 'اسيوط', 'تفرعات شارع رياض ', '27.1783117', '31.185925699999984', 3, 45, 'تفرعات شارع رياض ', 1),
(2386, 'مصر', 'طنطا', 'شارع كفر عصام', '30.78895889999999', '30.99694599999998', 3, 47, 'شارع كفر عصام', 1),
(2387, 'مصر', 'طنطا', 'شارع سعيد الرئيسي', '31.2455894', '32.27730059999999', 3, 47, 'شارع سعيد الرئيسي', 1),
(2388, 'مصر', 'طنطا', 'شارع طه الحكيم', '30.7951791', '30.996145699999943', 3, 47, 'شارع طه الحكيم', 1),
(2389, 'عمان', 'مسقط', 'بركاء', '23.58589', '58.40592270000002', 180, 181, 'بركاء', 1),
(2390, 'السودان', 'الخرطوم', 'الجريف شرق', '15.5836918', '32.60230839999997', 235, 236, 'الجريف شرق', 1),
(2391, 'مصر', 'اسيوط', 'النزلة', '27.0687788', '31.21582520000004', 3, 45, 'النزلة', 1),
(2392, 'الإمارات', 'العين', 'الجيمى مريجب', '0', '0', 1, 299, 'الجيمى مريجب', 1),
(2393, 'السعودية', 'جدة', 'جميع احياء جدة', '21.2854067', '39.23755069999993', 2, 13, 'جميع احياء جدة', 1),
(2394, 'السودان', 'الخرطوم', 'بري', '15.6022892', '32.57545140000002', 235, 236, 'بري', 1),
(2395, 'قطر', 'الدوحة', 'المره الغربيه', '25.2854473', '51.53103979999992', 140, 141, 'المره الغربيه', 1),
(2396, 'مصر', 'القاهرة', 'مدينة العاشر من رمضان', '30.2926655', '31.74234339999998', 3, 37, 'مدينة العاشر من رمضان', 1),
(2397, 'الإمارات', 'ابو ظبي', 'الوحده مول', '0', '0', 1, 14, 'الوحده مول', 1),
(2398, 'السودان', 'الخرطوم', 'توتي', '15.6201852', '32.50615630000004', 235, 236, 'توتي', 1),
(2399, 'الاردن', 'عمّان', 'المقابلين', '0', '0', 131, 132, 'المقابلين', 1),
(2400, 'مصر', 'اسيوط', 'خير زمان', '27.1783117', '31.185925699999984', 3, 45, 'خير زمان', 1),
(2401, 'الاردن', 'الزرقاء', 'الزواهره', '31.7515118', '36.86807909999993', 131, 133, 'الزواهره', 1),
(2402, 'مصر', 'القاهرة', 'القاهره والجيزه ', '30.0444196', '31.23571160000006', 3, 37, 'القاهره والجيزه ', 1),
(2403, 'السعودية', 'الخبر', 'البايونية', '26.2740986', '50.19097290000002', 2, 67, 'البايونية', 1),
(2404, 'قطر', 'الدوحة', 'الدائرى الثالث', '25.2630162', '51.52880700000003', 140, 141, 'الدائرى الثالث', 1),
(2405, 'قطر', 'الدوحة', 'الدائرى الرابع', '25.2544196', '51.52970449999998', 140, 141, 'الدائرى الرابع', 1),
(2406, 'قطر', 'الدوحة', 'ام الدوم', '25.2744025', '51.40774769999996', 140, 141, 'ام الدوم', 1),
(2407, 'الإمارات', 'دبي', 'دبي ورلد سنترال', '24.8977876', '55.14310180000007', 1, 17, 'دبي ورلد سنترال', 1),
(2408, 'اليمن', 'صنعاء', 'حده المدينه', '15.337772', '44.198665300000016', 188, 189, 'حده المدينه', 1),
(2409, 'السودان', 'الخرطوم', 'شارع الستين', '15.5621076', '32.57875979999994', 235, 236, 'شارع الستين', 1),
(2410, 'الإمارات', 'العين', 'المربعه ', '0', '0', 1, 299, 'المربعه ', 1),
(2411, 'الإمارات', 'ابو ظبي', 'مدينة خليفه A', '24.4012042', '54.55228199999999', 1, 14, 'مدينة خليفه A', 1),
(2412, 'مصر', 'اسيوط', 'بين المعلمين والاربعين', '27.1783117', '31.185925699999984', 3, 45, 'بين المعلمين والاربعين', 1),
(2413, 'لبنان', 'بيروت', 'برج البراجنة', '33.8434711', '35.49873769999999', 165, 166, 'برج البراجنة', 1),
(2414, 'مصر', 'الإسكندرية', 'ونجت ', '0', '0', 3, 38, 'ونجت ', 1),
(2415, 'عمان', 'مسقط', 'الانصب', '23.5451648', '58.343170999999984', 180, 181, 'الانصب', 1),
(2416, 'السعودية', 'جدة', 'جوهرة العروس', '21.2854067', '39.23755069999993', 2, 13, 'جوهرة العروس', 1),
(2417, ' سوريا', 'دمشق', 'ركن الدين', '33.5399741', '36.29832859999999', 6, 33, 'ركن الدين', 1),
(2418, 'السعودية', 'مكّة المكرمة', 'العمره ', '21.4479085', '39.812779399999954', 2, 15, 'العمره ', 1),
(2419, 'الاردن', 'عمّان', 'شارع المدينة المنورة ', '31.2884467', '37.319537699999955', 131, 132, 'شارع المدينة المنورة ', 1),
(2420, 'السودان', 'الخرطوم', 'الروابي', '15.6024279', '32.48794099999998', 235, 236, 'الروابي', 1),
(2421, 'السعودية', 'جدة', 'مشرفه', '21.5372013', '39.19857230000002', 2, 13, 'مشرفه', 1),
(2422, 'فلسطين', 'غزة', 'الدرج', '0', '0', 228, 231, 'الدرج', 1),
(2423, 'قطر', 'الدوحة', 'ابو نخلة', '25.2550984', '51.46408080000003', 140, 141, 'ابو نخلة', 1),
(2424, 'قطر', 'الدوحة', 'المسيلة', '25.3005945', '51.48084970000002', 140, 141, 'المسيلة', 1),
(2425, 'الإمارات', 'دبي', 'مدينة محمد بن راشد', '25.1929546', '55.27875330000006', 1, 17, 'مدينة محمد بن راشد', 1),
(2426, 'السعودية', 'جدة', 'ابحر', '21.7562463', '39.05687929999999', 2, 13, 'ابحر', 1),
(2427, 'الإمارات', 'الشارقة', 'اخري', '0', '0', 1, 18, 'اخري', 1),
(2428, 'قطر', 'الدوحة', 'روضه اقديم', '25.2589214', '51.52438050000001', 140, 141, 'روضه اقديم', 1),
(2429, 'عمان', 'مسقط', 'الغبره', '23.5748403', '58.398513399999956', 180, 181, 'الغبره', 1),
(2430, 'الاردن', 'عمّان', 'الغور', '31.91055549999999', '35.92023649999999', 131, 132, 'الغور', 1),
(2431, 'الإمارات', 'الشارقة', 'سهيلة الشارقة', '0', '0', 1, 18, 'سهيلة الشارقة', 1),
(2432, 'السعودية', 'الرياض', 'طريق الخرج ', '24.5037338', '46.93395639999994', 2, 12, 'طريق الخرج ', 1),
(2433, 'مصر', 'اسيوط', 'بالقرب من حديقة الفردوس', '27.1783117', '31.185925699999984', 3, 45, 'بالقرب من حديقة الفردوس', 1),
(2434, 'الكويت', 'الكويت العاصمة', 'غرناطة', '29.312521', '47.87855319999994', 95, 106, 'غرناطة', 1),
(2435, 'مصر', 'الإسكندرية', 'الساحل الشمالى الكيلو  82.5', '0', '0', 3, 38, 'الساحل الشمالى الكيلو  82.5', 1),
(2436, 'البحرين', 'المنامة', 'امواج', '26.2285161', '50.58604969999999', 142, 151, 'امواج', 1),
(2437, 'البحرين', 'المنامة', 'سار', '26.2351358', '50.575526800000034', 142, 151, 'سار', 1),
(2438, 'البحرين', 'المنامة', 'الحد', '26.2488495', '50.65428229999998', 142, 151, 'الحد', 1),
(2439, 'الاردن', 'عمّان', 'لب -----------------مادبا ', '0', '0', 131, 132, 'لب -----------------مادبا ', 1),
(2440, 'الاردن', 'عمّان', 'مليح ---مادبا ', '0', '0', 131, 132, 'مليح ---مادبا ', 1),
(2441, 'قطر', 'الدوحة', 'الهتمي', '25.2849095', '51.547868600000015', 140, 141, 'الهتمي', 1),
(2442, 'السعودية', 'الرياض', 'الامانه', '24.6241432', '46.747252600000024', 2, 12, 'الامانه', 1),
(2443, 'السودان', 'الخرطوم', 'امتداد ناصر', '15.5944511', '32.56838259999995', 235, 236, 'امتداد ناصر', 1),
(2444, 'السعودية', 'جدة', 'السلطان', '21.5682479', '39.147294800000054', 2, 13, 'السلطان', 1),
(2445, 'مصر', 'طنطا', 'ميدان الساعة ', '30.0249492', '31.212355300000013', 3, 47, 'ميدان الساعة ', 1),
(2446, 'الإمارات', 'العين', 'عود التوبه', '0', '0', 1, 299, 'عود التوبه', 1),
(2447, 'الإمارات', 'العين', 'دوار الديوان', '0', '0', 1, 299, 'دوار الديوان', 1),
(2448, 'السودان', 'بورت سودان', 'حي المطار', '15.5927666', '32.55223550000005', 235, 240, 'حي المطار', 1),
(2449, 'الاردن', 'عمّان', 'الجاردنز مقابل مطعم السروات  ', '0', '0', 131, 132, 'الجاردنز مقابل مطعم السروات  ', 1),
(2450, 'العراق', 'اربيل', 'باداوة94', '36.1798579', '44.01155570000003', 218, 226, 'باداوة94', 1),
(2451, 'السعودية', 'الدمام', 'الاثير', '26.433256', '50.06241339999997', 2, 16, 'الاثير', 1),
(2452, 'مصر', 'الإسكندرية', 'ستانلى ', '31.2338372', '29.95074139999997', 3, 38, 'ستانلى ', 1),
(2453, 'العراق', 'اربيل', 'بارك فيو ', '0', '0', 218, 226, 'بارك فيو ', 1),
(2454, 'السعودية', 'الطائف', 'الروضة ', '25.2270027', '45.245101100000056', 2, 71, 'الروضة ', 1),
(2455, 'الاردن', 'عمّان', 'الدوار السابع قرب شارع عبدالله غوشة', '0', '0', 131, 132, 'الدوار السابع قرب شارع عبدالله غوشة', 1),
(2456, 'الإمارات', 'ابو ظبي', 'بدع زايد', '23.6606373', '53.693540499999926', 1, 14, 'بدع زايد', 1),
(2457, 'الإمارات', 'العين', 'عود التوبة ', '0', '0', 1, 299, 'عود التوبة ', 1),
(2458, 'السعودية', 'مكّة المكرمة', 'الجموم', '21.6474788', '39.71371810000005', 2, 15, 'الجموم', 1),
(2459, 'مصر', 'اسيوط', 'المحطة وسط البلد', '27.5619058', '30.813127200000054', 3, 45, 'المحطة وسط البلد', 1),
(2460, 'قطر', 'الدوحة', 'الخيسة الجديدة', '25.2854473', '51.53103979999992', 140, 141, 'الخيسة الجديدة', 1),
(2461, 'الإمارات', 'ابو ظبي', 'النهضة العسكرية', '24.2563522', '54.730219799999986', 1, 14, 'النهضة العسكرية', 1),
(2462, 'الإمارات', 'دبي', 'المحصنه الاولى ', '25.2275804', '55.175012100000004', 1, 17, 'المحصنه الاولى ', 1),
(2463, 'السعودية', 'الرياض', 'المهديه', '24.6523147', '46.511448700000074', 2, 12, 'المهديه', 1),
(2464, 'مصر', 'اسيوط', 'سيد القديمة', '29.9998421', '31.1956328', 3, 45, 'سيد القديمة', 1),
(2465, 'الإمارات', 'عجمان', 'الزاهية', '25.4212221', '55.59378149999998', 1, 60, 'الزاهية', 1),
(2466, 'العراق', 'اربيل', 'نوبل ستي', '0', '0', 218, 226, 'نوبل ستي', 1),
(2467, 'قطر', 'الدوحة', 'اسلطه الجديده', '25.2602228', '51.516321800000014', 140, 141, 'اسلطه الجديده', 1),
(2468, 'الاردن', 'عمّان', 'الزهور', '31.91125199999999', '35.92412890000003', 131, 132, 'الزهور', 1),
(2469, 'مصر', 'طنطا', 'ثانى', '30.7753455', '30.987859100000037', 3, 47, 'ثانى', 1),
(2470, 'مصر', 'القاهرة', 'دمنهور', '30.099576', '31.280088500000033', 3, 37, 'دمنهور', 1),
(2471, 'الإمارات', 'العين', 'الهير ', '0', '0', 1, 299, 'الهير ', 1),
(2472, 'مصر', 'القاهرة', 'مدينة السادات', '30.092404', '31.257899500000008', 3, 37, 'مدينة السادات', 1),
(2473, 'السودان', 'الخرطوم', 'السوق العربي', '30.1018111', '31.316460699999993', 235, 236, 'السوق العربي', 1),
(2474, 'السعودية', 'المدينة المنوّرة', 'الجرف', '24.5065005', '39.57176800000002', 2, 22, 'الجرف', 1),
(2475, 'الاردن', 'عمّان', 'العبدلي ', '31.9651196', '35.90297039999996', 131, 132, 'العبدلي ', 1),
(2476, 'لبنان', 'جبل لبنان', 'فيطرون', '33.9937928', '35.74341800000002', 165, 258, 'فيطرون', 1),
(2477, 'مصر', 'القليوبية', 'بنها', '30.4659929', '31.18483070000002', 3, 40, 'بنها', 1),
(2478, 'مصر', 'الإسكندرية', 'العلمين', '30.0690279', '31.20514639999999', 3, 38, 'العلمين', 1),
(2479, 'الإمارات', 'الشارقة', 'واحة الطى', '0', '0', 1, 18, 'واحة الطى', 1),
(2480, 'العراق', 'اربيل', 'هرشم 2', '0', '0', 218, 226, 'هرشم 2', 1),
(2481, 'مصر', 'الإسكندرية', 'باب شرق', '31.2000924', '29.91873869999995', 3, 38, 'باب شرق', 1),
(2482, 'قطر', 'الدوحة', 'ابوظللوف', '25.2854473', '51.53103979999992', 140, 141, 'ابوظللوف', 1),
(2483, 'قطر', 'الدوحة', 'روضه المطار ', '25.2589214', '51.52438050000001', 140, 141, 'روضه المطار ', 1),
(2484, 'مصر', 'المنصورة', 'حى الاشجار', '30.1198439', '31.29982419999999', 3, 46, 'حى الاشجار', 1),
(2485, 'مصر', 'اسيوط', 'المعادى', '28.5265435', '31.014636999999993', 3, 45, 'المعادى', 1),
(2486, 'السودان', 'الخرطوم', 'امدرمان حي الروضة', '15.6788477', '32.50191229999996', 235, 236, 'امدرمان حي الروضة', 1),
(2487, 'السعودية', 'الطائف', 'الرحمانيه', '21.4372729', '40.512714200000005', 2, 71, 'الرحمانيه', 1),
(2488, 'السعودية', 'مكّة المكرمة', 'العوالي ▐ الرصيفة ▐ بطحاء قريش ▐ الشوقية ▐ الكعكية ▐ بن زومة ▐ الخالدية2 ▐ مخطط الخضري ', '0', '0', 2, 15, 'العوالي ▐ الرصيفة ▐ بطحاء قريش ▐ الشوقية ▐ الكعكية ▐ بن زومة ▐ الخالدية2 ▐ مخطط الخضري ', 1),
(2489, 'السعودية', 'الرياض', 'منفوحه', '24.5981817', '46.726092300000005', 2, 12, 'منفوحه', 1),
(2490, 'السعودية', 'الرياض', 'الامانة', '24.6241432', '46.747252600000024', 2, 12, 'الامانة', 1),
(2491, 'السودان', 'الخرطوم', 'سوبا', '15.4994192', '32.663757600000054', 235, 236, 'سوبا', 1),
(2492, 'السعودية', 'المدينة المنوّرة', 'القبلتين', '24.4801074', '39.57693560000007', 2, 22, 'القبلتين', 1),
(2493, 'الإمارات', 'الشارقة', 'الصناعية 18', '25.26185', '55.49563280000007', 1, 18, 'الصناعية 18', 1),
(2494, 'الإمارات', 'العين', 'الخبيصي', '24.2359556', '55.733442500000024', 1, 299, 'الخبيصي', 1),
(2495, 'الاردن', 'عمّان', 'ابو علندا', '0', '0', 131, 132, 'ابو علندا', 1),
(2496, 'الإمارات', 'ابو ظبي', 'مصفح الصناعيه', '24.3711707', '54.509826100000055', 1, 14, 'مصفح الصناعيه', 1),
(2497, 'مصر', 'السويس', 'شرم الشيخ', '31.1977376', '29.901227500000005', 3, 42, 'شرم الشيخ', 1),
(2498, 'السعودية', 'المدينة المنوّرة', 'الدائرى الثانى', '24.4452414', '39.59557010000003', 2, 22, 'الدائرى الثانى', 1),
(2499, 'العراق', 'اربيل', 'القريه اللبنانيه', '0', '0', 218, 226, 'القريه اللبنانيه', 1),
(2500, 'السعودية', 'الرياض', 'الاجيال', '24.8565493', '46.65243050000004', 2, 12, 'الاجيال', 1),
(2501, 'الإمارات', 'العين', 'الهيلي', '24.2967035', '55.77579330000003', 1, 299, 'الهيلي', 1),
(2502, 'الاردن', 'الزرقاء', 'حي الفلاح', '31.7515118', '36.86807909999993', 131, 133, 'حي الفلاح', 1),
(2503, 'السعودية', 'الرياض', '6اكتوبر', '29.9763435', '31.24500009999997', 2, 12, '6اكتوبر', 1),
(2504, 'مصر', 'اسيوط', 'المعادي', '28.5265435', '31.014636999999993', 3, 45, 'المعادي', 1),
(2505, 'قطر', 'الدوحة', 'الخيسه الجديده ', '25.2854473', '51.53103979999992', 140, 141, 'الخيسه الجديده ', 1),
(2506, 'الإمارات', 'ابو ظبي', 'سنتر ابوظبي ', '0', '0', 1, 14, 'سنتر ابوظبي ', 1),
(2507, 'الإمارات', 'دبي', 'نخلة الجميرا', '25.1124705', '55.13896299999999', 1, 17, 'نخلة الجميرا', 1),
(2508, 'الاردن', 'عمّان', 'حي الصحابة', '0', '0', 131, 132, 'حي الصحابة', 1),
(2509, 'الكويت', 'الكويت العاصمة', 'الجابريه', '29.31805739999999', '48.025804600000015', 95, 106, 'الجابريه', 1),
(2510, 'مصر', 'القاهرة', 'بشتيل', '30.0780543', '31.197426800000017', 3, 37, 'بشتيل', 1),
(2511, 'مصر', 'الإسكندرية', 'سيدى بشر ترام ', '31.2527714', '29.9760182', 3, 38, 'سيدى بشر ترام ', 1),
(2512, 'مصر', 'المحلة الكبرى', 'ارض خطاب', '30.9163541', '31.167780600000015', 3, 43, 'ارض خطاب', 1),
(2513, 'الاردن', 'عمّان', 'وسط البلد', '31.9565783', '35.945695099999966', 131, 132, 'وسط البلد', 1),
(2514, 'الاردن', 'عمّان', 'لواء ذيبان', '0', '0', 131, 132, 'لواء ذيبان', 1),
(2515, 'السعودية', 'الرياض', 'الرمال', '24.930889', '46.796231900000066', 2, 12, 'الرمال', 1),
(2516, 'الكويت', 'الكويت العاصمة', 'عبدالله مبارك', '29.367907', '47.98075040000003', 95, 106, 'عبدالله مبارك', 1),
(2517, 'قطر', 'الدوحة', 'الريان شارع السلآم ', '25.2804034', '51.420258800000056', 140, 141, 'الريان شارع السلآم ', 1),
(2518, 'اليمن', 'صنعاء', 'الاصبحي', '15.2900162', '44.22657389999995', 188, 189, 'الاصبحي', 1),
(2519, 'مصر', 'طنطا', 'نقابه المحامين', '0', '0', 3, 47, 'نقابه المحامين', 1),
(2520, 'مصر', 'اسيوط', 'البييسرى', '27.1608328', '31.172470599999997', 3, 45, 'البييسرى', 1),
(2521, 'الإمارات', 'دبي', 'قرية جميرا', '25.0610943', '55.202358199999935', 1, 17, 'قرية جميرا', 1),
(2522, 'السودان', 'الخرطوم', 'امدرمان الثورة الحارة العاشرة', '15.5006544', '32.55989939999995', 235, 236, 'امدرمان الثورة الحارة العاشرة', 1),
(2523, 'السعودية', 'جدة', 'الاصالة ', '21.7751533', '39.16119470000001', 2, 13, 'الاصالة ', 1),
(2524, 'مصر', 'الإسكندرية', 'الابراهمية', '31.2120125', '29.92503750000003', 3, 38, 'الابراهمية', 1),
(2525, 'السعودية', 'جدة', 'ذهبان ', '21.573066', '39.14079820000006', 2, 13, 'ذهبان ', 1),
(2526, 'السعودية', 'جدة', 'مخطط جوهرة العروس ( 2س  )', '21.2854067', '39.23755069999993', 2, 13, 'مخطط جوهرة العروس ( 2س  )', 1),
(2527, 'الإمارات', 'دبي', 'الورقاء', '25.1914848', '55.43054859999995', 1, 17, 'الورقاء', 1),
(2528, 'مصر', 'الإسكندرية', 'شارع ابو قير ', '31.2209857', '29.943422199999986', 3, 38, 'شارع ابو قير ', 1),
(2529, 'السعودية', 'المدينة المنوّرة', 'طيبه الطيبه ', '24.5246542', '39.56918410000003', 2, 22, 'طيبه الطيبه ', 1),
(2530, 'الكويت', 'الكويت العاصمة', 'العارضية', '29.2913796', '47.90698199999997', 95, 106, 'العارضية', 1),
(2531, 'السعودية', 'الطائف', 'الحلقة', '21.4372729', '40.512714200000005', 2, 71, 'الحلقة', 1),
(2532, 'مصر', 'السويس', 'العبور', '29.9680794', '32.53020270000002', 3, 42, 'العبور', 1),
(2533, 'السعودية', 'مكّة المكرمة', 'ام الكتاد ', '0', '0', 2, 15, 'ام الكتاد ', 1),
(2534, 'السعودية', 'مكّة المكرمة', 'مخطط ولي العهد ', '21.362816', '39.78030519999993', 2, 15, 'مخطط ولي العهد ', 1),
(2535, 'الكويت', 'الكويت العاصمة', 'الرميثيه', '0', '0', 95, 106, 'الرميثيه', 1),
(2536, 'مصر', 'الإسكندرية', 'على البحر مباشرة ', '0', '0', 3, 38, 'على البحر مباشرة ', 1),
(2537, 'الاردن', 'اربد', 'الرمثا', '32.5584541', '36.01466700000003', 131, 135, 'الرمثا', 1),
(2538, 'قطر', 'الدوحة', 'الذخيرة', '25.2854473', '51.53103979999992', 140, 141, 'الذخيرة', 1),
(2539, 'مصر', 'القاهرة', 'بدر ', '30.0506311', '31.268230000000017', 3, 37, 'بدر ', 1),
(2540, 'السعودية', 'المدينة المنوّرة', 'حي الملك فهد', '0', '0', 2, 22, 'حي الملك فهد', 1),
(2541, 'السعودية', 'جدة', 'مخطط الرياض ( د  ) ', '21.2854067', '39.23755069999993', 2, 13, 'مخطط الرياض ( د  ) ', 0),
(2542, 'قطر', 'الدوحة', 'المنصوره', '25.2692576', '51.52946450000002', 140, 141, 'المنصوره', 1),
(2543, 'مصر', 'الفيوم', 'قحافة', '24.355555', '21.355555', 3, 48, 'kohafa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `am_employees`
--

CREATE TABLE `am_employees` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `employee_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_level_id` int(11) DEFAULT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `balance` double NOT NULL DEFAULT '0',
  `secret_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `activated_by` int(11) NOT NULL,
  `activated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_employee_jobs`
--

CREATE TABLE `am_employee_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_type` int(11) NOT NULL DEFAULT '1',
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '''0'' for Pending, ''1'' for Accepted, ''2'' for Completed, ''3'' for Rejected, ''4'' for Closed',
  `verify_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_employee_levels`
--

CREATE TABLE `am_employee_levels` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limits` int(11) NOT NULL DEFAULT '1000',
  `minimum_stock` int(11) NOT NULL DEFAULT '10',
  `transfer_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_employee_log`
--

CREATE TABLE `am_employee_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `action` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_employee_transfers`
--

CREATE TABLE `am_employee_transfers` (
  `id` int(11) NOT NULL,
  `from_employee_id` int(11) DEFAULT NULL,
  `from_employee_level` int(11) NOT NULL,
  `to_employee_id` int(11) NOT NULL,
  `to_employee_level` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_favorites`
--

CREATE TABLE `am_favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_groups`
--

CREATE TABLE `am_groups` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_groups`
--

INSERT INTO `am_groups` (`id`, `title`, `desc`) VALUES
(1, 'الاداره', 'جميع الصلاحيات'),
(2, 'الاعضاء', 'عملاء تم 8 من يحق لهم طلب الخدمات المتاحه لدينا'),
(3, 'مقدمي الخدمات', 'عضويه مقدمي الخدمات تصلح للافراد والمؤسسات ولهم اشتراك سنوي حتي يتمكن من عرض خدماتهم بالتطبيق الخاص بنا');

-- --------------------------------------------------------

--
-- Table structure for table `am_job_types`
--

CREATE TABLE `am_job_types` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_job_types`
--

INSERT INTO `am_job_types` (`id`, `title`, `created_by`, `updated_by`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Transfer', 1, 1, '2019-02-26 10:17:20', '2019-02-26 10:26:39', 1),
(2, 'Collect Money', 1, 0, '2019-02-26 10:34:51', '2019-02-26 10:34:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `am_log`
--

CREATE TABLE `am_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `action` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_notifications`
--

CREATE TABLE `am_notifications` (
  `id` int(11) NOT NULL,
  `android` tinyint(1) DEFAULT NULL,
  `ios` tinyint(1) NOT NULL,
  `users` text COLLATE utf8mb4_unicode_ci,
  `notification_token_id` int(11) NOT NULL,
  `lang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_notifications_translations`
--

CREATE TABLE `am_notifications_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `notification_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_notification_tokens`
--

CREATE TABLE `am_notification_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `mobile_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_type` int(11) NOT NULL COMMENT '1 for Android , 2 For IOS',
  `lang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_offers`
--

CREATE TABLE `am_offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '1 promo_code OR 0 normal offer',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_offers_translations`
--

CREATE TABLE `am_offers_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_payment_methods`
--

CREATE TABLE `am_payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fees_percent` double NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_payment_methods`
--

INSERT INTO `am_payment_methods` (`id`, `title`, `img`, `fees_percent`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Visa', 'method_20171116112314.png', 0, 1, NULL, '2017-08-03 08:22:25', '2017-11-16 14:23:14'),
(2, 'Master Card', 'payment_method_2.png', 0, 1, NULL, '2017-08-03 08:22:48', '2018-07-01 11:53:39'),
(3, '', '/tmp/phpCdGk5O', 0, 0, NULL, '2018-07-01 11:54:07', '2018-07-01 11:54:07'),
(4, '', '', 0, 0, NULL, '2018-07-01 11:58:14', '2018-07-01 11:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `am_payment_methods_translations`
--

CREATE TABLE `am_payment_methods_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_payment_methods_translations`
--

INSERT INTO `am_payment_methods_translations` (`id`, `payment_method_id`, `locale`, `title`) VALUES
(1, 6, 'en', 'English'),
(2, 6, 'ar', 'عربي'),
(3, 6, 'fr', 'Français'),
(4, 7, 'ar', 'ar'),
(5, 7, 'en', 'en'),
(6, 7, 'fr', 'frr'),
(7, 1, 'ar', 'باي بال'),
(8, 1, 'en', 'PayPal'),
(9, 1, 'fr', 'visa fr'),
(10, 2, 'ar', 'كريدت كارد (فيزا - ماستر كارد)'),
(11, 2, 'en', 'Credit Card (Visa - MasterCard )'),
(12, 2, 'fr', 'master card fr'),
(13, 3, 'ar', 'سداد'),
(14, 3, 'en', 'saddad'),
(15, 3, 'fr', 'saddad fr'),
(17, 4, 'en', 'Sadad');

-- --------------------------------------------------------

--
-- Table structure for table `am_price_classes`
--

CREATE TABLE `am_price_classes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order_no` int(11) NOT NULL DEFAULT '0',
  `minimum_stock` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_price_classes`
--

INSERT INTO `am_price_classes` (`id`, `title`, `price_class`, `category_id`, `img`, `status`, `order_no`, `minimum_stock`) VALUES
(1, 'Zain 10 SAR', '10 SR', 6, 'price_20171219124127.png', 1, 0, 10),
(2, 'Mobily - 10 SAR', 'Mobily 10 SR', 7, 'price_20171220120525.png', 0, 0, 10),
(3, 'Sawa - 10.50 SAR', 'STC 10 SR', 5, 'price_20171220120458.png', 0, 0, 10),
(4, 'iTunes [US] - 100 USD', 'iTunes [US] - 100 USD', 8, 'price_20180315030454.png', 1, 0, 10),
(6, 'Zain - 20 SR', 'zain 20 SR', 6, 'price_20171220120601.png', 1, 1, 10),
(9, 'Google Play [US] - 10 USD', '', 10, 'price_20180315031148.png', 1, 0, 10),
(12, 'QuickNet - 1 GB', '', 5, 'price_20180122012822.png', 0, 9, 10),
(13, 'Sawa - 315 SR', '', 5, 'price_20171220120800.png', 1, 8, 10),
(14, 'Sawa - 52.50 SAR', '', 5, 'price_20171220120827.png', 1, 5, 10),
(15, 'Sawa - 105 SAR', '', 5, 'price_20171220120857.png', 1, 6, 10),
(16, 'Mobily - 50 SAR', '', 7, 'price_20171220120929.png', 1, 4, 10),
(17, 'Lebara - 10 SAR', '', 15, 'price_20171219124023.png', 1, 0, 10),
(18, 'Lebara - 20 SAR', '', 15, 'price_20171219124048.png', 1, 1, 10),
(19, 'Lebara - 50 SAR', '', 15, 'price_20171219124119.png', 1, 2, 10),
(20, 'Lebara - 100 SAR', '', 15, 'price_20171219124148.png', 1, 3, 10),
(21, 'Virgin - 10 SAR', '', 13, 'price_20171220121006.png', 1, 0, 10),
(22, 'Virgin - 20 SAR', '', 13, 'price_20171220121030.png', 1, 0, 10),
(23, 'Virgin - 30 SAR', '', 13, 'price_20171220121055.png', 1, 0, 10),
(24, 'Virgin 50 - SAR', '', 13, 'price_20171220121118.png', 1, 0, 10),
(25, 'Virgin - 100 SAR', '', 13, 'price_20171220121142.png', 1, 0, 10),
(26, 'Zain - 50 SAR', '', 6, 'price_20171220121212.png', 1, 2, 10),
(27, 'Zain - 100 SAR', '', 6, 'price_20171220121514.png', 1, 3, 10),
(28, 'iTunes [US] - 5 USD', '', 8, 'price_20180315034803.png', 1, 0, 10),
(29, 'iTunes [US] - 15 USD', '', 8, 'price_20180315032025.png', 1, 0, 10),
(30, 'iTunes [US] - 25 USD', '', 8, 'price_20180315032114.png', 1, 0, 10),
(31, 'iTunes [US] - 50 USD', '', 8, 'price_20180423045309.png', 1, 0, 10),
(32, 'Google Play [US] - 25 USD', '', 10, 'price_20180315031233.png', 1, 0, 10),
(33, 'Google Play [US] - 50 USD', '', 10, 'price_20180315031627.png', 1, 0, 10),
(34, 'Google Play [US] - 100 USD', '', 10, 'price_20180426040316.png', 1, 0, 10),
(35, 'Amazon [US] - 10 USD', '', 20, 'price_20180315033705.png', 1, 0, 10),
(36, 'Amazon [US] - 50 USD', '', 20, 'price_20180315034026.png', 1, 0, 10),
(37, 'Xbox Live Gold [US] - 12 Months Subscriptions', '', 35, 'price_20171219121430.png', 1, 0, 10),
(38, 'Xbox Live Gold [US] - 3 Months Subscriptions', '', 35, 'price_20171219121459.png', 1, 0, 10),
(39, 'Xbox Live Gold [US] - 1 Month Subscription', '', 35, 'price_20171219121630.png', 1, 0, 10),
(40, 'Xbox Live [US] - 50 USD', '', 35, 'price_20171221123250.png', 1, 0, 10),
(41, 'Xbox Live [US] - 25 USD', '', 35, 'price_20171219121803.png', 1, 0, 10),
(42, 'PlayStation Network PSN Card [US] - 50 USD', '', 18, 'price_20171219122059.png', 0, 0, 10),
(43, 'PlayStation Network PSN Card [US] - 20 USD', '', 18, 'price_20171219122203.png', 0, 0, 10),
(44, 'PlayStation Network PSN Card [US] - 10 USD', '', 18, 'price_20171219122320.png', 0, 0, 10),
(45, 'PlayStation Network Plus [US] - 90 Days Subscription', '', 18, 'price_20171219123752.png', 0, 0, 10),
(46, 'PlayStation Network Plus [US] - 365 Days Subscription', '', 18, 'price_20171219123835.png', 0, 0, 10),
(47, 'PlayStation Network [UK] - 3 mMonths Subscription', '', 40, 'price_20171219123939.png', 0, 0, 10),
(48, 'PlayStation Network [UK] - 12 Months Subscription', '', 40, 'price_20171219124009.png', 0, 0, 10),
(49, 'PlayStation Network PSN Card [KSA] - 10 USD', '', 12, 'price_20171219124113.png', 1, 0, 10),
(50, 'PlayStation Network PSN Card [KSA] - 20 USD', '', 12, 'price_20171219124138.png', 1, 0, 10),
(51, 'PlayStation Network PSN Card [KSA] - 50 USD', '', 12, 'price_20171219124204.png', 1, 0, 10),
(52, 'Facebook Credits [Global] - 25 USD', '', 19, 'price_20171219124451.png', 0, 0, 10),
(53, 'Facebook Credits [Global] - 15 USD', '', 19, 'price_20171219124519.png', 0, 0, 10),
(54, 'Steam Walled Card - 20 USD', '', 17, 'price_20171219124618.png', 1, 1, 10),
(55, 'Steam Walled Card - 50 USD', '', 17, 'price_20171219124652.png', 1, 2, 10),
(56, 'Steam Walled Card - 100 USD', '', 17, 'price_20171219124718.png', 1, 3, 10),
(57, 'CashU Card [Global] - 500 Points', '', 22, 'price_20171219121329.png', 0, 0, 10),
(58, 'CashU Card [Global] - 1500 Points', '', 22, 'price_20171219121358.png', 0, 0, 10),
(59, 'CashU Card [Global] - 2500 Points', '', 22, 'price_20171219121426.png', 0, 0, 10),
(60, 'CashU Card [Global] - 5000 Points', '', 22, 'price_20171219121451.png', 0, 0, 10),
(61, 'Paysafecard [KSA] - 50 SAR', '', 21, 'price_20180122010357.png', 1, 0, 10),
(62, 'Paysafecard [KSA] - 100 SAR', '', 21, 'price_20180122010421.png', 1, 0, 10),
(63, 'Paysafecard [KSA] - 200 SAR', '', 21, 'price_20180122010447.png', 1, 0, 10),
(64, 'Paysafecard [KSA] - 400 SAR', '', 21, 'price_20180122010512.png', 1, 0, 10),
(65, 'GoCash (Global) - 5 USD', '', 27, 'price_20171220124315.png', 0, 0, 10),
(66, 'GoCash (Global) - 20 USD', '', 27, 'price_20171220124249.png', 0, 0, 10),
(67, 'QuickNet - 5 GB', '', 5, 'price_20180122012901.png', 0, 10, 10),
(68, 'QuickNet - 25 GB', '', 5, 'price_20180122012945.png', 0, 11, 10),
(69, 'QuickNet - 60 GB', '', 5, 'price_20180122013019.png', 0, 12, 10),
(70, 'QuickNet - 250 GB', '', 5, 'price_20180122013109.png', 0, 13, 10),
(71, 'QuickNet, 10 GB, For 3 Months - 136.50 SAR', '', 5, 'price_20180122013150.png', 1, 19, 10),
(72, 'QuickNet - 330 GB', '', 5, 'price_20180122013239.png', 0, 14, 10),
(73, 'Mobily Data - 10 GB', '', 7, 'price_20180122013622.png', 1, 6, 10),
(74, 'Mobily - 100 SAR', '', 7, 'price_20180122013538.png', 1, 5, 10),
(75, 'Mobily Data - 300GB', '', 7, 'price_20180122013656.png', 1, 7, 10),
(76, 'Freindi - 10 SAR', '', 28, 'price_20180122013758.png', 1, 0, 10),
(77, 'Freindi - 20 SAR', '', 28, 'price_20180122013836.png', 1, 0, 10),
(78, 'Freindi - 30 SAR', '', 28, 'price_20180122013959.png', 1, 0, 10),
(79, 'Freindi - 50SAR', '', 28, 'price_20180122014035.png', 1, 0, 10),
(80, 'Freindi - 100 SAR', '', 28, 'price_20180122014116.png', 1, 0, 10),
(81, 'GO - 3 Months Subscription', '', 29, 'price_20180122014555.png', 1, 0, 10),
(82, 'GO - 6 Months Subscription', '', 29, 'price_20180122014627.png', 1, 0, 10),
(83, 'Jawwy - 10 SAR', '', 14, 'price_20180122014153.png', 1, 0, 10),
(84, 'Jawwy - 20 SAR', '', 14, 'price_20180122014219.png', 1, 0, 10),
(85, 'Jawwy - 50 SAR', '', 14, 'price_20180122014243.png', 1, 0, 10),
(86, 'Jawwy - 100 SAR', '', 14, 'price_20180122014318.png', 1, 0, 10),
(87, 'Jawwy - 200 SAR', '', 14, 'price_20180122014417.png', 0, 0, 10),
(88, 'Sawa - 21 SAR', '', 5, 'price_20171220121842.png', 0, 2, 10),
(89, 'Sawa - 31.50 SAR', '', 5, 'price_20180122012726.png', 1, 4, 10),
(90, 'Sawa - 210 SAR', '', 5, 'price_20180122012648.png', 1, 7, 10),
(91, 'Mobily - 30 SAR', '', 7, 'price_20171220122716.png', 1, 3, 10),
(92, 'Zain - 300 SAR', '', 6, 'price_20180122014753.png', 1, 4, 10),
(93, 'Zain Data - 2 GB - 1 Month', '', 6, 'price_20180122014903.png', 1, 6, 10),
(94, 'Zain Data - 5 GB - 1 Month', '', 6, 'price_20180122014929.png', 1, 7, 7),
(96, 'Zain Data - 10 GB - 3 Months', '', 6, 'price_20180423042829.png', 1, 10, 10),
(97, 'Zain Data - 50GB', '', 6, 'price_20180122015031.png', 1, 14, 10),
(98, 'Zain Data - 200GB', '', 6, 'price_20180122015100.png', 0, 15, 10),
(99, 'GoCash (Global) - 10 USD', '', 27, 'price_20171220124107.png', 0, 0, 10),
(100, 'GoCash (Global) - 100 USD', '', 27, 'price_20171220124144.png', 0, 0, 10),
(101, 'GoCash (Global) - 50 USD', '', 27, 'price_20171220124214.png', 0, 0, 10),
(104, 'Nintendo [US] - 20 USD', '', 30, 'price_20180122015949.png', 1, 0, 10),
(105, 'Nintendo [US] - 35 USD', '', 30, 'price_20171221122018.png', 0, 0, 10),
(106, 'Karma Koin [Global] - 25 USD', '', 31, 'price_20171221122257.png', 0, 0, 10),
(107, 'Karma Koin [Global] - 10 USD', '', 31, 'price_20171221122525.png', 0, 0, 10),
(108, 'Karma Koin [Global] - 50 USD', '', 31, 'price_20171221122340.png', 0, 0, 10),
(109, 'Kammelna Cards - 1 Month Subscription', '', 32, 'price_20180122011452.png', 0, 0, 10),
(110, 'Kammelna Cards - 3 Months Subscription', '', 32, 'price_20180122011548.png', 0, 0, 10),
(111, 'Kammelna Cards - 6 Months Subscription', '', 32, 'price_20180122011619.png', 0, 0, 10),
(112, 'Kammelna Cards - 1Year Subscription', '', 32, 'price_20180122011651.png', 0, 0, 10),
(114, 'QuickNet - 1000 GB', '', 5, 'price_20180122013446.png', 0, 15, 10),
(118, 'ebay - 10 USD', '', 39, 'price_20180307030247.png', 1, 0, 10),
(119, 'ebay - 25 USD', '', 39, 'price_20180307030323.png', 1, 0, 10),
(120, 'ebay - 50 USD', '', 39, 'price_20180307030350.png', 1, 0, 10),
(121, 'ebay - 100 USD', '', 39, 'price_20180307030416.png', 1, 0, 10),
(122, 'ebay - 200 USD', '', 39, 'price_20180307030440.png', 1, 0, 10),
(123, 'ebay - 300 USD', '', 39, 'price_20180307030503.png', 1, 0, 10),
(124, 'Rixty - 10 USD', '', 38, 'price_20180307030641.png', 1, 0, 10),
(125, 'Rixty - 20 USD', '', 38, 'price_20180307030710.png', 1, 0, 10),
(126, 'Rixty - 25 USD', '', 38, 'price_20180307030743.png', 1, 0, 10),
(127, 'Rixty - 50 USD', '', 38, 'price_20180307030808.png', 1, 0, 10),
(128, 'Rixty - 100 USD', '', 38, 'price_20180307030829.png', 1, 0, 10),
(129, 'Skype - 10 USD', '', 37, 'price_20180307030943.png', 1, 0, 10),
(130, 'Skype - 25 USD', '', 37, 'price_20180307031010.png', 1, 0, 10),
(131, 'PlayStation Network [UK] - 05 GBP', '', 40, 'price_20180318032434.png', 0, 0, 10),
(132, 'PlayStation Network [UK] - 10 GBP', '', 40, 'price_20180318034222.png', 0, 0, 10),
(133, 'Amazon [US] - 25 USD', '', 20, 'price_20180315033957.png', 1, 0, 10),
(134, 'Amazon [US] - 100 USD', '', 20, 'price_20180315033813.png', 1, 0, 10),
(135, 'Facebook Credits [Global] - 10 USD', '', 19, 'price_20180315034011.png', 0, 0, 10),
(136, 'Facebook Credits [Global] - 50 USD', '', 19, 'price_20180315034206.png', 0, 0, 10),
(137, 'Google Play [US] - 15 USD', '', 10, 'price_20180315034540.png', 1, 0, 10),
(138, 'iTunes [US] - 20 USD', '', 8, 'price_20180315034855.png', 1, 0, 10),
(139, 'iTunes [US] - 30 USD', '', 8, 'price_20180315034945.png', 1, 0, 10),
(140, 'Sawa - 15.75 SAR', '', 5, 'price_20180315035738.png', 1, 1, 10),
(141, 'Sawa - 26.25 SAR', '', 5, 'price_20180315030210.png', 1, 3, 10),
(142, 'Steam Walled Card - 10 USD', '', 17, 'price_20180315030739.png', 1, 0, 10),
(143, 'Xbox Live [US] - 15 USD', '', 35, 'price_20180315031051.png', 1, 0, 10),
(144, 'Xbox Live [US] - 20 USD', '', 35, 'price_20180315031134.png', 0, 0, 10),
(145, 'QuickNet, Unlimited, For 1 Month - 231 SAR ', '', 5, 'price_20180315032924.png', 1, 18, 10),
(146, 'QuickNet 10 GB- [1Month] - 105 SAR', '', 5, 'price_20180315033533.png', 1, 16, 10),
(147, 'QuickNet,30GB, For 2 Months - 210 SAR', '', 5, 'price_20180315034421.png', 1, 17, 10),
(148, 'QuickNet, 300GB, For 3 Months - 420 SAR', '', 5, 'price_20180315034623.png', 1, 20, 10),
(149, 'Zain Data - 1 GB - 1 Month', '', 6, 'price_20180315035640.png', 1, 5, 10),
(150, 'Zain Data - 20 GB - 3 Months', '', 6, 'price_20180315030413.png', 1, 11, 10),
(151, 'Zain Data - 150 GB - 3 Months', '', 6, 'price_20180315030609.png', 1, 12, 10),
(152, 'Zain Data - 300 GB - 3 Months', '', 6, 'price_20180315030715.png', 1, 13, 10),
(153, 'Zain Data - Unlimited - 1 Month ', '', 6, 'price_20180315030836.png', 1, 9, 10),
(154, 'iTunes [US] - 10 USD', '', 8, 'price_20180426041101.png', 1, 0, 10),
(155, 'iTunes [UK] - 15 £', '', 41, 'price_20180318030642.png', 0, 0, 10),
(156, 'iTunes [UK] - 25 £', '', 41, 'price_20180318030740.png', 0, 0, 10),
(157, 'iTunes [UK] - 50 £', '', 41, 'price_20180318030841.png', 0, 0, 10),
(158, 'iTunes [UK] - 100 £', '', 41, 'price_20180318031310.png', 0, 0, 10),
(159, 'Google Play [UK] - 10 £', '', 36, 'price_20180318035010.png', 1, 0, 10),
(160, 'Google Play [UK] - 25 £', '', 36, 'price_20180318035658.png', 1, 0, 10),
(161, 'Google Play [UK] - 50 £', '', 36, 'price_20180318035807.png', 1, 0, 10),
(162, 'PlayStation Network [UK] - 20 GBP', '', 40, 'price_20180318032622.png', 0, 0, 10),
(163, 'PlayStation Network [UK] - 50 GBP', '', 40, 'price_20180318034103.png', 0, 0, 10),
(164, 'Zain Data - 10 GB - 1 Month', '', 6, 'price_20180426040559.png', 1, 8, 10),
(165, 'Mobily - 20 SAR', '', 7, 'price_20180426040903.png', 1, 2, 10),
(166, 'Mobily - 15 SAR', '', 7, 'price_class_166.jpg', 1, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `am_receipts`
--

CREATE TABLE `am_receipts` (
  `id` int(11) NOT NULL,
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `currency_id` int(11) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_shopping_cart`
--

CREATE TABLE `am_shopping_cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_class_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_shopping_history`
--

CREATE TABLE `am_shopping_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_id` int(11) NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_info_id` int(11) NOT NULL,
  `checkout_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `print_times` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL COMMENT '0 for pending, 1 for error, 2 for success, 3 for canceled, 4 for fail',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_shopping_history_items`
--

CREATE TABLE `am_shopping_history_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `shopping_id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is this item found or not',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_shops`
--

CREATE TABLE `am_shops` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_class_id` int(11) DEFAULT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `license` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commercial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_id` int(11) NOT NULL,
  `bank_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `secret_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `activated_by` int(11) NOT NULL,
  `activated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_shop_classes`
--

CREATE TABLE `am_shop_classes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limits` int(11) NOT NULL DEFAULT '1000',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `minimum_stock` int(11) NOT NULL DEFAULT '10',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_static_pages`
--

CREATE TABLE `am_static_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_static_pages`
--

INSERT INTO `am_static_pages` (`id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2017-10-08 15:20:03', '2017-10-08 15:20:03'),
(2, 1, NULL, '2017-10-08 15:33:25', '2017-10-08 15:33:25'),
(3, 1, NULL, '2017-10-08 15:33:32', '2017-10-08 15:33:32'),
(4, 1, NULL, '2017-10-08 15:33:37', '2017-10-08 15:33:37'),
(5, 1, NULL, '2017-10-08 15:33:43', '2017-10-08 15:33:43'),
(6, 0, NULL, '2017-11-08 11:37:05', '2018-04-29 09:30:52'),
(7, 1, NULL, '2017-12-25 14:39:37', '2017-12-25 14:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `am_static_pages_translations`
--

CREATE TABLE `am_static_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `static_page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `am_static_pages_translations`
--

INSERT INTO `am_static_pages_translations` (`id`, `static_page_id`, `locale`, `title`, `content`) VALUES
(1, 11, 'ar', 'ثابتة', '<p>Arabic Content</p>\r\n'),
(2, 11, 'en', 'Static', '<p>English Content</p>\r\n'),
(3, 11, 'fr', 'Static fr', '<h1>Fran&ccedil;ais Content</h1>\r\n'),
(4, 1, 'ar', 'الشروط و الأحكام', '<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:justify"><strong><span style="font-size:12pt"><span style="color:#002060">احكام عامة</span></span></strong></p>\r\n\n<p dir="RTL" style="text-align:justify"><span style="color:#333333"><span style="font-size:medium">أهلاً بكم في تطبيق إزهل.</span></span></p>\r\n\n<p dir="RTL" style="text-align:justify"><span style="font-size:medium"><span style="color:#333333">في ما يلي البنود والشروط التي تخص آلية الاستخدام والدخول لتطبيق إزهل و التي تعطى الكلمات والتعابير الواردة في هذه الاتفاقية المعاني المحددة و الموضحة كالتالي </span><span dir="LTR" style="color:#333333">:</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="color:#000000"><strong>&nbsp;</strong><strong><span dir="LTR" style="font-size:12pt">&ldquo;</span></strong></span><strong><span style="font-size:12pt"><span style="color:#002060">إزهل</span></span></strong><span style="color:#000000"><strong><span style="font-size:12pt">&rdquo;: </span></strong><span style="font-size:12pt">وهو تطبيق ملك لشركة &quot; رتال العالمية &quot; وهي شركة مصنفة ذات مسؤولية محدودة</span></span><span dir="LTR" style="font-size:12pt"><span style="color:#000000">.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:justify"><strong><span dir="LTR" style="font-size:12pt"><span style="color:#000000">&ldquo;</span></span><span style="font-size:12pt"><span style="color:#002060">التطبيق</span></span></strong><span style="color:#000000"><strong><span style="font-size:12pt">&rdquo;:</span></strong><span style="font-size:12pt"> يقصد به أينما ورد في الاتفاقية &ldquo;بتطبيق إزهل&rdquo; وتعتبر كافة الصفحات و الروابط والأدوات والخواص المتفرعة من التطبيق والمتعلقة بالخدمات المقدمة منه جزء لا يتجزء من تطبيق إزهل الإلكتروني</span></span><span dir="LTR" style="font-size:12pt"><span style="color:#000000">.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:justify"><strong><span dir="LTR" style="font-size:12pt"><span style="color:#000000">&ldquo;</span></span><span style="font-size:12pt"><span style="color:#002060">العميل</span></span></strong><span style="color:#000000"><strong><span style="font-size:12pt">&rdquo;:</span></strong><span style="font-size:12pt"> ويقصد به الجهة التي تطلب الخدمة من &ldquo;التطبيق&rdquo; سواء كانت هذه الجهة شخص طبيعي أو شخص أعتباري</span></span><span dir="LTR" style="font-size:12pt"><span style="color:#000000">.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:justify"><strong><span dir="LTR" style="font-size:12pt"><span style="color:#000000">&ldquo;</span></span><span style="font-size:12pt"><span style="color:#002060">الاتفاقية</span></span></strong><span style="color:#000000"><strong><span style="font-size:12pt">&rdquo;:</span></strong><span style="font-size:12pt"> ويقصد بها اتفاقية شروط واحكام استخدام تطبيق إزهل الإلكتروني والتي تتضمن كافة الاحكام والشروط الموضحة للعميل والتي تحكم وتنظم عملية إستخدام العميل للتطبيق الإلكتروني</span></span><span dir="LTR" style="font-size:12pt"><span style="color:#000000">.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:12pt"><span style="color:#000000">يقر ويوافق العميل على ان إستخدامه التطبيق يعتبر إقرار صريح وواضح ويفيد بقيامه بقراءة وفهم بنود وأحكام هذه الاتفاقية و طريقة إستخدام التطبيق كما يعتبر قبول وموافقة صريحة منه على شروط واحكام هذه الاتفاقية والاستجابة لها وهو بكامل الاهلية المعتبرة شرعاً وقانوناً و أن استخدام العميل للتطبيق اقرار صريح منه على الالتزام والاستجابة لكافة شروط واحكام الاتفاقية و كافة الاحكام والشروط الخاصة بشركة رتال العالمية المحدودة و أنه من المعلوم للعميل بأنه وفي حالة إختيار شرط الموافقة، فإن أحكام وشروط الاتفاقية تعتبر سارية المفعول بمواجهة العميل.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:justify"><strong><span style="font-size:12pt"><span style="color:#002060">تعهد</span></span> </strong></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">انك بلغت 18 عام أو أكثر</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">أن لديك السلطة بإلزام المؤسسة &rdquo; إذا كنت ممثلاً لمؤسسة</span><span dir="LTR" style="font-size:12pt"> &rdquo;</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">أنك سوف تلتزم بكافة القوانين المحلية والدولية المعمول بها في هذا الشأن، بالاضفة الى انك تلتزم بكافة الأحكام المعمول بها بخصوص استخدام التطبيق</span><span dir="LTR" style="font-size:12pt">.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">إن المعلومات ووصف الخدمة و / أو السلعة التي ستنشرها على التطبيق بغرض البيع صحيحة ودقيقة ومفصلة ومصورة</span><span dir="LTR" style="font-size:12pt">.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">أن تعمل ضمن سياسة التطبيق الخاصة بالمحافظة على خصوصية معلومات الإتصال و التواصل، فلن تكشف عن تفاصيل معلومات و عنوانين الإتصال بك بما في ذلك أرقام الهواتف، العناوين البريدية، العناوين الإلكترونية، في أي مكان في التطبيق بما في ذلك النماذج و المنتدى و تفاصيل السلعة أو من خلال أي ملامح للبريد الإلكتروني للتطبيق</span><span dir="LTR" style="font-size:12pt">.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">لن تستخدم معلوماتك التي تحصل عليها من خلال الاتصالات اللازمة لإنجاز أي عمليات بيع إضافية خارج التطبيق أو من خلال تطبيق آخر</span><span dir="LTR" style="font-size:12pt">.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">لن تجمع معلومات عن المستخدمين الآخرين بما في ذلك عناوينهم الإلكترونية ووسائل الاتصال الأخرى</span><span dir="LTR" style="font-size:12pt">.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">لن تكشف أو تنشر أي معلومات شخصية عن المستخدمين، أو تقوم باستخدامها بأية طريقة (في نظرنا) قد تنتهك سريتهم وخصوصيتهم والقوانين المعمول بها.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:justify">&nbsp;</p>\r\n\n<p>&nbsp;</p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:justify"><strong><span style="font-size:12pt"><span style="color:#002060">شروط الاستخدام</span></span></strong></p>\r\n\n<ol>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">إن استخدام خدمات <strong>تطبيق إزهل</strong> متاحة فقط للأشخاص القادرين على تمثيل أنفسهم قانونياً وفق نظام الممكلة العربية السعودية&nbsp; و لا يمكن للأشخاص غير القادرين على تمثيل أنفسهم قانونيا وفق نظام العقود المحلي استخدام خدمات التطبيق الإلكتروني و ينبغي على كل شخص يستخدم <strong>تطبيق إزهل</strong> الالتزام بكافة الانظمة القوانين المعمول بها لتنظيم التجارة الالكترونية و التجارة عن طريق الانترنت</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">إن كنت قاصرا ( كأن يكون عمرك أقل من 18 سنة) فبإمكانك استخدام خدمات <strong>تطبيق إزهل</strong> الإلكتروني تحت إشراف أحد الوالدين أو الوصي القانوني شريطة موافقته الالتزام ببنود شروط الاستخدام. سيكون المستخدم مسؤولاً عن استخدامه خدمات التطبيق من خارج المملكة العربية السعودية وذلك بالتزامه التام بالقوانين المحلية المتبعة في تلك المنطقة و للتطبيق الحق بإلغاءحساب أي عضو لم يبلغ الـ 18 عام دون إشعار مع الإلتزام بتصفية حساباته المالية</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">هذه الشروط والأحكام تعتبر سارية المفعول ولاغية لما قبلها من أشكال التمثيل التجاري أو الاتفاقيات الشفهية أو غيرها من المفاهمات مالم يخصص بهذا الشأن شروط اضافية خاصة بمنتج أو خدمة معينة و في حال قيام أي مستخدم بالتسجيل كمؤسسة تجارية، فإن مؤسسته التجارية تكون ملزمة بكافة الشروط والاحكام الواردة في هذه الإتفاقية و ستكون ملزمة باتباع بنود الشروط والأحكام</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">لا يجوز لك بتاتاً أن تنتهك أو تحاول انتهاك الحماية الأمنية للتطبيق الإلكتروني وذلك يتضمن وليس محصوراً بالآتي</span><span dir="LTR" style="font-size:12pt">:</span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">الولوج إلى معلومات غير مخصصة لك أو الدخول إلى خادم الانترنت أو حسابٍ لست مخولاً باستخدامه بشكل رسمي.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">محاولة استكشاف أو فحص أو اختبار مدى قدرة النظام أو الشبكة أو محاولة اختراق النظام الأمني أو مستويات الحماية دون أن تكون مخولاً بذلك.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">محاولة التشويش أو التداخل على الخدمة المقدمة لأي مستخدم آخر أو مضيف أو شبكة وذلك يتضمن دون حصر نشر و إرسال الفيروسات الى التطبيق الإلكتروني، أو إثقال التطبيق أو إرسال الرسائل المتسلسلة أو البريد الإلكتروني غير المرغوب فيه أو أي وسيلة أخرى قد تضر بسلامة الشبكة</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">إرسال الرسائل غير المرغوب فيها وذلك يتضمن العروض التجارية و/ أو الإعلانات للمنتجات أو الخدمات.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">المحاكاة بغرض التزوير لعنوان بروتوكول الانترنت أو عنوان البريد الإلكتروني أو أي جزء من عنوان التطبيق الإلكتروني وإستخدامها في أي بريد الكتروني أو مجموعة بريدية</span> <span style="font-size:12pt">و إن الانتهاكات المضرة بالنظام أو أمن الشبكة سينتج عنها جزاءات مدنية وجنائية في أغلب الحالات.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">يقر ويوافق العميل وفي حالة ثبوت مخالفته لاي من احكام البند (4) والمشار الية اعلاه ، بأنه يحق لتطبيق إزهل إلغاء اي طلبات شراء أو بيع أو اي عمليات تمت من قبل العميل و/او المؤسسة. وفي هذه الحالة يقر ويوافق العميل او المؤسسة بأنه لا يترتب أية مسؤولية على تطبيق إزهل</span></span></p>\r\n\n<ol start="5">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">نحن على علم بمسؤوليتنا تجاه حماية معلوماتك الشخصية ونأخذ هذا الأمر بجدية تامة ونحن نوقن أن معلوماتك الشخصية هي واحدة من أهم الموراد لدينا و نقوم بتخزين و معالجة معلوماتك الشخصية من خلال خودامنا وحال وجود أي شكوى يرجى للتواصل مع مركز خدمة العملاء من خلال البريد الإلكتروني التابع لنا على </span><span dir="LTR" style="font-size:12pt">info@ezhal.com</span>&nbsp; </span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">قد نستخدم البريد الإلكتروني الخاص بك لنحيطك علما بالمنتجات التي قد تكون مهتما فيها وأن تبقي دوما على علم حول التخفيضات، يمكنك إلغاء الاشتراك من هذه الرسائل بمجرد النقر على رابط &quot;إلغاء الاشتراك&quot; المضاف إلى الجزء السفلي من كل بريد إلكتروني. يرجى ملاحظة أن هذا البيان لا ينطبق إلا على العملاء الذين قد اختاروا أن يتلقوا نشرتنا الإلكترونية</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">نحن لا نقوم بالمتاجرة بمعلوماتك الشخصية بأي وسيلة كانت من بيع أو تأجير لأي طرف ثالث بدون الحصول على موافقتك الصريحة في المقام الأول</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">إن عملية تسجيل المعلومات (معلوماتك الشخصية) التي تزودنا بها تستخدم فقط لإتمام معاملاتك و أيضاً للإتصال بك و يجب عليك القبول بمبدأ استخدامنا لمعلوماتك الشخصية وتحديثها وذلك للتعامل مع عملية التسجيل وللتحكم بسرية هويتك خلال عملية المتابعة لتسليم طلب الشراء والدفع الكترونياً</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">إن المعلومات الي تقدمها خلال عملية التسجيل هي بيانات محمية وفقاً لبنود حماية الخصوصية الموضحة في هذه الاتفاقية و تشكل معلوماتك الشخصية جزءا من سجلك الخاص لتعاملاتك مع خدماتنا و في حالة استخدامك <strong>تطبيق إزهل</strong> ستكون مسؤولاً عن المحافظة على سرية حسابك الشخصي و كلمة المرور بالإضافة إلى منع الوصول الى جهازك الشخصي وأنت بذلك تتحمل المسؤولية عن جميع العمليات التي يتم تنفيذها من خلال حسابك الشخصي باستخدام كلمة المرور</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">لا يتحمل <strong>تطبيق إزهل</strong> أي مسؤولية تجاه أي شخص عن أي خسارة أو أضرار قد تنشأ بسبب فشلك في حماية كلمة المرور الخاصة بك أو أي معلومات أخرى متعلقة بحسابك الشخصي و في حال الشك بوجود عمليات مشبوهة في حسابك الشخصي يرجى إخطارنا بالاتصال بنا فورا من خلال أي وسيلة</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">بموافقتك استخدام <strong>تطبيق إزهل</strong> وخدماتنا الإلكترونية فإنك بذلك توافق على استقبال رسائلنا الإلكترونية بجميع أشكالها من خلال البريد الإلكتروني أو النشرات الدورية أو الإشعارات و التنبيهات المعلن عنها و بناءاً على ذلك فأنت توافق ضمنياً على أن جميع المعاملات الإلكترونية المرسلة لك من قبلنا هي ملزمة قانونيا وتعامل معاملة المعاملات الخطية</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يحق لنا مراقبة وتسجيل وحفظ واستخدام أي مكالمة هاتفية أو بريد الكتروني أو أي شكل آخر من اشكال التواصل الإلكتروني معك وذلك لأغراض تدريبية بهدف التحقق من النصائح والملاحظات الموجهة إلينا ولتحسين وتطوير نوعية الخدمة المقدمة لعملائنا</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="font-size:12pt"><span style="color:#000000">أنت تعلم وتوافق على أن <strong>تطبيق إزهل</strong> سيقوم بإعلامك عن أي تعديل باتفاقية المستخدم، وبموجبه هذه التعديلات فإنه من الممكن أن تتضاعف التزاماتك وفقاً لأي تعديلات قد تجرى على إتفاقية الإستخدام.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="font-size:12pt"><span style="color:#000000">يقر ويوافق العميل على أن التطبيق وبمطلق صلاحيتهما ودون تحملهما المسؤولية القانونية أن تجري اية تعديلات أساسية أو فرعية على هذه الإتفاقية دون أن يتطلب ذاك موافقة إضافية من طرفك، وذلك في أي وقت وبأثر فوري، ويتم اعلامكم بهذه التعديلات إما عبر بريد إلكتروني أو عبر بث إعلان على التطبيق و موقع الويب</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يتم مراعاة أقصى حدود الدقة في عرض ألوان المنتجات في التطبيق، ولكن ما تراه من ألوان ظاهرة في جهازك يعتمد بشكل أساسي على إعدادات شاشتك وهذا يقع خارج نطاق صلاحيتنا حيث لا يمكننا التاكد بشكل جازم من إعدادات الألوان المعتمدة في شاشتك</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="font-size:12pt"><span style="color:#000000">إن نشر التفاصيل المتعلقة بالمنتجات أو الخدمات ( يتضمن ولكن لا يقتصر على : نشرات التسويق و الإعلانات والعروض التجارية وعروض المجلات والمنشورات الصغيرة) على التطبيق لا يعتبر ضماناً على توفر المنتجات أو العروض أو الأسعار سواء من خلال التسوق الإلكتروني </span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="font-size:12pt"><span style="color:#000000">قد تحدث بعض الأخطاء خلال عملية توفير المنتج أو الخدمة وتوفير المعلومات التفصيلية عن الأسعار على التطبيق الإلكتروني.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">&nbsp;لا يمكن لتطبيق إزهل تزويدك بأسعار الخدمات / المنتجات بشكل منفرد أو معرفة التكلفة الإجمالية للمنتج أو الخدمة حتى تقوم بتسليم طلبك الإلكتروني كاملاً </span><span dir="LTR" style="font-size:12pt">.</span><span style="font-size:12pt"> و في حال تم طلب وإصدار الفاتورة لمنتج أو خدمة و كان السعر غير صحيح أو كانت المعلومات غير صحيحة لورود خطأ في تسجيل السعر أو معلومات المنتجات أو الخدمات، فيحق للتطبيق في هذه الحالة إما أن يتواصل معك لتوضيح هذا الخطأ وكيفية التعامل معه أو إلغاء طلبك و إشعارك بهذا الإلغاء. و في حال تم قبول طلبك وتمت متابعته الكترونياً ، سيتم احتساب التكلفة الإجمالية وخصمها من حساب بطاقتك الإئتمانية و سنقوم بإبلاغك عن طريق البريد الإلكتروني بأن عملية الدفع تجري بالشكل الصحيح</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يقدم <strong>تطبيق إزهل</strong> إمكانية شراء المنتجات أو الخدمات أونلاين و دفع المبلغ المطلوب عن طريق الانترنت و إن جميع عمليات التحويل النقدي والدفع يجب أن تكون بالريال السعودي</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">إن نظام الدفع لدينا يتضمن عدة طرق</span> <span style="font-size:12pt">&nbsp;و أشكال من أساليب الدفع</span><span dir="LTR" style="font-size:12pt">:</span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">لعمليات الدفع من خلال الانترنت (أونلاين) : نقبل الدفع عن طريق نظام البطاقات الإئتمانية فيزا أو ماستر كارد أو عبر بوابة سداد و عبر بطاقات مدي و أخيرا عبر محفظة </span><span dir="LTR" style="font-size:12pt">PayPal</span><span style="font-size:12pt"> أو </span><span dir="LTR" style="font-size:12pt">Ezhal </span>&nbsp;</span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">لعمليات التحويل الى حسابات مصرفية خاصة بالشركة: وهي موجودة على التطبيق وجميعها داخل بنوك سعودية محليّة.</span></span></p>\r\n\n<ol start="21">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">في حالة الدفع عن طريق الانترنت ( أونلاين) سيستلم العميل إشعارا على الشاشة فور قبول عملية الدفع و لا نتحمل أي مسؤولية لو تم رفض عملية الدفع أو إلغائها من قبل مزود خدمة البطاقة الإئتمانية لأي سبب من الأسباب. يجب عليك التأكد من البنك المزود لخدمة البطاقة الإئتمانية عن سبب الرفض</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">نحن لانقوم بتخزين معلومات بطاقتك الإئتمانية على التطبيق وإن جميع المعلومات والتفاصيل التي تقوم بإدخالها من خلال بوابة الدفع الإلكترونية يتم تشفيرها بغرض الحماية الأمنية، ويتم أيضا تشفير المراسلات المتداولة من و إلى تطبيق مقدم الخدمة و لا نقوم بتقديم أي من معلومات الدفع التي تمت عن طريق التطبيق إلى شركات أخرى أو جهات فردية إلا إذا تم طلبها من قبل جهة رسمية قانونية و تتم معالجة هذه المعلومات من قبل مسؤلي الدفع لدينا</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يجب عليك التأكد من المعلومات المتعلقة ببطاقتك الإئتمانية التي تستخدمها في الدفع للخدمات الإلكترونية بأن تكون صحيحة، دقيقة و سارية المفعول، ويجب عليك استخدام البطاقة الإئتمانية التابعة قانونيا لك فقط و لن يتم استخدام أو مشاركة معلوماتك الشخصية من قبل الخدمات الإلكترونية مع أي طرف ثالث ويستثنى من ذلك التحقق من شرعية المعلومات وعدم تزويرها أو عند طلبها من القانون أو الأنظمة الشرعية أو بطلب من المحكمة و لن تكون خدمة التطبيق (أونلاين) مسؤولة بأي شكل من الأشكال عن تزوير البطاقات الإئتمانية. سيتم تحميلك كافة المسؤوليات عن استخدام البطاقات الإئتمانية المزورة وستكون مسؤولا بشكل كامل عن اثبات خلاف ذلك</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">في حال عدم تمكننا من توفير الطلب أو جزء منه فسنبلغك مباشرة بهذا الخصوص و سيتم إرجاع كامل أو جزء من المبلغ المدفوع بواسطة البطاقة الإئتمانية التي استخدمتها </span>&nbsp;</span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">إن استخدامك لخدمة الدفع الإلكتروني (أونلاين) للتطبيق الإلكتروني هو بمثابة موافقة ضمنية لالتزامك بهذه الشروط و في حال عدم موافقتك لأي بند من بنود هذه الشروط فنرجوا منك عدم استخدام هذه الخدمة</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يحق لشركه رتال العامليه، المالكة لتطبيق<strong> إزهل</strong> أن تحتفظ بحق إلغاء الطلب لأي سبب من الأسباب التالية</span><span dir="LTR" style="font-size:12pt">:</span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">رفض/ عدم قبول عملية الدفع</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">عدم مطابقة الطلب لأي بند من البنود المذكورة ضمن أحكام وشروط الشراء عبر التطبيق الالكتروني.&nbsp;</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">إذا كان عنوان التوصيل المعطى من قبل الزبون خاطئاً أو كانت معلومات الاتصال خاطئة أو لعدم القدرة على الوصول إلى الزبون.</span></span></p>\r\n\n<ol start="27">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">جميع الحقوق النشر محفوظة&nbsp; لشركة رتال العالمية المحدودة و إن كل النصوص والصور والرسومات والتصاميم المتحركة والفيديو والموسيقى وغيرها من المواد الموجودة في هذا التطبيق خاضعة لحقوق النشر وغير ذلك من حقوق الملكية الفكرية لشركة رتال العالمية المحدودة&nbsp; و لا يسمح بإعادة طبع هذه المواد أو توزيعها أو تعديلها أو إعادة نشرها على مواقع أخرى على الشبكة دون الحصول على إذن صريح ومكتوب من شركة رتال العالمية المحدودة</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="background-color:white"><span style="font-size:12pt"><span style="color:#000000">شعار إزهل والشعارات المملوكة، والكلمات والشعارات الأخرى على التطبيق، هي إما علامات تجارية مسجلة أو غير مسجلة <strong><u>للتطبيق</u></strong>، وهي محمية بحقوق وقوانين ملكية العلامات التجارية الدولية والفكرية الاخرى</span><u><span style="color:red">.</span></u></span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="background-color:white"><span style="font-size:12pt"><span style="color:#000000">كل العلامات التجارية الأخرى غير المملوكة لشركة رتال العالمية والتي تظهر على التطبيق أو التطبيق هي ملكية لأصحابها، والذين قد يكونوا أو لا يكونوا تابعين أو مرتبطين أو مرعيين من تطبيق إزهل</span></span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">العلامات التي تظهر في هذا التطبيق بما فيها، على سبيل التعداد لا الحصر، </span>&nbsp;<span style="font-size:12pt">هي علامات تجارية أو علامات خدمة خاصة بشركة رتال العاملية المحدودة&nbsp; أو الشركات التابعة لها أو شركاتها الفرعية أو الشركات المرخّصة من قبلها</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">إن المعلومات الواردة في هذا التطبيق موجهة للعملاء بشكل عام وقد لا تنطبق على بعض المناطق الجغرافية. ستقوم شركة رتال العالمية المحدودة ضمن المعقول بمساعٍ للتأكد من أن محتويات هذا التطبيق دقيقة وحديثة&nbsp; إلا أن شركة رتال العالمية المحدودة تحتفظ لنفسها بالحق في تغيير المعلومات في أي وقت و لا يجب التعويل على أي من المعلومات الواردة في هذا التطبيق، وتخلي الشركة إلى أقصى حد يسمح به القانون نفسَها من أية مسؤولية قد تنشأ عن مثل هذا التعويل و على الرغم من عمومية ما تقدّم، تخلي شركة رتال العالمية المحدودة إلى أقصى حد يسمح به القانون نفسَها من كافة المسؤوليات الناتجة عن الوصول إلى واستخدام هذا التطبيق وأي من محتوياته سواء كانت نصاً، أو رسوماً، أو تصاميم متحركة، أو فيديو، أو خلفيات، أو شاشات توقف، أو ألعاباً، أو تحميلاً أو أية مادة أو موضوع آخر</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يقبل صاحب الحساب شروط واحكام إستخدام خدمات <strong>تطبيق إزهل</strong> باستعمال اسم المستخدم وكلمة المرور ويعلم ان الوظيفة الأساسية والإستخدام الأساسي لإسم المستخدم وكلمة المرور تشبه وظيفة رمز الهاتف السري وتشبه وظيفة استخدام الرقم السري الشخصي لبطاقة الصرف الآلي, واختيارها سوف يتيح الدخول الى &quot;اسم التطبيق&quot; فورا لصاحب الحساب, وباختيار صاحب الحساب لإسم المستخدم وكلمة المرور و / أو استخدام خدمات &quot;تطبيق إزهل&quot; يعتبر قد قرأ وفهم ووافق على والتزم بالشروط والأحكام والتعديلات التالية عليها</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">اي تعليمات ترسل او تحدد بواسطة اسم المستخدم وكلمة المرور, سوف تكون ملزمة لصاحب الحساب كونها تحل محل التوقيع الفعلي بغض النظر عن اعتراض صاحب الحساب اللاحق عليها لأي سبب ويمكن الإعتماد عليها بشكل نهائي من قبل شركة رتال العالمية المحدودة&nbsp; وتعتبر تعليمات صادره من قبل صاحب الحساب</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يقوم صاحب الحساب بإدخال اسم المستخدم وكلمة المرور وعنوان البريد الإلكتروني عن طريق التسجيل في التطبيق ثم تفعيل الحساب باستخدام رقم التفعيل المستلم عن طريق الهاتف لمره واحده&nbsp; ولا يجوز لصاحب الحساب تحت اي ظرف من الظروف ان يفشي اسم المستخدم وكلمة المرور الى اي شخص اخر, ويكون صاحب الحساب مسؤول وحده عن اي خسائر او تكاليف او أي نفقات تتكبد سواء نتجت مباشرة او غير مباشرة عن إفشاء اسم المستخدم وكلمة المرور</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يوافق صاحب الحساب على استخدام &quot;<strong> تطبيق إزهل</strong> &quot; وحده كما هو منصوص عليه في هذه الإتفاقية و لن تكون شركة رتال العالمية المحدودة مسؤوله عن أي فقدان أو تلف أو تكلفة أو مصروفات من أي نوع يتحملها أو يتكبدها صاحب الحساب أو أي طرف ثالث كنتيجة لأي استخدام أو دخول إلى &quot;تطبيق إزهل&quot; بما يخالف شروط وأحكام هذه الاتفاقية لأي سبب من الأسباب</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يجوز لشركة رتال العالمية المحدودة ، بدون إشعار مسبق إلى صاحب الحساب، أن توقف استخدام &quot;<strong> تطبيق إزهل</strong> &quot; حسب تقديرها الخاص بدون إبداء أية أسباب</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">لصاحب الحساب الحق في السرية ولن تقوم شركة رتال العالمية المحدودة&nbsp; بإعطاء أي شخص خلاف موظفيها ووكلائها وممثلي مركزها الرئيسي أي معلومات خاصة عن العملاء إلا</span><span dir="LTR" style="font-size:12pt"> :</span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">عندما يوافق العميل على أن شركة رتال العالمية المحدودة&nbsp; يجوز لها تقديم المعلومات إلى آخرين</span><span dir="LTR" style="font-size:12pt">.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">عندما يطلب القانون من الشركة أن يتم إبلاغ مؤسسة النقد العربي السعودي أو أي جهة نظامية سعودية أخرى بمعلومات تطلبها تلك الجهة فيما يتعلق بالحساب</span><span dir="LTR" style="font-size:12pt">.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify">- <span style="color:#000000"><span style="font-size:12pt">عندما يطلب من الشركة أن تقدم معلومات بغرض الإلتزام بدعوى قانونية</span><span dir="LTR" style="font-size:12pt">.</span></span></p>\r\n\n<ol start="38">\r\n<li dir="RTL" style="text-align:justify"><span style="font-size:12pt"><span style="color:#000000">باستثناء ما يحظره القانون، يوافق صاحب الحساب على أنه يجوز للشركة أن تتبادل مع جهات أخرى طيبة السمعة، حسبما تراه الشركة مناسبا، معلومات عن صاحب الحساب يكون قد قدمها هو، أو حصلت عليها الشركة نتيجة للمعاملات أو أنشطة أخرى، أو من بين أشياء أخرى، لغرض تزويد صاحب الحساب بمنتجات وخدمات ترى الشركة أنها مفيدة لصاحب الحساب</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">إذا لم يرغب صاحب الحساب استلام عروض عبر الهاتف و/أو البريد من الشركة ، يجب أن يبلغ صاحب الحساب الشركة عن طريق الإتصال بالرقم المحدد في قسم خدمة العملاء، أو زيارة أحد فروع الشركة. حينئذ ستقوم الشركة بحذف إسم صاحب الحساب من قائمة البريد أو قائمة الهاتف المستخدمة لهذه الأغراض</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="font-size:12pt"><span style="color:#000000">يوافق صاحب الحساب على أن الشركة يجوز لها تحميل معلومات معينة، بما فيها معلومات تعريف العميل، على جهاز الكمبيوتر الخاص بها أو أجهزة الوصول الأخرى</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">وافقت الشركة على أن تبذل الجهود المعقولة لضمان الأداء الكامل لخدمات &quot;<strong> تطبيق إزهل</strong> ، وسوف تكون الشركة مسؤوولة عن العمل فقط بناء على تلك التعليمات المرسلة و التي يتم استلامها بالفعل ولن تتحمل الشركة المسؤولية عن الاعطال في مرافق الإتصالات التي ليست تحت سيطرتها، والتي يمكن أن تؤثر على دقة أو مواعيد الرسائل التي يرسلها صاحب الحساب</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">لن تكون الشركة مسؤوله عن أي خسائر أو تأخير في إرسال التعليمات والذي ينشأ عن استخدام أي مزود خدمات وصول أو بسبب أي برمجيات تصفح، ولن تكون الشركة مسؤولهً كذلك في حالة إعطاء صاحب الحساب تعليمات غير صحيحة أو غير كاملة</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">لن تكون الشركة مسؤولة عن أي فيروسات لأجهزة الهواتف النقالة أو مشاكل معنية بها، والتي يمكن أن تعزى للخدمات المقدمة من أي مزود خدمة وصول أو التي يمكن أن تنشأ من جهاز صاحب الحساب</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يستخدم <strong>تطبيق إزهل</strong> برمجيات خاصة مملوكة لشركة رتال العالمية المحدودة. وإذا قامت الشركة بتزويد صاحب الحساب ببرمجيات للإستخدام مع نظام <strong>تطبيق إزهل</strong> ، فإن صاحب الحساب يمنح ترخيصا غير حصري لإستخدام تلك البرمجيات وهذا الترخيص يتيح له استخدام البرمجيات فقط لأغراضه الخاصة كما هي منصوص عليها في هذه الإتفاقية</span><span dir="LTR" style="font-size:12pt">.</span> </span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يعطي</span> <strong><span style="font-size:12pt">تطبيق إزهل</span></strong><span style="font-size:12pt"> صاحب الحساب امكانية الوصول إلى خدمات ومعلومات من الشركة، والتي يمكن أن تقدم بخصائص وسمات مميزة و إن هذه الخدمات والمعلومات والسمات المميزة مملوكة لشركة رتال العالمية المحدودة ، ويجوز لصاحب الحساب أن يستخدم &quot;<strong> تطبيق إزهل</strong> &quot; فقط لإستخداماته الشخصية ولا يجوز له نسخها أو بيعها أو توزيع كل أو أي جزء من المعلومات المقدمة له في التطبيق.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">إذا احتاج صاحب الحساب مساعدة أو رغب في الإتصال بالشركة، يمكنه إما التواصل مباشرة مع مركز خدمة العملاء من خلال البريد الإلكتروني على العنوان </span><span dir="LTR" style="font-size:12pt">info@ezhal.com</span> </span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يوافق صاحب الحساب على أنه يجوز للشركة أن تسجل المحادثات التي يجريها موظفو الشركة معه. وتقوم الشركة بعمل ذلك من حين لآخر من أجل مراقبة الخدمة ودقة المعلومات التي يقدمها موظفو الشركة إلى صاحب الحساب، ومن أجل ضمان الإلتزام بتعليمات صاحب الحساب</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يمكن لموظفي خدمات ما بعد البيع المساعدة في حل أي مشكلات تتعلق بتطبثق إزهل، لكنهم غير مفوضين بالتخلي عن أي من أحكام هذه الإتفاقية</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يجب على العميل تحديث البريد الإلكتروني من خلال &quot; تطبيق أزها&quot; لإستلام جميع الرسائل الإلكترونية المرسلة من التطبيق و المتعلقة بطلبات العميل كما يجوز لصاحب الحساب حفظ الرسائل المرسلة لرجوع اليها في اي وقت</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يجب أن يتأكد صاحب الحساب من حفظ إسم المستخدم وكلمة المرور الخاص به، حيث أن هذه الرموز هي وسائل هامة لحماية صاحب الحساب</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="font-size:12pt"><span style="color:#000000">يجب على صاحب الحساب ان لا يفصح عن معلومات الدخول تطبيق إزهل كما يجب الأبتعاد عن استخدام الأجهزة العامة او حفظ معلومات الدخول عليها</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">يوافق صاحب الحساب على قراءة والإلتزام بالنصائح والتوصيات الأمنية التي يقدمها تطبيق إزهل لصاحب الحساب من وقت إلى آخر و الرسائل التنبيه والتحذير التي يعرضها بصفة مستمرة. كما توافق الشركة على أن هذه النصائح ليست بالضرورة شاملة وأن صاحب الحساب سوف يراجع مواقع أخرى متخصصة من أجل البقاء على علم واطلاع بأحدث المعايير / المخاطر / التوصيات وتنفيذها لحماية مصالحه، بما فيها رقم التعريف الخاص به وكلمة المرور. ولن تكون الشركة مسؤوله عن أي أضرار يمكن أن يتعرض لها صاحب الحساب نتيجة لخسارة أو إفشاء أو سوء استخدام رقم التعريف أو كلمة المرور الخاصة به</span><span dir="LTR" style="font-size:12pt">.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">اتفاقية المستخدم هذه محكومة ومصاغة بحسب قانون المملكة العربية السعودية، وهي خاضعة تماماً وكلياً للتشريع المعمول به في المحاكم المملكة العربية السعودية</span> </span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:12pt">إذا كانت أية فقرة واردة في اتفاقية المستخدم هذه غير صالحة أو ملغاة أو أنها لأي سبب لم تعد نافذة، فإن مثل هذه الفقرة لا تلغي صلاحية بقية الفقرات الواردة في الاتفاقية. هذه الاتفاقية (والتي تعدل بين حين وآخر بحسب بنودها) تضع كافة الخطوط العريضة للتفاهم والاتفاق بينك وبين التطبيق أو تطبيق الويب مع الاعتبار لما يلي :</span> <span style="font-size:12pt">ليس من حق أي شخص لا يكون طرفاً في اتفاقية المستخدم هذه أن يفرض أية بنود أو شروط فيها.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="font-size:12pt"><span style="color:#000000">إذا تمت ترجمة اتفاقية المستخدم لأي لغة أخرى غير الإنجليزية، سواء على التطبيق أو بطرق أخرى، فإن النص العربي يظل هو السائد.</span></span></li>\r\n</ol>\r\n\n<p>&nbsp;</p>\r\n');
INSERT INTO `am_static_pages_translations` (`id`, `static_page_id`, `locale`, `title`, `content`) VALUES
(5, 1, 'en', 'Terms And Conditions', '<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="font-size:12.0pt"><span style="color:#002060">General Conditions</span></span></strong></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Welcome to EZHAL App. Bellow the Terms and Conditions of Use and Access to EZHAL App. These following terms and expressions in this Agreement shall have the meanings assigned to them as follows</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">:</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">&quot;</span><strong><span style="font-size:12.0pt"><span style="color:#002060">Ezhal App</span></span></strong><span style="font-size:12.0pt">&rdquo; is owned by Retal International, a Company liability company</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">&quot;</span><strong><span style="font-size:12.0pt"><span style="color:#002060">Application</span></span></strong><span style="font-size:12.0pt">&quot; means any reference in the Agreement to the &quot;Application of Exclusion&quot;. All pages, links, tools and attributes of the Application relating to the Services provided by it are an integral part of the Application</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">&quot;</span><strong><span style="font-size:12.0pt"><span style="color:#002060">Client</span></span></strong><span style="font-size:12.0pt">&quot; means the entity requesting the Service from the &quot;Application&quot; whether that entity is a natural person or a legal person</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">&quot;</span><strong><span style="font-size:12.0pt"><span style="color:#002060">Agreement</span></span></strong><span style="font-size:12.0pt">&quot; means the Terms and Conditions of Use of Ezhal Application which includes all the terms and conditions set out for customer which govern the Customer&#39;s use of the Electronic Application</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The Client acknowledges and agrees that the use of the application is a clear and explicit acknowledgment that he will read and understand the terms and conditions of this agreement and the manner of using the application. The acceptance and express consent of the application to the terms and conditions of this agreement and its response shall be fully legal.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">To comply with and comply with all the terms and conditions of the Agreement and all the terms and conditions of Retal International Company and it is known to the client that if the condition of approval is selected, the terms and conditions of the agreement are considered approved by the client.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="font-size:12.0pt"><span style="color:#002060">Commitment</span></span></strong></span></span></p>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">You are 18 years or older</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">That you have the authority to bind the institution &quot;if you represent the institution</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">&quot;</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">You will abide by all applicable local and international laws in this regard, in addition to you abide by all applicable provisions regarding the use of the application</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">That, t</span><span style="font-size:12.0pt">he information and description of the service and / or the goods to be published on the application for sale are correct, accurate, detailed and illustrated</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">To work within the application policy of maintaining the privacy of contact information and communication, you will not disclose the details of information and contact addresses including phone numbers, e-mail addresses, e-mail addresses, anywhere in the application including models, Or through any email features of the application</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">That y</span><span style="font-size:12.0pt">ou will not use your information through communications required to perform any additional sales outside the application or through another application</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Will not collect information about other users including their email address and other means of communication</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">You will not disclose or post any personal information about users, or use them in any way (in our opinion) that may violate their privacy, privacy and applicable laws</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="font-size:12.0pt"><span style="color:#002060">Terms of use</span></span></strong></span></span></p>\r\n\n<ol>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The use of application services is available only to persons who can legally represent themselves according to the system of the Kingdom of Saudi Arabia. Persons who cannot legally represent themselves under the local contract system cannot use the e-application services applicable to the regulation of e-commerce and trade through the Internet</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">If you are a minor (under 18 years of age), you may use Ezhal App Services under the supervision of a parent or legal guardian, provided that you agree to be bound by the terms of use. The user will be responsible for using the application services outside of Saudi Arabia by fully complying with local laws in that area and applying the right to disqualify any member who has not attained the age of 18 years without notice and with the obligation to liquidate his accounts</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">These Terms and Conditions shall be valid and void for any other forms of commercial representation, oral agreements or other understandings, unless otherwise specified for a specific product or service. In the event that any user registers as a commercial enterprise, his business shall be bound by all the terms and conditions in this Agreement and will be bound by the terms and conditions</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">You may not infringe or attempt to violate the security protection of the electronic application, including but not Company to</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">:</span></span></span>\r\n<ul style="list-style-type:circle">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Access to information that is not intended for you or access to an Internet server or account that you are not authorized to use officially</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Attempting to explore or test the capability of the system or the network or attempt to penetrate the security system or protection levels without being authorized to do so</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Attempting to tamper with or interfere with the service provided to any other user, host or network, including but not Company to spreading and sending viruses to the electronic application, overloading the application, sending unsolicited messages, spamming or any other means that may harm the integrity of the network</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Sending spam including commercial offers and / or advertisements for products or services</span><span dir="RTL" lang="AR-SA" style="font-size:12.0pt">.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Simulation for the purpose of forgery of an IP address, e-mail address or any part of the e-mail address and use in any e-mail or mailing group. Harmful violations of the system or network security will result in civil and criminal penalties in most cases.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The Client acknowledges and agrees that, in case of breach of any of the provisions of clause (4), the application shall be allowed to cancel any purchase or sale orders or any transactions performed by the customer and / or the institution. In this case, the Client or the Enterprise acknowledges and agrees that no liability for an application is permitted</span></span></span></li>\r\n</ul>\r\n</li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">We are aware of our responsibility to protect your personal information. We take this very seriously and we believe that your personal information is one of our most important resources. We store and process your personal information through our servers. If you have any complaints, please contact our customer service center. This number 925555000 or via our e-mail at </span><a href="mailto:info@ezhal.com" style="color:#0563c1; text-decoration:underline"><span style="font-size:12.0pt">info@ezhal.com</span></a> </span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">We may use your e-mail to inform you of the products you may be interested in and always be aware of the discounts. You can unsubscribe from these messages by simply clicking the &quot;unsubscribe&quot; link added to the bottom of each email. Please note that this statement applies only to customers who have chosen to receive our newsletter.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">We do not trade your personal information in any way whatsoever from selling or renting to any third party without your express consent in the first place.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The process of recording the information (personal information) you provide us is used only to complete your transactions and also to contact you. You must accept the principle of using and updating your personal information in order to handle the registration process and to control your identity during the follow-up process for the delivery of the purchase order and payment electronically.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The information you provide during the registration process is protected according to the terms of the privacy protection set out in this agreement and your personal information is part of your personal record for your transactions with our services. If you use Ezhal App, you will be responsible for maintaining the confidentiality of your personal account and password, prevent access to your computer and you are responsible for all transactions that are performed with your personal account using your password.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Application shall not incur any liability to any person for any loss or damage that may arise due to your failure to protect your password or any other information relating to your personal account. If suspicious transactions are suspected in your personal account, please notify us immediately through any way.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">By agreeing to use Ezhal App and our services, you agree to receive e-mail in all its forms, periodicals, notices and alerts. You hereby implicitly agree that all electronic transactions sent to you by us are legally binding and transaction of linear transactions.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">We have the right to monitor, record, save and use any telephone call, e-mail or any other form of electronic communication with you for training purposes in order to verify the advice and observations directed to us and to improve and develop the quality of service provided to our customers.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">You acknowledge and agree that the application will notify you for any modification to the User Agreement. Under these amendments, your obligations may be multiplied by any amendments to the Terms of Use.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Customer acknowledges and agrees that the application and with absolute disqualified and without disclaim legal responsibility to conduct any basic or sub-amendments to this agreement without requiring an additional approval from you, at any time with immediate effect and is to inform you of these amendments, either through e-mail or through Broadcast an adv on the app and the web site</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The maximum resolution of product color display is taken into consideration in the application, but what you see in your device depends primarily on your screen settings and this is outside our scope as we cannot confirm definitively the color settings supported on your screen.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The publication of details about products or services (including, but not Company to: marketing brochures, advertisements, trade shows, magazine offers and small publications) on the application is not a guarantee of the availability of products and services, offers or prices either through electronic shopping</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Some errors may occur during the process of providing the product or service and provide detailed information about prices on the electronic application.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The application cannot provide you with the prices of the services / products individually or the total cost of the product or service until you have delivered your entire electronic application.</span></span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">If the invoice for the requested product or service is incorrect or the product &amp; service description is incorrect due to registration error, in this case, either we will contact you to clarify this error and how to deal with it or cancel your order and Notify you of this cancellation.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">If your application is accepted and monitored electronically, the total cost will be deducted from your credit card account and we will inform you by e-mail that the payment process is correct.</span></span></span></p>\r\n\n<ol start="19">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Ezhal App simplifies the ability to purchase products or services online and to pay the required amount through Internet and that all cash transfers and payment must be in Saudi Riyals.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Our payment system includes several methods &amp; forms of payment methods:</span></span></span></li>\r\n</ol>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">For online payment (online): We accept payment through credit card system (Visa, Mastercard) or SADAD gateway, via mada cards and finally via PayPal and Ezhal wallet)</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">For transfers to the company bank accounts: They are on the application and all within local Saudi banks.</span></span></span></li>\r\n</ul>\r\n\n<ol start="21">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">In case of online payment, the customer will receive a notice on the screen once the payment is accepted and we will not take any responsibility if the payment is rejected or canceled by the credit card provider for any reason. You should check with the credit card provider for the reason for the rejection.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">We do not store credit card information on the application and all the information and details that you enter through the payment portal is encrypted for the purpose of security protection, and are also traded mail encryption and to the application service provider, and we do not provide any payment information that has about to be applied to other companies or individual entities unless requested by an official legal authority and processed by our payment officers.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">You must make sure that your credit card information used in the electronic payment services are correct, accurate and valid, and you must use only a your own credit card and that you will not use or share your personal information by e-services with any third party Except that the verification of the legitimacy of information and not falsification or when required by the law or regulations or the legitimacy of the court and the application service (online) is not responsible in any way for fraud credit cards. You will be charged with all use of counterfeit credit cards and you will be fully responsible for proving otherwise.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">If we are unable to provide you with the selected service or part of it, we will inform you directly in this regard and we will return full or part of the amount paid by the credit card that you have used</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Your use of the electronic payment service (online) for the electronic application is an implied acceptance of your compliance with these terms. If you do not agree to any of these terms, we ask you not to use this service.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Retal Corporation, the owner of the application, reserves the right to cancel the application for any of the following reasons:</span></span></span></li>\r\n</ol>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Reject / Disallow payment</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Do not match the request for any of the items mentioned in the terms and conditions of purchase through the electronic application.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">If the delivery address given by the customer is wrong or the contact information is wrong or because of inability to reach the customer.</span></span></span></li>\r\n</ul>\r\n\n<ol start="27">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">All copyrights, images, graphics, mobile designs, videos, music and other materials contained in this application are subject to copyright and other intellectual property rights of Retal International Company. &nbsp;Any Reproduction, distribution, or Modification or republishing on other web sites without the express written permission of Retal International Company is forbidden and against the law</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">&nbsp;Ezhal Logo and any other logos on the application are either registered or unregistered trademarks of the application and are protected by the rights and laws of ownership of other international and intellectual trademarks.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">&nbsp;All other trademarks not owned by Retal International that appear on the Application or web site are the property of their respective owners, who may or may not be affiliated, linked or sponsored by the Application.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The brands appearing in this application, including but not Company to, are trademarks or service brands of Retal International Company, its subsidiaries or companies licensed by it.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The information contained in this application is intended for customers in general and may not apply to certain geographical areas. Retal International Company will make reasonable efforts to ensure that the contents of this application are accurate and up-to-date. </span></span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0.5in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">However, Retal International Company reserves the right to change the information at any time and no reliance should be placed on any of the information contained in this application. By the same law of any liability that may arise from such reliability and in spite of the generality of the above, Retal International Company disclaims to the full extent permitted by law itself from all responsibilities resulting from access to and use of this application and any of its contents, whether text, Animation, video, wallpapers, screensavers, games, downloads, or any other material or subject.</span></span></span></p>\r\n\n<ol start="32">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The account holder accepts the terms and conditions of use of Ezhal App, using the user name and password, and knows that the basic function and basic use of the user name and password is similar to the SIM card function and is similar to the use of the ATM PIN. Immediately to the Account Holder, and by choosing the account holder for the user name, password and / or use of the Ezhal App services, has read, understood, accepted and adhered to the following terms, conditions and amendments.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Any instructions sent or determined by the user name and password shall be binding on the account holder as being substituted for the actual signature regardless of the objection of the subsequent account holder for any reason and can be finally relied upon by Retal International Company and consider these instructions issued by the owner of the Account.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The account holder will enter the user name, password and e-mail address by registering in the application and activate the account using the activation number received by telephone for one time. Under no circumstances shall the account holder disclose the user name and password to any other person. The Account Holder shall be solely responsible for any losses, costs or expenses incurred, whether caused directly or indirectly by the disclosure of the user name and password.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The Account Holder agrees to use &ldquo;Ezhal App&rdquo; as set out in this Agreement and Retal International Company shall not be responsible for any loss, damage, or cost or expense of any kind incurred by the account holder or any third party as a result of any use or access to &ldquo;Ezhal App&quot; in violation of the terms and conditions of this Agreement for any reason.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Retal International Company may, without prior notice to the Account Holder, discontinue the use of the Application to its discretion without giving any reasons.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The Account Holder shall have the right of confidentiality and Retal International Company shall not give to any person other than its employees, agents and representatives of its headquarters any special information about customers except:</span></span></span></li>\r\n</ol>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">When Customer agrees that Retal International Company may provide information to others.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">When, by law, Retal Company is requested to provide the Saudi Arabian Monetary Agency or any other Saudi regulatory agency, any information in respect of the account.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">When the company is required to provide information for the purpose of complying with a legal claim.</span></span></span></li>\r\n</ul>\r\n\n<ol start="38">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Except as prohibited by law, the Account Holder agrees that the Retal Company may exchange with other reputable entities, as the Company deems appropriate, information about the account holder that it has provided, or acquired by the Company as a result of transactions or other activities, or, for the purpose of providing the Account Holder with products and services that the Company deems useful to the Account Holder</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">If the account holder does not wish to receive offers via telephone and / or mail from the company, the account holder must inform the company by calling the number specified in the customer service section or by email at <a href="mailto:support@exhal.com" style="color:#0563c1; text-decoration:underline">support@exhal.com</a> . The company will then delete the account holder&#39;s name from the mailing list or telephone list used for these purposes (within 3 working days).</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">&nbsp;The Account Holder agrees that the Company may upload certain information, including Customer Identification Information, on its own computer or other access devices.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Retal Company agrees that reasonable efforts are taken to ensure the full performance of the Ezhal App Services and the Company shall be responsible for the work only on the basis of such instructions already received and shall not be liable for faults in communications facilities not under its control, Affect the accuracy or dates of messages sent by the account holder.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The Company shall not be responsible for any loss or delay in sending instructions arising from the use of any access service provider or by any navigation software, nor shall the company be liable in the event that the account holder is given incorrect or incomplete instructions.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The Company shall not be responsible for any viruses or related problems of mobile devices, which may be attributable to any provided services by any Access Service Provider or which may arise from the Account Holder&#39;s device.</span></span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0.5in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ol start="44">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Ezhal App is using special software owned by Retal Company. If the Company provides the Account Holder with software to be used with Ezhal App system, the Account Holder grants a non-exclusive license to use the Software and this License allows him to use the Software solely for his own purposes as provided for in this Agreement.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Ezhal App allow the Account Holder services and information of the Company, which may be provided with distinctive features. Such services, information and distinctive features are owned by Retal International Company. The Account Holder may use Ezhal App for only for personal use. His not allowed to copy, sell or distribute all or any part of the information provided in the application.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">​​If the account holder needs assistance or wishes to contact the company, he can either communicate directly with the customer service center through the number 9255550000 or via email, on <a href="mailto:info@ezhal.com" style="color:#0563c1; text-decoration:underline">info@ezhal.com</a> </span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The Account Holder agrees that Retal Company may record the conversations of the Company&#39;s staff with him. The Company does so from time to time in order to monitor the service and accuracy of the information provided by the Company&#39;s employees to the Account Holder, and to ensure compliance with the Account Holder&#39;s instructions.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The Customer Service employees can assist in resolving any problems with Ezhal App System but are not authorized to waive any provision of this Agreement.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The customer must update his e-mail address through Ezhal App in order to receive all e-mails sent from the application and related to the client&#39;s requests. The account holder may also save the messages sent for reference at any time.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The account holder must ensure that his or her username and password are saved, as these data are important to protect his account.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The account holder must not disclose Ezhal App login information should. He must also refrain from using public devices or keeping access information on them be avoided.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">The account holder agrees to read and abide the security advice and recommendations provided by Ezhal App to the account holder from time to time and the alert and warning messages that he presents on an ongoing basis. The Company agrees that such advice is not necessarily exhaustive and that the Account Holder will review other specialized sites in order to stay informed, updated and / or implemented to protect their interests, including their ID and password. The Company shall not be liable for any damages that may be incurred by the Account Holder as a result of loss, disclosure or misuse of his / her identification number or password.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">This User Agreement is governed by and construed in accordance with the law of the Kingdom of Saudi Arabia and is fully subject to the applicable legislation in the courts of the Kingdom of Saudi Arabia</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">If any provision of this User Agreement is invalid or void or for any reason no longer applicable, such paragraph shall not invalidate the rest of the provisions of the Convention. This Agreement (which is amended from time to time as per its terms) sets out all the outlines of understanding and agreement between you and the Mobile or Web App taking into account the following: No person who is not a party to this User Agreement shall have the right to impose any terms or conditions therein</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">If the user&#39;s agreement is translated into any language other than English, whether in the application or in other ways, the Arabic text remains the dominant one.</span></span></span></li>\r\n</ol>\r\n'),
(6, 1, 'fr', 'Termes et conditions', '<pre>\r\nTermes et conditions</pre>\r\n');
INSERT INTO `am_static_pages_translations` (`id`, `static_page_id`, `locale`, `title`, `content`) VALUES
(7, 2, 'ar', 'سياسة الخصوصية', '<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:12pt"><span style="color:#000000">شركة رتال العالمية المحدودة، صاحبة تطبيق </span><strong><span style="color:#002060">إزهل</span></strong> <span style="color:#000000">، تحترم خصوصيتك، و تسعي لتتوافق و المتطلبات القانونية المعمول بها في ما يتعلق بجمع البيانات و معالجتها و نقلها بإستخدام </span><strong><span style="color:#002060">تطبيق إزهل</span></strong><span style="color:#000000"> أو الخدمات المقدمة من خلاله (و بالتالي الموافقة على شرروط الإستخدام)، فإنك توافق على أن تستخدم شركة رتال العالمية للمعلومات الخاصة بك، على النحو المبين في هذه الخصوصية. كما ان إستخدامك لتطبيق </span><strong><span style="color:#002060">إزهل</span></strong><span style="color:#000000">، يخضع لموافقتك على شروط إستخدام التطبيق و سياسة الخصوصية هذه. فإن كنت لا تقبل بها، يجب التوقف على إستخدام أي من خدمات التطبيق.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:medium"><span style="color:#000000">نحن ملتزمون بالحفاظ على خصوصية الأعضاء المسجلين و الزوار الذين يستخدمون أو يقومون بزيارة </span><strong><span style="color:#002060">تطبيق إزهل</span></strong></span><span style="color:#000000"><span style="font-size:medium"> و نأمل من خلال هذا البيان شرح الطريقة التي سيتم إستخدام بياناتك بما في ذلك البيانات و المعلومات الشخصية الخاصة بك و التي نحصل عليها منك أثناء إستخدامك للتطبيق.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">المعلومات التي سيتم تجميعها لدينا تعتبر جزء مهم من عملنا و نحن لسنا بصدد الترتيب لبيعها كون ذلك لا يعتبر من مجال عملنا. نحن نتبادل المعلومات التي نجمعها على النحو المبين أدناه مع فروع التابعة لشركة رتال العالمية و التي إما أن تكون خاضعة لسياسة الخصوصية هذه أو على الأقل تقوم بإتباع الممارسات الوقائية مثل تلك الموصوفة في فقرة الخصوصية.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify"><strong><span style="font-size:12pt"><span style="color:#002060"><span style="font-family:Wingdings">v </span>جمع المعلومات الشخصية و إستخدامها</span></span></strong></p>\r\n\n<ol>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="color:#000000">&nbsp; </span></strong><span style="font-size:medium"><span style="color:#000000">إثناء إستخدامك </span><strong><span style="color:#002060">تطبيق إزهل</span></strong></span><span style="color:#000000"><span style="font-size:medium">، سو ف تزودنا بمعلومات معينة كما هو مذكور أدناه و الذي يشار إليه<strong> بـــ &quot; معلومات شخصية &quot; ، </strong>و التي قد نقوم بتجميعها و تخزينها و إستخدامها لتوفير الخدمات و تنفيذ الإلتزامات التعاقدية و غيرها مثل السماح لنا أن نفهم مستخدمينا على نحو أفضل و تحسين تجربة و أداء التطيق للمستخدمين.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><strong>&nbsp;</strong><span style="font-size:medium">تتنوع المعلومات الشخصية كالتالي :</span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">-</span>&nbsp; </span></strong><span style="font-size:medium"><span style="color:#000000">معلومات عن إسمك و عنوانك و رقم الهاتف و عنوان البريد الإلكتروني و الفواتير و المعلوات الخاصة بالطلبات المنفذة من بيان الطلبات، تواريخها، الخصومات الممنوحة، المعلومات حول الزيارات الخاصة بك و إستخدام </span><strong><span style="color:#002060">تطبيق إزهل</span></strong></span><span style="color:#000000"><span style="font-size:medium"> بما في ذلك التطبيق الجغرافي، نوع المتفحص ( البراوزر) و الإصدار و نظام التشغيل و مصدر الإحالة و مدة الزيارة و ععدد الصفحات و ... إلخ.)</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">-</span>&nbsp; </span></strong><span style="font-size:medium"><span style="color:#000000">معلومات تتعلق بأي معاملات تتم بينك و بيننا أو في ما يتعلق بـــ</span><strong><span style="color:#002060">تطبيق إزهل</span></strong></span><span style="color:#000000"><span style="font-size:medium"> بما في ذلك المعلومات المتعلقة بأي من مشترياتك من الخدمات المنفذة</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><strong><span style="font-size:medium">-</span> &nbsp; </strong><span style="font-size:medium">المعلومات التي تزودنا بها عند التسجيل كمستخدم مسجل</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">-</span> </span></strong><span style="font-size:medium"><span style="color:#000000">المعلومات التي تزودنا بها للإشتراك في خدمات </span><strong><span style="color:#002060">تطبيق إزهل</span></strong></span><span style="color:#000000"><span style="font-size:medium"> كإختصارات البريد الإلكتروني، النشرات الإلكترونية الإخبارية و غيرها</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><strong><span style="font-size:medium">-</span> </strong><span style="font-size:medium">أي معلومات أخرى تختار إرسالها لنا، و آراء بما في ذلك مراجعات عن الخدمات</span></span></p>\r\n\n<ol start="3">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><strong>&nbsp; </strong><strong><span style="font-size:medium">قد نستخدم المعلوات الشخصية التي تقدمها أو التي تم الحصول عليها من قبلنا :</span></strong></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span> &nbsp; &nbsp; </span><span style="font-size:medium"><span style="color:#000000">لتسجيلك على </span><strong><span style="color:#002060">تطبيق إزهل</span></strong><span style="color:#000000"> و إدارة و توفير الخدمات لدينا كما هو مذكور في </span><strong><span style="color:#002060">تطبيق إزهل</span></strong></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span> &nbsp; <span style="font-size:medium">لكي نوفي إتفاقنا على توفير الخدمات لك بما في ذلك تلك التي هي متعلقة بشراء المنتجات و تجهيزها و الحصول على المبالغ الواجب دفعها</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span>&nbsp; <span style="font-size:medium">إجراء تحليل و معرفة التفضيلات الشخصية الخاصة بالتسوق لديك لتمكيننا من مراجعة و و تطوير و تحسين الخدمات التي نقدمها و توفير المعلومات ذات صلة بك و لزبائننا الآخرين من خلال برامجنا التسزيقية.</span></span></p>\r\n\n<p>&nbsp;</p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span>&nbsp; <span style="font-size:medium">قد نستخدم معلوماتك الشخصية لإتخاذ قرار حول إستخدام التكنولوجيا الآلية، على سبيل المثال الإختيار التلقائي للخدمات و المنتجات التي نعتقد أنها تهمك من خلال معلوماتك المحفوظة لدينا مع العلم بأننا قد نبقيك على علم بهذه الخدمات و المنتجات بما في ذلك الالعروض و المسابقات عن طريق أي من الطرق التالية :</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:144px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">o</span> &nbsp;&nbsp; <span style="font-size:medium">البريد الإلكتوني</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:144px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">o</span>&nbsp; <span style="font-size:medium">الرسائل الإلكترونية</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:144px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">o</span> &nbsp; <span style="font-size:medium">الرسائل النصية</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:144px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">o</span> &nbsp; <span style="font-size:medium">البريد</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:144px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">o</span> &nbsp; <span style="font-size:medium">الفاكس</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:144px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">o</span> &nbsp; <span style="font-size:medium">الهاتف </span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:144px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">o</span>&nbsp; <span style="font-size:medium">و غيرها من طرق أخرى</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span> &nbsp;&nbsp; <span style="font-size:medium">لإدارة أي سحوبات على جوائز أو مسابقات قد ترغب في المشاركة فيها</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ol start="4">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><strong><span style="font-size:medium">قد نضيف المعلومات الشخصية التي تزودنا بها إلى المعلومات التي نتلقاها من أطراف ثالثة</span></strong></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:72px; text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></strong></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify"><u><strong><span style="color:#002060"><span style="font-size:medium">منع الغش</span></span></strong></u></p>\r\n\n<ol start="5">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000">&nbsp; <span style="font-size:medium">من أجل حماية عملائنا و حمايتنا من الإحتيال و السرقة، قد نشارك كل أو أي من المعلومات الشخصية التي نحصل عليها ( على سبيل المثال، لتأكيد الهوية و غيرها من المعلومات في سجلات العملاء، بما في ذلك إدارتك للحساب الخاص بك)، مع غيرها من فروع و شركات المجموعة التابعة لشركة رتال العالمية و أطراف ثالثة أخرى و مؤسسات مالية و غيرها، بما في ذلك هيئات تنفيذ القانونالمشاركة في منع الغش و الكشف عن مرتكبي الجنح.</span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:72px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify"><u><strong><span style="color:#002060"><span style="font-size:medium">المكالمات الهاتفية</span></span></strong></u></p>\r\n\n<ol start="6">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000">&nbsp; <span style="font-size:medium">قد يتم تسجيل جميع المكالمات الهاتفية (الواردة/الصادرة) للتحقق من المحتوى، و يمكن إستخدامها جنبا إلى جنب مع بياناتك لأغراض تتعلق بالإمتثال التنظيمي و مراقبة الجودةو و منع أو الكشف عن النشاط الإجرامي و لحل المشاكل</span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:72px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify"><u><strong><span style="color:#002060"><span style="font-size:medium">الكشف عن المعلوات الخاصة بك</span></span></strong></u></p>\r\n\n<ol start="7">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:medium">في إطار و سبل بذل &nbsp;كل الجهود اللازمة لحماية و الحفاض على سرية المعلومات المقدمة لنا، فإننا قد نشارك معلوماتك الشخصية مع مجموعة شركات أخرى أو فروعها التابعة لشركة رتال العالمية و أطراف أخرى و شركات و تجار التجزئة و منظمات التي تزودنا بالمنتجات و الخدمات التي نقدمها لك من خلال التطبيق و ذلك للأسباب التالية :</span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span>&nbsp; <span style="font-size:medium">للشركات و منظمات أخرى بهدف إجراء أي سحوبات على جوائز أو مسابقات</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span> &nbsp; <span style="font-size:medium">لوكلائنا أو موظفينا أو أطراف ثالثة تقوم بتقديم خدمات لنا</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span> &nbsp; <span style="font-size:medium">أي شخص نقوم بتعيينه أو نقل حقوقنا و الواجبات التي ينص عليها إتفاقنا معهم</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span> &nbsp; <span style="font-size:medium">إذا كان يتوجب علينا ذلك، أو إذا كان القانون يجبرنا على القيام بذلك إما بإتخاذ أي إجراءات&nbsp; قانونية أو&nbsp; إجراءات قانونية مستقبلية، أو من أي إقامة أو ممارسة أو الدفاع على حقوقنا القانونية ( بما في ذلك توفير معلومات للآخرين لأغراض منع الغش و الحد من مخاطر الإئتمان)</span></span></p>\r\n\n<ol start="8">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">إذا تم بيع شركة رتال العالمية أو الخدمة لطرف ثالث، أو خلاف عن ذلك تصبح شركة رتال موضوع دمج أو إرتباط أو إستحواذ، فإنه يصبح من الضروري بالنسبة لنا نقل المعلومات الشخصية لطرف ثالث، و شركة رتال في مثل هذه الحالة تتطلب أن يعالج الطرف الثالث معلوماتك الشخصية بنفس مستوي الرعاية التي كنا نوفرها لك.&nbsp; </span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify"><u><strong><span style="color:#002060"><span style="font-size:medium">الكوكيز</span></span></strong></u></p>\r\n\n<ol start="9">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000">&nbsp;</span><span style="font-size:medium"><span style="color:#000000">التكنولوجيا الجديدة و الناشئة على شبكة الإنترنت تساعدنا على جعل تجربة الزائر متفقة مع ميوله. و قد تقوم شركة رتال العالمية بإستخدام هذه التكنولوجيا بما في ذلك الكوكيز أو غيرها من التكنولوجيا لتذكر المعلومات الخاصة بك عند إستخدام </span><strong><span style="color:#002060">تطبيق إزهل</span></strong><span style="color:#000000"> و التي بدورها تستخدم هذه التقنيات لتتبع النشاط على التطبيق، و إعداد التقارير و تقييم الإتجاهات، و رصد ذلك بالطريقة التي يتم بها إستخدام </span><strong><span style="color:#002060">تطبيق إزهل. </span></strong><span style="color:#000000">&nbsp;و بالموافقة على شروط الإستخدام و سياسة خصوصية </span><strong><span style="color:#002060">تطبيق إزهل</span></strong><span style="color:#000000"> فإنك تؤكد موافقتك على إستخدام شركة رتال لخاصية الكوكيز و تقنيات أخرى من هذا القبيل لهذه الأغراض. إما إذا كنت لا ترغب في إستقبال الكوكيز، يمكنك تغيير إعدادات متصفح الإنترنت الخاص بك لمحو جميع الكوكيز من القرص الثابت للكميوتر و منع كل ملفات الكوكيز أو تلقي تحذير قبل تخزين الكوكيز.</span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify"><u><strong><span style="color:#002060"><span style="font-size:medium">الحماية</span></span></strong></u></p>\r\n\n<ol start="10">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:medium">إننا نتخذ جيمع الخطوات اللازمة لتوفير حماية معقولة ضد الوصول الغير مصرح به أو الإستخدام أو إفشاء أو إتلاف المعلومات الشخصية. إننا نقوم بحماية أية معلومات شخصية نقوم بجمعها بإستخدام الوسائل المناسبة و شركة رتال العالمية ليست مسئولة عن أي وصول غير مصرح به من قبل أطراف ثالثة إلا إذا تم تمكين هذا الوصول بسبب إهمالنا أو بسبب سوء تصرف متعمد.</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000">&nbsp;<span style="font-size:medium">حماية المعلومات الشخصية الخاصة بك مهمة جدا لنا، و لذلك فإننا نتخذ الإحتياطات التالية من بين أمور أخرى لحماية المعلومات الشخصية على النحو الأفضل : </span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span> &nbsp;&nbsp; <span style="font-size:medium">سنتخذ الإحتياطات الفنية و التنظيمية المعقولة لمنع فقدان أو سوء الإستخدام أو تحوير المعلومات الشخصية الخاصة بك بما في ذلك إستخدام برمجيات مآخد توصيل آمنة ( أس أس أل). و يتم إعتماد موقعنا بواسطة (نورثن / ترست برايفسي) و المعاملات التي تدار من خلال موقعنا و الشراكة مع تالر و بنك ساب.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span> &nbsp; <span style="font-size:medium">سنعمل على تخزين كافة المعلومات الشخصية التي تزودنا بها على خوادمنا ( لكمة المرور، جدار الحماية) و سيتم تشفير جميع المعلومات الإلكترونية التي تجريها أو تتلقاها بإستخدام (أس أس أل)</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span> &nbsp; <span style="font-size:medium">نقوم فقط بعرض الأربعة الأرقام الأخيرة من بطاقة الإئتمان، بينما في حالة إستخدام فيزا أو ماستر كارد، سيطلب إدخال رقم التحقق للبطاقة (سي في في )المكتوب بظهر البطاقة بالجهة الخلفية. إما عند إستخدام بطاقة مدي، سيطلب منك إدخال رقمك السري. و مع ذلك، فإنه من الضروري إعطاء رقم البطاقة بأكمله للشركة الوسيطة ( تالير ) أثناء إتمام العملية.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:72px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">من المهم لك أن يتم توفير الحماية ضد الوصول الغير مصرح به إلى حسابك و كلمة المرور و إلى جهازك الكمبيوتر/ الجوال الخاص بك ، لذا وجب التأكد من أنك قمت بتسجيل الخروج من حسابك، عند الخروج من تطبيق إزهل.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:72px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify"><u><strong><span style="color:#002060"><span style="font-size:medium">إستعراض الخدمة</span></span></strong></u></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify"><strong><span style="color:#002060"><span style="font-size:medium">&nbsp;</span></span></strong></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify"><strong><span style="color:#002060"><span style="font-size:medium">* عام</span></span></strong></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify"><strong><span style="color:#002060"><span style="font-size:medium">&nbsp;</span></span></strong></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify"><strong><span style="color:#002060"><span style="font-size:medium">يرجى ملاحظة ما يلي :</span></span></strong></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">قد تنم مشاركة رأيك في المواقع الأخرى لشركة رتال العالمية أو فروعها التابعة للشركة</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:medium"><span style="color:#000000">بعد تقديمك لإستعراضك المكتوب و عادة ما يستغرق 72 ساعة للإستعراض أو السؤول أو الإجابة لتظهر على </span><strong><span style="color:#002060">تطبيق إزهل</span></strong></span><span style="color:#000000"><span style="font-size:medium"> و ذلك تمشيا مع المبادئ التوجيهية الخاصة بالنشر لدينا</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">يمكن أن تقدم رأيك بشكل مجهول أو إذا كنت تفضل، يمكن ترك إستعراض تقييمي فقط</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">ليس من الممكن بعد تقديم الإستعراض إجراء إزالة</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:72px; text-align:justify"><span style="font-size:medium"><span style="color:#000000">إذا كنت بحاجة إلى أي معلومات إضافية حول هذه الخدمة أو ترغب في إزالة رأيك ، يمكنك الإتصال مباشرة بمركز خدمة العملاء من خلال الرابط التالي <span dir="LTR">support@ezhal.com</span><span dir="LTR"> :</span></span></span></p>\r\n\n<ol start="12">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000">&nbsp;&nbsp; <span style="font-size:medium">لديك الخيار في الحصول على نسخة إحتياطية من المعلومات الشخصية التي نحتفظ بها عنك و توفيرها يخضع للتالي :</span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">إستلام طلب خطي منك</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">تقديم إثبات رسمي منك ( صورة من الهوية أو صورة من الإقامة + عنوانك الوطي)</span></span></p>\r\n\n<ol start="13">\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000">&nbsp;<span style="font-size:medium">نحن قد نحجب مثل هذه المعلومات الشخصية إلى حد الذي يسمح به القانون</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:medium">يمكنك توجيهنا بعدم إستخدام المعلوماتك الشخصية لأغراض تسويقية عن طريق البريد الإلكتروني في أي وقت و إذا كنت تشعر بالقلق من أن أي من المعلوماتك الشخصية التي نحتفظ بها هي غير دقيقة، يمكنك الإتصال بنا مباشرة عبر الرابط <span dir="LTR">info@ezhal.com </span></span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:medium">قد تحتوي تطبيق إزهل على روابط مواقع أخرى، فشركة رتال العالمية المحدودة، ليست مسئولة عن ممرارسات الخصوصية لمواقع لا تشغلها و نحن نشجع المستخدمين على قراءة بيان خصوصية لكل تطبيق يقوم بجمع الملومات الشخصية</span></span></li>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><span style="font-size:medium">سيتم نشر أي تغييرات تطرأ على سياسة الخصوصية على تطبيق إزهل، و فيما يتعلق بأي معلومات شخصية و غيرها من المعلومات التي سنجمعها في المستقبل، و سوف تصبح سارية المفعول إعتبارامن تاريخ النشر.</span></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:48px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">إن مراجعة سياسة الخصوصية هي من مسؤولياتك و عليك من وقت لآخر التأكد من أنك على علم بأي تغييرات قد طرأت. كما يحق لنا أيضا أن نخطرك بالتغييرات على سياسة الخصوصية لدينا عن طريق البريد الألكتروني أو عبر إشعارات مباشرة ترسل لكم من خلال التطبيق ذاته.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<p dir="RTL" style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n'),
(8, 2, 'en', 'Privacy policy', '<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">RETAL International Company, the owner of <strong><span style="color:#002060">EZHAL App</span></strong>, respects your privacy and seeks to comply with applicable legal requirements in connection with the collection, processing and transfer of data by using EZHAL App or its services (and thereby agreeing to the Terms of Use), you agree that RETAL uses your global information, as described in this Privacy Policy. Your use of EZHAL App is subject to your acceptance of the terms of use of this application and this Privacy Policy. If you do not accept them, you must stop using any of the Application Services.</span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">We are committed to maintaining the privacy of registered members and visitors who use or visit <strong><span style="color:#002060">EZHAL App</span></strong>. We hope that this statement will explain how your data, including your personal data and information, will be used during the application.</span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">The information that will be collected for us is an important part of our work and we are not going to arrange to sell it as this is not considered our field of work. We share the information we collect as described below with affiliates of RETAL International which are either subject to this Privacy Policy or at least follow preventive practices such as those described in the privacy clause.</span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="color:#002060">* Collection and use of personal information</span></strong></span></span></p>\r\n\n<ol>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">By using the EZHAL App, you will provide us with certain information as described below, which is referred to as &quot;personal information&quot;, which we may collect, store and use to provide services and perform contractual and other obligations such as allowing us to understand our users and improve our user experience and performance.</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Personal information will vary as follows:</span></span></li>\r\n</ol>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Information about your name, address, telephone number, email address, invoices and information about applications executed from the application statement, dates, discounts given, information about your visits and use of EZHAL App including geographical application, Version, operating system, referral source, visit duration, page count, etc.)</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Information relating to any transactions between you and us or in connection with the EZHAL App including information relating to any of your purchases from the Implementing Services</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">The information you provide when registering as a registered user</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">The information you provide to us to subscribe to EZHAL App services such as email shortcuts, newsletters and more</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Any other information you choose to send us, and opinions including reviews about the services</span></span></li>\r\n</ul>\r\n\n<ol start="3">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">We may use personal information that you provide or have obtained from us:</span></span></li>\r\n</ol>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">To register on EZHAL App and manage and provide our services as mentioned in EZHAL App.</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">In order for us to agree to provide services to you including those related to the purchase and processing of products and to obtain the amounts to be paid</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Analyze and understand your personal shopping preferences to enable us to review, develop and improve our services and provide information relevant to you and our other customers through our marketing programs.</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">We may use your personal information to make a decision about the use of automated technology, for example automatic selection of services and products that we believe are of interest to you through your information, knowing that we may keep you informed of such services and products, including offers and competitions through any of the following methods:</span></span></li>\r\n</ul>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">e-mails</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Text messages</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Mail</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Fax</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Phone</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">and other methods</span></span></li>\r\n</ul>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">To manage any draws on prizes or contests you may wish to participate in.</span></span></li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ol start="4">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">We may add your personal information to information we receive from third parties</span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="color:#002060">* Prevent cheating</span></strong></span></span></p>\r\n\n<ol start="5">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">In order to protect our customers and protect us from fraud and theft, we may share all or any of the personal information we obtain (for example, to confirm identity and other information in customer records, including managing your account), with other Retal Subsidiaries and other third parties, financial institutions and others, including law enforcement agencies involved in the prevention of fraud and the detection of offenders.</span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="color:#002060">* Phone calls</span></strong></span></span></p>\r\n\n<ol start="6">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">All telephone calls (incoming / outgoing) may be recorded to verify the content, and can be used in conjunction with your data for purposes of regulatory compliance, quality control, prevention or detection of criminal activity and problem solving.</span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="color:#002060">* Detect your information</span></strong></span></span></p>\r\n\n<ol start="7">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Within the framework of all necessary efforts to protect and protect the confidentiality of the information provided to us, we may share your personal information with other companies or affiliates of RETAL International and other parties, companies, retailers and organizations that provide us with products and services that we provide you through the application for the following reasons:</span></span></li>\r\n</ol>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">For companies and other organizations with the aim of making any draws on prizes or competitions</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Our agents, employees or third parties provide services to us</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Any person we appoint or transfer our rights and duties as stipulated by our agreement with them</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">if we have to do so, or if the law compels us to do so either by taking any future legal or legal action, or from any residence, exercise or defense of our legal rights (including providing information to others for the purpose of fraud prevention and risk reduction Credit).</span></span></li>\r\n</ul>\r\n\n<p style="margin-left:0.5in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ol start="8">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">If RETAL is sold to a third party, or otherwise RETAL becomes a merger, association or acquisition, it becomes necessary for us to transfer personal information to a third party. RETAL in such case requires that the third party handles your personal information in the same way as we provided to you.</span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="color:#002060">* Cookies</span></strong></span></span></p>\r\n\n<ol start="9">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">New and emerging web technologies help us make the visitor&#39;s experience consistent with their trends. Retal International may use this technology, including cookies or other technology, to remember your information when using EZHAL App, which in turn uses these techniques to track activity on the application, report and evaluate trends, and monitor this in the manner in which Using EZHAL App. By agreeing to the Terms of Use and the EZHAL App Privacy Policy, you agree to allow RETAL to use cookies and other such technologies for such purposes. </span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0.5in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<p style="margin-left:0.5in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">In case you do not want to receive cookies, you can change your Internet browser settings to erase all cookies from your PC&#39;s hard disk and block all cookies or receive a warning before storing cookies.</span></span></p>\r\n\n<p style="margin-left:0.5in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="color:#002060">* Protection</span></strong></span></span></p>\r\n\n<ol start="10">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">We take all necessary steps to provide reasonable protection against unauthorized access, use, disclosure or destruction of personal information. We protect any personal information that we collect using the appropriate means. RETAL International is not responsible for any unauthorized access by third parties unless this access is enabled by our negligence or due to deliberate misconduct.</span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ol start="11">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Protecting your personal information is very important to us, so we take the following precautions, among other things, to protect personal information as best:</span></span></li>\r\n</ol>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">We will take reasonable technical and regulatory precautions to prevent the loss, misuse or alteration of your personal information, including the use of Secure Sockets Layer (SSL) software. Our website is certified by Norton (TRUSTe Certified Privacy), the transactions managed through our website and the partnership with Telr and SABB Bank.</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">We will store all the personal information you provide on our servers (password and firewall) and all electronic information you make or receive will be encrypted using SSL<span dir="RTL" lang="AR-SA">.</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">We only display the last four digits of the credit card, while in the case of Visa or MasterCard, the verification number for the CVV card written on the back of the card will be required. When using a Mada, you will be asked to enter your PIN. However, it is necessary to give the entire card number to the intermediate company (Telr) during the completion of the process.</span></span></li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">It is important that you protect yourself against unauthorized access to your account, password, and your computer / mobile device, so make sure you log out of your account when you exit EZHAL App. </span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="color:#002060">* Service review</span></strong></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="color:#002060">Public</span></strong></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong>Please note:</strong></span></span></p>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">You may share your opinion on other sites of RETAL International or its subsidiaries</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">After submitting your written review, it usually takes 72 hours for the review, responsibility or answer to appear on EZHAL App in line with our publishing guidelines</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">You can submit your opinion anonymously or if you prefer, you can leave my review only</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">It is not yet possible to submit a review removal action</span></span></li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">If you need any additional information about this service or want to remove your opinion, you can contact our Customer Support Center directly at <a href="mailto:support@ezhal.com" style="color:#0563c1; text-decoration:underline">support@ezhal.com</a> </span></span></p>\r\n\n<ol start="12">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">You have the option to obtain a backup copy of the personal information we hold about you and provide it subject to the following:</span></span></li>\r\n</ol>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Receive a written request from you</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Provide proof of identity (photo of your identity or photo of residence + your national address)</span></span></li>\r\n</ul>\r\n\n<p style="margin-left:0.5in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ol start="13">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">We may block such personal information to the extent as permitted by law</span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ol start="14">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">You may direct us not to use your personal information for marketing purposes by e-mail at any time. If you are concerned that any of your personal information is inaccurate, you may contact us directly via the Customer Care Number 92&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;</span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ol start="15">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">EZHAL App may contain links to other sites. RETAL International Limited is not responsible for privacy practices for sites that you do not operate. We encourage users to read a privacy statement for each application that collects personal information</span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ol start="16">\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Any changes to the Privacy Policy will be posted on EZHAL App, and for any personal information and other information that we will collect in the future, will become effective as of the date of publication.</span></span></li>\r\n</ol>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Reviewing the Privacy Policy is your responsibility and from time to time make sure that you are aware of any changes that have occurred. We may also notify you of changes to our Privacy Policy by email or through direct notices sent to you through the Application itself.</span></span></p>\r\n'),
(9, 2, 'fr', 'Politique de confidentialité', '<pre>\r\nPrivacy policy</pre>\r\n\n<pre>\r\n\n&nbsp;</pre>\r\n'),
(10, 3, 'ar', 'مساعدة', '<p dir="RTL" style="margin-left:0px; margin-right:0px; text-align:right"><span style="color:#000000"><span style="font-size:12pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif">في حالة كنت تواجه أي إشكاليات أو لديك(ي) إستفسارات تخص الخدمات و المنتجات التي نسوقها من خلال تطبيق إزهل، يمكن التواصل معنا عبر التالي</span></span><span dir="LTR" style="font-size:12pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"> :</span></span></span></p>\r\n\n<ul style="list-style-type:disc">\r\n<li dir="RTL" style="text-align:right"><span style="font-size:12pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif">عبر البريد الإلكتروني من خلال الرابط </span></span><span style="font-size:12pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span dir="LTR"><span style="color:#000000">info@ezhal.com</span></span> &nbsp;</span></span></li>\r\n<li dir="RTL" style="text-align:right"><span style="font-size:12pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif">من خلال التواصل المباشر عبر نافذة الدردشة</span></span></li>\r\n</ul>\r\n'),
(11, 3, 'en', 'Help', '<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">In case you are facing any problems or you have questions about the services and products we are marketing through Ezhal App, you can contact us by:</span></span></span></p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">Via e-mail at <a href="mailto:support@ezhal.com" style="color:#0563c1; text-decoration:underline">support@ezhal.com</a> &nbsp;-</span></span></span></li>\r\n<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt">By communicating directly through the chat window &nbsp;</span>&nbsp;</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n'),
(12, 3, 'fr', 'Aidez-moi', '<pre>\r\nAidez-moi</pre>\r\n\n<pre>\r\n\n&nbsp;</pre>\r\n'),
(13, 4, 'ar', 'عن التطبيق', '<p dir="rtl">تفاجئت بأن رصيد جوالك إنتهي و الوقت متأخر و تحتاج تستمر في الإتصال !</p>\r\n\n<p dir="rtl">تلعب بجهازك اكس بوكس و تتفاجئ بإنتهاء الإشتراك ؟</p>\r\n\n<p dir="rtl">متواجد بالبيت و كل أفراد متصلين بالإنترنت و فجأة، توقف الربط بشبكة الإنترنت ؟</p>\r\n\n<p dir="rtl">الحل بسيط و سهل،</p>\r\n\n<p dir="rtl">تطبيق أزهل، تطبيق يسمح لك بإعادة شحن رصيدك بشكل سهل و آمن و آني.&nbsp;</p>\r\n\n<p dir="rtl">فقط، بعض النقرات .... لشحن رصيدك و التمتع بحياتك</p>\r\n'),
(14, 4, 'en', 'About US', '<p>Surprised that your mobile balance is over and the time is late and you need to continue calling!</p>\r\n\n<p>You&#39;re playing with freinds with your Xbox and you are&nbsp;surprised that your subscriptions is finished ?&nbsp;</p>\r\n\n<p>All your familly members are connected to Internet and suddunly your internet&nbsp;connection stopped?</p>\r\n\n<p>The solution is simple and easy,</p>\r\n\n<p>EZHAL App, is an application that allows you to recharge your balance easily, securely and instantly.</p>\r\n\n<p>Just, some clicks .... to recharge your balance&nbsp;and enjoy your life.</p>\r\n'),
(15, 4, 'fr', 'À propos de l\'application', '<pre>\r\n&Agrave; propos de l&#39;application</pre>\r\n\n<pre>\r\n\n&nbsp;</pre>\r\n'),
(16, 5, 'ar', 'إتصل بنا', '<p dir="RTL" style="margin-left:0in; margin-right:0in; text-align:right"><span style="font-family:Calibri Light, sans-serif"><span style="font-size:16px">عميلنا العزيز، يمكن التواصل معنا عبر الوسائل التالية :</span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:right"><span style="font-size:11pt"><span style="font-family:Corbel,sans-serif"><span style="font-size:12.0pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif">عبر البريد الإلكتروني من خلال الرابط </span></span><span style="font-size:12.0pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><a href="mailto:support@ezhal.com" style="color:#005dba; text-decoration:underline">support@ezhal.com</a> &nbsp;</span></span></span></span></li>\r\n<li dir="RTL" style="text-align:right"><span style="font-size:11pt"><span style="font-family:Corbel,sans-serif"><span style="font-size:12.0pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif">عبر التواصل مباشرة مع مركز خدمة العملاء على الرقم 920005555 مع العلم بأن دوام العمل لمركز خدمة العملاء هم يوميا من الأحد إلى الخميس من الساعة الثامنة صباحا و حتى العاشرة ليلا.</span></span></span></span></li>\r\n<li dir="RTL" style="text-align:right"><span style="font-size:11pt"><span style="font-family:Corbel,sans-serif"><span style="font-size:12.0pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif">من خلال ترك رسالة نصية أدناه</span></span></span></span></li>\r\n</ul>\r\n\n<pre>\r\n\n&nbsp;</pre>\r\n');
INSERT INTO `am_static_pages_translations` (`id`, `static_page_id`, `locale`, `title`, `content`) VALUES
(17, 5, 'en', 'Contact Us', '<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif">Dear customer, you can communicate with us by the following means:</span></span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif">&bull; via e-mail at <a href="mailto:support@ezhal.com" style="color:#0563c1; text-decoration:underline">support@ezhal.com</a> &nbsp;</span></span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif">&bull; By contacting the customer service center directly at 920005555. The customer service center is open daily from Sunday to Thursday from 8 am to 10 pm.</span></span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:12.0pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif">&bull; By leaving a text message below :</span></span></span></span></p>\r\n\n<pre>\r\n\n&nbsp;</pre>\r\n'),
(18, 5, 'fr', 'Contactez nous', '<pre>\r\nContactez nous</pre>\r\n\n<pre>\r\n\n&nbsp;</pre>\r\n'),
(19, 6, 'ar', 'هواتف الاتصال', '<p>19236</p>\r\n'),
(20, 6, 'en', 'call numbers', '<p>19876</p>\r\n'),
(21, 7, 'ar', 'الأسئلة لأكثر تكررا', '<ol>\r\n<li dir="RTL" style="text-align:justify"><span style="color:#000000"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong><span style="font-size:medium">إستفسارات عامة</span></strong></span></li>\r\n</ol>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">o</span> </span><span style="font-size:medium"><span style="color:#000000">ما هو </span><strong><span style="color:#002060">تطبيق إزهل</span></strong><span style="color:#000000"> &nbsp;&nbsp;:</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">ترجع ملكية تطبيق &quot; <strong>إزهل</strong>&quot; إلى شركة رتال العالمية المحدودة، وهو تطبيق يجمع في موقع واحد كل إحتياجاتك الضرورية، سواء كنت تبحث عن أسرع وأضمن وسيلة لشخن خط الجوال أو شحن رصيد إنترنت أو شراء بطاقات أي تونز أو بلاي ستايشن أو غيرها من بطاقات الألعاب، فإن تطبيقنا، تطبيق إزهل هو التطبيق المبتكر الذي يتيح لك الفرصة الحصول على جميع منتجاتك بسهولة متناهية و براحة قصوي.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">o</span> </span><span style="font-size:medium"><span style="color:#000000">هل يوجد لدي </span><strong><span style="color:#002060">تطبيق إزهل</span></strong><span style="color:#000000">، منتدي حيث يمكنني المشاركة و الحصول على أفكار أو معلومات إضافية و إبداء رأيي عن كل المنتجات و الخدمات ؟</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">يمكنكم زيارة صفحاتنا على مواقع التواصل الإجتماعي مثل فايس بوك، تويتر، يوتوب و إنستجرام من خلال البحث عن عبارة <strong>إزهل</strong>.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">o</span> <span style="font-size:medium">هل الشراء عبر الإنترنت آمن</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="font-size:medium"><span style="color:#002060">إن شركة رتال العالمية تضمن لكم تجربة التسوق الآمن حيث أن </span><strong><span style="color:#000000">تطبيق إزهل </span></strong><span style="color:#002060">يقوم بإجراء عمليات الدفع ( ماستر كارد، فيزا، باي بال، سداد، مدى) من خلال بوابات الدفع الإلكتروني المشفرة بشكل آمن و كل معلوماتكم الشخصية بما في ذلك بيانات بطاقة الإئتمان والإسم و العنوان تمر من خلال قناة مشفرة تعتبر الافضل و الأأمن في مجال تأمين المعاملات التجارية و إستخدام معلوماتك الشخصية يتوافق و سياسة الخصوصية الصارمة التي نتبعها في الصدد.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ol start="2">\r\n<li dir="rtl" style="text-align:justify"><span style="color:#000000"><strong><span style="font-size:medium">إستفسارات بشأن الحساب</span></strong></span></li>\r\n</ol>\r\n\n<ul dir="rtl">\r\n<li style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">لماذا أحتاج إلى التسجيل ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">يتوجب عليك أن تكون مستخدم مسجل لتتمكن من إجراء عمليات شراء على التطبيق بالإضافة إلى أن تسجيلك سيساعدك و ياعد التطبيق على :</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">الإتصال بك إذا دعت الحاجة</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">ضمان بيئة آمنة للتسوق</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">-</span> &nbsp;&nbsp; <span style="font-size:medium">حصولك على كافة التحديثات و الأخبار الخاصة بالمنتجات كألعاب، عروض خاصة ببعض الخدمات ( الصيانة و النظافة ) و كذلك العروض التسويقة و الترويجية الأخرى</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">يمكنك تقديم توصيات و إقتراحات بخصوص المنتجات</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">هل الحصول على حساب بالتطبيق مجاني ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">نعم التسجيل مجاني بالتطبيق.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">في ما يتعلق بمزودي الخدمات، فإن التسجيل حاليا مجاني و لكن يمكن في مرحلة من مراحل دورة حياة التطبيق، تثبيت رسوم شهرية للإشتراك بالخدمات.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">كيف يمكنني الحصول على حساب بالتطبيق ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">بكل سهولة. </span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="font-size:medium"><span style="color:#002060">كل ما عليك القيام به هو إما الضغط على الرابط التالي الذي سيوجهك مباشرة إلى موقع ويب التطبيق &quot; </span><a href="http://www.ezhal.com/"><span dir="LTR"><span style="color:#005dba">www.ezhal.com</span></span></a> <span style="color:#002060">&nbsp;&quot; أو من خلال البحث في جهاز هاتفك الذكي من خلال </span><span dir="LTR" style="color:#002060">Apple Store</span><span style="color:#002060"> أو </span><span dir="LTR" style="color:#002060">Play Store</span> </span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">لماذا أحتاج إلى كلمة سر ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">تحتاج لكلمة سر/ مرور لإستكمال التسجيل بالتطبيق مما سيأمن كافة المعاملات التي ستتم عبر التطبيق و الحفاظ على سرية التفاصيل الخاصة بك.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">ماذا أفعل إن نسيت كلمة السر ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">لا داعي للقلق لأن هذا الأمر متككر الحدوث.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="font-size:medium"><span style="color:#002060">عليك فقط الضغط على رابط &quot; <strong><u>نسيت كلمت السر</u></strong> &quot; و إتباع التعليمات الموضحة و إذا كنت بحاجة للمزيد من المساعدة، يمكن التواصل المباشر إما عبر نافذة الدردشة أو عبر التواصل عبر البريد الإلكتروني على الرابط </span><span style="color:#002060"><span dir="LTR"><span style="color:#002060">info@ezhal.com</span></span></span> </span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">كيف يمكنني تغيير بياناتي ?</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">بعد تسجيل دخولك إلى التطبيق، إضغط على إعدادات الحساب و سيتم توجيهك إلى الصفحة الخاصة بمعلومات الحساب الخاصة بك و يمكنك عند إذن تغيير البيانات في الحقول التي تود تعديلها، ثم الحفظ.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><span style="font-size:medium"><span style="color:#000000"><strong>بعد فتح حسابي على </strong></span><strong><span style="color:#002060">تطبيق إزهل</span><span style="color:#000000"> ، هل يمكنني إجراء طلب في أي وقت ؟</span></strong></span></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">بعد فتح الحساب على التطبيق و تسجيل الدخول، يمكنك مباشرة إجراء عمليات شراء.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">هل سيتم إغلاق حسابي إن لم أستخدمه لبعض الوقت ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">لا، سيظل الحساب قائم.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="font-size:medium"><span style="color:#000000">هل يمكنني إنشاء أكثر من حساب على </span><span style="color:#002060">تطبيق إزهل</span><span style="color:#000000"> ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">نعم، يمكن ذلك</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">طالما أن كل حساب على التطبيق &quot; إزهل&quot; مسجل به عنوان بريدي مختلف عن العنوان الأول.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="font-size:medium"><span style="color:#000000">هل يمكن لشخص الآخر إستخدام حسابي على </span><span style="color:#002060">تطبيق إزهل</span><span style="color:#000000"> ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">نعم، يمكن ذلك.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">و لكننا نوصي بعدم مشاركتك لبياناتك الشخصية .</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">كيف يمكنني إزالة إسمي من القائمة البريدية الخاصة بالتطبيق ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="font-size:medium"><span style="color:#002060">إذا كنت ترغب في إزالة إسمك من القائمة البريدية فعليك الإتصال بنا من خلال الرابط التالي</span> <span dir="LTR"><span style="color:#000000">support@ezhal.com</span></span> <span style="color:#002060">&nbsp;حيث يتوجب عليك ملء الحقول الخاصة بالطلب مع التأكيد على كتابة كلمة &quot; إزالة البريد الإلكتروني &quot;.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">يرجى ملاحظة أن الإزالة الفعلية للعنوان البريدي سيستغرق مدة قد تصل إلى 3 أيام عمل إضافة إلى ذلك فإن مراسلاتنا الإلكترونية تتضمن كيفية إلغاء الإشتراك في القائمة البريدية.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR" style="font-size:7pt"><span style="color:#000000">&nbsp;</span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="font-size:medium"><span style="color:#000000">كيف يمكنني إلغاء حسابي على </span><span style="color:#002060">تطبيق إزهل</span><span style="color:#000000"> ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="font-size:medium"><span style="color:#002060">يرجي الاتصال بنا من خلال الضغط على الرابط التالي </span><span dir="LTR"><span style="color:#000000"><span style="font-family:Corbel">support@ezhal.com</span></span></span><span style="color:#002060"> حيث يتوجب عليك ملء الحقول الخاصة بالطلب مع التأكيد على كتابة كلمة &quot; إلغاء حسابي على التطبيق &quot;.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">يرجى ملاحظة أن الإلغاء الفعلي للحساب سيستغرق مدة قد تصل إلى 3 أيام عمل إضافة إلى ذلك فإن مراسلاتنا الإلكترونية تتضمن كيفية إلغاء الحساب.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR" style="font-size:7pt"><span style="color:#000000">&nbsp;</span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">ماهي قائمة المفظلات ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">قائمة المفضلات هي ميزة في التطبيق تمكنك من حفظ المنتجات و الخدمات التي تطلبها بإستمرار&nbsp; </span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">هل ستختفي المنتجات من قائمة المفظلات إذا لم أستخدم حسابي لفترة من الوقت ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">لا تقلق، بمجرد إضافة المنتج أو الخدمة إلى قائمة المفضلات، فإنها ستبقي موجودة إلى أن تقوم بالشراء أو الحذف.</span></span></p>\r\n\n<p>&nbsp;</p>\r\n\n<ol start="3">\r\n<li dir="rtl" style="text-align:justify"><span style="color:#000000"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong><span style="font-size:medium">إستفسارات بشأن الطلب</span></strong></span></li>\r\n</ol>\r\n\n<ul dir="rtl">\r\n<li style="text-align:justify"><strong><span style="font-size:medium"><span style="color:#000000">كيف يمكنني إجراء طلب على </span><span style="color:#002060">تطبيق إزهل</span><span style="color:#000000"> ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">بمجرد إختيارك للمنتج أو الخدمة لتي ترغب في شرائها، أضغط على صورة &quot; إضافة إلى عربة التسوق&quot; و سيتم إضافة المنتج او الخدمة المطلوبة إلى عربة التسوق الخاصة بك.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">سيتم حفظ جميع العناصر التي أخترتها في عربة التسوق و يمكنك مراجعتها و الإطلاع عليها مباشرة من خلال الالضغط على الرابط كما يمكنك في أي وقت إستكمال عملية الشراء.</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="font-size:medium"><span style="color:#000000">كيف يمكنني الإتصال بمركز خدمة العملاء لــ </span><span style="color:#002060">تطبيق إزهل ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">يمكنك التواصل مع مركز خدمة العملاء من خلال أحد الطرق التالية :</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">عبر رابط الدردشة المباشر ( <strong><u>إضغط على هذا الرابط</u></strong>)</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#000000"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:medium"><span style="color:#002060">عبر إرسال رسالة نصية لهذا العنوان البريدي : </span><span dir="LTR"><span style="color:#000000">info@ezhal.com</span></span> </span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:66px; text-align:justify"><span style="font-size:medium"><span style="color:#000000">مع العلم بأن مركز خدمة العملاء، يعمل يوميا من </span><span style="color:#002060">الساعة 08.00 صباحا و حتى 08.00 مساء، من يوم السبت إلى الخميس</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="font-size:medium"><span style="color:#000000">هل يمكن لمركز خدمة العملاء لــ </span><span style="color:#002060">تطبيق إزهل </span><span style="color:#000000">إنشاء حساب خاص بي ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="font-size:medium"><span style="color:#002060">إن عملية إنشاء حساب خاص بك على تطبيق &quot; إزهل&quot; في غاية السهولة و لكن إن أحتجت إلى أي دعم و/أو مساعدة، فيمكنك الإتصال بنا من خلال نافذة الدردشة أو عبر البريد الإلكتروني على الرابط </span><span style="color:#002060"><span dir="LTR"><span style="color:#002060">info@ezhal.com</span></span></span> </span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span dir="LTR"><span style="color:#000000"><span style="font-size:medium">&nbsp;</span></span></span></p>\r\n\n<ul>\r\n<li dir="RTL" style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:medium">ماهي وسائل الدفع المستخدمة ؟</span></span></strong></li>\r\n</ul>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:75px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">في الوقت الحالي يمكن الدفع من خلال أحد الطرق الآمنة التالية :</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">فيزا</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">ماستركارد</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">باي بال</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">سداد</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0px; margin-right:96px; text-align:justify"><span style="color:#002060"><span style="font-size:medium">-</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:medium">مدى ( جارى العمل عليها).</span></span></p>\r\n\n<p dir="RTL" style="margin-left:0.5in; margin-right:0in; text-align:justify">&nbsp;</p>'),
(22, 7, 'en', 'Most frequent asked questions', '<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong>1. General inquiries</strong></span></span></p>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">What is EZHAL App?</span></span></li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Ownership of the application is attributed to Retal International Co. LTD, a one-stop application for all your essential needs, whether you are looking for the fastest and most secure way to recharge your mobile line, recharge your internet balance, buy iTunes, PlayStation cards or other gaming cards, our application, is an innovative application that gives you the opportunity to get all your products with infinite ease and maximum comfort.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Do I have EZHAL App, a forum where I can participate and get additional ideas or information and give my opinion about all products and services?</span></span></li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">You can visit our social networking pages like Facebook, Twitter, YouTube and Instagram by searching for EZHAL.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Is online purchasing safe</span></span></li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">With the secure payment experience, EZHAL App makes payments (MasterCard, Visa, PayPal, SADAD, mada) through securely encrypted electronic payment gateway and all your personal information, including credit card, name, the address passes through an encrypted channel which is the best and safest in the field of securing business transactions and the use of your personal information complies with our strict privacy policy.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong>2. Inquiries about the account</strong></span></span></p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Why do I need to register?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">You must be a registered user in order to make purchases on the application. In addition, your registration will help you:</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Contact you if needed</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Ensure a safe shopping environment</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">You receive all updates and news of the products such as games, special offers for some services (maintenance and cleanliness), as well as other promotional offers</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">You can make product recommendations and suggestions</span></span></li>\r\n</ul>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Is the application account free?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Yes, Registration is free of charge.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">For the service providers, registration is currently free, but at a certain stage of the application life cycle, we will install a monthly subscription fee.</span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">&nbsp;</span></span></p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">How do I get an application account?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Easily.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">All you have to do is either click on the following link that will direct you to &quot;www.ezhal.com&quot; application website or by searching in your smartphone through the Apple Store or Play Store</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Why do I need a password?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">You need a password to complete the application registration, which will secure all transactions that will be done through the application and keep your details confidential.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">What do I do if I forget my password?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Do not worry because it happens to everybody.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Just click on the &quot;Forgot your password&quot; link and follow the instructions and if you need more help, you can contact directly through the chat window or by contacting the customer service center directly at 925550000</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">How can I change my data?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Once logged in to the application, click on the account settings and you will be directed to the page of your account information and when you change the data permission in the fields you wish to edit, then save.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">After opening my EZHAL App account, can I make an order at any time?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">After you open the account on the application and sign in, you can immediately make purchases.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Will my account be closed if I do not use it for some time?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">No, the account will still exist.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Can I create more than one EZHAL App account?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Yes, it can</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">As long as each account on the application &quot;Ezhal&quot; registered with a different address than the first address.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Can someone else use my EZHAL App account?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Yes, it can.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">However, we recommend that you do not share your personal data.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">How do I remove my name from the application&#39;s mailing list?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">If you would like to remove your name from the mailing list, please contact us at </span><a href="mailto:support@ezhal.com" style="color:#0563c1; text-decoration:underline">support@ezhal.com</a><span style="color:#002060"> . You must fill in the fields of the application with confirmation of the word &quot;remove email&quot;.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Please note that it will take up to 3 business days for us to actually remove the mailing address. In addition, our e-mails include how to unsubscribe from the mailing list.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">How do I cancel my account on EZHAL App?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Please contact us by clicking on the following link <a name="_Hlk502231498"></a><a href="mailto:support@ezhal.com" style="color:#0563c1; text-decoration:underline">support@ezhal.com</a> where you must fill in the fields of the application with confirmation of writing the word &quot;cancel my account on the application&quot;.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Please note that it will take up to 3 business days for us to actually cancel the account, and our e-mails include how to cancel your account.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">What is the list of folders</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">The Favorites list is a feature in the application that enables you to keep the products and services you request continuously</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">&nbsp;</span></span></p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Will the products disappear from the list of folders if I have not used my account for a while?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Do not worry, once you&#39;ve added your product or service to your Favorites list, it will remain there until you buy or delete.</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">&nbsp;</span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong>3. Inquiries about the request</strong></span></span></p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">How can I order EZHAL App?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Once you have chosen the product or service you wish to purchase, click on the &quot;Add to Cart&quot; icon and the product or service will be added to your shopping cart.</span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">All the items you have selected will be saved in the shopping cart and you can review and view them directly by clicking on the link and you can complete the purchase at any time.</span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">How can I contact EZHAL App Customer Service Center?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">You can contact the customer service center in one of the following ways:</span></span></span></p>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:14px"><span style="font-family:Calibri,sans-serif">Through the unified number <span dir="RTL" lang="AR-SA">92555000</span>, daily from 08:00 to 20:00, from Saturday to Thursday</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:14px"><span style="font-family:Calibri,sans-serif">Via direct chat link (click on this link)</span></span></li>\r\n<li style="text-align:justify"><span style="font-size:14px"><span style="font-family:Calibri,sans-serif">By sending a text message to this email address: support@ezhal.com&nbsp;</span></span></li>\r\n<li style="list-style-type:none">\r\n<ul>\r\n<li style="text-align:justify"><span style="font-size:14px"><span style="font-family:Calibri,sans-serif">Can the EZHAL App Customer Service Center create my own account?</span></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">The process of creating your own account is very easy</span></span></span></p>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify">&nbsp;</p>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:black">What payment methods are used?</span></span></span></li>\r\n</ul>\r\n\n<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">At this time, you can pay through one of the following secure methods:</span></span></span></p>\r\n\n<ul>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Visa</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Master Card</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">PayPal</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">SADAD</span></span></span></li>\r\n<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#002060">Mada (ongoing work).</span></span></span></li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `am_transactions`
--

CREATE TABLE `am_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shopping_history_id` int(11) NOT NULL,
  `total_price` double NOT NULL DEFAULT '0',
  `currency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SAR',
  `nonce_referance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_code` int(11) DEFAULT NULL,
  `payment_method_id` int(11) NOT NULL,
  `checkout_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 for fail, 1 for sucess',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_users`
--

CREATE TABLE `am_users` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Head',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `reg_time` int(11) NOT NULL,
  `lastlogin` int(11) DEFAULT NULL,
  `activecode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipaddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `prov_type` int(11) NOT NULL COMMENT '0 = Individual , 1 = Shops, 3 = Administrators, 4 = Employees',
  `verified_num` int(11) NOT NULL,
  `secret_code` int(11) NOT NULL,
  `default_lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `main_user` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_users_logins`
--

CREATE TABLE `am_users_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_year_opening`
--

CREATE TABLE `am_year_opening` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `opening` double NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `price_class_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_tokens`
--

CREATE TABLE `device_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `key`, `en`, `ar`, `created_at`, `updated_at`) VALUES
(1, 'Ezhal', 'Ezhal', 'إزهل', '2017-09-12 07:32:02', '2018-04-29 09:44:59'),
(2, 'Roles', 'Roles', 'أدوار', '2017-09-12 07:32:02', '2017-12-24 10:58:03'),
(3, 'List Roles', 'List Roles', 'قائمة الصلاحيات', '2017-09-12 07:32:02', '2017-09-12 07:32:02'),
(4, 'New Role', 'New Role', 'صلاحية جديدة', '2017-09-12 07:32:02', '2017-09-12 07:32:02'),
(5, 'Categories Type', 'Categories Type', 'التصنيفات الرئيسيه', '2017-09-12 07:32:02', '2017-09-28 14:17:27'),
(6, 'New Categories Type', 'New Categories Type', 'أضف تصنيف رئيسي جديد', '2017-09-12 07:32:02', '2017-09-28 14:20:52'),
(7, 'Shopping Carts', 'Shopping Carts', 'عربات التسوق', '2017-09-12 07:32:02', '2017-10-23 15:21:50'),
(8, 'Shopping History', 'Shopping History', 'سجل التسوق', '2017-09-12 07:32:02', '2017-10-23 15:22:01'),
(9, 'Favorites', 'Favorites', 'المفضله', '2017-09-12 07:32:02', '2017-09-12 07:32:02'),
(10, 'Payment Methods', 'Payment Methods', 'طرق الدفع', '2017-09-12 07:32:02', '2017-10-23 15:06:09'),
(11, 'New Payment Method', 'New Payment Method', 'طريقة الدفع الجديدة', '2017-09-12 07:32:02', '2017-10-23 14:58:08'),
(12, 'Payment Infos', 'Payment Info', 'معلومات الدفع', '2017-09-12 07:32:02', '2017-10-23 15:05:40'),
(13, 'New Payment Infos', 'New Payment Infos', 'معلومات الدفع الجديدة', '2017-09-12 07:32:03', '2017-10-23 14:57:44'),
(14, 'Shipping Address', 'Shipping Address', 'عنوان الشحن', '2017-09-12 07:32:03', '2017-10-23 15:21:20'),
(15, 'New Shipping Address', 'New Shipping Address', 'عنوان الشحن الجديد', '2017-09-12 07:32:03', '2017-10-23 14:58:28'),
(16, 'Static Pages', 'Static Pages', 'صفحات ثابته', '2017-09-12 07:32:03', '2017-09-12 07:32:03'),
(17, 'New Static Page', 'New Static Page', 'صفحة جديدة', '2017-09-12 07:32:03', '2017-09-12 07:32:03'),
(18, 'Edit', 'Edit', 'تعديل', '2017-09-13 07:47:38', '2017-09-13 07:47:38'),
(19, 'Delete', 'Delete', 'حذف', '2017-09-13 07:47:38', '2017-09-13 07:47:38'),
(20, 'List Payment Methods', ' Payment Methods List', 'قائمة طرق الدفع', '2017-09-13 07:47:38', '2017-10-23 13:50:22'),
(21, 'Title', 'Title', 'العنوان', '2017-09-13 07:47:38', '2017-12-24 11:29:30'),
(22, 'Image', 'Image', 'الصورة', '2017-09-13 07:47:40', '2017-09-13 07:47:40'),
(23, 'Status', 'Status', 'الحالة', '2017-09-13 07:47:40', '2017-09-13 07:47:40'),
(24, 'Edit Item', 'Edit Item', 'تعديل عنصر', '2017-09-13 07:47:40', '2017-09-13 07:47:40'),
(25, 'Delete Item', 'Delete Item', 'حذف عنصر', '2017-09-13 07:47:40', '2017-09-13 07:47:40'),
(26, 'Enabled', 'Enabled', 'نــشــط', '2017-09-13 07:52:07', '2017-09-13 07:52:07'),
(27, 'Disabled', 'Disabled', 'غير نــشــط', '2017-09-13 07:52:07', '2017-09-13 07:52:07'),
(28, 'Enable', 'Enable', 'تفعيل', '2017-09-13 07:52:07', '2017-09-13 07:52:07'),
(29, 'Disable', 'Disable', 'إيقاف', '2017-09-13 07:52:07', '2017-09-13 07:52:07'),
(30, 'Create Payment Method', 'Create Payment Method', 'إنشاء طريقة الدفع', '2017-09-13 07:53:45', '2017-10-18 14:13:07'),
(31, 'Payment Method', 'Payment Method', 'طريقة الدفع او السداد', '2017-09-13 07:53:45', '2017-10-23 15:05:54'),
(32, 'Create', 'Create', 'إنشاء', '2017-09-13 07:53:46', '2017-10-18 14:09:38'),
(33, 'Add', 'Add', 'إضافه', '2017-09-13 07:53:46', '2017-10-16 14:33:54'),
(34, 'Add Payment Method', 'Add Payment Method', 'إضافه طرق الدفع', '2017-09-13 07:53:46', '2017-10-16 14:34:52'),
(35, 'Save', 'Save', 'حــفــظ', '2017-09-13 07:53:46', '2017-09-13 07:53:46'),
(36, 'Data Deleted Successfully.', 'Data Deleted Successfully.', 'تم حذف البيانات بنجاح', '2017-09-13 07:54:27', '2017-10-18 14:17:26'),
(37, 'Update Payment Method', 'Update Payment Method', 'تحديث طريقة الدفع', '2017-09-13 07:54:38', '2017-10-23 16:17:30'),
(38, 'Update', 'Update', 'تحديث', '2017-09-13 07:54:38', '2017-10-23 15:26:42'),
(39, 'Data Updated Successfully.', 'Data Updated Successfully.', 'تم تحديث البيانات بنجاح.', '2017-09-13 07:54:44', '2017-10-18 14:17:37'),
(40, 'Arabic Title', 'Arabic Title', 'العنوان بالعربي', '2017-09-17 10:38:56', '2017-10-18 14:01:49'),
(41, 'English Title', 'English Title', 'العنوان الإنجليزي', '2017-09-17 10:38:57', '2017-09-27 10:56:46'),
(42, 'Français Title', 'Title in French', 'العنوان باللغة الفرنسية', '2017-09-17 11:00:50', '2017-10-18 14:59:22'),
(43, 'No Payment Methods Available', 'No Payment Methods Available', 'لا توجد طرق دفع متاحة', '2017-09-17 13:50:53', '2017-10-23 15:02:38'),
(44, 'Ownzy', 'Ownzy', 'أونزي', '2017-09-18 12:51:25', '2017-10-23 15:04:16'),
(45, 'Create Role', 'Create Role', 'إنشاء وظيفة', '2017-09-18 13:38:23', '2017-12-24 08:39:56'),
(46, 'Add Role', 'Add Role', 'إضافه صلاحيه', '2017-09-18 13:38:23', '2017-10-16 14:34:58'),
(47, 'Name', 'Name', 'الإسم', '2017-09-18 13:38:23', '2017-10-23 14:44:07'),
(48, 'Display Name', 'Display Name', 'إسم العرض', '2017-09-18 13:38:24', '2017-10-18 14:23:07'),
(49, 'Description', 'Description', 'التفاصيل', '2017-09-18 13:38:24', '2017-10-18 14:20:43'),
(50, 'Permissions', 'Permissions', 'أذونات', '2017-09-18 13:38:24', '2017-10-23 15:06:35'),
(51, 'Role', 'Role', 'الدور', '2017-09-18 13:38:35', '2017-10-23 15:11:22'),
(52, 'List Categories Type', 'Categories Type List', 'نوع قائمة الفئات', '2017-09-18 13:38:37', '2017-10-23 14:40:10'),
(53, 'Location On Map', 'Location On Map', 'الموقع على الخريطة', '2017-09-18 13:50:28', '2017-10-23 14:41:17'),
(54, 'Create Categories Type', 'Create Categories Type', 'إنشاء أنواع الفائات', '2017-09-18 13:50:44', '2017-10-18 14:10:41'),
(55, 'Add Categories Type', 'Add Categories Type', 'أضف قسم رئيسي', '2017-09-18 13:50:45', '2017-09-28 14:14:54'),
(56, 'Cards', 'Cards', 'البطاقات', '2017-09-18 13:51:55', '2017-10-18 14:03:12'),
(57, 'List Cards', 'Cards List', 'قائمة البطاقات', '2017-09-18 13:51:55', '2017-10-23 14:39:42'),
(58, 'Price', 'Price', 'السعر', '2017-09-18 13:51:55', '2017-10-23 15:07:11'),
(59, 'Serial', 'Serial', 'المسلسل', '2017-09-18 13:51:55', '2018-03-20 14:32:15'),
(60, 'Expire', 'Expire', 'منتهي الصلاحية', '2017-09-18 13:51:55', '2017-10-18 14:47:24'),
(61, 'Edit Card', 'Edit Card', 'تعديل بطاقة', '2017-09-18 13:51:55', '2017-10-18 14:30:07'),
(62, 'Create Card', 'Create Card', 'إنشاء بطاقات', '2017-09-18 13:51:58', '2017-10-18 14:09:51'),
(63, 'Add Cards', 'Add Cards', 'إضافه كروت', '2017-09-18 13:51:58', '2017-10-16 14:34:20'),
(64, 'Category Types', 'Category Types', 'نوع التصنيف', '2017-09-18 13:51:58', '2017-10-16 14:38:47'),
(65, 'Select Category Type', 'Select Category Type', 'إختر التصنيف الرئيسي', '2017-09-18 13:51:58', '2018-03-20 14:33:08'),
(66, 'Select Service', 'Select Service', 'إختار الخدمة', '2017-09-18 13:51:58', '2017-10-23 15:18:16'),
(67, 'Didn\'t Appear unless Select Category Type', 'Didn\'t Appear unless Select Category Type', 'لم تظهر ما لم يتم تحديد الفئة', '2017-09-18 13:51:58', '2017-10-18 14:21:44'),
(68, 'Select', 'Select', 'أختر', '2017-09-18 13:51:58', '2018-03-20 14:33:11'),
(69, 'Pin', 'PIN', 'رمز', '2017-09-18 13:51:58', '2017-12-24 10:34:09'),
(70, 'Featured Package', 'Featured Package', 'حزمة مميزة', '2017-09-18 13:52:51', '2017-10-18 14:55:12'),
(71, 'Add New Price', 'Add New Price', 'إضافه سعر جديد', '2017-09-18 13:52:51', '2017-10-16 14:34:33'),
(72, 'Price For', 'Price For', 'السعر لـ', '2017-09-18 13:52:51', '2017-10-23 15:07:31'),
(73, 'Month', 'Month', 'شهر', '2017-09-18 13:52:51', '2018-03-20 14:21:15'),
(74, 'TV Devices', 'TV Devices', 'أجهزة التلفزيون', '2017-09-18 13:52:53', '2017-10-23 15:26:07'),
(75, 'Create TV Device', 'Create TV Device', 'إنشاء جهاز TV', '2017-09-18 13:52:55', '2017-10-18 14:16:17'),
(76, 'Add TV Device', 'Add TV Device', 'إضافه رسيفير', '2017-09-18 13:52:55', '2017-10-16 14:35:37'),
(77, 'Services', 'Services', 'خدمات', '2017-09-18 13:52:55', '2017-10-23 15:20:29'),
(78, 'Offer Price', 'Offer Price', 'عرض سعر', '2017-09-18 13:52:56', '2017-10-23 15:03:37'),
(79, 'Other Price', 'Other Price', 'سعر آخر', '2017-09-18 13:52:56', '2017-10-23 15:04:11'),
(80, 'Count', 'Count', 'العدد', '2017-09-18 13:52:56', '2017-10-16 14:39:44'),
(81, 'Card Number', 'Card Number', 'رقم الكارت', '2017-09-18 13:52:56', '2017-10-16 14:37:38'),
(82, 'Shopping Cart', 'Shopping Cart', 'سلة التسوق', '2017-09-18 13:53:13', '2017-10-23 15:21:37'),
(83, 'List Shopping Cart', 'Shopping Cart List', 'قائمة سلة التسوق', '2017-09-18 13:53:13', '2017-10-23 13:53:04'),
(84, 'User', 'User', 'المستخدم', '2017-09-18 13:53:13', '2017-09-28 08:13:43'),
(85, 'Product', 'Product', 'منتج', '2017-09-18 13:53:13', '2017-10-23 15:07:34'),
(86, 'Type', 'Type', 'نوع', '2017-09-18 13:53:15', '2017-10-23 15:26:28'),
(87, 'Quantity', 'Quantity', 'الكمية', '2017-09-18 13:53:15', '2017-10-23 15:08:39'),
(88, 'Edit Cart Item', 'Edit Cart Item', 'تعديل عناصر السلة', '2017-09-18 13:53:15', '2017-10-18 14:30:17'),
(89, 'Delete Cart Item', 'Delete Cart Item', 'حذف العنصر من السلة', '2017-09-18 13:53:15', '2017-10-18 14:19:47'),
(90, '--------------', '--------------', '--------------', '2017-09-18 13:53:15', '2017-09-18 13:53:15'),
(91, 'List Shopping History', 'Shopping History List', 'قائمة سجل التسوق', '2017-09-18 13:53:25', '2017-10-23 13:53:27'),
(92, 'Address', 'Address', 'العنوان', '2017-09-18 13:53:26', '2017-10-18 14:01:19'),
(93, 'Payment Info', 'Payment Info', 'معلومات الدفع', '2017-09-18 13:53:26', '2017-10-23 15:05:37'),
(94, 'Total Price', 'Total Price', 'إجمالي السعر', '2017-09-18 13:53:26', '2017-10-23 15:25:53'),
(95, 'Edit Shopping History', 'Edit Shopping History', 'تعديل تاريخ التسوق', '2017-09-18 13:53:26', '2017-10-18 14:32:22'),
(96, 'Delete Shopping History', 'Delete Shopping History', 'حذف سجل التسوق', '2017-09-18 13:53:26', '2017-10-18 14:20:38'),
(97, 'Favorite', 'Favorite', 'المفضل', '2017-09-18 13:53:28', '2017-10-18 14:48:48'),
(98, 'List Favorite', 'List Favorite', 'قائمة المفضلة', '2017-09-18 13:53:29', '2017-10-23 13:48:35'),
(99, 'List Payment Infos', 'Payment Info List', 'قائمة معلومات الدفع', '2017-09-18 13:53:35', '2017-10-23 13:49:48'),
(100, 'Card Name', 'Card Name', 'اسم حامل الكارت', '2017-09-18 13:53:36', '2017-10-16 14:37:14'),
(101, 'Card No', 'Card No', 'الرقم التسلسلي للبطاقة', '2017-09-18 13:53:36', '2017-10-18 14:02:16'),
(102, 'expiry Month', 'expiry Month', 'شهر إنتهاء الصلاحية', '2017-09-18 13:53:36', '2017-10-18 14:47:37'),
(103, 'expiry Year', 'expiry Year', 'سنة إنتهاء الصلاحية', '2017-09-18 13:53:36', '2017-10-18 14:47:49'),
(104, 'Create Payment Info', 'Create Payment Info', 'إنشاء معلومات الدفع', '2017-09-18 13:53:38', '2017-10-18 14:12:32'),
(105, 'Add Payment Info', 'Add Payment Info', 'إضافه بيانات الدفع', '2017-09-18 13:53:39', '2017-10-16 14:34:45'),
(106, 'Select User', 'Select User', 'اختر المستخدم', '2017-09-18 13:53:39', '2017-10-23 15:18:35'),
(107, 'Select Payment Method', 'Select Payment Method', 'اختار طريقة الدفع', '2017-09-18 13:53:40', '2017-10-23 15:17:55'),
(108, 'Expiry', 'Expiry', 'إنقضاء الصلاحية', '2017-09-18 13:53:40', '2017-10-18 14:47:29'),
(109, 'List Shipping Address', 'Shipping Address List', 'قائمة عناوين الشحن', '2017-09-18 13:53:43', '2017-10-23 13:52:40'),
(110, 'Edit Shipping Address', 'Edit Shipping Address', 'تعديل عنوان الشحن', '2017-09-18 13:53:44', '2017-10-18 14:30:31'),
(111, 'Delete Shipping Address', 'Delete Shipping Address', 'حذف عنوان الشحن', '2017-09-18 13:53:44', '2017-10-18 14:20:16'),
(112, 'Main', 'Main', 'رئيسي', '2017-09-18 13:53:44', '2018-03-20 14:22:20'),
(113, 'Not Main', 'Not Main', 'ليس الرئيسي', '2017-09-18 13:53:45', '2017-10-23 15:03:19'),
(114, 'Create Shipping Address', 'Create Shipping Address', 'تأسيس عنوان الشحن', '2017-09-18 13:53:47', '2017-10-18 14:14:39'),
(115, 'Add Shipping Address', 'Add Shipping Address', 'إضافه عنوان الشحن', '2017-09-18 13:53:48', '2017-10-16 14:35:12'),
(116, 'List Static Pages', 'Static Pages List', 'قائمة الصفحات الثابتة', '2017-09-18 13:53:59', '2017-10-23 14:12:10'),
(117, 'Content', 'Content', 'المحتوي', '2017-09-18 13:53:59', '2017-10-16 14:39:35'),
(118, 'Edit Static Page', 'Edit Static Page', 'تعديل الصفحة الثابتة', '2017-09-18 13:53:59', '2017-10-18 14:34:02'),
(119, 'Create Static Page', 'Create Static Page', 'تأسيس صفحة ثابتة', '2017-09-18 13:54:01', '2017-10-18 14:15:10'),
(120, 'Static Page', 'Static Page', 'صفحة ثابتة', '2017-09-18 13:54:02', '2017-12-24 11:05:31'),
(121, 'Add Static Pages', 'Add Static Pages', 'إضافه صفحه جديده', '2017-09-18 13:54:02', '2017-10-16 14:35:21'),
(122, 'You Don\'t Have Permission For This Page.', 'You Don\'t Have Permission For This Page.', 'ليس لديك صلاحية للدخول الي هذه الصفحة.', '2017-09-18 14:00:48', '2017-09-28 08:14:38'),
(123, 'Arabic Description', 'Arabic Description', 'الوصف بالعربي', '2017-09-19 06:01:06', '2018-03-20 13:57:10'),
(124, 'English Description', 'English Description', 'الوصف الإنجليزي', '2017-09-19 06:01:06', '2017-09-27 10:56:37'),
(125, 'Français Description', 'Description in French', 'الوصف باللغة الفرنسية', '2017-09-19 06:01:07', '2017-10-18 14:59:01'),
(126, 'Update Categories Type', 'Update Categories Type', 'تحديث التصنيفات الرئيسية', '2017-09-19 07:12:21', '2018-03-20 14:37:59'),
(127, 'Update Card', 'Update Card', 'تحديث البطاقه', '2017-09-19 07:28:55', '2017-10-23 15:26:52'),
(128, 'Items Edited Successfully.', 'Items Edited Successfully.', 'تم تعديل العناصر بنجاح', '2017-09-19 10:43:30', '2017-10-23 13:43:26'),
(129, 'Items Added Successfully.', 'Items Added Successfully.', 'تم إضافة العناصر بنجاح', '2017-09-20 07:35:02', '2017-10-23 13:42:36'),
(130, 'Add New Category', 'Add New Category', 'أضف قسم جديد', '2017-09-20 07:50:44', '2017-09-28 14:16:11'),
(131, 'Control Panel', 'Control Panel', 'لوحه التحكم', '2017-09-20 07:52:28', '2017-10-16 14:39:41'),
(132, 'Dashboard', 'Dashboard', 'لوحة التحكم', '2017-09-20 07:53:01', '2017-10-18 14:16:41'),
(133, 'Categories', 'Categories', 'التصنيفات', '2017-09-20 07:56:13', '2017-10-16 14:38:19'),
(134, 'Add New', 'Add New', 'أضف جديد', '2017-09-20 07:56:13', '2017-09-28 14:16:19'),
(135, 'Category', 'Category', 'تصنيف', '2017-09-20 07:59:29', '2017-10-16 14:38:15'),
(136, 'Add Category', 'Add Category', 'أضف تصنيف', '2017-09-20 07:59:57', '2017-09-28 14:15:15'),
(137, 'Category Type', 'Main Category', 'تصنيف رئيسي', '2017-09-20 08:00:43', '2017-10-18 14:04:26'),
(138, 'Main Category', 'Main Category', 'تصنيف رئيسي', '2017-09-20 08:00:44', '2017-09-20 08:00:44'),
(139, 'Parent Category', 'Parent Category', 'القسم الرئيسي', '2017-09-20 08:00:54', '2017-10-23 15:04:28'),
(140, 'Default Image', 'Default Image', 'الصورة الإفتراضية', '2017-09-20 08:02:31', '2017-10-18 14:18:22'),
(141, 'Update Category', 'Update Category', 'تحديث الفئة', '2017-09-20 08:23:49', '2017-10-23 16:16:19'),
(142, 'Update Categories', 'Update Categories', 'تحديث التصنيفات', '2017-09-20 08:26:24', '2018-03-20 14:38:00'),
(143, 'Add Edit Active Deactive', 'Add Edit Active Deactive', 'إضافه تعديل تفعيل إيقاف', '2017-09-20 08:30:15', '2017-09-28 14:15:41'),
(144, 'List Categories', 'Categories List', 'قائمة الفئات', '2017-09-20 08:31:21', '2017-10-23 14:40:03'),
(145, 'Child From ', 'Child From', 'تابع الي', '2017-09-20 08:34:48', '2017-10-18 14:04:37'),
(146, 'Items Deactivated Successfully', 'Items Deactivated Successfully', 'تم إلغاء تنشيط العناصر بنجاح', '2017-09-20 08:36:40', '2017-10-23 13:43:02'),
(147, 'Items Activated Successfully', 'Items Activated Successfully', 'تم تفعيل العناصر بنجاح', '2017-09-20 08:36:46', '2017-10-23 13:42:14'),
(148, 'Selected Items Disabled Successfully.', 'Selected Items Disabled Successfully.', 'تم تعطيل العناصر بنجاح', '2017-09-20 08:48:51', '2017-10-23 15:19:09'),
(149, 'Ezhal admin panel', 'Ezhal admin panel', 'لوحة إدارة إزهل', '2017-09-20 10:08:49', '2018-04-29 09:45:01'),
(150, 'Hide menu', 'Hide menu', 'إخفاء القائمة', '2017-09-20 10:15:23', '2017-10-18 15:01:50'),
(151, 'Close', 'Close', 'إغلاق', '2017-09-20 10:15:23', '2017-10-16 14:39:02'),
(152, 'Hello', 'Hello', 'مرحبا', '2017-09-20 10:15:23', '2017-10-18 15:01:27'),
(153, 'Settings', 'Settings', 'الإعدادات', '2017-09-20 10:15:23', '2017-09-28 06:15:58'),
(154, 'Info', 'Info', 'المعلومات', '2017-09-20 10:15:23', '2017-10-18 15:03:57'),
(155, 'Logout', 'Logout', 'الخروج', '2017-09-20 10:15:23', '2017-10-23 14:42:00'),
(156, 'Countries & Cities & Districts', 'Countries & Cities & Districts', 'الدول & المدن & الاحياء', '2017-09-20 10:15:23', '2017-10-16 14:39:59'),
(157, 'Countries', 'Countries', 'الدول', '2017-09-20 10:16:57', '2017-10-16 14:39:47'),
(158, 'New Country', 'New Country', 'بلد جديد', '2017-09-20 10:16:57', '2017-10-23 14:44:41'),
(159, 'New City', 'New City', 'مدينة جديدة', '2017-09-20 10:16:57', '2017-10-23 14:44:29'),
(160, 'New District', 'New District', 'منطقة جديدة', '2017-09-20 10:16:57', '2017-10-23 14:44:55'),
(161, 'Manage All', 'Manage All', 'إدارة الكل', '2017-09-20 10:17:31', '2017-10-23 14:42:35'),
(162, 'Groups', 'Groups', 'المجموعات', '2017-09-20 10:19:43', '2017-10-18 15:01:11'),
(163, 'New Group', 'New Group', 'مجموعة جديدة', '2017-09-20 10:19:43', '2017-10-23 14:45:02'),
(164, 'Users', 'Users', 'المستخدمين', '2017-09-20 10:20:36', '2017-09-27 10:59:02'),
(165, 'New User', 'New User', 'مستخدم جديد', '2017-09-20 10:34:52', '2017-10-23 14:59:16'),
(166, 'New Category', 'New Category', 'قسم جديد', '2017-09-20 10:34:54', '2017-09-28 14:19:34'),
(167, 'New Card', 'New Card', 'إضافه كارت جديد', '2017-09-20 10:34:54', '2017-10-16 16:23:56'),
(168, 'Tv Packages', 'Tv Packages', 'باقات التلفزيون', '2017-09-20 10:34:54', '2017-10-23 15:26:25'),
(169, 'New Tv Package', 'New Tv Package', 'باقة تلفزيون جديدة', '2017-09-20 10:34:54', '2017-10-23 14:58:56'),
(170, 'New Tv Device', 'New Tv Device', 'جهاز تلفزيون جديد', '2017-09-20 10:34:54', '2017-10-23 14:58:46'),
(171, 'Home Maintenance', 'Home Maintenance', 'صيانة المنزل', '2017-09-20 10:34:54', '2017-10-18 15:02:45'),
(172, 'New Home Maintenance', 'New Home Maintenance', 'صيانة منزلية جديدة', '2017-09-20 10:34:54', '2017-10-23 14:45:24'),
(173, 'Orders', 'Orders', 'طلبات', '2017-09-20 10:34:54', '2018-03-20 14:25:39'),
(174, 'New Order', 'New Order', 'طلب جديد', '2017-09-20 10:34:54', '2017-10-23 14:45:36'),
(175, 'Search', 'Search', 'بحث', '2017-09-20 10:34:55', '2017-10-23 15:16:00'),
(176, 'Advertising Numbers', 'Advertising Numbers', 'عدد الاعلانات', '2017-09-20 10:34:55', '2017-10-16 14:36:44'),
(177, 'Statistics', 'Statistics', 'إحصائيات', '2017-09-20 10:34:55', '2017-10-23 15:23:43'),
(178, 'Advertising', 'Advertising', 'إعلانات', '2017-09-20 10:34:55', '2017-10-16 14:36:35'),
(179, 'New Users', 'New Users', 'مستخدمين جدد', '2017-09-20 10:34:55', '2018-03-20 14:20:20'),
(180, 'Registration Id', 'Registration Id', 'معرف تسجيل', '2017-09-20 11:47:02', '2017-10-23 15:09:13'),
(181, 'Update Role', 'Update Role', 'تحديث الدور', '2017-09-20 13:47:12', '2017-10-23 16:17:41'),
(182, 'Arabic Display Name', 'Arabic Display Name', 'الاسم بالعربي', '2017-09-20 13:48:27', '2018-03-20 13:57:13'),
(183, 'English Display Name', 'English Display Name', 'الاسم الإنجليزي', '2017-09-20 13:48:27', '2017-09-27 10:56:40'),
(184, 'Français Display Name', 'French Display Name', 'إسم العرض باللغة الفرنسية', '2017-09-20 13:48:27', '2017-10-18 15:07:06'),
(185, 'Role updated successfully', 'Role updated successfully', 'تم تحديث الدور بنجاح', '2017-09-21 05:50:06', '2017-10-23 15:15:54'),
(186, 'No', 'No', 'المسلسل', '2017-09-21 06:05:28', '2018-03-18 09:24:39'),
(187, 'Action', 'Action', 'خيارات', '2017-09-21 06:05:28', '2017-10-16 14:34:12'),
(188, 'Role created successfully', 'Role created successfully', 'تم إنشاء الدور بنجاح', '2017-09-21 06:10:48', '2017-10-23 15:13:23'),
(189, 'Arabic Content', 'Arabic Content', 'المحتوي العربي', '2017-09-21 08:55:57', '2017-09-27 10:55:32'),
(190, 'English Content', 'English Content', 'المحتوي الإنجليزي', '2017-09-21 08:55:57', '2017-09-27 10:56:28'),
(191, 'Français Content', 'Content in french', 'المحتوي باللغة الفرنسية', '2017-09-21 08:55:58', '2017-10-18 14:58:26'),
(192, 'Update Static Page', 'Update Static Page', 'تحديث الصفحة الثابتة', '2017-09-21 10:14:41', '2017-10-23 16:18:03'),
(193, 'List TV Devices', 'TV Devices List', 'قائمة أجهزة التلفزيون', '2017-09-21 10:25:30', '2017-10-23 14:40:48'),
(194, 'Riyal', 'Riyal', 'ريال سعودي', '2017-09-21 10:25:30', '2017-10-23 15:10:42'),
(195, 'Update TV Device', 'Update TV Device', 'تحديث جهاز التلفزيون', '2017-09-21 10:25:41', '2017-10-23 16:18:15'),
(196, 'Update TV Package', 'Update TV Package', 'تحديث باقة التلفزيون', '2017-09-25 12:20:12', '2017-10-23 16:18:31'),
(197, 'Select Category', 'Select Category', 'اختر التصنيف', '2017-09-25 12:27:18', '2018-03-20 14:32:58'),
(198, 'Dollar', 'Dollar', 'دولار', '2017-09-25 12:29:59', '2017-10-18 14:22:40'),
(199, '403 Error', '403 Error', '403 خطأ', '2017-09-26 09:54:54', '2017-09-27 11:00:14'),
(200, 'Sorry, You don\'t have permission For This Page', 'Sorry, You don\'t have permission For This Page', 'عذرا، ليس لديك إذن بالدخول إلى هذه الصفحة', '2017-09-26 09:54:56', '2017-10-23 15:22:54'),
(201, 'Languages', 'Languages', 'اللغات', '2017-09-27 07:20:57', '2017-09-27 10:53:50'),
(202, 'List Languages', 'List Languages', 'قائمة اللغات', '2017-09-27 07:20:57', '2017-09-27 10:53:31'),
(203, 'English', 'English', 'الإنجليزية', '2017-09-27 07:22:48', '2017-09-27 10:55:13'),
(204, 'Arabic', 'Arabic', 'العربية', '2017-09-27 07:22:48', '2017-09-27 10:55:26'),
(205, 'Edit Languages', 'Edit Languages', 'تعديل اللغات', '2017-09-27 07:22:48', '2017-09-27 10:54:02'),
(206, 'Key', 'Key', 'المفتاح', '2017-09-27 10:50:54', '2017-09-27 10:54:50'),
(207, 'No History Available.', 'No History Available.', 'لا يوجد شيء متاح', '2017-09-27 11:21:48', '2017-10-23 15:01:30'),
(208, 'List Users', 'Users List', 'قائمة المستخدمين', '2017-09-27 11:48:47', '2017-10-23 14:41:04'),
(209, 'Provider Services', 'Services Provider', 'مزود الخدمات', '2017-09-27 11:48:53', '2017-10-23 15:08:36'),
(210, 'Services of the service provider', 'Services of the service provider', 'خدمات مزود الخدمة', '2017-09-27 11:48:54', '2017-10-23 15:20:58'),
(211, 'Bio', 'Bio', 'تعريف مختصر', '2017-09-27 11:48:54', '2017-10-16 14:36:51'),
(212, 'Related To', 'Related To', 'متعلق بـ', '2017-09-27 11:48:54', '2017-10-23 15:09:26'),
(213, 'Added At', 'Added At', 'أضيفت في', '2017-09-27 11:48:54', '2017-10-16 14:35:44'),
(214, 'No Cart Items Available', 'No Cart Items Available', 'لا يوجد عناصر بسلة المشتريات', '2017-09-27 13:34:14', '2017-10-23 15:00:59'),
(215, 'Sorry, ', 'Sorry, ', 'عفوا،', '2017-09-27 13:34:44', '2017-10-23 15:22:08'),
(216, ' Cards Available Only', ' Cards Available Only', 'بطاقات الشحن المتاحة فقط', '2017-09-27 13:34:44', '2017-12-24 12:10:01'),
(217, 'Payment Done Successfully.', 'Payment Done Successfully.', 'تم الدفع بنجاح', '2017-09-27 13:46:36', '2017-10-23 15:05:15'),
(218, 'Adding Failed, Try Again!', 'Adding Failed, Try Again!', 'فشل في الاضافه - يرجي المحاولة مرة اخري', '2017-09-27 13:50:11', '2017-10-18 14:01:16'),
(219, 'No Products To Be Added To Your Shopping Cart', 'No Products To Be Added To Your Shopping Cart', 'لا توجد منتجات ليتم إضافتها إلى سلة التسوق الخاصة بك', '2017-09-27 13:54:08', '2017-10-23 15:02:56'),
(220, 'Translations', 'Translations', 'الترجمات', '2017-09-28 06:15:28', '2017-09-28 06:16:18'),
(221, 'Invalid Username Or Password', 'Invalid Username Or Password', 'خطأ في اسم المستخدم أو كلمة مرور', '2017-09-28 06:28:15', '2017-10-18 15:05:28'),
(222, 'Login Successfully', 'Login Successfully', 'تم الدخول بنجاح', '2017-09-28 06:28:32', '2017-10-23 14:41:48'),
(223, 'No Items Available.', 'No Items Available.', 'لا يوجد عناصر متاحة', '2017-09-28 07:56:42', '2017-10-23 15:02:13'),
(224, 'No Favorites Availabe.', 'No Favorites Availabe.', 'لا يوجد عناصر بالمفضله', '2017-09-28 07:57:45', '2017-10-15 14:05:53'),
(225, 'Ezhal Control Panel', 'Ezhal Control Panel', 'لوحة التحكم إزهل', '2017-09-28 08:13:05', '2017-10-18 14:48:17'),
(226, 'Remember Me', 'Remember Me', 'تذكير', '2017-09-28 08:13:06', '2017-10-23 15:10:35'),
(227, 'Login', 'Login', 'تسجيل الدخول', '2017-09-28 08:13:06', '2017-10-23 14:41:40'),
(228, 'No Data Available', 'No Data Available', 'لا يوجد محتوي', '2017-09-28 14:28:55', '2017-10-15 14:04:49'),
(229, 'the code is: ', 'the code is: ', 'الرمز هو:', '2017-10-02 16:01:53', '2017-10-23 15:24:21'),
(230, 'Address Updated Successfully', 'Address Updated Successfully', 'تم تعديل العنوان بنجاح', '2017-10-02 16:01:53', '2017-10-16 14:36:31'),
(231, 'Item Already In Your Favorites', 'Item Already In Your Favorites', 'العنصر متواجد بسلة المفضلة لديك', '2017-10-03 12:51:09', '2017-10-18 15:16:44'),
(232, 'No Item Available.', 'No Item Available.', 'لا يوجد عنصر متاحة', '2017-10-03 12:52:00', '2017-10-23 15:02:17'),
(233, 'Item Added Successfully', 'Item Added Successfully', 'تمت إضافة العنصر بنجاح', '2017-10-03 12:56:43', '2017-10-18 15:05:46'),
(234, 'Items Added Successfully', 'Items Added Successfully', 'تم إضافة العناصر بنجاح', '2017-10-03 14:22:48', '2017-10-23 13:42:33'),
(235, 'Code Error!', 'Code Error!', 'خطأ بالكود !', '2017-10-07 02:32:51', '2017-10-16 14:39:15'),
(236, 'Invalid Email Or Mobile', 'Invalid Email Or Mobile', 'البريد الإلكتروني أو الجوال غير صالح', '2017-10-07 02:32:51', '2017-10-18 15:04:33'),
(237, 'Update Shopping History', 'Update Shopping History', 'تحديث سجل التسوق', '2017-10-08 14:34:01', '2017-10-23 16:17:52'),
(238, 'Mobile', 'Mobile', 'هاتف جوال', '2017-10-08 14:34:02', '2017-10-23 14:43:21'),
(239, 'Holder', 'Holder', 'المالك', '2017-10-08 14:34:02', '2017-10-18 15:02:10'),
(240, 'items', 'items', 'العناصر', '2017-10-08 14:34:02', '2017-10-23 13:41:48'),
(241, 'Error In Deleting Favorite, Try Again!', 'Error In Deleting Favorite, Try Again!', 'خطأ في حذف المفضلة، حاول مرة أخرى!', '2017-10-08 15:30:13', '2017-10-18 14:39:56'),
(242, 'Favorite Trashed Successfully', 'Favorite Trashed Successfully', 'تم نقل المحذوفات بنجاح', '2017-10-08 15:30:13', '2017-10-18 14:50:27'),
(243, 'Favorite Added Successfully', 'Favorite Added Successfully', 'تمت إضافة المفضلة بنجاح', '2017-10-08 16:41:35', '2017-10-18 14:49:10'),
(244, 'Error In Deleting Item, Try Again!', 'Error In Deleting Item, Try Again!', 'حدث خطأ أثناء حذف العنصر، حاول مرة أخرى!', '2017-10-08 16:47:52', '2017-10-18 14:45:03'),
(245, 'Item Trashed Successfully', 'Item Trashed Successfully', 'تم حذف العنصر بنجاح', '2017-10-08 16:47:52', '2017-10-18 15:17:04'),
(246, 'Registration Failed, Try Again!', 'Registration Failed - Try Again!', 'فشل التسجيل، حاول مرة أخرى!', '2017-10-09 09:56:50', '2017-12-24 10:55:55'),
(247, 'Thanks For Registration, Please Activate Your Account', 'Thanks For Registration, Please Activate Your Account', 'شكرا للتسجيل، يرجى تفعيل حسابك', '2017-10-09 09:57:04', '2017-10-23 15:24:39'),
(248, 'Your Account is Activated Now.', 'Your Account is Activated Now.', 'تم تفعيل حسابك الآن', '2017-10-09 09:59:09', '2017-10-23 16:20:51'),
(249, 'Data Added Successfully.', 'Data Added Successfully.', 'تم إضافة البيانات بنجاح', '2017-10-09 10:22:41', '2017-10-18 14:16:55'),
(250, 'Invalid User Or Token', 'Invalid User Or Token', 'مستخدم أو الرمز المميز غير صالح', '2017-10-10 13:39:12', '2017-10-18 15:05:07'),
(251, 'Device Token Saved Successfully', 'Device Token Saved Successfully', 'تم حفظ رمز الجهاز بنجاح', '2017-10-10 14:31:09', '2017-10-18 14:21:19'),
(252, 'Device Language Changed Successfully', 'Device Language Changed Successfully', 'تم تغيير اللغة بنجاح', '2017-10-10 15:50:40', '2017-10-18 14:20:51'),
(253, 'Contacts', 'Contact  us', 'تواصل  معنا', '2017-10-11 11:14:54', '2017-12-31 14:19:39'),
(254, 'Error Sendin Message.', 'Error Sending Message.', 'حدث خطأ أثناء إرسال الرسالة.', '2017-10-11 11:38:38', '2017-10-18 14:45:36'),
(255, 'List Contacts', ' Contact List', 'قائمة جيهات الإتصال', '2017-10-11 11:42:02', '2017-10-23 13:48:21'),
(256, 'Email', 'Email', 'البريد الإلكتروني', '2017-10-11 11:42:02', '2017-10-18 14:34:11'),
(257, 'Mobile No.', 'Mobile No', 'رقم الهاتف الجوال', '2017-10-11 11:42:02', '2017-12-24 09:26:28'),
(258, 'Subject', 'Subject', 'الموضوع', '2017-10-11 11:42:02', '2017-10-23 15:24:09'),
(259, 'Message', 'Message', 'رسالة', '2017-10-11 11:42:02', '2017-10-23 14:42:48'),
(260, 'Message Sent Successfully', 'Message Sent Successfully', 'تم إرسال الرسالة بنجاح', '2017-10-11 11:42:10', '2018-03-20 14:21:39'),
(261, 'Buying Price', 'Buying Price', 'سعر الشراء', '2017-10-11 13:58:11', '2017-10-16 14:37:02'),
(262, 'Items Only Available Now', 'Items Only Available Now', 'العناصر المتوفرة حاليا فقط', '2017-10-11 15:15:44', '2017-10-23 13:43:50'),
(263, 'Error Sending Message.', 'Error Sending Message.', 'حدث خطأ أثناء إرسال الرسالة.', '2017-10-11 16:37:29', '2017-10-18 14:45:52'),
(264, 'Import Cards', 'Import Cards', 'إضافه ملف كروت', '2017-10-12 11:13:16', '2017-10-16 16:24:20'),
(265, 'Select File', 'Select File', 'اختر ملف', '2017-10-12 11:13:23', '2018-03-20 13:51:33'),
(266, 'STC 10', 'STC - 10', 'أس تي سي - 10', '2017-10-12 11:50:54', '2018-03-17 10:53:49'),
(267, 'STC 20', 'STC 20', 'أس تي سي 20', '2017-10-12 11:50:54', '2018-03-17 10:54:17'),
(268, 'zain 10', 'Zain 10', 'زين10', '2017-10-12 11:50:54', '2018-03-17 10:48:10'),
(269, 'Zain 20', 'Zain 20', 'زين 20', '2017-10-12 11:50:54', '2018-03-17 10:48:37'),
(270, 'Mobily 10', 'Mobily 10', 'موبايلي 10', '2017-10-12 11:50:54', '2018-03-17 11:34:43'),
(271, 'Mobily 30', 'Mobily 30', 'موبايلي 30', '2017-10-12 11:50:54', '2018-03-17 11:35:04'),
(272, 'ZAIN 10 SR\r', 'Zain 10 SAR', 'زين 10 ريال', '2017-10-12 11:50:54', '2018-03-17 10:48:18'),
(273, 'اس تي سي 10', 'اس تي سي 10', 'اس تي سي 10', '2017-10-12 11:55:31', '2017-10-12 11:55:31'),
(274, 'اس تي سي 20', 'اس تي سي 20', 'اس تي سي 20', '2017-10-12 11:55:31', '2017-10-12 11:55:31'),
(275, 'زين 10', 'زين 10', 'زين 10', '2017-10-12 11:55:31', '2017-10-12 11:55:31'),
(276, '', '', '', '2017-10-12 11:55:31', '2017-10-12 11:55:31'),
(277, 'STC 10 SR', 'STC 10 SR', 'أس تي سي 10 ريال', '2017-10-12 11:57:56', '2018-03-17 10:53:58'),
(278, 'STC 20 SR', 'STC 20 SR', 'أس تي سي 20 ريال', '2017-10-12 11:57:56', '2018-03-17 10:54:22'),
(279, 'ZAIN 10 SR', ' Zain - 10 SAR', 'زين - 10 ريال', '2017-10-12 11:57:56', '2018-03-17 10:48:23'),
(280, 'ZAIN 20 SR', 'Zain 20 SR', 'زين 20 ريال', '2017-10-12 11:57:56', '2018-03-17 10:48:40'),
(281, 'MOBILY 10 SR', 'Mobily 10 SR', 'موبايلي - 10 ريال', '2017-10-12 11:57:56', '2018-03-17 11:34:56'),
(282, 'MOBILY 30 SR', 'Mobily 30 SR', 'موبايلي 30 ريال', '2017-10-12 11:57:56', '2018-03-17 11:35:11'),
(283, 'iTunes [US] - 100 USD', 'iTunes [US] - 100 USD', 'اي تونز [US] - 100 دولار', '2017-10-12 15:51:13', '2018-03-17 10:36:28'),
(284, 'Role deleted successfully', 'Role deleted successfully', 'تم حذف الدور بنجاح', '2017-10-15 16:54:08', '2017-10-23 15:15:45'),
(285, 'Name Required, Min. 3 Characters', 'Name Required, Min. 3 Characters', 'الإسم المطلوب، 3 أحرف على الأقل', '2017-10-16 10:47:07', '2017-10-23 14:38:56'),
(286, 'Select City', 'Select City', 'اختر مدينة', '2017-10-16 10:47:46', '2017-10-23 15:17:15'),
(287, 'Email Required, Must Be Like Yourname@xxxx.com', 'Required email must be : yourname@xxxx.com', 'يجب أن يكون العنوان الإلكتروني : yourname@xxxx.com', '2017-10-16 10:48:02', '2017-10-18 14:38:33'),
(288, 'Password Required, Min. 6 Characters', 'Password Required, Min. 6 Characters', 'كلمة السر المطلوبة، على الأقل 6 أحرف', '2017-10-16 10:48:02', '2017-10-23 15:04:59'),
(289, 'Error Dending Code!', 'Error Dending Code!', 'حدث خطأ أثناء إرسال الرمز!', '2017-10-16 16:59:14', '2017-10-18 14:39:02'),
(290, 'Code Sent Successfully.', 'Code Sent Successfully.', 'تم إرسال الرمز بنجاح', '2017-10-16 16:59:14', '2017-12-24 08:37:56'),
(291, 'worng email or mobile.', 'Worng Email or Mobile Number', 'البريد الإلكتروني أو رقم الجوال غير صحيح', '2017-10-16 22:02:38', '2017-12-24 11:42:13'),
(292, 'User Language Changed Successfully', 'User Language Changed Successfully', 'تم تغيير لغة المستخدم بنجاح', '2017-10-18 09:56:20', '2017-10-23 16:18:55'),
(293, 'Selected Items Enabled Successfully.', 'Selected Items Enabled Successfully.', 'تم تفعيل العناصر المحددة بنجاح', '2017-10-18 13:07:59', '2017-10-23 15:19:42'),
(294, 'Offers', 'Offers', 'عروض', '2017-10-18 13:40:09', '2017-10-23 15:03:42'),
(295, 'New Offer', 'New Offer', 'عرض جديد', '2017-10-18 13:40:09', '2017-10-23 14:45:30'),
(296, 'List Offers', 'List Offers', 'قائمة العروض', '2017-10-18 13:47:17', '2017-10-23 13:48:42'),
(297, 'Create Offer', 'Create Offer', 'إنشاء عرض', '2017-10-18 13:47:28', '2017-10-18 14:11:43'),
(298, 'Offer', 'Offer', 'عرض', '2017-10-18 13:47:28', '2017-10-23 15:03:23'),
(299, 'Add Offers', 'Add Offers', 'أضافة عروض', '2017-10-18 13:47:28', '2017-10-18 14:00:49'),
(300, 'Edit Offer', 'Edit Offer', 'تعديل العرض', '2017-10-18 14:11:38', '2017-10-18 15:15:45'),
(301, 'Update Offer', 'Update Offer', 'تحديث العرض', '2017-10-18 14:16:58', '2017-10-23 16:16:46'),
(302, 'Promo Code', 'Promo Code', 'الرمز الترويجي', '2017-10-18 14:16:58', '2017-10-23 15:07:54'),
(303, 'Notifications', 'Notifications', 'إشعارات', '2017-10-24 12:53:53', '2017-12-24 10:29:58'),
(304, 'New Notification', 'New Notification', 'إشعارات جديدة', '2017-10-24 12:53:53', '2017-12-24 09:37:11'),
(305, 'List Notifications', 'List Of Notifications', 'قائمة الإشعارات', '2017-10-25 09:15:48', '2017-12-24 09:25:19'),
(306, 'Edit Notification', 'Edit Notification', 'تعديل إشعار', '2017-10-25 09:15:48', '2017-12-24 08:44:30'),
(307, 'Update Notification', 'Update Notification', 'تحديث الإشعار', '2017-10-25 09:15:58', '2017-12-24 11:37:20'),
(308, 'Notification', 'Notification', 'إشعار', '2017-10-25 09:15:58', '2017-12-24 10:29:33'),
(309, 'Send To Android', 'Send To Android', 'إرسال إلى الاندرويد', '2017-10-25 09:15:58', '2017-12-24 11:01:54'),
(310, 'Send To IOS', 'Send To IOS', 'إرسال إلى iOS', '2017-10-25 09:15:58', '2017-12-24 11:02:27'),
(311, 'Language', 'Language', 'اللغة', '2017-10-25 09:15:58', '2017-12-24 09:24:14'),
(312, 'Save & Send', 'Save & Send', 'حفظ و إرسال', '2017-10-25 09:15:58', '2017-12-24 10:59:06'),
(313, 'Create Notification', 'Create Notification', 'تم إنشاء إشعار', '2017-10-25 10:07:35', '2017-12-24 08:38:46'),
(314, 'Add Notifications', 'Add Notifications', 'إضافة إشعارات', '2017-10-25 10:07:35', '2017-12-21 09:08:18'),
(315, 'This Mobile Already Exist', 'This Mobile Number Already Registered', 'رقم الجوال مسجل لدينا', '2017-10-26 10:41:14', '2017-12-24 11:33:57'),
(316, 'Token Returned Successfully', 'Token Returned Successfully', 'تمت إعادة الرمز المميز بنجاح', '2017-10-29 15:12:21', '2017-12-24 11:34:14'),
(317, 'Invalid Token', 'Invalid Token', 'الرمز غير صحيح', '2017-10-29 15:13:34', '2017-12-24 09:15:29'),
(318, 'User Not Active', 'User Not Active', 'مستخدم غير مفعل', '2017-10-30 16:36:30', '2017-12-24 11:38:14'),
(319, 'Sorry, You Can Buy ', 'We added all quantities to your shopping cart ,Sorry you can buy', 'أضفنا جميع الكميات إلى سلة التسوق الخاصة بك، آسف يمكنك شراء', '2017-11-02 10:06:07', '2018-01-25 11:55:49'),
(320, ' Cards Only Now From ', ' Cards Only Now From', ' من الآن، بطاقات فقط', '2017-11-02 10:06:07', '2018-03-19 09:52:13'),
(321, 'Notification List Returned Successfully.', 'Notification List Returned Successfully.', 'قائمة الإشعارات التي تمت إرجاعها بنجاح', '2017-11-02 15:04:35', '2017-12-24 10:29:50'),
(322, 'No Notifications Available', 'No Notifications Available', 'لا إشعارات متاحة', '2017-11-02 15:11:50', '2017-12-24 10:28:08'),
(323, 'USD Price', 'USD Price', 'السعر بالدولار أمريكي', '2017-11-05 13:15:49', '2017-12-24 11:38:05'),
(324, 'Invalid User', 'Invalid User', 'المستخدم غير صحيح', '2017-11-06 16:49:06', '2017-12-24 09:16:08'),
(325, 'This Email Already Exist', 'This Email Already Exist', 'هذا البريد الإلكتروني محجوز', '2017-11-07 11:06:12', '2017-12-24 11:33:17'),
(326, 'Your Order Is Ready.', 'Your Order Is Ready.', 'طلبك جاهز', '2017-11-07 13:03:47', '2017-12-24 11:48:04'),
(327, 'Error in canceling order.', 'Error in canceling order.', 'خطأ في إلغاء الطلب', '2017-11-07 13:06:34', '2017-12-24 08:45:49'),
(328, 'Order Canceled Successfully.', 'Order Canceled Successfully.', 'تم إلغاء الطلب بنجاح.', '2017-11-07 13:06:34', '2017-12-24 10:30:45'),
(329, 'Payment Failed, Try Again!', 'Payment Failed, Try Again!', 'فشل الدفع، حاول مرة أخرى !', '2017-11-07 15:07:35', '2017-12-24 10:31:44'),
(330, 'Transaction Saved Successfully', 'Transaction Saved Successfully', 'تم تسجيل عمليه الدفع بنجاح', '2017-11-07 15:48:27', '2018-03-20 14:41:25'),
(331, ', and ', ', and ', ', و', '2017-11-07 17:00:29', '2018-03-20 13:52:39'),
(332, 'Password Changed Successfully.', 'Password Changed Successfully.', 'تم تغيير كلمة السر بنجاح', '2017-11-08 10:45:46', '2017-12-24 10:31:15'),
(333, 'call_center_for_mobile_webservice', 'call_center_for_mobile_webservice', 'مركز الإتصال لمركز خدمات موقع الويب', '2017-11-08 11:22:39', '2017-12-24 08:25:25'),
(334, 'Invalid Order.', 'Invalid Order.', 'طلب غير صحيح', '2017-11-08 11:22:39', '2018-03-20 14:17:16'),
(335, 'Price Class', 'Price Class', 'فئة السعر', '2017-11-09 13:25:10', '2017-12-24 10:41:02'),
(338, 'Price Classes', 'Price Classes', 'فئات الأسعار', '2017-11-12 10:34:31', '2018-03-20 14:28:07'),
(339, 'New Price Class', 'New Price Class', 'قائمة أسعار جديدة', '2017-11-12 10:34:31', '2017-12-24 09:37:19'),
(340, 'List Price Classes', 'List Price Classes', 'قائمة الأسعار', '2017-11-12 10:35:03', '2017-12-24 09:25:40'),
(341, 'Update Price Class', 'Update Price Class', 'تحديث قائمة الأسعار', '2017-11-12 10:35:27', '2017-12-24 11:37:27'),
(342, 'Select Price Class', 'Select Price Class', 'حدد فئة السعر', '2017-11-12 10:46:40', '2017-12-24 11:01:15'),
(343, 'Solden', 'Solden', 'تم البيع', '2017-11-12 10:56:53', '2018-03-17 10:54:39'),
(344, 'Sold Out', 'Sold Out', 'بيعت بالكامل', '2017-11-12 10:56:53', '2017-12-24 11:04:11'),
(345, 'Reserved', 'Reserved', 'محجوز', '2017-11-12 11:01:49', '2017-12-24 10:56:24'),
(346, 'Available', 'Available', 'متوفر', '2017-11-12 11:01:49', '2017-12-21 09:27:13'),
(347, 'ZAINaa 10 SR', 'Zain', 'زين', '2017-11-12 11:05:58', '2017-12-24 12:00:41'),
(348, 'Create Price Class', 'Create Price Class', 'إنشاء فئة السعر', '2017-11-12 11:14:07', '2017-12-24 08:39:03'),
(349, 'Add Price Class', 'Add Price Class', 'فئات الكروت', '2017-11-12 11:14:07', '2018-03-20 13:54:45'),
(350, ' Mobily 30 SR', 'Mobily 30 SR', 'موبايلي 30 ريال', '2017-11-12 11:18:24', '2018-03-17 11:35:15'),
(351, 'Paid', 'Paid', 'تم الدفع', '2017-11-12 15:29:16', '2018-03-15 12:01:43'),
(352, 'List TV Packages', 'List TV Packages', 'قائمة باقات التلفزيون', '2017-11-12 15:30:37', '2018-03-20 14:22:41'),
(353, 'Yearly', 'Yearly', 'سنويا', '2017-11-12 15:30:37', '2017-12-24 11:47:40'),
(354, 'Months', 'Months', 'أشهر', '2017-11-12 15:30:37', '2017-12-24 09:36:05'),
(355, 'The :attribute Field Is Required.', 'The :attribute Field Is Required.', 'حقل الحقل مطلوب', '2017-11-12 15:32:12', '2018-03-20 14:29:18'),
(356, 'Category Type Select Is Required', 'Category Type Select Is Required', 'تحديد الفئة، مطلوبة', '2017-11-12 15:32:12', '2017-12-24 08:37:29'),
(357, 'Category Select Is Required', 'Select the category is required', 'تحديد الفئة مطلوبة', '2017-11-12 15:32:12', '2017-12-24 08:37:12'),
(358, 'Category Select Is Required.', 'Select the category is required', 'تحديد الفئة مطلوبة', '2017-11-12 15:44:06', '2017-12-24 08:37:14'),
(359, 'Image Is Required.', 'Image Is Required.', 'الصورة مطلوبة', '2017-11-12 15:44:06', '2017-12-24 08:58:50'),
(360, 'Already Added Data.', 'Already Added Data.', 'تم إضافة البيانات مسبقا.', '2017-11-12 16:00:01', '2018-03-20 13:56:48'),
(361, 'ZAIN 100 SR', ' Zain - 100 SR', 'زين - 100 ريال', '2017-11-12 16:08:11', '2018-03-17 10:48:35'),
(362, 'GooGle Play 25 USD', 'Google Play  [US] - 25 USD', 'جوجل بلاي [US] - 25 دولار أمريكي', '2017-11-12 17:00:29', '2018-03-17 11:54:11'),
(363, 'File Types', 'File Types', 'نوع الملفات', '2017-11-13 14:50:48', '2017-12-24 08:47:20'),
(364, 'numny', 'numny', 'عصر الجوال', '2017-11-13 14:50:48', '2018-03-20 14:25:14'),
(365, 'ogcode', 'ogcode', 'أوجي كود', '2017-11-13 14:50:48', '2017-12-24 10:30:33'),
(366, 'Created At', 'Created At', 'أنشات في', '2017-11-13 14:52:02', '2017-12-24 08:40:13'),
(367, 'No Transaction', 'No Transaction', 'لا توجد معاملة', '2017-11-14 15:40:17', '2017-12-24 10:28:50'),
(368, 'Transaction succeeded', 'Transaction succeeded', 'تمت عمليه الدفع بنجاح', '2017-11-14 15:40:18', '2018-03-20 14:41:29'),
(369, 'Transaction Failed', 'Transaction Failed', 'فشل عمليه الدفع', '2017-11-14 15:40:19', '2018-03-20 14:42:15'),
(370, 'Card Code', 'Card Code', 'رمز البطاقة', '2017-11-14 15:41:23', '2017-12-24 08:25:47'),
(371, 'nonce_referance', 'nonce_reference', 'المرجع البنكي', '2017-11-14 15:41:23', '2018-03-20 14:20:09'),
(372, 'Payment Status', 'Payment Status', 'حالة السداد', '2017-11-14 15:41:23', '2017-12-24 10:32:00'),
(373, 'Availablility', 'Availablility', 'توافرها', '2017-11-14 15:41:23', '2017-12-24 08:24:10'),
(374, 'Available (Taken)', 'Available)Taken)', 'متوفر ( تم تسليمها)', '2017-11-14 15:41:23', '2018-03-20 13:59:39'),
(375, 'Transactions', 'Transactions', 'عمليات الدفع', '2017-11-14 16:30:06', '2018-03-20 14:40:55'),
(376, 'Transaction', 'Transaction', 'عمليه الدفع', '2017-11-14 16:31:40', '2018-03-20 14:43:04'),
(377, 'List Transaction', 'List Transaction', 'قائمة المعاملات', '2017-11-14 16:31:40', '2017-12-24 09:26:01'),
(378, 'Edit Transaction', 'Edit Transaction', 'تعديل عملية', '2017-11-14 16:31:40', '2017-12-24 08:44:36'),
(379, 'Delete Transaction', 'Delete Transaction', 'حذف العملية', '2017-11-14 16:31:40', '2017-12-24 08:42:27'),
(380, 'Update Transaction', 'Update Transaction', 'تحديث العملية', '2017-11-15 10:23:07', '2017-12-24 11:37:42'),
(381, 'Code is Confirmed', 'Code is Confirmed', 'تم تأكيد الرمز', '2017-11-15 15:40:32', '2017-12-24 08:37:47'),
(382, 'Invalid Old Password', 'Invalid Old Password', 'كلمة المرور القديمة غير صحيحة', '2017-11-15 15:40:58', '2017-12-27 09:55:05'),
(383, 'SAR', 'SAR', 'ر.س', '2017-11-16 14:26:04', '2017-12-24 10:58:52'),
(384, 'Sales Report', 'Sales Report', 'تقارير المبيعات', '2017-11-22 11:36:54', '2018-03-20 14:33:40'),
(385, 'Service Name', 'Service Name', 'إسم الخدمة', '2017-11-22 11:36:54', '2017-12-24 11:03:02'),
(386, 'Service Category', 'Service Category', 'فئة الخدمة', '2017-11-22 11:36:54', '2017-12-24 11:02:52'),
(387, 'Transaction Date', 'Transaction Date', 'تاريخ عمليه الدفع', '2017-11-22 11:36:54', '2018-03-20 14:42:33'),
(388, 'Transaction Ref,', 'Transaction Ref,', 'مرجع عمليه الدفع,', '2017-11-22 11:36:54', '2018-03-20 14:41:48'),
(389, 'Servise Status', 'Service Status', 'حالة الخدمة', '2017-11-22 11:36:54', '2018-03-20 14:31:41'),
(390, 'Transaction Amount SR', 'Transaction Amount SR', 'قيمة عمليه الدفع بالريال السعودي', '2017-11-22 11:36:54', '2018-03-20 14:42:44'),
(391, 'Transaction fees SR', 'Transaction fees SR', 'رسوم عمليه الدفع بالريال السعودي', '2017-11-22 11:36:54', '2018-03-20 14:41:55'),
(392, 'Net Amount sr', 'Net Amount sr', 'صافي المبلغ بالريال السعودي', '2017-11-22 11:36:54', '2017-12-24 09:37:01'),
(393, 'Due Payment', 'Due Payment', 'مستحقة الدفع', '2017-11-22 11:36:54', '2017-12-24 08:42:52'),
(394, 'Reports', 'Reports', 'تقارير', '2017-11-22 11:36:54', '2017-12-24 10:56:21'),
(395, 'Stock Report', 'Stock Report', 'تقرير المخزون', '2017-11-22 11:36:54', '2017-12-24 11:16:22'),
(396, 'USD', 'USD', 'دولار أمريكي', '2017-11-22 16:59:53', '2017-12-24 11:37:57'),
(397, 'Transaction Ref', 'Transaction Ref', 'مرجع عمليه الدفع', '2017-11-22 16:59:54', '2018-03-20 14:41:41'),
(398, 'Service Status', 'Service Status', 'حالة الخدمة', '2017-11-22 16:59:54', '2017-12-24 11:03:25'),
(399, 'Currency', 'Currency', 'العملة', '2017-11-22 16:59:54', '2017-12-24 08:40:16'),
(400, 'succeeded', 'succeeded', 'نجح', '2017-11-22 16:59:54', '2017-12-24 11:26:15'),
(401, 'We sent you an activation code. Check your email.', 'We sent you an activation code. Please check your email.', 'تم إرسلال رمز التفعيل. يرجى التحقق من بريدك الإلكتروني', '2017-11-23 13:51:03', '2017-12-24 11:41:11'),
(402, 'Transaction Amount', 'Transaction Amount', 'قيمة عمليه الدفع', '2017-11-26 11:29:53', '2018-03-20 14:42:42'),
(403, 'Transaction fees', 'Transaction fees', 'رسوم عمليه الدفع', '2017-11-26 11:29:53', '2018-03-20 14:42:00'),
(404, 'Net Amount', 'Net Amount', 'صافي المبلغ', '2017-11-26 11:29:53', '2017-12-24 09:36:52'),
(405, 'VAT', 'VAT', 'ضريبة القيمة المضافة', '2017-11-26 11:56:43', '2018-03-20 14:35:47'),
(406, 'Sales Amount Without VAT', 'Sales Amount Without VAT', 'قيمة المبيعات بدون ضريبة القيمة المضافة', '2017-11-26 11:56:43', '2017-12-24 10:58:39'),
(407, 'Failed To Add This Item: ', 'This item not available now', 'هذا المنتج غير متاح لدينا الان', '2017-11-26 14:36:03', '2017-11-26 14:54:21'),
(408, 'No Service Status', 'No Service Status', 'حالة الخدمة غير متوفرة', '2017-11-29 11:30:53', '2017-12-24 10:28:35'),
(409, 'Failed', 'Failed', 'فشل', '2017-11-29 11:30:53', '2017-12-24 08:46:58'),
(410, 'All', 'All', 'الكل', '2017-11-29 11:38:17', '2017-12-24 08:17:04'),
(411, 'itune 100 SR', 'iTunes [US] - 100 USD', 'اي تونز [US] - 100 دولار', '2017-11-29 11:38:17', '2018-03-17 10:36:07'),
(412, 'GooGle Play 25 SR', 'Google Play  [US] - 25 SR', 'جوجل بلاي [US] - 25 دولار أمريكي', '2017-11-29 11:38:17', '2018-03-17 11:54:15'),
(413, 'Payment Type', 'Payment Type', 'نوع الدفع', '2017-11-29 11:38:17', '2017-12-24 10:32:13'),
(414, 'Transaction Date From', 'Transaction Date From', 'تاريخ عمليه الدفع من', '2017-11-29 11:38:17', '2018-03-20 14:42:26'),
(415, 'Transaction Date To', 'Transaction Date To', 'تاريخ عمليه الدفع إلى', '2017-11-29 11:38:17', '2018-03-20 14:42:25'),
(416, 'Beginning Balance', 'Beginning Balance', 'بداية الرصيد', '2017-11-30 16:17:49', '2017-12-24 08:24:32'),
(417, 'Incoming Balance', 'Incoming Balance', 'الرصيد الوارد', '2017-11-30 16:17:49', '2017-12-24 09:00:56'),
(418, 'Sales', 'Sales', 'مبيعات', '2017-11-30 16:17:49', '2017-12-24 10:57:51'),
(419, 'End Balance', 'End Balance', 'الرصيد النهائي', '2017-11-30 16:17:49', '2017-12-24 08:44:57'),
(420, 'Arabic Title Is Required', 'Arabic Title Is Required', 'مطلوب عنوان باللغة العربية', '2017-12-11 11:50:52', '2017-12-21 09:25:36'),
(421, 'English Title Is Required', 'English Title Is Required', 'العنوان باللغة الإنجليزية مطلوب', '2017-12-11 11:50:52', '2017-12-24 08:45:37'),
(422, 'Image Is Required', 'Image Is Required', 'الصورة مطلوبة', '2017-12-11 11:50:52', '2017-12-24 08:58:45'),
(423, 'Category Type Is Required', 'Category Type Is Required', 'تحديد الفئة، مطلوبة', '2017-12-11 12:11:38', '2017-12-24 08:37:11'),
(424, 'Arabic Title Select Is Required', 'Arabic Title Selection Is Required', 'إختيار العنوان باللغة العربية', '2017-12-11 12:58:59', '2017-12-21 09:26:58'),
(425, 'Arabic Content Select Is Required', 'Arabic Content Select Is Required', 'يرجى إختيار المحتوى باللغة العربية', '2017-12-11 12:58:59', '2017-12-21 09:24:26'),
(426, 'English Content Is Required', 'English Content Is Required', 'المحتوى باللغة الإنجليزية مطلوب', '2017-12-11 12:58:59', '2017-12-24 08:45:21'),
(427, 'ZAIN 10 SAR', 'Zain 10 SAR', 'زين 10 ريال', '2017-12-19 13:44:39', '2018-04-29 14:46:14'),
(428, 'STC 10 SAR', 'STC 10 SAR', 'أس تي سي 10 ريال', '2017-12-19 13:47:45', '2018-03-17 10:53:52'),
(429, 'Mobily 10 SAR', 'Mobily 10 SAR', 'موبايلي - 10 ريال', '2017-12-19 14:23:35', '2018-03-17 11:34:47'),
(430, 'GooGle Play 10 USD', 'Google Play  [US] -10 USD', 'جوجل بلاي [UK] - 10 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-17 11:53:40'),
(431, 'QuickNet, 1 GB', 'QuickNet - 1 GB', 'كويك نيت - 1 جيجابايت', '2017-12-19 14:23:35', '2017-12-24 12:04:52'),
(432, 'STC 300 SR', 'STC 300 SR', 'أس تي سي 300 ريال', '2017-12-19 14:23:35', '2018-03-17 10:54:29'),
(433, 'sawa 50 SAR', 'Sawa 50 SAR', 'سوا 50 ريال', '2017-12-19 14:23:35', '2018-03-17 10:57:47'),
(434, 'STC 100 SR', 'STC 100 SR', 'أس تي سي 100 ريال', '2017-12-19 14:23:35', '2018-03-17 10:54:09'),
(435, 'Mobily 50 SAR', 'Mobily 50 SAR', 'موبايلي 50 ريال', '2017-12-19 14:23:35', '2018-03-17 11:35:19'),
(436, 'Lebara - 10 SAR', ' Lebara - 10 SAR', 'ليبارا - 10 ريال', '2017-12-19 14:23:35', '2018-03-17 11:36:05'),
(437, 'Lebara - 20 SAR', 'Lebara - 20 SAR', 'ليبارا - 20 ريال', '2017-12-19 14:23:35', '2018-03-17 11:36:14'),
(438, 'Lebara - 50 SAR', 'Lebara - 50 SAR', 'ليبارا - 50 ريال', '2017-12-19 14:23:35', '2018-03-17 11:36:18'),
(439, 'Lebara - 100 SAR', 'Lebara - 100 SAR', 'ليبارا - 100 ريال', '2017-12-19 14:23:35', '2018-03-17 11:36:10'),
(440, 'Virgin, 10 SAR', 'Virgin', 'فيرجن', '2017-12-19 14:23:35', '2017-12-24 11:39:33'),
(441, 'Virgin, 20 SAR', 'Virgin', 'فيرجن', '2017-12-19 14:23:35', '2017-12-24 11:39:38'),
(442, 'Virgin, 30 SAR', 'Virgin', 'فيرجن', '2017-12-19 14:23:35', '2017-12-24 11:39:40'),
(443, 'Virgin, 50 SAR', 'Virgin', 'فيرجن', '2017-12-19 14:23:35', '2017-12-24 11:39:41'),
(444, 'Virgin, 100 SAR', 'Virgin', 'فيرجن', '2017-12-19 14:23:35', '2017-12-24 11:39:37'),
(445, 'Zain, 50 SAR', 'Zain, 50 SAR', 'زينو 50 ريال', '2017-12-19 14:23:35', '2018-03-17 10:49:22'),
(446, 'Zain, 100 SAR', 'Zain, 100 SAR', 'زينو 100 ريال', '2017-12-19 14:23:35', '2018-03-17 10:49:00'),
(447, 'iTunes [US] - 10 USD', 'iTunes [US] - 10 USD', 'اي تونز [US] - 10 دولار', '2017-12-19 14:23:35', '2018-03-17 10:36:23'),
(448, 'iTunes [US] - 15 USD', 'iTunes [US] - 15 USD', 'اي تونز [US] - 15 دولار', '2017-12-19 14:23:35', '2018-03-17 10:36:35'),
(449, 'iTunes [US] - 25USD', 'iTunes - [US] - 25 USD', 'اي تونز [US] - 25 دولار', '2017-12-19 14:23:35', '2018-03-17 10:37:48'),
(450, 'iTunes [US] - 50 USD', 'iTunes [US] - 50 USD', 'اي تونز [US] - 50 دولار', '2017-12-19 14:23:35', '2018-03-17 10:37:53'),
(451, 'GooGle Play25 USD', 'GooGle Play 25 USD', 'جوجل بلاي - 25 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-17 11:51:51'),
(452, 'GooGle Play 50 USD', 'Google Play  [US] - 50 USD', 'جوجل بلاي [US] - 50 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-17 11:53:59'),
(453, 'GooGle Play 100 USD', 'Google Play  [US]- 100 USD', 'جوجل بلاي [UK] - 100 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-17 11:53:34'),
(454, 'Amazon [US] - 25 USD', 'Amazon [US] - 25 USD', 'أمازون [US] - 25 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-15 13:46:46'),
(455, 'Amazon [US] - 50 USD', 'Amazon [US] - 50 USD', 'أمازون [US] - 50 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-15 13:46:50'),
(456, 'Xbox Live Gold [US] - 12 Months Subscriptions', 'Xbox Live Gold [US] - 12 Months Subscriptions', 'إكس بوكس لايف جولد [US] - إشتراك 12 شهر', '2017-12-19 14:23:35', '2017-12-24 11:47:23'),
(457, 'Xbox Live Gold [US] - 3 Months Subscriptions', 'Xbox Live Gold [US] - 3 Months Subscriptions', 'إكس بوكس لايف جولد [US] - إشتراك 3 أشهر', '2017-12-19 14:23:35', '2017-12-24 11:47:30'),
(458, 'Xbox Live Gold [US] - 1 Month Subscription', 'Xbox Live Gold [US] - 1 Month Subscription', 'إكس بوكس لايف جولد [US] - إشتراك 1 شهر', '2017-12-19 14:23:35', '2017-12-24 11:47:10'),
(459, 'Xbox Live [US] - 50 USD', 'Xbox Live [US] - 50 USD', 'إكس بوكس لايف [US] - 50 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-17 10:30:58');
INSERT INTO `languages` (`id`, `key`, `en`, `ar`, `created_at`, `updated_at`) VALUES
(460, 'Xbox Live [US] - 25 USD', 'Xbox Live [US] - 25 USD', 'إكس بوكس لايف [US] - 25 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-17 10:30:53'),
(461, 'PlayStation Network PSN Card [US] - 50 USD', 'PlayStation Network PSN Card [US] - 50 USD', 'بلاي ستايشن كارد [US] - 50 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-17 11:19:32'),
(462, 'PlayStation Network PSN Card [US] - 20 USD', 'PlayStation Network PSN Card [US] - 20 USD', 'بلاي ستايشن كارد [US] - 20 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-17 11:19:41'),
(463, 'PlayStation Network PSN Card [US] - 10 USD', 'PlayStation Network PSN Card [US] - 10 USD', 'بلاي ستايشن كارد [US] - 10 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-17 11:20:10'),
(464, 'PlayStation Network Plus [US] - 90 Days Subscription', 'PlayStation Network Plus [US] - 90 Days Subscription', 'بليستاتيون نيتورك بلس [US] - اشتراك 90 يوما', '2017-12-19 14:23:35', '2018-03-17 11:27:17'),
(465, 'PlayStation Network Plus [US] - 365 Days Subscription', 'PlayStation Network Plus [US] - 365 Days Subscription', 'بليستاتيون نيتورك بلس [US] - اشتراك 365 يوما', '2017-12-19 14:23:35', '2018-03-17 11:27:24'),
(466, 'PlayStation Network Plus [KSA] - 90 Days Subscription', 'PlayStation Network Plus [KSA] - 90 Days Subscription', 'بليستاتيون نيتورك بلس [KSA] - اشتراك 90 يوما', '2017-12-19 14:23:35', '2018-03-17 11:27:38'),
(467, 'PlayStation Network Plus [KSA] - 365 Days Subscription', 'PlayStation Network Plus [KSA] - 365 Days Subscription', 'بليستاتيون نيتورك بلس [KSA] - اشتراك 365 يوما', '2017-12-19 14:23:35', '2018-03-17 11:27:45'),
(468, 'PlayStation Network PSN Card [KSA] - 10 USD', 'PlayStation Network PSN Card [KSA] - 10 USD', 'بلاي ستايشن كارد [US] - 10 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-17 11:26:56'),
(469, 'PlayStation Network PSN Card [KSA] - 20 USD', 'PlayStation Network PSN Card [KSA] - 20 USD', 'بلاي ستايشن كارد [US] - 20 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-17 11:26:47'),
(470, 'PlayStation Network PSN Card [KSA] - 50 USD', 'PlayStation Network PSN Card [KSA] - 50 USD', 'بلاي ستايشن كارد [US] - 50 دولار أمريكي', '2017-12-19 14:23:35', '2018-03-17 11:20:18'),
(471, 'Facebook Credits [Global] - 25 USD', 'Facebook Credits [Global] - 25 USD', 'فاسيبوك كريديتس [عالمي] - 25 دولار أمريكي', '2017-12-19 14:23:36', '2018-03-17 10:02:28'),
(472, 'Facebook Credits [Global] - 15 USD', 'Facebook Credits [Global] - 15 USD', 'فاسيبوك كريديتس [عالمي] - 15 دولار أمريكي', '2017-12-19 14:23:36', '2018-03-17 10:02:23'),
(473, 'Steam Walled Card - 20 USD', 'Steam Walled Card - 20 USD', 'ستيم كار - 20 دولار أمريكي', '2017-12-19 14:23:36', '2018-03-17 10:11:14'),
(474, 'Steam Walled Card - 50 USD', 'Steam Walled Card - 50 USD', 'ستيم كار - 50 دولار أمريكي', '2017-12-19 14:23:36', '2018-03-17 10:11:18'),
(475, 'Steam Walled Card - 100 USD', 'Steam Walled Card - 100 USD', 'ستيم كار - 100 دولار أمريكي', '2017-12-19 14:23:36', '2018-03-17 10:11:07'),
(476, 'CashU Card [Global] - 500 Points', 'CashU Card [Global] - 500 Points', 'بطاقة كاش يو [عالمية] - 500 نقطة', '2017-12-19 14:23:36', '2018-03-17 12:01:15'),
(477, 'CashU Card [Global] - 1500 Points', 'CashU Card [Global] - 1500 Points', 'بطاقة كاش يو [عالمية] - 1500 نقطة', '2017-12-19 14:23:36', '2018-03-17 12:01:06'),
(478, 'CashU Card [Global] - 2500 Points', 'CashU Card [Global] - 2500 Points', 'بطاقة كاش يو [عالمية] - 2500 نقطة', '2017-12-19 14:23:36', '2018-03-17 12:01:10'),
(479, 'CashU Card [Global] - 5000 Points', 'CashU Card [Global] - 5000 Points', 'بطاقة كاش يو [عالمية] - 5000 نقطة', '2017-12-19 14:23:36', '2018-03-17 12:01:27'),
(480, 'Paysafecard [KSA] - 50 SAR', 'Paysafecard [KSA]', 'باي سيف كارد [KSA]', '2017-12-19 14:23:36', '2018-03-17 11:28:49'),
(481, 'Paysafecard [KSA] - 100 SAR', 'Paysafecard [KSA]', 'باي سيف كارد [KSA]', '2017-12-19 14:23:36', '2018-03-17 11:28:37'),
(482, 'Paysafecard [KSA] - 200 SAR', 'Paysafecard [KSA]', 'باي سيف كارد [KSA]', '2017-12-19 14:23:36', '2018-03-17 11:28:41'),
(483, 'Paysafecard [KSA] - 400 SAR', 'Paysafecard [KSA]', 'باي سيف كارد [KSA]', '2017-12-19 14:23:36', '2018-03-17 11:28:45'),
(484, 'GoCash (Global) - 5 USD', 'GoCash (Global) - 5 USD', 'جوكاش (عالمي) - 05 دولار أمريكي', '2017-12-19 14:23:36', '2018-03-17 11:57:07'),
(485, 'GoCash (Global) - 20 USD', 'GoCash (Global) - 20 USD', 'جوكاش (عالمي) - 20 دولار أمريكي', '2017-12-19 14:23:36', '2018-03-17 11:57:02'),
(486, 'QuickNet, 5 GB', 'QuickNet - 5 GB', 'كويك نيت - 5 جيجابايت', '2017-12-19 14:23:36', '2017-12-24 12:05:13'),
(487, 'QuickNet, 25 GB', 'QuickNet - 25 GB', 'كويك نيت - 25 جيجابايت', '2017-12-19 14:23:36', '2017-12-24 12:05:10'),
(488, 'QuickNet, 60 GB', 'QuickNet - 60 GB', 'كويك نيت - 60 جيجابايت', '2017-12-19 14:23:36', '2017-12-24 12:05:20'),
(489, 'QuickNet, 250 GB', 'QuickNet - 250 GB', 'كويك نيت - 250 جيجابايت', '2017-12-19 14:23:36', '2017-12-24 12:05:11'),
(490, 'QuickNet, 10 GB', 'QuickNet - 10 GB', 'كويك نيت - 10 جيجابايت', '2017-12-19 14:23:36', '2017-12-24 12:05:04'),
(491, 'QuickNet, 330 GB', 'QuickNet - 330 GB', 'كويك نيت - 330 جيجابايت', '2017-12-19 14:23:36', '2017-12-24 12:05:12'),
(492, 'Mobily Data - 10 GB', 'Mobily Data - 10 GB', 'موبايلي بيانات - 10 جيجا', '2017-12-19 14:23:36', '2018-03-17 11:32:18'),
(493, 'Mobily 100 SAR', 'Mobily 100 SAR', 'موبايلي 100 ريال', '2017-12-19 14:23:36', '2018-03-17 11:35:02'),
(494, 'Mobily Data - 300GB', 'Mobily Data - 300 GB', 'موبايلي بيانات - 300 جيجا', '2017-12-19 14:25:52', '2018-03-17 11:32:27'),
(495, 'Freindi, 10 SAR', 'Friendi, 10 SAR', 'فريندي، 10 ريال', '2017-12-19 14:44:20', '2018-05-03 11:32:46'),
(496, 'Freindi, 20 SAR', 'Friendi', 'فريندي - 20 ريال', '2017-12-19 14:44:41', '2018-05-03 11:32:56'),
(497, 'Freindi, 30 SAR', 'Friendi', 'فريندي - 30 ريال', '2017-12-19 14:45:06', '2018-05-03 11:33:03'),
(498, 'Freindi, 50SAR', 'Friendi', 'فريندي - 50 ريال', '2017-12-19 14:45:30', '2018-05-03 11:33:10'),
(499, 'Freindi, 100 SAR', 'Friendi', 'فريندي - 100 ريال', '2017-12-19 14:45:51', '2018-05-03 11:32:51'),
(500, 'GO - 3 Months Subscription', 'GO - 3 Months Subscription', 'جو - إشتراك 3 أشهر', '2017-12-19 15:09:53', '2017-12-24 08:50:24'),
(501, 'GO - 6 Months Subscription', 'GO - 6 Months Subscription', 'جو - إشتراك 6 أشهر', '2017-12-19 15:12:10', '2017-12-24 08:50:31'),
(502, 'Jawwy, 10 SAR', 'Jawwy', 'جوي - 10 ريال', '2017-12-19 15:13:23', '2018-03-17 11:47:02'),
(503, 'Jawwy, 20 SAR', 'Jawwy', 'جوي - 20 ريال', '2017-12-19 15:13:47', '2018-03-17 11:47:10'),
(504, 'Jawwy, 50 SAR', 'Jawwy', 'جوي - 50 ريال', '2017-12-19 15:14:10', '2018-03-17 11:47:29'),
(505, 'Jawwy, 100 SAR', 'Jawwy', 'جوي - 100 ريال', '2017-12-19 15:14:32', '2018-03-17 11:47:06'),
(506, 'Jawwy, 200 SAR', 'Jawwy', 'جوي - 200 ريال', '2017-12-19 15:14:54', '2018-03-17 11:47:16'),
(507, 'STC 100 SAR', 'STC 100 SAR', 'أس تي سي 100 ريال', '2017-12-19 15:17:00', '2018-03-17 10:54:02'),
(508, 'Sawa, 10 SAR', 'Sawa, 10 SAR', 'سوا، 10 ريال', '2017-12-19 15:17:34', '2018-03-17 10:57:52'),
(509, 'Sawa, 50 SAR', 'Sawa, 50 SAR', 'سوا، 50 ريال', '2017-12-19 15:18:27', '2018-03-17 10:58:26'),
(510, 'Sawa, 300 SR', 'Sawa, 300 SAR', 'سوا، 300 ريال', '2017-12-19 15:19:09', '2018-03-17 10:58:21'),
(511, 'Sawa, 100 SAR', 'Sawa, 100 SAR', 'سوا، 100 ريال', '2017-12-19 15:19:53', '2018-03-17 10:57:57'),
(512, 'Sawa, 20 SAR', 'Sawa, 20 SAR', 'سوا، 20 ريال', '2017-12-19 15:21:20', '2018-03-17 10:58:05'),
(513, 'Sawa, 30 SAR', 'Sawa, 30 SAR', 'سوا، 30 ريال', '2017-12-19 15:21:52', '2018-03-17 10:58:16'),
(514, 'Sawa, 200 SAR', 'Sawa, 200 SAR', 'سوا، 200 ريال', '2017-12-19 15:22:28', '2018-03-17 10:58:10'),
(515, 'Mobily, 30 SAR', 'Mobily Data, 30 SAR', 'موبايلي بيانات - 10 ريال', '2017-12-19 15:26:03', '2018-03-17 11:34:12'),
(516, 'Zain, 200 SR', 'Zain, 200 SR', 'زينو 200 ريال', '2017-12-19 15:39:28', '2018-03-17 10:49:07'),
(517, 'Zain, 20 SR', 'Zain, 20 SR', 'زينو 20 ريال', '2017-12-19 15:40:56', '2018-03-17 10:49:03'),
(518, 'Zain, 10 SAR', 'Zain, 10 SAR', 'زينو 10 ريال', '2017-12-19 15:41:59', '2018-03-17 10:48:53'),
(519, 'Zain, 300 SAR', 'Zain, 300 SAR', 'زينو 300 ريال', '2017-12-19 15:42:00', '2018-03-17 10:49:14'),
(520, 'Zain Data, 2 GB', 'زين داتا 2 جيجابايت', 'زين بيانات - 2 جيجابايت', '2017-12-19 15:44:34', '2018-04-29 14:45:13'),
(521, 'Zain Data, 5 GB', 'Zain Data, 5 GB', 'زين بيانات - 5 جيجابايت', '2017-12-19 15:45:04', '2018-04-29 14:45:18'),
(522, 'Zain Data, 10 GB', 'زين داتا 10 جيجابايت', 'زين بيانات - 10 جيجابايت', '2017-12-19 15:45:46', '2018-04-29 14:45:13'),
(523, 'Zain Data, 50GB', 'Zain Data, 50GB', 'زين بيانات - 50 جيجابايت', '2017-12-19 15:46:14', '2018-04-29 14:45:24'),
(524, 'Zain Data, 200 GB', 'زين داتا 200 جيجابايت', 'زين بيانات - 200 جيجابايت', '2017-12-19 15:46:39', '2018-04-29 14:45:15'),
(525, 'Zain Data, 200GB', 'Zain Data, 200GB', 'زين بيانات - 200 جيجابايت', '2017-12-19 15:48:21', '2018-04-29 14:45:15'),
(526, 'Mobily 30 SAR', 'Mobily 30 SAR', 'موبايلي 30 ريال', '2017-12-19 15:54:21', '2018-03-17 11:35:07'),
(527, 'QuickNet 1 GB', 'QuickNet 1 GB', 'كويك نيت - 1 جيجابايت', '2017-12-19 16:19:36', '2017-12-24 12:04:29'),
(528, 'Virgin 10 SAR', 'Virgin - 10 SAR', 'فيرجن 10 ريال', '2017-12-19 16:19:36', '2018-03-17 10:20:38'),
(529, 'Virgin 20 SAR', 'Virgin 20 SAR', 'فيرجن 20 ريال', '2017-12-19 16:19:36', '2018-03-17 10:21:14'),
(530, 'Virgin 30 SAR', 'Virgin  30 SAR', 'فيرجن 30 ريال', '2017-12-19 16:19:36', '2018-03-17 10:21:21'),
(531, 'Virgin 50 SAR', 'Virgin  50 SAR', 'فيرجن 50 ريال', '2017-12-19 16:19:36', '2018-03-17 10:21:25'),
(532, 'Virgin 100 SAR', 'Virgin  100 SAR', 'فيرجن  100 ريال', '2017-12-19 16:19:36', '2018-03-17 10:21:12'),
(533, 'Zain 50 SAR', 'Zain 50 SAR', 'زين 50 ريال', '2017-12-19 16:19:36', '2018-03-17 10:48:48'),
(534, 'Zain 100 SAR', ' Zain - 100 SAR', 'زين - 100 ريال', '2017-12-19 16:19:36', '2018-03-17 10:48:29'),
(535, 'QuickNet 5 GB', 'QuickNet 5 GB', 'كويك نيت - 5 جيجابايت', '2017-12-19 16:19:37', '2017-12-24 12:04:50'),
(536, 'QuickNet 25 GB', 'QuickNet 25 GB', 'كويك نيت - 25 جيجابايت', '2017-12-19 16:19:37', '2017-12-24 12:04:42'),
(537, 'QuickNet 60 GB', 'QuickNet 60 GB', 'كويك نيت - 60 جيجابايت', '2017-12-19 16:19:37', '2017-12-24 12:04:51'),
(538, 'QuickNet 250 GB', 'QuickNet 250 GB', 'كويك نيت - 250 جيجابايت', '2017-12-19 16:19:37', '2017-12-24 12:04:48'),
(539, 'QuickNet 10 GB', 'QuickNet 10 GB', 'كويك نيت - 10 جيجابايت', '2017-12-19 16:19:37', '2017-12-24 12:04:40'),
(540, 'QuickNet 330 GB', 'QuickNet 330 GB', 'كويك نيت - 330 جيجابايت', '2017-12-19 16:19:37', '2017-12-24 12:04:49'),
(541, 'Freindi 10 SAR', 'Friendi 10 SAR', 'فريندي 10 ريال', '2017-12-19 16:19:37', '2018-05-03 11:32:20'),
(542, 'Freindi 20 SAR', 'Friendi 20 SAR', 'فريندي 20 ريال', '2017-12-19 16:19:37', '2018-05-03 11:32:25'),
(543, 'Freindi 30 SAR', 'Friendi 30 SAR', 'فريندي 30 ريال', '2017-12-19 16:19:37', '2018-05-03 11:32:34'),
(544, 'Freindi 50SAR', 'Friendi 50 SAR', 'فريندي 50 ريال', '2017-12-19 16:19:37', '2018-05-03 11:32:40'),
(545, 'Jawwy 10 SAR', 'Jawwy', 'جوي - 10 ريال', '2017-12-19 16:19:37', '2018-03-17 11:46:39'),
(546, 'Jawwy 20 SAR', 'Jawwy', 'جوي - 20 ريال', '2017-12-19 16:19:37', '2018-03-17 11:46:50'),
(547, 'Jawwy 50 SAR', 'Jawwy', 'جوي - 50 ريال', '2017-12-19 16:19:37', '2018-03-17 11:46:59'),
(548, 'Jawwy 100 SAR', 'Jawwy', 'جوي - 100 ريال', '2017-12-19 16:19:37', '2018-03-17 11:46:43'),
(549, 'Jawwy 200 SAR', 'Jawwy', 'جوي - 200 ريال', '2017-12-19 16:19:37', '2018-03-17 11:46:54'),
(550, 'Sawa 20 SAR', 'Sawa 20 SAR', 'سوا 20 ريال', '2017-12-19 16:19:37', '2018-03-17 10:57:35'),
(551, 'Sawa 30 SAR', 'Sawa 30 SAR', 'سوا 30 ريال', '2017-12-19 16:19:37', '2018-03-17 10:57:43'),
(552, 'Sawa 200 SAR', 'Sawa 200 SAR', 'سوا 200 ريال', '2017-12-19 16:19:37', '2018-03-17 10:57:39'),
(553, 'Zain 300 SAR', 'Zain 300 SAR', 'زين 300 ريال', '2017-12-19 16:19:37', '2018-03-17 10:48:44'),
(554, 'Zain Data 2 GB', 'Zain Data 2 GB', 'زين بيانات - 2 جيجابايت', '2017-12-19 16:19:37', '2018-04-29 14:45:03'),
(555, 'Zain Data 5 GB', 'Zain Data 5 GB', 'زين بيانات - 5 جيجابايت', '2017-12-19 16:19:37', '2018-04-29 14:45:10'),
(556, 'Zain Data 10 GB', 'Zain Data 10 GB', 'زين بيانات - 10 جيجابايت', '2017-12-19 16:19:37', '2018-04-29 14:45:02'),
(557, 'Zain Data 50GB', 'Zain Data 50GB', 'زين بيانات - 50 جيجابايت', '2017-12-19 16:19:37', '2018-04-29 14:45:09'),
(558, 'Zain Data 200GB', 'Zain Data 200GB', 'زين بيانات - 200 جيجابايت', '2017-12-19 16:19:37', '2018-04-29 14:45:06'),
(559, 'Freindi - 10 SAR', 'Friendi - 10 SAR', 'فريندي - 10 ريال', '2017-12-20 08:04:33', '2018-05-03 11:31:45'),
(560, 'Sawa - 10 SAR', 'Sawa - 10 SAR', 'سوا - 10 ريال', '2017-12-20 08:05:03', '2018-03-17 10:57:06'),
(561, 'Mobily - 10 SAR', 'Mobily - 10 SAR', 'موبايلي - 10 ريال', '2017-12-20 08:05:30', '2018-03-17 11:34:22'),
(562, 'Zain - 20 SR', ' Zain - 20 SAR', 'زين - 20 ريال', '2017-12-20 08:06:05', '2018-03-17 10:47:56'),
(563, 'Google Play - 10 USD', 'Google Play [US] - 10 USD', 'جوجل بلاي [US] - 10 دولار أمريكي', '2017-12-20 08:06:50', '2018-03-17 11:53:10'),
(564, 'QuickNet - 1 GB', 'QuickNet - 1 GB', 'كويك نيت - 1 جيجابايت', '2017-12-20 08:07:26', '2017-12-24 12:04:20'),
(565, 'Sawa - 300 SR', 'Sawa - 300 SAR', 'سوا - 300 ريال', '2017-12-20 08:08:04', '2018-03-17 10:57:28'),
(566, 'Sawa - 50 SAR', 'Sawa - 50 SAR', 'سوا - 50 ريال', '2017-12-20 08:08:31', '2018-03-17 10:57:32'),
(567, 'Sawa - 100 SAR', 'Sawa - 100 SAR', 'سوا - 100 ريال', '2017-12-20 08:09:04', '2018-03-17 10:57:10'),
(568, 'Mobily - 50 SAR', 'Mobily - 50 SAR', 'موبايلي - 50 ريال', '2017-12-20 08:09:33', '2018-03-17 11:34:40'),
(569, 'Virgin - 10 SAR', 'Virgin - 10 SAR', 'فيرجن - 10 ريال', '2017-12-20 08:10:11', '2018-03-17 10:19:34'),
(570, 'Virgin - 20 SAR', 'Virgin - 20 SAR', 'فيرجن - 20 ريال', '2017-12-20 08:10:35', '2018-03-17 10:19:43'),
(571, 'Virgin - 30 SAR', 'Virgin - 30 SAR', 'فيرجن - 30 ريال', '2017-12-20 08:11:00', '2018-03-17 10:19:48'),
(572, 'Virgin 50 - SAR', 'Virgin  50 SAR', 'فيرجن  50 ريال', '2017-12-20 08:11:21', '2018-03-17 10:21:23'),
(573, 'Virgin - 100 SAR', 'Virgin - 100 SAR', 'فيرجن - 100 ريال', '2017-12-20 08:11:49', '2018-03-17 10:19:39'),
(574, 'Zain - 50 SAR', ' Zain - 50 SAR', 'زين - 50 ريال', '2017-12-20 08:12:16', '2018-03-17 10:48:07'),
(575, 'Zain Data - 50GB', 'Zain Data - 50GB', 'زين بيانات - 50 جيجا', '2017-12-20 08:12:48', '2017-12-24 11:58:54'),
(576, 'Zain Data - 5 GB', 'Zain Data - 5 GB', 'زين بيانات - 5 جيجا', '2017-12-20 08:13:16', '2017-12-24 11:58:38'),
(577, 'Zain Data - 200GB', 'Zain Data - 200GB', 'زين بيانات - 200 جيجابايت', '2017-12-20 08:13:40', '2018-04-29 14:43:14'),
(578, 'Zain Data - 2 GB', 'Zain Data - 2 GB', 'زين بيانات - 2 جيجابايت', '2017-12-20 08:14:09', '2018-04-29 14:42:46'),
(579, 'Zain Data - 10 GB', 'Zain Data - 10 GB', 'زين بيانات - 10 جيجابايت', '2017-12-20 08:14:36', '2018-04-29 14:41:57'),
(580, 'Zain - 100 SAR', ' Zain - 100 SAR', 'زين - 100 ريال', '2017-12-20 08:15:19', '2018-03-17 10:47:50'),
(581, 'Sawa - 30 SAR', 'Sawa - 30 SAR', 'سوا - 30 ريال', '2017-12-20 08:16:09', '2018-03-17 10:57:24'),
(582, 'Sawa - 200 SAR', 'Sawa - 200 SAR', 'سوا - 200 ريال', '2017-12-20 08:16:42', '2018-03-17 10:57:19'),
(583, 'Google Play - 25 USD', 'Google Play  [US] - 25 USD', 'جوجل بلاي [US] - 25 دولار أمريكي', '2017-12-20 08:17:32', '2018-03-17 11:54:05'),
(584, 'Freindi - 20 SAR', 'Friendi - 20 SAR', 'فريندي - 20 ريال', '2017-12-20 08:18:10', '2018-05-03 11:31:54'),
(585, 'Sawa - 20 SAR', 'Sawa - 20 SAR', 'سوا - 20 ريال', '2017-12-20 08:18:48', '2018-03-17 10:57:16'),
(586, 'Google Play - 50 USD', 'Google Play  [US] - 50 USD', 'جوجل بلاي [US] - 50 دولار أمريكي', '2017-12-20 08:19:27', '2018-03-17 11:53:48'),
(587, 'QuickNet - 60 GB', 'QuickNet - 60 GB', 'كويك نيت - 60 جيجابايت', '2017-12-20 08:20:20', '2017-12-24 12:04:27'),
(588, 'Zain - 300 SAR', ' Zain - 300 SAR', 'زين - 300 ريال', '2017-12-20 08:21:08', '2018-03-17 10:48:03'),
(589, 'QuickNet - 5 GB', 'QuickNet - 5 GB', 'كويك نيت - 5 جيجابايت', '2017-12-20 08:21:45', '2017-12-24 12:04:25'),
(590, 'QuickNet - 330 GB', 'QuickNet - 330 GB', 'كويك نيت - 330 جيجابايت', '2017-12-20 08:22:17', '2017-12-24 12:04:24'),
(591, 'QuickNet - 10 GB', 'QuickNet - 10 GB', 'كويك نيت - جيجابايت', '2017-12-20 08:22:46', '2017-12-24 12:04:20'),
(592, 'QuickNet - 250 GB', 'QuickNet - 250 GB', 'كويك نيت - 250 جيجابايت', '2017-12-20 08:23:21', '2017-12-24 12:04:23'),
(593, 'QuickNet - 25 GB', 'QuickNet - 25 GB', 'كويك نيت - 25 جيجابايت', '2017-12-20 08:24:55', '2017-12-24 12:04:21'),
(594, 'Mobily - 100 SAR', 'Mobily - 100 SAR', 'موبايلي - 100 ريال', '2017-12-20 08:26:13', '2018-03-17 11:34:29'),
(595, 'Mobily - 30 SAR', 'Mobily - 30 SAR', 'موبايلي - 30 ريال', '2017-12-20 08:27:21', '2018-03-17 11:34:34'),
(596, 'Jawwy - 50 SAR', 'Jawwy', 'جوي - 10 ريال', '2017-12-20 08:28:08', '2018-03-17 11:46:35'),
(597, 'Jawwy - 200 SAR', 'Jawwy', 'جوي - 200 ريال', '2017-12-20 08:29:04', '2018-03-17 11:43:01'),
(598, 'Jawwy - 20 SAR', 'Jawwy', 'جوي - 20 ريال', '2017-12-20 08:29:45', '2018-03-17 11:42:56'),
(599, 'Jawwy - 10 SAR', 'Jawwy', 'جوي - 10 ريال', '2017-12-20 08:30:19', '2018-03-17 11:42:47'),
(600, 'Jawwy - 100 SAR', 'Jawwy', 'جوي - 100 ريال', '2017-12-20 08:30:43', '2018-03-17 11:42:51'),
(601, 'Google Play - 100 USD', 'Google Play  [US] - 100 USD', 'جوجل بلاي [US] - 100 دولار أمريكي', '2017-12-20 08:31:30', '2018-03-17 11:54:24'),
(602, 'Freindi - 100 SAR', 'Friendi - 100 SAR', 'فريندي - 100 ريال', '2017-12-20 08:32:21', '2018-05-03 11:31:49'),
(603, 'Freindi - 30 SAR', 'Friendi - 30 SAR', 'فريندي - 30 ريال', '2017-12-20 08:32:52', '2018-05-03 11:32:07'),
(604, 'Freindi - 50SAR', 'Friendi - 50 SAR', 'فريندي - 50 ريال', '2017-12-20 08:33:40', '2018-05-03 11:32:12'),
(605, 'GoCash (Global) - 10 USD', 'GoCash (Global) - 10 USD', 'جوكاش (عالمي) - 10 دولار أمريكي', '2017-12-20 08:41:08', '2018-03-17 11:56:48'),
(606, 'GoCash (Global) - 100 USD', 'GoCash (Global) - 100 USD', 'جوكاش (عالمي) - 100 دولار أمريكي', '2017-12-20 08:41:45', '2018-03-17 11:56:56'),
(607, 'GoCash (Global) - 50 USD', 'GoCash (Global) - 50 USD', 'جوكاش (عالمي) - 50 دولار أمريكي', '2017-12-20 08:42:16', '2018-03-17 11:58:32'),
(608, 'Nintendo [US] - 25 USD', 'Nintendo [US]', 'نينتندو [US]', '2017-12-21 08:17:44', '2018-03-17 11:29:16'),
(609, 'Nintendo [US] - 35 USD', 'Nintendo [US]', 'نينتندو [US]', '2017-12-21 08:18:18', '2018-03-17 11:29:22'),
(610, 'Nintendo [US] - 20 USD', 'Nintendo [US]', 'نينتندو [US]', '2017-12-21 08:19:46', '2018-03-17 11:29:13'),
(611, 'Karma Koin [Global] - 25 USD', 'Karma Koin [Global] - 25 USD', 'كارما كوين [عالمي] - 25 دولار أمريكي', '2017-12-21 08:22:59', '2018-03-17 11:39:18'),
(612, 'Karma Koin [Global] - 10 USD', 'Karma Koin [Global] - 10 USD', 'كارما كوين [عالمي] - 10 دولار أمريكي', '2017-12-21 08:23:23', '2018-03-17 11:38:42'),
(613, 'Karma Koin [Global] - 50 USD', 'Karma Koin [Global] - 50 USD', 'كارما كوين [عالمي] - 50 دولار أمريكي', '2017-12-21 08:23:41', '2018-03-17 11:39:22'),
(614, 'Kammelna Cards - 1 Month Subscription', 'Kammelna Cards - 1 Month - 30 SAR', 'كملنا كاردز - شهر واحد - 30 ريال', '2017-12-21 08:29:55', '2018-03-17 11:41:47'),
(615, 'Kammelna Cards - 3 Months Subscription', 'Kammelna Cards - 3 Months - 75 SAR', 'كملنا كاردز - 3 أشهر - 75 ريال', '2017-12-21 08:30:23', '2018-03-17 11:42:20'),
(616, 'Kammelna Cards - 6 Months Subscription', 'Kammelna Cards - 6 Months - 140 SAR', 'كملنا كاردز - 6 أشهر - 140 ريال', '2017-12-21 08:30:45', '2018-03-17 11:42:29'),
(617, 'Kammelna Cards - 1Year Subscription', 'Kammelna Cards - 1Year - 250 SAR', 'كملنا كاردز - سنة واحدة - 250 ريال', '2017-12-21 08:31:15', '2018-03-17 11:42:08'),
(618, 'Google Play [US] - 10 USD', 'Google Play [US] - 10 USD', 'جوجل بلاي [US] - 10 دولار', '2017-12-21 08:52:00', '2018-04-29 14:37:04'),
(619, 'Google Play [US] - 100 USD', 'Google Play [US] - 100 USD', 'جوجل بلاي [US] - 100 دولار', '2017-12-21 08:52:25', '2018-03-17 11:52:38'),
(620, 'Google Play [US] - 50 USD', 'Google Play [US] - 50 USD', 'جوجل بلاي [US] - 50 دولار', '2017-12-21 08:52:55', '2018-03-17 11:52:16'),
(621, 'Google Play [US] - 25 USD', 'Google Play [US] - 25 USD', 'جوجل بلاي [US] - 25 دولار', '2017-12-21 08:53:29', '2018-03-17 11:52:23'),
(622, 'Image Updated Successfully', 'Image Updated Successfully', 'تم تحديث الصورة بنجاح', '2017-12-21 14:59:15', '2017-12-24 08:58:59'),
(623, 'Image Changed Successfully', 'Image Changed Successfully', 'تم تغيير الصورة بنجاح', '2017-12-24 09:24:19', '2017-12-27 09:55:34'),
(624, 'Update Shopping Cart', 'Update Shopping Cart', 'تم تحديث سلة المشتريات', '2017-12-25 11:38:52', '2018-03-20 14:36:18'),
(625, 'Update Cart Item', 'Update Cart Item', 'تم تحديث السلة', '2017-12-25 11:38:52', '2018-03-17 10:50:42'),
(626, 'Arabic Content Is Required', 'Arabic Content Is Required', 'المحتوى العربي مطلوب', '2017-12-25 14:39:25', '2017-12-27 09:53:08'),
(627, 'Old Password Incorrect', 'Old Password Incorrect', 'كلمة مرور قديمة', '2017-12-31 16:30:02', '2018-03-15 12:02:00'),
(628, 'Can\'t Detect Address', 'Can\'t Detect Address', 'لا يمكن تحديد العنوان', '2018-01-07 15:56:03', '2018-03-15 10:22:03'),
(629, 'Address Detected', 'Address Detected', 'تم تحديد العنوان', '2018-01-08 11:02:33', '2018-03-15 10:20:25'),
(630, 'Location Can\'t Be Empty.', 'Location Can\'t Be Empty.', 'الموقع لا يمكن أن يكون فارغًا', '2018-01-09 07:34:34', '2018-03-15 12:02:52'),
(631, 'Your Order Successfully!', 'Your Order Successfully!', 'تم تنفيذ الطلب بنجاح', '2018-01-09 15:09:01', '2018-03-17 10:49:35'),
(632, 'QuickNet - 1000 GB', 'QuickNet - 1000 GB', 'كويك نيت - 1000 جيجابايت', '2018-01-22 09:34:47', '2018-03-17 11:18:01'),
(633, 'Manage Users', 'Manage Users', 'إدارة المستخدمين', '2018-01-25 16:57:32', '2018-03-15 12:02:30'),
(634, 'Filter By', 'Filter By', 'تصفية بحسب', '2018-01-25 16:57:32', '2018-03-15 11:55:20'),
(635, 'Registered At', 'Registered At', 'مسجل في', '2018-01-25 16:57:32', '2018-03-17 10:59:38'),
(636, 'Backend User', 'Backend User', 'مستخدم لوحة التحكم', '2018-01-25 16:57:32', '2018-03-20 14:00:30'),
(637, 'Shop User', 'Shop User', 'مستخدم البقالة', '2018-01-25 16:57:32', '2018-03-20 14:31:24'),
(638, 'Normal User', 'Normal User', 'مستخدم عادي', '2018-01-25 16:57:32', '2018-03-20 14:19:48'),
(639, 'Activate', 'Activate', 'مفعل', '2018-01-25 16:57:32', '2018-03-15 12:58:14'),
(640, 'Block', 'Block', 'حظر', '2018-01-25 16:57:32', '2018-03-20 14:01:13'),
(641, 'Banks', 'Banks', 'البنوك', '2018-01-31 08:01:30', '2018-03-15 10:21:09'),
(642, 'New Bank', 'New Bank', 'بنك جديد', '2018-01-31 08:01:30', '2018-03-15 12:03:14'),
(643, 'List Banks', 'List Banks', 'قائمة البنوك', '2018-02-01 11:06:29', '2018-03-15 12:01:16'),
(644, 'Update Bank', 'Update Bank', 'تحديث البنك', '2018-02-01 11:06:34', '2018-03-20 14:38:34'),
(645, 'Bank', 'Bank', 'البنك', '2018-02-01 11:06:34', '2018-03-15 10:21:06'),
(646, 'Create Bank', 'Create Bank', 'تم إضافة بنك', '2018-02-01 11:07:47', '2018-03-15 10:22:30'),
(647, 'Add Bank', 'Add Bank', 'أضف بنك', '2018-02-01 11:07:47', '2018-03-15 12:58:24'),
(650, 'ebay', 'ebay', 'أي باي', '2018-03-07 12:02:50', '2018-03-07 14:07:40'),
(651, 'Rixty', 'Rixty', 'ركستي', '2018-03-07 12:06:44', '2018-03-07 15:10:01'),
(652, 'Skype', 'Skype', 'سكايب', '2018-03-07 12:09:46', '2018-03-17 10:09:55'),
(654, 'PlayStation', 'PlayStation', 'بلاي ستيشن', '2018-03-07 12:20:33', '2018-03-15 14:51:40'),
(655, 'Sawa - 10.50 SAR', 'Sawa - 10.50 SAR', 'سوا 10.50 ريال', '2018-03-14 15:28:40', '2018-03-15 12:12:25'),
(656, 'Sawa - 315 SR', 'Sawa - 315 SR', 'سوا 315 ريال', '2018-03-14 15:45:19', '2018-03-15 12:14:25'),
(657, 'You Must Select Items First.', 'You Must Select Items First.', 'يجب إختيار منتج أولا', '2018-03-14 15:45:43', '2018-03-20 14:34:41'),
(658, 'Sawa - 21 SAR', 'Sawa - 21 SAR', 'سوا 21 ريال', '2018-03-14 15:46:47', '2018-03-15 12:13:57'),
(659, 'Sawa - 11.50 SAR', 'Sawa - 11.50 SAR', 'سوا 11.50 ريال', '2018-03-14 16:01:30', '2018-03-15 12:13:43'),
(660, 'amazon', 'amazon', 'أمازون', '2018-03-15 08:37:44', '2018-03-15 10:20:40'),
(661, 'amazon [US]', 'amazon [US]', 'أمازون [US]', '2018-03-15 08:39:19', '2018-03-15 10:20:49'),
(662, 'Facebook', 'Facebook', 'فايسبوك', '2018-03-15 08:40:14', '2018-03-15 11:55:31'),
(663, 'Facebook Credits [Global] - 10 USD', 'Facebook Credits [Global] - 10 USD', 'فاسيبوك كريديتس [عالمي] - 10 دولار أمريكي', '2018-03-15 08:42:09', '2018-03-17 10:01:48'),
(664, 'Facebook Credits [Global] - 50 USD', 'Facebook Credits [Global] - 50 USD', 'فاسيبوك كريديتس [عالمي] - 50 دولار أمريكي', '2018-03-15 08:42:09', '2018-03-17 10:02:11'),
(665, 'Google Play [US] - 15 USD', 'Google Play [US] - 15 USD', 'جوجل بلاي [US] - 15 دولار', '2018-03-15 08:45:43', '2018-03-17 11:52:30'),
(666, 'iTunes [US] - 20 USD', 'iTunes [US] - 20 USD', 'اي تونز [US] - 20 دولار', '2018-03-15 08:48:58', '2018-03-17 10:36:49'),
(667, 'iTunes [US] - 30 USD', 'iTunes [US] - 30 USD', 'اي تونز [US] - 30 دولار', '2018-03-15 08:49:48', '2018-03-17 10:37:39'),
(668, 'Sawa - 15.75 SAR', 'Sawa - 15.75 SAR', 'سوا 15.75 ريال', '2018-03-15 08:57:41', '2018-03-15 12:13:51'),
(669, 'Sawa - 26.25 SAR', 'Sawa - 26.25 SAR', 'سوا 26.25 ريال', '2018-03-15 09:02:13', '2018-03-15 12:14:10'),
(670, 'Sawa - 31.50 SAR', 'Sawa - 31.50 SAR', 'سوا 31.50 ريال', '2018-03-15 09:04:10', '2018-03-15 12:14:18'),
(671, 'Sawa - 52.50 SAR', 'Sawa - 52.50 SAR', 'سوا 52.50 ريال', '2018-03-15 09:04:53', '2018-03-15 12:14:30'),
(672, 'Sawa - 105 SAR', 'Sawa - 105 SAR', 'سوا 105 ريال', '2018-03-15 09:05:51', '2018-03-15 12:13:33'),
(673, 'Sawa - 210 SAR', 'Sawa - 210 SAR', 'سوا 210 ريال', '2018-03-15 09:06:36', '2018-03-15 12:14:03'),
(674, 'Steam Walled Card - 10 USD', 'Steam Walled Card - 10 USD', 'ستيم كار - 10 دولار أمريكي', '2018-03-15 09:07:42', '2018-03-17 10:11:03'),
(675, 'Xbox Live [US] - 15 USD', 'Xbox Live [US] - 15 USD', 'إكس بوكس لايف [US] - 15 دولار أمريكي', '2018-03-15 09:10:54', '2018-03-17 10:30:39'),
(676, 'Xbox Live [US] - 20 USD', 'Xbox Live [US] - 20 USD', 'إكس بوكس لايف [US] - 20 دولار أمريكي', '2018-03-15 09:11:37', '2018-03-17 10:30:46'),
(677, 'QuickNet - 105 SAR', 'QuickNet - 105 SAR', 'كويك نيت - 105 ريال', '2018-03-15 09:22:10', '2018-03-17 11:18:16'),
(678, 'QuickNet - 136.50 SAR', 'QuickNet - 136.50 SAR', 'كويك نيت - 136.50 ريال', '2018-03-15 09:26:56', '2018-03-17 11:18:22'),
(679, 'QuickNet - 231 SAR ', 'QuickNet - 231 SAR ', 'كويك نيت - 231 ريال', '2018-03-15 09:29:26', '2018-03-17 11:18:27'),
(680, 'QuickNet [1Month] - 105 SAR', 'QuickNet [1Month] - 105 SAR', 'كويك نيت - لمدة شهر', '2018-03-15 09:35:36', '2018-03-17 11:17:21'),
(681, 'QuickNet,30GB - 210 SAR', 'QuickNet,30GB - 210 SAR', 'كويك نيت - 30 جيجابايت', '2018-03-15 09:44:24', '2018-03-17 11:14:04'),
(682, 'QuickNet, 300GB - 420 SAR', 'QuickNet, 300GB - 420 SAR', 'كويك نيت - 300 جيجابايت', '2018-03-15 09:46:25', '2018-03-17 11:14:54'),
(683, 'Zain Data - 30 SAR', 'Zain Data - 30 SAR', 'زين بيانات - 30 ريال', '2018-03-15 09:56:43', '2018-03-17 10:44:00'),
(684, 'Zain Data - 50 SAR', 'Zain Data - 50 SAR', 'زين بيانات - 50 جيجا', '2018-03-15 09:58:28', '2018-03-17 10:43:13'),
(685, 'Zain Data - 80 SAR', 'Zain Data - 80 SAR', 'زين بيانات - 80 ريال', '2018-03-15 09:59:32', '2018-03-17 10:43:06'),
(686, 'Zain Data - 140 SAR', 'Zain Data - 140 SAR', 'زين بيانات - 140 ريال', '2018-03-15 10:02:48', '2018-03-17 10:44:34'),
(687, 'Zain Data - 180 SAR', 'Zain Data - 180 SAR', 'زين بيانات - 180 ريال', '2018-03-15 10:04:16', '2018-03-17 10:44:28'),
(688, 'Zain Data - 345 SAR', 'Zain Data - 345 SAR', 'زين بيانات - 345 ريال', '2018-03-15 10:06:12', '2018-03-17 10:43:55'),
(689, 'Zain - 450 SAR', 'Zain - 450 SAR', 'زين بيانات - 450 ريال', '2018-03-15 10:07:18', '2018-03-17 10:44:41'),
(690, 'Zain Data - 236 SAR', 'Zain Data - 236 SAR', 'زين بيانات - 236 ريال', '2018-03-15 10:08:39', '2018-03-17 10:44:02'),
(691, 'Zain Data - 450 SAR', 'Zain Data - 450 SAR', 'زين بيانات - 450 ريال', '2018-03-15 10:10:27', '2018-03-17 10:43:52'),
(692, 'QuickNet 10 GB- [1Month] - 105 SAR', 'QuickNet 10 GB- [1Month] - 105 SAR', 'كويك نيت - 10جيجابايت - لمدة شهر', '2018-03-15 12:25:06', '2018-03-17 11:17:38'),
(693, 'QuickNet, 300GB, For 3 Months - 420 SAR', 'QuickNet, 300GB, For 3 Months - 420 SAR', 'كويك نيت - 300 جيجابايت - لمدة 3 أشهر', '2018-03-15 12:39:32', '2018-03-17 11:14:42'),
(694, 'QuickNet,30GB, For 2 Months - 210 SAR', 'QuickNet,30GB, For 2 Months - 210 SAR', 'كويك نيت - 30 جيجابايت - لمدة شهرين', '2018-03-15 12:40:44', '2018-03-17 11:13:14'),
(695, 'QuickNet, 10 GB - 136.50 SAR', 'QuickNet, 10 GB - 136.50 SAR', 'كويك نيت - 10 جيجابايت', '2018-03-15 12:44:47', '2018-03-17 11:15:26'),
(696, 'QuickNet, Unlimited, For 1 Month - 231 SAR ', 'QuickNet, Unlimited, For 1 Month - 231 SAR ', 'كويك نيت - مفتوح - لمدة شهر', '2018-03-15 12:50:51', '2018-03-17 11:14:26'),
(697, 'QuickNet, 10 GB, For 3 Months - 136.50 SAR', 'QuickNet, 10 GB, For 3 Months - 136.50 SAR', 'كويك نيت - 10 جيجابايت - لمدة 3 أشهر', '2018-03-15 12:51:39', '2018-03-17 11:15:05'),
(698, 'iTunes [US] - 5 USD', 'iTunes [US] - 5 USD', 'اي تونز [US] - 5 دولار', '2018-03-15 13:19:07', '2018-03-17 10:37:34'),
(699, 'Amazon [US] - 10 USD', 'Amazon [US] - 10 USD', 'أمازون [US] - 10 دولار أمريكي', '2018-03-15 13:37:10', '2018-03-15 13:42:33'),
(700, 'Amazon [US] - 100 USD', 'Amazon [US] - 100 USD', 'أمازون [US] - 100 دولار أمريكي', '2018-03-15 13:38:23', '2018-03-15 13:42:34'),
(701, 'iTunes [UK] - 15 USD', 'iTunes [UK] - 15 USD', 'اي تونز [UK] - 15 دولار', '2018-03-15 13:57:38', '2018-03-17 11:51:05'),
(702, 'iTunes [UK] - 25 USD', 'iTunes [UK] - 25 USD', 'اي تونز [UK] - 25 دولار', '2018-03-15 13:58:37', '2018-03-17 11:52:51'),
(703, 'iTunes [UK] - 50 USD', 'iTunes [UK] - 50 USD', 'اي تونز [UK] - 50 دولار', '2018-03-15 13:59:20', '2018-03-17 11:47:39'),
(704, 'iTunes [UK] - 100 USD', 'iTunes [UK] - 100 USD', 'اي تونز [UK] - 100 دولار', '2018-03-15 13:59:58', '2018-03-17 11:51:15'),
(705, 'iTunes [US] - 25 USD', 'iTunes [US] - 25 USD', 'اي تونز [US] - 25 دولار', '2018-03-15 14:04:46', '2018-03-17 10:36:55'),
(706, 'Google Play [UK] - 10 GBP', 'Google Play [UK] - 10 GBP', 'جوجل بلاي [UK] - 10 جنيه إسترليني', '2018-03-15 14:19:33', '2018-03-17 11:53:30'),
(707, 'Google Play [UK] - 25 GBP ', 'Google Play [UK] - 25 GBP ', 'جوجل بلاي [UK] - 25 جنيه إسترليني', '2018-03-15 14:20:19', '2018-03-17 11:53:24'),
(708, 'Google Play [UK] - 50 GBP ', 'Google Play [UK] - 50 GBP ', 'جوجل بلاي [UK] - 50 جنيه إسترليني', '2018-03-15 14:20:46', '2018-03-17 11:53:19'),
(709, 'PlayStation Network [UK] - 05 GBP', 'PlayStation Network [UK] - 05 GBP', 'بلاي ستيشن [UK] - 05 جنيه استرليني', '2018-03-15 14:42:50', '2018-03-17 11:28:33'),
(710, 'PlayStation Network [UK] - 10 GBP', 'PlayStation Network [UK] - 10 GBP', 'بلاي ستيشن [UK] - 10 جنيه استرليني', '2018-03-15 14:44:41', '2018-03-17 11:28:25'),
(711, 'PlayStation Network [UK] - 20 GBP', 'PlayStation Network [UK] - 20 GBP', 'بلاي ستيشن [UK] - 20 جنيه استرليني', '2018-03-15 14:44:42', '2018-03-17 11:28:20'),
(712, 'PlayStation Network [UK] - 50 GBP', 'PlayStation Network [UK] - 50 GBP', 'بلاي ستيشن [UK] - 20 جنيه استرليني', '2018-03-15 14:48:10', '2018-03-17 11:28:15'),
(713, 'ebay - 10 USD', 'ebay - 10 USD', 'أي باي - 10 دولار أمريكي', '2018-03-17 09:47:18', '2018-03-17 09:52:28'),
(714, 'ebay - 25 SUD', 'ebay - 25 SUD', 'أي باي - 25 دولار أمريكي', '2018-03-17 09:48:13', '2018-03-17 11:59:41'),
(715, 'ebay - 25 USD', 'ebay - 25 USD', 'أي باي - 25 دولار أمريكي', '2018-03-17 09:48:59', '2018-03-17 09:53:06'),
(716, 'ebay - 50 USD', 'ebay - 50 USD', 'أي باي - 50 دولار أمريكي', '2018-03-17 09:49:43', '2018-03-17 09:53:17'),
(717, 'ebay - 100 USD', 'ebay - 100 USD', 'أي باي - 100 دولار أمريكي', '2018-03-17 09:50:30', '2018-03-17 09:52:54'),
(718, 'ebay - 200 USD', 'ebay - 200 USD', 'أي باي - 200 دولار أمريكي', '2018-03-17 09:51:10', '2018-03-17 09:53:02'),
(719, 'ebay - 300 USD', 'ebay - 300 USD', 'أي باي - 300 دولار أمريكي', '2018-03-17 09:53:32', '2018-03-17 09:58:03'),
(720, 'Skype - 10 USD', 'Skype - 10 USD', 'سكايب - 10 دولار أمريكي', '2018-03-17 10:04:29', '2018-03-17 10:05:48'),
(721, 'Skype - 25 USD', 'Skype - 25 USD', 'سكايب - 25 دولار أمريكي', '2018-03-17 10:06:10', '2018-03-17 10:10:08'),
(722, 'Rixty - 10 USD', 'Rixty - 10 USD', 'ركستي - 10 دولار أمريكي', '2018-03-17 10:13:06', '2018-03-17 10:17:33'),
(723, 'Rixty - 20 USD', 'Rixty - 20 USD', 'ركستي - 20 دولار أمريكي', '2018-03-17 10:13:40', '2018-03-17 10:17:38'),
(724, 'Rixty - 25 USD', 'Rixty - 25 USD', 'ركستي - 25 دولار أمريكي', '2018-03-17 10:14:22', '2018-03-17 10:17:43'),
(725, 'Rixty - 50 USD', 'Rixty - 50 USD', 'ركستي - 50 دولار أمريكي', '2018-03-17 10:15:16', '2018-03-17 10:17:48'),
(726, 'Rixty - 100 USD', 'Rixty - 100 USD', 'ركستي - 100 دولار أمريكي', '2018-03-17 10:22:08', '2018-03-17 10:58:43'),
(727, 'Error In Saving id#93 and user_id157', 'Error In Saving id#93 and user_id157', 'Error In Saving id#93 and user_id157', '2018-03-19 08:52:35', '2018-03-19 08:52:35'),
(728, 'Error In Saving id#177 and user_id157', 'Error In Saving id#177 and user_id157', 'Error In Saving id#177 and user_id157', '2018-03-19 10:05:24', '2018-03-19 10:05:24'),
(729, 'Error In Saving id#179 and user_id157', 'Error In Saving id#179 and user_id157', 'Error In Saving id#179 and user_id157', '2018-03-19 10:07:04', '2018-03-19 10:07:04'),
(730, 'Error In Saving id#180 and user_id157', 'Error In Saving id#180 and user_id157', 'Error In Saving id#180 and user_id157', '2018-03-19 10:07:25', '2018-03-19 10:07:25'),
(731, 'Not Available (Not Taken)', 'Not Available (Not Taken)', 'غير متاح (لم يتم أخذها)', '2018-03-19 11:47:00', '2018-03-20 14:19:40'),
(732, 'Profile', 'Profile', 'Profile', '2018-03-24 17:31:56', '2018-03-24 17:31:56'),
(733, 'Update My Profile', 'Update My Profile', 'Update My Profile', '2018-03-24 17:31:56', '2018-03-24 17:31:56'),
(734, 'Purchasing Date', 'Purchasing Date', 'Purchasing Date', '2018-03-24 17:55:06', '2018-03-24 17:55:06'),
(735, 'Your Profile Updated Successfully.', 'Your Profile Updated Successfully.', 'Your Profile Updated Successfully.', '2018-03-25 12:58:23', '2018-03-25 12:58:23'),
(736, 'Error Sending Code!', 'Error Sending Code!', 'حدث خطأ أثناء إرسال الرسالة!', '2018-03-27 10:39:47', '2018-03-27 14:26:12'),
(737, 'contact_type', 'contact_type', 'contact_type', '2018-03-27 14:21:12', '2018-03-27 14:21:12'),
(738, 'Message Sent Successfully, Thank You For Contacting Us.', 'Message Sent Successfully, Thank You For Contacting Us.', 'تم إرسال رسالتك بنجاح, شكرا لك علي تواصلك معنا.', '2018-03-27 14:21:12', '2018-03-27 14:25:12'),
(739, 'Managment Dashboard', 'Managment Dashboard', 'Managment Dashboard', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(740, 'Managment', 'Managment', 'Managment', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(741, 'Clients', 'Clients', 'Clients', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(742, 'Active', 'Active', 'Active', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(743, 'Not Active', 'Not Active', 'Not Active', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(744, 'Blocked', 'Blocked', 'Blocked', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(745, 'Just Verify No.', 'Just Verify No.', 'Just Verify No.', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(746, 'Shops', 'Shops', 'Shops', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(747, 'Latest Orders', 'Latest Orders', 'Latest Orders', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(748, 'Show all', 'Show all', 'Show all', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(749, 'Refresh', 'Refresh', 'Refresh', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(750, 'Date', 'Date', 'Date', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(751, 'Payment', 'Payment', 'Payment', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(752, 'More...', 'More...', 'More...', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(753, 'Latest Transactions', 'Latest Transactions', 'Latest Transactions', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(754, 'Registrations', 'Registrations', 'Registrations', '2018-04-02 09:03:04', '2018-04-02 09:03:04'),
(755, 'Messaging', 'Messaging', 'Messaging', '2018-04-02 09:03:05', '2018-04-02 09:03:05'),
(756, 'Beginning Inventory', 'Beginning Inventory', 'Beginning Inventory', '2018-04-08 10:58:08', '2018-04-08 10:58:08'),
(757, 'Incoming Q.', 'Incoming Q.', 'Incoming Q.', '2018-04-08 10:58:08', '2018-04-08 10:58:08'),
(758, 'Q. sold', 'Q. sold', 'Q. sold', '2018-04-08 10:58:08', '2018-04-08 10:58:08'),
(759, 'Sales Cost', 'Sales Cost', 'Sales Cost', '2018-04-08 10:58:08', '2018-04-08 10:58:08'),
(760, 'End Q.', 'End Q.', 'End Q.', '2018-04-08 10:58:08', '2018-04-08 10:58:08'),
(761, 'iTunes [UK] - 100 £', 'iTunes [UK] - 100 £', 'iTunes [UK] - 100 £', '2018-04-23 13:58:02', '2018-04-23 13:58:02'),
(762, 'iTunes [UK] - 15 £', 'iTunes [UK] - 15 £', 'iTunes [UK] - 15 £', '2018-04-23 13:58:41', '2018-04-23 13:58:41'),
(763, 'iTunes [UK] - 25 £', 'iTunes [UK] - 25 £', 'iTunes [UK] - 25 £', '2018-04-23 13:59:55', '2018-04-23 13:59:55'),
(764, 'iTunes [UK] - 50 £', 'iTunes [UK] - 50 £', 'iTunes [UK] - 50 £', '2018-04-23 14:00:30', '2018-04-23 14:00:30'),
(765, 'Google Play [UK] - 10 £', 'Google Play [UK] - 10 £', 'Google Play [UK] - 10 £', '2018-04-23 14:02:38', '2018-04-23 14:02:38'),
(766, 'Google Play [UK] - 25 £', 'Google Play [UK] - 25 £', 'Google Play [UK] - 25 £', '2018-04-23 14:04:16', '2018-04-23 14:04:16'),
(767, 'Google Play [UK] - 50 £', 'Google Play [UK] - 50 £', 'Google Play [UK] - 50 £', '2018-04-23 14:04:16', '2018-04-23 14:04:16'),
(768, 'PlayStation Network [UK] - 3 mMonths Subscription', 'PlayStation Network [UK] - 3 mMonths Subscription', 'PlayStation Network [UK] - 3 mMonths Subscription', '2018-04-23 14:57:57', '2018-04-23 14:57:57'),
(769, 'PlayStation Network [UK] - 12 Months Subscription', 'PlayStation Network [UK] - 12 Months Subscription', 'PlayStation Network [UK] - 12 Months Subscription', '2018-04-23 14:59:22', '2018-04-23 14:59:22'),
(770, 'Error In Saving id#211 and user_id157', 'Error In Saving id#211 and user_id157', 'Error In Saving id#211 and user_id157', '2018-04-26 09:39:23', '2018-04-26 09:39:23'),
(771, 'Error In Saving id#212 and user_id157', 'Error In Saving id#212 and user_id157', 'Error In Saving id#212 and user_id157', '2018-04-26 09:39:30', '2018-04-26 09:39:30'),
(772, 'Error In Saving id#213 and user_id157', 'Error In Saving id#213 and user_id157', 'Error In Saving id#213 and user_id157', '2018-04-26 09:39:39', '2018-04-26 09:39:39'),
(773, 'Error In Saving id#215 and user_id157', 'Error In Saving id#215 and user_id157', 'Error In Saving id#215 and user_id157', '2018-04-26 09:41:02', '2018-04-26 09:41:02'),
(774, 'Error In Saving id#216 and user_id157', 'Error In Saving id#216 and user_id157', 'Error In Saving id#216 and user_id157', '2018-04-26 09:41:06', '2018-04-26 09:41:06'),
(775, 'Error In Saving id#217 and user_id157', 'Error In Saving id#217 and user_id157', 'Error In Saving id#217 and user_id157', '2018-04-26 09:41:09', '2018-04-26 09:41:09'),
(776, 'Error In Saving id#222 and user_id157', 'Error In Saving id#222 and user_id157', 'Error In Saving id#222 and user_id157', '2018-04-26 09:59:04', '2018-04-26 09:59:04'),
(777, 'Error In Saving id#226 and user_id157', 'Error In Saving id#226 and user_id157', 'Error In Saving id#226 and user_id157', '2018-04-26 10:08:35', '2018-04-26 10:08:35'),
(778, 'Error In Saving id#227 and user_id157', 'Error In Saving id#227 and user_id157', 'Error In Saving id#227 and user_id157', '2018-04-26 10:08:38', '2018-04-26 10:08:38'),
(779, 'Error In Saving id#231 and user_id157', 'Error In Saving id#231 and user_id157', 'Error In Saving id#231 and user_id157', '2018-04-26 10:15:56', '2018-04-26 10:15:56'),
(780, 'Error In Saving id#232 and user_id157', 'Error In Saving id#232 and user_id157', 'Error In Saving id#232 and user_id157', '2018-04-26 10:16:06', '2018-04-26 10:16:06'),
(781, 'Error In Saving id#233 and user_id157', 'Error In Saving id#233 and user_id157', 'Error In Saving id#233 and user_id157', '2018-04-26 10:16:11', '2018-04-26 10:16:11'),
(782, 'Error In Saving id#234 and user_id157', 'Error In Saving id#234 and user_id157', 'Error In Saving id#234 and user_id157', '2018-04-26 10:16:21', '2018-04-26 10:16:21'),
(783, 'Error In Saving id#235 and user_id157', 'Error In Saving id#235 and user_id157', 'Error In Saving id#235 and user_id157', '2018-04-26 10:16:23', '2018-04-26 10:16:23'),
(784, 'Error In Saving id#236 and user_id157', 'Error In Saving id#236 and user_id157', 'Error In Saving id#236 and user_id157', '2018-04-26 10:16:48', '2018-04-26 10:16:48'),
(785, 'Error In Saving id#237 and user_id157', 'Error In Saving id#237 and user_id157', 'Error In Saving id#237 and user_id157', '2018-04-26 10:16:55', '2018-04-26 10:16:55'),
(786, 'Error In Saving id#238 and user_id157', 'Error In Saving id#238 and user_id157', 'Error In Saving id#238 and user_id157', '2018-04-26 10:16:59', '2018-04-26 10:16:59'),
(787, 'Error In Saving id#239 and user_id157', 'Error In Saving id#239 and user_id157', 'Error In Saving id#239 and user_id157', '2018-04-26 10:18:39', '2018-04-26 10:18:39'),
(788, 'Error In Saving id#240 and user_id157', 'Error In Saving id#240 and user_id157', 'Error In Saving id#240 and user_id157', '2018-04-26 10:18:43', '2018-04-26 10:18:43'),
(789, 'Error In Saving id#241 and user_id157', 'Error In Saving id#241 and user_id157', 'Error In Saving id#241 and user_id157', '2018-04-26 10:19:06', '2018-04-26 10:19:06'),
(790, 'Error In Saving id#242 and user_id157', 'Error In Saving id#242 and user_id157', 'Error In Saving id#242 and user_id157', '2018-04-26 10:19:12', '2018-04-26 10:19:12'),
(791, 'Error In Saving id#243 and user_id157', 'Error In Saving id#243 and user_id157', 'Error In Saving id#243 and user_id157', '2018-04-26 10:21:12', '2018-04-26 10:21:12'),
(792, 'Error In Saving id#244 and user_id157', 'Error In Saving id#244 and user_id157', 'Error In Saving id#244 and user_id157', '2018-04-26 10:21:18', '2018-04-26 10:21:18'),
(793, 'Error In Saving id#245 and user_id157', 'Error In Saving id#245 and user_id157', 'Error In Saving id#245 and user_id157', '2018-04-26 10:21:21', '2018-04-26 10:21:21'),
(794, 'Error In Saving id#246 and user_id157', 'Error In Saving id#246 and user_id157', 'Error In Saving id#246 and user_id157', '2018-04-26 10:21:23', '2018-04-26 10:21:23'),
(795, 'Zain [KSA] Card Data - 1 Month', 'Zain [KSA] Card Data - 1 Month', 'زين بيانات - 1 شهر', '2018-04-26 16:06:02', '2018-04-29 14:41:13'),
(796, 'Mobily [SKA] - 20 SAR', 'Mobily [SKA] - 20 SAR', 'Mobily [SKA] - 20 SAR', '2018-04-26 16:09:06', '2018-04-26 16:09:06'),
(797, 'Mobily [SKA] - 15 SAR', 'Mobily [SKA] - 15 SAR', 'Mobily [SKA] - 15 SAR', '2018-04-26 16:09:42', '2018-04-26 16:09:42'),
(798, 'Zain Data - Unlimited - 1 Month ', 'Zain Data - Unlimited - 1 Month ', 'زين بيانات - لا محدود - 1 شهر', '2018-04-26 16:39:03', '2018-04-29 14:44:54'),
(799, 'Zain Data - 10 GB - 1 Month', 'Zain Data - 10 GB - 1 Month', 'زين بيانات - 10 جيجابايت - 1 شهر', '2018-04-26 16:39:55', '2018-04-29 14:42:07'),
(800, 'Zain Data - 10 GB - 3 Months', 'Zain Data - 10 GB - 3 Months', 'زين بيانات - 10 جيجابايت - 3 أشهر', '2018-04-26 16:43:26', '2018-04-29 14:42:24'),
(801, 'Zain Data - 300 GB - 3 Months', 'Zain Data - 300 GB - 3 Months', 'زين بيانات - 300 جيجابايت -  أشهر', '2018-04-26 16:44:27', '2018-04-29 14:43:28'),
(802, 'Zain Data - 150 GB - 3 Months', 'Zain Data - 150 GB - 3 Months', 'زين بيانات - 150 جيجابايت - 3 أشهر', '2018-04-26 16:45:25', '2018-04-29 14:42:43'),
(803, 'Zain Data - 20 GB - 3 Months', 'Zain Data - 20 GB - 3 Months', 'زين بيانات - 20 جيجابايت - 3 أشهر', '2018-04-26 16:46:23', '2018-04-29 14:43:14'),
(804, 'Zain Data - 1 GB - 1 Month', 'Zain Data - 1 GB - 1 Month', 'زين بيانات - 1 جيجابايت - 1 شهر', '2018-04-26 16:47:14', '2018-04-29 14:41:27'),
(805, 'Zain Data - 5 GB - 1 Month', 'Zain Data - 5 GB - 1 Month', 'زين بيانات - 5 جيجابايت - 1 شهر', '2018-04-26 16:48:47', '2018-04-29 14:43:40'),
(806, 'Zain Data - 2 GB - 1 Month', 'Zain Data - 2 GB - 1 Month', 'زين بيانات - 2 جيجابايت - 1 شهر', '2018-04-26 16:49:49', '2018-04-29 14:42:58'),
(807, 'OS Name', 'OS Name', 'OS Name', '2018-04-29 11:12:00', '2018-04-29 11:12:00'),
(808, 'Amazon [US]- 50 USD', 'Amazon [US]- 50 USD', 'Amazon [US]- 50 USD', '2018-05-01 12:35:49', '2018-05-01 12:35:49'),
(809, 'Item Activated Successfully', 'Item Activated Successfully', 'Item Activated Successfully', '2018-05-04 21:47:58', '2018-05-04 21:47:58'),
(810, 'No Address Available.', 'No Address Available.', 'No Address Available.', '2018-05-08 00:36:21', '2018-05-08 00:36:21'),
(811, 'Can\'t Continue Payment', 'Can\'t Continue Payment', 'Can\'t Continue Payment', '2018-05-08 11:03:57', '2018-05-08 11:03:57'),
(812, 'URL Returned Successfully', 'URL Returned Successfully', 'URL Returned Successfully', '2018-05-08 11:15:09', '2018-05-08 11:15:09'),
(813, 'Search Card', 'Search Card', 'Search Card', '2018-05-23 12:14:47', '2018-05-23 12:14:47'),
(814, 'View', 'View', 'View', '2018-05-23 12:19:40', '2018-05-23 12:19:40'),
(815, 'Referance No', 'Referance No', 'Referance No', '2018-05-23 12:51:04', '2018-05-23 12:51:04'),
(816, 'id', 'id', 'id', '2018-05-24 07:10:39', '2018-05-24 07:10:39'),
(817, 'Order Referance No', 'Order Referance No', 'Order Referance No', '2018-05-24 07:14:25', '2018-05-24 07:14:25'),
(818, 'auto_replay_message', 'thank you for your message, we will contact you asap', 'thank you for your message, we will contact you asap', '2018-05-24 07:54:56', '2018-05-24 07:58:22'),
(819, 'auto_replay_subject', 'Ezhal Customer Services', 'Ezhal Customer Services', '2018-05-24 07:54:56', '2018-05-24 07:58:18'),
(820, 'Sold', 'Sold', 'Sold', '2018-05-24 08:47:14', '2018-05-24 08:47:14'),
(821, 'Sold Out At', 'Sold Out At', 'Sold Out At', '2018-05-24 08:47:15', '2018-05-24 08:47:15'),
(822, 'Error In Saving Transaction id#225', 'Error In Saving Transaction id#225', 'Error In Saving Transaction id#225', '2018-05-24 10:09:51', '2018-05-24 10:09:51'),
(823, 'Error In Saving Transaction id#226', 'Error In Saving Transaction id#226', 'Error In Saving Transaction id#226', '2018-05-24 10:11:12', '2018-05-24 10:11:12'),
(824, 'Error In Saving Transaction id#228', 'Error In Saving Transaction id#228', 'Error In Saving Transaction id#228', '2018-05-24 10:26:32', '2018-05-24 10:26:32'),
(825, 'Error In Saving Transaction id#230', 'Error In Saving Transaction id#230', 'Error In Saving Transaction id#230', '2018-05-24 10:45:09', '2018-05-24 10:45:09'),
(826, 'This Order Referance Already Found', 'This Order Referance Already Found', 'This Order Referance Already Found', '2018-05-24 10:50:05', '2018-05-24 10:50:05'),
(827, 'Selected Items Deleted Successfully.', 'Selected Items Deleted Successfully.', 'Selected Items Deleted Successfully.', '2018-05-24 12:02:01', '2018-05-24 12:02:01'),
(828, 'Referance No.', 'Referance No.', 'Referance No.', '2018-05-27 08:41:19', '2018-05-27 08:41:19'),
(829, 'Order', 'Order', 'Order', '2018-06-10 10:36:28', '2018-06-10 10:36:28'),
(830, 'E-Mail Address', 'E-Mail Address', 'E-Mail Address', '2018-06-25 10:46:38', '2018-06-25 10:46:38'),
(831, 'Password', 'Password', 'Password', '2018-06-25 10:46:38', '2018-06-25 10:46:38'),
(832, 'Forgot Your Password?', 'Forgot Your Password?', 'Forgot Your Password?', '2018-06-25 10:46:38', '2018-06-25 10:46:38'),
(833, 'Gaadem', 'Gaadem', 'Gaadem', '2018-06-25 10:46:39', '2018-06-25 10:46:39'),
(834, 'Register', 'Register', 'Register', '2018-06-25 10:46:39', '2018-06-25 10:46:39'),
(835, 'Created by', 'Created by', 'Created by', '2018-06-25 11:07:36', '2018-06-25 11:07:36'),
(836, 'Search...', 'Search...', 'Search...', '2018-06-25 11:07:46', '2018-06-25 11:07:46'),
(837, 'User Type', 'User Type', 'User Type', '2018-06-25 11:07:46', '2018-06-25 11:07:46'),
(838, 'Actions', 'Actions', 'Actions', '2018-06-25 11:07:46', '2018-06-25 11:07:46'),
(839, 'View User', 'View User', 'View User', '2018-06-25 11:07:46', '2018-06-25 11:07:46'),
(840, 'Edit User', 'Edit User', 'Edit User', '2018-06-25 11:07:46', '2018-06-25 11:07:46'),
(841, 'Delete User', 'Delete User', 'Delete User', '2018-06-25 11:07:46', '2018-06-25 11:07:46'),
(842, 'Confirm delete?', 'Confirm delete?', 'Confirm delete?', '2018-06-25 11:07:48', '2018-06-25 11:07:48'),
(843, 'Inactive', 'Inactive', 'Inactive', '2018-06-25 11:07:48', '2018-06-25 11:07:48'),
(844, 'Client', 'Client', 'Client', '2018-06-25 11:12:10', '2018-06-25 11:12:10'),
(845, 'Back', 'Back', 'Back', '2018-06-25 11:17:24', '2018-06-25 11:17:24'),
(846, 'Country', 'Country', 'Country', '2018-06-25 11:17:24', '2018-06-25 11:17:24'),
(847, 'City', 'City', 'City', '2018-06-25 11:17:25', '2018-06-25 11:17:25'),
(848, 'Last Login', 'Last Login', 'Last Login', '2018-06-25 11:17:25', '2018-06-25 11:17:25'),
(849, 'Ipaddress', 'Ipaddress', 'Ipaddress', '2018-06-25 11:17:25', '2018-06-25 11:17:25'),
(850, 'Default Lang', 'Default Lang', 'Default Lang', '2018-06-25 11:17:25', '2018-06-25 11:17:25'),
(851, 'Registeration Time', 'Registeration Time', 'Registeration Time', '2018-06-25 11:17:25', '2018-06-25 11:17:25'),
(852, 'Add New Static Page', 'Add New Static Page', 'Add New Static Page', '2018-06-25 11:22:25', '2018-06-25 11:22:25'),
(853, 'View Static Page', 'View Static Page', 'View Static Page', '2018-06-25 11:22:25', '2018-06-25 11:22:25'),
(854, 'Delete Static Page', 'Delete Static Page', 'Delete Static Page', '2018-06-25 11:22:25', '2018-06-25 11:22:25'),
(855, 'StaticPage updated!', 'StaticPage updated!', 'StaticPage updated!', '2018-06-25 11:24:05', '2018-06-25 11:24:05'),
(856, 'View Role', 'View Role', 'View Role', '2018-06-25 11:30:03', '2018-06-25 11:30:03'),
(857, 'Edit Role', 'Edit Role', 'Edit Role', '2018-06-25 11:30:03', '2018-06-25 11:30:03'),
(858, 'Label', 'Label', 'Label', '2018-06-25 11:35:32', '2018-06-25 11:35:32'),
(859, 'Dsiplay Name', 'Dsiplay Name', 'Dsiplay Name', '2018-06-25 11:38:14', '2018-06-25 11:38:14'),
(860, 'Edit Permission', 'Edit Permission', 'Edit Permission', '2018-06-25 11:38:40', '2018-06-25 11:38:40'),
(861, 'Give Permission to Role', 'Give Permission to Role', 'Give Permission to Role', '2018-06-25 11:46:44', '2018-06-25 11:46:44'),
(862, 'Grant', 'Grant', 'Grant', '2018-06-25 11:46:44', '2018-06-25 11:46:44'),
(863, 'View Client Details', 'View Client Details', 'View Client Details', '2018-06-25 11:54:22', '2018-06-25 11:54:22'),
(864, 'View Client Purchases', 'View Client Purchases', 'View Client Purchases', '2018-06-25 11:54:47', '2018-06-25 11:54:47'),
(865, 'Driver', 'Driver', 'Driver', '2018-06-25 12:03:58', '2018-06-25 12:03:58'),
(866, 'Shop', 'Shop', 'Shop', '2018-06-25 12:05:54', '2018-06-25 12:05:54'),
(867, 'User updated!', 'User updated!', 'User updated!', '2018-06-25 12:17:04', '2018-06-25 12:17:04'),
(868, 'Create New User', 'Create New User', 'Create New User', '2018-06-25 12:17:23', '2018-06-25 12:17:23'),
(869, 'User added!', 'User added!', 'User added!', '2018-06-25 12:59:39', '2018-06-25 12:59:39');
INSERT INTO `languages` (`id`, `key`, `en`, `ar`, `created_at`, `updated_at`) VALUES
(870, 'Edit Client Details', 'Edit Client Details', 'Edit Client Details', '2018-06-25 13:00:03', '2018-06-25 13:00:03'),
(871, 'Add New Card', 'Add New Card', 'Add New Card', '2018-06-26 06:13:13', '2018-06-26 06:13:13'),
(872, 'View Card', 'View Card', 'View Card', '2018-06-26 06:13:13', '2018-06-26 06:13:13'),
(873, 'Delete Card', 'Delete Card', 'Delete Card', '2018-06-26 06:13:13', '2018-06-26 06:13:13'),
(874, 'Card', 'Card', 'Card', '2018-06-26 06:32:33', '2018-06-26 06:32:33'),
(875, 'Create New Card', 'Create New Card', 'Create New Card', '2018-06-26 08:43:45', '2018-06-26 08:43:45'),
(876, 'Created', 'Created', 'Created', '2018-06-26 08:43:46', '2018-06-26 08:43:46'),
(877, 'Soldon', 'Soldon', 'Soldon', '2018-06-26 08:43:47', '2018-06-26 08:43:47'),
(878, 'Add New Bank', 'Add New Bank', 'Add New Bank', '2018-06-26 09:01:51', '2018-06-26 09:01:51'),
(879, 'Img', 'Img', 'Img', '2018-06-26 09:01:51', '2018-06-26 09:01:51'),
(880, 'View Bank', 'View Bank', 'View Bank', '2018-06-26 09:01:51', '2018-06-26 09:01:51'),
(881, 'Edit Bank', 'Edit Bank', 'Edit Bank', '2018-06-26 09:01:51', '2018-06-26 09:01:51'),
(882, 'Delete Bank', 'Delete Bank', 'Delete Bank', '2018-06-26 09:01:52', '2018-06-26 09:01:52'),
(883, 'Create New Bank', 'Create New Bank', 'Create New Bank', '2018-06-26 09:51:56', '2018-06-26 09:51:56'),
(884, 'Not Sold Yet', 'Not Sold Yet', 'Not Sold Yet', '2018-06-27 06:00:22', '2018-06-27 06:00:22'),
(885, 'Card added!', 'Card added!', 'Card added!', '2018-06-27 06:59:03', '2018-06-27 06:59:03'),
(886, 'Add New Country', 'Add New Country', 'Add New Country', '2018-06-27 10:59:13', '2018-06-27 10:59:13'),
(887, 'Geo Name', 'Geo Name', 'Geo Name', '2018-06-27 10:59:14', '2018-06-27 10:59:14'),
(888, 'Currencyid', 'Currencyid', 'Currencyid', '2018-06-27 10:59:14', '2018-06-27 10:59:14'),
(889, 'View Country', 'View Country', 'View Country', '2018-06-27 10:59:14', '2018-06-27 10:59:14'),
(890, 'Edit Country', 'Edit Country', 'Edit Country', '2018-06-27 10:59:14', '2018-06-27 10:59:14'),
(891, 'Delete Country', 'Delete Country', 'Delete Country', '2018-06-27 10:59:14', '2018-06-27 10:59:14'),
(892, 'Selected Item Deleted Successfully.', 'Selected Item Deleted Successfully.', 'Selected Item Deleted Successfully.', '2018-06-27 12:00:33', '2018-06-27 12:00:33'),
(893, 'Slug', 'Slug', 'Slug', '2018-06-27 12:01:40', '2018-06-27 12:01:40'),
(894, 'App Slug', 'App Slug', 'App Slug', '2018-06-27 12:01:41', '2018-06-27 12:01:41'),
(895, 'Selling Price', 'Selling Price', 'Selling Price', '2018-06-27 12:09:17', '2018-06-27 12:09:17'),
(896, 'Filter By Status', 'Filter By Status', 'Filter By Status', '2018-06-28 05:28:50', '2018-06-28 05:28:50'),
(897, 'Filter By User Type', 'Filter By User Type', 'Filter By User Type', '2018-06-28 05:52:15', '2018-06-28 05:52:15'),
(898, 'Enter ID', 'Enter ID', 'Enter ID', '2018-06-28 06:34:21', '2018-06-28 06:34:21'),
(899, 'Create Permission', 'Create Permission', 'Create Permission', '2018-06-28 07:22:23', '2018-06-28 07:22:23'),
(900, 'Role updated!', 'Role updated!', 'Role updated!', '2018-06-28 08:31:06', '2018-06-28 08:31:06'),
(901, 'Permission updated!', 'Permission updated!', 'Permission updated!', '2018-06-28 08:33:00', '2018-06-28 08:33:00'),
(902, 'Permission added!', 'Permission added!', 'Permission added!', '2018-06-28 08:33:13', '2018-06-28 08:33:13'),
(903, 'Permission deleted!', 'Permission deleted!', 'Permission deleted!', '2018-06-28 08:33:22', '2018-06-28 08:33:22'),
(904, 'Icon', 'Icon', 'Icon', '2018-06-28 08:34:11', '2018-06-28 08:34:11'),
(905, 'Public', 'Public', 'Public', '2018-06-28 08:34:11', '2018-06-28 08:34:11'),
(906, 'Not Public', 'Not Public', 'Not Public', '2018-06-28 08:34:11', '2018-06-28 08:34:11'),
(907, 'View Category', 'View Category', 'View Category', '2018-06-28 08:34:11', '2018-06-28 08:34:11'),
(908, 'Edit Category', 'Edit Category', 'Edit Category', '2018-06-28 08:34:11', '2018-06-28 08:34:11'),
(909, 'Delete Category', 'Delete Category', 'Delete Category', '2018-06-28 08:34:11', '2018-06-28 08:34:11'),
(910, 'Create New Category', 'Create New Category', 'Create New Category', '2018-06-28 08:34:22', '2018-06-28 08:34:22'),
(911, 'Big Flag', 'Big Flag', 'Big Flag', '2018-06-28 08:46:42', '2018-06-28 08:46:42'),
(912, 'Add New PaymentMethod', 'Add New PaymentMethod', 'Add New PaymentMethod', '2018-06-28 08:59:22', '2018-06-28 08:59:22'),
(913, 'View PaymentMethod', 'View PaymentMethod', 'View PaymentMethod', '2018-06-28 08:59:24', '2018-06-28 08:59:24'),
(914, 'Edit PaymentMethod', 'Edit PaymentMethod', 'Edit PaymentMethod', '2018-06-28 08:59:24', '2018-06-28 08:59:24'),
(915, 'Delete Payment Method', 'Delete Payment Method', 'Delete Payment Method', '2018-06-28 08:59:24', '2018-06-28 08:59:24'),
(916, 'Small Flag', 'Small Flag', 'Small Flag', '2018-06-28 09:05:35', '2018-06-28 09:05:35'),
(917, 'Flag', 'Flag', 'Flag', '2018-06-28 09:06:01', '2018-06-28 09:06:01'),
(918, 'Select Currency', 'Select Currency', 'Select Currency', '2018-06-28 10:20:22', '2018-06-28 10:20:22'),
(919, 'Create New Country', 'Create New Country', 'Create New Country', '2018-06-28 10:24:40', '2018-06-28 10:24:40'),
(920, 'Country added!', 'Country added!', 'Country added!', '2018-06-28 10:26:42', '2018-06-28 10:26:42'),
(921, 'Country updated!', 'Country updated!', 'Country updated!', '2018-06-28 10:32:30', '2018-06-28 10:32:30'),
(922, 'Typeid', 'Typeid', 'Typeid', '2018-06-28 10:46:37', '2018-06-28 10:46:37'),
(923, 'Pid', 'Pid', 'Pid', '2018-06-28 11:29:14', '2018-06-28 11:29:14'),
(924, 'Category   Type', 'Category   Type', 'Category   Type', '2018-06-29 19:09:00', '2018-06-29 19:09:00'),
(925, 'Parent id', 'Parent id', 'Parent id', '2018-06-29 19:26:30', '2018-06-29 19:26:30'),
(926, 'Category updated!', 'Category updated!', 'Category updated!', '2018-06-29 19:26:39', '2018-06-29 19:26:39'),
(927, 'Category added!', 'Category added!', 'Category added!', '2018-06-29 19:54:19', '2018-06-29 19:54:19'),
(928, 'Categoriestype', 'Categoriestype', 'Categoriestype', '2018-06-30 09:44:57', '2018-06-30 09:44:57'),
(929, 'Add New CategoriesType', 'Add New CategoriesType', 'Add New CategoriesType', '2018-06-30 09:44:57', '2018-06-30 09:44:57'),
(930, 'Service Type', 'Service Type', 'Service Type', '2018-06-30 09:44:57', '2018-06-30 09:44:57'),
(931, 'View CategoriesType', 'View CategoriesType', 'View CategoriesType', '2018-06-30 09:44:57', '2018-06-30 09:44:57'),
(932, 'Edit CategoriesType', 'Edit CategoriesType', 'Edit CategoriesType', '2018-06-30 09:44:57', '2018-06-30 09:44:57'),
(933, 'Delete CategoriesType', 'Delete CategoriesType', 'Delete CategoriesType', '2018-06-30 09:44:57', '2018-06-30 09:44:57'),
(934, 'Delete Categories Type', 'Delete Categories Type', 'Delete Categories Type', '2018-06-30 10:02:44', '2018-06-30 10:02:44'),
(935, 'Categories Type updated!', 'Categories Type updated!', 'Categories Type updated!', '2018-06-30 10:06:04', '2018-06-30 10:06:04'),
(936, 'Create New CategoriesType', 'Create New CategoriesType', 'Create New CategoriesType', '2018-06-30 10:21:11', '2018-06-30 10:21:11'),
(937, 'CategoriesType added!', 'CategoriesType added!', 'CategoriesType added!', '2018-06-30 10:21:59', '2018-06-30 10:21:59'),
(938, 'Edit Categories Type', 'Edit Categories Type', 'Edit Categories Type', '2018-06-30 10:36:59', '2018-06-30 10:36:59'),
(939, 'Categories Type deleted!', 'Categories Type deleted!', 'Categories Type deleted!', '2018-06-30 10:42:22', '2018-06-30 10:42:22'),
(940, 'Cities', 'Cities', 'Cities', '2018-06-30 10:48:07', '2018-06-30 10:48:07'),
(941, 'Add New City', 'Add New City', 'Add New City', '2018-06-30 10:48:07', '2018-06-30 10:48:07'),
(942, 'Countryid', 'Countryid', 'Countryid', '2018-06-30 10:48:08', '2018-06-30 10:48:08'),
(943, 'View City', 'View City', 'View City', '2018-06-30 10:48:09', '2018-06-30 10:48:09'),
(944, 'Edit City', 'Edit City', 'Edit City', '2018-06-30 10:48:09', '2018-06-30 10:48:09'),
(945, 'Delete City', 'Delete City', 'Delete City', '2018-06-30 10:48:09', '2018-06-30 10:48:09'),
(946, 'Create New City', 'Create New City', 'Create New City', '2018-06-30 11:35:58', '2018-06-30 11:35:58'),
(947, 'Default', 'Default', 'Default', '2018-06-30 11:35:58', '2018-06-30 11:35:58'),
(948, 'City updated!', 'City updated!', 'City updated!', '2018-06-30 11:45:43', '2018-06-30 11:45:43'),
(949, 'City added!', 'City added!', 'City added!', '2018-06-30 11:52:19', '2018-06-30 11:52:19'),
(950, 'Districts', 'Districts', 'Districts', '2018-06-30 12:03:07', '2018-06-30 12:03:07'),
(951, 'Add New District', 'Add New District', 'Add New District', '2018-06-30 12:03:07', '2018-06-30 12:03:07'),
(952, 'View District', 'View District', 'View District', '2018-06-30 12:03:08', '2018-06-30 12:03:08'),
(953, 'Edit District', 'Edit District', 'Edit District', '2018-06-30 12:03:08', '2018-06-30 12:03:08'),
(954, 'Delete District', 'Delete District', 'Delete District', '2018-06-30 12:03:08', '2018-06-30 12:03:08'),
(955, 'Create New District', 'Create New District', 'Create New District', '2018-06-30 12:14:58', '2018-06-30 12:14:58'),
(956, 'Lat', 'Lat', 'Lat', '2018-06-30 12:14:59', '2018-06-30 12:14:59'),
(957, 'Lng', 'Lng', 'Lng', '2018-06-30 12:14:59', '2018-06-30 12:14:59'),
(958, 'Country Id', 'Country Id', 'Country Id', '2018-06-30 12:14:59', '2018-06-30 12:14:59'),
(959, 'City Id', 'City Id', 'City Id', '2018-06-30 12:14:59', '2018-06-30 12:14:59'),
(960, 'District added!', 'District added!', 'District added!', '2018-07-01 10:38:37', '2018-07-01 10:38:37'),
(961, 'District updated!', 'District updated!', 'District updated!', '2018-07-01 10:42:28', '2018-07-01 10:42:28'),
(962, 'District', 'District', 'District', '2018-07-01 10:46:07', '2018-07-01 10:46:07'),
(963, 'Bank updated!', 'Bank updated!', 'Bank updated!', '2018-07-01 11:28:54', '2018-07-01 11:28:54'),
(964, 'Bank added!', 'Bank added!', 'Bank added!', '2018-07-01 11:39:36', '2018-07-01 11:39:36'),
(965, 'Edit Payment Method', 'Edit Payment Method', 'Edit Payment Method', '2018-07-01 11:40:17', '2018-07-01 11:40:17'),
(966, 'Create New Payment Method', 'Create New Payment Method', 'Create New Payment Method', '2018-07-01 11:40:36', '2018-07-01 11:40:36'),
(967, 'Paymentmethods', 'Paymentmethods', 'Paymentmethods', '2018-07-01 11:46:02', '2018-07-01 11:46:02'),
(968, 'Delete PaymentMethod', 'Delete PaymentMethod', 'Delete PaymentMethod', '2018-07-01 11:46:02', '2018-07-01 11:46:02'),
(969, 'PaymentMethod updated!', 'PaymentMethod updated!', 'PaymentMethod updated!', '2018-07-01 11:52:27', '2018-07-01 11:52:27'),
(970, 'Create New PaymentMethod', 'Create New PaymentMethod', 'Create New PaymentMethod', '2018-07-01 11:53:53', '2018-07-01 11:53:53'),
(971, 'PaymentMethod added!', 'PaymentMethod added!', 'PaymentMethod added!', '2018-07-01 11:58:14', '2018-07-01 11:58:14'),
(972, 'Priceclasses', 'Priceclasses', 'Priceclasses', '2018-07-01 12:10:15', '2018-07-01 12:10:15'),
(973, 'Add New PriceClass', 'Add New PriceClass', 'Add New PriceClass', '2018-07-01 12:10:15', '2018-07-01 12:10:15'),
(974, 'Category Id', 'Category Id', 'Category Id', '2018-07-01 12:10:15', '2018-07-01 12:10:15'),
(975, 'View PriceClass', 'View PriceClass', 'View PriceClass', '2018-07-01 12:10:15', '2018-07-01 12:10:15'),
(976, 'Edit PriceClass', 'Edit PriceClass', 'Edit PriceClass', '2018-07-01 12:10:15', '2018-07-01 12:10:15'),
(977, 'Delete PriceClass', 'Delete PriceClass', 'Delete PriceClass', '2018-07-01 12:10:15', '2018-07-01 12:10:15'),
(978, 'PriceClass', 'PriceClass', 'PriceClass', '2018-07-01 12:14:53', '2018-07-01 12:14:53'),
(979, 'Order No', 'Order No', 'Order No', '2018-07-01 12:16:42', '2018-07-01 12:16:42'),
(980, 'PriceClass updated!', 'PriceClass updated!', 'PriceClass updated!', '2018-07-01 12:23:20', '2018-07-01 12:23:20'),
(981, 'Edit Price Class', 'Edit Price Class', 'Edit Price Class', '2018-07-01 12:48:55', '2018-07-01 12:48:55'),
(982, 'Add New Contact', 'Add New Contact', 'Add New Contact', '2018-07-02 08:12:09', '2018-07-02 08:12:09'),
(983, 'Contact Type', 'Contact Type', 'Contact Type', '2018-07-02 08:12:09', '2018-07-02 08:12:09'),
(984, 'View Contact', 'View Contact', 'View Contact', '2018-07-02 08:12:10', '2018-07-02 08:12:10'),
(985, 'Edit Contact', 'Edit Contact', 'Edit Contact', '2018-07-02 08:12:10', '2018-07-02 08:12:10'),
(986, 'Delete Contact', 'Delete Contact', 'Delete Contact', '2018-07-02 08:12:10', '2018-07-02 08:12:10'),
(987, 'Contact', 'Contact', 'Contact', '2018-07-02 08:12:20', '2018-07-02 08:12:20'),
(988, 'Sent At', 'Sent At', 'Sent At', '2018-07-02 09:59:31', '2018-07-02 09:59:31'),
(989, 'Add New Favorite', 'Add New Favorite', 'Add New Favorite', '2018-07-02 10:21:00', '2018-07-02 10:21:00'),
(990, 'User Id', 'User Id', 'User Id', '2018-07-02 10:21:01', '2018-07-02 10:21:01'),
(991, 'Token', 'Token', 'Token', '2018-07-02 10:21:01', '2018-07-02 10:21:01'),
(992, 'View Favorite', 'View Favorite', 'View Favorite', '2018-07-02 10:21:02', '2018-07-02 10:21:02'),
(993, 'Edit Favorite', 'Edit Favorite', 'Edit Favorite', '2018-07-02 10:21:03', '2018-07-02 10:21:03'),
(994, 'Delete Favorite', 'Delete Favorite', 'Delete Favorite', '2018-07-02 10:21:04', '2018-07-02 10:21:04'),
(995, 'Enter User ID', 'Enter User ID', 'Enter User ID', '2018-07-02 10:36:07', '2018-07-02 10:36:07'),
(996, 'Shoppingcart', 'Shoppingcart', 'Shoppingcart', '2018-07-03 08:00:21', '2018-07-03 08:00:21'),
(997, 'Add New ShoppingCart', 'Add New ShoppingCart', 'Add New ShoppingCart', '2018-07-03 08:00:21', '2018-07-03 08:00:21'),
(998, 'View ShoppingCart', 'View ShoppingCart', 'View ShoppingCart', '2018-07-03 08:00:21', '2018-07-03 08:00:21'),
(999, 'Edit ShoppingCart', 'Edit ShoppingCart', 'Edit ShoppingCart', '2018-07-03 08:00:21', '2018-07-03 08:00:21'),
(1000, 'Delete ShoppingCart', 'Delete ShoppingCart', 'Delete ShoppingCart', '2018-07-03 08:05:10', '2018-07-03 08:05:10'),
(1001, 'Shoppinghistory', 'Shoppinghistory', 'Shoppinghistory', '2018-07-03 08:38:21', '2018-07-03 08:38:21'),
(1002, 'Add New ShoppingHistory', 'Add New ShoppingHistory', 'Add New ShoppingHistory', '2018-07-03 08:38:21', '2018-07-03 08:38:21'),
(1003, 'Address Id', 'Address Id', 'Address Id', '2018-07-03 08:38:21', '2018-07-03 08:38:21'),
(1004, 'View ShoppingHistory', 'View ShoppingHistory', 'View ShoppingHistory', '2018-07-03 08:38:21', '2018-07-03 08:38:21'),
(1005, 'Edit ShoppingHistory', 'Edit ShoppingHistory', 'Edit ShoppingHistory', '2018-07-03 08:38:21', '2018-07-03 08:38:21'),
(1006, 'Checkout ID', 'Checkout ID', 'Checkout ID', '2018-07-03 08:42:45', '2018-07-03 08:42:45'),
(1007, 'Pending', 'Pending', 'Pending', '2018-07-03 08:45:23', '2018-07-03 08:45:23'),
(1008, 'Error', 'Error', 'Error', '2018-07-03 08:45:23', '2018-07-03 08:45:23'),
(1009, 'Success', 'Success', 'Success', '2018-07-03 08:45:23', '2018-07-03 08:45:23'),
(1010, 'Canceled', 'Canceled', 'Canceled', '2018-07-03 08:45:23', '2018-07-03 08:45:23'),
(1011, 'Fail', 'Fail', 'Fail', '2018-07-03 08:45:23', '2018-07-03 08:45:23'),
(1012, 'View Client Shopping Cart', 'View Client Shopping Cart', 'View Client Shopping Cart', '2018-07-03 10:15:19', '2018-07-03 10:15:19'),
(1013, 'View Client Shopping History', 'View Client Shopping History', 'View Client Shopping History', '2018-07-03 10:16:23', '2018-07-03 10:16:23'),
(1014, 'Add New Transaction', 'Add New Transaction', 'Add New Transaction', '2018-07-03 10:21:50', '2018-07-03 10:21:50'),
(1015, 'Shopping History Id', 'Shopping History Id', 'Shopping History Id', '2018-07-03 10:21:52', '2018-07-03 10:21:52'),
(1016, 'View Transaction', 'View Transaction', 'View Transaction', '2018-07-03 10:21:52', '2018-07-03 10:21:52'),
(1017, 'Delete ShoppingHistory', 'Delete ShoppingHistory', 'Delete ShoppingHistory', '2018-07-03 10:26:13', '2018-07-03 10:26:13'),
(1018, 'Payment Info Id', 'Payment Info Id', 'Payment Info Id', '2018-07-03 10:26:20', '2018-07-03 10:26:20'),
(1019, 'Paid By', 'Paid By', 'دفعت بواسطة', '2018-07-03 11:27:38', '2018-07-09 06:57:28'),
(1020, 'At', 'At', 'At', '2018-07-03 11:34:56', '2018-07-03 11:34:56'),
(1021, 'Nonce Referance', 'Nonce Referance', 'Nonce Referance', '2018-07-03 12:05:16', '2018-07-03 12:05:16'),
(1022, 'Order Reference', 'Order Reference', 'Order Reference', '2018-07-03 12:05:19', '2018-07-03 12:05:19'),
(1023, 'Payment Method Id', 'Payment Method Id', 'Payment Method Id', '2018-07-03 12:05:19', '2018-07-03 12:05:19'),
(1024, 'Transaction ID', 'Transaction ID', 'Transaction ID', '2018-07-03 12:07:50', '2018-07-03 12:07:50'),
(1025, 'View Client Favorites', 'View Client Favorites', 'View Client Favorites', '2018-07-03 12:28:59', '2018-07-03 12:28:59'),
(1026, 'View Client Messages', 'View Client Messages', 'View Client Messages', '2018-07-03 12:31:10', '2018-07-03 12:31:10'),
(1027, 'View Shopping History', 'View Shopping History', 'View Shopping History', '2018-07-04 05:32:24', '2018-07-04 05:32:24'),
(1028, 'View  Transaction', 'View  Transaction', 'View  Transaction', '2018-07-04 05:32:24', '2018-07-04 05:32:24'),
(1029, 'Taken', 'Taken', 'Taken', '2018-07-04 05:39:38', '2018-07-04 05:39:38'),
(1030, 'Export As XLS', 'Export As XLS', 'Export As XLS', '2018-07-08 07:41:32', '2018-07-08 07:41:32'),
(1031, 'Invalid Mobile Or Password', 'Invalid Mobile Or Password', 'Invalid Mobile Or Password', '2018-07-08 07:55:32', '2018-07-08 07:55:32'),
(1032, 'Invalid Mobile Number', 'Invalid Mobile Number', 'Invalid Mobile Number', '2018-07-08 07:55:33', '2018-07-08 07:55:33'),
(1033, 'Code Sent Error!', 'Code Sent Error!', 'Code Sent Error!', '2018-07-08 08:00:17', '2018-07-08 08:00:17'),
(1034, 'No Data Found', 'No Data Found', 'No Data Found', '2018-07-08 08:09:41', '2018-07-08 08:09:41'),
(1035, 'Categories Listed Successfully.', 'Categories Listed Successfully.', 'Categories Listed Successfully.', '2018-07-08 08:11:46', '2018-07-08 08:11:46'),
(1036, 'User Name', 'User Name', 'User Name', '2018-07-09 06:23:13', '2018-07-09 06:23:13'),
(1037, '@uantity', '@uantity', '@uantity', '2018-07-09 08:46:48', '2018-07-09 08:46:48'),
(1038, 'Daily Sales Report', 'Daily Sales Report', 'Daily Sales Report', '2018-07-09 11:42:58', '2018-07-09 11:42:58'),
(1039, 'Total', 'Total', 'Total', '2018-07-09 11:42:59', '2018-07-09 11:42:59'),
(1040, 'Daily Stock Report', 'Daily Stock Report', 'Daily Stock Report', '2018-07-09 12:21:35', '2018-07-09 12:21:35'),
(1041, 'From', 'From', 'From', '2018-07-09 12:21:35', '2018-07-09 12:21:35'),
(1042, 'To', 'To', 'To', '2018-07-09 12:21:36', '2018-07-09 12:21:36'),
(1043, 'P. Order', 'P. Order', 'P. Order', '2018-07-11 08:57:33', '2018-07-11 08:57:33'),
(1044, 'Transaction No.', 'Transaction No.', 'Transaction No.', '2018-07-12 08:47:39', '2018-07-12 08:47:39'),
(1045, 'Inputs Q.', 'Inputs Q.', 'Inputs Q.', '2018-07-12 08:47:39', '2018-07-12 08:47:39'),
(1046, 'Inputs Unit Price', 'Inputs Unit Price', 'Inputs Unit Price', '2018-07-12 08:47:39', '2018-07-12 08:47:39'),
(1047, 'Output Q.', 'Output Q.', 'Output Q.', '2018-07-12 08:47:39', '2018-07-12 08:47:39'),
(1048, 'Output Unit Price', 'Output Unit Price', 'Output Unit Price', '2018-07-12 08:47:39', '2018-07-12 08:47:39'),
(1049, 'Average Unit Price', 'Average Unit Price', 'Average Unit Price', '2018-07-12 08:47:39', '2018-07-12 08:47:39'),
(1050, 'By', 'By', 'By', '2018-07-15 06:26:27', '2018-07-15 06:26:27'),
(1051, 'Called By', 'Called By', 'Called By', '2018-07-15 10:38:28', '2018-07-15 10:38:28'),
(1052, 'Not Called Yet', 'Not Called Yet', 'Not Called Yet', '2018-07-15 10:38:28', '2018-07-15 10:38:28'),
(1053, 'Solved By', 'Solved By', 'Solved By', '2018-07-15 10:38:28', '2018-07-15 10:38:28'),
(1054, 'Not solved Yet', 'Not solved Yet', 'Not solved Yet', '2018-07-15 10:38:48', '2018-07-15 10:38:48'),
(1055, 'Mark As Called', 'Mark As Called', 'Mark As Called', '2018-07-15 10:45:47', '2018-07-15 10:45:47'),
(1056, 'Mark As Solved', 'Mark As Solved', 'Mark As Solved', '2018-07-15 10:46:39', '2018-07-15 10:46:39'),
(1057, 'Marked As Solved Successfully.', 'Marked As Solved Successfully.', 'Marked As Solved Successfully.', '2018-07-15 10:59:17', '2018-07-15 10:59:17'),
(1058, 'Mark As Not Solved', 'Mark As Not Solved', 'Mark As Not Solved', '2018-07-15 11:09:10', '2018-07-15 11:09:10'),
(1059, 'Marked As Not Solved Successfully.', 'Marked As Not Solved Successfully.', 'Marked As Not Solved Successfully.', '2018-07-15 11:09:15', '2018-07-15 11:09:15'),
(1060, 'Marked As Called Successfully.', 'Marked As Called Successfully.', 'Marked As Called Successfully.', '2018-07-15 11:09:24', '2018-07-15 11:09:24'),
(1061, 'Called', 'Called', 'Called', '2018-07-16 07:31:28', '2018-07-16 07:31:28'),
(1062, 'Solved', 'Solved', 'Solved', '2018-07-16 07:31:28', '2018-07-16 07:31:28'),
(1063, 'View User Details', 'View User Details', 'View User Details', '2018-07-16 07:35:46', '2018-07-16 07:35:46'),
(1064, 'Data Sent Successfully', 'Data Sent Successfully', 'Data Sent Successfully', '2018-07-24 08:33:39', '2018-07-24 08:33:39'),
(1065, 'Balance Listed Successfully.', 'Balance Listed Successfully.', 'Balance Listed Successfully.', '2018-07-25 08:49:15', '2018-07-25 08:49:15'),
(1066, 'Account Charged Successfully', 'Account Charged Successfully', 'Account Charged Successfully', '2018-07-25 09:51:02', '2018-07-25 09:51:02'),
(1067, 'Products Listed Successfully.', 'Products Listed Successfully.', 'Products Listed Successfully.', '2018-07-25 12:36:19', '2018-07-25 12:36:19'),
(1068, 'User Already Active', 'User Already Active', 'User Already Active', '2018-07-25 12:53:56', '2018-07-25 12:53:56'),
(1069, 'Wrong Code', 'Wrong Code', 'Wrong Code', '2018-07-25 13:16:49', '2018-07-25 13:16:49'),
(1070, 'verify code is: ', 'verify code is: ', 'verify code is: ', '2018-07-25 13:18:35', '2018-07-25 13:18:35'),
(1071, 'Thank You For Contacting Us, Message Sent Successfully', 'Thank You For Contacting Us, Message Sent Successfully', 'Thank You For Contacting Us, Message Sent Successfully', '2018-07-26 07:01:38', '2018-07-26 07:01:38'),
(1072, 'Wrong Secret Code', 'Wrong Secret Code', 'Wrong Secret Code', '2018-07-26 07:44:52', '2018-07-26 07:44:52'),
(1073, 'Secret Code Correct', 'Secret Code Correct', 'Secret Code Correct', '2018-07-26 07:45:05', '2018-07-26 07:45:05'),
(1074, 'Correct Secret Code', 'Correct Secret Code', 'Correct Secret Code', '2018-07-26 07:45:22', '2018-07-26 07:45:22'),
(1075, 'No Cart Items Found.', 'No Cart Items Found.', 'No Cart Items Found.', '2018-07-26 10:02:51', '2018-07-26 10:02:51'),
(1076, 'Purchasing Done.', 'Purchasing Done.', 'Purchasing Done.', '2018-07-26 10:03:14', '2018-07-26 10:03:14'),
(1077, 'Unactivated Account', 'Unactivated Account', 'Unactivated Account', '2018-08-01 08:50:05', '2018-08-01 08:50:05'),
(1078, 'Add New Shop', 'Add New Shop', 'Add New Shop', '2018-08-01 10:34:50', '2018-08-01 10:34:50'),
(1079, 'Shop Name', 'Shop Name', 'Shop Name', '2018-08-01 10:34:50', '2018-08-01 10:34:50'),
(1080, 'Telephone', 'Telephone', 'Telephone', '2018-08-01 10:34:50', '2018-08-01 10:34:50'),
(1081, 'View Shop', 'View Shop', 'View Shop', '2018-08-01 10:34:50', '2018-08-01 10:34:50'),
(1082, 'Edit Shop', 'Edit Shop', 'Edit Shop', '2018-08-01 10:34:50', '2018-08-01 10:34:50'),
(1083, 'Delete Shop', 'Delete Shop', 'Delete Shop', '2018-08-01 10:34:50', '2018-08-01 10:34:50'),
(1084, 'Device Model', 'Device Model', 'Device Model', '2018-08-02 06:34:54', '2018-08-02 06:34:54'),
(1085, 'OS Version', 'OS Version', 'OS Version', '2018-08-02 06:39:45', '2018-08-02 06:39:45'),
(1086, 'App Version', 'App Version', 'App Version', '2018-08-02 06:39:45', '2018-08-02 06:39:45'),
(1087, 'Balance', 'Balance', 'Balance', '2018-08-05 05:56:53', '2018-08-05 05:56:53'),
(1088, 'Dashboarda', 'Dashboarda', 'Dashboarda', '2018-08-07 08:23:32', '2018-08-07 08:23:32'),
(1089, 'Core Bussiness', 'Core Bussiness', 'Core Bussiness', '2018-08-07 08:25:57', '2018-08-07 08:25:57'),
(1090, 'Contact Us', 'Contact Us', 'Contact Us', '2018-08-07 08:25:57', '2018-08-07 08:25:57'),
(1091, 'User Manager', 'User Manager', 'User Manager', '2018-08-07 08:25:57', '2018-08-07 08:25:57'),
(1092, 'Tools', 'Tools', 'Tools', '2018-08-07 08:25:57', '2018-08-07 08:25:57'),
(1093, 'Generator', 'Generator', 'Generator', '2018-08-07 08:25:57', '2018-08-07 08:25:57'),
(1094, 'Basics', 'Basics', 'Basics', '2018-08-07 08:25:58', '2018-08-07 08:25:58'),
(1095, 'Shops Managment', 'Shops Managment', 'Shops Managment', '2018-08-07 08:25:58', '2018-08-07 08:25:58'),
(1096, 'Receipts', 'Receipts', 'Receipts', '2018-08-07 08:25:58', '2018-08-07 08:25:58'),
(1097, 'Log', 'Log', 'Log', '2018-08-07 08:25:58', '2018-08-07 08:25:58'),
(1098, 'Error In Saving Transaction id#1', 'Error In Saving Transaction id#1', 'Error In Saving Transaction id#1', '2018-08-15 10:15:13', '2018-08-15 10:15:13'),
(1099, 'This Payment Already Saved.', 'This Payment Already Saved.', 'This Payment Already Saved.', '2018-08-15 10:55:31', '2018-08-15 10:55:31'),
(1100, 'Invalid User!', 'Invalid User!', 'Invalid User!', '2018-08-15 11:16:06', '2018-08-15 11:16:06'),
(1101, 'User Details', 'User Details', 'User Details', '2018-08-15 11:16:07', '2018-08-15 11:16:07'),
(1102, 'Mark As Not Taken', 'Mark As Not Taken', 'Mark As Not Taken', '2018-08-29 05:38:23', '2018-08-29 05:38:23'),
(1103, 'Not Taken', 'Not Taken', 'Not Taken', '2018-08-29 06:06:13', '2018-08-29 06:06:13'),
(1104, 'Mark As Taken', 'Mark As Taken', 'Mark As Taken', '2018-08-29 06:06:13', '2018-08-29 06:06:13'),
(1105, 'الرياض', 'الرياض', 'الرياض', '2018-09-02 11:11:34', '2018-09-02 11:11:34'),
(1106, 'Your Order Done Successfully!', 'Your Order Done Successfully!', 'Your Order Done Successfully!', '2018-09-02 12:12:45', '2018-09-02 12:12:45'),
(1107, 'You Use Old Version, To Continue You Have To Update The Application.', 'You Use Old Version, To Continue You Have To Update The Application.', 'You Use Old Version, To Continue You Have To Update The Application.', '2018-09-03 13:12:47', '2018-09-03 13:12:47'),
(1108, 'You Use Old Version, You Have To Update The Application.', 'You Use Old Version, You Have To Update The Application.', 'You Use Old Version, You Have To Update The Application.', '2018-09-04 08:07:07', '2018-09-04 08:07:07'),
(1109, 'No History Found', 'No History Found', 'No History Found', '2018-09-11 05:39:34', '2018-09-11 05:39:34'),
(1110, 'Sorry, Your Balance Not Enough, Please Recharge Your Account And Try Again.', 'Sorry, Your Balance Not Enough, Please Recharge Your Account And Try Again.', 'Sorry, Your Balance Not Enough, Please Recharge Your Account And Try Again.', '2018-09-11 07:35:54', '2018-09-11 07:35:54'),
(1111, 'Some Item\'s price changed, the new price is ', 'Some Item\'s price changed, the new price is ', 'Some Item\'s price changed, the new price is ', '2018-09-11 11:44:51', '2018-09-11 11:44:51'),
(1112, '. if you want to continue press OK', '. if you want to continue press OK', '. if you want to continue press OK', '2018-09-11 11:44:51', '2018-09-11 11:44:51'),
(1113, ' pin is: ', ' pin is: ', ' pin is: ', '2018-09-11 11:55:02', '2018-09-11 11:55:02'),
(1114, 'Charging Request Sent Successfully', 'Charging Request Sent Successfully', 'Charging Request Sent Successfully', '2018-09-12 10:51:00', '2018-09-12 10:51:00'),
(1115, 'History Data Returned.', 'History Data Returned.', 'History Data Returned.', '2018-09-12 11:54:15', '2018-09-12 11:54:15'),
(1116, 'Error In Changing Language', 'Error In Changing Language', 'Error In Changing Language', '2018-09-13 11:41:11', '2018-09-13 11:41:11'),
(1117, 'Receipt History Data Returned.', 'Receipt History Data Returned.', 'Receipt History Data Returned.', '2018-09-25 08:02:13', '2018-09-25 08:02:13'),
(1118, 'Create New Shop', 'Create New Shop', 'Create New Shop', '2018-09-27 07:49:54', '2018-09-27 07:49:54'),
(1119, 'Location', 'Location', 'Location', '2018-09-27 07:49:56', '2018-09-27 07:49:56'),
(1120, 'License', 'License', 'License', '2018-09-27 07:49:56', '2018-09-27 07:49:56'),
(1121, 'Identity', 'Identity', 'Identity', '2018-09-27 07:49:56', '2018-09-27 07:49:56'),
(1122, 'Commercial', 'Commercial', 'Commercial', '2018-09-27 07:49:56', '2018-09-27 07:49:56'),
(1123, 'Bank Id', 'Bank Id', 'Bank Id', '2018-09-27 07:49:56', '2018-09-27 07:49:56'),
(1124, 'Bank Account', 'Bank Account', 'Bank Account', '2018-09-27 07:49:56', '2018-09-27 07:49:56'),
(1125, 'Secret Code', 'Secret Code', 'Secret Code', '2018-09-27 07:49:57', '2018-09-27 07:49:57'),
(1126, 'Activated By', 'Activated By', 'Activated By', '2018-09-27 07:49:57', '2018-09-27 07:49:57'),
(1127, 'Mobile Number', 'Mobile Number', 'Mobile Number', '2018-09-27 08:24:03', '2018-09-27 08:24:03'),
(1128, 'Mobile Number (login number)', 'Mobile Number (login number)', 'Mobile Number (login number)', '2018-09-27 08:25:08', '2018-09-27 08:25:08'),
(1129, 'Mobile Number (login)', 'Mobile Number (login)', 'Mobile Number (login)', '2018-09-27 08:25:21', '2018-09-27 08:25:21'),
(1130, 'Mobile Number (credential)', 'Mobile Number (credential)', 'Mobile Number (credential)', '2018-09-27 08:32:46', '2018-09-27 08:32:46'),
(1131, 'Password (credential)', 'Password (credential)', 'Password (credential)', '2018-09-27 08:32:46', '2018-09-27 08:32:46'),
(1132, 'Add New Notification', 'Add New Notification', 'Add New Notification', '2018-10-01 09:50:10', '2018-10-01 09:50:10'),
(1133, 'Android', 'Android', 'Android', '2018-10-01 09:50:10', '2018-10-01 09:50:10'),
(1134, 'Ios', 'Ios', 'Ios', '2018-10-01 09:50:10', '2018-10-01 09:50:10'),
(1135, 'View Notification', 'View Notification', 'View Notification', '2018-10-01 09:50:10', '2018-10-01 09:50:10'),
(1136, 'Delete Notification', 'Delete Notification', 'Delete Notification', '2018-10-01 09:50:10', '2018-10-01 09:50:10'),
(1137, 'Yes', 'Yes', 'Yes', '2018-10-02 12:09:18', '2018-10-02 12:09:18'),
(1138, 'Notification Token Id', 'Notification Token Id', 'Notification Token Id', '2018-10-02 12:09:36', '2018-10-02 12:09:36'),
(1139, 'Lang', 'Lang', 'Lang', '2018-10-02 12:09:36', '2018-10-02 12:09:36'),
(1140, 'Create New Notification', 'Create New Notification', 'Create New Notification', '2018-10-02 12:28:07', '2018-10-02 12:28:07'),
(1141, 'Shop added!', 'Shop added!', 'Shop added!', '2018-10-29 05:34:45', '2018-10-29 05:34:45'),
(1142, 'Shop updated!', 'Shop updated!', 'Shop updated!', '2018-10-30 09:41:46', '2018-10-30 09:41:46'),
(1143, 'Download ', 'Download ', 'Download ', '2018-10-30 10:42:06', '2018-10-30 10:42:06'),
(1144, 'Updated By', 'Updated By', 'Updated By', '2018-10-30 12:51:09', '2018-10-30 12:51:09'),
(1145, 'Blocked User', 'Blocked User', 'Blocked User', '2018-10-30 13:11:31', '2018-10-30 13:11:31'),
(1146, 'Active User', 'Active User', 'Active User', '2018-10-30 13:13:19', '2018-10-30 13:13:19'),
(1147, 'Add New Receipt', 'Add New Receipt', 'Add New Receipt', '2018-11-27 11:01:15', '2018-11-27 11:01:15'),
(1148, 'Receipt', 'Receipt', 'Receipt', '2018-11-27 11:01:16', '2018-11-27 11:01:16'),
(1149, 'Amount', 'Amount', 'Amount', '2018-11-27 11:01:16', '2018-11-27 11:01:16'),
(1150, 'Currency Id', 'Currency Id', 'Currency Id', '2018-11-27 11:01:16', '2018-11-27 11:01:16'),
(1151, 'View Receipt', 'View Receipt', 'View Receipt', '2018-11-27 11:01:16', '2018-11-27 11:01:16'),
(1152, 'Edit Receipt', 'Edit Receipt', 'Edit Receipt', '2018-11-27 11:01:16', '2018-11-27 11:01:16'),
(1153, 'Delete Receipt', 'Delete Receipt', 'Delete Receipt', '2018-11-27 11:01:16', '2018-11-27 11:01:16'),
(1154, 'Accepted', 'Accepted', 'Accepted', '2018-11-28 08:25:12', '2018-11-28 08:25:12'),
(1155, 'Rejected', 'Rejected', 'Rejected', '2018-11-28 08:25:12', '2018-11-28 08:25:12'),
(1156, 'Receipt updated!', 'Receipt updated!', 'Receipt updated!', '2018-11-28 09:24:38', '2018-11-28 09:24:38'),
(1157, 'View Client Receipts', 'View Client Receipts', 'View Client Receipts', '2018-11-28 09:40:28', '2018-11-28 09:40:28'),
(1158, 'Add New Log', 'Add New Log', 'Add New Log', '2018-11-28 12:44:23', '2018-11-28 12:44:23'),
(1159, 'Ip', 'Ip', 'Ip', '2018-11-28 12:44:23', '2018-11-28 12:44:23'),
(1160, 'Page Id', 'Page Id', 'Page Id', '2018-11-28 12:44:23', '2018-11-28 12:44:23'),
(1161, 'View Log', 'View Log', 'View Log', '2018-11-28 12:44:23', '2018-11-28 12:44:23'),
(1162, 'Edit Log', 'Edit Log', 'Edit Log', '2018-11-28 12:44:23', '2018-11-28 12:44:23'),
(1163, 'Page', 'Page', 'Page', '2018-11-28 12:50:02', '2018-11-28 12:50:02'),
(1164, 'Record Id', 'Record Id', 'Record Id', '2018-11-28 12:50:02', '2018-11-28 12:50:02'),
(1165, 'Filter By Page', 'Filter By Page', 'Filter By Page', '2018-11-29 06:59:21', '2018-11-29 06:59:21'),
(1166, 'Edit Shop Details', 'Edit Shop Details', 'Edit Shop Details', '2018-11-29 11:59:40', '2018-11-29 11:59:40'),
(1167, 'Ezhal Market', 'Ezhal Market', 'Ezhal Market', '2019-01-20 06:37:35', '2019-01-20 06:37:35'),
(1168, 'Add User', 'Add User', 'Add User', '2019-01-23 10:36:10', '2019-01-23 10:36:10'),
(1169, 'Not Login Yet', 'Not Login Yet', 'Not Login Yet', '2019-01-23 11:02:57', '2019-01-23 11:02:57'),
(1170, 'User deleted!', 'User deleted!', 'User deleted!', '2019-01-23 11:19:20', '2019-01-23 11:19:20'),
(1171, 'Deleted Users', 'Deleted Users', 'Deleted Users', '2019-01-23 11:43:14', '2019-01-23 11:43:14'),
(1172, 'Deleted Shops', 'Deleted Shops', 'Deleted Shops', '2019-01-23 11:50:16', '2019-01-23 11:50:16'),
(1173, 'Add New User', 'Add New User', 'Add New User', '2019-01-23 11:50:16', '2019-01-23 11:50:16'),
(1174, 'Restore Shop', 'Restore Shop', 'Restore Shop', '2019-01-23 11:58:48', '2019-01-23 11:58:48'),
(1175, 'Restore', 'Restore', 'Restore', '2019-01-23 12:00:10', '2019-01-23 12:00:10'),
(1176, 'Confirm restore?', 'Confirm restore?', 'Confirm restore?', '2019-01-23 12:15:01', '2019-01-23 12:15:01'),
(1177, 'Selected Item Restored Successfully.', 'Selected Item Restored Successfully.', 'Selected Item Restored Successfully.', '2019-01-23 12:19:58', '2019-01-23 12:19:58'),
(1178, 'Shop deleted!', 'Shop deleted!', 'Shop deleted!', '2019-01-23 12:20:31', '2019-01-23 12:20:31'),
(1179, 'Restore User', 'Restore User', 'Restore User', '2019-01-23 12:32:07', '2019-01-23 12:32:07'),
(1180, 'User Restored!', 'User Restored!', 'User Restored!', '2019-01-24 07:04:45', '2019-01-24 07:04:45'),
(1181, 'Saudi Riyal', 'Saudi Riyal', 'Saudi Riyal', '2019-01-24 07:13:22', '2019-01-24 07:13:22'),
(1182, 'Minimum Stock', 'Minimum Stock', 'Minimum Stock', '2019-01-24 08:00:19', '2019-01-24 08:00:19'),
(1183, 'Search Cards', 'Search Cards', 'Search Cards', '2019-02-06 07:27:35', '2019-02-06 07:27:35'),
(1184, 'Mobily - 20 SAR', 'Mobily - 20 SAR', 'Mobily - 20 SAR', '2019-02-06 08:19:53', '2019-02-06 08:19:53'),
(1185, 'Mobily - 15 SAR', 'Mobily - 15 SAR', 'Mobily - 15 SAR', '2019-02-06 08:19:53', '2019-02-06 08:19:53'),
(1186, 'Updated At', 'Updated At', 'Updated At', '2019-02-06 09:25:38', '2019-02-06 09:25:38'),
(1187, 'Enter Record ID', 'Enter Record ID', 'Enter Record ID', '2019-02-06 09:38:44', '2019-02-06 09:38:44'),
(1188, 'Filter By Price Class', 'Filter By Price Class', 'Filter By Price Class', '2019-02-06 13:01:18', '2019-02-06 13:01:18'),
(1189, 'Print Times', 'Print Times', 'Print Times', '2019-02-07 11:11:43', '2019-02-07 11:11:43'),
(1190, 'Shopclasses', 'Shopclasses', 'Shopclasses', '2019-02-12 10:55:12', '2019-02-12 10:55:12'),
(1191, 'Add New ShopClass', 'Add New ShopClass', 'Add New ShopClass', '2019-02-12 10:55:12', '2019-02-12 10:55:12'),
(1192, 'Limits', 'Limits', 'Limits', '2019-02-12 10:55:12', '2019-02-12 10:55:12'),
(1193, 'Create New ShopClass', 'Create New ShopClass', 'Create New ShopClass', '2019-02-12 10:55:19', '2019-02-12 10:55:19'),
(1194, 'ShopClass added!', 'ShopClass added!', 'ShopClass added!', '2019-02-12 10:57:55', '2019-02-12 10:57:55'),
(1195, 'View ShopClass', 'View ShopClass', 'View ShopClass', '2019-02-12 10:57:56', '2019-02-12 10:57:56'),
(1196, 'Edit ShopClass', 'Edit ShopClass', 'Edit ShopClass', '2019-02-12 10:57:56', '2019-02-12 10:57:56'),
(1197, 'Shop Classes', 'Shop Classes', 'Shop Classes', '2019-02-12 11:04:06', '2019-02-12 11:04:06'),
(1198, 'Create New Shop Class', 'Create New Shop Class', 'Create New Shop Class', '2019-02-12 11:04:26', '2019-02-12 11:04:26'),
(1199, 'Edit Shop Class', 'Edit Shop Class', 'Edit Shop Class', '2019-02-12 11:04:29', '2019-02-12 11:04:29'),
(1200, 'ShopClass', 'ShopClass', 'ShopClass', '2019-02-12 11:04:33', '2019-02-12 11:04:33'),
(1201, 'Delete ShopClass', 'Delete ShopClass', 'Delete ShopClass', '2019-02-12 11:04:33', '2019-02-12 11:04:33'),
(1202, 'Shop Class', 'Shop Class', 'Shop Class', '2019-02-12 11:04:46', '2019-02-12 11:04:46'),
(1203, 'Shop Class added!', 'Shop Class added!', 'Shop Class added!', '2019-02-12 11:05:33', '2019-02-12 11:05:33'),
(1204, 'Shop Class updated!', 'Shop Class updated!', 'Shop Class updated!', '2019-02-12 11:05:52', '2019-02-12 11:05:52'),
(1205, 'Branch Name', 'Branch Name', 'Branch Name', '2019-02-12 11:53:33', '2019-02-12 11:53:33'),
(1206, 'Userslogins', 'Userslogins', 'Userslogins', '2019-02-12 12:11:43', '2019-02-12 12:11:43'),
(1207, 'Add New UsersLogin', 'Add New UsersLogin', 'Add New UsersLogin', '2019-02-12 12:11:43', '2019-02-12 12:11:43'),
(1208, 'Shops Manager', 'Shops Manager', 'Shops Manager', '2019-02-12 12:18:06', '2019-02-12 12:18:06'),
(1209, 'User Managment', 'User Managment', 'User Managment', '2019-02-12 12:18:07', '2019-02-12 12:18:07'),
(1210, 'Users Logins', 'Users Logins', 'Users Logins', '2019-02-12 12:18:07', '2019-02-12 12:18:07'),
(1211, 'Cards Manager', 'Cards Manager', 'Cards Manager', '2019-02-12 12:19:44', '2019-02-12 12:19:44'),
(1212, 'View UsersLogin', 'View UsersLogin', 'View UsersLogin', '2019-02-13 11:03:56', '2019-02-13 11:03:56'),
(1213, 'Login At', 'Login At', 'Login At', '2019-02-14 10:32:12', '2019-02-14 10:32:12'),
(1214, 'IP Address', 'IP Address', 'IP Address', '2019-02-14 10:32:13', '2019-02-14 10:32:13'),
(1215, 'Guest', 'Guest', 'Guest', '2019-02-14 10:37:42', '2019-02-14 10:37:42'),
(1216, 'UsersLogin', 'UsersLogin', 'UsersLogin', '2019-02-14 10:41:30', '2019-02-14 10:41:30'),
(1217, 'Edit UsersLogin', 'Edit UsersLogin', 'Edit UsersLogin', '2019-02-14 10:41:30', '2019-02-14 10:41:30'),
(1218, 'Delete UsersLogin', 'Delete UsersLogin', 'Delete UsersLogin', '2019-02-14 10:41:30', '2019-02-14 10:41:30'),
(1219, 'Employees Manager', 'Employees Manager', 'Employees Manager', '2019-02-18 12:32:45', '2019-02-18 12:32:45'),
(1220, 'Employees', 'Employees', 'Employees', '2019-02-18 12:32:45', '2019-02-18 12:32:45'),
(1221, 'Add New Employee', 'Add New Employee', 'Add New Employee', '2019-02-18 12:32:47', '2019-02-18 12:32:47'),
(1222, 'Employee Name', 'Employee Name', 'Employee Name', '2019-02-18 12:32:48', '2019-02-18 12:32:48'),
(1223, 'Employee Level Id', 'Employee Level Id', 'Employee Level Id', '2019-02-18 12:32:48', '2019-02-18 12:32:48'),
(1224, 'Create New Employee', 'Create New Employee', 'Create New Employee', '2019-02-18 12:33:52', '2019-02-18 12:33:52'),
(1225, 'Employee Levels', 'Employee Levels', 'Employee Levels', '2019-02-18 12:42:37', '2019-02-18 12:42:37'),
(1226, 'Employeelevels', 'Employeelevels', 'Employeelevels', '2019-02-18 12:43:10', '2019-02-18 12:43:10'),
(1227, 'Add New EmployeeLevel', 'Add New EmployeeLevel', 'Add New EmployeeLevel', '2019-02-18 12:43:11', '2019-02-18 12:43:11'),
(1228, 'View EmployeeLevel', 'View EmployeeLevel', 'View EmployeeLevel', '2019-02-18 12:43:11', '2019-02-18 12:43:11'),
(1229, 'Edit EmployeeLevel', 'Edit EmployeeLevel', 'Edit EmployeeLevel', '2019-02-18 12:43:11', '2019-02-18 12:43:11'),
(1230, 'Employee Log', 'Employee Log', 'Employee Log', '2019-02-19 10:56:42', '2019-02-19 10:56:42'),
(1231, 'Edit Employee', 'Edit Employee', 'Edit Employee', '2019-02-20 12:05:07', '2019-02-20 12:05:07'),
(1232, 'Transfer Amount', 'Transfer Amount', 'Transfer Amount', '2019-02-20 12:11:02', '2019-02-20 12:11:02'),
(1233, 'To User', 'To User', 'To User', '2019-02-21 06:42:05', '2019-02-21 06:42:05'),
(1234, 'Transfer', 'Transfer', 'Transfer', '2019-02-21 06:42:06', '2019-02-21 06:42:06'),
(1235, 'To Employee', 'To Employee', 'To Employee', '2019-02-21 06:58:51', '2019-02-21 06:58:51'),
(1236, 'Create New Backend User', 'Create New Backend User', 'Create New Backend User', '2019-02-21 07:06:18', '2019-02-21 07:06:18'),
(1237, 'Create Shop Users', 'Create Shop Users', 'Create Shop Users', '2019-02-21 07:11:29', '2019-02-21 07:11:29'),
(1238, 'Create New Shop User', 'Create New Shop User', 'Create New Shop User', '2019-02-21 07:11:57', '2019-02-21 07:11:57'),
(1239, 'Create New Role', 'Create New Role', 'Create New Role', '2019-02-21 08:33:24', '2019-02-21 08:33:24'),
(1240, 'Role added!', 'Role added!', 'Role added!', '2019-02-21 08:35:12', '2019-02-21 08:35:12'),
(1241, 'User Added But Still Employee Data!', 'User Added But Still Employee Data!', 'User Added But Still Employee Data!', '2019-02-21 08:44:53', '2019-02-21 08:44:53'),
(1242, 'Employee added!', 'Employee added!', 'Employee added!', '2019-02-21 08:44:53', '2019-02-21 08:44:53'),
(1243, 'View Employee', 'View Employee', 'View Employee', '2019-02-21 08:44:53', '2019-02-21 08:44:53'),
(1244, 'Employee', 'Employee', 'Employee', '2019-02-21 09:11:26', '2019-02-21 09:11:26'),
(1245, 'Delete Employee', 'Delete Employee', 'Delete Employee', '2019-02-21 09:15:20', '2019-02-21 09:15:20'),
(1246, 'View Employee Details', 'View Employee Details', 'View Employee Details', '2019-02-21 09:15:59', '2019-02-21 09:15:59'),
(1247, 'Employee Level', 'Employee Level', 'Employee Level', '2019-02-24 07:35:11', '2019-02-24 07:35:11'),
(1248, 'Can Transfer To', 'Can Transfer To', 'Can Transfer To', '2019-02-26 09:09:02', '2019-02-26 09:09:02'),
(1249, 'EmployeeLevel updated!', 'EmployeeLevel updated!', 'EmployeeLevel updated!', '2019-02-26 09:15:04', '2019-02-26 09:15:04'),
(1250, 'EmployeeLevel', 'EmployeeLevel', 'EmployeeLevel', '2019-02-26 09:47:49', '2019-02-26 09:47:49'),
(1251, 'Delete EmployeeLevel', 'Delete EmployeeLevel', 'Delete EmployeeLevel', '2019-02-26 09:47:49', '2019-02-26 09:47:49'),
(1252, 'Employee Level updated!', 'Employee Level updated!', 'Employee Level updated!', '2019-02-26 09:54:26', '2019-02-26 09:54:26'),
(1253, 'Create New EmployeeLevel', 'Create New EmployeeLevel', 'Create New EmployeeLevel', '2019-02-26 09:57:27', '2019-02-26 09:57:27'),
(1254, 'Employee Level added!', 'Employee Level added!', 'Employee Level added!', '2019-02-26 09:58:07', '2019-02-26 09:58:07'),
(1255, 'Job Types', 'Job Types', 'Job Types', '2019-02-26 10:12:45', '2019-02-26 10:12:45'),
(1256, 'Jobtypes', 'Jobtypes', 'Jobtypes', '2019-02-26 10:13:34', '2019-02-26 10:13:34'),
(1257, 'Add New JobType', 'Add New JobType', 'Add New JobType', '2019-02-26 10:13:35', '2019-02-26 10:13:35'),
(1258, 'Create New JobType', 'Create New JobType', 'Create New JobType', '2019-02-26 10:14:07', '2019-02-26 10:14:07'),
(1259, 'Create New Job Type', 'Create New Job Type', 'Create New Job Type', '2019-02-26 10:14:53', '2019-02-26 10:14:53'),
(1260, 'JobType added!', 'JobType added!', 'JobType added!', '2019-02-26 10:17:21', '2019-02-26 10:17:21'),
(1261, 'View JobType', 'View JobType', 'View JobType', '2019-02-26 10:17:21', '2019-02-26 10:17:21'),
(1262, 'Edit JobType', 'Edit JobType', 'Edit JobType', '2019-02-26 10:17:21', '2019-02-26 10:17:21'),
(1263, 'JobType', 'JobType', 'JobType', '2019-02-26 10:17:48', '2019-02-26 10:17:48'),
(1264, 'Delete JobType', 'Delete JobType', 'Delete JobType', '2019-02-26 10:17:48', '2019-02-26 10:17:48'),
(1265, 'Edit Job Type', 'Edit Job Type', 'Edit Job Type', '2019-02-26 10:23:32', '2019-02-26 10:23:32'),
(1266, 'JobType updated!', 'JobType updated!', 'JobType updated!', '2019-02-26 10:24:12', '2019-02-26 10:24:12'),
(1267, 'Job Type updated!', 'Job Type updated!', 'Job Type updated!', '2019-02-26 10:34:01', '2019-02-26 10:34:01'),
(1268, 'Job Type added!', 'Job Type added!', 'Job Type added!', '2019-02-26 10:34:51', '2019-02-26 10:34:51'),
(1269, 'Employee Jobs', 'Employee Jobs', 'Employee Jobs', '2019-02-26 11:10:24', '2019-02-26 11:10:24'),
(1270, 'Add New EmployeeJob', 'Add New EmployeeJob', 'Add New EmployeeJob', '2019-02-26 11:10:26', '2019-02-26 11:10:26'),
(1271, 'Job Type', 'Job Type', 'Job Type', '2019-02-26 11:10:26', '2019-02-26 11:10:26'),
(1272, 'Create New Employee Job', 'Create New Employee Job', 'Create New Employee Job', '2019-02-26 11:10:28', '2019-02-26 11:10:28'),
(1273, 'Employee Id', 'Employee Id', 'Employee Id', '2019-02-26 11:10:28', '2019-02-26 11:10:28'),
(1274, 'Notes', 'Notes', 'Notes', '2019-02-26 11:10:28', '2019-02-26 11:10:28'),
(1275, 'Not Specified Yet', 'Not Specified Yet', 'Not Specified Yet', '2019-02-26 12:11:50', '2019-02-26 12:11:50'),
(1276, 'Not Specified', 'Not Specified', 'Not Specified', '2019-02-26 12:12:44', '2019-02-26 12:12:44'),
(1277, 'Employee Job added!', 'Employee Job added!', 'Employee Job added!', '2019-02-26 12:14:22', '2019-02-26 12:14:22'),
(1278, 'View EmployeeJob', 'View EmployeeJob', 'View EmployeeJob', '2019-02-26 12:16:03', '2019-02-26 12:16:03'),
(1279, 'Edit EmployeeJob', 'Edit EmployeeJob', 'Edit EmployeeJob', '2019-02-26 12:16:04', '2019-02-26 12:16:04'),
(1280, 'Edit Employee Job', 'Edit Employee Job', 'Edit Employee Job', '2019-02-26 12:21:04', '2019-02-26 12:21:04'),
(1281, 'Employee Job updated!', 'Employee Job updated!', 'Employee Job updated!', '2019-02-26 12:21:47', '2019-02-26 12:21:47'),
(1282, 'Employee Job', 'Employee Job', 'Employee Job', '2019-02-28 06:39:10', '2019-02-28 06:39:10'),
(1283, 'Cient', 'Cient', 'Cient', '2019-02-28 07:22:10', '2019-02-28 07:22:10'),
(1284, 'All Clients', 'All Clients', 'All Clients', '2019-02-28 07:26:48', '2019-02-28 07:26:48'),
(1285, 'All Employees', 'All Employees', 'All Employees', '2019-02-28 07:26:48', '2019-02-28 07:26:48'),
(1286, 'Employee updated!', 'Employee updated!', 'Employee updated!', '2019-02-28 08:59:56', '2019-02-28 08:59:56'),
(1287, 'View Jobs', 'View Jobs', 'View Jobs', '2019-02-28 09:37:00', '2019-02-28 09:37:00'),
(1288, 'View Employee Jobs', 'View Employee Jobs', 'View Employee Jobs', '2019-02-28 09:55:13', '2019-02-28 09:55:13'),
(1289, 'View Employee Log', 'View Employee Log', 'View Employee Log', '2019-02-28 09:55:14', '2019-02-28 09:55:14'),
(1290, 'Shop Added But Still User Data!', 'Shop Added But Still User Data!', 'Shop Added But Still User Data!', '2019-03-03 08:27:03', '2019-03-03 08:27:03'),
(1291, 'Mark As Default User', 'Mark As Default User', 'Mark As Default User', '2019-03-04 08:48:41', '2019-03-04 08:48:41'),
(1292, 'Main User', 'Main User', 'Main User', '2019-03-04 09:10:35', '2019-03-04 09:10:35'),
(1293, 'Main User For', 'Main User For', 'Main User For', '2019-03-04 09:12:31', '2019-03-04 09:12:31'),
(1294, 'Employees Login', 'Employees Login', 'Employees Login', '2019-03-04 10:44:24', '2019-03-04 10:44:24'),
(1295, 'Administration', 'Administration', 'Administration', '2019-03-05 12:18:09', '2019-03-05 12:18:09'),
(1296, 'Delete Employee Level', 'Delete Employee Level', 'Delete Employee Level', '2019-03-06 09:34:00', '2019-03-06 09:34:00'),
(1297, 'Delete Employee Job', 'Delete Employee Job', 'Delete Employee Job', '2019-03-06 09:57:17', '2019-03-06 09:57:17'),
(1298, 'View Shop Class', 'View Shop Class', 'View Shop Class', '2019-03-06 11:38:30', '2019-03-06 11:38:30'),
(1299, 'Delete Shop Class', 'Delete Shop Class', 'Delete Shop Class', '2019-03-06 11:38:30', '2019-03-06 11:38:30'),
(1300, 'Accept Job', 'Accept Job', 'Accept Job', '2019-03-24 12:11:24', '2019-03-24 12:11:24'),
(1301, 'Reject Job', 'Reject Job', 'Reject Job', '2019-03-24 12:12:24', '2019-03-24 12:12:24'),
(1302, 'Transfer Balance', 'Transfer Balance', 'Transfer Balance', '2019-03-25 08:51:05', '2019-03-25 08:51:05'),
(1303, 'You don\'t have enought balance to transfer.', 'You don\'t have enought balance to transfer.', 'You don\'t have enought balance to transfer.', '2019-03-25 10:38:20', '2019-03-25 10:38:20'),
(1304, 'Shop Not Active', 'Shop Not Active', 'Shop Not Active', '2019-03-25 11:09:38', '2019-03-25 11:09:38'),
(1305, 'Pending Employee Jobs', 'Pending Employee Jobs', 'Pending Employee Jobs', '2019-03-25 11:29:15', '2019-03-25 11:29:15'),
(1306, 'Rejected Employee Jobs', 'Rejected Employee Jobs', 'Rejected Employee Jobs', '2019-03-25 11:30:11', '2019-03-25 11:30:11'),
(1307, 'All Employee Jobs', 'All Employee Jobs', 'All Employee Jobs', '2019-03-25 11:30:11', '2019-03-25 11:30:11'),
(1308, 'Security Code', 'Security Code', 'Security Code', '2019-03-25 11:53:12', '2019-03-25 11:53:12'),
(1309, 'Security Code Not Correct.', 'Security Code Not Correct.', 'Security Code Not Correct.', '2019-03-25 12:05:16', '2019-03-25 12:05:16'),
(1310, 'Security Code For Transfer Balance Is: ', 'Security Code For Transfer Balance Is: ', 'Security Code For Transfer Balance Is: ', '2019-03-25 12:26:06', '2019-03-25 12:26:06'),
(1311, 'Security Code Sent.', 'Security Code Sent.', 'Security Code Sent.', '2019-03-25 12:26:07', '2019-03-25 12:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(52, '2019_05_08_141019_create_am_banks_table', 1),
(53, '2019_05_08_141019_create_am_banks_translations_table', 1),
(54, '2019_05_08_141019_create_am_cards_table', 1),
(55, '2019_05_08_141019_create_am_categories_table', 1),
(56, '2019_05_08_141019_create_am_categories_translations_table', 1),
(57, '2019_05_08_141019_create_am_categories_type_table', 1),
(58, '2019_05_08_141019_create_am_categories_type_translations_table', 1),
(59, '2019_05_08_141019_create_am_cities_table', 1),
(60, '2019_05_08_141019_create_am_contacts_table', 1),
(61, '2019_05_08_141019_create_am_countries_table', 1),
(62, '2019_05_08_141019_create_am_currencies_table', 1),
(63, '2019_05_08_141019_create_am_device_tokens_table', 1),
(64, '2019_05_08_141019_create_am_districts_table', 1),
(65, '2019_05_08_141019_create_am_employee_jobs_table', 1),
(66, '2019_05_08_141019_create_am_employee_levels_table', 1),
(67, '2019_05_08_141019_create_am_employee_log_table', 1),
(68, '2019_05_08_141019_create_am_employee_transfers_table', 1),
(69, '2019_05_08_141019_create_am_employees_table', 1),
(70, '2019_05_08_141019_create_am_favorites_table', 1),
(71, '2019_05_08_141019_create_am_groups_table', 1),
(72, '2019_05_08_141019_create_am_job_types_table', 1),
(73, '2019_05_08_141019_create_am_log_table', 1),
(74, '2019_05_08_141019_create_am_notification_tokens_table', 1),
(75, '2019_05_08_141019_create_am_notifications_table', 1),
(76, '2019_05_08_141019_create_am_notifications_translations_table', 1),
(77, '2019_05_08_141019_create_am_offers_table', 1),
(78, '2019_05_08_141019_create_am_offers_translations_table', 1),
(79, '2019_05_08_141019_create_am_payment_methods_table', 1),
(80, '2019_05_08_141019_create_am_payment_methods_translations_table', 1),
(81, '2019_05_08_141019_create_am_price_classes_table', 1),
(82, '2019_05_08_141019_create_am_receipts_table', 1),
(83, '2019_05_08_141019_create_am_shop_classes_table', 1),
(84, '2019_05_08_141019_create_am_shopping_cart_table', 1),
(85, '2019_05_08_141019_create_am_shopping_history_items_table', 1),
(86, '2019_05_08_141019_create_am_shopping_history_table', 1),
(87, '2019_05_08_141019_create_am_shops_table', 1),
(88, '2019_05_08_141019_create_am_static_pages_table', 1),
(89, '2019_05_08_141019_create_am_static_pages_translations_table', 1),
(90, '2019_05_08_141019_create_am_transactions_table', 1),
(91, '2019_05_08_141019_create_am_users_logins_table', 1),
(92, '2019_05_08_141019_create_am_users_table', 1),
(93, '2019_05_08_141019_create_am_year_opening_table', 1),
(94, '2019_05_08_141019_create_device_tokens_table', 1),
(95, '2019_05_08_141019_create_languages_table', 1),
(96, '2019_05_08_141019_create_password_resets_table', 1),
(97, '2019_05_08_141019_create_permission_role_table', 1),
(98, '2019_05_08_141019_create_permissions_table', 1),
(99, '2019_05_08_141019_create_role_user_table', 1),
(100, '2019_05_08_141019_create_roles_table', 1),
(101, '2019_05_08_141019_create_roles_translations_table', 1),
(102, '2019_05_08_141019_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'Display Role Listing', 'See only Listing Of Role', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(2, 'role-create', 'Create Role', 'Create New Role', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(3, 'role-edit', 'Edit Role', 'Edit Role', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(4, 'role-delete', 'Delete Role', 'Delete Role', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(5, 'countries-list', 'Display Countries Listing', 'See only Listing Of Countries', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(6, 'countries-create', 'Create Country', 'Create New Country', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(7, 'countries-edit', 'Edit Country', 'Edit Country', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(8, 'countries-delete', 'Delete Country', 'Delete Country', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(9, 'cities-list', 'Display Cities Listing', 'See only Listing Of Cities', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(10, 'cities-create', 'Create City', 'Create New City', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(11, 'cities-edit', 'Edit City', 'Edit City', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(12, 'cities-delete', 'Delete City', 'Delete City', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(13, 'districts-list', 'Display Districts Listing', 'See only Listing Of Districts', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(14, 'districts-create', 'Create District', 'Create New District', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(15, 'districts-edit', 'Edit District', 'Edit District', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(16, 'districts-delete', 'Delete District', 'Delete District', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(17, 'groups-list', 'Display Groups Listing', 'See only Listing Of Groups', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(18, 'groups-create', 'Create Group', 'Create New Group', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(19, 'groups-edit', 'Edit Group', 'Edit Group', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(20, 'groups-delete', 'Delete Group', 'Delete Group', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(21, 'users-list', 'Display Users Listing', 'See only Listing Of Users', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(22, 'users-create', 'Create User', 'Create New User', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(23, 'users-edit', 'Edit User', 'Edit User', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(24, 'users-delete', 'Delete User', 'Delete User', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(25, 'categories_type-list', 'Display Categories Type Listing', 'See only Listing Of Categories Type', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(26, 'categories_type-create', 'Create Category Type', 'Create New Category Type', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(27, 'categories_type-edit', 'Edit Category Type', 'Edit Category Type', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(28, 'categories_type-delete', 'Delete Category Type', 'Delete Category Type', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(29, 'categories-list', 'Display Categories Listing', 'See only Listing Of Categories', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(30, 'categories-create', 'Create Category', 'Create New Category', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(31, 'categories-edit', 'Edit Category', 'Edit Category', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(32, 'categories-delete', 'Delete Category', 'Delete Category', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(33, 'cards-list', 'Display Cards Listing', 'See only Listing Of Cards', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(34, 'cards-create', 'Create Card', 'Create New Card', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(35, 'cards-edit', 'Edit Card', 'Edit Card', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(36, 'cards-delete', 'Delete Card', 'Delete Card', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(37, 'tv_packages-list', 'Display TV Packages Listing', 'See only Listing Of TV Packages', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(38, 'tv_packages-create', 'Create TV Package', 'Create New TV Package', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(39, 'tv_packages-edit', 'Edit TV Package', 'Edit TV Package', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(40, 'tv_packages-delete', 'Delete TV Package', 'Delete TV Package', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(41, 'tv_devices-list', 'Display TV Devices Listing', 'See only Listing Of TV Devices', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(42, 'tv_devices-create', 'Create TV Device', 'Create New TV Device', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(43, 'tv_devices-edit', 'Edit TV Device', 'Edit TV Device', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(44, 'tv_devices-delete', 'Delete TV Device', 'Delete TV Device', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(45, 'maintenance-list', 'Display Role Listing', 'See only Listing Of Maintenance', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(46, 'maintenance-create', 'Create Maintenance', 'Create New Maintenance', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(47, 'maintenance-edit', 'Edit Maintenance', 'Edit Maintenance', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(48, 'maintenance-delete', 'Delete Maintenance', 'Delete Maintenance', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(49, 'shopping_cart-list', 'Display Shopping Cart Listing', 'See only Listing Of Shopping Cart', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(50, 'shopping_cart-create', 'Create Shopping Cart', 'Create New Shopping Cart', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(51, 'shopping_cart-edit', 'Edit Shopping Cart', 'Edit Shopping Cart', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(52, 'shopping_cart-delete', 'Delete Shopping Cart', 'Delete Shopping Cart', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(53, 'shopping_history-list', 'Display Shopping History Listing', 'See only Listing Of Shopping History', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(54, 'shopping_history-create', 'Create Shopping History', 'Create New Shopping History', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(55, 'shopping_history-edit', 'Edit Shopping History', 'Edit Shopping History', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(56, 'shopping_history-delete', 'Delete Shopping History', 'Delete Shopping History', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(57, 'favorites-list', 'Display Favorites Listing', 'See only Listing Of Favorites', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(58, 'favorites-create', 'Create Favorite', 'Create New Favorite', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(59, 'favorites-edit', 'Edit Favorite', 'Edit Favorite', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(60, 'favorites-delete', 'Delete Favorite', 'Delete Favorite', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(61, 'payment_method-list', 'Display Payment Methods Listing', 'See only Listing Of Payment Methods', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(62, 'payment_method-create', 'Create Payment Method', 'Create New Payment Method', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(63, 'payment_method-edit', 'Edit Payment Method', 'Edit Payment Method', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(64, 'payment_method-delete', 'Delete Payment Method', 'Delete Payment Method', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(65, 'payment_info-list', 'Display Payment Infos Listing', 'See only Listing Of Payment Infos', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(66, 'payment_info-create', 'Create Payment Info', 'Create New Payment Info', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(67, 'payment_info-edit', 'Edit Payment Info', 'Edit Payment Info', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(68, 'payment_info-delete', 'Delete Payment Info', 'Delete Payment Info', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(69, 'static_pages-list', 'Display Static Pages Listing', 'See only Listing Of Static Pages', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(70, 'static_pages-create', 'Create Static Page', 'Create New Static Page', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(71, 'static_pages-edit', 'Edit Static Page', 'Edit Static Page', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(72, 'static_pages-delete', 'Delete Static Page', 'Delete Static Page', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(73, 'orders-list', 'Display Orders Listing', 'See only Listing Of Orders', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(74, 'orders-create', 'Create Order', 'Create New Order', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(75, 'orders-edit', 'Edit Order', 'Edit Order', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(76, 'orders-delete', 'Delete Order', 'Delete Order', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(77, 'services-list', 'Display Services Listing', 'See only Listing Of Services', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(78, 'services-create', 'Create Service', 'Create New Service', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(79, 'services-edit', 'Edit Service', 'Edit Service', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(80, 'services-delete', 'Delete Service', 'Delete Service', '2017-08-03 04:32:01', '2017-08-03 04:32:01'),
(81, 'shipping_address-list', 'Display Shipping Address Listing', 'See only Listing Of Shipping Address', '2017-09-28 12:29:47', '2017-09-28 12:29:47'),
(82, 'shipping_address-create', 'Create Shipping Address', 'Create New Shipping Address', '2017-09-28 12:29:47', '2017-09-28 12:29:47'),
(83, 'shipping_address-edit', 'Edit Shipping Address', 'Edit Shipping Address', '2017-09-28 12:29:47', '2017-09-28 12:29:47'),
(84, 'shipping_address-delete', 'Delete Shipping Address', 'Delete Shipping Address', '2017-09-28 12:29:47', '2017-09-28 12:29:47'),
(85, 'languages-list', 'Display Languages Listing', 'See only Listing Of Languages', '2017-09-28 12:29:47', '2017-09-28 12:29:47'),
(86, 'languages-create', 'Create Languages', 'Create New Languages', '2017-09-28 12:29:47', '2017-09-28 12:29:47'),
(87, 'languages-edit', 'Edit Languages', 'Edit Languages', '2017-09-28 12:29:47', '2017-09-28 12:29:47'),
(88, 'languages-delete', 'Delete Languages', 'Delete Languages', '2017-09-28 12:29:47', '2017-09-28 12:29:47'),
(89, 'contacts-list', 'Display Contacts Listing', 'See only Listing Of Contacts', '2017-10-11 11:41:40', '2017-10-11 11:41:40'),
(90, 'offers-list', 'Display Offers Listing', 'See only Listing Of Offers', '2017-10-18 13:47:02', '2017-10-18 13:47:02'),
(91, 'offers-create', 'Create Offer', 'Create New Offer', '2017-10-18 13:47:02', '2017-10-18 13:47:02'),
(92, 'offers-edit', 'Edit Offer', 'Edit Offer', '2017-10-18 13:47:02', '2017-10-18 13:47:02'),
(93, 'offers-delete', 'Delete Offer', 'Delete Offer', '2017-10-18 13:47:02', '2017-10-18 13:47:02'),
(94, 'notifications-list', 'Display Notifications Listing', 'See only Listing Of Notifications', '2017-10-25 09:14:54', '2017-10-25 09:14:54'),
(95, 'notifications-create', 'Create Notification', 'Create New Notification', '2017-10-25 09:14:54', '2017-10-25 09:14:54'),
(96, 'notifications-edit', 'Edit Notification', 'Edit Notification', '2017-10-25 09:14:54', '2017-10-25 09:14:54'),
(97, 'notifications-delete', 'Delete Notification', 'Delete Notification', '2017-10-25 09:14:54', '2017-10-25 09:14:54'),
(98, 'price_class-list', 'Display Price Classes Listing', 'See only Listing Of Price Classes', '2017-11-12 10:34:08', '2017-11-12 10:34:08'),
(99, 'price_class-create', 'Create Price Class', 'Create New Price Class', '2017-11-12 10:34:08', '2017-11-12 10:34:08'),
(100, 'price_class-edit', 'Edit Price Class', 'Edit Price Class', '2017-11-12 10:34:08', '2017-11-12 10:34:08'),
(101, 'price_class-delete', 'Delete Price Class', 'Delete Price Class', '2017-11-12 10:34:08', '2017-11-12 10:34:08'),
(102, 'transaction-list', 'Display Transactions Listing', 'See only Listing Of Transactions', '2017-11-14 16:31:22', '2017-11-14 16:31:22'),
(103, 'transaction-create', 'Create Price Class', 'Create New Price Class', '2017-11-14 16:31:22', '2017-11-14 16:31:22'),
(104, 'transaction-edit', 'Edit Price Class', 'Edit Price Class', '2017-11-14 16:31:22', '2017-11-14 16:31:22'),
(105, 'transaction-delete', 'Delete Price Class', 'Delete Price Class', '2017-11-14 16:31:22', '2017-11-14 16:31:22'),
(106, 'sales_report-list', 'Display Sales Report Listing', 'See only Listing Of Sales Report', '2017-11-22 11:35:48', '2017-11-22 11:35:48'),
(107, 'stock_report-list', 'Display Stock Report Listing', 'See only Listing Of Stock Report', '2017-11-30 16:17:15', '2017-11-30 16:17:15'),
(108, 'bank-list', 'Display Banks Listing', 'See only Listing Of Banks', '2018-01-31 12:57:10', '2018-01-31 12:57:10'),
(109, 'bank-create', 'Create Bank', 'Create New Bank', '2018-01-31 12:57:10', '2018-01-31 12:57:10'),
(110, 'bank-edit', 'Edit Bank', 'Edit Bank', '2018-01-31 12:57:10', '2018-01-31 12:57:10'),
(111, 'bank-delete', 'Delete Bank', 'Delete Bank', '2018-01-31 12:57:10', '2018-06-28 08:33:27'),
(113, 'shops-list', 'Display Shops Listing', 'Display Shops Listing', '2018-08-01 10:33:56', '2018-08-01 10:33:56'),
(114, 'shops-create', 'Create Shop', 'Create Shop', '2018-08-01 10:33:56', '2018-08-01 10:33:56'),
(115, 'shops-edit', 'Edit Shop', 'Edit Shop', '2018-08-01 10:33:56', '2018-08-01 10:33:56'),
(116, 'shops-delete', 'Delete Shop', 'Delete Shop', '2018-08-01 10:33:56', '2018-08-01 10:33:56'),
(117, 'receipts-list', 'Display Receipts Listing', 'Display Receipts Listing', '2018-08-01 10:33:56', '2018-08-01 10:33:56'),
(118, 'receipts-create', 'Create Receipt', 'Create Receipt', '2018-08-01 10:33:56', '2018-08-01 10:33:56'),
(119, 'receipts-edit', 'Edit Receipt', 'Edit Receipt', '2018-08-01 10:33:56', '2018-08-01 10:33:56'),
(120, 'receipts-delete', 'Delete Receipt', 'Delete Receipt', '2018-08-01 10:33:56', '2018-08-01 10:33:56'),
(121, 'log-list', 'Display Log Listing', 'Display Log Listing', '2018-08-01 10:33:56', '2018-08-01 10:33:56'),
(122, 'generator', 'Generator', 'Generator', '2018-08-01 10:33:56', '2018-08-01 10:33:56'),
(123, 'employees-list', 'Display Employees Listing', 'Display Employees Listing', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(124, 'employees-create', 'Create Employee', 'Create Employee', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(125, 'employees-edit', 'Edit Employee', 'Edit Employee', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(126, 'employees-delete', 'Delete Employee', 'Delete Employee', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(127, 'employee-log-list', 'Display Employee Logs Listing', 'Display Employee Logs Listing', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(128, 'employee-log-create', 'Create Employee Log', 'Create Employee Log', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(129, 'employee-log-edit', 'Edit Employee Log', 'Edit Employee Log', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(130, 'employee-log-delete', 'Delete Employee Log', 'Delete Employee Log', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(131, 'employee-levels-list', 'Display Employee Levels Listing', 'Display Employee Levels Listing', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(132, 'employee-levels-create', 'Create Employee Level', 'Create Employee Level', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(133, 'employee-levels-edit', 'Edit Employee Level', 'Edit Employee Level', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(134, 'employee-levels-delete', 'Delete Employee Level', 'Delete Employee Level', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(135, 'shop-users-list', 'Display Shop Users Listing', 'Display Shop Users Listing', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(136, 'shop-users-create', 'Create Shop User', 'Create Shop User', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(137, 'shop-users-edit', 'Edit Shop User', 'Edit Shop User', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(138, 'shop-users-delete', 'Delete Shop User', 'Delete Shop User', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(139, 'search-cards-list', 'Display Search Cards', 'Display Search Cards', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(140, 'import-cards-create', 'Create Import Cards', 'Create Import Cards', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(141, 'user-logins-list', 'Display User Logins', 'Display User Logins', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(142, 'deleted-cards-list', 'Display Deleted Cards', 'Display Deleted Cards', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(143, 'deleted-users-list', 'Display Deleted Users', 'Display Deleted Users', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(144, 'deleted-shops-list', 'Display Deleted Shops', 'Display Deleted Shops', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(145, 'deleted-employees-list', 'Display Deleted Employees', 'Display Deleted Employees', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(146, 'permissions-list', 'Display Permissions Listing', 'Display Permissions Listing', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(147, 'permissions-create', 'Create Permission', 'Create Permission', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(148, 'permissions-edit', 'Edit Permission', 'Edit Permission', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(149, 'permissions-delete', 'Delete Permission', 'Delete Permission', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(150, 'job-types-list', 'Display Job Types Listing', 'Display Job Types Listing', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(151, 'job-types-create', 'Create Job Type', 'Create Job Type', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(152, 'job-types-edit', 'Edit Job Type', 'Edit Job Type', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(153, 'job-types-delete', 'Delete Job Type', 'Delete Job Type', '2019-03-05 12:57:40', '2019-03-05 12:57:40'),
(154, 'employee-jobs-list', 'Display Employee Jobs Listing', 'Display Employee Jobs Listing', '2019-03-06 09:56:27', '2019-03-06 09:56:27'),
(155, 'employee-jobs-create', 'Create Employee Job', 'Create Employee Job', '2019-03-06 09:56:27', '2019-03-06 09:56:27'),
(156, 'employee-jobs-edit', 'Edit Employee Job', 'Edit Employee Job', '2019-03-06 09:56:27', '2019-03-06 09:56:27'),
(157, 'employee-jobs-delete', 'Delete Employee Job', 'Delete Employee Job', '2019-03-06 09:56:27', '2019-03-06 09:56:27'),
(158, 'shop-classes-list', 'Display Shop Classes Listing', 'Display Shop Classes Listing', '2019-03-06 10:59:34', '2019-03-06 10:59:34'),
(159, 'shop-classes-create', 'Create Shop Class', 'Create Shop Class', '2019-03-06 10:59:34', '2019-03-06 10:59:34'),
(160, 'shop-classes-edit', 'Edit Shop Class', 'Edit Shop Class', '2019-03-06 10:59:34', '2019-03-06 10:59:34'),
(161, 'shop-classes-delete', 'Delete Shop Class', 'Delete Shop Class', '2019-03-06 10:59:34', '2019-03-06 10:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `created_at`, `updated_at`) VALUES
(1, '2017-08-03 04:32:20', '2017-08-03 04:32:20'),
(3, '2017-10-15 16:49:14', '2017-10-15 16:49:14'),
(4, '2017-10-15 16:53:41', '2017-10-15 16:53:41'),
(5, '2018-03-18 09:23:15', '2018-03-18 09:23:15'),
(6, '2019-02-21 08:35:11', '2019-02-21 08:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles_translations`
--

CREATE TABLE `roles_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_translations`
--

INSERT INTO `roles_translations` (`id`, `role_id`, `locale`, `name`, `display_name`, `description`) VALUES
(1, 1, 'ar', 'المدير', 'المدير العام', 'المدير له كل الصلاحيات'),
(2, 1, 'en', 'Admin', 'Super Administrator', 'User has access to all system functionality'),
(3, 1, 'fr', 'Admin fr', 'Super Administrator fr', 'User has access to all system functionality frfrfrfrfrfr'),
(4, 7, 'ar', 'زائر', 'مرحبا بالزائر', 'ليس له صلاحيات'),
(5, 7, 'en', 'visitor', 'welcome visitor', 'No permissions'),
(6, 7, 'fr', 'visitor fr', 'welcome visitor fr', 'No permissions fr'),
(7, 3, 'ar', 'مترجم', 'مترجم', 'مسئول عن ترجمه المحتوي'),
(8, 3, 'en', 'translator', 'Employees- translator', 'translator'),
(9, 4, 'ar', 'إداره محتوي الصفحات الثابته', 'إداره محتوي الصفحات الثابته', 'إداره محتوي الصفحات الثابته'),
(10, 4, 'en', 'Manage Static Pages', 'Manage Static Pages', 'Manage Static Pages'),
(11, 5, 'ar', 'الإدارة المالية', 'الإدارة المالية', 'المختصين بإدارة الكروت والتقارير المالية'),
(12, 5, 'en', 'financial management', 'financial management', 'المختصين بإدارة الكروت والتقارير المالية'),
(13, 6, 'ar', 'الموظفين', 'الموظفين', 'صلاحيات الموظفين'),
(14, 6, 'en', 'Employees', 'Employees- Administrators', 'Employees Permissions');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(162, 1),
(161, 3),
(161, 4),
(2, 5),
(154, 5),
(162, 5),
(191, 5),
(172, 6),
(174, 6),
(175, 6),
(176, 6),
(177, 6),
(178, 6);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'Ezhal', '2018-09-03 21:00:00', NULL),
(2, 'app_logo', 'https://ezhal.com/assets/images/ezhal-logo.png', '2018-09-03 21:00:00', NULL),
(3, 'minimum_cards_1', '10', '2018-09-03 21:00:00', NULL),
(4, 'minimum_cards_2', '20', '2018-09-03 21:00:00', NULL),
(5, 'minimum_cards_3', '30', '2018-09-03 21:00:00', NULL),
(6, 'minimum_cards_4', '40', '2018-09-03 21:00:00', NULL),
(7, 'minimum_cards_5', '50', '2018-09-03 21:00:00', NULL),
(8, 'minimum_cards_6', '60', '2018-09-03 21:00:00', NULL),
(9, 'minimum_cards_7', '70', '2018-09-03 21:00:00', NULL),
(10, 'latest_android_version', '1.03', '2018-09-03 21:00:00', NULL),
(11, 'latest_ios_version', '1.06', '2018-09-03 21:00:00', NULL),
(12, 'enforce_update', '0', '2018-09-03 21:00:00', NULL),
(13, 'call_center', '166666', '2018-09-03 21:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `am_banks`
--
ALTER TABLE `am_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_banks_translations`
--
ALTER TABLE `am_banks_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `am_payment_methods_translations_payment_method_id_locale_unique` (`bank_id`,`locale`),
  ADD KEY `am_payment_methods_translations_locale_index` (`locale`);

--
-- Indexes for table `am_cards`
--
ALTER TABLE `am_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cid` (`cid`,`serial`,`pin`);

--
-- Indexes for table `am_categories`
--
ALTER TABLE `am_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_categories_translations`
--
ALTER TABLE `am_categories_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `am_categories_translations_category_id_locale_unique` (`categories_id`,`locale`),
  ADD KEY `am_categories_translations_locale_index` (`locale`);

--
-- Indexes for table `am_categories_type`
--
ALTER TABLE `am_categories_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_categories_type_translations`
--
ALTER TABLE `am_categories_type_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `am_categories_type_translations_category_type_id_locale_unique` (`categories_type_id`,`locale`),
  ADD KEY `am_categories_type_translations_locale_index` (`locale`);

--
-- Indexes for table `am_cities`
--
ALTER TABLE `am_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countryid` (`countryid`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `am_contacts`
--
ALTER TABLE `am_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_countries`
--
ALTER TABLE `am_countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `am_currencies`
--
ALTER TABLE `am_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_device_tokens`
--
ALTER TABLE `am_device_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_districts`
--
ALTER TABLE `am_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_employees`
--
ALTER TABLE `am_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_employee_jobs`
--
ALTER TABLE `am_employee_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_employee_levels`
--
ALTER TABLE `am_employee_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_employee_log`
--
ALTER TABLE `am_employee_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_employee_transfers`
--
ALTER TABLE `am_employee_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_favorites`
--
ALTER TABLE `am_favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `am_favorites_user_id_typeid_product_id_unique` (`user_id`,`typeid`,`product_id`,`token`);

--
-- Indexes for table `am_groups`
--
ALTER TABLE `am_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_job_types`
--
ALTER TABLE `am_job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_log`
--
ALTER TABLE `am_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_notifications`
--
ALTER TABLE `am_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_notifications_translations`
--
ALTER TABLE `am_notifications_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `am_static_pages_translations_static_page_id_locale_unique` (`notification_id`,`locale`),
  ADD KEY `am_static_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `am_notification_tokens`
--
ALTER TABLE `am_notification_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_offers`
--
ALTER TABLE `am_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_offers_translations`
--
ALTER TABLE `am_offers_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `am_offers_translations_offer_id_locale_unique` (`offer_id`,`locale`),
  ADD KEY `am_offers_translations_locale_index` (`locale`);

--
-- Indexes for table `am_payment_methods`
--
ALTER TABLE `am_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_payment_methods_translations`
--
ALTER TABLE `am_payment_methods_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `am_payment_methods_translations_payment_method_id_locale_unique` (`payment_method_id`,`locale`),
  ADD KEY `am_payment_methods_translations_locale_index` (`locale`);

--
-- Indexes for table `am_price_classes`
--
ALTER TABLE `am_price_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_receipts`
--
ALTER TABLE `am_receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_shopping_cart`
--
ALTER TABLE `am_shopping_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_shopping_history`
--
ALTER TABLE `am_shopping_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_shopping_history_items`
--
ALTER TABLE `am_shopping_history_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_shops`
--
ALTER TABLE `am_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_shop_classes`
--
ALTER TABLE `am_shop_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_static_pages`
--
ALTER TABLE `am_static_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_static_pages_translations`
--
ALTER TABLE `am_static_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `am_static_pages_translations_static_page_id_locale_unique` (`static_page_id`,`locale`),
  ADD KEY `am_static_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `am_transactions`
--
ALTER TABLE `am_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `checkout_id` (`checkout_id`);

--
-- Indexes for table `am_users`
--
ALTER TABLE `am_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail` (`email`,`password`);

--
-- Indexes for table `am_users_logins`
--
ALTER TABLE `am_users_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `am_year_opening`
--
ALTER TABLE `am_year_opening`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`,`price_class_id`);

--
-- Indexes for table `device_tokens`
--
ALTER TABLE `device_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_translations`
--
ALTER TABLE `roles_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_translations_role_id_locale_unique` (`role_id`,`locale`),
  ADD KEY `roles_translations_locale_index` (`locale`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `am_banks`
--
ALTER TABLE `am_banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `am_banks_translations`
--
ALTER TABLE `am_banks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `am_cards`
--
ALTER TABLE `am_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_categories`
--
ALTER TABLE `am_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `am_categories_translations`
--
ALTER TABLE `am_categories_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `am_categories_type`
--
ALTER TABLE `am_categories_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `am_categories_type_translations`
--
ALTER TABLE `am_categories_type_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `am_cities`
--
ALTER TABLE `am_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `am_contacts`
--
ALTER TABLE `am_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_countries`
--
ALTER TABLE `am_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
--
-- AUTO_INCREMENT for table `am_currencies`
--
ALTER TABLE `am_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `am_device_tokens`
--
ALTER TABLE `am_device_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_districts`
--
ALTER TABLE `am_districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2544;
--
-- AUTO_INCREMENT for table `am_employees`
--
ALTER TABLE `am_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_employee_jobs`
--
ALTER TABLE `am_employee_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_employee_levels`
--
ALTER TABLE `am_employee_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_employee_log`
--
ALTER TABLE `am_employee_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_employee_transfers`
--
ALTER TABLE `am_employee_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_favorites`
--
ALTER TABLE `am_favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_groups`
--
ALTER TABLE `am_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `am_job_types`
--
ALTER TABLE `am_job_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `am_log`
--
ALTER TABLE `am_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_notifications`
--
ALTER TABLE `am_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_notifications_translations`
--
ALTER TABLE `am_notifications_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_notification_tokens`
--
ALTER TABLE `am_notification_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_offers`
--
ALTER TABLE `am_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_offers_translations`
--
ALTER TABLE `am_offers_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_payment_methods`
--
ALTER TABLE `am_payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `am_payment_methods_translations`
--
ALTER TABLE `am_payment_methods_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `am_price_classes`
--
ALTER TABLE `am_price_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `am_receipts`
--
ALTER TABLE `am_receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_shopping_cart`
--
ALTER TABLE `am_shopping_cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_shopping_history`
--
ALTER TABLE `am_shopping_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_shopping_history_items`
--
ALTER TABLE `am_shopping_history_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_shops`
--
ALTER TABLE `am_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_shop_classes`
--
ALTER TABLE `am_shop_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_static_pages`
--
ALTER TABLE `am_static_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `am_static_pages_translations`
--
ALTER TABLE `am_static_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `am_transactions`
--
ALTER TABLE `am_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_users`
--
ALTER TABLE `am_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_users_logins`
--
ALTER TABLE `am_users_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_year_opening`
--
ALTER TABLE `am_year_opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `device_tokens`
--
ALTER TABLE `device_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1312;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roles_translations`
--
ALTER TABLE `roles_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
