-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 17, 2021 lúc 04:34 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlyhoc_db`
--
CREATE DATABASE IF NOT EXISTS `quanlyhoc_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `quanlyhoc_db`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky_hoc`
--

CREATE TABLE `dang_ky_hoc` (
  `MaDangKy` int(11) NOT NULL,
  `MaSV` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaMon` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamHK` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dang_ky_hoc`
--

INSERT INTO `dang_ky_hoc` (`MaDangKy`, `MaSV`, `MaMon`, `NamHK`, `GhiChu`) VALUES
(111, 'sv01', 'm1', '2021', 'Không có'),
(112, 'sv02', 'm2', '2021', 'Không có'),
(113, 'sv03', 'm3', '2021', 'Không có'),
(114, 'sv04', 'm4', '2021', 'Không có'),
(115, 'sv04', 'm4', '2021', 'Không có');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa_dao_tao`
--

CREATE TABLE `khoa_dao_tao` (
  `MaKhoa` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhoa` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienThoai` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa_dao_tao`
--

INSERT INTO `khoa_dao_tao` (`MaKhoa`, `TenKhoa`, `DienThoai`) VALUES
('k1', 'Công nghệ thông tin', '0388580624'),
('k2', 'Tự động hóa', '0388541234'),
('k3', 'Sư phạm toán', '0389621584'),
('k4', 'Luật ', '0388123456'),
('k5', 'Luật kinh tế', '0338967397');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon_hoc`
--

CREATE TABLE `mon_hoc` (
  `MaMon` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `MaKhoa` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenMon` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoTinChi` int(11) DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mon_hoc`
--

INSERT INTO `mon_hoc` (`MaMon`, `MaKhoa`, `TenMon`, `SoTinChi`, `GhiChu`) VALUES
('m1', 'k1', 'Toán', 3, 'Không có'),
('m2', 'k3', 'Lập trình c', 4, 'Không có'),
('m3', 'k4', 'Lập trình nhúng', 5, 'Không có'),
('m4', 'k2', 'Marketing', 3, 'Không có'),
('m5', 'k5', 'Luật', 3, 'Không có');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinh_vien`
--

CREATE TABLE `sinh_vien` (
  `MaSV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaKhoa` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LopBC` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HoTen` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgaySinh` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinh_vien`
--

INSERT INTO `sinh_vien` (`MaSV`, `MaKhoa`, `LopBC`, `HoTen`, `NgaySinh`, `DiaChi`) VALUES
('sv01', 'k1', 'lop1', 'Trần Trung Kiên', '20/10/2000', 'Hà Tĩnh'),
('sv02', 'k4', 'lop4', 'Trương Huy Mạnh', '20/11/2000', 'Hà Tĩnh'),
('sv03', 'k2', 'lop2', 'Trần Thùy Xuân', '06/07/2000', 'Hà Tĩnh'),
('sv04', 'k3', 'lop3', 'Chu Văn Hưng', '16/10/2000', 'Hà Tĩnh'),
('sv05', 'k2', 'lop2', 'Phạm Văn Mạnh', '26/08/2001', 'Nghệ An');

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `view1`
-- (See below for the actual view)
--
CREATE TABLE `view1` (
`TenKhoa` varchar(50)
,`LopBC` varchar(10)
,`HoTen` varchar(30)
,`NgaySinh` varchar(10)
,`DiaChi` varchar(50)
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `view2`
-- (See below for the actual view)
--
CREATE TABLE `view2` (
`TenKhoa` varchar(50)
,`TenMon` varchar(30)
,`SoTinChi` int(11)
,`GhiChu` varchar(50)
);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `view1`
--
DROP TABLE IF EXISTS `view1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view1`  AS SELECT `kdt`.`TenKhoa` AS `TenKhoa`, `sv`.`LopBC` AS `LopBC`, `sv`.`HoTen` AS `HoTen`, `sv`.`NgaySinh` AS `NgaySinh`, `sv`.`DiaChi` AS `DiaChi` FROM (`khoa_dao_tao` `kdt` join `sinh_vien` `sv` on(`kdt`.`MaKhoa` = `sv`.`MaKhoa`)) ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `view2`
--
DROP TABLE IF EXISTS `view2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view2`  AS SELECT `kdt`.`TenKhoa` AS `TenKhoa`, `mh`.`TenMon` AS `TenMon`, `mh`.`SoTinChi` AS `SoTinChi`, `mh`.`GhiChu` AS `GhiChu` FROM (`khoa_dao_tao` `kdt` join `mon_hoc` `mh` on(`kdt`.`MaKhoa` = `mh`.`MaKhoa`)) ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dang_ky_hoc`
--
ALTER TABLE `dang_ky_hoc`
  ADD PRIMARY KEY (`MaDangKy`),
  ADD KEY `MaSV` (`MaSV`),
  ADD KEY `MaMon` (`MaMon`);

--
-- Chỉ mục cho bảng `khoa_dao_tao`
--
ALTER TABLE `khoa_dao_tao`
  ADD PRIMARY KEY (`MaKhoa`);

--
-- Chỉ mục cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD PRIMARY KEY (`MaMon`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Chỉ mục cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD PRIMARY KEY (`MaSV`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dang_ky_hoc`
--
ALTER TABLE `dang_ky_hoc`
  ADD CONSTRAINT `dang_ky_hoc_ibfk_1` FOREIGN KEY (`MaSV`) REFERENCES `sinh_vien` (`MaSV`),
  ADD CONSTRAINT `dang_ky_hoc_ibfk_2` FOREIGN KEY (`MaMon`) REFERENCES `mon_hoc` (`MaMon`);

--
-- Các ràng buộc cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD CONSTRAINT `mon_hoc_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa_dao_tao` (`MaKhoa`);

--
-- Các ràng buộc cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD CONSTRAINT `sinh_vien_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa_dao_tao` (`MaKhoa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
