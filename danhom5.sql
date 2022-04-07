-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 08, 2021 lúc 05:16 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id17704132_danhom5`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `IdCart` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `ChiTiet` longtext COLLATE utf8_unicode_ci NOT NULL,
  `GiaTien` int(11) NOT NULL,
  `TrangThai` text COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`IdCart`, `IdUser`, `ChiTiet`, `GiaTien`, `TrangThai`, `ThoiGian`) VALUES
(11, 4, '2016/12/07-03:02:53am', 25, 'Chưa thanh toán', '2016/12/07-03:02:53am'),
(12, 2, '2016/12/07-03:02:53am', 25, 'Chưa thanh toán', '2016/12/07-03:02:53am'),
(13, 7, '\r\n								Mã sản phẩm: 30 - Số lượng: 1</br>								', 0, 'Đã thanh toán', ''),
(14, 4, '\r\n								Mã sản phẩm: 2 - Số lượng: 2</br>								', 15200000, 'Đã thanh toán', '30/09/21-03:48:20am'),
(16, 8, '\r\n								Mã sản phẩm: 38 - Số lượng: 1</br>Mã sản phẩm: 39 - Số lượng: 1</br>								', 19950000, 'Chưa thanh toán', '30/09/21-12:12:40pm'),
(17, 8, '\r\n								Mã sản phẩm: 33 - Số lượng: 1</br>Mã sản phẩm: 38 - Số lượng: 1</br>Mã sản phẩm: 39 - Số lượng: 1</br>								', 19950000, 'Chưa thanh toán', '30/09/21-12:13:06pm'),
(18, 8, '\r\n								Mã sản phẩm: 30 - Số lượng: 2</br>								', 14980000, 'Chưa thanh toán', '01/10/21-03:01:59am'),
(19, 8, '\r\n								Mã sản phẩm: 17 - Số lượng: 2</br>								', 13580000, 'Đã thanh toán', '01/10/21-03:33:53am'),
(20, 8, '\r\n								Mã sản phẩm: 12 - Số lượng: 1</br>Mã sản phẩm: 38 - Số lượng: 1</br>								', 19950000, 'Chưa thanh toán', '01/10/21-03:35:59am'),
(30, 8, '\r\n								Mã sản phẩm: 10 - Số lượng: 3</br>								', 13170000, 'Chưa thanh toán', '08/10/21-10:09:11am'),
(31, 8, '\r\n								Mã sản phẩm: 10 - Số lượng: 1</br>								', 4390000, 'Chưa thanh toán', '08/10/21-02:24:45pm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomsp`
--

CREATE TABLE `nhomsp` (
  `IdNhomSP` int(11) NOT NULL,
  `TenNhomSP` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HinhNSP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhomsp`
--

INSERT INTO `nhomsp` (`IdNhomSP`, `TenNhomSP`, `HinhNSP`) VALUES
(1, 'Ti Vi', '/nhomsp/TV.jpg'),
(2, 'Tủ Lạnh', '/nhomsp/TL.jpg'),
(3, 'Máy Giặt', '/nhomsp/MG.jpg'),
(4, 'Máy Lạnh', '/nhomsp/ML.jpg'),
(5, 'Sản Phẩm Mới', '/nhomsp/Tittle-Microsite-Singapore.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `IdSP` int(11) NOT NULL,
  `IdNhomSP` int(11) NOT NULL,
  `TenSP` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HangSX` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) NOT NULL,
  `Gia` int(11) NOT NULL,
  `ChiTiet` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GiamGia` int(11) NOT NULL,
  `BaoHanh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`IdSP`, `IdNhomSP`, `TenSP`, `HangSX`, `Hinh`, `Gia`, `ChiTiet`, `GiamGia`, `BaoHanh`) VALUES
