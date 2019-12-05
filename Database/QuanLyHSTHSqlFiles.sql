USE [master]
GO
/****** Object:  Database [QuanLyHocSinhTH]    Script Date: 05/12/2019 10:21:07 SA ******/
CREATE DATABASE [QuanLyHocSinhTH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyHocSinhTH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuanLyHocSinhTH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyHocSinhTH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuanLyHocSinhTH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuanLyHocSinhTH] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyHocSinhTH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyHocSinhTH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyHocSinhTH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyHocSinhTH] SET QUERY_STORE = OFF
GO
USE [QuanLyHocSinhTH]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 05/12/2019 10:21:07 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[username] [varchar](20) NOT NULL,
	[PASSWORD] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[PASSWORD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 05/12/2019 10:21:07 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [nvarchar](10) NOT NULL,
	[TenGV] [nvarchar](80) NOT NULL,
	[MaKhoi] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 05/12/2019 10:21:07 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHS] [nvarchar](10) NOT NULL,
	[TenHS] [nvarchar](80) NOT NULL,
	[Tuoi] [smallint] NOT NULL,
	[GioiTinh] [varchar](10) NOT NULL,
	[NoiSinh] [nvarchar](50) NOT NULL,
	[MaKhoi] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_HocSinh] PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoi]    Script Date: 05/12/2019 10:21:07 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoi](
	[MaKhoi] [nvarchar](10) NOT NULL,
	[TenKhoi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Khoi] PRIMARY KEY CLUSTERED 
(
	[MaKhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 05/12/2019 10:21:07 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](10) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
	[SoTiet] [nvarchar](5) NOT NULL,
	[TongSoTiet] [smallint] NOT NULL,
	[MaGV] [nvarchar](10) NOT NULL,
	[MaHS] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [MaKhoi]) VALUES (N'GV001     ', N'Nguyễn Thị Thu Phương', N'K6')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [MaKhoi]) VALUES (N'GV002     ', N'Lê Thị Thanh Vân', N'K9')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [MaKhoi]) VALUES (N'GV003     ', N'Lê Văn Phú', N'K8')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [MaKhoi]) VALUES (N'GV004     ', N'Nguyễn Văn Hiệp', N'K7')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [MaKhoi]) VALUES (N'GV005     ', N'Nguyễn Thị Ngọc', N'K9')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [MaKhoi]) VALUES (N'GV006     ', N'Trịnh Thị Tâm', N'K8')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [Tuoi], [GioiTinh], [NoiSinh], [MaKhoi]) VALUES (N'HS001', N'Nguyễn Văn A', 12, N'Nam', N'Hà Nội', N'K6      ')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [Tuoi], [GioiTinh], [NoiSinh], [MaKhoi]) VALUES (N'HS002', N'Ma Văn Kháng', 14, N'N?', N'Hà Nội', N'K8       ')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [Tuoi], [GioiTinh], [NoiSinh], [MaKhoi]) VALUES (N'HS003', N'Nguyễn Văn B', 13, N'Nam', N'Hà Nội', N'K7       ')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [Tuoi], [GioiTinh], [NoiSinh], [MaKhoi]) VALUES (N'HS004', N'Ma Văn A', 13, N'N?', N'Hà Nội', N'K7       ')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [Tuoi], [GioiTinh], [NoiSinh], [MaKhoi]) VALUES (N'HS005', N'Nguyễn Văn C', 15, N'Nam', N'Hà Nội', N'K9       ')
INSERT [dbo].[HocSinh] ([MaHS], [TenHS], [Tuoi], [GioiTinh], [NoiSinh], [MaKhoi]) VALUES (N'HS006', N'Ma Văn D', 14, N'N?', N'Hà Nội', N'K8       ')
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi]) VALUES (N'K6       ', N'Lớp 6')
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi]) VALUES (N'K7       ', N'Lớp 7')
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi]) VALUES (N'K8       ', N'Lớp 8')
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi]) VALUES (N'K9       ', N'Lớp 9')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [TongSoTiet], [MaGV], [MaHS]) VALUES (N'MH01', N'Toán', N'1-5  ', 45, N'GV001     ', N'HS001     ')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [TongSoTiet], [MaGV], [MaHS]) VALUES (N'MH02', N'Lý', N'1-4  ', 45, N'GV002     ', N'HS001     ')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [TongSoTiet], [MaGV], [MaHS]) VALUES (N'MH03', N'Toán', N'6-12 ', 45, N'GV003     ', N'HS002     ')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [TongSoTiet], [MaGV], [MaHS]) VALUES (N'MH04', N'Lý', N'1-4  ', 45, N'GV004     ', N'HS003     ')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [TongSoTiet], [MaGV], [MaHS]) VALUES (N'MH05', N'Toán', N'1-5  ', 45, N'GV005     ', N'HS004     ')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTiet], [TongSoTiet], [MaGV], [MaHS]) VALUES (N'MH06', N'Lý', N'6-12 ', 45, N'GV006     ', N'HS005     ')
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD FOREIGN KEY([MaKhoi])
REFERENCES [dbo].[Khoi] ([MaKhoi])
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD FOREIGN KEY([MaKhoi])
REFERENCES [dbo].[Khoi] ([MaKhoi])
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
USE [master]
GO
ALTER DATABASE [QuanLyHocSinhTH] SET  READ_WRITE 
GO
