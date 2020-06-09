-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 04, 2020 lúc 09:41 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thitructuyen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `id_cauhoi` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `a` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `b` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `c` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `d` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dapandung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_loaich` int(11) DEFAULT NULL,
  `id_mucdo` int(11) DEFAULT NULL,
  `id_khoi` int(11) DEFAULT NULL,
  `id_mh` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cauhoi`
--

INSERT INTO `cauhoi` (`id_cauhoi`, `noidung`, `hinhanh`, `a`, `b`, `c`, `d`, `dapandung`, `id_loaich`, `id_mucdo`, `id_khoi`, `id_mh`, `created_at`, `updated_at`) VALUES
(1, 'How do you feel?', 'cuoi.jpg', 'I am good', 'bad', 'dont know', 'happy', 'A', 3, 1, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(2, 'A .......... knit community is the one in which relationships are very close.', NULL, 'close', 'closely', 'tightly', 'ugly', 'B', 2, 1, 1, 3, '2020-05-23 13:38:16', '2020-05-23 13:38:16'),
(3, 'Mr. Brown is bored with doing the ................ chores.', NULL, 'household', 'domestic', 'housework', 'table', 'D', 1, 1, 1, 3, '2020-05-23 13:55:52', '2020-05-23 13:55:52'),
(4, 'There has been a shift of ................. from manufacturing to service industries.', NULL, 'change', 'alteration', 'emphasis', 'movement', 'A', 1, 3, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(5, 'There was a wealth of .................... evidence.', NULL, 'supportive', 'support', 'supported', 'supporting', 'A', 1, 3, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(11, '<p>What are you doing?</p>', NULL, '<p>False</p>', '<p>True</p>', NULL, NULL, 'A', 4, 3, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(40, 'He ...................... on business yesterday', '', 'went', 'goes', 'go        ', 'going', 'A', 1, 1, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(41, '<p>Tom likes dancing, but Mike......................</p>', '', '<p>doesn&#39;t</p>', '<p>did&nbsp;</p>', '<p>do</p>', '<p>does not</p>', 'A', 2, 2, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(42, ' Listen! Somebody......................for help.', '', 'are screaming', 'scream', 'is screaming', 'has screamed', 'A', 1, 3, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(43, ' Waiter! There......................forks on this table.', '', 'are not some ', 'isn’t any', 'are not any', 'are some', 'A', 1, 2, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(44, 'I have a test tomorrow, so I......................sit up late tonight to study.', '', 'will have to', 'can have to', 'have', 'have to', 'A', 1, 2, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(45, 'An island on which......................is called a deserted island.', NULL, 'no people', 'no peoples live', 'no people live', 'people are living', 'A', 1, 2, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(46, 'We wondered who......................to pay for the broken window.', NULL, 'is going ', 'was going', 'have', 'would', 'A', 2, 1, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(47, 'Linda......................tie her shoes when she was only 3 years old', NULL, 'knew to', 'knew how to', 'could to', 'may', 'A', 3, 3, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(48, '<p>I ..... to do homework.</p>', '', '<p>want</p>', '<p>do</p>', '<p>know</p>', '<p>All are correct</p>', 'A', 1, 1, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(51, '<p>What is this season?</p>', 'TOOE_tusach.jpg', '<p>Spring</p>', '<p>Summer</p>', '<p>autumn</p>', '<p>Winter</p>', 'A', 1, 1, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(52, 'He ...................... on business yesterday', 'a.jpg', 'went', 'goes', 'go        ', 'going', 'A', 1, 1, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(53, 'Tom doesn\'t like dancing, but Mike......................', 'a.jpg', 'does', 'did ', 'do', 'doesn\'t', 'A', 1, 2, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(54, ' Listen! Somebody......................for help.', 'a.jpg', 'are screaming', 'scream', 'is screaming', 'has screamed', 'A', 1, 3, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(55, ' Waiter! There......................forks on this table.', 'a.jpg', 'are not some ', 'isn’t any', 'are not any', 'are some', 'A', 1, 1, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(56, 'I have a test tomorrow, so I......................sit up late tonight to study.', 'a.jpg', 'will have to', 'can have to', 'have', 'have to', 'A', 1, 2, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(57, 'An island on which......................is called a deserted island.', NULL, 'no people', 'no peoples live', 'no people live', 'people are living', 'A', 1, 1, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(58, 'We wondered who......................to pay for the broken window.', NULL, 'is going ', 'was going', 'have', 'would', 'A', 2, 1, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(59, 'Linda......................tie her shoes when she was only 3 years old', NULL, 'knew to', 'knew how to', 'could to', 'may', 'A', 3, 1, 1, 3, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(60, '<p>C&ocirc;ng thức của vận tốc l&agrave; ?</p>', '', '<p>v=s/t</p>', '<p>v=s*t</p>', '<p>v=s-t</p>', '<p>v=s+t</p>', 'A', 3, 3, 1, 2, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(61, '<p>&nbsp;X + Y = ?&nbsp; nếu x=7 v&agrave; Y =9&nbsp;</p>', '', '<p>8</p>', '<p>7</p>', '<p>9</p>', '<p>15</p>', 'A', 2, 3, 1, 1, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(62, '<p>Nếu trời mưa th&igrave; t&ocirc;i ở nh&agrave;. C&acirc;u tr&ecirc;n c&oacute; l&agrave; một mệnh đề ?</p>', '', '<p>True</p>', '<p>False</p>', NULL, NULL, 'A', 4, 1, 1, 1, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(63, '<p>Trong c&aacute;c c&acirc;u sau c&acirc;u n&agrave;o l&agrave; mệnh đề ?</p>', '', '<p>15 l&agrave; số nguy&ecirc;n tố</p>', '<p>a + b = c</p>', '<p>x + y = 0</p>', '<p>2n + 1 chia hết cho 3</p>', 'A', 2, 1, 1, 1, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(64, '<p>Mệnh đề phủ định của mệnh đề &quot; 14 l&agrave; hợp số&quot; l&agrave; mệnh đề n&agrave;o ?</p>', '', '<p>14 l&agrave; số nguy&ecirc;n tố</p>', '<p>14 chia hết cho 2</p>', '<p>14 kh&ocirc;ng phải l&agrave; hợp số</p>', '<p>14 chia hết cho 7</p>', 'A', 2, 1, 1, 1, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(65, '<p>Mệnh đề n&agrave;o sau đ&acirc;y sai ?</p>\r\n\r\n<p>&nbsp;</p>', '', '<p>20 chia hết cho 5</p>', '<p>20 l&agrave; bội của 5</p>', '<p>20 kh&ocirc;ng chia hết cho 5</p>', '<p>A v&agrave; B đều đ&uacute;ng</p>', 'A', 2, 1, 1, 1, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(66, '<p>Mệnh đề sau đ&acirc;y đ&uacute;ng ?Mệnh đề phủ định của mệnh đề : &quot; 5 + 4 =10 &quot; l&agrave; ?</p>', '', '<p>5 + 4 &lt; 10</p>', '<p>5 + 4 &gt;&nbsp;10</p>', '<p>5 + 4 #&nbsp;10</p>', '<p>5 + 4 &lt; =10</p>', 'A', 2, 1, 1, 1, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(67, '<p>Trong c&aacute;c c&acirc;u sau, mệnh đề n&agrave;o l&agrave; mệnh đề đảo đ&uacute;ng ?</p>', '', '<p>Nếu &quot;33 l&agrave; hợp số &quot; th&igrave; &quot;15 chia hết cho 25&quot;</p>', '<p>Nếu &quot; 7 l&agrave; hợp số&quot; th&igrave; &quot;8 chia hết cho 3&quot;</p>', '<p>Nếu 20 l&agrave; hợp số th&igrave; 7 chia hết cho 2</p>', '<p>Nếu 3 + 4 = 12 th&igrave; 4 &gt; 7</p>', 'A', 2, 1, 1, 1, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(68, '<p>Với gi&aacute; trị thực n&agrave;o của biến x th&igrave; mệnh đề chứa biến x sau đ&acirc;y P(x) = x^2 - 3x + 2 =0 trở th&agrave;nh mệnh đề đ&uacute;ng ?</p>', '', '<p>0</p>', '<p>1</p>', '<p>-1</p>', '<p>-2</p>', 'A', 1, 1, 1, 1, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(69, '<p>X&eacute;t c&acirc;u P(n)= n chia hết cho 12, với gi&aacute; trị n&agrave;o của n th&igrave; c&acirc;u l&agrave; mệnh đề đ&uacute;ng ?</p>', '', '<p>48</p>', '<p>4</p>', '<p>3</p>', '<p>44</p>', 'A', 2, 1, 1, 1, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(70, '<p>Mệnh đề chứa biến&nbsp; &quot; x^3 -3x^2 + 2x =0&quot; đ&uacute;ng với gi&aacute; trị n&agrave;o của x ?</p>', '', '<p>x=0, x=2</p>', '<p>x=0, x=3</p>', '<p>x=0, x=2,x=3</p>', '<p>x=0,x=2, x=1</p>', 'A', 2, 1, 1, 1, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(71, '<p>Trong c&aacute;c mệnh sau, mệnh đề n&agrave;o kh&ocirc;ng phải l&agrave; một định l&yacute; ?</p>', '', '<p>Trong một mặt phẳng, 2 đường thẳng song song với nhau khi n&oacute; c&ugrave;ng vu&ocirc;ng g&oacute;c với đường thẳng thứ 3</p>', '<p>Điều kiện đủ để diện t&iacute;ch 2 tam gi&aacute;c bằng nhau l&agrave; 2 tam gi&aacute;c ấy phải bằng nhau</p>', '<p>Điều kiện đủ để 2 đường ch&eacute;o trong 1 tứ gi&aacute;c&nbsp;vu&ocirc;ng g&oacute;c với nhau khi tứ gi&aacute;c ấy l&agrave; h&igrave;nh thoi</p>', '<p>Điều kiện đủ để số nguy&ecirc;n dương a c&oacute; chữ số tận c&ugrave;ng l&agrave; 5 l&agrave; số đ&oacute; chia hết cho 5</p>', 'A', 2, 1, 1, 1, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(72, '<p>Chọn đ&aacute;p &aacute;n sai trong c&aacute;c c&acirc;u dưới đ&acirc;y ?</p>', '', '<p>Bản chất của tia hồng&nbsp; ngoại l&agrave; s&oacute;ng điện từ</p>', '<p>T&aacute;c dụng nổi bật nhất của tia hồng ngoại l&agrave; t&aacute;c dụng nhiệt</p>', '<p>Tia hồng ngoại được sử dụng chủ yếu để sấy kh&ocirc;, chụp ảnh trong đ&ecirc;m.</p>', '<p>Quang phổ vạch ph&aacute;t xạ của c&aacute;c nguy&ecirc;n tố kh&aacute;c nhau l&agrave; rất kh&aacute;c nhau về số lượng c&aacute;c vạch, về bước s&oacute;ng (tức l&agrave; vị tr&iacute; c&aacute;c vạch) v&agrave; cường độ s&aacute;ng của c&aacute;c vạch đ&oacute;</p>', 'A', 2, 1, 1, 2, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(73, '<p>Chọn đ&aacute;p &aacute;n sai trong c&aacute;c c&acirc;u sau ?</p>', '', '<p>Tia hồng ngoại l&agrave; bức xạ mắt nh&igrave;n thấy được</p>', '<p>Bước s&oacute;ng tia hồng ngoại nhỏ hơn s&oacute;ng v&ocirc; tuyến</p>', '<p>Vật ở nhiệt độ tr&ecirc;n 3000&deg;C c&oacute; bức xạ tia hồng ngoại.</p>', '<p>Vật ở nhiệt độ thấp ph&aacute;t tia hồng ngoại.&nbsp;</p>', 'A', 2, 1, 1, 2, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(74, '<p>Chọn đ&aacute;p &aacute;n sai về tia hồng ngoại ?</p>', '', '<p>t&aacute;c dụng l&ecirc;n một loại k&iacute;nh ảnh.</p>', '<p>d&ugrave;ng để sấy kh&ocirc; v&agrave; sưởi ấm</p>', '<p>d&ugrave;ng để chữa bệnh c&ograve;i xương</p>', '<p>c&oacute; li&ecirc;n quan đến hiệu ứng nh&agrave; k&iacute;nh</p>', 'A', 2, 1, 1, 2, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(75, '<p>Chọn đ&aacute;p &aacute;n đ&uacute;ng ?</p>', '', '<p>Tia tử ngoại c&oacute; thể nh&igrave;n thấy</p>', '<p>Tia tử ngoại c&oacute; tần số nhỏ hơn tần số &aacute;nh s&aacute;ng tr&ocirc;ng thấy</p>', '<p>Tia tử ngoại kh&ocirc;ng bị nước hấp thụ</p>', '<p>Tia tử ngoại d&ugrave;ng để chữa bệnh c&ograve;i xương</p>', 'A', 2, 1, 1, 2, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(76, '<p>T&iacute;nh chất n&agrave;o sau đ&acirc;y kh&ocirc;ng phải của tia tử ngoại ?</p>', '', '<p>&nbsp;T&aacute;c dụng mạnh l&ecirc;n k&iacute;nh ảnh&nbsp; &nbsp;&nbsp;</p>', '<p>L&agrave;m ion h&oacute;a kh&ocirc;ng kh&iacute;</p>', '<p>Trong suốt đối với thủy tinh, nước&nbsp;&nbsp;</p>', '<p>L&agrave;m ph&aacute;t quang một số chất</p>', 'A', 2, 1, 1, 2, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(77, '<p>Tia hồng ngoại kh&ocirc;ng c&oacute; t&iacute;nh chất n&agrave;o sau đ&acirc;y ?</p>', '', '<p>T&aacute;c dụng nhiệt</p>', '<p>T&aacute;c dụng l&ecirc;n k&iacute;nh ảnh th&iacute;ch họp</p>', '<p>G&acirc;y ra hiệu ứng quang điện trong&nbsp;</p>', '<p>Mắt người nh&igrave;n thấy được</p>', 'A', 2, 1, 1, 2, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(78, '<p><a href=\"https://hoc247.net/cau-hoi-nguon-sang-nao-sau-day-khong-phat-tia-tu-ngoai--qid148003.html\">N</a>guồn s&aacute;ng n&agrave;o sau đ&acirc;y kh&ocirc;ng phải của tia tử ngoại ?</p>', '', '<p>Hồ quang điện</p>', '<p>Đ&egrave;n thủy ng&acirc;n</p>', '<p>Đ&egrave;n hơi natri</p>', '<p>vật nung n&oacute;ng tr&ecirc;n 3000 độ</p>', 'A', 2, 1, 1, 2, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(79, '<p>Ph&aacute;t biểu n&agrave;o sau đ&acirc;y sai&nbsp; về tia tử ngoại ?</p>', '', '<p>Khả năng g&acirc;y ph&aacute;t quang được ứng dụng để t&igrave;m vết nứt, vết xước trong kỹ thuật chế tạo m&aacute;y.&nbsp;</p>', '<p>T&aacute;c dụng sinh học được ứng dụng đ&eacute; chữa bệnh c&ograve;i xương, diệt vi khuẩn...</p>', '<p>D&ugrave;ng l&agrave;m t&aacute;c nh&acirc;n ion ho&aacute;, k&iacute;ch th&iacute;ch sự ph&aacute;t quang, để g&acirc;y ra hiện tượng quang điện.&nbsp;</p>', '<p>D&ugrave;ng tử ngoại để chữa bệnh m&ugrave; m&agrave;u.&nbsp;&nbsp;</p>', 'A', 2, 1, 1, 2, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(80, '<p>Điều n&agrave;o sau đ&acirc;y l&agrave; sai khi so s&aacute;nh về tia tử ngoại v&agrave; tia hồng ngoại ?</p>', '', '<p>C&ugrave;ng bản chất l&agrave; s&oacute;ng điện từ</p>', '<p>Tia hồng ngoại c&oacute; bước s&oacute;ng nhỏ hơn tia tử ngoại.</p>', '<p>Tia hồng ngoại v&agrave; tia tử ngoại đều t&aacute;c dụng l&ecirc;n k&iacute;nh ảnh.</p>', '<p>Tia hồng ngoại v&agrave; tia từ ngoại đều kh&ocirc;ng nh&igrave;n thấy bằng mắt thường.<span style=\"display:none\">&nbsp;</span></p>', 'A', 2, 1, 1, 2, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(81, '<p>Trong th&iacute; nghiệm ph&aacute;t hiện tia hồng ngoại v&agrave; tia tử ngoại th&igrave; d&ugrave;ng dụng cụ n&agrave;o ?</p>', '', '<p>quang trở</p>', '<p>tế b&agrave;o quang học&nbsp;</p>', '<p>pin nhiệt điện</p>', '<p>pin quang học</p>', 'A', 2, 1, 1, 2, '2020-05-22 13:12:28', '2020-05-22 13:12:28'),
(83, '<p>&nbsp;a^2&nbsp; - b^2= ?</p>', '', '<p>(a - b) * (a +b)</p>', '<p>a^2 - b</p>', '<p>a + b</p>', '<p>a - b</p>', 'A', 2, 3, 1, 1, '2020-05-23 16:47:32', '2020-05-23 16:47:32'),
(84, '<p>Kỹ thuật gh&eacute;p c&acirc;y thường d&ugrave;ng l&agrave; g&igrave; ?</p>', '', '<p>Chiết c&agrave;nh</p>', '<p>Gh&eacute;p chồi</p>', '<p>Cấy gh&eacute;p th&acirc;n c&acirc;y</p>', '<p>Gh&eacute;p cắt c&agrave;nh</p>', 'B', 1, 1, 1, 7, '2020-05-24 02:29:30', '2020-05-24 02:29:30'),
(85, '<p>Trong qu&aacute; tr&igrave;nh ph&aacute;t triển của vật nu&ocirc;i, sự sinh trưởng, ph&aacute;t dục của vật nu&ocirc;i diễn ra &hellip;.. nhưng kh&ocirc;ng đồng đều.</p>', '', '<p>Theo tr&igrave;nh tự ph&aacute;t dục trước, sinh trưởng sau</p>', '<p>Theo tr&igrave;nh tự sinh trưởng trước, ph&aacute;t dục sau</p>', '<p>Kh&ocirc;ng đồng thời</p>', '<p>Đồng thời</p>', 'B', 1, 1, 1, 1, '2020-05-24 02:32:56', '2020-05-24 02:32:56'),
(86, '<p>Nghi&ecirc;n cứu quy luật sinh trưởng ph&aacute;t dục theo chu kỳ c&oacute; &yacute; nghĩa g&igrave; trong chăn nu&ocirc;i ?</p>', '', '<p>Thụ tinh nh&acirc;n tạo đạt kết quả cao</p>', '<p>Hiệu suất chăn nu&ocirc;i cao</p>', '<p>Vận dụng tốt c&aacute;c chu kỳ của vật nu&ocirc;i</p>', '<p>Tất cả đều đ&uacute;ng</p>', 'C', 1, 1, 1, 7, '2020-05-24 02:35:23', '2020-05-24 02:35:23'),
(87, '<p>C&aacute;c yếu tố n&agrave;o sau đ&acirc;y ảnh hưởng đến sinh trưởng, ph&aacute;t dục của vật nu&ocirc;i?</p>', '', '<p>Thức ăn</p>', '<p>Chăm s&oacute;c quản l&yacute;</p>', '<p>M&ocirc;i trường sống</p>', '<p>Cả 3 đ&aacute;p &aacute;n tr&ecirc;n</p>', 'D', 1, 1, 1, 1, '2020-05-24 02:36:14', '2020-05-24 02:36:14'),
(88, '<p>Chu kỳ động dục của tr&acirc;u l&agrave;:</p>', '', '<p>20 ng&agrave;y</p>', '<p>21 ng&agrave;y</p>', '<p>25 ng&agrave;y</p>', '<p>28 ng&agrave;y</p>', 'A', 1, 1, 1, 7, '2020-05-24 02:36:56', '2020-05-24 02:36:56'),
(89, '<p>Chu kỳ động dục của vật nu&ocirc;i chia l&agrave;m bao nhi&ecirc;u giai đoạn:</p>', '', '<p>3</p>', '<p>4</p>', '<p>5</p>', '<p>6</p>', 'D', 1, 1, 1, 7, '2020-05-24 02:37:24', '2020-05-24 02:37:24'),
(90, '<p>Dựa v&agrave;o sự di chuyển của Tr&aacute;i Đất quay xung quanh mặt trời l&agrave; c&aacute;ch t&iacute;nh của</p>', '', '<p>Dương lịch</p>', '<p>&Acirc;m lịch</p>', '<p>Phật lịch</p>', '<p>C&ocirc;ng lịch</p>', 'B', 1, 1, 1, 9, '2020-05-24 03:13:55', '2020-05-24 03:13:55'),
(91, '<p>Những bộ sử thi nổi tiếng của Hi Lạp l&agrave;</p>', '', '<p>I-li-at v&agrave; &Ocirc;-đi-x&ecirc;</p>', '<p>Ơ đ&iacute;p l&agrave;m vua</p>', '<p>&Ocirc;-re-xti</p>', '<p>&Ocirc;-đi-x&ecirc;</p>', 'C', 1, 1, 1, 9, '2020-05-24 03:14:44', '2020-05-24 03:14:44'),
(92, '<p>Đấu trường C&ocirc;-li-d&ecirc; ở đ&acirc;u?</p>', '', '<p>Hy Lạp</p>', '<p>Ai Cập</p>', '<p>Roma</p>', '<p>Lưỡng H&agrave;</p>', 'B', 1, 1, 1, 9, '2020-05-24 03:15:32', '2020-05-24 03:15:32'),
(93, '<p>Người phương Đ&ocirc;ng cổ đại đều d&ugrave;ng chữ j ?</p>', '', '<p>La M&atilde;</p>', '<p>Latinh</p>', '<p>Tượng h&igrave;nh</p>', '<p>Tượng thanh</p>', 'B', 1, 1, 1, 9, '2020-05-24 03:16:41', '2020-05-24 03:16:41'),
(94, '<p>Chữ tượng h&igrave;nh được viết đầu ti&ecirc;n tr&ecirc;n ?</p>', '', '<p>L&aacute; tre</p>', '<p>Đ&aacute;</p>', '<p>Đất s&eacute;t</p>', '<p>Giấy mỏng</p>', 'D', 1, 1, 1, 9, '2020-05-24 03:17:27', '2020-05-24 03:17:27'),
(95, '<p>Th&agrave;nh Babilon ở đ&acirc;u ?</p>', '', '<p>Lưỡng H&agrave;</p>', '<p>Ai cập</p>', '<p>Roma</p>', '<p>Ấn Độ</p>', 'A', 1, 1, 1, 9, '2020-05-24 03:18:15', '2020-05-24 03:18:15'),
(96, '<p>Người Hy Lạp v&agrave; R&ocirc; ma s&aacute;ng tạo ra chữ ?</p>', '', '<p>Chữ a, b, c</p>', '<p>Pi</p>', '<p>H&igrave;nh học</p>', '<p>Chữ viết</p>', 'B', 1, 1, 1, 9, '2020-05-24 03:19:03', '2020-05-24 03:19:03'),
(97, '<p>Ph&eacute;p đếm từ 1 đến 10 l&agrave; ph&aacute;t minh của ?</p>', '', '<p>HY Lạp&nbsp;</p>', '<p>Ấn Độ</p>', '<p>AI Cập</p>', '<p>Trung Quốc</p>', 'C', 1, 1, 1, 9, '2020-05-24 03:19:53', '2020-05-24 03:19:53'),
(98, '<p>Điểm nổi bật của kh&iacute; hậu đới lạnh l&agrave;:</p>', '', '<p>&ocirc;n h&ograve;a</p>', '<p>v&ocirc; c&ugrave;ng thất thường</p>', '<p>v&ocirc; c&ugrave;ng khắc nghiệt</p>', '<p>thay đổi theo&nbsp;m&ugrave;a</p>', 'D', 1, 1, 1, 12, '2020-05-24 03:21:07', '2020-05-24 03:21:07'),
(99, '<p>Thi&ecirc;n tai xảy ra thường xuy&ecirc;n ở đới lạnh l&agrave; ?</p>', '', '<p>n&uacute;i lửa</p>', '<p>b&atilde;o c&aacute;t</p>', '<p>b&atilde;o tuyết</p>', '<p>động đất</p>', 'C', 1, 1, 1, 12, '2020-05-24 03:21:53', '2020-05-24 03:21:53'),
(100, '<p>Đ&acirc;u kh&ocirc;ng phải l&agrave; đặc điểm để th&iacute;ch nghi với gi&aacute; r&eacute;t của động vật v&ugrave;ng đới lạnh?</p>', '', '<p>L&ocirc;ng d&agrave;y</p>', '<p>Mỡ d&agrave;y</p>', '<p>Da th&ocirc; cứng</p>', '<p>L&ocirc;ng kh&ocirc;ng d&iacute;nh nước</p>', 'A', 1, 1, 1, 12, '2020-05-24 03:22:48', '2020-05-24 03:22:48'),
(101, '<p>Lo&agrave;i động vật n&agrave;o sau đ&acirc;y kh&ocirc;ng sống ở đới lạnh?</p>', '', '<p>Chim c&aacute;nh cụt</p>', '<p>Gấu tr&uacute;c</p>', '<p>Voi</p>', '<p>Hải cẩu</p>', 'C', 1, 1, 1, 12, '2020-05-24 03:23:39', '2020-05-24 03:23:39'),
(102, '<p>Thảm thực vật đặc trưng của miền đới lạnh l&agrave;:</p>', '', '<p>rừng rậm nhiệt đới</p>', '<p>xa van, c&acirc;y bụi</p>', '<p>rừng l&aacute; kim</p>', '<p>r&ecirc;u, địa y</p>', 'B', 1, 1, 1, 12, '2020-05-24 03:24:33', '2020-05-24 03:24:33'),
(103, '<p>Nguy&ecirc;n nh&acirc;n n&agrave;o l&agrave;m cho diện t&iacute;ch băng ở hai cực đang ng&agrave;y c&agrave;ng bị thu hẹp?</p>', '', '<p>Do con người d&ugrave;ng t&agrave;u ph&aacute; bang.</p>', '<p>Do Tr&aacute;i Đất đang n&oacute;ng l&ecirc;n.</p>', '<p>Do băng tan</p>', '<p>Do n&uacute;i lửa</p>', 'A', 1, 1, 1, 12, '2020-05-24 03:25:18', '2020-05-24 03:25:18'),
(104, '<p>Hậu quả lớn nhất của biến đổi kh&iacute; hậu to&agrave;n cầu ở v&ugrave;ng đới lạnh hiện nay l&agrave; ?</p>', '', '<p>B&atilde;o tuyết</p>', '<p>Tan băng 2 cực</p>', '<p>Mưa axit&nbsp;</p>', '<p>HIệu ứng nh&agrave; k&iacute;nh</p>', 'B', 1, 1, 1, 12, '2020-05-24 03:26:13', '2020-05-24 03:26:13'),
(105, '<p>V&igrave; sao s&ocirc;ng ng&ograve;i miền đới lạnh thường c&oacute; lũ lớn v&agrave;o cuối xu&acirc;n đầu hạ?</p>', '', '<p>Thời k&igrave; m&ugrave;a hạ, mặt trời sưởi ấm l&agrave;m băng tan.</p>', '<p>Đ&acirc;y l&agrave; thời k&igrave; m&ugrave;a mưa lớn nhất trong năm.</p>', '<p>C&oacute; d&ograve;ng biển n&oacute;ng chảy qua l&agrave;m tăng nhiệt độ khiến băng tan.</p>', '<p>C&oacute; b&atilde;o lớn k&egrave;m theo mưa lớn.</p>', 'D', 1, 1, 1, 12, '2020-05-24 03:27:13', '2020-05-24 03:27:13'),
(106, '<p>Đ&acirc;u kh&ocirc;ng phải l&agrave; đặc điểm kh&iacute; hậu của m&ocirc;i trường đới lạnh?</p>', '', '<p>&nbsp;M&ugrave;a đ&ocirc;ng rất d&agrave;i, m&ugrave;a hạ chỉ k&eacute;o d&agrave;i 2 &ndash; 3 th&aacute;ng.</p>', '<p>Nhiệt đột trung b&igrave;nh lu&ocirc;n dưới &ndash; 10<sup>0</sup>C</p>', '<p>Lượng mưa trung b&igrave;nh năm rất thấp (dưới 500mm).</p>', '<p>M&ugrave;a hạ nhiệt độ tăng l&ecirc;n, cao nhất khoảng 15<sup>0</sup>C.</p>', 'C', 1, 1, 1, 12, '2020-05-24 03:28:01', '2020-05-24 03:28:01'),
(107, '<p>Ở đới lạnh, khu vực c&oacute; Mặt Trời di chuyển l&agrave; l&agrave; suốt ng&agrave;y đ&ecirc;m ở đường ch&acirc;n trời trong suốt 6 th&aacute;ng liền l&agrave;:</p>', '', '<p>V&ograve;ng cực Bắc (Nam).</p>', '<p>Cực Bắc (Nam).</p>', '<p>Từ v&ograve;ng cực đến vĩ tuyến 80<sup>0</sup></p>', '<p>Từ vĩ tuyến 80<sup>0</sup>&nbsp;đến hai cực.</p>', 'B', 1, 1, 1, 12, '2020-05-24 03:29:45', '2020-05-24 03:29:45'),
(108, '<p>Biểu diễn số 10102 n&agrave;o sau đ&acirc;y l&agrave; đ&uacute;ng?</p>', '', '<p>0.23 + 1.22 + 0.21 + 1.20 = 510</p>', '<p>1.23 + 0.22 + 1.21 + 0.20 = 1010</p>', '<p>&nbsp;0.2-3 + 1.2-2 + 0.2-1 + 1.20 = 5/410</p>', '<p>1.2-3 + 0.2-2 + 1.2-1 + 0.20 = 5/810</p>', 'B', 1, 1, 1, 8, '2020-05-24 03:50:56', '2020-05-24 03:50:56'),
(109, '<p>Trong c&aacute;c thiết bị sau thiết bị n&agrave;o l&agrave; thiết bị ra?</p>', '', '<p>RAM</p>', '<p>CPU</p>', '<p>M&aacute;y chiếu</p>', '<p>B&agrave;n ph&iacute;m</p>', 'C', 1, 1, 1, 8, '2020-05-24 03:51:31', '2020-05-24 03:51:31'),
(110, '<p>Gi&aacute; trị của số 111012&nbsp;l&agrave;&nbsp;?</p>', '', '<p>25</p>', '<p>123</p>', '<p>543</p>', '<p>1234</p>', 'A', 1, 1, 1, 8, '2020-05-24 03:51:53', '2020-05-24 03:51:53'),
(111, '<p>Thiết bị n&agrave;o l&agrave; quan trọng nhất đối với m&aacute;y t&iacute;nh trong c&aacute;c thiết bị sau?</p>', '', '<p>Đĩa mềm</p>', '<p>RAM</p>', '<p>CPU</p>', '<p>M&agrave;n h&igrave;nh</p>', 'C', 1, 1, 1, 8, '2020-05-24 03:52:40', '2020-05-24 03:52:40'),
(112, '<p>Số 6110 được biểu diễn trong hệ cơ số 16 l&agrave;</p>', '', '<p>1D</p>', '<p>2A</p>', '<p>3D</p>', '<p>4B</p>', 'B', 1, 1, 1, 8, '2020-05-24 03:53:18', '2020-05-24 03:53:18'),
(113, '<p>&nbsp;Một quyển truyện A gồm 10 trang nếu lưu trữ tr&ecirc;n đĩa chiếm khoảng 2 MB. Hỏi nếu lưu trữ 15 quyển truyện A th&igrave; chiếm tr&ecirc;n đĩa cứng l&agrave; bao nhi&ecirc;u KB?</p>', '', '<p>20240</p>', '<p>30720</p>', '<p>30280</p>', '<p>30000</p>', 'A', 1, 1, 1, 8, '2020-05-24 03:54:05', '2020-05-24 03:54:05'),
(114, '<p>a^2 - 2*a + 1 = 0 khi n&agrave;o ?&nbsp;</p>', '', '<p>a=1</p>', '<p>a = -1</p>', '<p>a=0</p>', '<p>a=2</p>', 'B', 1, 1, 1, 1, '2020-05-24 04:53:02', '2020-05-24 04:53:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctbailam`
--

CREATE TABLE `ctbailam` (
  `id` int(11) NOT NULL,
  `id_cauhoi` int(11) NOT NULL,
  `da_chon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `id_de` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctbailam`
--

INSERT INTO `ctbailam` (`id`, `id_cauhoi`, `da_chon`, `updated_at`, `id_de`, `id_user`, `created_at`) VALUES
(368, 2, 'A', '2020-05-23 13:22:12', 1, 2, '2020-05-23 13:22:12'),
(369, 3, 'A', '2020-05-23 13:22:37', 1, 2, '2020-05-23 13:22:37'),
(370, 5, 'C', '2020-05-23 13:22:39', 1, 2, '2020-05-23 13:22:39'),
(371, 11, 'A', '2020-05-23 13:22:41', 1, 2, '2020-05-23 13:22:41'),
(372, 40, 'B', '2020-05-23 13:22:44', 1, 2, '2020-05-23 13:22:44'),
(373, 41, 'C', '2020-05-23 13:22:46', 1, 2, '2020-05-23 13:22:46'),
(374, 42, 'D', '2020-05-23 13:22:49', 1, 2, '2020-05-23 13:22:49'),
(375, 43, 'A', '2020-05-23 13:22:51', 1, 2, '2020-05-23 13:22:51'),
(376, 44, 'B', '2020-05-23 13:22:56', 1, 2, '2020-05-23 13:22:56'),
(377, 47, 'D', '2020-05-23 13:22:58', 1, 2, '2020-05-23 13:22:58'),
(378, 2, 'C', '2020-05-23 14:06:24', 1, 2, '2020-05-23 14:06:24'),
(379, 3, 'A', '2020-05-23 14:06:26', 1, 2, '2020-05-23 14:06:26'),
(380, 5, 'A', '2020-05-23 14:06:28', 1, 2, '2020-05-23 14:06:28'),
(381, 11, 'A', '2020-05-23 14:06:33', 1, 2, '2020-05-23 14:06:33'),
(382, 11, 'A', '2020-05-23 14:06:34', 1, 2, '2020-05-23 14:06:34'),
(383, 40, 'A', '2020-05-23 14:06:36', 1, 2, '2020-05-23 14:06:36'),
(384, 41, 'C', '2020-05-23 14:06:39', 1, 2, '2020-05-23 14:06:39'),
(385, 42, 'A', '2020-05-23 14:06:41', 1, 2, '2020-05-23 14:06:41'),
(386, 43, 'B', '2020-05-23 14:06:45', 1, 2, '2020-05-23 14:06:45'),
(387, 44, 'A', '2020-05-23 14:06:47', 1, 2, '2020-05-23 14:06:47'),
(388, 47, 'A', '2020-05-23 14:06:50', 1, 2, '2020-05-23 14:06:50'),
(389, 2, 'A', '2020-05-23 16:52:29', 1, 2, '2020-05-23 16:52:29'),
(390, 3, 'C', '2020-05-23 16:52:32', 1, 2, '2020-05-23 16:52:32'),
(391, 5, 'A', '2020-05-23 16:52:34', 1, 2, '2020-05-23 16:52:34'),
(392, 11, 'A', '2020-05-23 16:52:36', 1, 2, '2020-05-23 16:52:36'),
(393, 40, 'A', '2020-05-23 16:52:38', 1, 2, '2020-05-23 16:52:38'),
(394, 41, 'A', '2020-05-23 16:52:40', 1, 2, '2020-05-23 16:52:40'),
(395, 42, 'C', '2020-05-23 16:52:43', 1, 2, '2020-05-23 16:52:43'),
(396, 43, 'A', '2020-05-23 16:52:45', 1, 2, '2020-05-23 16:52:45'),
(397, 44, 'C', '2020-05-23 16:52:47', 1, 2, '2020-05-23 16:52:47'),
(398, 47, 'C', '2020-05-23 16:52:50', 1, 2, '2020-05-23 16:52:50'),
(399, 2, 'B', '2020-05-23 16:53:29', 1, 2, '2020-05-23 16:53:29'),
(400, 3, 'C', '2020-05-23 16:53:31', 1, 2, '2020-05-23 16:53:31'),
(401, 5, 'A', '2020-05-23 16:53:34', 1, 2, '2020-05-23 16:53:34'),
(402, 11, 'A', '2020-05-23 16:53:37', 1, 2, '2020-05-23 16:53:37'),
(403, 40, 'A', '2020-05-23 16:53:40', 1, 2, '2020-05-23 16:53:40'),
(404, 41, 'A', '2020-05-23 16:53:42', 1, 2, '2020-05-23 16:53:42'),
(405, 42, 'C', '2020-05-23 16:53:45', 1, 2, '2020-05-23 16:53:45'),
(406, 43, 'A', '2020-05-23 16:53:48', 1, 2, '2020-05-23 16:53:48'),
(407, 43, 'C', '2020-05-23 16:53:51', 1, 2, '2020-05-23 16:53:51'),
(408, 44, 'A', '2020-05-23 16:53:53', 1, 2, '2020-05-23 16:53:53'),
(409, 47, 'D', '2020-05-23 16:53:56', 1, 2, '2020-05-23 16:53:56'),
(410, 2, 'A', '2020-05-24 00:47:18', 1, 2, '2020-05-24 00:47:18'),
(411, 2, 'A', '2020-05-24 00:47:40', 1, 2, '2020-05-24 00:47:40'),
(412, 3, 'C', '2020-05-24 00:47:43', 1, 2, '2020-05-24 00:47:43'),
(413, 5, 'B', '2020-05-24 00:47:46', 1, 2, '2020-05-24 00:47:46'),
(414, 11, 'A', '2020-05-24 00:47:49', 1, 2, '2020-05-24 00:47:49'),
(415, 40, 'B', '2020-05-24 00:47:51', 1, 2, '2020-05-24 00:47:51'),
(416, 41, 'C', '2020-05-24 00:47:54', 1, 2, '2020-05-24 00:47:54'),
(417, 42, 'B', '2020-05-24 00:47:57', 1, 2, '2020-05-24 00:47:57'),
(418, 43, 'C', '2020-05-24 00:48:00', 1, 2, '2020-05-24 00:48:00'),
(419, 44, 'B', '2020-05-24 00:48:03', 1, 2, '2020-05-24 00:48:03'),
(420, 47, 'D', '2020-05-24 00:48:05', 1, 2, '2020-05-24 00:48:05'),
(421, 2, 'A', '2020-05-24 00:48:25', 1, 2, '2020-05-24 00:48:25'),
(422, 3, 'A', '2020-05-24 00:48:27', 1, 2, '2020-05-24 00:48:27'),
(423, 5, 'C', '2020-05-24 00:48:34', 1, 2, '2020-05-24 00:48:34'),
(424, 11, 'B', '2020-05-24 00:48:37', 1, 2, '2020-05-24 00:48:37'),
(425, 40, 'A', '2020-05-24 00:48:41', 1, 2, '2020-05-24 00:48:41'),
(426, 41, 'D', '2020-05-24 00:48:43', 1, 2, '2020-05-24 00:48:43'),
(427, 42, 'A', '2020-05-24 00:48:45', 1, 2, '2020-05-24 00:48:45'),
(428, 43, 'B', '2020-05-24 00:48:48', 1, 2, '2020-05-24 00:48:48'),
(429, 44, 'B', '2020-05-24 00:48:51', 1, 2, '2020-05-24 00:48:51'),
(430, 47, 'B', '2020-05-24 00:48:53', 1, 2, '2020-05-24 00:48:53'),
(431, 61, 'A', '2020-05-24 00:51:17', 2, 2, '2020-05-24 00:51:17'),
(432, 62, 'A', '2020-05-24 00:51:20', 2, 2, '2020-05-24 00:51:20'),
(433, 63, 'A', '2020-05-24 00:51:22', 2, 2, '2020-05-24 00:51:22'),
(434, 66, 'C', '2020-05-24 00:51:24', 2, 2, '2020-05-24 00:51:24'),
(435, 70, 'A', '2020-05-24 00:51:25', 2, 2, '2020-05-24 00:51:25'),
(436, 60, 'A', '2020-05-24 00:51:44', 3, 2, '2020-05-24 00:51:44'),
(437, 73, 'A', '2020-05-24 00:51:50', 3, 2, '2020-05-24 00:51:50'),
(438, 74, 'C', '2020-05-24 00:51:53', 3, 2, '2020-05-24 00:51:53'),
(439, 75, 'C', '2020-05-24 00:51:55', 3, 2, '2020-05-24 00:51:55'),
(440, 76, 'C', '2020-05-24 00:51:58', 3, 2, '2020-05-24 00:51:58'),
(441, 77, 'C', '2020-05-24 00:52:01', 3, 2, '2020-05-24 00:52:01'),
(442, 78, 'C', '2020-05-24 00:52:03', 3, 2, '2020-05-24 00:52:03'),
(443, 79, 'C', '2020-05-24 00:52:06', 3, 2, '2020-05-24 00:52:06'),
(444, 80, 'D', '2020-05-24 00:52:08', 3, 2, '2020-05-24 00:52:08'),
(445, 62, 'A', '2020-05-24 02:17:34', 2, 2, '2020-05-24 02:17:34'),
(446, 64, 'A', '2020-05-24 02:17:36', 2, 2, '2020-05-24 02:17:36'),
(447, 65, 'A', '2020-05-24 02:17:38', 2, 2, '2020-05-24 02:17:38'),
(448, 66, 'A', '2020-05-24 02:17:41', 2, 2, '2020-05-24 02:17:41'),
(449, 67, 'C', '2020-05-24 02:17:43', 2, 2, '2020-05-24 02:17:43'),
(450, 68, 'A', '2020-05-24 02:17:45', 2, 2, '2020-05-24 02:17:45'),
(451, 69, 'C', '2020-05-24 02:17:47', 2, 2, '2020-05-24 02:17:47'),
(452, 70, 'D', '2020-05-24 02:17:49', 2, 2, '2020-05-24 02:17:49'),
(453, 70, 'B', '2020-05-24 02:17:52', 2, 2, '2020-05-24 02:17:52'),
(454, 71, 'D', '2020-05-24 02:17:55', 2, 2, '2020-05-24 02:17:55'),
(455, 83, 'D', '2020-05-24 02:17:57', 2, 2, '2020-05-24 02:17:57'),
(456, 84, 'A', '2020-05-24 02:39:38', 8, 2, '2020-05-24 02:39:38'),
(457, 86, 'C', '2020-05-24 02:39:41', 8, 2, '2020-05-24 02:39:41'),
(458, 88, 'A', '2020-05-24 02:39:43', 8, 2, '2020-05-24 02:39:43'),
(459, 89, 'D', '2020-05-24 02:39:45', 8, 2, '2020-05-24 02:39:45'),
(460, 84, 'A', '2020-05-24 03:32:10', 8, 2, '2020-05-24 03:32:10'),
(461, 86, 'A', '2020-05-24 03:32:13', 8, 2, '2020-05-24 03:32:13'),
(462, 88, 'C', '2020-05-24 03:32:16', 8, 2, '2020-05-24 03:32:16'),
(463, 89, 'A', '2020-05-24 03:32:18', 8, 2, '2020-05-24 03:32:18'),
(464, 4, 'A', '2020-05-24 07:18:52', 1, 2, '2020-05-24 07:18:52'),
(465, 5, 'A', '2020-05-24 07:18:54', 1, 2, '2020-05-24 07:18:54'),
(466, 11, 'A', '2020-05-24 07:18:56', 1, 2, '2020-05-24 07:18:56'),
(467, 40, 'A', '2020-05-24 07:18:59', 1, 2, '2020-05-24 07:18:59'),
(468, 42, 'B', '2020-05-24 07:19:02', 1, 2, '2020-05-24 07:19:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdethi`
--

CREATE TABLE `ctdethi` (
  `id_de` int(11) NOT NULL,
  `id_cauhoi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctdethi`
--

INSERT INTO `ctdethi` (`id_de`, `id_cauhoi`, `created_at`, `updated_at`) VALUES
(1, 4, '2020-05-24 03:45:05', '2020-05-24 03:45:05'),
(1, 5, '2020-05-24 03:45:05', '2020-05-24 03:45:05'),
(1, 11, '2020-05-24 03:45:05', '2020-05-24 03:45:05'),
(1, 40, '2020-05-24 03:45:05', '2020-05-24 03:45:05'),
(1, 41, '2020-05-24 03:45:05', '2020-05-24 03:45:05'),
(1, 42, '2020-05-24 03:45:06', '2020-05-24 03:45:06'),
(1, 43, '2020-05-24 03:45:06', '2020-05-24 03:45:06'),
(1, 44, '2020-05-24 03:45:06', '2020-05-24 03:45:06'),
(1, 45, '2020-05-24 03:45:06', '2020-05-24 03:45:06'),
(1, 46, '2020-05-24 03:45:06', '2020-05-24 03:45:06'),
(2, 61, '2020-05-24 07:20:15', '2020-05-24 07:20:15'),
(2, 63, '2020-05-24 07:20:15', '2020-05-24 07:20:15'),
(2, 67, '2020-05-24 07:20:15', '2020-05-24 07:20:15'),
(2, 68, '2020-05-24 07:20:15', '2020-05-24 07:20:15'),
(2, 69, '2020-05-24 07:20:15', '2020-05-24 07:20:15'),
(2, 70, '2020-05-24 07:20:15', '2020-05-24 07:20:15'),
(2, 71, '2020-05-24 07:20:15', '2020-05-24 07:20:15'),
(2, 83, '2020-05-24 07:20:15', '2020-05-24 07:20:15'),
(2, 85, '2020-05-24 07:20:15', '2020-05-24 07:20:15'),
(2, 87, '2020-05-24 07:20:15', '2020-05-24 07:20:15'),
(3, 74, '2020-05-24 07:27:22', '2020-05-24 07:27:22'),
(3, 75, '2020-05-24 07:27:22', '2020-05-24 07:27:22'),
(3, 77, '2020-05-24 07:27:22', '2020-05-24 07:27:22'),
(3, 78, '2020-05-24 07:27:22', '2020-05-24 07:27:22'),
(3, 79, '2020-05-24 07:27:22', '2020-05-24 07:27:22'),
(8, 84, '2020-05-24 02:39:14', '2020-05-24 02:39:14'),
(8, 86, '2020-05-24 02:39:14', '2020-05-24 02:39:14'),
(8, 88, '2020-05-24 02:39:14', '2020-05-24 02:39:14'),
(8, 89, '2020-05-24 02:39:14', '2020-05-24 02:39:14'),
(44, 98, '2020-05-24 03:30:29', '2020-05-24 03:30:29'),
(45, 99, '2020-05-24 03:30:29', '2020-05-24 03:30:29'),
(46, 100, '2020-05-24 03:30:29', '2020-05-24 03:30:29'),
(47, 101, '2020-05-24 03:30:29', '2020-05-24 03:30:29'),
(48, 102, '2020-05-24 03:30:29', '2020-05-24 03:30:29'),
(49, 103, '2020-05-24 03:30:29', '2020-05-24 03:30:29'),
(50, 104, '2020-05-24 03:30:29', '2020-05-24 03:30:29'),
(51, 105, '2020-05-24 03:30:29', '2020-05-24 03:30:29'),
(52, 106, '2020-05-24 03:30:29', '2020-05-24 03:30:29'),
(53, 107, '2020-05-24 03:30:29', '2020-05-24 03:30:29'),
(54, 90, '2020-05-24 03:31:45', '2020-05-24 03:31:45'),
(55, 91, '2020-05-24 03:31:45', '2020-05-24 03:31:45'),
(56, 92, '2020-05-24 03:31:45', '2020-05-24 03:31:45'),
(57, 93, '2020-05-24 03:31:45', '2020-05-24 03:31:45'),
(58, 94, '2020-05-24 03:31:45', '2020-05-24 03:31:45'),
(59, 95, '2020-05-24 03:31:45', '2020-05-24 03:31:45'),
(60, 96, '2020-05-24 03:31:45', '2020-05-24 03:31:45'),
(61, 97, '2020-05-24 03:31:45', '2020-05-24 03:31:45'),
(62, 108, '2020-05-24 03:54:50', '2020-05-24 03:54:50'),
(63, 109, '2020-05-24 03:54:50', '2020-05-24 03:54:50'),
(64, 110, '2020-05-24 03:54:50', '2020-05-24 03:54:50'),
(65, 111, '2020-05-24 03:54:50', '2020-05-24 03:54:50'),
(66, 112, '2020-05-24 03:54:50', '2020-05-24 03:54:50'),
(67, 113, '2020-05-24 03:54:50', '2020-05-24 03:54:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dapandung`
--

CREATE TABLE `dapandung` (
  `id_dad` int(11) NOT NULL,
  `id_cauhoi` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dapandung`
--

INSERT INTO `dapandung` (`id_dad`, `id_cauhoi`, `noidung`, `created_at`, `updated_at`) VALUES
(1, 1, 'A', '2019-04-07 01:38:49', '0000-00-00 00:00:00'),
(2, 3, 'C', '2019-04-12 09:01:30', '0000-00-00 00:00:00'),
(4, 52, 'A', '2019-04-17 15:02:20', '2019-04-17 15:02:20'),
(5, 53, 'A', '2019-04-17 15:03:11', '2019-04-17 15:03:11'),
(6, 53, 'C', '2019-04-17 15:03:12', '2019-04-17 15:03:12'),
(7, 53, 'D', '2019-04-17 15:03:12', '2019-04-17 15:03:12'),
(8, 51, 'B', '2019-04-19 05:29:24', '2019-04-19 05:29:24'),
(12, 40, 'A', '2019-04-08 14:55:42', '0000-00-00 00:00:00'),
(13, 41, 'A', '2019-05-09 06:07:07', '0000-00-00 00:00:00'),
(14, 42, 'C', '2019-04-08 14:58:36', '0000-00-00 00:00:00'),
(15, 43, 'C', '2019-04-08 15:00:41', '0000-00-00 00:00:00'),
(16, 44, 'D', '2019-04-08 14:58:56', '0000-00-00 00:00:00'),
(30, 2, 'B', '2019-04-07 01:41:32', '0000-00-00 00:00:00'),
(33, 4, 'A', '2019-04-07 01:48:47', '0000-00-00 00:00:00'),
(34, 5, 'A', '2019-04-07 01:50:17', '0000-00-00 00:00:00'),
(35, 11, 'B', '2019-04-07 01:51:32', '0000-00-00 00:00:00'),
(46, 45, 'C', '2019-04-08 15:00:04', '0000-00-00 00:00:00'),
(47, 46, 'B', '2019-04-08 15:00:04', '0000-00-00 00:00:00'),
(48, 47, 'B', '2019-04-08 15:00:17', '0000-00-00 00:00:00'),
(49, 48, 'A', '2019-04-10 08:48:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dethi`
--

CREATE TABLE `dethi` (
  `id` int(11) NOT NULL,
  `id_de` int(11) DEFAULT NULL,
  `id_ky` int(11) NOT NULL,
  `id_khoi` int(11) NOT NULL,
  `id_mh` int(11) NOT NULL,
  `thoigianthi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngaythi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `socau` int(11) NOT NULL,
  `id_gv` int(11) NOT NULL,
  `trangthai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dethi`
--

INSERT INTO `dethi` (`id`, `id_de`, `id_ky`, `id_khoi`, `id_mh`, `thoigianthi`, `ngaythi`, `socau`, `id_gv`, `trangthai`, `created_at`, `updated_at`) VALUES
(40, 8, 4, 1, 7, '15', '2020-05-21', 4, 1, 'Thi thử', '2020-05-24 02:39:14', '2020-05-24 02:39:14'),
(41, NULL, 4, 1, 12, '15', '2020-05-01', 10, 8, 'Thi thử', '2020-05-24 03:30:29', '2020-05-24 03:30:29'),
(42, NULL, 4, 1, 9, '15', '2020-05-13', 8, 1, 'Thi thử', '2020-05-24 03:31:45', '2020-05-24 03:31:45'),
(43, 1, 4, 1, 3, '15', '2020-05-05', 10, 1, 'Thi thử', '2020-05-24 03:45:05', '2020-05-24 03:45:05'),
(44, 44, 4, 1, 8, '15', '2020-05-20', 6, 1, 'Thi thử', '2020-05-24 03:54:50', '2020-05-24 03:54:50'),
(45, 2, 4, 1, 1, '15', '2020-05-02', 10, 1, 'Thi thử', '2020-05-24 07:20:15', '2020-05-24 07:20:15'),
(46, 3, 4, 1, 2, '15', '2020-05-06', 5, 1, 'Thi thử', '2020-05-24 07:27:22', '2020-05-24 07:27:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `id_gv` int(11) NOT NULL,
  `id` bigint(20) DEFAULT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_mh` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`id_gv`, `id`, `hoten`, `hinhanh`, `email`, `diachi`, `sdt`, `id_mh`, `created_at`, `updated_at`) VALUES
(1, 3, 'Đỗ Việt Linh', 'face4.png', 'linhviet208@gmail.com', 'Yên Mỹ - Hưng Yên', '0967978353', 8, '2020-05-19 15:54:28', '0000-00-00 00:00:00'),
(5, NULL, 'Ngô Thu Hằng', 'fsMX_7xY9_9ZTG_face2 (2).png', 'ngohang@gmail.com', 'chợ Trôi - thôn Phú Đa - xã Đức Thượng (Đại lý Tuyết Trọng)', '0987654321', NULL, '2020-05-22 05:28:13', '2020-05-22 05:28:13'),
(6, NULL, 'Trịnh Thị Linh', 'vNq3_b.png', 'linh@gmail.com', 'An Vien', '083411274', NULL, '2020-05-19 15:38:34', '2020-05-19 15:38:34'),
(8, NULL, 'Nguyễn Đức Anh', '1pXQ_face1.png', 'ducanh@gmail.com', 'Lục Nam - Bắc Giang', '0934234123', NULL, '2020-05-23 16:21:21', '2020-05-23 16:21:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocsinh`
--

CREATE TABLE `hocsinh` (
  `id_hs` int(11) NOT NULL,
  `id` bigint(20) DEFAULT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaysinh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocsinh`
--

INSERT INTO `hocsinh` (`id_hs`, `id`, `hoten`, `hinhanh`, `diachi`, `gioitinh`, `ngaysinh`, `sdt`, `created_at`, `updated_at`, `email`) VALUES
(2, 2, 'Lê Thị Ngọc Thảo', '', 'chợ Trôi - thôn Phú Đa - xã Đức Thượng (Đại lý Tuyết Trọng)', 'Nữ', '15/05/1998', '0965232057', '2020-05-23 17:06:08', '2020-05-23 17:06:08', ''),
(3, NULL, 'Đinh Văn Tuấn', '1cL4_4vFX_7Zus_face4.png', 'Chung Cu Tan Viet - Xa Duc Thuong', NULL, NULL, '0987654321', '2020-05-19 15:32:00', '2020-05-19 15:32:00', 'dinhtuan@gmail.com'),
(4, NULL, 'Triệu Tài Niêm', '6Hvp_b.png', 'Phu Da - Duc Thuong - Hoai Duc - Ha Noi', NULL, NULL, '0987654323', '2020-05-22 05:30:06', '2020-05-22 05:30:06', 'niemtrieu@gmail.com'),
(5, NULL, 'Phùng Đăng Khoa', '8R9K_linhtinh.jpg', 'An Vien, Tien Lu', NULL, NULL, '0987654323', '2020-05-23 16:17:18', '2020-05-23 16:17:18', 'khoa@gmail.com'),
(6, NULL, 'Nguyễn Văn Bắc', 'ugWa_may-man.jpg', 'Phu Da - Duc Thuong -Cầu Giấy -Hà Nội', NULL, NULL, '0986523205', '2020-05-23 16:22:38', '2020-05-23 16:22:38', 'baodo@gmail.com'),
(7, NULL, 'Lê Thanh Thư', 'ollK_face3.png', 'Chung Cu Tan Viet - Xa Duc Thuong', NULL, NULL, '0987654322', '2020-05-23 16:27:10', '2020-05-23 16:27:10', 'thanhthu@gmail.com'),
(8, NULL, 'Vũ Thị Linh', 'goLA_face3.png', 'An Vien, Tien Lu, Hung yên', NULL, NULL, '0975463235', '2020-05-23 17:02:05', '2020-05-23 17:02:05', 'linhvu@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketqua`
--

CREATE TABLE `ketqua` (
  `id_kq` int(11) NOT NULL,
  `id_de` int(11) NOT NULL,
  `id_hs` int(11) NOT NULL,
  `socaudung` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `xeploai` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `id_mh` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ketqua`
--

INSERT INTO `ketqua` (`id_kq`, `id_de`, `id_hs`, `socaudung`, `diem`, `xeploai`, `id_mh`, `created_at`, `updated_at`) VALUES
(41, 1, 3, 0, 0, 'Yếu', 3, '2019-04-22 05:45:02', '2019-04-22 05:45:02'),
(42, 1, 3, 0, 0, 'Yếu', 3, '2019-04-22 05:52:20', '2019-04-22 05:52:20'),
(43, 1, 3, 0, 0, 'Yếu', 3, '2019-04-22 05:53:41', '2019-04-22 05:53:41'),
(44, 1, 3, 0, 0, 'Yếu', 3, '2019-04-22 05:54:44', '2019-04-22 05:54:44'),
(45, 1, 2, 7, 4, 'Yếu', 3, '2019-04-22 08:08:38', '2019-04-22 08:08:38'),
(46, 1, 2, 7, 4, 'Yếu', 3, '2019-04-22 15:45:39', '2019-04-22 15:45:39'),
(47, 1, 2, 7, 4, 'Yếu', 3, '2019-04-22 15:50:17', '2019-04-22 15:50:17'),
(48, 1, 2, 7, 5, 'Yếu', 3, '2019-04-23 01:52:57', '2019-04-23 01:52:57'),
(49, 1, 2, 7, 5, 'Yếu', 3, '2019-04-23 01:53:28', '2019-04-23 01:53:28'),
(50, 1, 2, 7, 5, 'Yếu', 3, '2019-04-23 04:00:40', '2019-04-23 04:00:40'),
(51, 1, 2, 7, 5, 'Yếu', 3, '2019-04-23 04:04:57', '2019-04-23 04:04:57'),
(52, 1, 2, 7, 5, 'Yếu', 3, '2019-04-23 04:05:25', '2019-04-23 04:05:25'),
(53, 1, 2, 7, 5, 'Yếu', 3, '2019-04-23 04:06:42', '2019-04-23 04:06:42'),
(54, 1, 2, 7, 5, 'Yếu', 3, '2019-04-23 04:07:06', '2019-04-23 04:07:06'),
(55, 1, 2, 7, 5, 'Yếu', 3, '2019-04-23 04:07:18', '2019-04-23 04:07:18'),
(56, 1, 2, 7, 5, 'Yếu', 3, '2019-04-23 04:11:42', '2019-04-23 04:11:42'),
(59, 1, 2, 7, 5, 'Yếu', 3, '2019-04-23 04:45:56', '2019-04-23 04:45:56'),
(60, 1, 3, 0, 0, 'Yếu', 3, '2019-04-23 07:00:49', '2019-04-23 07:00:49'),
(75, 24, 3, 5, 3, 'Yếu', 3, '2019-04-28 06:02:54', '2019-04-28 06:02:54'),
(79, 1, 3, 0, 0, 'Yếu', 3, '2019-05-06 08:17:00', '2019-05-06 08:17:00'),
(134, 1, 2, 2, 2, 'Yếu', 3, '2020-05-24 00:47:21', '2020-05-24 00:47:21'),
(135, 1, 2, 2, 2, 'Yếu', 3, '2020-05-24 00:48:06', '2020-05-24 00:48:06'),
(136, 1, 2, 2, 2, 'Yếu', 3, '2020-05-24 00:48:54', '2020-05-24 00:48:54'),
(137, 2, 2, 4, 8, 'Giỏi', 1, '2020-05-24 00:51:27', '2020-05-24 00:51:27'),
(138, 3, 2, 2, 2, 'Yếu', 2, '2020-05-24 00:52:09', '2020-05-24 00:52:09'),
(139, 2, 2, 8, 8, 'Giỏi', 1, '2020-05-24 02:17:58', '2020-05-24 02:17:58'),
(140, 8, 2, 3, 8, 'Khá', 7, '2020-05-24 02:39:46', '2020-05-24 02:39:46'),
(141, 8, 2, 3, 8, 'Khá', 7, '2020-05-24 03:32:19', '2020-05-24 03:32:19'),
(142, 1, 2, 4, 4, 'Yếu', 3, '2020-05-24 07:19:03', '2020-05-24 07:19:03'),
(143, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:43:10', '2020-05-29 09:43:10'),
(144, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:44:37', '2020-05-29 09:44:37'),
(145, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:44:46', '2020-05-29 09:44:46'),
(146, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:45:00', '2020-05-29 09:45:00'),
(147, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:45:16', '2020-05-29 09:45:16'),
(148, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:46:22', '2020-05-29 09:46:22'),
(149, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:46:44', '2020-05-29 09:46:44'),
(150, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:46:53', '2020-05-29 09:46:53'),
(151, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:47:07', '2020-05-29 09:47:07'),
(152, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:47:15', '2020-05-29 09:47:15'),
(153, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:47:23', '2020-05-29 09:47:23'),
(154, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:47:50', '2020-05-29 09:47:50'),
(155, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:48:07', '2020-05-29 09:48:07'),
(156, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:48:39', '2020-05-29 09:48:39'),
(157, 1, 2, 4, 4, 'Yếu', 3, '2020-05-29 09:49:06', '2020-05-29 09:49:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoi`
--

CREATE TABLE `khoi` (
  `id_khoi` int(11) NOT NULL,
  `tenkhoi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoi`
--

INSERT INTO `khoi` (`id_khoi`, `tenkhoi`, `created_at`, `updated_at`) VALUES
(1, 'Khối 10', '2019-03-15 04:09:34', '0000-00-00 00:00:00'),
(2, 'Khối 11', '2019-03-15 04:09:34', '0000-00-00 00:00:00'),
(4, 'Khối 12', '2019-03-15 04:09:34', '0000-00-00 00:00:00'),
(7, 'khoi 13', '2019-04-09 06:43:19', '2019-04-09 06:43:19'),
(8, 'khoi 14', '2019-04-09 06:43:19', '2019-04-09 06:43:19'),
(9, 'khoi 15', '2019-04-09 06:43:28', '2019-04-09 06:43:28'),
(10, 'khoi 16', '2019-04-09 06:43:28', '2019-04-09 06:43:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kythi`
--

CREATE TABLE `kythi` (
  `id_ky` int(11) NOT NULL,
  `tenky` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kythi`
--

INSERT INTO `kythi` (`id_ky`, `tenky`, `created_at`, `updated_at`) VALUES
(1, '15 phút', '2019-03-15 04:10:05', '0000-00-00 00:00:00'),
(2, '45 phút', '2019-03-15 04:10:05', '0000-00-00 00:00:00'),
(3, 'HS Giỏi', '2019-03-15 04:10:05', '0000-00-00 00:00:00'),
(4, 'THPT Quốc Gia', '2019-04-03 05:53:15', '0000-00-00 00:00:00'),
(5, 'KT Học Kỳ', '2019-04-01 16:02:52', '2019-04-01 15:47:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaicauhoi`
--

CREATE TABLE `loaicauhoi` (
  `id_loaich` int(11) NOT NULL,
  `tenloai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaicauhoi`
--

INSERT INTO `loaicauhoi` (`id_loaich`, `tenloai`, `created_at`, `updated_at`) VALUES
(1, 'Một Lựa Chọn', '2019-03-16 11:23:13', '2019-03-16 11:23:13'),
(2, 'Nhiều Lựa Chọn', '2019-03-15 04:10:28', '0000-00-00 00:00:00'),
(3, 'Điền Khuyết', '2019-04-04 10:35:17', '0000-00-00 00:00:00'),
(4, 'True/False', '2019-04-04 10:35:17', '2019-03-16 11:28:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `tenmenu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id_menu`, `tenmenu`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2019-04-01 13:47:14', '0000-00-00 00:00:00'),
(2, 'Giới thiệu', '2019-04-01 13:47:14', '0000-00-00 00:00:00'),
(3, 'Tin tức', '2019-04-05 09:18:46', '0000-00-00 00:00:00'),
(4, 'Kỳ thi', '2019-04-05 09:18:46', '0000-00-00 00:00:00'),
(5, 'Tài liệu', '2019-04-05 09:18:46', '0000-00-00 00:00:00'),
(6, 'Liên hệ', '2019-04-05 09:18:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menucon`
--

CREATE TABLE `menucon` (
  `id_menucon` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menucon`
--

INSERT INTO `menucon` (`id_menucon`, `id_menu`, `noidung`) VALUES
(1, 4, 'Ôn thi THPT Quốc Gia'),
(2, 4, 'Kiểm tra 15 phút'),
(4, 4, 'KT 45 Phút'),
(5, 4, 'Kiểm Tra Học Kỳ'),
(6, 5, 'Môn Toán'),
(7, 5, 'Ngữ Văn'),
(8, 5, 'Ngoại Ngữ'),
(9, 5, 'Vật Lý'),
(10, 5, 'Hóa Học'),
(11, 5, 'Sinh học'),
(12, 5, 'Công Nghệ'),
(13, 5, 'Địa Lý'),
(14, 5, 'Lịch Sử'),
(15, 5, 'Tin Học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monthi`
--

CREATE TABLE `monthi` (
  `id_mh` int(11) NOT NULL,
  `tenmh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `monthi`
--

INSERT INTO `monthi` (`id_mh`, `tenmh`, `hinhanh`, `created_at`, `updated_at`) VALUES
(1, 'Toán', 'toanhoc.jfif', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(2, 'Vật Lý', 'vatly.jpg', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(3, 'Ngoại Ngữ', 'ngoaingu.jpg', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(4, 'Hóa Học', 'hoah.png', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(5, 'Sinh Học', 'sinhhoc.jpg', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(6, 'Ngữ Văn', 'ngu-van.jpg', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(7, 'Công Nghệ', 'congnghe.png', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(8, 'Tin Học', 'tinhoc.png', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(9, 'Lịch Sử', 'lichsu.jpg', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(12, 'Địa lý', 'Uqug_dialy.jfif', '2020-05-23 17:14:39', '2020-05-23 17:14:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mucdo`
--

CREATE TABLE `mucdo` (
  `tenmd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_mucdo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mucdo`
--

INSERT INTO `mucdo` (`tenmd`, `id_mucdo`, `created_at`, `updated_at`) VALUES
('Nhận biết', 1, '2019-04-06 07:47:45', '0000-00-00 00:00:00'),
('Thông hiểu', 2, '2019-04-06 08:32:26', '0000-00-00 00:00:00'),
('Vận dụng', 3, '2019-04-06 08:32:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thaoluandethi`
--

CREATE TABLE `thaoluandethi` (
  `id_thaoluan` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `id_de` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thaoluandethi`
--

INSERT INTO `thaoluandethi` (`id_thaoluan`, `noidung`, `id`, `id_de`, `created_at`, `updated_at`) VALUES
(3, 'Mình thấy rất tuyệt.Hiệu quả cho việc ôn thi, tính điểm nhanh và chính xác. Cảm ơn nhiều!', 2, 2, '2020-04-23 15:00:16', '2020-04-23 15:00:16'),
(4, 'Mình chỉ làm đc 30 câu thoi.', 2, 2, '2020-04-24 15:00:31', '2020-04-24 15:00:31'),
(5, 'rất bổ ích', 3, 1, '2020-04-11 06:20:55', '2020-04-11 06:20:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id_tintuc` int(11) NOT NULL,
  `tieude` text COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id_tintuc`, `tieude`, `tomtat`, `noidung`, `hinhanh`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '“Thiên nga đen: Xác suất cực nhỏ, tác động cực lớn” - Cuốn sách thay đổi cách', 'Chúng tôi thích làm việc theo ý thích của mình và được biết đến vì sự yêu thích gần như là ám ảnh với những thói quen. Nhưng chuyện gì cũng có lí do của nó. Thói quen giúp chúng tôi hoàn thành mục tiêu, giữ được động lực, hạn chế những khoảng thời gian chết và cũng...', 'Trước khi phát hiện ra châu Úc, người ta vẫn luôn tin rằng tất cả thiên nga trên đời đều có bộ lông màu trắng. Sự kiện bất ngờ đó đã thay đổi toàn bộ thế giới quan (về thiên nga) của nhân loại.<br>\r\nNhân sự kiện đó, Nassim Nicholas Taleb – chuyên gia hàng đầu về chống khủng hoảng kinh tế đã cho đưa ra khái niệm “thiên nga đen” để nói về những biến cố tưởng chừng không thể xảy ra nhưng lại có thể xảy ra. Theo Taleb, “thiên nga đen” có ba đặc điểm chính: không thể dự đoán; có tác động nặng nề; và sau khi nó xảy ra, người ta mới dựng lên một lời giải thích để khiến nó ít ngẫu nhiên hơn, dễ dự đoán hơn so với bản chất thật của nó. Một số ví dụ điển hình về sự kiện “thiên nga đen” mà hẳn là ai cũng từng biết đến: Thành công đáng kinh ngạc của Google, sự kiện 11/9 tấn công vào tòa tháp đôi ở Mỹ hay sóng thần Sumatra ở Indonesia khiến 230,000 người chết vào năm 2004.\r\n\r\nNhà sáng lập của Virgin Group giải thích như thế này: \"Tôi luôn luôn dậy từ rất sớm. Tương tự như việc giữ thái độ tích cực, hay kiểm soát hình thể cân đối, dậy sớm cũng là một thói quen mà bạn phải cố gắng duy trì. Trong 50 năm làm kinh doanh, tôi đã học được rằng nếu tôi dậy sớm, tôi có thể làm được nhiều thứ hơn trong ngày hôm đó, và trong cả cuộc đời\"\r\n<br>\r\nNhân sự kiện đó, Nassim Nicholas Taleb – chuyên gia hàng đầu về chống khủng hoảng kinh tế đã cho đưa ra khái niệm “thiên nga đen” để nói về những biến cố tưởng chừng không thể xảy ra nhưng lại có thể xảy ra. Theo Taleb, “thiên nga đen” có ba đặc điểm chính: không thể dự đoán; có tác động nặng nề; và sau khi nó xảy ra, người ta mới dựng lên một lời giải thích để khiến nó ít ngẫu nhiên hơn, dễ dự đoán hơn so với bản chất thật của nó. Một số ví dụ điển hình về sự kiện “thiên nga đen” mà hẳn là ai cũng từng biết đến: Thành công đáng kinh ngạc của Google, sự kiện 11/9 tấn công vào tòa tháp đôi ở Mỹ hay sóng thần Sumatra ở Indonesia khiến 230,000 người chết vào năm 2004.\r\n\r\nNhà sáng lập của Virgin Group giải thích như thế này: \"Tôi luôn luôn dậy từ rất sớm. Tương tự như việc giữ thái độ tích cực, hay kiểm soát hình thể cân đối, dậy sớm cũng là một thói quen mà bạn phải cố gắng duy trì. Trong 50 năm làm kinh doanh, tôi đã học được rằng nếu tôi dậy sớm, tôi có thể làm được nhiều thứ hơn trong ngày hôm đó, và trong cả cuộc đời\". <br>\r\n', 'tintuc1.jpg', 3, '2020-04-20 13:54:13', '2020-05-29 09:09:00'),
(3, 'Để thuyết trình như TED: 3 cuốn sách nên đọc', 'Bí Quyết Diễn Thuyết Trước Đám Đông “Chuẩn” TED \"Không có một phương pháp duy nhất nào để hùng biện giỏi\". Bởi thế giới tri thức quá rộng lớn và các diễn giả, khán giả thì rất đa dạng. Bất kỳ nỗ lực nào nhằm áp dụng một công thức duy nhất cũng thường phản tác dụng. Người nghe sẽ nhận ra điều này và cảm thấy mình đang bị thao túng.Bí Quyết Diễn Thuyết Trước Đám Đông “Chuẩn” TED \"Không có một phương pháp duy nhất nào để hùng biện giỏi\". Bởi thế giới tri thức quá rộng lớn và các diễn giả, khán giả thì rất đa dạng. Bất kỳ nỗ lực nào nhằm áp dụng một công thức duy nhất cũng thường phản tác dụng. Người nghe sẽ nhận ra điều này và cảm thấy mình đang bị thao túng.', 'Bí Quyết Diễn Thuyết Trước Đám Đông “Chuẩn” TED \"Không có một phương pháp duy nhất nào để hùng biện giỏi\". Bởi thế giới tri thức quá rộng lớn và các diễn giả, khán giả thì rất đa dạng. Bất kỳ nỗ lực nào nhằm áp dụng một công thức duy nhất cũng thường phản tác dụng. Người nghe sẽ nhận ra điều này và cảm thấy mình đang bị thao túng.Bí Quyết Diễn Thuyết Trước Đám Đông “Chuẩn” TED \"Không có một phương pháp duy nhất nào để hùng biện giỏi\". Bởi thế giới tri thức quá rộng lớn và các diễn giả, khán giả thì rất đa dạng. Bất kỳ nỗ lực nào nhằm áp dụng một công thức duy nhất cũng thường phản tác dụng. Người nghe sẽ nhận ra điều này và cảm thấy mình đang bị thao túng.', 'tintuc3.jpg', 3, '2020-05-03 13:09:30', '2020-05-29 09:08:40'),
(4, '“Thiên nga đen: Xác suất cực nhỏ, tác động cực lớn” - Cuốn sách thay đổi cách', 'Nhân sự kiện đó, Nassim Nicholas Taleb – chuyên gia hàng đầu về chống khủng hoảng kinh tế đã cho đưa ra khái niệm “thiên nga đen” để nói về những biến cố tưởng chừng không thể xảy ra nhưng lại có thể xảy ra. Theo Taleb, “thiên nga đen” có ba đặc điểm chính: không thể dự đoán; có tác động nặng nề; và sau khi nó xảy ra, người ta mới dựng lên một lời giải thích để khiến nó ít ngẫu nhiên hơn, dễ dự đoán hơn so với bản chất thật của nó. Một số ví dụ điển hình về sự kiện “thiên nga đen” mà hẳn là ai cũng từng biết đến: Thành công đáng kinh ngạc của Google, sự kiện 11/9 tấn công vào tòa tháp đôi ở Mỹ hay sóng thần Sumatra ở Indonesia khiến 230,000 người chết vào năm 2004.', 'Nhân sự kiện đó, Nassim Nicholas Taleb – chuyên gia hàng đầu về chống khủng hoảng kinh tế đã cho đưa ra khái niệm “thiên nga đen” để nói về những biến cố tưởng chừng không thể xảy ra nhưng lại có thể xảy ra. Theo Taleb, “thiên nga đen” có ba đặc điểm chính: không thể dự đoán; có tác động nặng nề; và sau khi nó xảy ra, người ta mới dựng lên một lời giải thích để khiến nó ít ngẫu nhiên hơn, dễ dự đoán hơn so với bản chất thật của nó. Một số ví dụ điển hình về sự kiện “thiên nga đen” mà hẳn là ai cũng từng biết đến: Thành công đáng kinh ngạc của Google, sự kiện 11/9 tấn công vào tòa tháp đôi ở Mỹ hay sóng thần Sumatra ở Indonesia khiến 230,000 người chết vào năm 2004.', 'tintuc2.jpg', 2, '2020-05-10 00:07:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` int(3) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hinhanh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `quyen`, `remember_token`, `created_at`, `updated_at`, `hinhanh`, `diachi`, `sdt`) VALUES
(2, 'Lê Thị Ngọc Thảo', 'lethingocthaohy@gmail.com', NULL, '$2y$10$p/hAjfvvHabMXR1wG6X7Uu1fsTTBIaiRLrIX2z4RPYnxLcyEeFWrq', 0, NULL, NULL, NULL, 'a.png', 'Chung cư Tân Việt, Hoài Đức, Hà Nội', '0986234575'),
(3, 'Đỗ Việt Linh', 'linhviet208@gmail.com', NULL, '$2y$10$IwOW0k8y/O4eX2tu.UDP3.xQkVoPy4OT0ZLpjStkRwGtrcQOmykjG', 1, NULL, NULL, NULL, 'face4.png', 'An Viên, Tiên Lữ, Hung Yên', '0965232057'),
(4, 'Trần Thị Tình', 'thutinh19985@gmail.com', NULL, '$2y$10$/Kb/vawvR5wKy0AkgBSzOO6YO4IHRt7MbOQ.jJ2FSNW4PqMeuxIja', 2, NULL, NULL, NULL, 'b.png', 'Chương Mỹ, Hà Nội', '9876543223'),
(5, 'Đinh Văn Tuấn', 'dinhtuan@gmail.com', NULL, '$2y$10$bcUF4/jqy4r/OICT8916keP67sZSmEwAC7wGKGkwhO2cauGUy5CWC', 0, NULL, '2020-05-19 15:32:00', '2020-05-19 15:32:00', '1cL4_4vFX_7Zus_face4.png', 'Chung Cu Tan Viet - Xa Duc Thuong', '0987654321'),
(6, 'Ngô Thu Hằng', 'ngohang@gmail.com', NULL, '$2y$10$oHo.y76zvjLi2KCBxceVh.xhYnKbajDT751gLrFoKsxOX9rTDG25.', 1, NULL, '2020-05-19 15:36:49', '2020-05-19 15:36:49', 'fsMX_7xY9_9ZTG_face2 (2).png', 'Phu Da - Duc Thuong - Hoai Duc - Ha Noi', '0386549555'),
(7, 'Phùng Đăng Khoa', 'khoa@gmail.com', NULL, '$2y$10$Hpy5hBIx/zBDkVM2unyJjujNbFF2YBIemmB15J2q/iOOPqX3pNER.', 0, NULL, '2020-05-23 16:17:18', '2020-05-23 16:17:18', '8R9K_linhtinh.jpg', 'An Vien, Tien Lu', '0987654323'),
(8, 'Đoàn Đức Đồng', 'dong@gmail.com', NULL, '$2y$10$tVTE3CixEZPErqtBa9TlA.sPG/nez37pfaSXMTBy5BsUT67OszAci', 0, NULL, '2020-05-23 16:20:13', '2020-05-23 16:30:54', 'CExQ_may-man.jpg', 'Chung Cu Tan Viet - Xa Duc Thuong', '0987654321'),
(9, 'Nguyễn Đức Anh', 'ducanh@gmail.com', NULL, '$2y$10$wP35oT6QPe5A3lyo7pIVleyJcnrhgOMhombyzJ/FGUN5APnJmsnX.', 1, NULL, '2020-05-23 16:21:21', '2020-05-23 16:21:21', '1pXQ_face1.png', 'Lục Nam - Bắc Giang', '0934234123'),
(10, 'Nguyễn Văn Bắc', 'baodo@gmail.com', NULL, '$2y$10$UYAjSINTBPV1Vm2EWtgDjOj4t5jBgzyOvAsCwmjUeIMdwroCIkiZ2', 0, NULL, '2020-05-23 16:22:38', '2020-05-23 16:22:38', 'ugWa_may-man.jpg', 'Phu Da - Duc Thuong -Cầu Giấy -Hà Nội', '0986523205'),
(11, 'Lê Thanh Thư', 'thanhthu@gmail.com', NULL, '$2y$10$51HpxL.Wf6zCLv74v15bO.6unaNuXxM3cf2VftCO6nHa.9yXtWL0u', 1, NULL, '2020-05-23 16:27:10', '2020-05-23 16:30:32', 'ollK_face3.png', 'Chung Cu Tan Viet - Xa Duc Thuong', '0987654322');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`id_cauhoi`);

--
-- Chỉ mục cho bảng `ctbailam`
--
ALTER TABLE `ctbailam`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ctdethi`
--
ALTER TABLE `ctdethi`
  ADD PRIMARY KEY (`id_de`,`id_cauhoi`);

--
-- Chỉ mục cho bảng `dapandung`
--
ALTER TABLE `dapandung`
  ADD PRIMARY KEY (`id_dad`);

--
-- Chỉ mục cho bảng `dethi`
--
ALTER TABLE `dethi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`id_gv`);

--
-- Chỉ mục cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`id_hs`);

--
-- Chỉ mục cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`id_kq`);

--
-- Chỉ mục cho bảng `khoi`
--
ALTER TABLE `khoi`
  ADD PRIMARY KEY (`id_khoi`);

--
-- Chỉ mục cho bảng `kythi`
--
ALTER TABLE `kythi`
  ADD PRIMARY KEY (`id_ky`);

--
-- Chỉ mục cho bảng `loaicauhoi`
--
ALTER TABLE `loaicauhoi`
  ADD PRIMARY KEY (`id_loaich`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Chỉ mục cho bảng `menucon`
--
ALTER TABLE `menucon`
  ADD PRIMARY KEY (`id_menucon`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `monthi`
--
ALTER TABLE `monthi`
  ADD PRIMARY KEY (`id_mh`);

--
-- Chỉ mục cho bảng `mucdo`
--
ALTER TABLE `mucdo`
  ADD PRIMARY KEY (`id_mucdo`);

--
-- Chỉ mục cho bảng `thaoluandethi`
--
ALTER TABLE `thaoluandethi`
  ADD PRIMARY KEY (`id_thaoluan`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id_tintuc`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `id_cauhoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `ctbailam`
--
ALTER TABLE `ctbailam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT cho bảng `ctdethi`
--
ALTER TABLE `ctdethi`
  MODIFY `id_de` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `dapandung`
--
ALTER TABLE `dapandung`
  MODIFY `id_dad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `dethi`
--
ALTER TABLE `dethi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `id_gv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  MODIFY `id_hs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  MODIFY `id_kq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT cho bảng `khoi`
--
ALTER TABLE `khoi`
  MODIFY `id_khoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `kythi`
--
ALTER TABLE `kythi`
  MODIFY `id_ky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `loaicauhoi`
--
ALTER TABLE `loaicauhoi`
  MODIFY `id_loaich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `menucon`
--
ALTER TABLE `menucon`
  MODIFY `id_menucon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `monthi`
--
ALTER TABLE `monthi`
  MODIFY `id_mh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `mucdo`
--
ALTER TABLE `mucdo`
  MODIFY `id_mucdo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `thaoluandethi`
--
ALTER TABLE `thaoluandethi`
  MODIFY `id_thaoluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id_tintuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