(1, 0, 'TV Sony 60 inch', 'TOSHIBA', '/sanpham/tvsn1.jpg', 30900000, '', 0, 50),
(2, 1, 'TV Sony 40 inch', 'Sony', '/sanpham/tvsn2.jpg', 7600000, '', 0, 0),
(3, 1, 'TV Sony 55 inch', 'Sony', '/sanpham/tvsn3.jpg', 35900000, '', 0, 0),
(4, 1, 'TV Samsung 24 inch', 'Samsung', '/sanpham/tvss1.jpg', 3900000, '', 0, 0),
(5, 1, 'TV Samsung 32 inch', 'Samsung', '/sanpham/tvss2.jpg', 5900000, '', 0, 0),
(7, 1, 'TV Samsung 40 inch', 'Samsung', '/sanpham/tvss4.jpg', 10490000, '', 0, 0),
(8, 1, 'TV Panasonic 40 inch', 'Panasonic', '/sanpham/tvp1.jpg', 6790000, '', 0, 0),
(9, 1, 'TV Panasonic 50 inch', 'Panasonic', '/sanpham/tvp2.jpg', 11790000, '', 0, 0),
(10, 2, 'Tu Lanh Panasonic 152 lit', 'Panasonic', '/sanpham/tlp1.jpg', 4390000, '<p><strong>C&ocirc;ng suất ti&ecirc;u thụ:</strong> 100 - 180 W.</p>\r\n\r\n<p><strong>D&ograve;ng điện:</strong> 220V/50Hz/1.5A.</p>\r\n\r\n<p><strong>Trọng lượng:</strong> 62 Kg.</p>\r\n\r\n<p><strong>K&iacute;ch thước (RxSxC):</strong> 587 x 650 x 1677 mm.</p>\r\n', 0, 0),
(11, 2, 'Tu Lanh Panasonic 188 lit', 'Panasonic', '/sanpham/tlp2.jpg', 5490000, '<p><strong>C&ocirc;ng suất ti&ecirc;u thụ:</strong> 100 - 180 W.</p>\r\n\r\n<p><strong>D&ograve;ng điện:</strong> 220V/50Hz/1.5A.</p>\r\n\r\n<p><strong>Trọng lượng:</strong> 62 Kg.</p>\r\n\r\n<p><strong>K&iacute;ch thước (RxSxC):</strong> 587 x 650 x 1677 mm.</p>\r\n', 0, 0),
(12, 2, 'Tu Lanh Panasonic 546 lit', 'Panasonic', '/sanpham/tlp3.jpg', 20500000, '<p><strong>C&ocirc;ng suất ti&ecirc;u thụ:</strong> 100 - 180 W.</p>\r\n\r\n<p><strong>D&ograve;ng điện:</strong> 220V/50Hz/1.5A.</p>\r\n\r\n<p><strong>Trọng lượng:</strong> 62 Kg.</p>\r\n\r\n<p><strong>K&iacute;ch thước (RxSxC):</strong> 587 x 650 x 1677 mm.</p>\r\n', 0, 0),
(13, 2, 'Tu Lanh Samsung 203 lit', 'Samsung', '/sanpham/tlss1.jpg', 6290000, '', 0, 0),
(14, 2, 'Tu Lanh Samsung 518 lit', 'Samsung', '/sanpham/tlss2.jpg', 42990000, '', 0, 0),
(15, 2, 'Tu Lanh Toshiba 359 lit', 'Toshiba', '/sanpham/tlt1.jpg', 11490000, '', 0, 0),
(16, 2, 'Tu Lanh Toshiba 600 lit', 'Toshiba', '/sanpham/tlt2.jpg', 18900000, '<p><strong>C&ocirc;ng suất ti&ecirc;u thụ:</strong> 100 - 180 W.</p>\r\n\r\n<p><strong>D&ograve;ng điện:</strong> 220V/50Hz/1.5A.</p>\r\n\r\n<p><strong>Trọng lượng:</strong> 62 Kg.</p>\r\n\r\n<p><strong>K&iacute;ch thước (RxSxC):</strong> 587 x 650 x 1677 mm.</p>\r\n', 0, 0),
(17, 3, 'May Giat Toshiba 10kg', 'Toshiba', '/sanpham/mgt1.jpg', 6790000, '', 0, 0),
(18, 3, 'May Giat Toshiba 10,5kg', 'Toshiba', '/sanpham/mgt2.jpg', 12290000, '', 0, 0),
(19, 3, 'May Giat Toshiba 11kg', 'Toshiba', '/sanpham/mgt3.jpg', 10190000, '', 0, 0),
(20, 3, 'May Giat Samsung 8kg', 'Samsung', '/sanpham/mgss1.jpg', 4190000, '', 0, 0),
(21, 3, 'May Giat Samsung 9kg', 'Samsung', '/sanpham/mgss2.jpg', 6690000, '', 0, 0),
(22, 3, 'May Giat Samsung 10,5kg', 'Samsung', '/sanpham/mgss3.jpg', 14190000, '', 0, 0),
(23, 3, 'May Giat Samsung 16kg', 'Samsung', '/sanpham/mgss4.jpg', 15900000, '', 0, 0),
(24, 3, 'May Giat Sharp 7kg', 'Sharp', '/sanpham/mgs1.jpg', 3790000, '', 0, 0),
(25, 3, 'May Giat Sharp 10kg', 'Sharp', '/sanpham/mgs2.jpg', 6990000, '', 0, 0),
(26, 4, 'May Lanh Panasonic 1,5HP', 'Panasonic', '/sanpham/mlp1.jpg', 9990000, '', 0, 0),
(27, 4, 'May Lanh Panasonic inverter 1,5HP', 'Panasonic', '/sanpham/mlp2.jpg', 11290000, '', 0, 0),
(28, 4, 'May Lanh Samsung 1,5HP', 'Samsung', '/sanpham/mlss1.jpg', 11650000, '', 0, 0),
(29, 4, 'May Lanh Samsung 2HP', 'Samsung', '/sanpham/mlss2.jpg', 16790000, '', 0, 0),
(30, 4, 'May Lanh Toshiba 1HP', 'Toshiba', '/sanpham/mlt1.jpg', 7490000, '', 0, 0),
(31, 4, 'May Lanh Toshiba 1,5HP', 'Toshiba', '/sanpham/mlt2.jpg', 18290000, '', 0, 0),
(32, 4, 'May Lanh Toshiba 2,5HP', 'Toshiba', '/sanpham/mlt3.jpg', 19950000, '', 0, 0),
(33, 0, 'May Giat Panasonic 8kg NAF80VS9GRV', '', '/sanpham/4.jpg', 19950000, '', 0, 0),
(34, 0, 'May Giat Panasonic 10kg NARV', 'aa', '/sanpham/2.jpg', 19950000, 'ád', 45, 45),
(35, 0, 'May Giat Panasonic 8kg VS9', '13123', '/sanpham/5.jpg', 19950000, '', 234, 34),
(38, 5, 'May Giat Panasonic 8kg VS9GDG', '', '/sanpham/2.jpg', 19950000, '', 0, 0),
(39, 5, 'May Giat Panasonic 8kg VS9GS', '', '/sanpham/2.jpg', 19950000, '', 0, 0),
(40, 1, 'TiVi sieu moi', 'Samsung', '/nhomsp/TV.jpg', 5000000, '<p><strong>Chất Lượng H&igrave;nh Ảnh Gần Chuẩn FHD</strong><br />\r\n<br />\r\n<br />\r\nC&ocirc;ng nghệ Ultra Clean View ph&acirc;n t&iacute;ch nội dung với một thuật to&aacute;n tăng cường, để lọc nhiễu,<br />\r\ngiảm nh&ograve;e.Thậm ch&iacute;, nếu nguồn nội dung kh&ocirc;ng đạt chuẩn FHD,<br />\r\nbạn vẫn c&oacute; thể tận hưởng h&igrave;nh ảnh s&aacute;ng r&otilde; với chất lượng gần chuẩn FHD nhất.</p>\r\n', 4500000, 2),
(42, 3, 'LG2414512', 'LG', '/sanpham/mgss2.jpg', 11000000, '<p>ggfđsssffdsaasd</p>\r\n', 1, 12),
(43, 2, 'LG Inverter 209 l?t GN-M208BL', 'LG', '/sanpham/tulanh1.jpg', 72000000, '<p><span style=\"font-size:16px\"><a href=\"https://www.dienmayxanh.com/tu-lanh/lg-gn-m208bl\" target=\"_blank\" title=\"Tủ lạnh LG Inverter 208 lít GN-M208BL\">Tủ lạnh LG Inverter 209 l&iacute;t GN-M208BL</a>&nbsp;l&agrave; d&ograve;ng&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh?g=ngan-da-tren\" target=\"_blank\" title=\"tủ lạnh ngăn đá trên\">tủ lạnh ngăn đ&aacute; tr&ecirc;n</a>&nbsp;truyền thống, sở hữu thiết kế bề ngo&agrave;i kh&aacute; đơn giản, nhưng kh&ocirc;ng k&eacute;m phần sang trọng với phần tay cầm dạng ẩn, kết hợp c&ugrave;ng t&ocirc;ng m&agrave;u c&aacute; t&iacute;nh, tạo n&ecirc;n vẻ đẹp ri&ecirc;ng cho chiếc tủ lạnh n&agrave;y, l&agrave;m nổi bật hơn kh&ocirc;ng gian nội thất nh&agrave; bạn.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 5, 12),
(44, 2, ' Inverter 360 lit RT35K5982BS/SV', 'SamSung', '/sanpham/tulanh2.jpg', 15700000, '<p><span style=\"font-size:16px\"><a href=\"https://www.dienmayxanh.com/tu-lanh/samsung-rt35k5982bs-sv\" target=\"_blank\" title=\"Tủ lạnh Samsung Inverter 360 lít RT35K5982BS/SV\">Tủ lạnh Samsung Inverter 360 l&iacute;t RT35K5982BS/SV</a>&nbsp;l&agrave; sản phẩm được ra mắt trong năm 2018 với thiết kế&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh?g=ngan-da-tren\" target=\"_blank\" title=\"ngăn đá trên\">ngăn đ&aacute; tr&ecirc;n</a>&nbsp;v&agrave; ngăn lạnh b&ecirc;n dưới kh&aacute; quen thuộc với thị trường Việt Nam, sản phẩm phủ l&ecirc;n m&igrave;nh t&ocirc;ng m&agrave;u đen, kết hợp với c&aacute;c đường n&eacute;t tr&ecirc;n th&acirc;n tủ lạnh tạo n&ecirc;n sự cứng c&aacute;p, dễ d&agrave;ng h&ograve;a nhập với kh&ocirc;ng gian nội thất của ng&ocirc;i nh&agrave; bạn.</span></p>\r\n', 0, 0),
(45, 2, ' Inverter 188 lit RDNT200I50VS ', 'Panasonic', '/sanpham/tulanh3.jpg', 5600000, '<p><span style=\"font-size:16px\"><a href=\"https://www.dienmayxanh.com/tu-lanh/beko-rdnt200i50vs\" target=\"_blank\" title=\"Tủ lạnh Beko Inverter 188 lít RDNT200I50VS\">Tủ lạnh Beko Inverter 188 l&iacute;t RDNT200I50VS</a>&nbsp;được thiết kế nhỏ gọn, c&oacute; thể được đặt dễ d&agrave;ng trong những căn bếp nhỏ.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">L&agrave;&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh\" target=\"_blank\" title=\"tủ lạnh\">tủ lạnh</a>&nbsp;với&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh?g=ngan-da-tren\" target=\"_blank\" title=\"ngăn đá trên\">ngăn đ&aacute; tr&ecirc;n</a>&nbsp;điển h&igrave;nh, dung t&iacute;ch sử dụng l&ecirc;n đến&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh?g=tu-150-300-lit\" target=\"_blank\" title=\"từ 150 - 300 lít\">188 l&iacute;t</a>&nbsp;đủ đảm bảo cho nhu cầu sử dụng của c&aacute;c hộ gia đ&igrave;nh từ 2 - 3 người.</span></p>\r\n', 0, 0),
(46, 1, 'Tivi LG 4K 55 inch 55UP7550PTC', 'LG', '/sanpham/tivi2.jpg', 18400000, 'Smart tivi LG 4K 55 inch 55UP7550PTC được thiết kế với kiểu dáng vô cùng đơn giản nhưng không kém phần sang trọng.\r\n\r\nTivi LG 55 inch góp phần tạo điểm nhấn cho không gian nơi bạn trưng bày nên tinh tế và thu hút dù là phòng khách hay phòng ngủ hoặc bất cứ nơi nào bạn muốn đặt tivi.\r\n\r\nHình ảnh có chiều sâu hơn nhờ công nghệ Active HDR\r\nTivi LG 4K được trang bị công nghệ Active HDR với khả năng phân tích từng khung hình, tối ưu vùng sáng và vùng tối, giúp người xem có thể thưởng thức được những nội dung hình ảnh có chiều sâu, chất lượng tương tự như bản gốc với nhiều định dạng như HLG và HDR10 Pro.\r\n\r\nThưởng thức những thước phim theo ý đạo diễn truyền tải nhờ công nghệ FilmMaker Mode\r\nVới khả năng tự động điều chỉnh tắt làm mịn chuyển động của công nghệ FilmMaker Mode mang lại hiệu ứng hình ảnh đầy hơn. Người xem có thể thưởng thức được cảnh chuyển động vô cùng rõ nét và chuẩn điện ảnh.\r\n\r\nBên cạnh đó, tivi còn được trang bị 8 chế độ hình ảnh như trò chơi, thể thao, rạp chiếu phim,... giúp bạn có nhiều lựa chọn hơn trong việc tùy chỉnh xem nội dung.', 0, 0),
(47, 1, 'Tivi Sony 4K 55 inch KD-55X7500H ', 'Sony', '/sanpham/tivi3.jpg', 17400000, 'Loại tivi: Android Tivi55 inch4K\r\nHệ điều hành :Android 9.0\r\nỨng dụng phổ biến:YouTubeYouTube KidsNetflixGalaxy Play (Fim+)Clip TVFPT PlayMyTVZing TVPops KidVieONMP3 ZingNhaccuatuiSpotifyGoogle PlayTrình duyệt web\r\nCông nghệ hình ảnh:HDR10Màu sắc sống động Live ColourTăng cường màu sắc TriluminosBộ xử lý X1 4KChuyển động mượt Motionflow XR 200Kiểm soát đèn nền Direct LED Frame DimmingNâng cấp hình ảnh 4K X-Reality PRO\r\nĐiều khiển bằng giọng nói:Tìm kiếm giọng nói trên YouTube bằng tiếng ViệtGoogle Assistant có tiếng Việt\r\nRemote thông minh:Remote tích hợp micro tìm kiếm bằng giọng nói\r\nChiếu hình từ điện thoại lên TV:Chromecast\r\nKích thước:Ngang 124.1 cm - Cao 78.1 cm - Dày 34 cm\r\nNăm ra mắt:2020\r\nHãng:Sony', 0, 0),
(48, 4, 'Daikin  1 HP FTKA25VMVMV', 'Daikin', '/sanpham/maylanh1.jpg', 10590000, 'Với công nghệ Inverter, máy lạnh có khả năng tùy chỉnh công suất hoạt động của máy nén giúp máy hoạt động bền bỉ, mạnh mẽ và tiết kiệm điện năng đáng kể.\r\n\r\nKhông chỉ có công nghệ Inverter trên mẫu máy lạnh này còn có chế độ Econo, đây là một chế độ hoạt động ở công suất thấp, thích hợp sử dụng vào buổi tối hoặc những ngày thời tiết không quá nóng, giúp cho gia đình bạn tiết kiệm đáng kể chi phí tiền điện hàng tháng.', 0, 0),
(49, 4, 'Inverter 1 HP ATKA25UAVMV', 'Daikin', '/sanpham/maylanh2.jpg', 9530000, 'Luồng gió thoải mái, không bị gió thổi trực tiếp gây khó chịu với hiệu ứng gió Coanda.\r\nTuổi thọ máy cao với cánh tản nhiệt dàn nóng được phủ 2 lớp chống ăn mòn, bo mạch có chức năng bảo vệ điện áp cao & thấp.\r\nBảo vệ sức khoẻ cho cả gia đình với chức năng chống ẩm mốc.\r\nCảm giác mát lạnh tức thì với chế độ làm lạnh nhanh Powerful.\r\nTiết kiệm điện, hoạt động êm ái với công nghệ Inverter.\r\nTiết kiệm điện năng hiệu quả với chế độ Econo.\r\nHạn chế bụi trong không khí với lưới lọc bụi thô.\r\nTiện lợi hơn với tính năng tự khởi động lại khi có điện\r\nCông suất 1 HP phù hợp với không gian nhỏ dưới 15 m2', 0, 12),
(50, 4, 'Inverter 1.5 HP CU/CS-PU12WKH', 'Panasonic', '/sanpham/maylanh3.jpg', 12890000, 'Bầu không khí trong lành, sạch bụi bẩn, bụi mịn PM2.5 cùng công nghệ Nanoe-G.Thiết kế hiện đại, sang trọng cùng công suất 1.5 HP.Tiết kiệm điện tối đa, làm lạnh hiệu quả với công nghệ Inverter và chế độ Eco tích hợp AI. Khả năng làm lạnh nhanh PowerFul. Chức năng hút ẩm cho căn phòng khô thoáng trong những ngày thời tiết ẩm ướt, khó chịu. Điều khiển máy lạnh từ xa qua điện thoại (lắp thêm router Wifi). Tiện lợi an tâm với chế độ hẹn giờ bật/tắt máy lạnh', 2, 12),
(51, 5, 'Inverter 1.5 HP CU/CS-YZ12WKH', 'Panasonic', '/sanpham/maygiat4.jpg', 14800000, 'Máy lạnh 2 chiều 1.5 HP cho mùa hè mát lạnh và mùa đông ấm áp. Bầu không khí trong lành, sạch bụi bẩn, bụi mịn PM2.5 cùng công nghệ Nanoe-G. Tận hưởng cảm giác mát lạnh thoải mái và tiết kiệm năng lượng tối đa với chế độ Eco tích hợp trí tuệ nhân tạo AI. Tiết kiệm điện, làm lạnh hiệu quả với công nghệ Inverter hiện đại. Tận hưởng không khí mát lạnh nhanh chóng với chế độ làm lạnh nhanh Powerful. Cánh đảo gió Big Flap - Đưa gió lạnh đi xa hơn. Không gian khô ráo, bảo vệ sức khỏe người dùng nhờ chức năng hút ẩm. Điều khiển máy lạnh từ xa qua điện thoại (lắp thêm router Wifi)\r\n', 5, 12),
(52, 5, 'Sony 4K 55 inch KD-55X7500H', 'Sony', '/sanpham/tivi4.jpg', 14560000, 'Thiết kế đơn giản, chân đế hình chữ V vững chắc.\r\nHiển thị hình ảnh sắc nét gấp 4 lần Full HD với độ phân giải 4K .\r\nHình ảnh có màu sắc, độ tương phản đẹp, độ chi tiết chất lượng cao bằng Chip xử lý X1 4K Processor mạnh mẽ.\r\nTái tạo dải màu rộng, chính xác hơn nhờ TRILUMINOS Display.\r\nTăng cường độ tương phản hình ảnh, sắc trắng tinh khiết hơn, sắc đen sâu hơn nhờ công nghệ HDR10.\r\nNhững cảnh chuyển động nhanh mượt mà và rõ nét hơn, không bị mờ nhờ công nghệ Motionflow™ XR 200 Hz.\r\nChất lượng âm thanh siêu trầm và ấn tượng nhờ loa Bass Reflex Speaker.\r\nĐáp ứng mọi nhu cầu giải trí của bạn với kho ứng dụng vô cùng phong phú trên hệ điều hành Android 9.0.\r\nTìm kiếm bằng giọng nói hỗ trợ tiếng Việt qua chiếc Remote thông minh kết hợp Google Assistant.\r\nĐiều khiển tivi bằng điện thoại đơn giản với ứng dụng Android TV.\r\nChia sẻ nội dung trên điện thoại lên màn hình tivi bằng tính năng Chromecast được tích hợp sẵn trên tivi Sony.\r\nHỗ trợ đa dạng các cổng kết nối tiện ích.', 0, 24),
(53, 5, 'Casper 32 inch 32HX6200  ', 'Casper', '/sanpham/tivi5.jpg', 5900000, 'Thiết kế nhỏ gọn, chắc chắn. Hiển thị hình ảnh đẹp, rõ nét với độ phân giải HD.\r\nTạo độ sâu cho hình ảnh ấn tượng hơn qua công nghệ HDR. Tấm nền IPS cho màu sắc tự nhiên, rực rỡ từ nhiều góc nhìn. Trải nghiệm âm thanh như trong rạp hát ngay tại ngôi nhà mình với công nghệ Dolby Audio. Giao diện đơn giản, nhiều ứng dụng hữu ích qua hệ điều hành Linux. Trình chiếu màn hình điện thoại lên tivi dễ dàng cùng tính năng Chromecast. Kết hợp sử dụng với nhiều thiết bị hiện đại nhờ hệ thống kết nối không dây, có dây đa dạng .', 2, 24),
(54, 5, 'LG 4K 55 inch 55UP7550PTC ', 'LG', '/sanpham/tivi6.jpg', 18400000, 'Thiết kế thanh lịch, sang trọng. Hình ảnh hiển thị sắc nét gấp 4 lần Full HD nhờ độ phân giải 4K. Hình ảnh có chiều sâu hơn nhờ công nghệ Active HDR. Màu sắc hình ảnh sống động, độ tương phản cao hơn nhờ công nghệ HDR Dynamic Tone Mapping. Chất lượng hình ảnh được nâng cấp lên gần chuẩn 4K nhờ công nghệ 4K AI Upscaling. Thưởng thức những thước phim theo ý đạo diễn truyền tải nhờ công nghệ FilmMaker Mode. Âm thanh được tối ưu hóa theo nội dung xem, chân thực và sống động với công nghệ âm thanh AI Sound và tổng công suất loa 20W. Hệ điều hành WebOS 6.0 thân thiện, dễ sử dụng. Điều khiển tivi và các thiết bị thông minh trong nhà trên màn hình tivi dễ dàng bằng giọng qua Magic Remote và trí tuệ nhân tạo LG ThinQ. Điều khiển tivi thông qua điện thoại tiện lợi qua ứng dụng LG TV Plus. Chiếu màn hình điện thoại lên tivi dễ dàng nhờ tính năng AirPlay 2 (iPhone) và Screen Mirroring (Android). Đa dạng các cổng kết nối', 5, 24),
(60, 1, 'Sony 4K 50 inch KD-50X75 VN3', 'Sony', '/sanpham/tivi7.jpg', 16350000, '<ul>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">Tivi Sony c&oacute; độ ph&acirc;n giải 4K hiển thị h&igrave;nh ảnh sắc n&eacute;t gấp 4 lần Full HD</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">Bộ xử l&yacute; X1 4K HDR Processor giảm nhiễu, n&acirc;ng cao chất lượng h&igrave;nh ảnh</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">C&ocirc;ng nghệ Direct LED Frame Dimming&nbsp;tăng độ tương phản cho h&igrave;nh ảnh</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">Hỗ trợ&nbsp;<a href=\"https://www.nguyenkim.com/tat-tan-tat-nhung-gi-ban-can-biet-ve-tivi-hdr-hdr10-va-hdr10.html\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"HDR10\">HDR10</a>, HLG tăng chi tiết h&igrave;nh ảnh, sắc trắng tinh khiết, sắc đen s&acirc;u</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">C&ocirc;ng nghệ XR200, Auto mode cho h&igrave;nh ảnh chuyển động nhanh mượt m&agrave;</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">Thưởng thức &acirc;m thanh v&ograve;m sống động với c&ocirc;ng nghệ &acirc;m thanh Dolby Audio</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">Cho ph&eacute;p t&ugrave;y chọn &acirc;m thanh theo nội dung xem phim, ca nhạc, b&oacute;ng đ&aacute;,...</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:14px\">Android Tivi sở hữu hệ điều h&agrave;nh Android 10 với kho ứng dụng giải tr&iacute; đa dạng</span></span></li>\r\n</ul>\r\n', 2, 12),
(61, 1, 'Crystal UHD 4K 50 inch UA50AU90', 'Samsung', '/sanpham/tivi8.jpg', 18000000, '<p>M&agrave;n h&igrave;nh Airslim UHD 4K (3840 x 2160) hiển thị h&igrave;nh ảnh sắc n&eacute;t C&ocirc;ng nghệ Crystal 4K tối ưu h&oacute;a n&acirc;ng cấp độ chi tiết của từng gam m&agrave;u Cảm nhận chi tiết v&agrave; sắc th&aacute;i ho&agrave;n mỹ được hỗ trợ c&ocirc;ng nghệ HDR10+ C&ocirc;ng nghệ UHD Dimming tăng cường độ chi tiết hiển thị của h&igrave;nh ảnh Trải nghiệm h&igrave;nh ảnh mượt m&agrave; với c&ocirc;ng nghệ Motion Xcelerator Turbo Tận hưởng &acirc;m thanh v&ograve;m theo từng chuyển động nhờ C&ocirc;ng nghệ OTS Lite Tivi t&iacute;ch hợp Google Assistant Tiếng Việt, kết nối Apple TV v&agrave; AirPlay 2</p>\r\n', 2, 12),
(62, 1, 'Casper 43 inch 43FG5200', 'Samsung', '/sanpham/tivi9.jpg', 8000000, '<p>Thiết kế tinh giản, viền mỏng tối ưu t&ocirc; điểm kh&ocirc;ng gian nội thất Độ ph&acirc;n giải Full HD hiển thị h&igrave;nh ảnh r&otilde; n&eacute;t, m&agrave;u sắc ch&acirc;n thực Tấm nền IPS chống giật lag v&agrave; g&oacute;c nh&igrave;n tối ưu độ nghi&ecirc;ng tới 178 độ Hệ điều h&agrave;nh Android 9 mang đến trải nghiệm đa dạng, th&ocirc;ng minh Chế độ Super Brightness v&agrave; 2K HDR cho h&igrave;nh ảnh ch&acirc;n thực, r&otilde; n&eacute;t Tận hưởng &acirc;m thanh sống động với c&ocirc;ng nghệ &acirc;m thanh Dolby Audio Trợ l&yacute; ảo Google Assistant, t&igrave;m kiếm bằng giọng n&oacute;i hỗ trợ Tiếng Việt</p>\r\n', 1, 12),
(63, 1, 'Android Tivi TCL 40 inch L40S6500', 'Samsung', '/sanpham/tivi10.jpg', 7900000, '<p>Kiểu d&aacute;ng thanh mảnh, tạo sự sang trọng cho kh&ocirc;ng gian M&agrave;n h&igrave;nh Full HD 40 inch cho h&igrave;nh ảnh sống động, ch&acirc;n thực C&ocirc;ng nghệ h&igrave;nh ảnh HDR n&acirc;ng cao độ tương phản h&igrave;nh ảnh Hệ điều h&agrave;nh Android 8.0, t&iacute;ch hợp nhiều ứng dụng giải tr&iacute; Điều khiển giọng n&oacute;i th&ocirc;ng minh dễ d&agrave;ng cho việc t&igrave;m kiếm</p>\r\n', 1, 12),
(64, 1, 'QLED 4K 65 inch QA65Q70AAKX', 'Samsung', '/sanpham/tivi11.jpg', 32500000, '<p>M&agrave;n h&igrave;nh v&ocirc; cực c&oacute; độ ph&acirc;n giải 4K (3840&times;2160) sắc n&eacute;t đến từng chi tiết C&ocirc;ng nghệ Dual LED tăng cường độ tương phản, độ ch&iacute;nh x&aacute;c của m&agrave;u sắc C&ocirc;ng nghệ Quantum HDR mang đến khung h&igrave;nh chi tiết, độ tương phản cao C&ocirc;ng nghệ Wide Viewing Angle tối ưu trải nghiệm h&igrave;nh ảnh ở g&oacute;c nh&igrave;n rộng C&ocirc;ng nghệ Active Voice Amplifier truyền tải trọn vẹn từng c&acirc;u hội thoại Trải nghiệm h&igrave;nh ảnh mượt m&agrave; với c&ocirc;ng nghệ Motion Xcelerator Turbo+ Tận hưởng &acirc;m thanh v&ograve;m theo chuyển động h&igrave;nh ảnh với c&ocirc;ng nghệ OTS</p>\r\n', 0, 12),
(65, 1, 'QLED 4K 55 inch QA55Q60AAKX', 'Samsung', '/sanpham/tivi13.jpg', 23000000, '<p>M&agrave;n h&igrave;nh v&ocirc; cực c&oacute; độ ph&acirc;n giải 4K (3840&times;2160) hiển thị h&igrave;nh ảnh sắc n&eacute;t C&ocirc;ng nghệ Dual LED tăng cường độ tương phản, độ ch&iacute;nh x&aacute;c của m&agrave;u sắc C&ocirc;ng nghệ Quantum Dot hiển thị 100% dải m&agrave;u cho h&igrave;nh ảnh ch&acirc;n thực C&ocirc;ng nghệ Quantum HDR mang đến khung h&igrave;nh chi tiết, độ tương phản cao Tận hưởng &acirc;m thanh v&ograve;m theo chuyển động h&igrave;nh ảnh nhờ c&ocirc;ng nghệ OTS Trải nghiệm h&igrave;nh ảnh mượt m&agrave; với c&ocirc;ng nghệ Motion Xcelerator Turbo+</p>\r\n', 0, 12),
(66, 1, 'Tivi Casper 32 inch 32HG5200', 'Sony', '/sanpham/tivi15.jpg', 5900000, '<p>Thiết kế tinh giản, viền mỏng tối ưu t&ocirc; điểm kh&ocirc;ng gian nội thất Hệ điều h&agrave;nh Android 9 với kho ứng dụng giải tr&iacute; phong ph&uacute; Chế độ Super Brightness v&agrave; 2K HDR cho h&igrave;nh ảnh ch&acirc;n thực, r&otilde; n&eacute;t C&ocirc;ng nghệ &acirc;m thanh Dolby Audio, tho&agrave;i m&aacute;i tận hưởng &acirc;m nhạc Trợ l&yacute; ảo Google Assistant, t&igrave;m kiếm bằng giọng n&oacute;i hỗ trợ Tiếng Việt</p>\r\n', 0, 12),
(67, 1, 'LG 43 inch 43LM6360PTB', 'LG', '/sanpham/tivi16.jpg', 10000000, '<p>Tận hưởng giải tr&iacute; với Smart Tivi m&agrave;n h&igrave;nh k&iacute;ch thước 43&quot; Ph&acirc;n giải h&igrave;nh ảnh chất lượng chuẩn Full HD (1920 x 1080) C&ocirc;ng nghệ Dolby Audio hiện đại gi&uacute;p lan tỏa &acirc;m thanh DTS Virtual:X ti&ecirc;n tiến giả lập &acirc;m thanh v&ograve;m sống động Trang bị đa dạng cổng kết, hỗ trợ tối đa nhu cầu giải tr&iacute; Hỗ trợ kết nối Wifi chuẩn, chất lượng đường truyền ổn định</p>\r\n', 0, 12),
(68, 1, 'Sony 4K 49 inch KD-49X8050H VN3', 'Sony', '/sanpham/tivi17.jpg', 24100000, '<p>M&agrave;n h&igrave;nh k&iacute;ch thước 49 inch mở rộng trải nghiệm h&igrave;nh ảnh Độ ph&acirc;n giải 4K hiển thị h&igrave;nh ảnh sắc n&eacute;t đến từng chi tiết Bộ xử l&yacute; 4K HDR X1 gi&uacute;p n&acirc;ng cao chất lượng h&igrave;nh ảnh C&ocirc;ng nghệ Triluminos cho h&igrave;nh ảnh ch&acirc;n thực v&agrave; ch&iacute;nh x&aacute;c C&ocirc;ng nghệ Motionflow gi&uacute;p giảm mờ trong cảnh chuyển động Thưởng thức &acirc;m thanh sống động với loa X-Balanced Speaker Thiết kế viền mỏng tinh tế tạo n&eacute;t đẹp sang trọng hiện đại</p>\r\n', 0, 12),
(69, 1, 'Tivi TCL 4K 55 inch 55P618', 'TCL', '/sanpham/tivi18.jpg', 7800000, '<p>M&agrave;n h&igrave;nh lớn 55 inch cho trải nghiệm xem phim cực đ&atilde; mắt Độ ph&acirc;n giải 4K hiển thị h&igrave;nh ảnh sắc n&eacute;t đến từng chi tiết C&ocirc;ng nghệ HDR cho h&igrave;nh ảnh c&oacute; gam m&agrave;u rộng, chi tiết hơn C&ocirc;ng nghệ Micro Dimming tối ưu độ tương phản của h&igrave;nh ảnh Hệ điều h&agrave;nh Android 9.0 trực quan với kho ứng dụng đa dạng Thưởng thức &acirc;m nhạc với tốc độ truyền cao với Bluetooth 5.0</p>\r\n', 0, 12),
(70, 1, 'NanoCell LG 4K 43 inch 43NANO', 'LG', '/sanpham/tivi19.jpg', 32000000, '<p>Tivi NanoCell LG 4K hiển thị h&igrave;nh ảnh sắc n&eacute;t, chi tiết, m&agrave;u sắc ch&acirc;n thực C&ocirc;ng nghệ NanoCell gi&uacute;p h&igrave;nh ảnh c&oacute; m&agrave;u sắc thuần khiết v&agrave; tinh tế hơn Bộ xử l&yacute; Quad Core Processor 4K t&aacute;i tạo v&agrave; n&acirc;ng cấp chất lượng h&igrave;nh ảnh FILMMAKER MODE&trade; truyền tải phim ch&acirc;n thực như dưới g&oacute;c nh&igrave;n đạo diễn C&ocirc;ng nghệ AI Sound tinh chỉnh &acirc;m thanh dựa tr&ecirc;n thể loại nội dung đang xem Tivi LG hỗ trợ t&igrave;m kiếm bằng giọng n&oacute;i gi&uacute;p t&igrave;m kiếm nội dung tiện lợi hơn</p>\r\n', 0, 12),
(71, 2, 'Sharp Inverter 165 lít SJ-X19', 'Panasonic', '/sanpham/tl4.jpg', 5300000, '<p>C&ocirc;ng nghệ J-Tech Inverter gi&uacute;p m&aacute;y vận h&agrave;nh ổn định, &ecirc;m &aacute;i T&iacute;ch hợp bộ khử m&ugrave;i sản sinh Ag+ loại bỏ vi khuẩn v&agrave; m&ugrave;i h&ocirc;i Chức năng l&agrave;m đ&aacute; nhanh gấp 2 lần chỉ trong 1 giờ Khay k&iacute;nh chịu lực bền bỉ, chịu được số lượng lớn thực phẩm Thiết kế nhỏ gọn, tiết kiệm tối đa kh&ocirc;ng gian</p>\r\n', 0, 12),
(72, 2, 'Casper Inverter 218 lít RT-230PB', 'AQUA', '/sanpham/tl5.jpg', 8700000, '<p>Tủ lạnh c&oacute; dung t&iacute;ch 218 l&iacute;t th&iacute;ch hợp cho gia đ&igrave;nh khoảng 1 - 2 người C&ocirc;ng nghệ Inverter gi&uacute;p tủ lạnh vận h&agrave;nh &ecirc;m, tiết kiệm điện năng Bộ lọc than hoạt t&iacute;nh khử m&ugrave;i gi&uacute;p kh&ocirc;ng kh&iacute; trong tủ lu&ocirc;n trong l&agrave;nh Hệ thống l&agrave;m lạnh đa chiều lan tỏa hơi lạnh đến mọi ng&oacute;c ng&aacute;ch trong tủ Ngăn rau củ điều chỉnh độ ẩm gi&uacute;p bảo quản thực phẩm tươi l&acirc;u hơn</p>\r\n', 0, 12),
(73, 2, 'Tủ lạnh Aqua 90 lít AQR-D99', 'AQUA', '/sanpham/tl6.jpg', 9200000, '<p>Chất liệu cửa tủ mặt th&eacute;p bền bỉ, &iacute;t b&aacute;m bẩn v&agrave; dễ lau ch&ugrave;i Khay l&agrave;m bằng k&iacute;nh chịu lực, chứa được nhiều thực phẩm nặng Sử dụng đ&egrave;n LED &iacute;t tỏa nhiệt, s&aacute;ng ổn định v&agrave; tiết kiệm điện Đạt chuẩn RoHS đảm bảo th&acirc;n thiện v&agrave; an to&agrave;n với m&ocirc;i trường</p>\r\n', 0, 12),
(74, 2, 'LG Inverter 393 lít GN-M42', 'LG', '/sanpham/tl7.jpg', 8100000, '<p>Dung t&iacute;ch 393 l&iacute;t th&iacute;ch hợp cho gia đ&igrave;nh 3 - 4 th&agrave;nh vi&ecirc;n C&ocirc;ng nghệ Inverter vận h&agrave;nh &ecirc;m &aacute;i, tiết kiệm điện năng C&ocirc;ng nghệ DoorCooling gi&uacute;p l&agrave;m m&aacute;t nhanh v&agrave; đều C&ocirc;ng nghệ LinearCooling giữ thực phẩm tươi ngon l&acirc;u Kh&iacute; lạnh đa chiều l&agrave;m lạnh mọi ng&oacute;c ng&aacute;ch trong tủ lạnh Ngăn rau quả c&acirc;n bằng độ ẩm giữ rau quả tươi ngon C&ocirc;ng nghệ Nano Carbon giảm m&ugrave;i kh&oacute; chịu trong tủ lạnh Hệ thống đ&egrave;n LED tiết kiệm điện, tăng cường tuổi thọ Khay k&iacute;nh chịu lực cho bạn y&ecirc;n t&acirc;m trữ thực phẩm nặng</p>\r\n', 0, 12),
(75, 2, 'Toshiba Inverter 233 lít GR-', 'Toshiba', '/sanpham/tl8.jpg', 8190000, '<p>Tủ lạnh Inverter vận h&agrave;nh &ecirc;m &aacute;i, bền bỉ theo thời gian C&ocirc;ng nghệ Inverter tiết kiệm đến 45% điện năng ti&ecirc;u thụ Ngăn rau củ dung t&iacute;ch lớn trữ được nhiều thực phẩm hơn Cấp đ&ocirc;ng mềm Ultra Cooling Zone giữ thực phẩm tươi ngon Tủ lạnh c&oacute; dung t&iacute;ch 233L ph&ugrave; hợp với gia đ&igrave;nh 3 -5 người Hệ thống khử m&ugrave;i v&agrave; diệt khuẩn Ag Bio chất lượng cao</p>\r\n', 0, 12),
(76, 2, 'Sharp Inverter 678 lít SJ-F', 'Sharp', '/sanpham/tl9.jpg', 8000000, '<p>Thuộc d&ograve;ng tủ lạnh 4 cửa với thiết kế sang trọng, đẳng cấp Dung t&iacute;ch 678 l&iacute;t rộng r&atilde;i cho bạn thoải m&aacute;i lưu trữ thức ăn C&ocirc;ng nghệ J-Tech Inverter vận h&agrave;nh &ecirc;m &aacute;i, tiết kiệm điện Bộ lọc khử m&ugrave;i Nano ph&acirc;n tử bạc lọc sạch vi khuẩn v&agrave; m&ugrave;i h&ocirc;i Khay k&iacute;nh chịu lực chịu được sức nặng của lượng thực phẩm lớn</p>\r\n', 0, 12),
(77, 2, 'Hitachi Inverter 509 lít R-FW', 'Hitachi', '/sanpham/tl10.jpg', 15000000, '<p>Tủ lạnh 4 cửa 509 l&iacute;t với c&ocirc;ng nghệ Inverter tiết kiệm điện M&agrave;ng lọc Nano Titanium gi&uacute;p loại bỏ 99% vi khuẩn g&acirc;y hại Cảm biến nhiệt Eco gi&uacute;p tối ưu nhiệt độ lưu trữ trong tủ lạnh Ngăn trữ chuyển đổi được t&ugrave;y theo nhu cầu sử dụng Hệ thống l&agrave;m lạnh k&eacute;p hỗ trợ l&agrave;m lạnh cực nhanh Điều khiển cảm ứng hiện đại, dễ sử dụng cho mọi người</p>\r\n', 0, 12),
(78, 2, 'Hitachi Inverter 415 lít R-B', 'Hitachi', '/sanpham/tl11.jpg', 6200000, '<p>Vận h&agrave;nh &ecirc;m &aacute;i, tiết kiệm điện nhờ c&ocirc;ng nghệ Inverter Ngăn rau củ rộng, c&oacute; nắp đậy bảo quản tốt Ngăn trữ sữa/thịt v&agrave; rau củ c&oacute; thể chuyển đổi được Thiết kế ngăn k&eacute;o 2 tầng gi&uacute;p sắp xếp thực phẩm dễ d&agrave;ng ngăn cửa cực lớn, c&oacute; thể thay đổi 16 c&aacute;ch bố tr&iacute; ngăn Bảng điều khiển cảm ứng hiện đại chỉ với một lần chạm</p>\r\n', 0, 12),
(79, 2, ' Samsung Inverter 236 lít RT', 'Samsung', '/sanpham/tl12.jpg', 7900000, '<p>Dung t&iacute;ch 236 l&iacute;t th&iacute;ch hợp cho gia đ&igrave;nh từ 2 - 3 th&agrave;nh vi&ecirc;n C&ocirc;ng nghệ Digital Inverter m&aacute;y hoạt động &aacute;i, tiết kiệm điện Bộ lọc than hoạt t&iacute;nh Deodorizer gi&uacute;p kh&aacute;ng khuẩn, khử m&ugrave;i C&ocirc;ng nghệ l&agrave;m lạnh đa chiều gi&uacute;p l&agrave;m lạnh đều v&agrave; lạnh s&acirc;u Ngăn đựng rau quả duy tr&igrave; độ ẩm tốt, rau củ lu&ocirc;n tươi ngon</p>\r\n', 0, 12),
(80, 2, 'Casper Inverter 551 lít RS', 'AQUA', '/sanpham/tl13.jpg', 7300000, '<p>Dung t&iacute;ch lớn 551 l&iacute;t th&iacute;ch hợp sử dụng cho gia đ&igrave;nh tr&ecirc;n 5 người C&ocirc;ng nghệ Inverter vận h&agrave;nh &ecirc;m, bền bỉ v&agrave; tiết kiệm điện năng Hệ thống l&agrave;m lạnh đa chiều l&agrave;m lạnh đều mọi ng&oacute;c ng&aacute;ch trong tủ Ngăn lấy nước ngo&agrave;i tiện lợi, hạn chế mở cửa v&agrave; thất tho&aacute;t hơi lạnh Ngăn rau quả t&ugrave;y chỉnh độ ẩm gi&uacute;p bảo quản rau quả tươi ngon Tủ lạnh sử dụng gas R600a l&agrave;m lạnh s&acirc;u, th&acirc;n thiện với m&ocirc;i trường</p>\r\n', 0, 12),
(81, 2, 'Aqua Inverter 541 lít AQR', 'AQUA', '/sanpham/tl14.jpg', 8000000, '<p>Tủ lạnh Side by side c&oacute; dung t&iacute;ch 541 l&iacute;t th&iacute;ch hợp cho gia đ&igrave;nh 4 -5 người C&ocirc;ng nghệ Inverter gi&uacute;p tủ lạnh vận h&agrave;nh &ecirc;m &aacute;i, bền bỉ, tiết kiệm điện năng C&ocirc;ng nghệ Deo-Fresh c&oacute; khả năng kh&aacute;ng khuẩn, khử m&ugrave;i h&ocirc;i trong tủ lạnh C&ocirc;ng nghệ l&agrave;m lạnh đa chiều gi&uacute;p bảo quản thực phẩm tươi ngon, đồng đều Ngăn rau củ c&acirc;n bằng ẩm bảo quản rau quả tươi ngon trong thời gian l&acirc;u hơn Khay k&iacute;nh cường lực bền bỉ, chắc chắn cho bạn y&ecirc;n t&acirc;m trữ thực phẩm nặng</p>\r\n', 0, 12),
(82, 3, 'Toshiba 9 kg AW-K100', 'Toshiba', '/sanpham/mg5.jpg', 6200000, '<p>Khối lượng giặt 9 kg th&iacute;ch hợp cho gia đ&igrave;nh c&oacute; 4 - 6 người Lồng giặt ng&ocirc;i sao pha l&ecirc; nhẹ nh&agrave;ng giặt sạch quần &aacute;o C&ocirc;ng nghệ Greatwaves kết hợp 3 luồng nước đ&aacute;nh bay vết bẩn Nắp m&aacute;y bằng k&iacute;nh chịu lực chống kẹt tay an to&agrave;n khi sử dụng C&ocirc;ng nghệ I-Clean gi&uacute;p loại bỏ vết bẩn b&aacute;m tr&ecirc;n lồng giặt Tiết kiệm thời gian với chức năng tự khởi động lại khi c&oacute; điện</p>\r\n', 0, 12),
(83, 3, 'Electrolux Inverter 8 kg EW', 'Electrolux', '/sanpham/mg6.jpg', 8000000, '<p>M&aacute;y giặt c&oacute; khối lượng giặt 8kg th&iacute;ch hợp cho 3 -5 người d&ugrave;ng C&ocirc;ng nghệ giặt VapourCare loại bỏ vi khuẩn v&agrave; chất g&acirc;y dị ứng C&ocirc;ng nghệ Inverter gi&uacute;p m&aacute;y giặt vận h&agrave;nh &ecirc;m, tiết kiệm điện Chương tr&igrave;nh giặt ri&ecirc;ng gi&uacute;p giặt trang phục len an to&agrave;n Thiết kế Cửa m&aacute;y giặt 3XL gi&uacute;p bỏ v&agrave; lấy quần &aacute;o dễ d&agrave;ng hơn Chương tr&igrave;nh giặt nhanh 15 ph&uacute;t gi&uacute;p giặt quần &aacute;o nhanh ch&oacute;ng Chức năng Th&ecirc;m quần &aacute;o bị s&oacute;t ngay cả khi m&aacute;y đ&atilde; vận h&agrave;nh</p>\r\n', 0, 12),
(84, 3, 'Toshiba 7 Kg AW-K800A', 'Toshiba', '/sanpham/mg7.jpg', 1200000, '<p>Thiết kế Cửa m&aacute;y giặt 3XL gi&uacute;p bỏ v&agrave; lấy quần &aacute;o dễ d&agrave;ng hơn Chương tr&igrave;nh giặt nhanh 15 ph&uacute;t gi&uacute;p giặt quần &aacute;o nhanh ch&oacute;ng Chức năng Th&ecirc;m quần &aacute;o bị s&oacute;t ngay cả khi m&aacute;y đ&atilde; vận h&agrave;nh</p>\r\n', 0, 12),
(85, 3, 'asper Inverter 8.5 kg ', 'Panasonic', '/sanpham/mg8.jpg', 6200000, '<p>M&aacute;y giặt cửa trước c&oacute; khối lượng giặt 8.5 kg ph&ugrave; hợp cho gia đ&igrave;nh 3 - 5 người C&ocirc;ng nghệ Inverter gi&uacute;p m&aacute;y giặt vận h&agrave;nh &ecirc;m &aacute;i, bền bỉ, tiết kiệm điện năng Lồng giặt Crystal v&agrave; c&aacute;nh đảo quần &aacute;o chữ S đ&aacute;nh bay vết bẩn cứng đầu Giặt diệt khuẩn với nhiệt độ nước 60 độ C diệt khuẩn v&agrave; c&aacute;c t&aacute;c nh&acirc;n g&acirc;y dị ứng Giặt nước n&oacute;ng với nhiệt độ nước 40 độ C loại sạch c&aacute;c vết dầu mỡ, b&atilde; nhờn Bạn c&oacute; thể dễ d&agrave;ng cho th&ecirc;m đồ giặt trong qu&aacute; tr&igrave;nh m&aacute;y giặt đang hoạt động</p>\r\n', 0, 12),
(86, 3, 'LG Inverter 3.5 kg T2735', 'LG', '/sanpham/mg9.jpg', 8600000, '<p>Lồng giặt mini c&oacute; thể giặt nội y, đồ thể thao hay đồ trẻ em Dẫn động trực tiếp Inverter tinh gọn hoạt động bền bỉ, &ecirc;m &aacute;i Smart Diagnosis chẩn đo&aacute;n c&aacute;c lỗi một c&aacute;ch th&ocirc;ng minh 6 chuyển động giặt th&ocirc;ng minh cho hiệu quả l&agrave;m sạch tối ưu Thiết kế nhỏ gọn ph&ugrave; hợp với mọi kh&ocirc;ng gian</p>\r\n', 0, 12),
(87, 3, 'Electrolux Inverter 10 kg E', 'Electrolux', '/sanpham/mg10.jpg', 7900000, '<p>Cảm biến đo lường độ bẩn, giảm thiểu vết cặn với SensorWash C&ocirc;ng nghệ UltraMix gi&uacute;p giặt quần &aacute;o &iacute;t phai m&agrave;u hơn tới 40% L&agrave;m mới quần &aacute;o m&agrave; kh&ocirc;ng cần giặt tẩy với Vapour Refresh Lồng giặt Lily gi&uacute;p giặt sạch hơn, tr&aacute;nh sờn r&aacute;ch quần &aacute;o C&ocirc;ng nghệ EcoInverter giảm thiểu tiếng ồn, tiết kiệm điện</p>\r\n', 0, 12),
(88, 3, 'Aqua 9 kg AQW-S90CT', 'AQUA', '/sanpham/mg11.jpg', 1200000, '<p>Luồng nước phun mạnh mẽ MultiJet đ&aacute;nh bật vết bẩn cứng đầu Chức năng Vắt cực kh&ocirc; gi&uacute;p tiết kiệm thời gian phơi quần &aacute;o Chức năng tự khởi động lại khi c&oacute; điện v&ocirc; c&ugrave;ng tiện lợi T&iacute;nh năng tự vệ sinh lồng giặt tiết kiệm thời gian, chi ph&iacute; Khối lượng giặt 9 kg th&iacute;ch hợp với gia đ&igrave;nh 4 - 6 th&agrave;nh vi&ecirc;n Chức năng kh&oacute;a trẻ em bảo vệ an to&agrave;n cho gia đ&igrave;nh c&oacute; trẻ nhỏ</p>\r\n', 0, 12),
(89, 3, 'Electrolux Inverter 10 kg ', 'Electrolux', '/sanpham/mg12.jpg', 8000000, '<p>Khối lượng giặt 10 kg th&iacute;ch hợp cho gia đ&igrave;nh tr&ecirc;n 6 người C&ocirc;ng nghệ Inverter giảm ồn, tiết kiệm điện nước vượt trội C&ocirc;ng nghệ UltraMix giữ quần &aacute;o bền m&agrave;u như mới C&ocirc;ng nghệ Vapour Care diệt vi khuẩn v&agrave; t&aacute;c nh&acirc;n g&acirc;y dị ứng C&ocirc;ng nghệ Vapour Refresh l&agrave;m mới v&agrave; giảm nhăn quần &aacute;o Cảm biến SensorWash tự động đo lường độ bẩn của quần &aacute;o</p>\r\n', 0, 12),
(90, 3, 'Panasonic Inverter 10.5 kg', 'Panasonic', '/sanpham/mg13.jpg', 7970000, '<p>Khối lượng giặt 10.5Kg th&iacute;ch hợp cho gia đ&igrave;nh từ 6 người C&ocirc;ng nghệ TD Inverter tiết kiệm điện năng đến 30% Quần &aacute;o nhanh kh&ocirc; với c&ocirc;ng nghệ sấy gi&oacute;, tiết kiệm thời gian Đ&aacute;nh bay vết bẩn cứng đầu với c&ocirc;ng nghệ StainMaster Hệ thống ActiveFarm đ&aacute;nh tan bột giặt, giặt sạch vượt trội</p>\r\n', 0, 12),
(91, 3, 'Casper 7.5 kg WT-75', 'Caspe', '/sanpham/mg14.jpg', 6600000, '<p>M&aacute;y giặt cửa tr&ecirc;n c&oacute; khối lượng giặt 7.5 kg ph&ugrave; hợp cho gia đ&igrave;nh 3 - 5 người Lồng giặt Crystal tăng cường hiệu quả ch&agrave; x&aacute;t v&agrave; giặt giũ quần &aacute;o nhẹ nh&agrave;ng M&acirc;m giặt 6 c&aacute;nh tạo ra nước xo&aacute;y si&ecirc;u mạnh, đ&aacute;nh bật mọi vết bẩn cứng đầu Hệ thống 3 luồng nước giặt sạch quần &aacute;o mạnh mẽ, chống xoắn rối hiệu quả Chế độ vệ sinh lồng giặt loại bỏ cặn bẩn v&agrave; m&ugrave;i h&ocirc;i gi&uacute;p quần &aacute;o lu&ocirc;n sạch sẽ</p>\r\n', 0, 12),
(92, 3, 'Panasonic Inverter 10.5 kg ', 'Panasonic', '/sanpham/mg16.jpg', 9500000, '<p>Khối lượng giặt 10.5Kg th&iacute;ch hợp cho gia đ&igrave;nh từ 6 người C&ocirc;ng nghệ TD Inverter tiết kiệm điện năng đến 30% Quần &aacute;o nhanh kh&ocirc; với c&ocirc;ng nghệ sấy gi&oacute;, tiết kiệm thời gian Đ&aacute;nh bay vết bẩn cứng đầu với c&ocirc;ng nghệ StainMaster Hệ thống ActiveFarm đ&aacute;nh tan bột giặt, giặt sạch vượt trội</p>\r\n', 0, 12),
(93, 4, 'Casper 1.5 HP SC-12TL32', 'Casper', '/sanpham/ml4.jpg', 6900000, '<p>Thiết kế th&ocirc;ng minh Easy Care tiết kiệm thời gian lắt đặt Chế độ l&agrave;m lạnh nhanh Turbo l&agrave;m m&aacute;t ngay tức th&igrave; Cảm biến i-Feel tự động tăng giảm nhiệt độ ph&ugrave; hợp Tự l&agrave;m sạch th&ocirc;ng minh i-Clean n&acirc;ng cao tuổi thọ d&agrave;n lạnh</p>\r\n', 0, 12),
(94, 4, 'Toshiba Inverter 1 HP RAS-H', 'Toshiba', '/sanpham/ml5.jpg', 6200000, '<p>C&ocirc;ng suất 1 HP ph&ugrave; hợp cho c&aacute;c ph&ograve;ng c&oacute; diện t&iacute;ch nhỏ C&ocirc;ng nghệ Hybrid Inverter v&agrave; chế độ Eco tiết kiệm điện L&agrave;m lạnh nhanh Hi-Power cho bạn m&aacute;t lạnh ngay tức th&igrave; C&ocirc;ng nghệ chống b&aacute;m bẩn Magic Coil hoạt động tối ưu Bộ lọc IAQ ti&ecirc;u diệt vi khuẩn, mang lại kh&ocirc;ng kh&iacute; trong l&agrave;nh Tự khởi động lại khi c&oacute; điện, ghi nhớ chế độ hiện c&oacute; trước đ&oacute;</p>\r\n', 0, 12),
(95, 4, ' Casper Inverter 1 HP GC', ' Casper ', '/sanpham/ml6.jpg', 8700000, '<p>M&aacute;y lạnh c&oacute; c&ocirc;ng suất 1 HP th&iacute;ch hợp sử dụng cho ph&ograve;ng dưới 15m2 Chế độ Turbo nhanh ch&oacute;ng đưa nhiệt độ ph&ograve;ng đến nhiệt độ c&agrave;i đặt trong 30s C&ocirc;ng nghệ Inverter gi&uacute;p điều h&ograve;a vận h&agrave;nh &ecirc;m &aacute;i, tiết kiệm điện năng Chức năng i-Clean loại bỏ bụi bẩn tr&ecirc;n bề mặt d&agrave;n lạnh, tăng tuổi thọ m&aacute;y Cơ chế tự cảm biến nhiệt độ iFeel gi&uacute;p kh&ocirc;ng gian ph&ograve;ng m&aacute;t lạnh thoải m&aacute;i Tấm lọc kh&iacute; đa năng 3 trong 1 loại bụi, khử m&ugrave;i gi&uacute;p kh&ocirc;ng gian trong l&agrave;nh</p>\r\n', 0, 12),
(96, 4, 'Mitsubishi Electric Inverter 1 HP M', 'Toshiba', '/sanpham/ml7.jpg', 1200000, '<p>C&ocirc;ng suất 1 HP th&iacute;ch hợp kh&ocirc;ng gian ph&ograve;ng dưới 15m2 C&ocirc;ng nghệ Inverter vận h&agrave;nh &ecirc;m &aacute;i, tiết kiệm điện năng C&ocirc;ng nghệ l&agrave;m lạnh nhanh cho cảm gi&aacute;c m&aacute;t lạnh tức th&igrave; C&ocirc;ng nghệ chống b&aacute;m bẩn ngăn t&iacute;ch tụ bụi, kh&oacute;i thuốc M&agrave;ng lọc kh&aacute;ng khuẩn khử m&ugrave;i, lọc sạch kh&ocirc;ng kh&iacute; Hệ thống trao đổi nhiệt phủ lớp Blue Fin kh&aacute;ng ăn m&ograve;n</p>\r\n', 0, 12),
(97, 4, 'Daikin 1.5 HP ATF35UV1V', 'Daikin ', '/sanpham/ml8.jpg', 7900000, '<p>C&ocirc;ng suất 1.5HP th&iacute;ch hợp cho kh&ocirc;ng gian ph&ograve;ng c&oacute; diện t&iacute;ch 15-20m2 C&aacute;nh tản nhiệt được phủ 2 lớp chống ăn m&ograve;n, tăng tuổi thọ m&aacute;y lạnh Chế độ l&agrave;m lạnh nhanh Powerful gi&uacute;p căn ph&ograve;ng m&aacute;t lạnh tức th&igrave; Chức năng h&uacute;t ẩm gi&uacute;p kh&ocirc;ng gian ph&ograve;ng của bạn kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t Tiện lợi với chức năng hẹn giờ bật tắt m&aacute;y, tự khởi động lại khi c&oacute; điện Điều h&ograve;a Daikin sử dụng gas R32 l&agrave;m lạnh s&acirc;u, th&acirc;n thiện với m&ocirc;i trường</p>\r\n', 0, 12),
(98, 4, 'Samsung Inverter 1 HP AR10TY', 'Samsung', '/sanpham/ml9.jpg', 1200000, '<p>Bộ lọc Tri-Care loại bỏ 99% virus, vi khuẩn v&agrave; bụi si&ecirc;u mịn C&ocirc;ng suất 1 HP th&iacute;ch hợp với kh&ocirc;ng gian ph&ograve;ng dưới 15m2 C&ocirc;ng nghệ Digital Inverter Boost gi&uacute;p tiết kiệm điện 73% Lưới lọc Easy Filter Plus gi&uacute;p vệ sinh bụi bẩn dễ d&agrave;ng Tinh năng tự động l&agrave;m sạch Auto Clean, bảo vệ sức khỏe Sử dụng gas R32 l&agrave;m lạnh s&acirc;u, th&acirc;n thiện với m&ocirc;i trường</p>\r\n', 0, 12),
(99, 4, 'Hitachi 1 HP RAS-EJ10C', 'Hitachi', '/sanpham/ml10.jpg', 6200000, '<p>C&ocirc;ng suất 1 HP th&iacute;ch hợp sử dụng cho ph&ograve;ng khoảng dưới 15m2 Chế độ Powerful tăng c&ocirc;ng suất v&agrave; tốc độ quạt tối đa để l&agrave;m m&aacute;t nhanh Chức năng Air Sleep Timer y&ecirc;n tĩnh, tối ưu nhiệt độ cho giấc ngủ ngon hơn M&aacute;y lạnh sử dụng gas R32 gi&uacute;p l&agrave;m lạnh s&acirc;u v&agrave; th&acirc;n thiện với m&ocirc;i trường Tự động khởi động lại điều h&ograve;a ở c&agrave;i đặt trước trong trường hợp mất điện</p>\r\n', 0, 12),
(100, 4, 'Sharp Inverter 1HP AH-X9XEW', 'Sharp', '/sanpham/ml11.jpg', 7590000, '<p>C&ocirc;ng nghệ J-Tech Inverter giảm lượng điện ti&ecirc;u thụ đến 60% Chế độ Baby Sleep nhẹ nh&agrave;ng y&ecirc;n tĩnh, gi&uacute;p b&eacute; ngủ ngon Gas R32 l&agrave;m lạnh s&acirc;u, nhiệt độ xuống tới 14 độ C Tự khởi động lại khi c&oacute; điện, ghi nhớ chế độ hiện c&oacute; trước đ&oacute; 7 t&iacute;nh năng bảo vệ gi&uacute;p m&aacute;y bền bỉ hơn với thời gian</p>\r\n', 0, 12),
(101, 4, 'Daikin Inverter 1.5 HP ATKC', 'Daikin', '/sanpham/ml12.jpg', 8000000, '<p>C&ocirc;ng suất 1.5 HP l&agrave;m lạnh hiệu quả diện t&iacute;ch 15 - 20m2 C&ocirc;ng nghệ Inverter vận h&agrave;nh &ecirc;m &aacute;i, tiết kiệm năng lượng K&iacute;ch hoạt chế độ Powerful cho kh&ocirc;ng gian m&aacute;t ngay tức th&igrave; Hiệu ứng gi&oacute; dễ chịu tr&aacute;nh gi&oacute; l&ugrave;a trực tiếp v&agrave;o cơ thể Phin lọc khử m&ugrave;i Apatit Titan lọc sạch vi khuẩn v&agrave; bụi bẩn Tiện lợi hơn với t&iacute;nh năng tự khởi động lại khi c&oacute; điện Sử dụng gas R32 l&agrave;m lạnh nhanh, bảo vệ m&ocirc;i trường</p>\r\n', 0, 12),
(102, 4, 'Toshiba Inverter 2.5 HP RA', 'Toshiba', '/sanpham/ml13.jpg', 19900000, '<p>C&ocirc;ng suất 2.5 HP ph&ugrave; hợp ph&ograve;ng từ 30 m&sup2; đến 40 m&sup2; C&ocirc;ng nghệ Hybrid Inverter m&aacute;y vận h&agrave;nh &ecirc;m &aacute;i, tiết kiệm điện C&ocirc;ng nghệ Magic Coil chống b&aacute;m bẩn v&agrave; diệt khuẩn hiệu quả C&ocirc;ng nghệ IAQ khử m&ugrave;i h&ocirc;i, vi khuẩn, c&aacute;c t&aacute;c nh&acirc;n g&acirc;y dị ứng Lưới lọc chống nấm mốc, lọc bụi bẩn, cho kh&ocirc;ng kh&iacute; trong l&agrave;nh</p>\r\n', 0, 12),
(103, 4, 'Panasonic Inverter 1.5HP CU/CS', 'Panasonic', '/sanpham/ml14.jpg', 17000000, '<p>C&ocirc;ng nghệ Inverter m&aacute;y vận h&agrave;nh &ecirc;m &aacute;i, tiết kiệm điện năng C&ocirc;ng nghệ Nanoe-G lọc bụi hiệu quả, loại bỏ vi khuẩn c&oacute; hại C&ocirc;ng nghệ Nanoe-X loại bỏ m&ugrave;i h&ocirc;i kh&oacute; chịu, diệt khuẩn Chế độ Sleepcho giấc ngủ s&acirc;u, ph&ugrave; hợp cho người gi&agrave; v&agrave; trẻ nhỏ Thổi gi&oacute; 4 chiều tự động cho hơi m&aacute;t lạnh lan toả khắp gian ph&ograve;ng</p>\r\n', 0, 12),
(104, 5, 'Samsung Inverter 1 HP AR1', 'Samsung', '/sanpham/sp1.jpg', 7900000, '<p>Bộ lọc Tri-Care loại bỏ 99% virus, vi khuẩn v&agrave; bụi si&ecirc;u mịn C&ocirc;ng suất 1 HP th&iacute;ch hợp với kh&ocirc;ng gian ph&ograve;ng dưới 15m2 C&ocirc;ng nghệ Digital Inverter Boost gi&uacute;p tiết kiệm điện 73% Lưới lọc Easy Filter Plus gi&uacute;p vệ sinh bụi bẩn dễ d&agrave;ng Tinh năng tự động l&agrave;m sạch Auto Clean, bảo vệ sức khỏe Sử dụng gas R32 l&agrave;m lạnh s&acirc;u, th&acirc;n thiện với m&ocirc;i trường</p>\r\n', 0, 12),
(105, 5, 'Gree Inverter 1.5 HP GWC12', 'Gree', '/sanpham/sp3.jpg', 1200000, '<p>Tiết kiệm điện năng sử dụng với c&ocirc;ng nghệ Real Inverter Trang bị c&ocirc;ng nghệ tự l&agrave;m sạch G-clean, ngăn ngừa vi khuẩn Chế độ l&agrave;m lạnh nhanh Turbo, cảm nhận sự m&aacute;t lạnh tức th&igrave; Sử dụng kh&iacute; gas sạch R32 th&acirc;n thiện với sức khỏe người d&ugrave;ng T&iacute;ch hợp cảm biến nhiệt tr&ecirc;n remote, đem lại nhiệt độ hợp l&yacute; Bao gồm 7 cấp độ gi&oacute;, dễ d&agrave;ng điều chỉnh với remote</p>\r\n', 0, 12),
(106, 5, 'Toshiba Inverter 2 HP RAS-H', 'Toshiba', '/sanpham/sp4.jpg', 8000000, '<p>Ngăn ngừa bụi bẩn, vi khuẩn b&aacute;m v&agrave;o d&agrave;n lạnh với c&ocirc;ng nghệ Magic Coil C&ocirc;ng nghệ lọc kh&iacute; Plasma ion gi&uacute;p bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh tho&aacute;ng m&aacute;t C&ocirc;ng nghệ Hybrid Inverter gi&uacute;p m&aacute;y lạnh vận h&agrave;nh &ecirc;m &aacute;i, tiết kiệm điện Điều h&ograve;a Toshiba trang bị C&ocirc;ng nghệ Hada Care bảo vệ v&agrave; dưỡng ẩm cho da Bộ lọc Toshiba IAQ, lưới lọc chống nấm mốc kh&aacute;ng khuẩn khử m&ugrave;i hiệu quả</p>\r\n', 0, 12),
(107, 5, 'Casper Inverter 2 HP GC-18', 'Casper ', '/sanpham/sp5.jpg', 1200000, '<p>M&aacute;y lạnh c&oacute; c&ocirc;ng suất 2 HP l&agrave;m lạnh hiệu quả ph&ograve;ng 20 -30m2 C&ocirc;ng nghệ i-Saving hiện đại gi&uacute;p tiết kiệm điện năng hiệu quả Chức năng tự l&agrave;m sạch iClean ngăn ngừa vi khuẩn nấm mốc Cảm biến th&acirc;n nhiệt iFeel cho người d&ugrave;ng cảm gi&aacute;c thoải m&aacute;i D&agrave;n tản nhiệt đồng mạ v&agrave;ng tăng độ bền, chống ăn m&ograve;n Hệ thống lưới lọc đa chiều loại bỏ vi khuẩn, chất g&acirc;y dị ứng,..</p>\r\n', 0, 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `IdUser` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `Loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`IdUser`, `Username`, `Email`, `MatKhau`, `Loai`) VALUES
(2, 'admin', 'admin', 'admin', 2),
(4, '215125125', '123123@123', '125125', 1),
(7, 'hth1831990', '123@123', '123123', 1),
(8, 'dat', 'bivandat24112001@gmail.com', 'dat', 1),
(9, 'hoan', '123@8888', 'hoan', 1),
(11, 'sss', 's@duc.com', 's', 1),
(12, 'd', 'd@d.com', 'd', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`IdCart`);

--
-- Chỉ mục cho bảng `nhomsp`
--
ALTER TABLE `nhomsp`
  ADD PRIMARY KEY (`IdNhomSP`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`IdSP`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IdUser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `IdCart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `nhomsp`
--
ALTER TABLE `nhomsp`
  MODIFY `IdNhomSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `IdSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `IdUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
