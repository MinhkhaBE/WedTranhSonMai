USE [qltranhsonmai]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/18/2020 9:23:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[UserAdmin] [int] NOT NULL,
	[PassAdmin] [nvarchar](50) NULL,
	[Hoten] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDatHang]    Script Date: 6/18/2020 9:23:01 PM ******/
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
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 6/18/2020 9:23:01 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/18/2020 9:23:01 PM ******/
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
/****** Object:  Table [dbo].[Loaitranhsonmai]    Script Date: 6/18/2020 9:23:01 PM ******/
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
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 6/18/2020 9:23:01 PM ******/
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
/****** Object:  Table [dbo].[tranhsonmai]    Script Date: 6/18/2020 9:23:01 PM ******/
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
