USE [master]
GO
/****** Object:  Database [Seferi]    Script Date: 19.04.2019 14:55:00 ******/
CREATE DATABASE [Seferi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Seferi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Seferi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Seferi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Seferi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Seferi] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Seferi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Seferi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Seferi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Seferi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Seferi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Seferi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Seferi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Seferi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Seferi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Seferi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Seferi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Seferi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Seferi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Seferi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Seferi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Seferi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Seferi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Seferi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Seferi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Seferi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Seferi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Seferi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Seferi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Seferi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Seferi] SET  MULTI_USER 
GO
ALTER DATABASE [Seferi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Seferi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Seferi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Seferi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Seferi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Seferi] SET QUERY_STORE = OFF
GO
USE [Seferi]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Seferi]
GO
/****** Object:  Table [dbo].[Duraklar]    Script Date: 19.04.2019 14:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Duraklar](
	[DurakID] [int] IDENTITY(1,1) NOT NULL,
	[DurakAdi] [nvarchar](50) NOT NULL,
	[Aciklama] [nvarchar](250) NULL,
 CONSTRAINT [PK_Duraklar] PRIMARY KEY CLUSTERED 
(
	[DurakID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuzergahDuraklari]    Script Date: 19.04.2019 14:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GuzergahDuraklari](
	[GuzergahID] [int] NOT NULL,
	[DurakID] [int] NOT NULL,
	[Sira] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guzergahlar]    Script Date: 19.04.2019 14:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guzergahlar](
	[GuzergahID] [int] IDENTITY(1,1) NOT NULL,
	[GuzergahAdi] [varchar](50) NOT NULL,
	[Aciklama] [varchar](250) NULL,
 CONSTRAINT [PK_Guzergahlar] PRIMARY KEY CLUSTERED 
(
	[GuzergahID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezervasyonlar]    Script Date: 19.04.2019 14:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervasyonlar](
	[RezervasyonID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriAdiSoyadi] [varchar](100) NOT NULL,
	[MusteriTCKN] [varchar](20) NOT NULL,
	[SeferID] [int] NOT NULL,
	[BinisDurakID] [int] NOT NULL,
	[InisDurakID] [int] NOT NULL,
	[Aciklama] [varchar](250) NULL,
 CONSTRAINT [PK_Rezervasyonlar] PRIMARY KEY CLUSTERED 
(
	[RezervasyonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seferler]    Script Date: 19.04.2019 14:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seferler](
	[SeferID] [int] IDENTITY(1,1) NOT NULL,
	[GuzergahID] [int] NOT NULL,
	[TarihSaat] [datetime] NOT NULL,
	[Aciklama] [varbinary](250) NULL,
 CONSTRAINT [PK_Seferler] PRIMARY KEY CLUSTERED 
(
	[SeferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Duraklar] ON 
GO
INSERT [dbo].[Duraklar] ([DurakID], [DurakAdi], [Aciklama]) VALUES (1, N'A', NULL)
GO
INSERT [dbo].[Duraklar] ([DurakID], [DurakAdi], [Aciklama]) VALUES (2, N'B', NULL)
GO
INSERT [dbo].[Duraklar] ([DurakID], [DurakAdi], [Aciklama]) VALUES (3, N'C', NULL)
GO
INSERT [dbo].[Duraklar] ([DurakID], [DurakAdi], [Aciklama]) VALUES (4, N'D', NULL)
GO
INSERT [dbo].[Duraklar] ([DurakID], [DurakAdi], [Aciklama]) VALUES (5, N'E', NULL)
GO
INSERT [dbo].[Duraklar] ([DurakID], [DurakAdi], [Aciklama]) VALUES (6, N'F', NULL)
GO
INSERT [dbo].[Duraklar] ([DurakID], [DurakAdi], [Aciklama]) VALUES (7, N'H', NULL)
GO
INSERT [dbo].[Duraklar] ([DurakID], [DurakAdi], [Aciklama]) VALUES (8, N'J', NULL)
GO
INSERT [dbo].[Duraklar] ([DurakID], [DurakAdi], [Aciklama]) VALUES (9, N'K', NULL)
GO
INSERT [dbo].[Duraklar] ([DurakID], [DurakAdi], [Aciklama]) VALUES (10, N'L', NULL)
GO
INSERT [dbo].[Duraklar] ([DurakID], [DurakAdi], [Aciklama]) VALUES (11, N'R', NULL)
GO
SET IDENTITY_INSERT [dbo].[Duraklar] OFF
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (1, 1, 1)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (1, 2, 2)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (1, 3, 3)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (1, 4, 4)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (1, 5, 5)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (1, 6, 6)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (2, 7, 1)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (2, 3, 2)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (2, 4, 3)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (2, 5, 4)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (2, 8, 5)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (3, 9, 1)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (3, 10, 2)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (3, 4, 3)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (3, 11, 4)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (4, 6, 1)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (4, 5, 2)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (4, 4, 3)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (4, 3, 4)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (4, 2, 5)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (5, 8, 1)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (5, 5, 2)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (5, 4, 3)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (5, 3, 4)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (5, 7, 5)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (6, 11, 1)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (6, 4, 2)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (6, 10, 3)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (6, 9, 4)
GO
INSERT [dbo].[GuzergahDuraklari] ([GuzergahID], [DurakID], [Sira]) VALUES (4, 1, 6)
GO
SET IDENTITY_INSERT [dbo].[Guzergahlar] ON 
GO
INSERT [dbo].[Guzergahlar] ([GuzergahID], [GuzergahAdi], [Aciklama]) VALUES (1, N'G-A-F', NULL)
GO
INSERT [dbo].[Guzergahlar] ([GuzergahID], [GuzergahAdi], [Aciklama]) VALUES (2, N'G-H-J', NULL)
GO
INSERT [dbo].[Guzergahlar] ([GuzergahID], [GuzergahAdi], [Aciklama]) VALUES (3, N'G-K-R', NULL)
GO
INSERT [dbo].[Guzergahlar] ([GuzergahID], [GuzergahAdi], [Aciklama]) VALUES (4, N'G-F-A', NULL)
GO
INSERT [dbo].[Guzergahlar] ([GuzergahID], [GuzergahAdi], [Aciklama]) VALUES (5, N'G-J-H', NULL)
GO
INSERT [dbo].[Guzergahlar] ([GuzergahID], [GuzergahAdi], [Aciklama]) VALUES (6, N'G-R-K', NULL)
GO
SET IDENTITY_INSERT [dbo].[Guzergahlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Rezervasyonlar] ON 
GO
INSERT [dbo].[Rezervasyonlar] ([RezervasyonID], [MusteriAdiSoyadi], [MusteriTCKN], [SeferID], [BinisDurakID], [InisDurakID], [Aciklama]) VALUES (1, N'Mehmet Fatih AKAN', N'22554875542', 1, 7, 5, N'Valizim çok var. ')
GO
SET IDENTITY_INSERT [dbo].[Rezervasyonlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Seferler] ON 
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (1, 1, CAST(N'2019-04-23T10:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (2, 1, CAST(N'2019-04-23T12:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (3, 1, CAST(N'2019-04-23T14:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (4, 1, CAST(N'2019-04-23T16:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (5, 2, CAST(N'2019-04-23T16:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (6, 2, CAST(N'2019-04-23T14:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (7, 2, CAST(N'2019-04-23T10:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (8, 3, CAST(N'2019-04-23T12:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (9, 3, CAST(N'2019-04-23T10:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (10, 3, CAST(N'2019-04-23T18:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (11, 4, CAST(N'2019-04-23T10:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (12, 4, CAST(N'2019-04-23T12:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (13, 4, CAST(N'2019-04-23T16:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (14, 5, CAST(N'2019-04-23T10:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (15, 5, CAST(N'2019-04-23T16:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (16, 5, CAST(N'2019-04-23T18:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (17, 6, CAST(N'2019-04-23T16:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (18, 6, CAST(N'2019-04-23T10:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Seferler] ([SeferID], [GuzergahID], [TarihSaat], [Aciklama]) VALUES (19, 6, CAST(N'2019-04-23T14:00:00.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Seferler] OFF
GO
ALTER TABLE [dbo].[GuzergahDuraklari]  WITH CHECK ADD  CONSTRAINT [FK_GuzergahDuraklari_Duraklar] FOREIGN KEY([DurakID])
REFERENCES [dbo].[Duraklar] ([DurakID])
GO
ALTER TABLE [dbo].[GuzergahDuraklari] CHECK CONSTRAINT [FK_GuzergahDuraklari_Duraklar]
GO
ALTER TABLE [dbo].[GuzergahDuraklari]  WITH CHECK ADD  CONSTRAINT [FK_GuzergahDuraklari_Guzergahlar] FOREIGN KEY([GuzergahID])
REFERENCES [dbo].[Guzergahlar] ([GuzergahID])
GO
ALTER TABLE [dbo].[GuzergahDuraklari] CHECK CONSTRAINT [FK_GuzergahDuraklari_Guzergahlar]
GO
ALTER TABLE [dbo].[Rezervasyonlar]  WITH CHECK ADD  CONSTRAINT [FK_Rezervasyonlar_Duraklar_Binis] FOREIGN KEY([BinisDurakID])
REFERENCES [dbo].[Duraklar] ([DurakID])
GO
ALTER TABLE [dbo].[Rezervasyonlar] CHECK CONSTRAINT [FK_Rezervasyonlar_Duraklar_Binis]
GO
ALTER TABLE [dbo].[Rezervasyonlar]  WITH CHECK ADD  CONSTRAINT [FK_Rezervasyonlar_Duraklar_Inis] FOREIGN KEY([InisDurakID])
REFERENCES [dbo].[Duraklar] ([DurakID])
GO
ALTER TABLE [dbo].[Rezervasyonlar] CHECK CONSTRAINT [FK_Rezervasyonlar_Duraklar_Inis]
GO
ALTER TABLE [dbo].[Rezervasyonlar]  WITH CHECK ADD  CONSTRAINT [FK_Rezervasyonlar_Seferler] FOREIGN KEY([SeferID])
REFERENCES [dbo].[Seferler] ([SeferID])
GO
ALTER TABLE [dbo].[Rezervasyonlar] CHECK CONSTRAINT [FK_Rezervasyonlar_Seferler]
GO
ALTER TABLE [dbo].[Seferler]  WITH NOCHECK ADD  CONSTRAINT [FK_Seferler_Guzergahlar] FOREIGN KEY([GuzergahID])
REFERENCES [dbo].[Guzergahlar] ([GuzergahID])
GO
ALTER TABLE [dbo].[Seferler] CHECK CONSTRAINT [FK_Seferler_Guzergahlar]
GO
USE [master]
GO
ALTER DATABASE [Seferi] SET  READ_WRITE 
GO
