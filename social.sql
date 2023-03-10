-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 12, 2023 lúc 01:30 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `social`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `channel`
--

CREATE TABLE `channel` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `group_img` varchar(255) NOT NULL,
  `voice_channel` text NOT NULL,
  `text_channel` text NOT NULL,
  `invite_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `channel`
--

INSERT INTO `channel` (`id`, `name`, `group_img`, `voice_channel`, `text_channel`, `invite_code`) VALUES
(1, 'Web Hust Group 03', 'asset/images/profile_pic/default/BrownDwarf.png', 'Voice Room,Meeting', 'General Chat,Front-end Team,Back-end Team', 6969),
(2, 'Test channel', 'asset/images/profile_pic/default/Circle.png', 'Test channel #1,Test channel #2', 'General Chat,Test channel #1,Test channel #2', 9999);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'hello', 'duc_nguyen_1', 'duc_nguyen_1', '2022-12-28 23:20:52', 'no', 100),
(2, 'hello again', 'duc_nguyen_1', 'adam_warlock', '2022-12-28 23:21:19', 'no', 104),
(3, 'hello', 'duc_nguyen_1', 'ceo_Đức', '2022-12-28 23:26:24', 'no', 99);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(62, 'ceo_Duc', 128),
(63, 'test_user01', 15),
(64, 'test_user01', 14),
(66, 'dai_ca', 16),
(67, 'test_user01', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `from_channel` text NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `from_channel`, `group_id`) VALUES
(1, 'heelooo', 'adam_warlock', 'none', '2022-12-31 22:35:47', 'no', 'no', 0, 'Front-end Team', 1),
(2, 'hello', 'adam_warlock', 'none', '2022-12-31 22:35:54', 'no', 'no', 0, 'General Chat', 1),
(3, 'ok', 'adam_warlock', 'none', '2022-12-31 22:41:34', 'no', 'no', 0, 'Back-end Team', 1),
(5, 'ok', 'dusk_duck', 'none', '2022-12-31 22:58:14', 'no', 'no', 0, 'Test channel #2', 2),
(6, 'ok', 'test_user01', 'none', '2022-12-31 22:58:43', 'no', 'no', 0, 'Test channel #2', 2),
(7, 'huh', 'duc_nguyen_1', 'none', '2022-12-31 23:09:21', 'no', 'no', 0, 'General Chat', 1),
(8, 'not right', 'adam_warlock', 'none', '2022-12-31 23:18:28', 'no', 'no', 0, 'General Chat', 1),
(9, 'why', 'adam_warlock', 'none', '2022-12-31 23:21:38', 'no', 'no', 0, 'General Chat', 1),
(10, 'ok', 'dusk_duck', 'none', '2022-12-31 23:49:21', 'no', 'no', 0, 'General Chat', 2),
(11, 'wut up', 'adam_warlock', 'none', '2023-01-01 00:17:09', 'no', 'no', 0, 'Test channel #1', 2),
(12, 'huh', 'adam_warlock', 'none', '2023-01-01 00:58:46', 'no', 'no', 0, 'General Chat', 2),
(13, 'hello', 'test_user01', 'none', '2023-01-01 10:06:00', 'no', 'no', 0, 'General Chat', 1),
(14, 'ok', 'adam_warlock', 'none', '2023-01-01 10:07:41', 'no', 'no', 1, 'General Chat', 1),
(15, 'ok', 'test_user01', 'none', '2023-01-01 10:21:56', 'no', 'no', 1, 'General Chat', 1),
(16, 'ok', 'adam_warlock', 'none', '2023-01-01 10:23:57', 'no', 'no', 2, 'General Chat', 1),
(17, 'ok', 'adam_warlock', 'none', '2023-01-01 10:35:19', 'no', 'no', 0, 'General Chat', 1),
(18, 'hello', 'test_user01', 'none', '2023-01-01 10:35:36', 'no', 'no', 0, 'General Chat', 1),
(19, 'ok', 'dai_ca', 'none', '2023-01-02 10:33:54', 'no', 'no', 0, 'General Chat', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `users_close` varchar(3) NOT NULL,
  `friend_array` text NOT NULL,
  `group_id` text NOT NULL,
  `online` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `users_close`, `friend_array`, `group_id`, `online`) VALUES
(9, 'Cho', 'Duan', 'cho_duan', 'Masterliaozen@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-10-27', 'asset/images/profile_pic/default/Circle.png', 1, 0, 'no', ',', '0', 0),
(10, 'Duc', 'Nguyen', 'duc_nguyen_1', 'Masterlionfrozen@gmail.com', '050b4c9f2a7a86a78d25ba1cc5b0a752', '2022-10-28', 'asset/images/profile_pic/default/earth.png\r\n', 54, 18, 'no', ',ceo_Duc,adam_warlock,', '1', 1),
(11, 'Banana', 'Bus', 'banana_bus', 'Master@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-10-29', 'asset/images/profile_pic/default/Neptune.png\r\n', 1, 0, 'no', ',', '0', 0),
(12, 'Duan', 'Nguyen', 'duan_nguyen', 'Master5@gmail.com', 'e35cf7b66449df565f93c607d5a81d09', '2022-10-29', 'asset/images/profile_pic/default/BrownDwarf.png', 0, 0, 'no', ',', '0', 0),
(13, 'Thg', 'Baove', 'thg_baove', 'Master54@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-10-29', 'asset/images/profile_pic/default/Jupiter.png', 0, 0, 'no', ',', '0', 0),
(14, 'Dusk', 'Duck', 'dusk_duck', 'Masterlionfrozen12@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-10-29', 'asset/images/profile_pic/default/earth.png', 2, 0, 'no', ',', '2', 1),
(16, 'Ceo', 'Duc', 'ceo_Duc', 'Masterlion@gmail.com', '050b4c9f2a7a86a78d25ba1cc5b0a752', '2022-11-06', 'asset/images/profile_pic/default/Insomnia.png', 40, 8, 'no', ',duc_nguyen_1,', '1', 1),
(17, 'Test', 'User01', 'test_user01', 'Tester1@gmail.com', '050b4c9f2a7a86a78d25ba1cc5b0a752', '2022-11-06', 'asset/images/profile_pic/default/DefaultUser.png', 18, 4, 'no', ',', '1,2', 0),
(18, 'Adam', 'Warlock', 'adam_warlock', 'Adamw3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-05', 'asset/images/profile_pic/default/Laboratory.png', 15, 6, 'no', ',', '1,2', 1),
(24, 'Dai', 'Ca', 'dai_ca', 'Nhuduc12754@gmail.com', '050b4c9f2a7a86a78d25ba1cc5b0a752', '2023-01-01', 'asset/images/profile_pic/default/DefaultUser.png', 1, 0, 'no', ',', '1', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT cho bảng `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
