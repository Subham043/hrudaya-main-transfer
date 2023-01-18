-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 18, 2023 at 11:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrudayaspandana_nuxt`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `quote`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Where there is Love, there God is evident', 'a943a8dd-ae06-4ee5-8c12-4272940662b1-187b3dff165ecada308e20d80f9239cc.jpeg', 2, '2022-12-27 02:46:47', '2022-12-28 02:01:18'),
(3, 'Love all Serve all', '1d59c6d2-48eb-416f-acaa-33f627e6a947-725a6608088d8a1ff42d58e73931c2ad.jpeg', 2, '2022-12-28 02:01:39', '2022-12-28 02:01:39'),
(4, 'Silence is the speech of the Spiritual seeker', 'fc7216a7-bf53-41fc-9faa-13f943e83230-8bb75bf93fc51c03c5e2eccef7bf2376.jpeg', 2, '2022-12-28 02:02:07', '2022-12-28 02:02:07'),
(5, 'There is only one religion, the religion of Love', '3d5ffa60-7ab1-46b9-bc61-83cf61b26971-fdc6cef89cefc4bc615aa3fcecd5fc7c.jpeg', 2, '2022-12-28 02:02:48', '2022-12-28 02:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `banner_videos`
--

CREATE TABLE `banner_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_videos`
--

INSERT INTO `banner_videos` (`id`, `video`, `image`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/embed/3QPp_DlcZpM', '3df33133-e69b-4eda-bc97-08bdb94ce259-6b4940637fc949d0901f87a328aeaf43.jpeg', NULL, '2022-12-27 02:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `crosswords`
--

CREATE TABLE `crosswords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crosswords`
--

INSERT INTO `crosswords` (`id`, `title`, `description`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'Crossword-23rdNov21', 'Theme of today\'s crossword is based on Swamy\'s birthday.', '048d1787-063b-4474-a9c6-e63a9ca68d8f-5d98e0b0e104bb0d41611bf8b34d1c71.png', 2, '2022-12-26 01:28:33', '2022-12-28 03:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trust` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `first_name`, `last_name`, `email`, `phone`, `city`, `state`, `amount`, `pan`, `order_id`, `receipt`, `payment_id`, `trust`, `status`, `created_at`, `updated_at`) VALUES
(7, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_KxhrKu1YFA9wAX', '14cc8fd5-dfc9-4d36-bac8-5ac10d2bf248', NULL, 2, 0, '2022-12-29 05:47:36', '2022-12-29 05:47:36'),
(8, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_KxhsaexNPIIZP9', '0c333cca-92f3-42a0-9b18-ad9c942ac714', 'pay_Kxhsry8CXfJh3N', 2, 1, '2022-12-29 05:48:47', '2022-12-29 05:49:06'),
(9, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_KxhuKxOt93RASq', 'e0f69c78-4190-4bce-859d-6d0b42da219c', 'pay_KxhuasYcmt2fS4', 2, 1, '2022-12-29 05:50:26', '2022-12-29 05:50:45'),
(10, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_Ky1hM4ckkADBIH', 'cbd1fa90-0b83-426c-b0e4-f652965d31e3', 'pay_Ky1iR4Gqr4fymG', 1, 1, '2022-12-30 01:12:01', '2022-12-30 01:13:06'),
(11, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', 'KANPS6850M', 'order_Ky25a9sZnVXpZl', '2d8dbe3f-19a2-483c-baee-ead973bc7fbf', 'pay_Ky25tu6uGV1wh8', 1, 1, '2022-12-30 01:34:57', '2022-12-30 01:35:20'),
(12, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', 'KANPS6850M', 'order_Ky6dBVvxX8Gcur', 'ea7c9835-b349-4bb8-a5d7-040867b5259f', NULL, 1, 0, '2022-12-30 06:01:33', '2022-12-30 06:01:33'),
(13, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', 'KANPS6850M', 'order_Ky6f9ui5ohFE7X', '567ed87a-b15a-4760-b2d5-aa4ebedf054c', 'pay_L01mECjDoBu3IK', 1, 1, '2022-12-30 06:03:25', '2023-01-04 02:34:47'),
(14, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', 'KANPS6850M', 'order_Ky6fTQyBXyeDb3', '4300d491-413c-4211-aaca-ae0f90fd53f2', NULL, 1, 1, '2023-01-03 06:03:42', '2022-12-30 06:03:42'),
(15, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', 'KANPS6850M', 'order_Ky6hIaqOBPbN4w', 'ba69e4ca-3e02-4c76-bf25-ce5e719c1b1b', 'pay_Ky6ha1AeccM2Uo', 1, 1, '2023-01-02 06:05:26', '2022-12-30 06:05:46'),
(16, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '200', NULL, 'order_KzhOCaGUJH3gR3', '08bc713a-24b2-4c59-9f7a-7751c2978457', 'pay_KzhOT6bgToz5Xv', 2, 1, '2023-01-03 06:38:01', '2023-01-03 06:38:20'),
(17, 'subham', 'saha', 'subham.5ine1@gmail.com', '7892156161', 'Bengaluru', 'karnataka', '250', NULL, 'order_KzhSk7ZV1i766P', '6d3144bc-6c21-4242-a6bf-8ba1d03faafa', 'pay_KzhT0xguBDKS2W', 2, 1, '2023-01-03 06:42:19', '2023-01-03 06:42:38'),
(18, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '300', 'KANPS6850M', 'order_L0Nyc8rEhJVQRK', 'e016335c-2c97-4a4d-98cd-26d82c6adc51', 'pay_L0Nyt7Ie4Nj5NH', 1, 1, '2023-01-05 00:17:37', '2023-01-05 00:18:03'),
(19, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0O32Sbr7ceN2H', '9a33562d-7d3c-415d-bb42-ceefc8d413bc', 'pay_L0O3HnjrmKnlIc', 2, 1, '2023-01-05 00:21:48', '2023-01-05 00:22:06'),
(20, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0O5T3CyR3nKk1', 'a1612c8f-7b58-4a68-a546-e5205762036f', 'pay_L0O5igGVzYXf5p', 2, 1, '2023-01-05 00:24:07', '2023-01-05 00:24:27'),
(21, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '2000', NULL, 'order_L0O70RtDBa064O', '61da89c8-308c-41f5-9587-43dee941c745', 'pay_L0O7GhQAOUhFTH', 2, 1, '2023-01-05 00:25:34', '2023-01-05 00:25:53'),
(22, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0OA1Gqdtq8UH6', '1d6aeed4-b527-4a3d-8ebf-ac032f644d48', 'pay_L0OAIpzRpyH9gb', 2, 1, '2023-01-05 00:28:25', '2023-01-05 00:28:45'),
(23, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0OEYmVXfKCPgU', '6d914ff9-bfd0-44f6-9376-faf437310222', 'pay_L0OEnhZZTjv3Wx', 2, 1, '2023-01-05 00:32:43', '2023-01-05 00:33:01'),
(24, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0OG1j9yBiJkfU', '48943b9c-9e95-4868-8822-801db8746f43', 'pay_L0OGJlltOoiMfF', 2, 1, '2023-01-05 00:34:07', '2023-01-05 00:34:27'),
(25, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0OJJMO6eEVgVg', '23072c5c-a826-4965-b9a4-45c8b49bdd1d', 'pay_L0OJf9dsDAohVM', 2, 1, '2023-01-05 00:37:13', '2023-01-05 00:37:37'),
(26, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0Oa2vJo1d7xDN', '6401ff0f-6e96-413e-8dec-5cd6b237e373', 'pay_L0OaGUzrqrxWt6', 2, 1, '2023-01-05 00:53:03', '2023-01-05 00:53:20'),
(27, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0ObXhCRwXGHnT', 'c3fe53bf-8a5a-48f6-9108-9d8b4b861b45', 'pay_L0ObloOa7RXbci', 2, 1, '2023-01-05 00:54:28', '2023-01-05 00:54:47'),
(28, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0OdP4dzRZZfjV', '650af1ad-d2b0-422b-96e8-8a37d46a2724', 'pay_L0OdiEu1eok2Ct', 2, 1, '2023-01-05 00:56:14', '2023-01-05 00:56:37'),
(29, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0QBiQKp38Dj7K', '72297bbf-ebe6-435b-9b6c-785a6fdecf4f', 'pay_L0QC1pAd5xoDMr', 2, 1, '2023-01-05 02:27:24', '2023-01-05 02:27:49'),
(30, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0QnNy13ptoWaf', 'bef84137-3f2b-451a-9628-867cc4af7c52', 'pay_L0QncvW5euzyVI', 2, 1, '2023-01-05 03:03:04', '2023-01-05 03:03:22'),
(31, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0QthP7OJKvJaH', '3f356d5d-e8ec-4807-a434-c8673005e13a', 'pay_L0Qu0ZG8yhNxr3', 2, 1, '2023-01-05 03:09:03', '2023-01-05 03:09:25'),
(32, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0QzSqOarPNV40', '16e7e310-47e5-4472-98e2-e79c20a69226', 'pay_L0QzkHhiSyYreq', 2, 1, '2023-01-05 03:14:31', '2023-01-05 03:14:53'),
(33, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '123', NULL, 'order_L0R2L4GWheiRFX', '021990cc-07c7-401e-9fcf-443d16411292', 'pay_L0R2bT0BrxpitM', 2, 1, '2023-01-05 03:17:15', '2023-01-05 03:17:33'),
(34, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0Ryj6pe0yiDGa', 'bacb09c5-0fb2-476c-8c3f-990a0fc3ab09', 'pay_L0S0NN7o1xuOGl', 2, 1, '2023-01-05 04:12:30', '2023-01-05 04:14:10'),
(35, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0S2lQFUq7HKcZ', '4fab2ff8-7f21-4478-a2f2-dd3e9b71ea37', 'pay_L0S3xkR8IPNdn0', 2, 1, '2023-01-05 04:16:20', '2023-01-05 04:33:42'),
(36, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0S53HkH9resEK', '20aa4aaa-4cba-42cc-aa93-8aeadfe72a99', 'pay_L0S5K07eSzhBm5', 2, 1, '2023-01-05 04:18:29', '2023-01-05 04:18:49'),
(37, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0S7cDSsLrKBU9', '3bf15b68-6183-43bd-ae87-90ace8763550', 'pay_L0S7pIJAEjTVvt', 2, 1, '2023-01-05 04:20:55', '2023-01-05 04:31:28'),
(38, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0S8xxGuSyQLYp', '8f585d27-e61e-4b3a-878e-c89d762161e6', 'pay_L0S9Ff9ZGWoRuO', 2, 1, '2023-01-05 04:22:12', '2023-01-05 04:32:52'),
(39, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0SCsm1ibiYzQ1', '91d152ca-b42a-42e6-a08b-04ceda77c5aa', 'pay_L0SD6FQypu7uio', 2, 1, '2023-01-05 04:25:54', '2023-01-05 04:31:20'),
(40, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '200', NULL, 'order_L0SFMlymZeYreh', '23cdb96b-d838-494f-b97c-49904a9c6403', 'pay_L0SFZsLCd4WihC', 2, 1, '2023-01-05 04:28:15', '2023-01-05 04:33:28'),
(41, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0SNWOx9gVvgO4', '69a4b1a4-e414-4f0e-a8d4-74876a80b778', 'pay_L0SNjtx7Rty0Te', 2, 1, '2023-01-05 04:35:58', '2023-01-05 05:09:34'),
(42, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0SSEEnqEUVjHw', 'd33523f2-3529-4ed7-bf6c-98bde70747c7', 'pay_L0SSUR6TrpNxQl', 2, 1, '2023-01-05 04:40:26', '2023-01-05 05:08:04'),
(43, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0SVXmi8EoPDZK', 'eff94c5d-0243-47ba-aa15-5e9b84949f4f', 'pay_L0SWZ2YKOZG9Uw', 2, 1, '2023-01-05 04:43:34', '2023-01-05 05:05:35'),
(44, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0Sa9Lco9V58ZH', '977c3b8e-5557-4a03-94b6-db09f7a91c0b', 'pay_L0SaPuMSrGRCOX', 2, 1, '2023-01-05 04:47:56', '2023-01-05 05:09:57'),
(45, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0SdBT3EJzpEq4', '125df663-acb4-499a-bcf7-6d86d6df0dc9', 'pay_L0SdS5FLVQsh0s', 2, 1, '2023-01-05 04:50:48', '2023-01-05 05:06:03'),
(46, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0SlJBoaMdex3O', 'a0f4bd74-546d-40dc-afea-eb711b4fd25f', 'pay_L0SlaIY3zeWesG', 2, 1, '2023-01-05 04:58:29', '2023-01-05 05:06:15'),
(47, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0SozjqCsDsfJ0', 'c8a24284-392d-4c5d-a094-05e1cbb45c76', 'pay_L0SpGyaHugIp1n', 2, 1, '2023-01-05 05:01:59', '2023-01-05 05:09:49'),
(48, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', 'KANPS6850M', 'order_L0Srr8uMcFohLz', '9734e179-2a1b-48ae-bd40-5d0f55cf8295', 'pay_L0SsAlkkwGwGb8', 1, 1, '2023-01-05 05:04:41', '2023-01-05 05:05:05'),
(49, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0SxNad15XGPQQ', '4a12d990-f8e2-49ad-bc11-d88938859132', 'pay_L0SxbPVa2CcAuE', 2, 1, '2023-01-05 05:09:55', '2023-01-05 05:10:12'),
(50, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', NULL, 'order_L0SzGWVYZnoyFA', '87b820a5-a996-4ea1-8228-43892c3f707e', 'pay_L0SzUHq1zNZryS', 2, 1, '2023-01-05 05:11:42', '2023-01-05 05:12:06'),
(51, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '1000', NULL, 'order_L0T5w030IgcyP7', 'b90e7f48-f778-4307-8eee-73b089586833', NULL, 2, 0, '2023-01-05 05:18:01', '2023-01-05 05:18:01'),
(52, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '1000', NULL, 'order_L0n9y2F193V70U', '4c11592c-41cd-42af-8b54-66e231f41310', 'pay_L0nAJITWMke6Aj', 2, 1, '2023-01-06 00:55:42', '2023-01-06 00:56:05'),
(53, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '1000', NULL, 'order_L0nBVxqVivrrlE', 'cc884074-5346-47ee-9444-f5365252274e', 'pay_L0nBpwigTZ7tGp', 2, 1, '2023-01-06 00:57:11', '2023-01-06 00:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` tinyint(1) NOT NULL DEFAULT 0,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `subject`, `message`, `attachment`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'test', '<p>test message</p>', 0, '2a29c3d3-e0dc-46ad-9c3e-ca311c0f8413-6b4940637fc949d0901f87a328aeaf43.jpeg', 2, '2022-12-26 01:51:55', '2022-12-26 02:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trust` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `first_name`, `last_name`, `email`, `phone`, `message`, `trust`, `created_at`, `updated_at`) VALUES
(3, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'test message', NULL, '2022-12-17 00:43:31', '2022-12-17 00:43:31'),
(5, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'test message', NULL, '2022-12-17 00:46:34', '2022-12-17 00:46:34'),
(6, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'test message', NULL, '2022-12-17 00:47:17', '2022-12-17 00:47:17'),
(7, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'test message', NULL, '2022-12-17 00:47:40', '2022-12-17 00:47:40'),
(8, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'test message', NULL, '2022-12-17 00:48:19', '2022-12-17 00:48:19'),
(9, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'test message', NULL, '2022-12-17 00:49:29', '2022-12-17 00:49:29'),
(10, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'test message', NULL, '2022-12-17 00:49:51', '2022-12-17 00:49:51'),
(11, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'test message', NULL, '2022-12-17 00:49:55', '2022-12-17 00:49:55'),
(12, 'subhams', 'saha', 'subham.5ine1@gmail.com', '7892156160', 'test message', NULL, '2022-12-17 01:06:42', '2022-12-17 01:06:42'),
(13, 'subhams', 'saha', 'subham.5ine1@gmail.com', '7892156160', 'test message', NULL, '2022-12-17 01:06:42', '2022-12-17 01:06:42'),
(15, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'asdasda', NULL, '2022-12-28 01:00:46', '2022-12-28 01:00:46'),
(16, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'asdasda', NULL, '2022-12-28 01:00:55', '2022-12-28 01:00:55'),
(17, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'asdasda', NULL, '2022-12-28 01:00:56', '2022-12-28 01:00:56'),
(18, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'adsdasd', NULL, '2022-12-28 01:08:41', '2022-12-28 01:08:41'),
(19, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'asdasd', NULL, '2022-12-28 01:09:41', '2022-12-28 01:09:41'),
(20, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'test message', NULL, '2022-12-28 01:13:03', '2022-12-28 01:13:03'),
(21, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'adadasdsd', NULL, '2022-12-28 01:17:03', '2022-12-28 01:17:03'),
(22, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'test message', NULL, '2022-12-30 05:28:06', '2022-12-30 05:28:06'),
(23, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'test message', NULL, '2022-12-30 05:29:57', '2022-12-30 05:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `edate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stime` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etime` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `sdate`, `edate`, `stime`, `etime`, `description1`, `description2`, `description3`, `image`, `category`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'test', 'Tue Jan 03 2023 00:00:00 GMT+0530 (India Standard Time)', 'Thu Jan 05 2023 00:00:00 GMT+0530 (India Standard Time)', NULL, NULL, '<p>test description</p>', NULL, NULL, 'c41bd525-5213-4f0c-91d7-49f1cf0ec8ec-8bb75bf93fc51c03c5e2eccef7bf2376.webp', 'madhava-seva', 0, 2, '2023-01-02 00:37:33', '2023-01-04 06:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `e_hundis`
--

CREATE TABLE `e_hundis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trust` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_hundis`
--

INSERT INTO `e_hundis` (`id`, `first_name`, `last_name`, `email`, `phone`, `city`, `state`, `amount`, `pan`, `trust`, `created_at`, `updated_at`) VALUES
(1, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'bangalore', 'karnataka', '100', 'kanps6850m', 1, '2022-12-30 01:53:49', '2022-12-30 01:59:40'),
(2, 'subham', 'saha', 'subham.5ine@gmail.com', '7892156160', 'Bengaluru', 'karnataka', '100', 'KANPS6850M', 1, '2022-12-30 05:52:49', '2022-12-30 05:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(5, '78b12c51-15a0-4e09-b5d1-a989abcae985', 'database', 'default', '{\"uuid\":\"78b12c51-15a0-4e09-b5d1-a989abcae985\",\"displayName\":\"App\\\\Jobs\\\\SendCustomEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendCustomEmailJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\SendCustomEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:34:\\\"App\\\\Http\\\\Resources\\\\EmailCollection\\\":3:{s:8:\\\"resource\\\";O:16:\\\"App\\\\Models\\\\Email\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"emails\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:2:\\\"id\\\";i:3;s:7:\\\"subject\\\";s:4:\\\"test\\\";s:7:\\\"message\\\";s:19:\\\"<p>test message<\\/p>\\\";s:10:\\\"attachment\\\";i:0;s:5:\\\"image\\\";s:74:\\\"2a29c3d3-e0dc-46ad-9c3e-ca311c0f8413-6b4940637fc949d0901f87a328aeaf43.jpeg\\\";s:7:\\\"user_id\\\";i:2;s:10:\\\"created_at\\\";s:19:\\\"2022-12-26 07:21:55\\\";s:10:\\\"updated_at\\\";s:19:\\\"2022-12-26 07:31:10\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:2:\\\"id\\\";i:3;s:7:\\\"subject\\\";s:4:\\\"test\\\";s:7:\\\"message\\\";s:19:\\\"<p>test message<\\/p>\\\";s:10:\\\"attachment\\\";i:0;s:5:\\\"image\\\";s:74:\\\"2a29c3d3-e0dc-46ad-9c3e-ca311c0f8413-6b4940637fc949d0901f87a328aeaf43.jpeg\\\";s:7:\\\"user_id\\\";i:2;s:10:\\\"created_at\\\";s:19:\\\"2022-12-26 07:21:55\\\";s:10:\\\"updated_at\\\";s:19:\\\"2022-12-26 07:31:10\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:1:{s:10:\\\"attachment\\\";s:7:\\\"boolean\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:7:\\\"subject\\\";i:1;s:7:\\\"message\\\";i:2;s:10:\\\"attachment\\\";i:3;s:5:\\\"image\\\";i:4;s:7:\\\"user_id\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}s:4:\\\"with\\\";a:0:{}s:10:\\\"additional\\\";a:0:{}}s:6:\\\"\\u0000*\\u0000bcc\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;s:23:\\\"sahasubham043@gmail.com\\\";}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}}\"}}', 'TypeError: Symfony\\Component\\Mime\\Email::attachFromPath(): Argument #1 ($path) must be of type string, null given, called in /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Message.php on line 310 and defined in /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/mime/Email.php:336\nStack trace:\n#0 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Message.php(310): Symfony\\Component\\Mime\\Email->attachFromPath(NULL, NULL, NULL)\n#1 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(433): Illuminate\\Mail\\Message->attach(NULL, Array)\n#2 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(210): Illuminate\\Mail\\Mailable->buildAttachments(Object(Illuminate\\Mail\\Message))\n#3 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(267): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}(Object(Illuminate\\Mail\\Message))\n#4 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(211): Illuminate\\Mail\\Mailer->send(\'email.custom\', Array, Object(Closure))\n#5 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#6 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(212): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#7 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(307): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#8 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(253): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\SendCustomEmail))\n#9 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\SendCustomEmail))\n#10 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/app/Jobs/SendCustomEmailJob.php(38): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\SendCustomEmail))\n#11 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendCustomEmailJob->handle()\n#12 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendCustomEmailJob))\n#18 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendCustomEmailJob))\n#19 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendCustomEmailJob), false)\n#21 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendCustomEmailJob))\n#22 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendCustomEmailJob))\n#23 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendCustomEmailJob))\n#25 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(146): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call(Array)\n#37 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(1020): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(312): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2023-01-02 05:56:53'),
(6, '2d85e4df-4acf-477a-a85a-2e89573dff3d', 'database', 'default', '{\"uuid\":\"2d85e4df-4acf-477a-a85a-2e89573dff3d\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"fec7f961-a975-46af-824a-bd3a43d86b83.pdf\\\";}\"}}', 'Error: Class \"App\\Mail\\Attachment\" not found in /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/app/Mail/SendUserDonationEmail.php:66\nStack trace:\n#0 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(1683): App\\Mail\\SendUserDonationEmail->attachments()\n#1 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(1563): Illuminate\\Mail\\Mailable->ensureAttachmentsAreHydrated()\n#2 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(197): Illuminate\\Mail\\Mailable->prepareMailableForDelivery()\n#3 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#4 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(212): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#5 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(307): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#6 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(253): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\SendUserDonationEmail))\n#7 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\SendUserDonationEmail))\n#8 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/app/Jobs/SendUserDonationEmailJob.php(38): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\SendUserDonationEmail))\n#9 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendUserDonationEmailJob->handle()\n#10 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#15 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#16 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#17 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendUserDonationEmailJob), false)\n#19 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#20 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#21 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendUserDonationEmailJob))\n#23 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(146): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call(Array)\n#35 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(1020): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(312): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 {main}', '2023-01-05 00:18:06'),
(7, '742b0df3-6408-4db0-b0e4-c5ea0b63d876', 'database', 'default', '{\"uuid\":\"742b0df3-6408-4db0-b0e4-c5ea0b63d876\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 'ErrorException: Undefined variable $donation in /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/app/Mail/SendUserDonationEmail.php:34\nStack trace:\n#0 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/HandleExceptions.php(268): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Undefined varia...\', \'/Users/js-pro-1...\', 34)\n#1 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/app/Mail/SendUserDonationEmail.php(34): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Undefined varia...\', \'/Users/js-pro-1...\', 34)\n#2 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/app/Jobs/SendUserDonationEmailJob.php(36): App\\Mail\\SendUserDonationEmail->__construct(Object(App\\Models\\Donation))\n#3 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendUserDonationEmailJob->handle()\n#4 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#6 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#7 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#8 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#9 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#10 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#11 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#12 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendUserDonationEmailJob), false)\n#13 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#14 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#15 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendUserDonationEmailJob))\n#17 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#18 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#20 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(146): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#23 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call(Array)\n#29 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(1020): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(312): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2023-01-05 00:22:06'),
(8, '6e23b4ed-5314-43d7-a0af-202dc974ff60', 'database', 'default', '{\"uuid\":\"6e23b4ed-5314-43d7-a0af-202dc974ff60\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 'Error: Class \"App\\Mail\\Attachment\" not found in /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/app/Mail/SendUserDonationEmail.php:77\nStack trace:\n#0 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(1683): App\\Mail\\SendUserDonationEmail->attachments()\n#1 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(1563): Illuminate\\Mail\\Mailable->ensureAttachmentsAreHydrated()\n#2 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(197): Illuminate\\Mail\\Mailable->prepareMailableForDelivery()\n#3 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#4 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(212): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#5 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(307): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#6 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(253): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\SendUserDonationEmail))\n#7 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\SendUserDonationEmail))\n#8 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/app/Jobs/SendUserDonationEmailJob.php(36): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\SendUserDonationEmail))\n#9 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendUserDonationEmailJob->handle()\n#10 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#15 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#16 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#17 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendUserDonationEmailJob), false)\n#19 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#20 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#21 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendUserDonationEmailJob))\n#23 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(146): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call(Array)\n#35 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(1020): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(312): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 {main}', '2023-01-05 00:24:31');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(9, '3d6dac12-f3d2-4a57-8ecb-645eafeb8429', 'database', 'default', '{\"uuid\":\"3d6dac12-f3d2-4a57-8ecb-645eafeb8429\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"ba21c864-b296-4b6b-a30c-fec16cdc7998.pdf\\\";}\"}}', 'BadMethodCallException: Method Illuminate\\Mail\\Mailables\\Attachment::deleteFileAfterSend does not exist. in /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Macroable/Traits/Macroable.php:113\nStack trace:\n#0 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/app/Mail/SendUserDonationEmail.php(70): Illuminate\\Mail\\Attachment->__call(\'deleteFileAfter...\', Array)\n#1 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(1683): App\\Mail\\SendUserDonationEmail->attachments()\n#2 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(1563): Illuminate\\Mail\\Mailable->ensureAttachmentsAreHydrated()\n#3 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(197): Illuminate\\Mail\\Mailable->prepareMailableForDelivery()\n#4 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(212): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#6 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(307): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#7 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(253): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\SendUserDonationEmail))\n#8 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\SendUserDonationEmail))\n#9 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/app/Jobs/SendUserDonationEmailJob.php(38): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\SendUserDonationEmail))\n#10 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendUserDonationEmailJob->handle()\n#11 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#12 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#13 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#14 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#15 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#16 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#17 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#18 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendUserDonationEmailJob), false)\n#20 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#21 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#22 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendUserDonationEmailJob))\n#24 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#25 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#26 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#27 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(146): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#30 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#31 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#32 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#33 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#34 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#35 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call(Array)\n#36 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(1020): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(312): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 {main}', '2023-01-05 00:34:28'),
(10, '4af18323-d271-47c2-8b7d-df3bfafa3d8c', 'database', 'default', '{\"uuid\":\"4af18323-d271-47c2-8b7d-df3bfafa3d8c\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"079c0cc9-6f84-4d6b-b629-b1b7361438b6.pdf\\\";}\"}}', 'BadMethodCallException: Method Illuminate\\Mail\\Mailer::failures does not exist. in /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Macroable/Traits/Macroable.php:113\nStack trace:\n#0 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Mail/MailManager.php(505): Illuminate\\Mail\\Mailer->__call(\'failures\', Array)\n#1 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(338): Illuminate\\Mail\\MailManager->__call(\'failures\', Array)\n#2 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/app/Jobs/SendUserDonationEmailJob.php(40): Illuminate\\Support\\Facades\\Facade::__callStatic(\'failures\', Array)\n#3 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendUserDonationEmailJob->handle()\n#4 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#6 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#7 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#8 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#9 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#10 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#11 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#12 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendUserDonationEmailJob), false)\n#13 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#14 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendUserDonationEmailJob))\n#15 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendUserDonationEmailJob))\n#17 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#18 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#20 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(146): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#23 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call(Array)\n#29 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(1020): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(312): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 /Users/js-pro-11/Desktop/hrudayaspandana/hrudayaspandana-laravel/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2023-01-05 00:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_audios`
--

CREATE TABLE `gallery_audios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `title`, `description`, `image`, `category`, `event_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Food for children', 'Serving breakfast to Government school children', 'cb38f65ee1b7a5a9b9125afdc354d362.JPG', 'Manava Seva', NULL, 2, NULL, NULL),
(3, 'Food for elders', 'Serving lunch at Nandi Grama Vruddashrama', 'c3b25fc95882810a4ab8150cb024f0ea.JPG', 'Manava Seva', NULL, 2, NULL, NULL),
(4, 'Food for elders', 'Serving lunch at Nandi Grama Vruddashrama', 'be8693d7d3183212038d42ac9eebe589.JPG', 'Manava Seva', NULL, 2, NULL, NULL),
(5, 'Saisure for  children', 'Distributing multi-nutrient powder for improving immunity', '9b4c3e2e5d0ac91e0537324a35a5def5.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(6, 'Dussera-2020', 'Lord with all the glory', 'e1eb97cdc1510e2aa58588bdce07c181.JPG', 'Madhava Seva', NULL, 2, NULL, NULL),
(7, 'Shivaratri-2021', 'Rudrabhishekam by youth at PM', '0d1a2d0eb3677f36d2180520b4b135c8.jpg', 'Madhava Seva', NULL, 2, NULL, NULL),
(8, 'Shivaratri-2021', 'Rudrabhishekam to Lord Shiva and Shirdi Baba', '41fb045fefcb55762627e9a32425d1e5.JPG', 'Madhava Seva', NULL, 2, NULL, NULL),
(9, 'Shri Rama Navami-2021', 'Sita Rama kalyanam', '45ce3c6217109e80453021c323d81588.JPG', 'Madhava Seva', NULL, 2, NULL, NULL),
(10, 'Food for children', 'Serving breakfast to Government school children', 'df33f4891d16e2d3e1feb752557f5cc5.JPG', 'Manava Seva', NULL, 2, NULL, NULL),
(11, 'Nandi grama1 - 2021', 'Team HS visited Nandi grama and spent quality time with the inmates.', 'ea959a60116cf77cae93c612f49263d7.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(12, 'Saisure1', 'Team HS visited a Govt school to distribute Saisure powder', '830de33d1e1a63785898b5e0709c187a.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(13, 'Saisure2', 'Team HS visited a Govt school to distribute Saisure powder', '2150c39335acd192e7d405b3ef5b3ff0.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(14, 'Saisure3', 'Team HS visited a Govt school to distribute Saisure powder', '458035a3fcece5d473390059565f5df6.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(15, 'Saisure4', 'Team HS visited a Govt school to distribute Saisure powder', 'b7cd28b7fd1635a1e1bb692de57212e8.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(16, 'Medical Camp1 - 2019', 'Team HS conducted medical camp in different Govt schools', '4fe24552acb4e7dba58dec2207f934f9.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(17, 'Medical Camp2 - 2019', 'Team HS conducted medical camp in different Govt schools', '92197be7e6bf266a25f66be6da52fd68.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(18, 'Medical Camp3 - 2019', 'Team HS conducted medical camp in different Govt schools', 'e5b30dee796e4c9265ccaf71dc972a6e.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(19, 'Medical Camp4 - 2019', 'Team HS conducted medical camp in different Govt schools', 'ac5af9c221d0e2afabbec0f4b799d989.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(20, 'Medical Camp5 - 2019', 'Team HS conducted medical camp in different Govt schools', '3b277c4be488c584effc7b1c2b4adf68.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(21, 'Ashraya Trust1 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', 'd806b18f32aa2c5783fd47a34a4d557e.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(22, 'Ashraya Trust2 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', 'e52ef2c0ff1cdd187095a663c4f67456.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(23, 'Ashraya Trust3 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', '17faf00beddfb1c2fd3b9cd3f551c743.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(24, 'Ashraya Trust4 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', 'ad44ad6aa93545b54c515f9cbf0f489a.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(25, 'Ashraya Trust5 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', '9884cdb82d717512c6ec945a09b4b067.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(26, 'Ashraya Trust6 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', '1f1658a118c443984bc0c5129f58ecd0.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(27, 'Ashraya Trust7 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', 'f65ba2125155d3dde6cc93b67b9f3d4b.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(28, 'Ashraya Trust8 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', '5014e8e02915adaa26a44a06c7f04369.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(29, 'Ashraya Trust9 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', '03e11012e745e4c5108fb46bf73ca67a.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(30, 'Ashraya Trust10 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', 'ca774fd85e7c3a35535b7d50332cc803.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(31, 'Ashraya Trust11 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', '14c117c9b5599d43b1c1f257bdb50b93.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(32, 'Ashraya Trust12 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', '1fa32ef37ffa0d1c4f17813860ae4802.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(33, 'Ashraya Trust13 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', '2a305d00ae62fd9ba04b54fc2c5d4c11.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(34, 'Ashraya Trust14 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', '5b169bbb510693deec99b17ce061bbb1.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(35, 'Ashraya Trust15 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', 'ab7a6a80e62125870065c2db02a9f2e6.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(36, 'Ashraya Trust16 - 2021', 'Team HS is supporting Ashraya Trust with daily milk support,', '46fe7978fda6080bc6b488d8413bc3a5.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(37, 'Nandi grama2 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', '94f5f8259879ebf8199e080687e85a86.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(38, 'Nandi grama3 - 2021', 'Team HS visited Nandi grama and spent quality time with the inmates.', 'b4c11b7027928e11682cae5246beb570.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(39, 'Nandi grama4 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', 'e0fe078cf46d60541f053cd30646651b.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(40, 'Nandi grama5 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', '1d7d0f320c589f6e3231c5e067809ea6.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(41, 'Nandi grama6 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', '983940dcb4f2534fa5c26a7f72b42b23.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(42, 'Nandi grama7 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', '4e2512f21d7232ec1f986d45637c135a.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(43, 'Nandi grama8 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', 'a1c12088e1b5c8b39a7c813aa9585e62.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(44, 'Nandi grama9 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', '762acf774fc9f63c3a968eaa1c873716.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(45, 'Nandi grama10 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', '6dc5d071e06b1e08b6380f0a6cdcba70.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(46, 'Nandi grama11 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', '7e75f3a3d76bab0216b2141301277518.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(47, 'Nandi grama11 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', 'a6c54759108f98f935549b7d0645e38a.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(48, 'Nandi grama12 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', '6f68a36f7998d54fa7100a56a4125767.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(49, 'Nandi grama13 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', '5d2b83e277886e7c555354162ad9b21d.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(50, 'Nandi grama14 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', 'd993fbf526e0ed6642e6653b10aa4e37.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(51, 'Nandi grama15 - 2021', 'Team HS visited Sai Dwarakaamayee Vruddashrama, Nandi grama and spent quality time with the inmates.', '47522e73cb2837657d0adce73eb65125.jpg', 'Manava Seva', NULL, 2, NULL, NULL),
(52, 'test', 'test description', '35199847-7750-42e8-8d9c-c73554c1e197-6b4940637fc949d0901f87a328aeaf43.webp', 'madhava-seva', 2, 2, '2023-01-02 01:46:42', '2023-01-02 01:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_videos`
--

CREATE TABLE `gallery_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_videos`
--

INSERT INTO `gallery_videos` (`id`, `video`, `category`, `event_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'https://www.youtube.com/embed/lFrmj3OEYmU', 'madhava-seva', NULL, 2, '2022-12-28 03:21:31', '2022-12-28 03:21:31'),
(3, 'https://www.youtube.com/embed/lOIiIudRHWA', 'madhava-seva', NULL, 2, '2022-12-28 03:21:50', '2022-12-28 03:21:50'),
(4, 'https://www.youtube.com/embed/qlUCnFPL7Ec', 'madhava-seva', NULL, 2, '2022-12-28 03:22:06', '2022-12-28 03:22:06'),
(5, 'https://www.youtube.com/embed/bEJEXiC_3GM', 'madhava-seva', NULL, 2, '2022-12-28 03:22:31', '2022-12-28 03:22:31'),
(6, 'https://www.youtube.com/embed/tVW3t4cHak8', 'madhava-seva', NULL, 2, '2022-12-28 03:22:47', '2022-12-28 03:22:47'),
(7, 'https://www.youtube.com/embed/KcmKXaX0UwA', 'manava-seva', NULL, 2, '2022-12-28 03:25:29', '2022-12-28 03:25:29'),
(8, 'https://www.youtube.com/embed/qNRyrfMVfbU', 'manava-seva', NULL, 2, '2022-12-28 03:25:44', '2022-12-28 03:25:44'),
(9, 'https://www.youtube.com/embed/QscL4NQ-Py8', 'manava-seva', NULL, 2, '2022-12-28 03:26:05', '2022-12-28 03:26:05'),
(10, 'https://www.youtube.com/embed/ePNGBy6PQLc', 'manava-seva', NULL, 2, '2022-12-28 03:26:20', '2022-12-28 03:26:20'),
(11, 'https://www.youtube.com/embed/CHpwHV4nLRo', 'manava-seva', NULL, 2, '2022-12-28 03:26:41', '2022-12-28 03:26:41'),
(12, 'https://www.youtube.com/embed/gaDHs9ng6o8', 'manava-seva', NULL, 2, '2022-12-28 03:26:55', '2022-12-28 03:26:55'),
(13, 'https://www.youtube.com/embed/tVW3t4cHak8', 'manava-seva', NULL, 2, '2022-12-28 03:27:07', '2022-12-28 03:27:07'),
(14, 'https://www.youtube.com/embed/bVpK0K4NYm0', 'manava-seva', NULL, 2, '2022-12-28 03:27:24', '2022-12-28 03:27:24'),
(15, 'https://www.youtube.com/embed/umaHd3SjPhw', 'manava-seva', NULL, 2, '2022-12-28 03:27:43', '2022-12-28 03:27:43'),
(16, 'https://www.youtube.com/embed/6PUqjU_dRsY', 'manava-seva', NULL, 2, '2022-12-28 03:27:59', '2022-12-28 03:27:59'),
(17, 'https://www.youtube.com/embed/TIqYhi86rho', 'manava-seva', NULL, 2, '2022-12-28 03:28:13', '2022-12-28 03:28:13'),
(18, 'https://www.youtube.com/embed/Jwo7HyeJV6M', 'manava-seva', NULL, 2, '2022-12-28 03:28:27', '2022-12-28 03:28:27'),
(19, 'https://www.youtube.com/embed/QhFUWa-ET44', 'manava-seva', NULL, 2, '2022-12-28 03:28:40', '2022-12-28 03:28:40'),
(20, 'https://www.youtube.com/embed/WwkJoZZ8DJk', 'manava-seva', NULL, 2, '2022-12-28 03:28:57', '2022-12-28 03:28:57'),
(21, 'https://www.youtube.com/embed/fZTcK4ffmN8', 'manava-seva', NULL, 2, '2022-12-28 03:29:17', '2022-12-28 03:29:17'),
(22, 'https://www.youtube.com/embed/Iu1Tf0pupOE', 'manava-seva', NULL, 2, '2022-12-28 03:29:31', '2022-12-28 03:29:31'),
(23, 'https://www.youtube.com/embed/8_AJcfUAm08', 'manava-seva', NULL, 2, '2022-12-28 03:29:46', '2022-12-28 03:29:46'),
(24, 'https://www.youtube.com/embed/9ERNXBcQBgU', 'manava-seva', NULL, 2, '2022-12-28 03:29:59', '2022-12-28 03:29:59'),
(26, 'https://www.youtube.com/embed/3QPp_DlcZpM', 'madhava-seva', 2, 2, '2023-01-02 03:12:34', '2023-01-02 03:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(57, 'default', '{\"uuid\":\"2da61051-0e82-4f5e-a1f5-36e8ed2a3e17\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"0858d731-3dfa-4297-b640-f030c5f75992.pdf\\\";}\"}}', 0, NULL, 1672905470, 1672905470),
(58, 'default', '{\"uuid\":\"b9e0450c-0875-4004-b18d-d0088b26cea2\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672905470, 1672905470),
(59, 'default', '{\"uuid\":\"3e8c0b9f-8201-4e57-ad15-effae8fa76fd\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"f2c61c04-7687-49a1-9f40-a26cff0cb574.pdf\\\";}\"}}', 0, NULL, 1672907603, 1672907603),
(60, 'default', '{\"uuid\":\"5fa6fae8-d3da-4ada-9318-1fc130a3f5fa\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672907603, 1672907603),
(61, 'default', '{\"uuid\":\"1fc40750-fba9-44b1-951c-0bd4e9c3b69a\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"fffd35af-73b6-4969-ab8d-ff082401cf8d.pdf\\\";}\"}}', 0, NULL, 1672907966, 1672907966),
(62, 'default', '{\"uuid\":\"d2c056f6-07bd-42a1-89b3-9309d4b2dc3c\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672907966, 1672907966),
(63, 'default', '{\"uuid\":\"985de566-7f21-4ff4-a8f2-4fb81b65f194\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"748e768a-b2cc-4949-89ec-12c72cc1741b.pdf\\\";}\"}}', 0, NULL, 1672908295, 1672908295),
(64, 'default', '{\"uuid\":\"0c891f4c-0ed0-43fc-8ea5-d0334270303d\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672908295, 1672908295),
(65, 'default', '{\"uuid\":\"4964101d-9aff-4230-875e-6d6c7a89da38\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:33;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"49edcd85-7760-4c8e-938e-9d88ad63dbe1.pdf\\\";}\"}}', 0, NULL, 1672908454, 1672908454),
(66, 'default', '{\"uuid\":\"4520d772-85a7-462e-bd03-0f775260a2f1\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:33;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672908454, 1672908454),
(67, 'default', '{\"uuid\":\"ba6b9a83-016d-4e59-a589-d9af36e2697a\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"49e55a5d-0eb4-4e3d-9378-5311543a823d.pdf\\\";}\"}}', 0, NULL, 1672911851, 1672911851),
(68, 'default', '{\"uuid\":\"b85ba1ab-d471-486e-b0a6-b3ce871c7dc2\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672911851, 1672911851),
(69, 'default', '{\"uuid\":\"38458cc5-b379-4560-ac53-e19d35d8f2c2\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"5ec1bd97-0efb-4f88-a39f-c3d047ce6413.pdf\\\";}\"}}', 0, NULL, 1672912052, 1672912052),
(70, 'default', '{\"uuid\":\"f471ce39-5bd5-49f3-bd04-fd41fb4ffe77\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672912052, 1672912052),
(71, 'default', '{\"uuid\":\"56eff3a7-fdd8-4b18-81d8-7ecaef40c77e\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"1605efa2-1abb-4873-84cc-30d5bcbf3e59.pdf\\\";}\"}}', 0, NULL, 1672912130, 1672912130),
(72, 'default', '{\"uuid\":\"7b236fa0-de23-4484-a823-c51a952e3731\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672912130, 1672912130),
(73, 'default', '{\"uuid\":\"4a6dfca2-9728-420a-95ff-a38febc9118a\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"9efc397c-92eb-4781-81a9-41819c80a44c.pdf\\\";}\"}}', 0, NULL, 1672912274, 1672912274),
(74, 'default', '{\"uuid\":\"afa961b4-83d3-42e2-8074-e88550474c1d\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672912274, 1672912274),
(75, 'default', '{\"uuid\":\"5f4bd6ff-5ee2-4d26-8c7c-d13f6191b3de\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"9baf9083-6e52-4da9-b968-e6c780f07c00.pdf\\\";}\"}}', 0, NULL, 1672912352, 1672912352),
(76, 'default', '{\"uuid\":\"d59e40d4-1ce1-4979-b94c-9538274b84ab\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672912352, 1672912352),
(77, 'default', '{\"uuid\":\"d3e254ad-fa07-408e-9e6e-b754296704eb\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:39;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"a1d206a4-7912-402b-ae95-397543fb910d.pdf\\\";}\"}}', 0, NULL, 1672912571, 1672912571),
(78, 'default', '{\"uuid\":\"33f29853-be50-49d0-8515-d3a6be4c270d\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:39;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672912571, 1672912571),
(79, 'default', '{\"uuid\":\"75ddb8a5-309f-472a-95fe-11c2ef8253a0\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:40;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"0219062f-6aa9-42ed-8503-a7b3fcf9d8ec.pdf\\\";}\"}}', 0, NULL, 1672912712, 1672912712),
(80, 'default', '{\"uuid\":\"a231c978-93b9-4af3-bcbd-b7f2ec9e2e63\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:40;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672912712, 1672912712),
(81, 'default', '{\"uuid\":\"08cd0503-b301-4447-9b57-4db2a74fb538\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendVerificationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672921054, 1672921054),
(82, 'default', '{\"uuid\":\"25aec124-74c5-42d3-91d7-090a6edbc955\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendVerificationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672921194, 1672921194),
(83, 'default', '{\"uuid\":\"637c7d0e-3208-484b-ba6e-f6d7f0924f0d\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendVerificationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672921249, 1672921249),
(84, 'default', '{\"uuid\":\"c2844b76-589d-48b2-821c-cd6319e05922\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendVerificationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672921305, 1672921305),
(85, 'default', '{\"uuid\":\"6efbe1a0-e017-41b7-818f-4b7977352120\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendVerificationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672921363, 1672921363),
(86, 'default', '{\"uuid\":\"deca8c9f-78ab-47bb-99ee-bc70b3be98b3\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendVerificationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672921690, 1672921690),
(87, 'default', '{\"uuid\":\"a73998f0-ea78-4d5b-931f-e7d4a4e5b715\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendVerificationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672921830, 1672921830),
(88, 'default', '{\"uuid\":\"8ea02140-e64f-4425-8f3b-020bc85f4cd8\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendVerificationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672922061, 1672922061),
(89, 'default', '{\"uuid\":\"4eab9ebf-1c5e-4595-b798-447dc26ee2d3\",\"displayName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendVerificationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendVerificationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672922121, 1672922121),
(90, 'default', '{\"uuid\":\"6b1eb176-f7f9-4718-a401-d42461a64469\",\"displayName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendUserDonationEmailJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\SendUserDonationEmailJob\\\":2:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:7:\\\"\\u0000*\\u0000file\\\";s:40:\\\"44775e61-7487-4190-9029-340557667265.pdf\\\";}\"}}', 0, NULL, 1672986367, 1672986367),
(91, 'default', '{\"uuid\":\"4f7e6420-232b-41e6-bcb0-243257509830\",\"displayName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendDonationEmailJob\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\SendDonationEmailJob\\\":1:{s:10:\\\"\\u0000*\\u0000details\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Donation\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1672986367, 1672986367);

-- --------------------------------------------------------

--
-- Table structure for table `literatures`
--

CREATE TABLE `literatures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_pdf` tinyint(1) NOT NULL DEFAULT 0,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `literatures`
--

INSERT INTO `literatures` (`id`, `name`, `image`, `is_pdf`, `file`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'test book', '4121d28e-2453-41db-9a6b-d18fe106f041-Screenshot 2022-12-21 at 6.41.06 PM.png', 0, 'https://google.com', 2, '2022-12-26 00:23:46', '2023-01-04 04:49:26'),
(4, 'test book', '3c685c06-6701-4d5f-9093-d2caf4609920-Screenshot 2022-12-21 at 6.41.06 PM.png', 1, '0afc9cad-dc08-47af-94ed-a7b32824825b-subham-1002 (18).pdf', 2, '2022-12-26 00:24:40', '2022-12-26 00:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `media`, `type`, `created_at`, `updated_at`) VALUES
(3, '1f6a04a8-6201-4882-ad78-98cd82f57b6b-17a3db49999268d9be9d9db7cd738332.jpeg', 1, '2022-12-26 02:13:59', '2022-12-28 03:19:53'),
(4, 'https://www.youtube.com/embed/XnhL8TYsp9w', 2, '2022-12-26 02:29:54', '2022-12-28 03:18:06'),
(5, 'https://www.youtube.com/embed/bVpK0K4NYm0', 2, '2022-12-28 03:18:25', '2022-12-28 03:18:25'),
(6, 'https://www.youtube.com/embed/QscL4NQ-Py8', 2, '2022-12-28 03:18:42', '2022-12-28 03:18:42'),
(7, 'c4896171-5c98-4a11-a28b-5e3ff97511c7-90e7d934c684c8b8d4d0a169840cc747.jpeg', 1, '2022-12-28 03:19:59', '2022-12-28 03:19:59'),
(8, '88dab8d2-c371-4606-881b-81e0a16aef3e-408dadc2d7ed33e946ae7ec45c981357.jpeg', 1, '2022-12-28 03:20:08', '2022-12-28 03:20:08');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_17_053813_enquiries', 2),
(6, '2022_12_17_074148_volunteers', 3),
(7, '2022_12_17_081228_subscriptions', 4),
(8, '2022_12_17_091644_crosswords', 5),
(9, '2022_12_17_095948_emails', 6),
(10, '2022_12_17_103227_literatures', 7),
(12, '2022_12_22_053421_testimonials', 9),
(13, '2022_12_22_060731_medias', 10),
(14, '2022_12_22_065529_banners', 11),
(15, '2022_12_24_052453_gallery_images', 12),
(16, '2022_12_24_054201_gallery_audios', 13),
(17, '2022_12_24_060722_gallery_videos', 13),
(18, '2022_12_24_061920_banner_videos', 14),
(20, '2022_12_24_064035_events', 15),
(22, '2022_12_29_095248_donations', 16),
(23, '2022_12_22_045056_e_hundis', 17),
(24, '2022_12_30_101952_create_jobs_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ebook` tinyint(1) NOT NULL DEFAULT 0,
  `event` tinyint(1) NOT NULL DEFAULT 0,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `blog` tinyint(1) NOT NULL DEFAULT 0,
  `crossword` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `name`, `email`, `phone`, `ebook`, `event`, `newsletter`, `blog`, `crossword`, `created_at`, `updated_at`) VALUES
(3, 'testing', 'sahasubham043@gmail.com', '7892156160', 1, 1, 0, 1, 0, '2022-12-24 05:51:07', '2022-12-24 06:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `testimonial` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `testimonial`, `type`, `created_at`, `updated_at`) VALUES
(3, 'The food was really authentic. Initially I was hesitant to fill up the form and take the service but now am overwhelmed with the service we have been given from your team.', 1, '2022-12-26 02:53:34', '2022-12-28 03:10:01'),
(4, 'Special thanks to all those people who delivered us food even in tough weather and working conditions to make sure we’re fed the food. The food delivered by them was a very appetizing one and every day they used to add a note \"Get Well Soon\" which always made our day. I would once again like to thank all the trustee members from the bottom of my heart for supporting us.', 1, '2022-12-28 03:10:12', '2022-12-28 03:10:12'),
(5, 'They provided assistance with not just food but with any other problem we were facing and that had made us all spellbound. We are really thankful for such wonderful gestures, you have provided to us during these difficult times. You are the live example of prevailing humanity and modesty in the present world.', 1, '2022-12-28 03:10:25', '2022-12-28 03:10:25'),
(6, 'https://www.youtube.com/embed/aQYMhU1iu0g', 2, '2022-12-28 03:10:55', '2022-12-28 03:10:55'),
(7, 'https://www.youtube.com/embed/FQLvlGRRSvo', 2, '2022-12-28 03:11:09', '2022-12-28 03:11:09'),
(8, 'https://www.youtube.com/embed/cxT-8QB6uTU', 2, '2022-12-28 03:11:26', '2022-12-28 03:11:26'),
(9, 'https://www.youtube.com/embed/ePNGBy6PQLc', 2, '2022-12-28 03:11:41', '2022-12-28 03:11:41'),
(10, 'https://www.youtube.com/embed/KcmKXaX0UwA', 2, '2022-12-28 03:11:56', '2022-12-28 03:11:56'),
(11, 'https://www.youtube.com/embed/qNRyrfMVfbU', 2, '2022-12-28 03:12:13', '2022-12-28 03:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` int(11) NOT NULL DEFAULT 2,
  `status` int(11) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `userType`, `status`, `email_verified_at`, `password`, `otp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'subham', 'saha', 'subham.5ine2@gmail.com', '7892156162', 2, 0, NULL, '$2y$10$HQnZNWVAvydK/e1MtbXCT.FdpBAeKJg4oY.ZaefcW34/NshDq4hha', '9393', NULL, '2022-12-16 00:50:24', '2022-12-16 00:50:24'),
(2, 'subhams', 'saha', 'subham.5ine@gmail.com', '7892156160', 1, 1, '2022-12-16 02:58:11', '$2y$10$rYcC8zyHgtPjFBZRf6G/oOklf4hO1Bk1izGLOmu0vWdu2YbLITHTW', '2436', NULL, '2022-12-16 01:59:23', '2022-12-28 00:28:31'),
(12, 'subham', 'saha', 'subham.5ine3@gmail.com', '7892156163', 2, 0, NULL, '$2y$10$SaGYhdflDRpNKgv/SECKV.SQwXZKkO0Zy8wAzYsz7PrtqCidPlzdm', '8107', NULL, '2022-12-30 03:11:24', '2022-12-30 03:11:24'),
(14, 'subham', 'saha', 'subham.5ine4@gmail.com', '7892156164', 2, 1, '2022-12-30 03:36:40', '$2y$10$VuLUN/Yihwp337bDQ/gO8uEBzACZ/7NoIv64PgAzmd.YgAnfmdEMa', '3213', NULL, '2022-12-30 03:30:02', '2022-12-30 03:42:43'),
(16, 'subham', 'saha', 'subham.5ine1@gmail.com', '7892156161', 2, 1, '2022-12-30 04:58:45', '$2y$10$Z/TImM.Wzua.gg/K1pfL4ujwcH.hXRGQWy78ankhHH.Al2LL3K2Ya', '2162', NULL, '2022-12-30 04:50:11', '2022-12-30 05:05:12'),
(17, 'subham', 'saha', 'subham.5ine8@gmail.com', '7892156168', 2, 2, '2023-01-05 06:47:57', '$2y$10$hUCw4xo2ZfGmgiP7n6dGEOi3.1WQgENKtbkp2I15JKO2s1sw2SMqu', '8300', NULL, '2023-01-05 06:47:34', '2023-01-05 06:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`, `first_name`, `last_name`, `aadhar`, `email`, `phone`, `address`, `interest`, `created_at`, `updated_at`) VALUES
(4, 'subham', 'saha', '1234567890', 'subham.5ine@gmail.com', '7892156160', 'test address', 'test interest', '2022-12-30 05:40:59', '2022-12-30 05:40:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_videos`
--
ALTER TABLE `banner_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crosswords`
--
ALTER TABLE `crosswords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_hundis`
--
ALTER TABLE `e_hundis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gallery_audios`
--
ALTER TABLE `gallery_audios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_videos`
--
ALTER TABLE `gallery_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `literatures`
--
ALTER TABLE `literatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_email_unique` (`email`),
  ADD UNIQUE KEY `subscriptions_phone_unique` (`phone`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `volunteers_email_unique` (`email`),
  ADD UNIQUE KEY `volunteers_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banner_videos`
--
ALTER TABLE `banner_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crosswords`
--
ALTER TABLE `crosswords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `e_hundis`
--
ALTER TABLE `e_hundis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gallery_audios`
--
ALTER TABLE `gallery_audios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `gallery_videos`
--
ALTER TABLE `gallery_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `literatures`
--
ALTER TABLE `literatures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
