-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Haz 2025, 12:26:39
-- Sunucu sürümü: 11.3.2-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`) VALUES
(1, 1, 'Sahabiye Mah. Bozantı Cad.'),
(2, 2, 'Gevhernesibe Mah. Tekin Sok.'),
(3, 1, 'Mevlana Mah. Cemil Baba Cad.'),
(6, 1, 'fdgdfgdfgd'),
(7, 6, 'gkjfldkgjfld'),
(8, 2, 'aaa');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_number` varchar(64) NOT NULL,
  `expiry_date` varchar(64) NOT NULL,
  `cvv` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `cards`
--

INSERT INTO `cards` (`id`, `user_id`, `card_number`, `expiry_date`, `cvv`) VALUES
(4, 1, 'MTIzNDU2Nzg5MDEyMzQ1Ng==', 'MDIvMjg=', 'MTcw'),
(5, 1, 'MTIzNDU2MDEyMzQ1NjM0NQ==', 'MDIvMjg=', 'Mjg5'),
(6, 6, 'MTIzNDU2Nzg5MDEyMzQ1Ng==', 'MDIvMjg=', 'MTIz'),
(7, 2, 'MTIzNDU2Nzg5MDEyMzQ1Ng==', 'MTIvMjU=', 'MTIz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_name` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `specification` mediumtext NOT NULL,
  `price` double NOT NULL,
  `options` mediumtext NOT NULL DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `category_name`, `name`, `description`, `specification`, `price`, `options`) VALUES
(1, 'cloth', 'Primark Black T-Shirt (Small)', 'Black plain t-shirt sold by Primark.', '{\"size\":\"S\"}', 4.99, '[1,2,3]'),
(2, 'cloth', 'Primark Black T-Shirt (Medium)', 'Black plain t-shirt sold by Primark.', '{\"size\":\"M\"}', 4.99, '[1,2,3]'),
(3, 'cloth', 'Primark Black T-Shirt (Large)', 'Black plain t-shirt sold by Primark.', '{\"size\":\"L\"}', 4.99, '[1,2,3]'),
(4, 'cloth', 'LC Waikiki Yellow Oversize Hoodie', 'Yellow oversize hoodie made by LC Waikiki in Türkiye.', '{\"color\":\"Yellow\"}', 12.99, '[4,5]'),
(5, 'cloth', 'LC Waikiki Green Oversize Hoodie', 'Green oversize hoodie made by LC Waikiki in Türkiye.', '{\"color\":\"Green\"}', 12.99, '[4,5]'),
(6, 'tech', 'Asus TUF Gaming A15 Laptop', 'Asus gaming laptop', '{\"RAM\":\"16 GB\", \"SSD\":\"512 GB\"}', 1499.99, '{}'),
(7, 'tech', 'Samsung Galaxy S25 Edge', 'Samsung phone device', '{\"OS\":\"Android 15\"}', 749.99, '{}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shop_history`
--

CREATE TABLE `shop_history` (
  `id` int(11) NOT NULL,
  `products` mediumtext NOT NULL DEFAULT '[]',
  `address_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `purchased_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(25) NOT NULL DEFAULT 'Processing',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `shop_history`
--

INSERT INTO `shop_history` (`id`, `products`, `address_id`, `card_id`, `purchased_at`, `status`, `user_id`) VALUES
(1, '[2,4,5,7]', 3, 4, '2025-06-10 18:49:08', 'Processing', 1),
(2, '[4,2,7,6]', 1, 4, '2025-06-10 18:51:37', 'In Delivery', 1),
(3, '[5,6]', 3, 4, '2025-06-10 20:00:34', 'Processing', 1),
(4, '[6,2,3,1]', 1, 4, '2025-06-10 20:02:34', 'Processing', 1),
(5, '[7,6,6]', 6, 5, '2025-06-10 20:14:35', 'Processing', 1),
(6, '[2,7,3,5]', 6, 4, '2025-06-10 20:15:49', 'Processing', 1),
(7, '[5,3,4,7,6]', 6, 5, '2025-06-11 18:20:33', 'Processing', 1),
(8, '[5,3,7,6,5,6,6,7]', 3, 5, '2025-06-11 18:28:11', 'In Delivery', 1),
(9, '[2,3,4]', 6, 4, '2025-06-11 18:29:56', 'Processing', 1),
(10, '[7,6,3,4]', 7, 6, '2025-06-12 06:14:01', 'Processing', 6),
(11, '[3,6,7,2]', 8, 7, '2025-06-12 06:15:34', 'Processing', 2),
(12, '[7,3,5]', 3, 4, '2025-06-12 10:12:06', 'Processing', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(64) NOT NULL,
  `name` varchar(32) NOT NULL,
  `surname` varchar(32) NOT NULL,
  `secret_code` varchar(64) NOT NULL,
  `login_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `surname`, `secret_code`, `login_id`) VALUES
(1, 'yigithankarabel@gmail.com', 'Yiğithan', 'Karabel', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL),
(2, 'burakdursun2005@gmail.com', 'Burak', 'Dursun', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL),
(3, 'muhammedtunc@hotmail.com', 'Muhammed', 'Tunç', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL),
(4, 'yigithan_karabel@outlook.com', 'B�rek', 'Durak', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL),
(5, 'abcdef@gmail.com', 'abc', 'def', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL),
(6, 'mehmetkemaldokur@gmail.com', 'Kemal', 'Dokur', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `shop_history`
--
ALTER TABLE `shop_history`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `shop_history`
--
ALTER TABLE `shop_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
