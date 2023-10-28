-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 02:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duanmau2023`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(7, 'san pham tuyet cu meo', 16, 20, '2023-10-20'),
(23, 'hiih', 6, 20, '2023-10-16'),
(26, 'hello ', 6, 18, '2023-10-16'),
(27, 'hello ', 6, 18, '2023-10-16'),
(28, 'ơ kìa cậu xinh thế', 6, 14, '2023-10-16'),
(29, 'ơ kìa cậu xinh thế', 6, 14, '2023-10-16'),
(33, 'ơ kìa', 16, 14, '2023-10-16'),
(34, 'hello', 16, 14, '2023-10-16'),
(35, 'xin cóa ', 16, 14, '2023-10-16'),
(42, 'hello, mình là TRọng Liêm', 15, 14, '2023-10-17'),
(43, 'hello, mình là TRọng Liêm', 15, 14, '2023-10-17'),
(44, 'hello, mình là TRọng Liêm', 15, 14, '2023-10-17'),
(45, 'hello, mình là 0376', 16, 20, '2023-10-17'),
(46, 'hello, mình là 0376', 16, 20, '2023-10-17'),
(47, 'hello, mình là tong liem', 16, 23, '2023-10-17'),
(48, 'hihi', 6, 23, '2023-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(1, 'Laptop'),
(2, 'Điện Thoại'),
(5, 'túi xách');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `id_dm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `discount`, `image`, `mota`, `luotxem`, `id_dm`) VALUES
(14, 'sản phẩm túi xách', 9000000, 20, '1696983127_img4.jpg', 'đây là túi xách cực hay trong công tác đi du lịch', 118, 5),
(15, 'túi xách 2', 9000000, 20, '1696985199_img9.jpg', 'đây là túi sách sang xịn mịn dành cho các quý phái ', 126, 5),
(18, 'túi xách xịn xịn xịn', 9000000, 10, '1697331622_img10.jpg', 'Đây là túi xách mà khiến bao chị em mê mẩn và có được giá trị cao khi làm quà tặng', 23, 5),
(19, 'túi xách ggggg', 214748, 23, '1697331690_img3.jpg', 'khi chiếc túi này tạo ra thì đã có nhiều sự ưa chuộm về mẫu mã giản dị ', 6, 5),
(20, 'điện thoại 1', 7000000, 10, '1697332252_dt1.jpg', 'Hội tụ tinh hoa công nghệ nhiếp ảnh động, Điện thoại nàyđược trang bị bộ ba Camera Sau và Camera Selfie sẵn sàng mang đến những khung hình sáng giá nhất.', 51, 2),
(21, 'điện thoại 2', 8900000, 12, '1697332309_dt2.jpg', 'Thêm nhiều không gian để làm điều phi thường với Hệ sinh thái Kết nối với các thiết bị khác cùng Tài Khoản để liền mạch mọi trải nghiệm. Bắt đầu ý tưởng trên điện thoại và hoàn thiện ở tại sao không?', 0, 2),
(22, 'điện thoại 3', 9000000, 19, '1697332352_dt3.jpg', 'Thưởng thức nội dung trên màn hình lớn với tính năng Smart View. Trình chiếu nội dung di động lên TV để xem thoải mái hơn hoặc dùng ứng dụng khác trong khi xem phim để không làm gián đoạn trải nghiệm giờ đây không còn là điều xa vời. ', 0, 2),
(23, 'điện thoại 5', 9000000, 20, '1697332391_dt5.jpg', 'Làm vlog, chơi game hay đơn giản chỉ là lướt web - mọi trải nghiệm đều phi thường với vi xử lý 4nm hiện đại nhất.', 16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(6, 'liem', '123', 'liemntph36778@fpt.edu.vn', 'số 1 , Trịnh Văn Bô', '0376278382', 1),
(14, 'trongliem', '123', 'ngotrongliem2004@gmail.com', 'thon giao lac xa thai tho huyen thai thuy tinh thai binh', '0376278382', 1),
(15, 'Ngô Trọng Liêm', '123', 'ngotrongliem2004th@gmail.com', 'Giáo Lạc', '0376278382', 0),
(16, 'tong lim', '123', '0376278382@gmail.com', 'hà nội', '0376278382', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpro` (`idpro`),
  ADD KEY `iduser` (`iduser`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddm` (`id_dm`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_dm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
