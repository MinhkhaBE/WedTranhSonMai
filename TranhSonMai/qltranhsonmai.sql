USE [master]
GO
/****** Object:  Database [qltranhsonmai]    Script Date: 5/21/2021 11:38:08 AM ******/
CREATE DATABASE [qltranhsonmai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qltranhsonmai', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\qltranhsonmai.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qltranhsonmai_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\qltranhsonmai_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [qltranhsonmai] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qltranhsonmai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qltranhsonmai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qltranhsonmai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qltranhsonmai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qltranhsonmai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qltranhsonmai] SET ARITHABORT OFF 
GO
ALTER DATABASE [qltranhsonmai] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qltranhsonmai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qltranhsonmai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qltranhsonmai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qltranhsonmai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qltranhsonmai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qltranhsonmai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qltranhsonmai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qltranhsonmai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qltranhsonmai] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qltranhsonmai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qltranhsonmai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qltranhsonmai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qltranhsonmai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qltranhsonmai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qltranhsonmai] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qltranhsonmai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qltranhsonmai] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qltranhsonmai] SET  MULTI_USER 
GO
ALTER DATABASE [qltranhsonmai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qltranhsonmai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qltranhsonmai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qltranhsonmai] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [qltranhsonmai]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 5/21/2021 11:38:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[UserAdmin] [varchar](50) NOT NULL,
	[PassAdmin] [varchar](50) NULL,
	[Hoten] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDatHang]    Script Date: 5/21/2021 11:38:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDatHang](
	[MaHD] [int] NOT NULL,
	[Matranhsonmai] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CTDatHang] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[Matranhsonmai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 5/21/2021 11:38:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDH] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/21/2021 11:38:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loaitranhsonmai]    Script Date: 5/21/2021 11:38:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loaitranhsonmai](
	[MaLoaitranhsonmai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaitranhsonmai] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Loaitranhsonmai] PRIMARY KEY CLUSTERED 
(
	[MaLoaitranhsonmai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/21/2021 11:38:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SDT] [varchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tranhsonmai]    Script Date: 5/21/2021 11:38:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tranhsonmai](
	[Matranhsonmai] [int] IDENTITY(1,1) NOT NULL,
	[Tentranhsonmai] [nvarchar](100) NOT NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhMinhHoa] [nvarchar](max) NULL,
	[NgayNhap] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MaLoaitranhsonmai] [int] NULL,
	[MaNCC] [int] NULL,
 CONSTRAINT [PK_tranhsonmai] PRIMARY KEY CLUSTERED 
