-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 23, 2022 lúc 12:09 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project2db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '12345'),
(2, 'Dong', 'tranxuandonghy@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `short_desc` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `long_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `short_desc`, `long_desc`) VALUES
(7, 'Dessert', 'This is menu dessert', 'Sweet food at the end of the meal'),
(8, 'Drink', 'This is menu drink', ''),
(9, 'Kid', 'This is menu kid.', ''),
(10, 'Main Course', ' This is menu main course.', ''),
(11, 'Vegetarian', 'This is menu vegetarian.', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food`
--

CREATE TABLE `food` (
  `id` int(20) NOT NULL,
  `cat_id` int(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `description` varchar(500) NOT NULL,
  `imageUrl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `food`
--

INSERT INTO `food` (`id`, `cat_id`, `fname`, `price`, `description`, `imageUrl`) VALUES
(1, 7, 'Kem tươi 2 tầng', 29000, 'Phủ lên trên 1 chút Chocolate, kem tươi hai tầng mềm, mịn, không quá ngọt phù hợp sau những bữa ăn nhẹ.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgpdxQr-CNOpvBqNwB_8fd14Zj79fPxu5VPg&usqp=CAU'),
(2, 7, 'Strawberry Nutella', 50000, 'Dâu tây được phủ Chocolate và hạt phỉ. Còn điều gì đáng mong đợi hơn một món ăn nhẹ nhàng, ngọt ngào, say đắm trong cuối bữa ăn.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk23Une8jPTrBm4FWy8s51oS2cVo0AX1F0Mw&usqp=CAU'),
(3, 8, 'Aquafina', 15000, 'Thanh khiết hương vị thiên nhiên.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxhjCSXAPgNP151NZOoJMhT7z_3de6JZGzPw&usqp=CAU'),
(4, 8, 'Cocacola', 15000, 'Cocacola cho mọi nhà', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnDbiGYxK_vvkFI08AlGMQMl8W4jFhF-iuHA&usqp=CAU'),
(5, 9, 'Mac N Chese', 55000, 'Mì ống kem gọi một thứ gì đó giàu tinh bột như nút tỏi, nhưng chúng tôi cũng có những món yêu thích như sốt táo, khoai tây chiên, trái cây, rau và xà lách. Điều đó có nghĩa là bạn chắc chắn sẽ tìm được thứ gì đó không chỉ ngon mà còn đủ lành mạnh để bạn có thể vui vẻ cho những đứa trẻ trong bữa tiệc của mình ', 'https://cloudfront.bjsrestaurants.com/img_5c49e9348931a3.17252647_Kids%20Mac%20N%20Cheese_Web.jpg'),
(6, 9, 'Chicken Tenders', 39000, 'Những miếng gà ngon ngọt được chiên giòn đến độ giòn và dùng kèm với nước sốt trang trại kem hoặc sốt BBQ thơm lừng để chấm', 'https://cloudfront.bjsrestaurants.com/img_5c49e68104c2b9.30306587_Kids%20Chicken%20Tenders_Web.jpg'),
(7, 10, 'Pizza thập cẩm', 31000, 'Là món ăn được mọi người yêu thích. Đặc biệt bánh pizza vị thịt nướng BBQ vô cùng khác biệt so với các loại bánh pizza khác. Thông thường khẩu vị của người Hàn Quốc rất hợp với người Việt, cả cách chế biến cũng mang lại điều thú vị riêng biệt\n- Pizza này rất phù hợp để nướng chảo vì toàn bộ topping đã được làm chín sẵn. Pizza nướng chảo sẽ tiện hơn lợi hơn cho các mẹ mà vẫn giữ nguyên hương vị, ngon không kém nướng lò.\n- Tất cả là nhờ bí quyết độc quyền của Ottogi khiến vỏ bánh mềm, thơm nức mũi', 'https://tse1.mm.bing.net/th?id=OIP.Hk_8DGzWZud9hZZ35WTgnQHaEo&pid=Api&P=0&w=276&h=172'),
(8, 10, 'Pizza cá hồi', 39000, 'Siêu phẩm mùa hè món Pizza cá hồi hun khói cực kì hấp dẫn, sự kết hợp này cũng khá mới mẻ trong làng pizza. Một phần pizza cá hồi hun khói sẽ được phủ một lớp cheese béo ngậy./nPhần nhân Pizza sẽ gồm có cá hồi xông khói tẩm ướt vị đậm đà một xíu, thịt cá ngậy hơi beo béo nữa. Thêm các loại gia vị rau củ giúp trung hoà lại hương vị ăn đỡ ngấy nè. Đế bánh mỏng, thơm cắn một miếng vẫn giòn rụm.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdjK3C1VUwNb5fCfDOnKdw3GAWAxQsCkNWnw&usqp=CAU'),
(9, 11, 'Miến trộn Hàn Quốc', 29000, 'Sợi miến dai, rau củ ngọt tươi, giòn mát lại thêm thịt bò nóng hổi, đậm đà.', 'https://khamphamonngon.com/wp-content/uploads/2021/06/cach-lam-mien-tron-han-quoc.jpeg'),
(10, 11, 'Xíu mại chay', 19000, 'Từng viên xíu mại với màu sắc bắt mắt, mềm dẻo, thơm nồng', 'https://hapivegan.com/wp-content/uploads/2018/04/Xiu-mai-chay.jpg.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `users_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `name`, `email`, `address`, `phone`, `timestamp`) VALUES
(2, '', 'Trần Xuân Đồng', 'tranxuandonghy@gmail.com', 'sdas', '2', '2022-07-22 23:30:26'),
(3, '', 'Đồng', 'abc@gmail.com', 'q', '0388526678', '2022-07-22 23:51:59'),
(4, '', 'Đồng', 'abc@gmail.com', 'q', '0388526678', '2022-07-23 03:52:08'),
(5, '', 'Trần Xuân Đồng', 'tranxuandonghy@gmail.com', 'sdas', '0388526788', '2022-07-23 03:52:24'),
(6, '', 'Trần Xuân Đồng', 'tranxuandonghy@gmail.com', 'sdas', '0388526788', '2022-07-23 03:53:42'),
(7, '', 'Trần Xuân Đồng', 'tranxuandonghy@gmail.com', 'sdas', '0388526788', '2022-07-23 03:54:35'),
(8, '', 'Trần Xuân Đồng', 'tranxuandonghy@gmail.com', 'sdas', '0388526788', '2022-07-23 03:55:51'),
(9, '', 'Trần Xuân Đồng', 'tranxuandonghy@gmail.com', 'sdas', '0388526788', '2022-07-23 03:57:02'),
(10, '', 'Trần Xuân Đồng', 'tranxuandonghy@gmail.com', 'sdas', '0388526788', '2022-07-23 03:57:05'),
(11, '', 'Trần Xuân Đồng', 'tranxuandonghy@gmail.com', 'sdas', '0388526788', '2022-07-23 03:57:25'),
(12, '', 'abc', 'tranxuandonghy@gmail.com', 'SA', '+0 (388) 526-678', '2022-07-23 03:58:32'),
(13, '', 'gg', 'ac@gmail.com', '12', '01', '2022-07-23 03:59:53'),
(14, '', '123', 'tra@gmail.com', '32', '2', '2022-07-23 04:19:33'),
(15, '', '123', 'tra@gmail.com', '32', '2', '2022-07-23 04:21:16'),
(16, '', 'python', 'abc@gmail.com', 'sdas', '01', '2022-07-23 04:21:27'),
(17, '', 'tho', 'abc@gmail.com', '12', '01', '2022-07-23 04:22:34'),
(18, '', 'tho', 'abc@gmail.com', '12', '01', '2022-07-23 04:29:05'),
(19, '', 'tho', 'abc@gmail.com', '12', '01', '2022-07-23 04:30:19'),
(20, '', 'xyz', 'abc@gmail.com', 'sdas', '0388526678', '2022-07-23 04:30:50'),
(21, '', 'gg', 'abc@gmail.com', 'sdas', '+0 (388) 526-678', '2022-07-23 04:32:16'),
(22, '1', 'gg', 'abc@gmail.com', 'sdas', '+0 (388) 526-678', '2022-07-23 04:34:52'),
(23, '1', 'gg', 'dtranxuan72@gmail.com', 'SA', '0388526788', '2022-07-23 04:35:11'),
(24, '1', 'gg', 'dtranxuan72@gmail.com', 'SA', '0388526788', '2022-07-23 04:37:57'),
(25, '1', 'Trần Xuân Đồng', 'abc@gmail.com', '1', '2', '2022-07-23 04:40:09'),
(26, '1', 'Trần Xuân Đồng', 'dtranxuan72@gmail.com', '12', '2', '2022-07-23 05:13:29'),
(27, '1', 'az', 'abc@gmail.com', 'az', 'az', '2022-07-23 05:14:25'),
(28, '', '', '', '', '', '0000-00-00 00:00:00'),
(29, '1', 'az', 'abc@gmail.com', 'az', 'az', '2022-07-23 05:44:25'),
(30, '1', 'az', 'abc@gmail.com', 'az', 'az', '2022-07-23 09:57:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `food_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(50) NOT NULL,
  `price` int(20) NOT NULL,
  `createAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `food_id`, `quantity`, `price`, `createAt`) VALUES
(1, '4', '3', 1, 15000, '2022-07-22 20:52:08'),
(2, '4', '2', 1, 50000, '2022-07-22 20:52:08'),
(3, '5', '3', 1, 15000, '2022-07-22 20:52:24'),
(4, '5', '2', 1, 50000, '2022-07-22 20:52:24'),
(5, '6', '3', 1, 15000, '2022-07-22 20:53:42'),
(6, '6', '2', 1, 50000, '2022-07-22 20:53:42'),
(7, '14', '2', 1, 50000, '2022-07-22 21:19:33'),
(8, '15', '2', 1, 50000, '2022-07-22 21:21:16'),
(9, '16', '2', 1, 50000, '2022-07-22 21:21:27'),
(10, '17', '2', 3, 50000, '2022-07-22 21:22:34'),
(11, '17', '1', 1, 29000, '2022-07-22 21:22:34'),
(12, '18', '2', 3, 50000, '2022-07-22 21:29:05'),
(13, '18', '1', 1, 29000, '2022-07-22 21:29:05'),
(14, '19', '2', 3, 50000, '2022-07-22 21:30:19'),
(15, '19', '1', 1, 29000, '2022-07-22 21:30:19'),
(16, '21', '3', 4, 15000, '2022-07-22 21:32:16'),
(17, '22', '3', 4, 15000, '2022-07-22 21:34:52'),
(18, '23', '3', 2, 15000, '2022-07-22 21:35:11'),
(19, '24', '3', 2, 15000, '2022-07-22 21:37:57'),
(20, '25', '3', 1, 15000, '2022-07-22 21:40:09'),
(21, '25', '4', 1, 15000, '2022-07-22 21:40:09'),
(22, '25', '8', 1, 39000, '2022-07-22 21:40:09'),
(23, '26', '3', 1, 15000, '2022-07-22 22:13:29'),
(24, '26', '4', 1, 15000, '2022-07-22 22:13:29'),
(25, '26', '8', 1, 39000, '2022-07-22 22:13:29'),
(26, '27', '3', 2, 15000, '2022-07-22 22:14:25'),
(27, '27', '4', 1, 15000, '2022-07-22 22:14:25'),
(28, '27', '8', 1, 39000, '2022-07-22 22:14:25'),
(29, '29', '3', 2, 15000, '2022-07-22 22:44:25'),
(30, '29', '4', 1, 15000, '2022-07-22 22:44:25'),
(31, '29', '8', 1, 39000, '2022-07-22 22:44:25'),
(32, '30', '3', 2, 15000, '2022-07-23 02:57:36'),
(33, '30', '4', 1, 15000, '2022-07-23 02:57:36'),
(34, '30', '8', 1, 39000, '2022-07-23 02:57:36'),
(35, '0', '3', 2, 15000, '2022-07-23 03:34:52'),
(36, '0', '4', 1, 15000, '2022-07-23 03:34:52'),
(37, '0', '8', 1, 39000, '2022-07-23 03:34:52'),
(38, '0', '3', 3, 15000, '2022-07-23 05:01:06'),
(39, '0', '2', 2, 50000, '2022-07-23 05:01:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `timestamp`) VALUES
(3, 'Tran Xuan Dong', 'tranxuandonghy@gmail.com', '123456', '0000-00-00 00:00:00'),
(4, 'abc', '123@gmail.com', '123', NULL),
(5, 'asd', 'xzc@gmail.com', '123', '0000-00-00 00:00:00'),
(6, 'SSS', 'a@gmail.com', '123', '0000-00-00 00:00:00'),
(7, 'dang', 'nguyen@gmail.com', '1234', '0000-00-00 00:00:00'),
(8, 'a', 'abc@gmail.com', '123', '0000-00-00 00:00:00'),
(9, 'abc', '1@gmail.com', '123', '0000-00-00 00:00:00'),
(10, 'abc', '12@gmail.com', '12', '0000-00-00 00:00:00'),
(11, '123', 'ad@gmail.com', '123', '0000-00-00 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
