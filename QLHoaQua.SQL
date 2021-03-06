USE [master]
GO
/****** Object:  Database [QLHoaQua]    Script Date: 27/08/2020 9:00:49 PM ******/
CREATE DATABASE [QLHoaQua]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLHoaQua', FILENAME = N'D:\Tài liệu giảng dạy\Chuyen ngành Web\CD2. Lập trình web động với Mô hình MVC-20190620T022004Z-001\QLHoaQua.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLHoaQua_log', FILENAME = N'D:\Tài liệu giảng dạy\Chuyen ngành Web\CD2. Lập trình web động với Mô hình MVC-20190620T022004Z-001\QLHoaQua_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLHoaQua] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLHoaQua].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLHoaQua] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLHoaQua] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLHoaQua] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLHoaQua] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLHoaQua] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLHoaQua] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLHoaQua] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLHoaQua] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLHoaQua] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLHoaQua] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLHoaQua] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLHoaQua] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLHoaQua] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLHoaQua] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLHoaQua] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLHoaQua] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLHoaQua] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLHoaQua] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLHoaQua] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLHoaQua] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLHoaQua] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLHoaQua] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLHoaQua] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLHoaQua] SET  MULTI_USER 
GO
ALTER DATABASE [QLHoaQua] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLHoaQua] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLHoaQua] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLHoaQua] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLHoaQua] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLHoaQua]
GO
/****** Object:  Table [dbo].[CTDonHang]    Script Date: 27/08/2020 9:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDonHang](
	[MaCTDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [nvarchar](50) NULL,
	[MaSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[NgayNhap] [date] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[MaCTDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTHoaDonNhap]    Script Date: 27/08/2020 9:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoaDonNhap](
	[MaCTHDNhap] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDonNhap] [nvarchar](50) NULL,
	[MaSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[HanSuDung] [date] NULL,
 CONSTRAINT [PK_CTHoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaCTHDNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 27/08/2020 9:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [nvarchar](50) NOT NULL,
	[MaKhach] [nvarchar](50) NULL,
	[DiaChiNhan] [nvarchar](200) NULL,
	[SDTNhan] [nvarchar](12) NULL,
	[TinhTrang] [int] NULL,
	[ThanhTien] [float] NULL,
	[NgayDat] [datetime] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaBan]    Script Date: 27/08/2020 9:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaBan](
	[MaGia] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [nvarchar](50) NULL,
	[NgayNhap] [date] NULL,
	[GiaBan] [float] NULL,
	[NgayAD] [date] NULL,
	[NgayKT] [date] NULL,
 CONSTRAINT [PK_GiaBan] PRIMARY KEY CLUSTERED 
(
	[MaGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiamGia]    Script Date: 27/08/2020 9:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamGia](
	[MaGiamGia] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [nvarchar](50) NULL,
	[PhanTram] [float] NULL,
	[GiaGiam] [float] NULL,
	[Active] [bit] NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[NgayNhap] [date] NULL,
 CONSTRAINT [PK_GiamGia] PRIMARY KEY CLUSTERED 
(
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 27/08/2020 9:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[MaHoaDonNhap] [nvarchar](50) NOT NULL,
	[NgayNhap] [date] NULL,
	[MaNCC] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHoaDonNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 27/08/2020 9:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhach] [nvarchar](50) NOT NULL,
	[TenKhach] [nvarchar](50) NULL,
	[SDT] [nvarchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 27/08/2020 9:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [nvarchar](50) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 27/08/2020 9:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](12) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCC] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 27/08/2020 9:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](50) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[MaLoai] [nvarchar](50) NULL,
	[DonVi] [nvarchar](50) NULL,
	[MoTa] [nvarchar](500) NULL,
	[Anh] [nvarchar](50) NULL,
	[AnhTo] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 27/08/2020 9:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[MaNV] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CTHoaDonNhap] ON 

INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (1, N'HDN10-8-2020', N'SP01', 10, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (2, N'HDN10-8-2020', N'SP02', 15, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (3, N'HDN10-8-2020', N'SP03', 10, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (4, N'HDN10-8-2020', N'SP04', 10, 55000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (5, N'HDN10-8-2020', N'SP04', 10, 100000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (6, N'HDN10-8-2020', N'SP05', 10, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (7, N'HDN10-8-2020', N'SP06', 10, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (8, N'HDN10-8-2020', N'SP07', 10, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (9, N'HDN10-8-2020', N'SP09', 10, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (10, N'HDN10-8-2020', N'SP10', 10, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (11, N'HDN10-8-2020', N'SP11', 10, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (12, N'HDN10-8-2020', N'SP12', 10, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (13, N'HDN10-8-2020', N'SP13', 10, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (14, N'HDN10-8-2020', N'SP14', 10, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (15, N'HDN10-8-2020', N'SP15', 10, 60000, CAST(N'2021-09-23' AS Date))
INSERT [dbo].[CTHoaDonNhap] ([MaCTHDNhap], [MaHoaDonNhap], [MaSP], [SoLuong], [DonGia], [HanSuDung]) VALUES (16, N'HDN10-8-2020', N'SP16', 10, 60000, CAST(N'2021-09-23' AS Date))
SET IDENTITY_INSERT [dbo].[CTHoaDonNhap] OFF
SET IDENTITY_INSERT [dbo].[GiamGia] ON 

INSERT [dbo].[GiamGia] ([MaGiamGia], [MaSP], [PhanTram], [GiaGiam], [Active], [NgayBD], [NgayKT], [NgayNhap]) VALUES (1, N'SP01', 30, NULL, 1, CAST(N'2020-08-02' AS Date), NULL, CAST(N'2020-08-10' AS Date))
INSERT [dbo].[GiamGia] ([MaGiamGia], [MaSP], [PhanTram], [GiaGiam], [Active], [NgayBD], [NgayKT], [NgayNhap]) VALUES (2, N'SP02', 30, NULL, 1, CAST(N'2020-08-02' AS Date), NULL, CAST(N'2020-08-10' AS Date))
INSERT [dbo].[GiamGia] ([MaGiamGia], [MaSP], [PhanTram], [GiaGiam], [Active], [NgayBD], [NgayKT], [NgayNhap]) VALUES (3, N'SP03', 20, NULL, 1, CAST(N'2020-08-02' AS Date), NULL, CAST(N'2020-08-10' AS Date))
INSERT [dbo].[GiamGia] ([MaGiamGia], [MaSP], [PhanTram], [GiaGiam], [Active], [NgayBD], [NgayKT], [NgayNhap]) VALUES (4, N'SP04', 40, NULL, NULL, CAST(N'2020-08-02' AS Date), NULL, CAST(N'2020-08-10' AS Date))
SET IDENTITY_INSERT [dbo].[GiamGia] OFF
INSERT [dbo].[HoaDonNhap] ([MaHoaDonNhap], [NgayNhap], [MaNCC], [MaNV], [TongTien]) VALUES (N'HDN10-8-2020', CAST(N'2020-08-10' AS Date), N'NCC01', N'NV01', NULL)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Beans', N'Beans')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Cereals', N'Cereals')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Fruits', N'Fruits')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Nuts', N'Nuts & Seeds')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Spices', N'Spices')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Vegetables', N'Vegetables')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC01', N'Nguyễn văn Truyền', N'Hai Dương', N'0987818390', N'hai@gmail.com')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP01', N'Kale', N'Vegetables', N'1kg', NULL, N'kale_300x300.jpg', N'kale_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP02', N'Grape', N'Fruits', N'1kg', N'NULL', N'grapes_300x300.jpg', N'grapes_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP03', N'Black Rice', N'Cereals', N'1kg', N'NULL', N'riceblack_300x300.jpg', N'riceblack_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP04', N'Lentils', N'Beans', N'1kg', NULL, N'lentils_300x300.jpg', N'lentils_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP05', N'Pistachio', N'Nuts', N'500gr', NULL, N'pistachio_300x300.jpg', N'pistachio_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP06', N'Soy Sauce', N'Spices', N'1L', NULL, N'soysauce_300x300.jpg', N'soysauce_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP07', N'Ginger Power', N'Spices', N'1kg', NULL, N'ginger_300x300.jpg', N'ginger_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP08', N'Chick Peas', N'Beans', N'1kg', N'NULL', N'chickpeas_300x300.jpg', N'chickpeas_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP09', N'Cashew', N'Nuts', N'500gr', NULL, N'cashews_300x300.jpg', N'cashew_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP10', N'Ryes', N'Beans', N'1kg', NULL, N'rye_300x300.jpg', N'rye_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP11', N'Asparagus', N'Vegetables', N'1kg', NULL, N'asparagus_300x300.jpg', N'asparagus_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP12', N'Barley', N'Cereals', N'1kg', NULL, N'barley_300x300.jpg', N'barley_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP13', N'Papaya', N'Fruits', N'1kg', NULL, N'papaya_300x300.jpg', N'papaya_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP14', N'Black Beans', N'Beans', N'1kg', NULL, N'blackbeans_300x300.jpg', N'blackbeans_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP15', N'Walnuts', N'Nuts', N'500gr', NULL, N'walnut_600x600.jpg', N'walnut_600x600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [DonVi], [MoTa], [Anh], [AnhTo]) VALUES (N'SP16', N'Chilly', N'spices', N'500gr', NULL, N'chilli_300x300.png', N'chilli_600x600.png')
INSERT [dbo].[User] ([MaNV], [Password], [Role], [Active]) VALUES (N'NV01', N'123', N'admin', 1)
INSERT [dbo].[User] ([MaNV], [Password], [Role], [Active]) VALUES (N'NV02', N'123', N'user', 1)
INSERT [dbo].[User] ([MaNV], [Password], [Role], [Active]) VALUES (N'NV03', N'123', N'user', 0)
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
USE [master]
GO
ALTER DATABASE [QLHoaQua] SET  READ_WRITE 
GO