(
	[Matranhsonmai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [Hoten]) VALUES (N'admin', N'123', N'Administrator')
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [Hoten]) VALUES (N'kha', N'123', N'Minh kha')
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh]) VALUES (1, N'Nguyễn Minh Kha', N'kha', N'1', N'younggkha@gmail', N'Tô Ký', N'0377879183', CAST(N'2000-09-30T00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh]) VALUES (2, N'Nguyễn Minh Khang', N'khang', N'1', N'khangkhang@gmail', N'Tô Ký', N'0354678956', CAST(N'2010-03-10T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[Loaitranhsonmai] ON 

INSERT [dbo].[Loaitranhsonmai] ([MaLoaitranhsonmai], [TenLoaitranhsonmai]) VALUES (1, N'Tranh Sơn Mài')
INSERT [dbo].[Loaitranhsonmai] ([MaLoaitranhsonmai], [TenLoaitranhsonmai]) VALUES (2, N'Bình Sơn Mài')
INSERT [dbo].[Loaitranhsonmai] ([MaLoaitranhsonmai], [TenLoaitranhsonmai]) VALUES (3, N'Hộp Sơn Mài')
INSERT [dbo].[Loaitranhsonmai] ([MaLoaitranhsonmai], [TenLoaitranhsonmai]) VALUES (4, N'Khay Sơn Mài')
INSERT [dbo].[Loaitranhsonmai] ([MaLoaitranhsonmai], [TenLoaitranhsonmai]) VALUES (5, N'Đèn Sơn Mài')
SET IDENTITY_INSERT [dbo].[Loaitranhsonmai] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (1, N'TP.HCM', N'Hồ Chí Minh', N'0345698755')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (2, N'Đồng Nai', N'Đồng nai', N'0321456457')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (3, N'Hà Nội', N'Hà Nội', N'0345678446')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (4, N'Quảng ngãi', N'Quảng Ngãi', N'0324567889')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[tranhsonmai] ON 

INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (1, N'Tranh sơn mài , nghệ thuật', CAST(1569000 AS Decimal(18, 0)), N'Kích thước , 50 x 80 cm

, Vẽ  , chất liệu gỗ', N't1.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 150, 1, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (2, N'Tranh sơn mài , tĩnh vật', CAST(1240000 AS Decimal(18, 0)), N'Kích thước , 50 x 80 cm

Vẽ , chất liệu gốm', N't2.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 152, 1, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (3, N'Tranh sơn mài cao cấp', CAST(1650000 AS Decimal(18, 0)), N'Kích thước , 90 x 1m70

Vẽ , chất liệu gỗ', N't3.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 130, 1, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (4, N'Tranh sơn mài cao cấp', CAST(1230000 AS Decimal(18, 0)), N'Kích thước , 90 x 1m70

Vẽ , chất liệu gỗ', N't4.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 120, 1, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (5, N'Tranh sơn mài , tĩnh vật', CAST(1234000 AS Decimal(18, 0)), N'Kích thước ; 80 x 80 cm

Vẽ , chất liệu gổ', N't5.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 123, 1, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (6, N'Tranh sơn mài , tĩnh vật', CAST(1200000 AS Decimal(18, 0)), N'Kích thước ; 80 x 80 cm

Vẽ ,chất liệu  gổ', N't6.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 110, 1, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (10, N'Tranh sơn mài cao cấp, chúa giáng sinh', CAST(1800000 AS Decimal(18, 0)), N'Kích thước ; 90 x 1 m 70

Vẽ , chất liệu gổ', N't7.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 168, 1, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (12, N'Tranh sơn mài cao cấp, đồng quê', CAST(1750000 AS Decimal(18, 0)), N'Kích thước ; 90 x 1m70

Vẽ , chất liệu gổ', N't8.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 123, 1, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (13, N'Tranh sơn mài cao cấp, đồng quê', CAST(1600000 AS Decimal(18, 0)), N'kích Thước ; 90 x 1m70

Vẽ , cốt gổ', N't9.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 121, 1, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (14, N'Tranh sơn mài cao cấp , tùng hạt', CAST(2100000 AS Decimal(18, 0)), N'kích thước ; 90 x 1 m70

Đấp nổi ,chất liệu gổ', N't10.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 39, 1, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (15, N'Tranh sơn mài , chữ phúc', CAST(1190000 AS Decimal(18, 0)), N'Kích thước , 40 x 60 cm

Vẽ , chất liệu gổ', N't11.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 203, 1, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (16, N'Tranh sơn mài , chữ nhẫn', CAST(1190000 AS Decimal(18, 0)), N'Kích thước , 40 x 60 cm

Vẽ , chất liệu gổ', N't12.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 245, 1, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (17, N'Bình trang trí sơn mài', CAST(260000 AS Decimal(18, 0)), N'Kích thước , cao 33 cm ,ngang 7 cm

Chất liệu , compotie', N'b1.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 203, 2, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (18, N'Bình trang trí sơn mài', CAST(260000 AS Decimal(18, 0)), N'Kích thước ,cao 33 cm ,ngang 7 cm

Chất liệu , compotie', N'b2.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 234, 2, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (19, N'Bình trang trí sơn mài', CAST(260000 AS Decimal(18, 0)), N'Kích thước , cao 33 cm ,ngang 7 cm

Chất liệu , compotie', N'b3.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 123, 2, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (20, N'Bình trang trí sơn mài', CAST(240000 AS Decimal(18, 0)), N'Kích thước , cao 34,8 cm ,ngang 6 cm

Chất liệu , compotie', N'b4.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 236, 2, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (21, N'Bình trang trí sơn mài', CAST(190000 AS Decimal(18, 0)), N'Kích thước ,cao 28 cm ,ngang 8 cm

Chất liệu , compotie', N'b5.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 233, 2, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (22, N'Bình trang trí sơn mài', CAST(290000 AS Decimal(18, 0)), N'Kích thước , cao 22 cm ,ngang 15 cm

Chất liệu , compotie', N'b6.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 233, 2, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (24, N'Bình trang trí sơn mài', CAST(290000 AS Decimal(18, 0)), N'Kích thước , cao 22 cm ,ngang 15 cm

Chất liệu , compotie', N'b7.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 135, 2, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (25, N'Bình trang trí sơn mài', CAST(90000 AS Decimal(18, 0)), N'Kích thước , cao 20 cm ,ngang 5,5 cm

Chất liệu ,gổ', N'b8.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 233, 2, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (26, N'Bình trang trí sơn mài', CAST(100000 AS Decimal(18, 0)), N'Kích thước cao 30 cm ,ngang 4,5 cm

Chất liệu ,gổ', N'b9.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 211, 2, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (27, N'Bình trang trí sơn mài', CAST(240000 AS Decimal(18, 0)), N'Khích thước , cao 26cm ,ngang 18 cm

Chất liệu ,compotie', N'b10.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 211, 2, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (28, N'Bình trang trí sơn mài', CAST(330000 AS Decimal(18, 0)), N'kích thước

Chất liệu ,composite', N'b11.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 233, 2, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (29, N'Bình trang trí sơn mài', CAST(440000 AS Decimal(18, 0)), N'kích thước

Chất liệu ,composite', N'b12.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 126, 2, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (30, N'Chân nến cục bộ 3', CAST(120000 AS Decimal(18, 0)), N'Kích thước  , 7,5 x 8   7,5 x 10   7,5 x 11,5 cm

Chất liệu  , gỗ phủ sơn mài

Cần trứng làm hoàng toàn bằng thủ công', N'h1.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 455, 3, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (35, N'Hủ cắm viết', CAST(80000 AS Decimal(18, 0)), N'Kích thước ,cao 11 cm ,ngang 7 cm

Chất liệu , gổ', N'h2.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 345, 3, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (36, N'Bàn tay', CAST(100000 AS Decimal(18, 0)), N'kích thước

Chất liệu ,gỗ', N'h3.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 233, 3, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (37, N'Gạt tàng thuốt', CAST(80000 AS Decimal(18, 0)), N'kích thước ,

Chất liệu , gỗ', N'h4.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 344, 3, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (38, N'Hủ tâm', CAST(60000 AS Decimal(18, 0)), N'kích thước

Chất liệu ,gỗ', N'h5.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 311, 3, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (39, N'Gáo dừa', CAST(60000 AS Decimal(18, 0)), N'Kích thước

Vẽ', N'h6.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 544, 3, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (40, N'Hộp khăng giấy sơn mài', CAST(380000 AS Decimal(18, 0)), N'Kích thước ,

Chất liệu ,gổ', N'h7.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 322, 3, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (41, N'Hộp mức sơn mài', CAST(450000 AS Decimal(18, 0)), N'Kích thước 

Chất liệu , gổ', N'h8.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 223, 3, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (42, N'Hủ keo 3 chân', CAST(150000 AS Decimal(18, 0)), N'Kích thước , 15 x 15 x 15 cm

Chất liệu , gổ', N'h9.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 355, 3, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (43, N'Hủ trà bộ 3', CAST(300000 AS Decimal(18, 0)), N'Kích thước , 

Chất liệu , gổ', N'h10.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 433, 3, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (44, N'Hủ nhọn', CAST(150000 AS Decimal(18, 0)), N'Kích thước , 17 x 17 x 17 cm

Chất liệu , gổ', N'h11.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 211, 3, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (45, N'Nến hộp , bộ 3', CAST(260000 AS Decimal(18, 0)), N'Kích thước , 7,5 x 20 x 7 cm

Chất liệu , gổ', N'h12.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 344, 3, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (46, N'Dĩa sơn mài', CAST(350000 AS Decimal(18, 0)), N'Kích thước ,34 x 34 cm

Chất liệu gỗ', N'k1.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 233, 4, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (47, N'Khay sơn mài', CAST(350000 AS Decimal(18, 0)), N'Kích thước ,34 x 34 cm

Chất liệu gỗ', N'k2.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 344, 4, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (48, N'Tô tròn sơn mài', CAST(200000 AS Decimal(18, 0)), N'Kích thước ,

Đấp bạc ,bộ ba cái', N'k3.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 233, 4, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (49, N'Tô lá sơn mài', CAST(200000 AS Decimal(18, 0)), N'Kích thước ,

Đấp bạc , bộ ba cái', N'k4.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 433, 4, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (50, N'Dĩa sơn mài hồn quê', CAST(280000 AS Decimal(18, 0)), N'Kích thước ,

Đấp bạc ', N'k5.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 233, 4, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (51, N'Dĩa sơn mài hoa sen', CAST(280000 AS Decimal(18, 0)), N'Kích thước , 25 x 25 cm

Vẽ đấp nổi , chất liệu gỗ', N'k6.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 433, 4, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (52, N'Dĩa sơn mài hồn quê', CAST(280000 AS Decimal(18, 0)), N'Kích thước , 20 x 20 cm

Vẽ , chất liệu gỗ', N'k7.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 222, 4, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (53, N'Dĩa sơn mài hồn quê', CAST(280000 AS Decimal(18, 0)), N'Kích thước , 20 x 20 cm

Vẽ , chất liệu gỗ', N'k8.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 112, 4, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (54, N'Dĩa sơn mài hồn quê', CAST(320000 AS Decimal(18, 0)), N'Kích thước , 7,5 x 20 x 7 cm

Chất liệu , gổ', N'k9.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 239, 4, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (55, N'Tô tròn sơn mài', CAST(240000 AS Decimal(18, 0)), N'Kích thước ,

 Đấp bạc , bộ ba cái', N'k10.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 357, 4, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (56, N'Khay sơn mài', CAST(120000 AS Decimal(18, 0)), N'Kích thước ,

 Đấp bạc , bộ ba cái', N'k11.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 543, 4, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (57, N'Dĩa sơn mài', CAST(350000 AS Decimal(18, 0)), N'Kích thước ,34 x 34 cm

Chất liệu gỗ', N'k12.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 211, 4, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (58, N'ĐÈN NGỦ SƠN MÀI', CAST(700000 AS Decimal(18, 0)), N'ĐÈN NGỦ SƠN MÀI : CỐT GỐM

KÍNH THƯỚC : 40 X 77 CM', N'd1.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 455, 5, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (59, N'ĐÈN NGỦ SƠN MÀI', CAST(500000 AS Decimal(18, 0)), N'ĐÈN NGỦ SƠN MÀI

KÍNH THƯỚC : 40 X 57 CM', N'd2.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 569, 5, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (60, N'ĐÈN NGỦ SƠN MÀI', CAST(500000 AS Decimal(18, 0)), N'ĐÈN NGỦ SƠN MÀI

KÍNH THƯỚC : 40 X 47 CM', N'd3.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 451, 5, 1)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (61, N'ĐÈN NGỦ SƠN MÀI', CAST(500000 AS Decimal(18, 0)), N'ĐÈN NGỦ SƠN MÀI

KÍNH THƯỚC : 40 X 57 CM', N'd4.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 243, 5, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (62, N'ĐÈN NGỦ SƠN MÀI', CAST(650000 AS Decimal(18, 0)), N'ĐÈN NGỦ SƠN MÀI

KÍNH THƯỚC : 40 X 75 CM', N'd5.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 311, 5, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (63, N'ĐÈN NGỦ SƠN MÀI', CAST(500000 AS Decimal(18, 0)), N'ĐÈN NGỦ SƠN MÀI

KÍNH THƯỚC : 40 X 57 CM', N'd6.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 211, 5, 2)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (64, N'ĐÈN NGỦ SƠN MÀI', CAST(550000 AS Decimal(18, 0)), N'ĐÈN NGỦ SƠN MÀI

KÍNH THƯỚC : 40 X 50 CM', N'd7.png', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 344, 5, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (65, N'ĐÈN NGỦ SƠN MÀI', CAST(440000 AS Decimal(18, 0)), N'ĐÈN NGỦ SƠN MÀI

KÍNH THƯỚC : 35 X 50 CM', N'd8.png', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 533, 5, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (66, N'ĐÈN NGỦ SƠN MÀI', CAST(550000 AS Decimal(18, 0)), N'ĐÈN NGỦ SƠN MÀI

KÍNH THƯỚC : 40 X 50 CM

', N'd9.png', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 311, 5, 3)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (67, N'ĐÈN NGỦ SƠN MÀI', CAST(500000 AS Decimal(18, 0)), N'ĐÈN NGỦ SƠN MÀI

KÍNH THƯỚC : 40 X 50 CM', N'd10.png', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 311, 5, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (68, N'ĐÈN NGỦ SƠN MÀI', CAST(650000 AS Decimal(18, 0)), N'ĐÈN NGỦ SƠN MÀI

KÍNH THƯỚC : 40 X 73 CM', N'd11.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 499, 5, 4)
INSERT [dbo].[tranhsonmai] ([Matranhsonmai], [Tentranhsonmai], [GiaBan], [MoTa], [AnhMinhHoa], [NgayNhap], [SoLuongTon], [MaLoaitranhsonmai], [MaNCC]) VALUES (69, N'ĐÈN NGỦ SƠN MÀI', CAST(480000 AS Decimal(18, 0)), N'ĐÈN NGỦ SƠN MÀI

KÍNH THƯỚC : 40 X 51 CM', N'd12.jpg', CAST(N'2020-02-20T00:00:00.000' AS DateTime), 211, 5, 4)
SET IDENTITY_INSERT [dbo].[tranhsonmai] OFF
ALTER TABLE [dbo].[CTDatHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDatHang_DonDatHang] FOREIGN KEY([MaHD])
REFERENCES [dbo].[DonDatHang] ([MaHD])
GO
ALTER TABLE [dbo].[CTDatHang] CHECK CONSTRAINT [FK_CTDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[CTDatHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDatHang_tranhsonmai] FOREIGN KEY([Matranhsonmai])
REFERENCES [dbo].[tranhsonmai] ([Matranhsonmai])
GO
ALTER TABLE [dbo].[CTDatHang] CHECK CONSTRAINT [FK_CTDatHang_tranhsonmai]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[tranhsonmai]  WITH CHECK ADD  CONSTRAINT [FK_tranhsonmai_Loaitranhsonmai] FOREIGN KEY([MaLoaitranhsonmai])
REFERENCES [dbo].[Loaitranhsonmai] ([MaLoaitranhsonmai])
GO
ALTER TABLE [dbo].[tranhsonmai] CHECK CONSTRAINT [FK_tranhsonmai_Loaitranhsonmai]
GO
ALTER TABLE [dbo].[tranhsonmai]  WITH CHECK ADD  CONSTRAINT [FK_tranhsonmai_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[tranhsonmai] CHECK CONSTRAINT [FK_tranhsonmai_NhaCungCap]
GO
USE [master]
GO
ALTER DATABASE [qltranhsonmai] SET  READ_WRITE 
GO
