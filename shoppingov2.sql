-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2019 at 02:17 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingov2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add group', 2, 'add_group'),
(6, 'Can change group', 2, 'change_group'),
(7, 'Can delete group', 2, 'delete_group'),
(8, 'Can view group', 2, 'view_group'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add offer', 7, 'add_offer'),
(26, 'Can change offer', 7, 'change_offer'),
(27, 'Can delete offer', 7, 'delete_offer'),
(28, 'Can view offer', 7, 'view_offer'),
(29, 'Can add product combination images', 8, 'add_productcombinationimages'),
(30, 'Can change product combination images', 8, 'change_productcombinationimages'),
(31, 'Can delete product combination images', 8, 'delete_productcombinationimages'),
(32, 'Can view product combination images', 8, 'view_productcombinationimages'),
(33, 'Can add product image', 9, 'add_productimage'),
(34, 'Can change product image', 9, 'change_productimage'),
(35, 'Can delete product image', 9, 'delete_productimage'),
(36, 'Can view product image', 9, 'view_productimage'),
(37, 'Can add product combination keywords', 10, 'add_productcombinationkeywords'),
(38, 'Can change product combination keywords', 10, 'change_productcombinationkeywords'),
(39, 'Can delete product combination keywords', 10, 'delete_productcombinationkeywords'),
(40, 'Can view product combination keywords', 10, 'view_productcombinationkeywords'),
(41, 'Can add product', 11, 'add_product'),
(42, 'Can change product', 11, 'change_product'),
(43, 'Can delete product', 11, 'delete_product'),
(44, 'Can view product', 11, 'view_product'),
(45, 'Can add product combination values', 12, 'add_productcombinationvalues'),
(46, 'Can change product combination values', 12, 'change_productcombinationvalues'),
(47, 'Can delete product combination values', 12, 'delete_productcombinationvalues'),
(48, 'Can view product combination values', 12, 'view_productcombinationvalues'),
(49, 'Can add offer product vendor', 13, 'add_offerproductvendor'),
(50, 'Can change offer product vendor', 13, 'change_offerproductvendor'),
(51, 'Can delete offer product vendor', 13, 'delete_offerproductvendor'),
(52, 'Can view offer product vendor', 13, 'view_offerproductvendor'),
(53, 'Can add variant value', 14, 'add_variantvalue'),
(54, 'Can change variant value', 14, 'change_variantvalue'),
(55, 'Can delete variant value', 14, 'delete_variantvalue'),
(56, 'Can view variant value', 14, 'view_variantvalue'),
(57, 'Can add product combinations', 15, 'add_productcombinations'),
(58, 'Can change product combinations', 15, 'change_productcombinations'),
(59, 'Can delete product combinations', 15, 'delete_productcombinations'),
(60, 'Can view product combinations', 15, 'view_productcombinations'),
(61, 'Can add product description type', 16, 'add_productdescriptiontype'),
(62, 'Can change product description type', 16, 'change_productdescriptiontype'),
(63, 'Can delete product description type', 16, 'delete_productdescriptiontype'),
(64, 'Can view product description type', 16, 'view_productdescriptiontype'),
(65, 'Can add variant', 17, 'add_variant'),
(66, 'Can change variant', 17, 'change_variant'),
(67, 'Can delete variant', 17, 'delete_variant'),
(68, 'Can view variant', 17, 'view_variant'),
(69, 'Can add product combination vendor', 18, 'add_productcombinationvendor'),
(70, 'Can change product combination vendor', 18, 'change_productcombinationvendor'),
(71, 'Can delete product combination vendor', 18, 'delete_productcombinationvendor'),
(72, 'Can view product combination vendor', 18, 'view_productcombinationvendor'),
(73, 'Can add product keyword', 19, 'add_productkeyword'),
(74, 'Can change product keyword', 19, 'change_productkeyword'),
(75, 'Can delete product keyword', 19, 'delete_productkeyword'),
(76, 'Can view product keyword', 19, 'view_productkeyword'),
(77, 'Can add description type', 20, 'add_descriptiontype'),
(78, 'Can change description type', 20, 'change_descriptiontype'),
(79, 'Can delete description type', 20, 'delete_descriptiontype'),
(80, 'Can view description type', 20, 'view_descriptiontype'),
(81, 'Can add image', 21, 'add_image'),
(82, 'Can change image', 21, 'change_image'),
(83, 'Can delete image', 21, 'delete_image'),
(84, 'Can view image', 21, 'view_image'),
(85, 'Can add keyword', 22, 'add_keyword'),
(86, 'Can change keyword', 22, 'change_keyword'),
(87, 'Can delete keyword', 22, 'delete_keyword'),
(88, 'Can view keyword', 22, 'view_keyword'),
(89, 'Can add category tree', 23, 'add_categorytree'),
(90, 'Can change category tree', 23, 'change_categorytree'),
(91, 'Can delete category tree', 23, 'delete_categorytree'),
(92, 'Can view category tree', 23, 'view_categorytree'),
(93, 'Can add category images', 24, 'add_categoryimages'),
(94, 'Can change category images', 24, 'change_categoryimages'),
(95, 'Can delete category images', 24, 'delete_categoryimages'),
(96, 'Can view category images', 24, 'view_categoryimages'),
(97, 'Can add brand', 25, 'add_brand'),
(98, 'Can change brand', 25, 'change_brand'),
(99, 'Can delete brand', 25, 'delete_brand'),
(100, 'Can view brand', 25, 'view_brand'),
(101, 'Can add user', 26, 'add_user'),
(102, 'Can change user', 26, 'change_user'),
(103, 'Can delete user', 26, 'delete_user'),
(104, 'Can view user', 26, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `image_id` int(11) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `title`, `isDelete`, `image_id`, `lastModified`) VALUES
(1, '<Unknown>', 0, 1, '2019-05-26 10:59:42.000000');

-- --------------------------------------------------------

--
-- Table structure for table `categoryimages`
--

CREATE TABLE `categoryimages` (
  `id` int(11) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `lastModified` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorytree`
--

CREATE TABLE `categorytree` (
  `id` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lastModified` datetime(6) NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `categorytree`
--

INSERT INTO `categorytree` (`id`, `title`, `isDelete`, `parent_id`, `lastModified`, `description`) VALUES
(1, 'Grocery', 0, 1, '2019-05-26 11:00:46.000000', 'A grocery store is a retail store that primarily sells food. A grocer is a bulk seller of food. Grocery stores often offer non-perishable food that is packaged in bottles, boxes, and cans; some also have bakeries, butchers, delis, and fresh produce.'),
(13, 'Dairy', 0, 1, '2019-05-26 11:00:46.000000', 'A dairy is typically located on a dedicated dairy farm or in a section of a multi-purpose farm (mixed farm) that is concerned with the harvesting of milk.'),
(14, 'House Care & Laundry', 0, 1, '2019-05-26 11:00:46.000000', 'Home care (also referred to as domiciliary care, social care, or in-home care) is supportive care provided in the home'),
(15, 'Personal Care', 0, 1, '2019-05-26 11:00:46.000000', 'Personal care or toiletries is the industry which manufactures consumer products used in personal hygiene and for beautification'),
(16, 'Snacks & Bevarages', 0, 1, '2019-05-26 11:00:46.000000', 'A snack is a portion of food, smaller than a regular meal, generally eaten between meals. Snacks come in a variety of forms including packaged snack foods and other processed foods, as well as items made from fresh ingredients at home'),
(17, 'Dry & Baking', 0, 1, '2019-05-26 11:00:46.000000', 'Baking powder is a dry chemical leavening agent, a mixture of a carbonate or bicarbonate and a weak acid and is used for increasing the volume and lightening the texture of baked goods'),
(18, 'Spices', 0, 1, '2019-05-26 11:00:46.000000', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish'),
(19, 'Canned & Packed ', 0, 1, '2019-05-26 11:00:46.000000', 'Products that are packed very nicely and came to market for sale. '),
(20, 'Pasta & Rice', 0, 1, '2019-05-26 11:00:46.000000', 'Products like Corn,Rice,Wheat...'),
(21, 'Cereals ', 0, 1, '2019-05-26 11:00:46.000000', 'Wheat,Barley,Oat,Rye,Maize...'),
(22, 'Health and Other ', 0, 1, '2019-05-26 11:00:46.000000', 'Products that are not listed under any other categories...'),
(23, 'Baby Care & Toys', 0, 1, '2019-05-26 11:00:46.000000', 'Baby diapers,baby personal care etc..'),
(24, 'Fruits & Vegetables', 0, 1, '2019-05-26 11:00:46.000000', 'Fruits and vegetables'),
(25, 'Meat,Fish & Chicken ', 0, 1, '2019-05-26 11:00:46.000000', 'Fruits and vegetables');

-- --------------------------------------------------------

--
-- Table structure for table `descriptiontype`
--

CREATE TABLE `descriptiontype` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_520_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(25, 'Category', 'brand'),
(24, 'Category', 'categoryimages'),
(23, 'Category', 'categorytree'),
(5, 'contenttypes', 'contenttype'),
(21, 'General', 'image'),
(22, 'General', 'keyword'),
(20, 'Products', 'descriptiontype'),
(7, 'Products', 'offer'),
(13, 'Products', 'offerproductvendor'),
(11, 'Products', 'product'),
(8, 'Products', 'productcombinationimages'),
(10, 'Products', 'productcombinationkeywords'),
(15, 'Products', 'productcombinations'),
(12, 'Products', 'productcombinationvalues'),
(18, 'Products', 'productcombinationvendor'),
(16, 'Products', 'productdescriptiontype'),
(9, 'Products', 'productimage'),
(19, 'Products', 'productkeyword'),
(17, 'Products', 'variant'),
(14, 'Products', 'variantvalue'),
(6, 'sessions', 'session'),
(26, 'User', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'General', '0001_initial', '2019-05-26 10:54:31.338246'),
(2, 'General', '0002_auto_20190526_1358', '2019-05-26 10:54:31.498083'),
(3, 'Category', '0001_initial', '2019-05-26 10:54:31.737984'),
(4, 'Category', '0002_auto_20190526_1358', '2019-05-26 10:54:31.931550'),
(5, 'Category', '0003_auto_20190526_1451', '2019-05-26 10:54:32.269207'),
(6, 'Category', '0004_categorytree_description', '2019-05-26 10:54:32.322008'),
(7, 'User', '0001_initial', '2019-05-26 10:54:32.359967'),
(8, 'Products', '0001_initial', '2019-05-26 10:54:34.164732'),
(9, 'Products', '0002_auto_20190526_1326', '2019-05-26 10:54:35.019047'),
(10, 'Products', '0003_auto_20190526_1338', '2019-05-26 10:54:35.333126'),
(11, 'Products', '0004_productcombinationvendor_isdelete', '2019-05-26 10:54:35.449378'),
(12, 'Products', '0005_productdescriptiontype_description', '2019-05-26 10:54:35.552275'),
(13, 'Products', '0006_auto_20190526_1357', '2019-05-26 10:54:36.868665'),
(14, 'contenttypes', '0001_initial', '2019-05-26 10:54:36.937466'),
(15, 'auth', '0001_initial', '2019-05-26 10:54:37.816951'),
(16, 'admin', '0001_initial', '2019-05-26 10:54:37.972772'),
(17, 'admin', '0002_logentry_remove_auto_add', '2019-05-26 10:54:37.989756'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2019-05-26 10:54:38.007720'),
(19, 'contenttypes', '0002_remove_content_type_name', '2019-05-26 10:54:38.222497'),
(20, 'auth', '0002_alter_permission_name_max_length', '2019-05-26 10:54:38.316401'),
(21, 'auth', '0003_alter_user_email_max_length', '2019-05-26 10:54:38.458255'),
(22, 'auth', '0004_alter_user_username_opts', '2019-05-26 10:54:38.485664'),
(23, 'auth', '0005_alter_user_last_login_null', '2019-05-26 10:54:38.572576'),
(24, 'auth', '0006_require_contenttypes_0002', '2019-05-26 10:54:38.578569'),
(25, 'auth', '0007_alter_validators_add_error_messages', '2019-05-26 10:54:38.601568'),
(26, 'auth', '0008_alter_user_username_max_length', '2019-05-26 10:54:38.699496'),
(27, 'auth', '0009_alter_user_last_name_max_length', '2019-05-26 10:54:38.816452'),
(28, 'sessions', '0001_initial', '2019-05-26 10:54:38.871391');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image`, `isDelete`, `lastModified`) VALUES
(1, '<Unknown>', 0, '2019-05-26 10:59:38.000000');

-- --------------------------------------------------------

--
-- Table structure for table `keyword`
--

CREATE TABLE `keyword` (
  `id` int(11) NOT NULL,
  `keyword` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `isLive` tinyint(1) NOT NULL,
  `startDate` datetime(6) NOT NULL,
  `endDate` datetime(6) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offerproductvendor`
--

CREATE TABLE `offerproductvendor` (
  `id` int(11) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `offerPrice` decimal(10,2) NOT NULL,
  `lastModified` datetime(6) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcombinationimages`
--

CREATE TABLE `productcombinationimages` (
  `id` int(11) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `Image_id` int(11) NOT NULL,
  `productCombination_id` int(11) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcombinationkeywords`
--

CREATE TABLE `productcombinationkeywords` (
  `id` int(11) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `keyword_id` int(11) NOT NULL,
  `productCombination_id` int(11) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcombinations`
--

CREATE TABLE `productcombinations` (
  `id` int(11) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `product_id` int(11) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcombinationvalues`
--

CREATE TABLE `productcombinationvalues` (
  `id` int(11) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `productCombination_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcombinationvendor`
--

CREATE TABLE `productcombinationvendor` (
  `id` int(11) NOT NULL,
  `costPrice` decimal(10,2) NOT NULL,
  `sellPrice` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `productCombination_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productdescriptiontype`
--

CREATE TABLE `productdescriptiontype` (
  `id` int(11) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `descriptionType_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productimage`
--

CREATE TABLE `productimage` (
  `id` int(11) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productkeyword`
--

CREATE TABLE `productkeyword` (
  `id` int(11) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `keyword_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `addedDate` datetime(6) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `addedDate`, `brand_id`, `category_id`, `isDelete`, `lastModified`) VALUES
(84, 'Anchor', '2018-05-10 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(85, 'Anchor Plus (1-5 Years)', '2018-05-10 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(86, 'Anchor Pedia Pro ', '2018-05-10 00:00:00.000000', 1, 13, 1, '2019-05-26 11:00:59.000000'),
(88, 'Anchor Non Fat Shap Up', '2018-05-10 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(89, 'KIST Chilli Paste ', '2018-05-10 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(91, 'KIST Sauce ', '2018-05-10 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(93, 'KIST Jam', '2018-05-11 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(94, 'Maam Banana Biscuits', '2018-05-11 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(95, 'Maliban Biscuit Assortment Classique 400g', '2018-05-11 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(99, 'Maliban Gift Biscuit 400g', '2018-05-12 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(100, 'Maliban Krisco Biscuit Box 170g', '2018-05-12 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(101, 'MD Jam', '2018-05-12 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(102, 'MD Sauce ', '2018-05-12 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(103, 'MDK White Rice Flour', '2018-05-12 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(104, 'MDK Red Rice Flour', '2018-05-12 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(106, 'Motha Quick set Jelly 100g', '2018-05-12 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(107, 'Motha Jelly', '2018-05-12 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(108, 'Mogrills Atta Flour 1kg', '2018-05-12 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(109, 'Alli Atta Flour 1kg', '2018-05-12 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(111, 'Munchee Super Cream Cracker', '2018-05-12 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(113, 'Alli Idly Flour 400g', '2018-05-12 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(114, 'Anchor Non-Fat 400g  ', '2018-05-12 00:00:00.000000', 1, 13, 1, '2019-05-26 11:00:59.000000'),
(115, 'KIST Chilli Paste 200g', '2018-05-12 00:00:00.000000', 1, 19, 1, '2019-05-26 11:00:59.000000'),
(116, 'Motha Baking Powder', '2018-05-12 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(118, 'Motha Imported Gelatine ', '2018-05-12 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(119, 'Motha Cocoa Powder', '2018-05-12 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(120, 'Munchee Potato CRK Biscuit 150g ', '2018-05-12 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(121, 'Munchee Snak Craker 170g', '2018-05-12 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(122, 'Munchee Chocolate Chips Cookies 100g', '2018-05-12 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(123, 'Munchee Hawaian Cookies Biscuits 100g', '2018-05-12 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(124, 'Motha Custard Powder', '2018-05-12 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(125, 'Rangiri String Hopper Flour Red Rice 1kg', '2018-05-12 00:00:00.000000', 1, 17, 1, '2019-05-26 11:00:59.000000'),
(126, 'Dettol Soap 70g', '2018-05-13 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(127, 'Lifebuoy Soap 100g', '2018-05-13 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(129, 'Vim Soap', '2018-05-13 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(130, 'Sunlight Soap 120g', '2018-05-13 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(131, 'Delma Soap 75g', '2018-05-13 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(132, 'Lux Soap 100g', '2018-05-13 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(134, 'Delmalight Laundry Soap Lime Fresh 115g', '2018-05-13 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(135, 'Rani Soap Sandalwood 90g', '2018-05-13 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(136, 'Siddhalepa Baby Soap Kekulu Jasmin pure & Mild 70g', '2018-05-13 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(137, 'Siddhalepa Paboda Soap 90g', '2018-05-13 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(138, 'Swadeshi Khomba Baby Soap 70g', '2018-05-13 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(139, 'Swadeshi Khomba Soap Original Herbal Care 100g', '2018-05-13 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(140, 'Dates Khalas', '2018-05-14 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(141, 'Delta Tea No.1', '2018-05-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(142, 'Wheat Flour 7Star (à®•à¯‹à®¤à¯�à®®à¯ˆ à®®à®¾) ', '2018-05-14 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(143, 'Asiri Nadu /Country/Steamed/Boiled Rice ', '2018-05-14 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(144, 'Diamond Dates 500g', '2018-05-14 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(145, 'Velvet Soap 100g', '2018-05-14 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(146, 'Big Onion', '2018-05-14 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(147, 'Wonderlight Bar Soap 650g', '2018-05-14 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(148, 'Chilli Powder', '2018-05-14 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(149, 'Coconut Oil ', '2018-05-14 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(150, 'Coriander Powder ', '2018-05-14 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(151, 'Motha Pudding Mix  100g', '2018-05-14 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(152, 'Cowpea India', '2018-05-14 00:00:00.000000', 1, 21, 1, '2019-05-26 11:00:59.000000'),
(153, 'Munchee Chocolate Cream Biscuit ', '2018-05-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(154, 'Munchee Chocolate Marie ', '2018-05-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(155, 'Munchee Light Marie 50g', '2018-05-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(156, 'Munchee Milk Short Cake Biscuits ', '2018-05-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(157, 'Dhal', '2018-05-14 00:00:00.000000', 1, 21, 1, '2019-05-26 11:00:59.000000'),
(158, 'Munchee Milk Shorties Biscuits 350g', '2018-05-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(159, 'Maisoor Dhal ', '2018-05-14 00:00:00.000000', 1, 21, 1, '2019-05-26 11:00:59.000000'),
(160, 'Munchee Nice Biscuit', '2018-05-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(161, 'Munchee Lemon Puff', '2018-05-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(162, 'Munchee Tikiri Marie ', '2018-05-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(163, 'Maliban Gold Marie', '2018-05-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(164, 'Munchee Cheese Buttons Biscuits', '2018-05-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(165, 'Munchee Ginger Biscuit ', '2018-05-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(166, 'Munchee Cheese buttons 170g', '2018-05-15 00:00:00.000000', 1, 16, 1, '2019-05-26 11:00:59.000000'),
(167, 'Munchee Savory Nuts 170g', '2018-05-15 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(168, 'Munchee Tifin Biscuit 125g', '2018-05-15 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(169, 'Munchee Hawaian Cookies Biscuits 200g', '2018-05-15 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(170, 'MD Chilli Paste 270g', '2018-05-15 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(171, 'MDK Noodles 500g', '2018-05-15 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(172, 'Tang Drinks Powder 2.5kg', '2018-05-15 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(173, 'Surf Excel Detergent Powder', '2018-05-15 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(174, 'Rin Detergent Powder', '2018-05-16 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(175, 'Rin Detergent Powder Refresh Lemon and Rose 500g', '2018-05-16 00:00:00.000000', 1, 14, 1, '2019-05-26 11:00:59.000000'),
(176, 'Urad ', '2018-05-17 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(177, 'Dhal Yellow', '2018-05-18 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(178, 'Cumin/Dill Seeds(à®šà®¿à®°à®¿à®¯ à®šà¯€à®°à®•à®®à¯', '2018-05-18 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(179, 'Diamo Candy/Rock Sugar (à®•à®²à¯�à®•à®£à¯�à®Ÿà¯�)', '2018-05-18 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(180, 'Dried Sprats', '2018-05-18 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(181, 'Fennel Seeds(à®ªà¯†à®°à¯�à®žà¯�à®šà¯€à®°à®•à®®à¯�)', '2018-05-18 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(183, 'Garlic ', '2018-05-18 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(184, 'Gram', '2018-05-18 00:00:00.000000', 1, 21, 1, '2019-05-26 11:00:59.000000'),
(185, 'Green Gram Australia', '2018-05-18 00:00:00.000000', 1, 21, 1, '2019-05-26 11:00:59.000000'),
(186, 'Green Peas', '2018-05-18 00:00:00.000000', 1, 21, 1, '2019-05-26 11:00:59.000000'),
(187, 'Lanka White Raw Rice', '2018-05-18 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(188, 'Macaroni Pasta', '2018-05-18 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(189, 'Maldive Fish', '2018-05-18 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(190, 'Menaka Keeri Samba (Badabath) Rice ', '2018-05-18 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(191, 'Mustard ', '2018-05-18 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(192, 'Palm Oil', '2018-05-18 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(193, 'Pepper Powder ', '2018-05-18 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(194, 'Plums ', '2018-05-18 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(195, 'Pop Corn', '2018-05-18 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(196, 'Potato Pakistan', '2018-05-18 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(197, 'Prima Flour', '2018-05-18 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(198, 'Quality Tea', '2018-05-18 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(199, 'Brown Sugar', '2018-05-18 00:00:00.000000', 1, 17, 1, '2019-05-26 11:00:59.000000'),
(200, 'Semolina (à®°à®µ)', '2018-05-20 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(201, 'Small Black Seeds (à®šà®¿à®°à¯�à®žà¯�à®šà¯€à®°à®•à', '2018-05-20 00:00:00.000000', 1, 18, 1, '2019-05-26 11:00:59.000000'),
(202, 'Sunlight Detergent Powder', '2018-05-23 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(203, 'Diva Detergent Powder', '2018-05-23 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(204, 'Diva Detergent Powder 200g', '2018-05-23 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(205, 'Soorya Broken Keeri Rice', '2018-05-23 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(206, 'Soorya Harvest Keeri (Steamed) Rice', '2018-05-23 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(207, 'Loose Soya', '2018-05-23 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(208, 'Turmeric Pieces (à®®à®žà¯�à®šà®³à¯� à®•à®Ÿà¯�à®Ÿà®', '2018-05-23 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(209, 'Watana Dhal (à®•à®Ÿà®²à¯ˆ à®ªà®°à¯�à®ªà¯�à®ªà¯�)', '2018-05-23 00:00:00.000000', 1, 21, 1, '2019-05-26 11:00:59.000000'),
(210, 'Import Ponni Samba Rice', '2018-05-23 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(211, 'White Sugar', '2018-05-23 00:00:00.000000', 1, 17, 1, '2019-05-26 11:00:59.000000'),
(212, 'Munchee Kome Biscuits ', '2018-05-23 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(213, 'Sunquick ', '2018-05-23 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(214, 'Maliban Milk Powder ', '2018-05-23 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(215, 'Maliban Krisco Biscuits Tin 215g', '2018-05-23 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(216, 'Laogi Tea Powder 50g', '2018-05-23 00:00:00.000000', 1, 16, 1, '2019-05-26 11:00:59.000000'),
(217, 'Viva 400g', '2018-05-23 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(218, 'Iodex Balm 10g', '2018-05-23 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(219, 'Gillette Shaving Blade', '2018-05-23 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(220, 'Nestle Milkmaid', '2018-05-23 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(221, 'Ratthi Milk Powder', '2018-05-23 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(222, 'Nespray Milk Powder', '2018-05-23 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(223, 'Edinborough Soya Sauce ', '2018-05-24 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(224, 'Denta Tooth Brush Medium', '2018-05-24 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(225, 'Cowpea Red', '2018-05-24 00:00:00.000000', 1, 21, 1, '2019-05-26 11:00:59.000000'),
(226, 'Benson Tinned Fish 425g', '2018-05-24 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(230, 'Nelna Chicken ', '2018-05-24 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(231, 'Alli Noodles Takas 400g', '2018-05-24 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(232, 'Alli Special Dry Noodles 400g', '2018-05-24 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(233, 'Alli Instant Noodles With Vegetables 300g', '2018-05-24 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(234, 'Alli Red Rice Vermicelli Noodles 350g', '2018-05-24 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(235, 'Captain Oats ', '2018-05-24 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(236, 'Harischandra Hopper Mix 400g', '2018-05-24 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(237, 'Harischandra Thosai Mixture 400g', '2018-05-24 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(238, 'Harischandra Special Noodles 400g', '2018-05-24 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(239, 'Harischandra Noodles 400g', '2018-05-24 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(240, 'Harischandra Coffee', '2018-05-24 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(241, 'Prima Noodles 345g', '2018-05-24 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(242, 'Prima Kottu Mee 80g ', '2018-05-24 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(243, 'Maggi Noodles', '2018-05-24 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(244, 'Sapthami Incense Sticks Jasmine 40g', '2018-05-24 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(245, 'Woerle Happy Cow Cheese 120g', '2018-05-24 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(246, 'Almarai Cheese 120g', '2018-05-24 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(247, 'Star Essence', '2018-05-24 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(248, 'Crescent Chicken Sausages 450g', '2018-05-24 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(249, 'Wiji Soya NOS', '2018-05-24 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(250, 'Lanka Soya NOS', '2018-05-24 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(251, 'Wiji Soya 70g', '2018-05-24 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(252, 'RGP Chilli Powder', '2018-05-27 00:00:00.000000', 1, 19, 1, '2019-05-26 11:00:59.000000'),
(253, 'Maggi Coconut Milk Powder', '2018-05-27 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(254, 'Ritzbury Revello', '2018-05-27 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(256, 'Maliban Bran Cracker 220g', '2018-05-29 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(257, 'Ratthi Red Cow Rasa Padama Milk Powder 400g', '2018-05-30 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(258, 'Renuka Coconut Milk Powder', '2018-05-30 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(260, 'Wiji Chilli Powder', '2018-05-30 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(261, 'Rangiri String Hopper Flour 1kg', '2018-05-31 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(262, 'Egg ', '2018-05-31 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(263, 'Vimala Vegetable Oil', '2018-05-31 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(264, 'BCC White Coconut Oil ', '2018-05-31 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(265, 'Harpic Toilet Cleaner 200ml', '2018-05-31 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(266, 'Harpic Toilet Cleaner 500ml', '2018-05-31 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(267, 'Fortune Coconut Oil 1l', '2018-05-31 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(268, 'Domex Toilet Expert ', '2018-05-31 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(269, 'Edinborough Fragrant Sasami Oil 320ml', '2018-05-31 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(270, 'Herman Mayonnaise ', '2018-05-31 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(271, 'Flora Facial Tissue ', '2018-05-31 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(272, 'Highland Milk Powder ', '2018-05-31 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(273, 'NTT Sauce Tomato ', '2018-05-31 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(274, 'Lifebuoy Hand Wash 200ml', '2018-05-31 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(275, 'Clogard Tooth Paste Cavity Protection ', '2018-05-31 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(276, 'Clogard Adult Tooth Brush', '2018-05-31 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(277, '3xClogard Junior Toothbrush ', '2018-05-31 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(278, 'Clogard Toothpaste Fresh Blast Gel Clove + Eucalyp', '2018-05-31 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(279, 'Air Wick Air Freshner Spray 475ml', '2018-05-31 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(280, 'Air Wick Air Freshner 50g', '2018-05-31 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(281, 'Dettol Hand Wash 200g | 250g ', '2018-05-31 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(282, 'BCC Hand Wash 280ml', '2018-05-31 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(283, 'Bonlac Non Fat 400g', '2018-05-31 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(284, 'Bic Razor ', '2018-05-31 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(285, 'Brooke Bond New Laojee Tea', '2018-05-31 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(286, 'CBL Samaposha 200g', '2018-05-31 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(287, 'Clear Shampoo 90ml', '2018-05-31 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(296, 'Dandex Shampoo ', '2018-06-03 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(297, 'Diana Strawberry Cream Wafers 90g', '2018-06-03 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(298, 'Eva Cotton Feel Wings', '2018-06-03 00:00:00.000000', 1, 15, 1, '2019-05-26 11:00:59.000000'),
(299, 'Eva Drytex Wings', '2018-06-03 00:00:00.000000', 1, 15, 1, '2019-05-26 11:00:59.000000'),
(300, 'Fems Wings', '2018-06-03 00:00:00.000000', 1, 15, 1, '2019-05-26 11:00:59.000000'),
(301, 'Head & Shoulders Shampoo', '2018-06-03 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(302, 'King Table Salt (à®¤à¯‚à®³à¯� à®‰à®ªà¯�à®ªà¯�) 400', '2018-06-03 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(303, 'Kumarika Herbal Hair Oil', '2018-06-03 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(304, 'Lifebuoy Shampoo', '2018-06-03 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(305, 'Sunsilk Shampoo 80ml', '2018-06-03 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(306, 'Knorr Biriyani Mix', '2018-06-03 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(307, 'Knorr Devil Mix', '2018-06-03 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(308, 'Lysol Disinfectant Surface Cleaner', '2018-06-03 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(309, 'Pantene Shampoo 70ml', '2018-06-03 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(310, 'Maggi Pazzta 70g', '2018-06-03 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(311, 'Maggi Rasa Musu 6g', '2018-06-03 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(312, 'SCAN Jumbo Peanuts ', '2018-06-03 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(313, 'Marvel Diapers (16 Pieces)', '2018-06-03 00:00:00.000000', 1, 15, 1, '2019-05-26 11:00:59.000000'),
(314, 'Mortein Fast Kill Spray 250ml', '2018-06-03 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(315, 'Nelna Sausages 140g', '2018-06-03 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(316, 'Nestle Lactogen Comfopro 350g', '2018-06-03 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(317, 'Nestle NAN 350g', '2018-06-03 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(318, 'Nestle Nestomalt ', '2018-06-03 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(319, 'Fonterra Anlene Milk Powder', '2018-06-03 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(320, 'Nice Paper Napkins 100 Sheets', '2018-06-04 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(321, 'Rainbow Clorox White + Liquid Bleach', '2018-06-04 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(322, 'Signal Toothpaste ', '2018-06-04 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(323, 'Watawala Ceylon Tea', '2018-06-06 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(324, 'Vendol T&G Toothpaste', '2018-06-06 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(325, 'Rainbow PNOL Disinfectant ', '2018-06-06 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(326, 'Siddhalepa Kekulu Ayurvedic Kids Toothpaste 40g', '2018-06-06 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(327, 'Siddhalepa Supirivicky Toothpaste ', '2018-06-06 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(328, 'Comfort Fabric Conditioner 860ml', '2018-06-06 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(330, 'Sensodyne Fluoride Toothpaste ', '2018-06-06 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(331, 'Shan Chicken Masala 50g', '2018-06-07 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(332, 'Shan Bombay Buriyani Masala 60g', '2018-06-07 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(333, 'Zesta Green Tea 25 Bags 45g', '2018-06-07 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(335, 'Sapumal Incense Sticks 55g', '2018-06-07 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(336, 'Sapumal Extra Incense Sticks 8g', '2018-06-07 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(337, 'Soorya Orange Keeri Rice', '2018-06-07 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(338, 'Ritzbury Chunky Choc Classic ', '2018-06-07 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(339, 'Ritzbury Chocolate Fingers ', '2018-06-07 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(340, 'Ritzbury Popit 20g', '2018-06-07 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(341, 'Ritzbury Choco-la 30g', '2018-06-07 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(344, 'Ritzbury Duo Choco Coated Falooda 20g', '2018-06-07 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(345, 'OGM Rice Flour 1kg', '2018-06-12 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(346, 'Menaka Samba/Badabath Rice', '2018-06-12 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(348, 'Soorya Milky Keeri Rice (Badabath)', '2018-06-12 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(349, 'Soorya Old Keeri Rice / Blue Keeri (Steamed)', '2018-06-12 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(350, 'Hiru Keeri Samba Rice (Badabath)', '2018-06-12 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(351, 'Soorya Nadu/Country/Boiled Rice (Badabath)', '2018-06-12 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(352, 'Hiru Country/Nadu/Boiled Rice (badabath)', '2018-06-12 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(353, 'Menaka Country/Nadu/Boiled Rice (Badabath)', '2018-06-12 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(354, 'Hiru Samba Rice (Badabath)', '2018-06-12 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(355, 'Knorr Nasi Goreng Powder 20g', '2018-06-12 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(360, 'Little Lion Golden Cow Rusks', '2018-06-19 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(361, 'BCC White Coconut Oil 1l', '2018-06-21 00:00:00.000000', 1, 19, 1, '2019-05-26 11:00:59.000000'),
(362, 'Prinz Salt (à®•à®Ÿà¯�à®Ÿà®¿ à®‰à®ªà¯�à®ªà¯�) 1kg', '2018-06-21 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(363, 'Diamond Milk Powder ', '2018-06-21 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(364, 'Dilini Samba Rice (Badabath)', '2018-06-23 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(365, 'Astra Margarine', '2018-06-24 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(366, 'Milan Pasta 1kg', '2018-06-24 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(367, 'Coconut ', '2018-06-24 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(368, 'Nescafe ', '2018-06-24 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(369, 'Star Light Soap', '2018-06-26 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(370, 'Cumin Seeds', '2018-06-26 00:00:00.000000', 1, 18, 1, '2019-05-26 11:00:59.000000'),
(371, 'Match Box (1 Dozen)', '2018-06-26 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(372, 'Mogrills Rose Syrup (Falooda Syrup) 750ml', '2018-06-26 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(373, 'Cargils Fruit Nut Ice Cream', '2018-06-26 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(374, 'India Pappadam', '2018-06-26 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(375, 'Ginger', '2018-06-27 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(376, 'Dried Chilli', '2018-06-27 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(377, 'Cinnamon (à®•à®±à¯�à®µà®ªà¯�à®ªà®Ÿà¯�à®Ÿà¯ˆ)', '2018-06-27 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(378, 'Cardamom (à®�à®²à®•à¯�à®•à®¾à®¯à¯�)', '2018-06-27 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(379, 'Potato Lanka', '2018-06-27 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(381, 'Pears Baby Soap 100g', '2018-06-29 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(382, 'Baby Cheramy Soap 100g', '2018-06-29 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(383, 'Curry Powder (à®šà®°à®•à¯�à®•à®¤à¯�à®¤à¯‚à®³à¯�)', '2018-07-01 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(384, 'Cutter Chilli', '2018-07-01 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(385, 'Saffron Powder (à®®à®žà¯�à®šà®³à¯� à®¤à¯‚à®³à¯�)', '2018-07-01 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(386, 'Rice Noodles', '2018-07-01 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(387, 'Dettol', '2018-07-02 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(388, 'Big black seeds (à®ªà¯†à®°à¯�à®žà¯�à®šà¯€à®°à®•à®®', '2018-07-03 00:00:00.000000', 1, 18, 1, '2019-05-26 11:00:59.000000'),
(389, 'Coriander seeds  ', '2018-07-03 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(390, 'Anchor Newdale Yogurt', '2018-07-04 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(391, 'Maldive Fish Powder', '2018-07-04 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(392, 'Red Rice Steam Nadu (à®šà®¿à®µà®ªà¯�à®ªà¯� à®¨à®¾à', '2018-07-05 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(393, 'Milano Samba/Steamed Rice ', '2018-07-07 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(394, 'Vim Liquid', '2018-07-07 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(395, 'Wonderlight Soap', '2018-07-07 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(396, 'Prima Twist Noodles', '2018-07-07 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(398, 'Nestle Milo 200g ', '2018-07-11 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(399, 'Njoy Coconut Oil 1l', '2018-07-11 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(400, 'Fortune Sunflower Oil 1l', '2018-07-11 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(401, 'Rich Life Curd 500g', '2018-07-11 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(402, 'Gram Flour', '2018-07-11 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(403, 'Harischandra Urad Flour 200g ', '2018-07-11 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(404, 'Baraka Dates 10kg', '2018-07-13 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(405, 'Sooriya Muththu Samba Rice (Steamed)', '2018-07-14 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(406, 'Ghee', '2018-07-14 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(407, 'Pepper Seeds', '2018-07-15 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(408, 'Panadol Card', '2018-07-15 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(409, 'Steam Nadu ', '2018-07-16 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(410, 'Munchee Brand Cracker ', '2018-07-16 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(411, 'Ponds Cream', '2018-07-16 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(412, 'Corn Flour', '2018-07-16 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(413, 'Motha Icing Sugar', '2018-07-16 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(414, 'Anchor Fresh Milk 1l', '2018-07-16 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(415, 'RGP Chilli Powder ', '2018-07-17 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(416, 'RGP Curry Powder (à®šà®°à®•à¯�à®•à®¤à¯�à®¤à¯‚à®³à¯', '2018-07-17 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(417, 'RGP Pepper powder', '2018-07-17 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(418, 'Maggi Soup Cubes (20 Pieces)', '2018-07-17 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(419, 'Global Diapers', '2018-07-21 00:00:00.000000', 1, 15, 1, '2019-05-26 11:00:59.000000'),
(421, 'Peanut', '2018-07-21 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(422, 'Red Onion ', '2018-07-21 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(423, 'Baby Cheramy Baby Cream', '2018-07-21 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(424, 'Anchor Butter', '2018-07-22 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(425, 'Sunlight Promotion (3Pieces)', '2018-07-22 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(426, 'Baby Cheramy (5 Pieces)', '2018-07-22 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(427, 'Goraka', '2018-07-22 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(428, 'Kumarika Shampoo', '2018-07-22 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(429, 'Dilini Keeri Samba Rice', '2018-07-23 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(430, 'Sunsilk Shampo Small Packet', '2018-07-23 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(431, 'Wafers Biscuit 500g', '2018-07-23 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(432, 'White Pepper Powder', '2018-07-24 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(433, 'Tamarind (à®ªà¯�à®³à®¿)', '2018-07-24 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(434, 'Isuru Curd 1l', '2018-07-24 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(435, 'Limole Lemon Bottle 1l', '2018-07-24 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(436, 'Cumin/Dill Powder(à®šà®¿à®°à®¿à®¯ à®šà¯€à®°à®• à®¤', '2018-07-24 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(437, 'Food Dye Yellow 10g', '2018-07-24 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(438, 'Aapa Soda', '2018-07-25 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(439, 'Limole Lemon Bottle 190ml', '2018-07-26 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(440, 'Kist Rose Syrup 750ml', '2018-07-26 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(441, 'Sunsilk Shampoo 180ml', '2018-07-26 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(442, 'Baby Cheramy Powder', '2018-07-28 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(443, 'Dilini Nadu Rice (Badabath)', '2018-07-30 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(444, 'Munchee Tifin Onion Biscuit 125g', '2018-07-30 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(445, 'Jambo Gram', '2018-07-30 00:00:00.000000', 1, 21, 1, '2019-05-26 11:00:59.000000'),
(447, 'Biscuit Powder', '2018-07-31 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(450, 'Free Range Egg', '2018-07-31 00:00:00.000000', 1, 13, 1, '2019-05-26 11:00:59.000000'),
(451, 'Kotmale Vanila MIlk', '2018-07-31 00:00:00.000000', 1, 13, 1, '2019-05-26 11:00:59.000000'),
(453, 'Soorya Samba Rice (Steamed)', '2018-08-01 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(454, 'Margarine/Bhee', '2018-08-01 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(455, 'Delmege Essence', '2018-08-02 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(456, 'Delmege Colouring ', '2018-08-02 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(457, 'Knorr Soup Cube', '2018-08-02 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(458, 'Cashew (à®®à¯�à®¨à¯�à®¤à®¿à®°à®¿)', '2018-08-06 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(459, 'Chili Powder Wiji', '2018-08-06 00:00:00.000000', 1, 18, 1, '2019-05-26 11:00:59.000000'),
(460, 'Soorya Raw Rice Flour', '2018-08-06 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(461, 'Maam Ranwan Marie Biscuits 260g', '2018-08-06 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(462, 'Omen Water Bottle', '2018-08-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(463, 'Vineger Natural Lack Lights', '2018-08-06 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(464, 'Star Light Detergent Powder 1kg', '2018-08-06 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(465, 'Bio Clean 500ml', '2018-08-06 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(466, 'Panadol Box ', '2018-08-07 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(467, 'Mauripan Yeast ', '2018-08-08 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(468, 'Diana Milk Shorties Biscuits Box', '2018-08-08 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(469, 'Ajinomoto ', '2018-08-08 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(470, 'Diva Soap ', '2018-08-08 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(471, 'Comfort Small Â Bottle 200ml (Green)', '2018-08-08 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(472, 'Desiccated Coconut ', '2018-08-08 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(473, 'Suposha', '2018-08-09 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(474, 'Red Raw Rice (à®šà®¿à®µà®ªà¯�à®ª à®ªà®šà¯�à®šà¯ˆ) ', '2018-08-11 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(475, 'White Sesame Seeds (à®Žà®³à¯�à®³à¯�)', '2018-08-11 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(476, 'Chinese Noodles 500g', '2018-08-11 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(477, 'Maggi Soup Cube', '2018-08-11 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(478, 'Falooda Powder', '2018-08-11 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(479, 'Lifebuoy Shampoo Packet', '2018-08-11 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(480, 'White Rice Flour', '2018-08-12 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(481, 'Dandex Shampoo Small Packet', '2018-08-12 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(482, 'King Custard Tin 300g', '2018-08-12 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(484, 'Vimal Pure Coconut Oil 200ml', '2018-08-14 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(485, 'Sprats Kholi ', '2018-08-14 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(486, 'Rosa Tea', '2018-08-16 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(487, 'Juice Powder Mango', '2018-08-18 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(488, 'Juice Powder Mixed Fruit', '2018-08-18 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(489, 'Juice Powder Orange', '2018-08-18 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(490, 'Munchee Milk Short Cake', '2018-08-18 00:00:00.000000', 1, 16, 1, '2019-05-26 11:00:59.000000'),
(491, 'Nipuna Nadu Rice (Badabath)', '2018-08-18 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(492, 'Jaggery (à®•à®°à¯�à®ªà¯�à®ªà®Ÿà¯�à®Ÿà®¿\r\n)', '2018-08-18 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(493, 'Maliban Chick Bits', '2018-08-19 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(494, 'One Rich Coconut Oil', '2018-08-20 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(495, 'Knorr Maldive Fish Powder 8g', '2018-08-20 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(496, 'Basmati Rice', '2018-08-20 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(497, 'Bairaha Chicken ', '2018-08-21 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(498, 'Araliya Keeri Samba Rice (Badabath)', '2018-08-23 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(499, 'White Poppy Seeds (à®µà¯†à®³à¯�à®³à¯ˆ à®•à®š à®•à®', '2018-08-23 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(500, 'Mayonnaise 1kg', '2018-08-23 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(501, 'Lime Pickle (à®Žà®²à¯�à®®à®¿à®šà¯�à®šà¯ˆ à®Šà®±à¯�', '2018-08-23 00:00:00.000000', 1, 22, 1, '2019-05-26 11:00:59.000000'),
(502, 'Maggi Stock Powder 500g', '2018-08-23 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(503, 'Steel Wool', '2018-08-23 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(504, 'Vim Powder 650g', '2018-08-23 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(505, 'Biriyani Essence ', '2018-08-23 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(506, 'Cloves (à®•à®°à®¾à®®à¯�à®ªà¯� )', '2018-08-23 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(507, 'Rasa Malu Tinned Fish ', '2018-08-25 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(508, 'Elkaduwa Water Bottle', '2018-08-25 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(509, 'Green Water Mineral Water Bottle 1.5l', '2018-08-25 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(510, 'Araliya Nadu rice', '2018-08-28 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(511, 'Dried Fish Katta', '2018-09-01 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(512, 'Dried Fish Thalapath', '2018-09-01 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(513, 'Dried Fish Linna', '2018-09-01 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(514, 'Medium Prawn (Isso)', '2018-09-01 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(515, 'Kiri Meen', '2018-09-01 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(516, 'Hurulla Fish ', '2018-09-01 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(517, 'Helmessa', '2018-09-01 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(518, 'Tiny Shrimps (à®•à¯‚à®©à®¿)', '2018-09-01 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(519, 'Icing Sugar', '2018-09-01 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(520, 'Kiri Moru Dried Fish (à®ªà®¾à®²à¯� à®šà¯�à®±à®¾)', '2018-09-01 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(521, 'Big Candle ', '2018-09-02 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(522, 'Wiji Curry Powder (à®šà®°à®•à¯�à®•à®¤à¯�à®¤à¯‚à®³à', '2018-09-03 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(523, 'Morison Gripe Mixture 100ml', '2018-09-03 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(524, 'Maliban Chocolate Cream Biscuits ', '2018-09-03 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(525, 'Sunsilk Natural Recharge Shampoo', '2018-09-03 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(526, 'Surf Excel Aloe Vera 1kg', '2018-09-03 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(527, 'Broken Rice', '2018-09-03 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(528, 'Asiri Nadu Steam/Boiled/Country Rice', '2018-09-03 00:00:00.000000', 1, 20, 1, '2019-05-26 11:00:59.000000'),
(529, 'Asiri Red Rice Nadu', '2018-09-03 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(530, 'LINK Enriched Paspanguwa 25g', '2018-09-04 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(531, 'Chocolate Puff', '2018-09-04 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(532, 'Chocolate Powder', '2018-09-05 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(535, 'Mozzarella Cheese 125g', '2018-09-05 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(536, 'Vendol Venivel Ayurvedic Beauty Soap 75g', '2018-09-05 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(537, 'White Coconut Oil ', '2018-09-05 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(538, 'Comfort Small Packet - Blue', '2018-09-09 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(539, 'Rin Detergent Powder Small Packet', '2018-09-09 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(540, 'Sustagen Milk Vanilla 400g', '2018-09-10 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(541, 'Ginger (à®šà¯�à®•à¯�à®•à¯�)', '2018-09-10 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(542, 'Roza Sweetened Creamer 1kg', '2018-09-11 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(543, 'Munchee Kome BBQ 50g', '2018-09-11 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(545, 'Lanka Pappadam', '2018-09-12 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(546, 'N-Joy Vegetable Oil ', '2018-09-12 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(547, 'Alli Pappadam 60g', '2018-09-12 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(548, 'Dried Fish Thoru (à®…à®±à¯�à®•à¯�à®•à¯�à®²à®¾ )', '2018-09-15 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(549, 'Captain Tinned Fish 300g', '2018-09-18 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(550, 'Chit Chat Chocolate (36 Pieces) ', '2018-09-18 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(551, 'Mogrills Nelli Cordial 750ml', '2018-09-18 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(552, 'Signal Toothbrush Medium', '2018-09-18 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(553, 'Link Sudantha Toothpast', '2018-09-19 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(554, 'Coco Powder', '2018-09-19 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(555, 'Captain Oats', '2018-09-20 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(556, 'Maldive Fish Chips ', '2018-09-20 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(557, 'Rose Water 375ml', '2018-09-20 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(558, 'Glucose - D Packet 100g', '2018-09-22 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(559, 'Nannaari', '2018-09-22 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(560, 'Marina Vegetable Oil 3l', '2018-09-22 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(561, 'Marina Sunflower Oil 5l', '2018-09-22 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(562, 'Soorya Fine Rice Flour', '2018-09-24 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(563, 'Ninja Mosquito Coils 10S', '2018-10-01 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(564, 'Roasted Gram (à®ªà¯Šà®Ÿà¯�à®Ÿà¯� à®•à®Ÿà®²à¯ˆ)', '2018-10-01 00:00:00.000000', 1, 17, 1, '2019-05-26 11:00:59.000000'),
(565, 'Motha Corn Flour 100g', '2018-10-01 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(566, 'Maam Better Carols Biscuits 220g', '2018-10-02 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(567, 'Maliban Chocolate Cream Biscuit', '2018-10-02 00:00:00.000000', 1, 16, 1, '2019-05-26 11:00:59.000000'),
(568, 'Little Lion Batter Carol Cookies 100g', '2018-10-02 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(569, 'Agar Agar Srips (Sanja)', '2018-10-03 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(570, 'Ambewela Fresh Milk 1l ', '2018-10-04 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(572, 'Star Pappadam', '2018-10-07 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(573, 'Nature Power Soap Papaya Aura 125g', '2018-10-10 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(574, 'Nestle Nestomalt ', '2018-10-13 00:00:00.000000', 1, 19, 1, '2019-05-26 11:00:59.000000'),
(575, 'Dates Khalas', '2018-10-13 00:00:00.000000', 1, 17, 1, '2019-05-26 11:00:59.000000'),
(576, 'Horlicks Milk Powder Classic Malt 400g', '2018-10-13 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(577, 'Awal Rice (à®…à®µà®²à¯�)', '2018-10-15 00:00:00.000000', 1, 20, 1, '2019-05-26 11:00:59.000000'),
(578, 'Aval Rice (à®…à®µà®²à¯� à®…à®°à®¿à®šà®¿)', '2018-10-15 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(579, 'Ma\'s Kitchen Indonesian Nasi Goreng Paste 60g', '2018-10-17 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(580, 'Fenugreek Seeds (à®‰à®³à¯� à®…à®°à®¿à®šà®¿/à®µà¯†à', '2018-10-18 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(581, 'Paal Ponni Rice', '2018-10-18 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(582, '7Up Soft Drink 1.5L', '2018-10-21 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(583, 'Regent Steamed Wheat Flour 1kg', '2018-10-22 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(584, 'Maisoor Dhal', '2018-10-30 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(585, 'Brown Sugar ', '2018-10-30 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(586, 'White Sugar', '2018-10-30 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(587, 'Green Gram Australia', '2018-10-30 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(588, 'Gram', '2018-10-30 00:00:00.000000', 1, 21, 1, '2019-05-26 11:00:59.000000'),
(589, 'Cowpea India', '2018-10-30 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(590, 'Roasted Gram (à®ªà¯Šà®Ÿà¯�à®Ÿà¯� à®•à®Ÿà®²à¯ˆ)', '2018-10-30 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(591, 'Green Peas', '2018-10-30 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(592, 'Jumbo Gram', '2018-10-30 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(593, 'Cowpea Red', '2018-10-30 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(594, 'Watana Dhal (à®•à®Ÿà®²à¯ˆ à®ªà®°à¯�à®ªà¯�à®ªà¯�)', '2018-10-30 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(595, 'Lakspray Milk Powder', '2018-11-01 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(596, 'Real fruit Strawbery Jam 510g', '2018-11-05 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(597, 'Vim Soap Promotion 100g * 3', '2018-11-06 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(598, 'Surf Excel Detergent Liquid 500ml', '2018-11-06 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(599, 'Surf Excel Matic Top Load', '2018-11-06 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(600, 'Alli White Wok Noodles 400g', '2018-11-08 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(601, 'Maam Wafers Biscuits ', '2018-11-11 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(602, 'Marvel Baby Diapers (16 Pieces)', '2018-11-12 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(603, 'Cooking Chocolate', '2018-11-13 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(604, 'Lime Pickle 350g (à®Žà®²à¯�à®®à®¿à®šà¯�à®šà¯ˆ à®Šà', '2018-11-13 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(605, 'Edinborough Fragrant Sasami Oil 640ml', '2018-11-13 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(606, 'Edinborough Fragrant Sasami Oil 640ml', '2018-11-13 00:00:00.000000', 1, 19, 1, '2019-05-26 11:00:59.000000'),
(607, 'Richy Black Tea 1kg', '2018-11-13 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(608, 'Richy Pure Ceylon Tea 1kg', '2018-11-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(609, 'Richy Quality Black Tea 1kg', '2018-11-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(610, 'Quality Tea 1kg', '2018-11-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(611, 'Rich Gold Tea', '2018-11-14 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(612, 'Global II Baby Diapers (30 Pieces)', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(613, 'Cute Baby Wipes (80 Sheets)', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(614, 'Marvel Baby Wipes (80 sheets)', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(615, 'Velona Cuddles Baby Diapers (4 Pieces) ', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(616, 'Velona Cuddles Baby Diapers (New Born 24 Pieces)', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(617, 'Velona Cuddles Baby Diapers (Small 36 Pieces)', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(618, 'Velona Cuddles Baby Diapers (Medium 34 Pieces)', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000');
INSERT INTO `products` (`id`, `title`, `addedDate`, `brand_id`, `category_id`, `isDelete`, `lastModified`) VALUES
(619, 'Velona Cuddles Baby Diapers (Large 32 Pieces)', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(621, 'Velona Cuddles Ez Pants (8 Pieces)', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(623, 'Velona Cuddles Ez Pants (18 Pieces)', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(624, 'Velona Cuddles Baby Diapers (Extra Large 30 Pieces', '2018-11-14 00:00:00.000000', 1, 23, 1, '2019-05-26 11:00:59.000000'),
(625, 'Velona Cuddles Baby Diapers (Extra Large 30 Pieces', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(626, 'Baby Cheramy Diapers (4 Pieces)', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(628, 'Baby Cheramy Diapers (12 Pieces)', '2018-11-14 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(630, 'Fems Sanitary Napkins (10 Napkins)', '2018-11-14 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(632, 'Eva Cotton Feel Wings (10 Pieces) ', '2018-11-15 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(633, 'Eva Cotton Feel Wings (20 Pieces) ', '2018-11-15 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(634, 'Eva Dritex Wings (10 Pieces) ', '2018-11-15 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(635, 'Eva Dritex Wings (20 Pieces) ', '2018-11-15 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(636, 'Whisper Wings Sanitary Pad for Heavy Flow and Over', '2018-11-15 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(637, 'Whisper Wings Sanitary Pad for Heavy Flow and Over', '2018-11-15 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(638, 'Whisper Wings Regular (10 Pieces)', '2018-11-15 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(639, 'Whisper Wings Regular (20 Pieces)', '2018-11-15 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(640, 'Whisper Wings Regular (20 Pieces)', '2018-11-15 00:00:00.000000', 1, 15, 1, '2019-05-26 11:00:59.000000'),
(641, 'Arebella Pasta 400g', '2018-11-15 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(642, 'Arbella Pasta 400g', '2018-11-15 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(643, 'Mas Kitchen BBQ Mix 50g', '2018-11-17 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(644, 'Catch Brand Mackerel Tinned Fish 425g', '2018-11-17 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(645, 'Alli Apollo Papadam 60g', '2018-11-17 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(646, 'Comfort Small Â Bottle 200ml (Blue)', '2018-11-17 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(647, 'Mars Chocolate 51g', '2018-11-17 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(648, 'Nestle KitKat 41.5g (4 Finger)', '2018-11-17 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(649, 'Cadbury Dairy Milk Chocolate 165g', '2018-11-17 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(650, 'Nestle KitKat 41.5g (4 Finger)', '2018-11-17 00:00:00.000000', 1, 16, 1, '2019-05-26 11:00:59.000000'),
(651, 'Elephant House Necto 1.5l', '2018-11-18 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(652, 'Yupi Gummy Big Frank 32g (Hot dog)', '2018-11-19 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(653, 'Toblerone 100g', '2018-11-19 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(655, 'KRAFT Cheddar Cheese 250g', '2018-11-19 00:00:00.000000', 1, 13, 1, '2019-05-26 11:00:59.000000'),
(656, 'Hai Candy papperamint 15g', '2018-11-19 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(657, 'Rico Chococos Chocolate Beans 25g', '2018-11-19 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(658, 'Captain Dolphin Nata De Coco Drink 270ml', '2018-11-19 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(659, 'Wadi Food Natural Green Olives 360g', '2018-11-19 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(660, 'Royal British Homemade Butter Cookies 108g', '2018-11-19 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(661, 'Commando Energy Drink 250ml', '2018-11-19 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(662, 'Yupi Burger ', '2018-11-19 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(663, 'Kimia Dates 500g', '2018-11-19 00:00:00.000000', 1, 22, 1, '2019-05-26 11:00:59.000000'),
(664, 'Baby cheramy cotton buds (100 Pieces) ', '2018-11-19 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(665, 'Baby cheramy cotton buds (100 Pieces) ', '2018-11-19 00:00:00.000000', 1, 22, 1, '2019-05-26 11:00:59.000000'),
(666, 'Dove 100g (Germany) ', '2018-11-21 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(667, 'Nildiya Nadu Rice (Badabath)', '2018-11-21 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(668, 'Faragello Chicken Stock Artificial Flavor 24g (3*2', '2018-11-22 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(669, 'Rasna Naturl Honey 250g', '2018-11-22 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(670, 'Tang Drinks Powder 500g', '2018-11-22 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(671, 'Rasna Naturl Honey 250g', '2018-11-22 00:00:00.000000', 1, 19, 1, '2019-05-26 11:00:59.000000'),
(672, 'Snicker 50g', '2018-11-24 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(673, 'Munchee Sun Cracker 135g', '2018-11-24 00:00:00.000000', 1, 16, 1, '2019-05-26 11:00:59.000000'),
(674, 'Daily Milk Packets 200ml ', '2018-11-24 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(675, 'Mas Kitchen Tandoori Masala 50g', '2018-11-24 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(676, 'Mas Kitchen Biriyani Masala 50g', '2018-11-24 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(677, 'Twix Chocolate Bar 50g', '2018-11-25 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(678, 'WeChat Bubble Gum Card 11g', '2018-11-25 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(679, 'WeChat Bubble Gum Card 11g', '2018-11-25 00:00:00.000000', 1, 16, 1, '2019-05-26 11:00:59.000000'),
(680, 'Haldirams Soan Papdi 250g', '2018-11-25 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(681, 'Nutella 400g', '2018-11-25 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(682, 'Bounty Chocolate Bar (28.5g * 2)', '2018-11-25 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(683, 'Pears Baby Talc 90g', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(684, 'Pears Baby Cream 100ml', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(685, 'Pears Baby Cologne 50ml', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(686, 'Close Up Toothpaste 120g', '2018-11-25 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(687, 'Pears Baby Oil 100ml', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(688, 'Pears Baby Shampoo Pure & Gentle 100ml', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(689, 'Pears Baby Hair & Body Wash 100ml', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(690, 'Mamypoko Pants (4 Pieces)', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(691, 'Mamypoko pants XL (3 Pieces) ', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(692, 'Mamypoko Pants - M (15 Pieces)', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(693, 'Mamypoko Pants - XL (16 Pieces)', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(694, 'Mamypoko Pants -S (42 Pieces)', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(695, 'Mamypoko Pants - M (40 Pieces)', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(696, 'Mamypoko Pants - XL (26 Pieces)', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(697, 'Mamypoko Pants - XL (26 Pieces)', '2018-11-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(698, 'Ruchii Mixture ', '2018-11-26 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(699, 'No.1 Milky Pistachio 100g', '2018-11-26 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(700, 'No.1 Almond Nuts 100g', '2018-11-26 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(701, 'Mass Toilet Roll 250 Sheets ', '2018-12-01 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(702, 'Baby Carrier Bag EN71-2 /EN71-3', '2018-12-01 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(703, 'Cellow Tape 0.5\"', '2018-12-01 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(704, 'Cellow Tape 1\"', '2018-12-01 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(705, 'Cellow Tape 2\"', '2018-12-01 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(706, 'Panasonic Battery AA', '2018-12-01 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(707, 'Panasonic Battery AAA', '2018-12-01 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(708, 'Kodomo Toothpaste ', '2018-12-01 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(709, 'Milano Naadu', '2018-12-04 00:00:00.000000', 1, 20, 1, '2019-05-26 11:00:59.000000'),
(710, 'Milano Nadu Rice (Badabath)', '2018-12-04 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(711, 'Alli White Rice Flour 1kg', '2018-12-05 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(712, 'Helium Balloons Packet (10 Pieces) ', '2018-12-05 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(713, 'HBD Helium Balloon (10 Pieces)', '2018-12-05 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(714, 'Mint Super Paper Serviettes (100 Sheets)', '2018-12-05 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(715, 'Merry Go Round ', '2018-12-05 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(716, 'Baby Cheramy Gift Box', '2018-12-05 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(717, 'Lion Star Cloth Clip (20 Clips)', '2018-12-05 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(718, 'Round Cloth Hanger (13 Clips) ', '2018-12-05 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(719, 'Famous Mini Drawer (4 Set)', '2018-12-05 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(720, 'Function Paper', '2018-12-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(721, 'Little Lion Milky Cookies 200g ', '2018-12-06 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(722, 'Little Lion Batter Carol Cookies 270g', '2018-12-06 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(723, 'Little Lion Batter Carol Cookies 360g', '2018-12-06 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(724, 'Little Lion Ginger 175g', '2018-12-06 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(725, '7up Soft Drink', '2018-12-09 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(726, 'Pepsi Soft Drink 1.5l', '2018-12-09 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(727, 'Pepsi Ginger Beer Soft Drink 500ml', '2018-12-09 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(728, 'Mountain Dew Energy Soft Drink', '2018-12-09 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(729, 'Mountain Dew Energy Soft Drink', '2018-12-09 00:00:00.000000', 1, 16, 1, '2019-05-26 11:00:59.000000'),
(730, 'Mountain Dew Energy Soft Drink', '2018-12-09 00:00:00.000000', 1, 16, 1, '2019-05-26 11:00:59.000000'),
(731, 'Mountain Dew Energy Soft Drink', '2018-12-09 00:00:00.000000', 1, 16, 1, '2019-05-26 11:00:59.000000'),
(732, 'Pepsi Club Soda 500ml', '2018-12-09 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(733, 'Pepsi Club Soda 500ml', '2018-12-09 00:00:00.000000', 1, 16, 1, '2019-05-26 11:00:59.000000'),
(734, 'Rich Life Milk 200ml', '2018-12-10 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(735, 'Cow Brand Pure Butter Ghee 800g', '2018-12-12 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(736, 'Munchee Onion Biscuits 170g', '2018-12-12 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(737, 'Elephant House Fruit & Nut Ice cream 1l', '2018-12-15 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(738, 'LS Feeding Cup GL 34', '2018-12-17 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(739, 'LS Feeding Cup GL 35 With Strow', '2018-12-17 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(740, 'LS Water Bottle ', '2018-12-17 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(741, 'Edinburgh Mayonnaise ', '2018-12-17 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(742, 'Anchor Newdale Milk 180ml', '2018-12-17 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(743, 'Soft Intellect Blocks', '2018-12-17 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(744, 'Multi Functional Food Maker 7PCS', '2018-12-18 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(745, 'Cargils Fruit N Nut Ice Cream 500ml', '2018-12-18 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(746, 'Anchor Drinking Yoghurt 180ml', '2018-12-19 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(747, 'Rich Life Drinking Yoghurt  200ml', '2018-12-19 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(748, 'Red Bull Energy Drink 200ml  ', '2018-12-19 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(749, 'Edinborough Tomato Sauce 405g', '2018-12-19 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(750, 'Nestle Cerelac Infant Cereal with Milk 250g', '2018-12-19 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(751, 'Moti Dana XXL White Basmati Rice 1kg', '2018-12-20 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(752, 'Food Dye Pink 10g', '2018-12-20 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(753, 'Food Dye Green 10g ', '2018-12-20 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(754, 'Food Dye Blood Red 10g', '2018-12-20 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(755, 'Vimal Brand White Coconut 5l', '2018-12-20 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(756, 'Anchor Gold 400g (Fortified Drinking Mix)', '2018-12-22 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(757, 'Sunlight Care Pearls Liquid Detergent', '2018-12-22 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(758, 'Munchee Sun Cracker 135g', '2018-12-22 00:00:00.000000', 1, 16, 1, '2019-05-26 11:00:59.000000'),
(759, 'Munchee Sun Cracker 135g', '2018-12-22 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(760, 'Diamond Dates 1kg', '2018-12-22 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(761, 'Munchee Combo Biscuit 140g', '2018-12-22 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(762, 'Signal Junior Tooth Brush', '2018-12-26 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(763, 'Midland Muthu Samba Rice (Steamed)', '2018-12-29 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(764, 'Lux Promotion (4 Pieces)', '2018-12-29 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(765, 'Munchee Stix Rolled Wafers 55g', '2018-12-29 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(766, 'Munchee Stix Rolled Wafers 55g', '2018-12-29 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(767, 'Anchor PediaPro 400g', '2018-12-29 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(768, 'Anchor PediaPro 200g', '2018-12-29 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(769, 'Munchee Stix Rolled Wafers Chocolate 100g', '2018-12-31 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(770, 'Denta Kid Tooth Brush ', '2018-12-31 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(771, 'Nescafe 1g Small Pack ', '2019-01-02 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(772, 'Asiri Keeri Samba ', '2019-01-02 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(773, 'Potato Mettupalayam', '2019-01-03 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(774, 'Captain Jack Mackerel Tinned Fish 425g', '2019-01-03 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(775, 'Nilam Liquid Blue 75ml', '2019-01-07 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(776, 'Pears Baby Cologne 100ml', '2019-01-09 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(777, 'Cargils Magic Cornetto', '2019-01-09 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(778, 'Cow and Gate Milk Powder Tin 400g ', '2019-01-10 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(779, 'Poori (10 Pieces)', '2019-01-12 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(780, 'Barakath Cookies 300g', '2019-01-12 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(781, 'Maliban Real Temptation Biscuits 90g', '2019-01-13 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(782, 'Clear Shampoo 200ml Ice Cool Menthol', '2019-01-13 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(783, 'NTT Sauce Packet Tomato 15g', '2019-01-14 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(784, 'Asiri Steam Samba Rice', '2019-01-15 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(785, 'Sago (à®šà®µà¯�à®µà®°à®¿à®šà®¿) ', '2019-01-15 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(786, 'Munchee Stix Rolled Wafers Strawberry 100g', '2019-01-15 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(787, 'Munchee Stix Rolled Wafers Vanilla 100g', '2019-01-15 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(788, 'Rubix Cubes', '2019-01-17 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(789, 'Apple Fuji No.1 (Big)', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(790, 'Apple Fuji No.2', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(791, 'Apple Pink Lady (Large)', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(792, 'Apple Pink Lady (Medium)', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(793, 'Apple Red Small', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(794, 'Apple Green Small', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(795, 'Apple Green Large ', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(796, 'Orange ', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(797, 'Grapes Black 100g (Seedless)', '2019-01-17 00:00:00.000000', 1, 24, 1, '2019-05-26 11:00:59.000000'),
(798, 'Grapes Green 100g ', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(799, 'Grapes Red 100g', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(800, 'Guava 1kg  ', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(801, 'Soursop 1kg ( Anoda ) ', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(802, 'Grapes Black (Seedless)', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(803, 'Grapes Green  (Seedless)', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(804, 'Grapes Red', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(805, 'Pears Fruit', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(806, 'Banana Kolikudu', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(807, 'Banana Sugar', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(808, 'Banana Puli', '2019-01-17 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(809, 'Baby Mandarin 1kg', '2019-01-18 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(810, 'Tomato ', '2019-01-18 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(811, 'Green Chilli', '2019-01-18 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(812, 'Green Salad Leaves (Nuwara Eliya)', '2019-01-18 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(813, 'Pumpkin ', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(814, 'Beans ', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(815, 'Carrot (Nuwara Eliya)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(816, 'Bitter gourd (à®ªà®¾à®•à®±à¯�à®•à®¾à®¯à¯�)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(817, 'Cooking Plantain (à®µà®¾à®´à¯ˆà®•à¯�à®•à®¾à®¯à¯�)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(818, 'Cucumber White (à®¤à¯‡à®®à¯�à®ªà®¿à®°à®¿à®•à¯�à®•à', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(819, 'Cucumber Green (à®ªà®šà¯�à®šà¯ˆ  à®¤à¯‡à®®à¯�à®ªà®', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(820, 'Luffa (à®ªà¯€à®•à®™à¯�à®•à®¾à®¯à¯�)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(821, 'Brinjal (à®•à®¤à¯�à®¤à®°à®¿à®•à¯�à®•à®¾à®¯à¯�)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(822, 'Banana Blossom (à®µà®¾à®´à¯ˆà®ªà¯� à®ªà¯‚)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(823, 'Ladies Finger (à®µà¯†à®£à¯�à®Ÿà¯ˆà®•à¯�à®•à®¾à®¯à¯', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(824, 'Leeks (Nuwara Eliya)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(825, 'kohlrabi\r\n(à®¨à¯‹à®•à¯‹à®²à¯�)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(826, 'Broad Beans (à®…à®µà®°à¯ˆà®•à¯�à®•à®¾à®¯à¯�)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(827, 'Beetroot ', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(828, 'Beetroot with Leaves (Nuwara Eliya)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(829, 'Snake Gourd (à®ªà¯�à®Ÿà®²à®™à¯�à®•à®¾à®¯à¯�)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(830, 'Limes (à®¤à¯‡à®šà®¿à®•à¯�à®•à®¾à®¯à¯�)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(831, 'Capsicum (à®•à®°à®¿à®•à¯Šà®šà¯�à®šà®¿à®•à¯�à®•à®¾à', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(832, 'Curry Leaves 01', '2019-01-19 00:00:00.000000', 1, 24, 1, '2019-05-26 11:00:59.000000'),
(833, 'Radish (à®°à®¾à®ªà¯�)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(834, 'Spring Onion ', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(835, 'Ponnagani (à®ªà¯Šà®©à¯�à®©à®¾à®™à¯�à®•à®£à¯�à®£à®¿', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(836, 'Gotu Kola', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(837, 'Breadfruit (Big Size)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(838, 'Napa Cabbage (à®‡à®´à¯ˆ à®•à¯‹à®µà®¾ - Nuwara Eliy', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(839, 'Cabbage (à®•à¯‹à®µà®¾)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(840, 'Cauliflower (à®ªà¯‚ à®•à¯‹à®µà®¾)', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(841, 'Sweet Potato', '2019-01-19 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(842, 'Close Up Toothpaste 40g', '2019-01-19 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(843, 'Red Grapes No.1', '2019-01-20 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(844, 'Maisoor Dhal Jumbo', '2019-01-20 00:00:00.000000', 1, 21, 0, '2019-05-26 11:00:59.000000'),
(845, 'Ritzbury Chocomo 40g', '2019-01-21 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(846, 'Nethra Banana', '2019-01-21 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(847, 'Oliv Oil ', '2019-01-22 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(848, 'Candied Fruits', '2019-01-23 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(849, 'Pineapple ', '2019-01-23 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(850, 'Vimal Vegetable Oil 1l  ', '2019-01-23 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(851, 'Vimal Sunflower Oil ', '2019-01-23 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(852, 'Vimal White Coconut Oil 1l', '2019-01-23 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(853, 'Papaya (pawpaw)', '2019-01-24 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(854, 'Marvel Baby Diapers (4 Pieces)', '2019-01-24 00:00:00.000000', 1, 23, 1, '2019-05-26 11:00:59.000000'),
(855, 'Marvel Baby Diapers (4 Pieces) ', '2019-01-24 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(856, 'Mandarin Large (4 Units)', '2019-01-24 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(857, 'Cargills Vanilla Ice Cream 1l', '2019-01-26 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(858, 'Mandarin Medium (5 Units)', '2019-01-26 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(859, 'Golden Apple', '2019-01-26 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(860, 'Pomegranate (India)', '2019-01-26 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(861, 'Grapes Black', '2019-01-26 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(862, 'Rich Life Fresh Milk 1L', '2019-01-27 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(863, 'Coriander Leaves(Koththamalli) 100g', '2019-01-28 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(864, 'Diamond Tinned Fish 425g', '2019-01-28 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(865, 'Ela Batu', '2019-01-28 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(866, 'Rich Life Yoghurt ', '2019-01-29 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(867, 'Watermelon ', '2019-01-29 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(868, 'Atlas Cool Pen', '2019-01-30 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(869, 'CBL Samaposha 500g', '2019-02-02 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(870, 'Kiwi Fruit 100g', '2019-02-02 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(871, 'Pears Medium Size', '2019-02-04 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(872, 'Mint Green leaves (Pudina Leaves)', '2019-02-04 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(873, 'Butternut Pumpkin (Dubai Pumpkin)', '2019-02-04 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(874, 'Link Samahan 4g', '2019-02-05 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(875, 'Ice Sticks (50 Stickes) ', '2019-02-05 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(876, 'Party Hat Lesser', '2019-02-05 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(877, 'Party Hat (Happy Birthday Hat)', '2019-02-05 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(878, 'Party Hat (Happy Birthday)', '2019-02-05 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(879, 'Ice Sticks Coloured (50 Stickes)', '2019-02-05 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(880, 'Cargils Chocolate Ice Cream 1l', '2019-02-05 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(881, 'Skipping Rope ', '2019-02-05 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(882, 'Skipping Rope (Wood Handle)', '2019-02-05 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(883, 'Nestle Milo Small packet 15g', '2019-02-06 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(884, 'Elephant House Necto 500ml', '2019-02-06 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(885, 'Glitter Tape Roll (10 Rolls)', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(886, 'Flower Candle Small (Plastic)', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(887, 'Flower Candle Large (Plastic)', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(888, 'Party Popper ', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(889, 'Birthday Candles Large (12 Candles)', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(890, 'Birthday Candle ', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(891, 'Panadol Syrup 100ml', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(892, 'Birthday Candle (12 Candles)', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(893, 'Birthday Candle Extra Small (24 Candles)', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(894, 'Non-Stick Baking Paper 5 Metres ', '2019-02-06 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(895, 'Birthday Candle Small', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(896, 'Birthday Candle Letters', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(897, 'Mickey Mouse Gift Bag (10 Pieces)', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(898, 'Snow Spray 50g', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(899, 'Playing Cards', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(900, 'Dora Wall Sticker', '2019-02-06 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(901, 'Winnie The Pooh Bear Wall Sticker', '2019-02-06 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(902, 'Hello Kitty Wall Sticker', '2019-02-06 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(903, 'Hello Kitty Wall Sticker', '2019-02-06 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(904, 'Hello Kitty Wall Sticker', '2019-02-06 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(905, 'Flower With Basket Wall Sticker', '2019-02-06 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(906, 'Scrooge Mcduck Wall Sticker ', '2019-02-06 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(907, 'Butterfly Wall Sticker (4 Pieces 3D)', '2019-02-06 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(908, 'Polyethylene Disposable Gloves 100 Pieces', '2019-02-06 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(909, 'Pull Flower Ribbon 30 Inch', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(910, 'Pull Flower Ribbon Printed 30 Inches', '2019-02-06 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(911, 'Birthday Balloon (10 Pieces)', '2019-02-07 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(912, 'Crepe Paper (12 Piexces)', '2019-02-07 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(913, 'Aluminium Foil 10 Metres', '2019-02-07 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(914, 'Pull Flower Ribbon ', '2019-02-07 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(915, 'Pull Flower Ribbon Glittered', '2019-02-07 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(916, 'Helium Balloon (100 Pieces)', '2019-02-07 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(917, 'Balloon Large (50 Pieces)', '2019-02-07 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(918, 'Artificial Feathers (10 Pieces)', '2019-02-07 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(919, 'Emoji Sticker Card', '2019-02-07 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(920, 'Star Sticker Card (10 Cards)', '2019-02-07 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(921, 'Ritzbury Cooking Chocolate', '2019-02-09 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(922, 'Apple Fuji No 1 (Medium)', '2019-02-09 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(923, 'Apple Red (USA)', '2019-02-09 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(924, 'Wheeled Storage Container 80 Litre ', '2019-02-09 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(925, 'Durian', '2019-02-10 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(926, 'Samandara Banana 1kg', '2019-02-10 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(927, 'Cargills Ice Cream Vanilla and Chocolate Mix 1l', '2019-02-11 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(928, 'Lifebuoy Bady Wash Total 10', '2019-02-12 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(929, 'Comfort Small Packet - Green', '2019-02-19 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(930, 'Drumstick (à®®à¯�à®°à¯�à®™à¯�à®•à¯ˆà®•à¯�à®•à®¾à®¯', '2019-02-20 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(931, 'Wood Apple', '2019-02-23 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(932, 'Maldive Fish Sambal (Maasi Sambal)', '2019-02-25 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(933, 'Little Lion Wafers', '2019-02-25 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(934, 'Poppy Seeds (à®•à®š à®•à®š)', '2019-03-02 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(935, 'Parachute Advanced Coconut Hair Oil', '2019-03-03 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(936, 'Blue Bar Washing Soap', '2019-03-03 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(937, 'Rambutan ', '2019-03-04 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(938, 'Pears Fruit Green (Unit)', '2019-03-04 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(939, 'Gaduguda', '2019-03-06 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(940, 'Gaduguda', '2019-03-06 00:00:00.000000', 1, 24, 1, '2019-05-26 11:00:59.000000'),
(941, 'Banana Emban', '2019-03-06 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(942, 'Yellow Wax Beans (Butter Bonji)', '2019-03-07 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(943, 'Potato Chips 100g', '2019-03-07 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(944, 'Dove Shampoo Hair Fall Rescue ', '2019-03-09 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(945, 'Elephant House Wonder Cone Vanilla', '2019-03-09 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(946, 'Maliban Faluda marie 75g', '2019-03-11 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(947, 'Avocado (Butter Fruit) ', '2019-03-12 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(948, 'Kist sauce Tomato 2l', '2019-03-13 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(949, 'Kotmale Fresh Milk 1l', '2019-03-14 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(950, 'Morgrills Kuraken Flour 500g', '2019-03-16 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(951, 'Ambarella Fruit ', '2019-03-18 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(952, 'Play Mat XS', '2019-03-18 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(953, 'Thermometer', '2019-03-19 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(954, 'Vimal White Coconut Oil 5l', '2019-03-21 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(955, 'Star Spice', '2019-03-23 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(956, 'Nutmeg Flower', '2019-03-23 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(957, 'Barley ', '2019-03-23 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(958, 'Gorakka Fruit', '2019-03-26 00:00:00.000000', 1, 18, 1, '2019-05-26 11:00:59.000000'),
(959, 'Mandarin (3 Units) ', '2019-03-26 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(960, 'Mangosteen Fruit', '2019-03-26 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(961, 'Apple (New Zealand)', '2019-03-27 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(962, 'Appel (New Zealand) Large ', '2019-03-31 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(963, 'Pears Fruit Red (Unit)', '2019-04-01 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(964, 'Sweet Lime (Peni Dodang)', '2019-04-01 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(965, 'Lifebuoy Soap Small', '2019-04-04 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(966, 'Alli White Rice Vermicelli Noodles 350g', '2019-04-06 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(967, 'Dates (Sukkari)', '2019-04-08 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(968, 'Nestle Milo Chocolate Malt Food Drink 180ml', '2019-04-09 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(969, 'Black Pepper Seeds ', '2019-04-09 00:00:00.000000', 1, 18, 0, '2019-05-26 11:00:59.000000'),
(970, 'Apple Red Delicious', '2019-04-11 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(971, 'Elephant House Vanila Ice Cream 2L', '2019-04-13 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(972, 'Ratthi Full Cream MIlk Powder 1kg', '2019-04-13 00:00:00.000000', 1, 13, 1, '2019-05-26 11:00:59.000000'),
(973, 'Maliban Milk Powder ', '2019-04-13 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(974, 'Soorya Samba (Badabath)', '2019-04-14 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(975, 'N Joy Pure White Coconut Oil', '2019-04-14 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(976, 'Elephant House Vanila Ice Cream 1l', '2019-04-15 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(977, 'Table Salt Bundle (20x400g Pack)', '2019-04-16 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(978, 'Sony Battery AA ', '2019-04-18 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(979, 'Elephant House Venila Ice Cream 500ml', '2019-04-21 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(980, 'Maliban Vanilla Cream Wafers 400g', '2019-04-23 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(981, 'Eva (10 Pisces) ', '2019-04-23 00:00:00.000000', 1, 15, 0, '2019-05-26 11:00:59.000000'),
(982, 'Mozzarella Cheese 500g', '2019-04-24 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(983, 'Sanremo Pasta 400g', '2019-04-24 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(984, 'Nipuna Keeri Samba ', '2019-04-27 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(988, 'Edinburgh Oyster Sauce', '2019-04-29 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(989, 'Gingelly Oil 28ml ', '2019-04-29 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(990, 'Minara Atta Flour 1kg', '2019-04-30 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(991, 'Prima Flour 5kg', '2019-04-30 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(992, 'Brooke Bond New Laojee Tea 400g', '2019-05-02 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(993, 'LG Samba Rice ', '2019-05-04 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(994, 'Mango Karuthakolomban', '2019-05-05 00:00:00.000000', 1, 24, 1, '2019-05-26 11:00:59.000000'),
(995, 'G House Table Salt (à®¤à¯‚à®³à¯� à®‰à®ªà¯�à®ªà¯�) ', '2019-05-05 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(996, 'Mortein Refill', '2019-05-06 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(997, 'Himalee Curd 1l', '2019-05-06 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(998, 'Raw Mango ', '2019-05-07 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(999, 'Red Banana', '2019-05-07 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(1000, 'Mango', '2019-05-07 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(1001, 'Falooda Juice Powder', '2019-05-07 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(1002, 'Baby Cheramy Shampoo 200ml', '2019-05-07 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(1003, 'Maliban GEM Biscuit 100g', '2019-05-09 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(1004, 'Mango Karuthakolomban', '2019-05-09 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(1005, 'BSPB Nannary Syrup 750ml', '2019-05-09 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(1006, 'Cargills Chocolate Ice Cream 2l', '2019-05-09 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(1007, 'Kelloggs Corn Flacks ', '2019-05-11 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(1008, 'Elephant House Cream Soda 1l', '2019-05-11 00:00:00.000000', 1, 16, 0, '2019-05-26 11:00:59.000000'),
(1009, 'Elephant House Chocolate Ice Cream 1l', '2019-05-11 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(1011, 'King Coconut (Thembily)', '2019-05-11 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(1012, 'Belli Fruit (à®µà®¿à®²à¯�à®µà®¿à®¤à®¿à®°à®¿à®•à¯�à', '2019-05-12 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(1013, 'Bee honey 50ml', '2019-05-14 00:00:00.000000', 1, 22, 0, '2019-05-26 11:00:59.000000'),
(1014, 'Nipuna Smaba (Badabath)', '2019-05-18 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(1015, 'Curry leaves 100g', '2019-05-18 00:00:00.000000', 1, 24, 0, '2019-05-26 11:00:59.000000'),
(1016, 'Highland Fresh Milk 900ml', '2019-05-19 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(1017, 'Dilshan Curd 1000ml', '2019-05-19 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(1018, 'Jaya Fish Tinned Fish Jack Mackerel  425g', '2019-05-19 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(1019, 'Fresh Chicken ', '2019-05-19 00:00:00.000000', 1, 25, 0, '2019-05-26 11:00:59.000000'),
(1020, 'Fortune Palm Olein Vegetable Oil 3l', '2019-05-19 00:00:00.000000', 1, 19, 0, '2019-05-26 11:00:59.000000'),
(1021, 'Samosa Patti 10 Slices', '2019-05-20 00:00:00.000000', 1, 17, 0, '2019-05-26 11:00:59.000000'),
(1022, 'Feeding bottle Tommee Tippie', '2019-05-20 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000'),
(1023, 'Elephant House Vanila Ice Cream 4L', '2019-05-22 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(1024, 'Comfort Small Packet - Pink', '2019-05-22 00:00:00.000000', 1, 14, 0, '2019-05-26 11:00:59.000000'),
(1025, 'Master Pop Margarine (Lilly Margarine) ', '2019-05-23 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(1026, 'Captain Samba (Badabath)', '2019-05-25 00:00:00.000000', 1, 20, 0, '2019-05-26 11:00:59.000000'),
(1027, 'Highland Vanilla Ice Cream 4l', '2019-05-25 00:00:00.000000', 1, 13, 0, '2019-05-26 11:00:59.000000'),
(1028, 'Baby Cheramy Cologne', '2019-05-25 00:00:00.000000', 1, 23, 0, '2019-05-26 11:00:59.000000');

-- --------------------------------------------------------

--
-- Table structure for table `user_user`
--

CREATE TABLE `user_user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`id`, `title`, `isDelete`, `lastModified`) VALUES
(0, 'No Variant', 0, '2019-05-26 11:01:07.000000'),
(1, 'Weight', 0, '2019-05-26 11:01:07.000000'),
(2, 'Size', 0, '2019-05-26 11:01:07.000000'),
(3, 'Flavor ', 0, '2019-05-26 11:01:07.000000'),
(4, 'Color', 0, '2019-05-26 11:01:07.000000'),
(5, 'Volume ', 0, '2019-05-26 11:01:07.000000'),
(6, 'Thickness  ', 0, '2019-05-26 11:01:07.000000'),
(7, 'Blade', 0, '2019-05-26 11:01:07.000000'),
(8, 'Variants', 0, '2019-05-26 11:01:07.000000'),
(9, 'Variant', 0, '2019-05-26 11:01:07.000000'),
(10, 'Age', 0, '2019-05-26 11:01:07.000000');

-- --------------------------------------------------------

--
-- Table structure for table `variantvalue`
--

CREATE TABLE `variantvalue` (
  `id` int(11) NOT NULL,
  `value` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `lastModified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Brand_image_id_18b38d61_fk_Image_id` (`image_id`);

--
-- Indexes for table `categoryimages`
--
ALTER TABLE `categoryimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryImages_category_id_aad85641_fk_CategoryTree_id` (`category_id`),
  ADD KEY `CategoryImages_image_id_94049d13_fk_Image_id` (`image_id`);

--
-- Indexes for table `categorytree`
--
ALTER TABLE `categorytree`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryTree_parent_id_9cb3cabb_fk_CategoryTree_id` (`parent_id`);

--
-- Indexes for table `descriptiontype`
--
ALTER TABLE `descriptiontype`
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
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyword`
--
ALTER TABLE `keyword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offerproductvendor`
--
ALTER TABLE `offerproductvendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OfferProductVendor_offer_id_82dfb51a_fk_Offer_id` (`offer_id`),
  ADD KEY `OfferProductVendor_product_id_f38942ac_fk_ProductCombinations_id` (`product_id`);

--
-- Indexes for table `productcombinationimages`
--
ALTER TABLE `productcombinationimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductCombinationIm_productCombination_i_418b130b_fk_ProductCo` (`productCombination_id`),
  ADD KEY `ProductCombinationImages_Image_id_e92ec4ba_fk_Image_id` (`Image_id`);

--
-- Indexes for table `productcombinationkeywords`
--
ALTER TABLE `productcombinationkeywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductCombinationKeywords_keyword_id_1ffc37e8_fk_Keyword_id` (`keyword_id`),
  ADD KEY `ProductCombinationKe_productCombination_i_3cd60fe7_fk_ProductCo` (`productCombination_id`);

--
-- Indexes for table `productcombinations`
--
ALTER TABLE `productcombinations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductCombinations_product_id_7309e3e6_fk_Products_id` (`product_id`);

--
-- Indexes for table `productcombinationvalues`
--
ALTER TABLE `productcombinationvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductCombinationVa_productCombination_i_46fe8689_fk_ProductCo` (`productCombination_id`),
  ADD KEY `ProductCombinationValues_value_id_6bce3fc9_fk_VariantValue_id` (`value_id`);

--
-- Indexes for table `productcombinationvendor`
--
ALTER TABLE `productcombinationvendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Products_productcomb_productCombination_i_28f4118c_fk_ProductCo` (`productCombination_id`),
  ADD KEY `Products_productcomb_vendor_id_9fda1439_fk_User_user` (`vendor_id`);

--
-- Indexes for table `productdescriptiontype`
--
ALTER TABLE `productdescriptiontype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductDescriptionTy_descriptionType_id_76aab8b1_fk_Descripti` (`descriptionType_id`),
  ADD KEY `ProductDescriptionType_product_id_48b3b408_fk_Products_id` (`product_id`);

--
-- Indexes for table `productimage`
--
ALTER TABLE `productimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductImage_image_id_b608ff26_fk_Image_id` (`image_id`),
  ADD KEY `ProductImage_product_id_f70724f4_fk_Products_id` (`product_id`);

--
-- Indexes for table `productkeyword`
--
ALTER TABLE `productkeyword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductKeyword_keyword_id_2bb7cc7a_fk_Keyword_id` (`keyword_id`),
  ADD KEY `ProductKeyword_product_id_656aab33_fk_Products_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Products_brand_id_885ad7a3_fk_Brand_id` (`brand_id`),
  ADD KEY `Products_category_id_448621b5_fk_CategoryTree_id` (`category_id`);

--
-- Indexes for table `user_user`
--
ALTER TABLE `user_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variant`
--
ALTER TABLE `variant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variantvalue`
--
ALTER TABLE `variantvalue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `VariantValue_variant_id_759cd5c5_fk_Variant_id` (`variant_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categoryimages`
--
ALTER TABLE `categoryimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorytree`
--
ALTER TABLE `categorytree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `descriptiontype`
--
ALTER TABLE `descriptiontype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keyword`
--
ALTER TABLE `keyword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offerproductvendor`
--
ALTER TABLE `offerproductvendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productcombinationimages`
--
ALTER TABLE `productcombinationimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productcombinationkeywords`
--
ALTER TABLE `productcombinationkeywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productcombinations`
--
ALTER TABLE `productcombinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productcombinationvalues`
--
ALTER TABLE `productcombinationvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productcombinationvendor`
--
ALTER TABLE `productcombinationvendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productdescriptiontype`
--
ALTER TABLE `productdescriptiontype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productimage`
--
ALTER TABLE `productimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productkeyword`
--
ALTER TABLE `productkeyword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1029;

--
-- AUTO_INCREMENT for table `user_user`
--
ALTER TABLE `user_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variant`
--
ALTER TABLE `variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `variantvalue`
--
ALTER TABLE `variantvalue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `brand`
--
ALTER TABLE `brand`
  ADD CONSTRAINT `Brand_image_id_18b38d61_fk_Image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`);

--
-- Constraints for table `categoryimages`
--
ALTER TABLE `categoryimages`
  ADD CONSTRAINT `CategoryImages_category_id_aad85641_fk_CategoryTree_id` FOREIGN KEY (`category_id`) REFERENCES `categorytree` (`id`),
  ADD CONSTRAINT `CategoryImages_image_id_94049d13_fk_Image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`);

--
-- Constraints for table `categorytree`
--
ALTER TABLE `categorytree`
  ADD CONSTRAINT `CategoryTree_parent_id_9cb3cabb_fk_CategoryTree_id` FOREIGN KEY (`parent_id`) REFERENCES `categorytree` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `offerproductvendor`
--
ALTER TABLE `offerproductvendor`
  ADD CONSTRAINT `OfferProductVendor_offer_id_82dfb51a_fk_Offer_id` FOREIGN KEY (`offer_id`) REFERENCES `offer` (`id`),
  ADD CONSTRAINT `OfferProductVendor_product_id_f38942ac_fk_ProductCombinations_id` FOREIGN KEY (`product_id`) REFERENCES `productcombinations` (`id`);

--
-- Constraints for table `productcombinationimages`
--
ALTER TABLE `productcombinationimages`
  ADD CONSTRAINT `ProductCombinationIm_productCombination_i_418b130b_fk_ProductCo` FOREIGN KEY (`productCombination_id`) REFERENCES `productcombinations` (`id`),
  ADD CONSTRAINT `ProductCombinationImages_Image_id_e92ec4ba_fk_Image_id` FOREIGN KEY (`Image_id`) REFERENCES `image` (`id`);

--
-- Constraints for table `productcombinationkeywords`
--
ALTER TABLE `productcombinationkeywords`
  ADD CONSTRAINT `ProductCombinationKe_productCombination_i_3cd60fe7_fk_ProductCo` FOREIGN KEY (`productCombination_id`) REFERENCES `productcombinations` (`id`),
  ADD CONSTRAINT `ProductCombinationKeywords_keyword_id_1ffc37e8_fk_Keyword_id` FOREIGN KEY (`keyword_id`) REFERENCES `keyword` (`id`);

--
-- Constraints for table `productcombinations`
--
ALTER TABLE `productcombinations`
  ADD CONSTRAINT `ProductCombinations_product_id_7309e3e6_fk_Products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `productcombinationvalues`
--
ALTER TABLE `productcombinationvalues`
  ADD CONSTRAINT `ProductCombinationVa_productCombination_i_46fe8689_fk_ProductCo` FOREIGN KEY (`productCombination_id`) REFERENCES `productcombinations` (`id`),
  ADD CONSTRAINT `ProductCombinationValues_value_id_6bce3fc9_fk_VariantValue_id` FOREIGN KEY (`value_id`) REFERENCES `variantvalue` (`id`);

--
-- Constraints for table `productcombinationvendor`
--
ALTER TABLE `productcombinationvendor`
  ADD CONSTRAINT `Products_productcomb_productCombination_i_28f4118c_fk_ProductCo` FOREIGN KEY (`productCombination_id`) REFERENCES `productcombinations` (`id`),
  ADD CONSTRAINT `Products_productcomb_vendor_id_9fda1439_fk_User_user` FOREIGN KEY (`vendor_id`) REFERENCES `user_user` (`id`);

--
-- Constraints for table `productdescriptiontype`
--
ALTER TABLE `productdescriptiontype`
  ADD CONSTRAINT `ProductDescriptionTy_descriptionType_id_76aab8b1_fk_Descripti` FOREIGN KEY (`descriptionType_id`) REFERENCES `descriptiontype` (`id`),
  ADD CONSTRAINT `ProductDescriptionType_product_id_48b3b408_fk_Products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `productimage`
--
ALTER TABLE `productimage`
  ADD CONSTRAINT `ProductImage_image_id_b608ff26_fk_Image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `ProductImage_product_id_f70724f4_fk_Products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `productkeyword`
--
ALTER TABLE `productkeyword`
  ADD CONSTRAINT `ProductKeyword_keyword_id_2bb7cc7a_fk_Keyword_id` FOREIGN KEY (`keyword_id`) REFERENCES `keyword` (`id`),
  ADD CONSTRAINT `ProductKeyword_product_id_656aab33_fk_Products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `Products_brand_id_885ad7a3_fk_Brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `Products_category_id_448621b5_fk_CategoryTree_id` FOREIGN KEY (`category_id`) REFERENCES `categorytree` (`id`);

--
-- Constraints for table `variantvalue`
--
ALTER TABLE `variantvalue`
  ADD CONSTRAINT `VariantValue_variant_id_759cd5c5_fk_Variant_id` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
