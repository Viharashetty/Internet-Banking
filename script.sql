USE [master]
GO
/****** Object:  Database [InternetBanking]    Script Date: 10/14/2021 12:30:12 PM ******/
CREATE DATABASE [InternetBanking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InternetBanking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\InternetBanking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InternetBanking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\InternetBanking_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [InternetBanking] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InternetBanking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InternetBanking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InternetBanking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InternetBanking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InternetBanking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InternetBanking] SET ARITHABORT OFF 
GO
ALTER DATABASE [InternetBanking] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InternetBanking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InternetBanking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InternetBanking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InternetBanking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InternetBanking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InternetBanking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InternetBanking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InternetBanking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InternetBanking] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InternetBanking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InternetBanking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InternetBanking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InternetBanking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InternetBanking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InternetBanking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InternetBanking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InternetBanking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [InternetBanking] SET  MULTI_USER 
GO
ALTER DATABASE [InternetBanking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InternetBanking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InternetBanking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InternetBanking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InternetBanking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [InternetBanking] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [InternetBanking] SET QUERY_STORE = OFF
GO
USE [InternetBanking]
GO
/****** Object:  Table [dbo].[AdminLogin]    Script Date: 10/14/2021 12:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_AdminLogin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthenticationTable]    Script Date: 10/14/2021 12:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthenticationTable](
	[Account_Number] [bigint] IDENTITY(350000000,67859) NOT NULL,
	[MobileNumber] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_AuthenticationTable] PRIMARY KEY CLUSTERED 
(
	[Account_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Admin1]    Script Date: 10/14/2021 12:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Admin1](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Account_Number] [bigint] NOT NULL,
	[Account_Holder_Name] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_tb_Admin1] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdminLogin] ON 

INSERT [dbo].[AdminLogin] ([Id], [UserName], [Password]) VALUES (1, N'Aleesha C Asharaf', N'123')
INSERT [dbo].[AdminLogin] ([Id], [UserName], [Password]) VALUES (2, N'Vihara', N'Vihara')
INSERT [dbo].[AdminLogin] ([Id], [UserName], [Password]) VALUES (3, N'VGShetty', N'1427')
SET IDENTITY_INSERT [dbo].[AdminLogin] OFF
GO
SET IDENTITY_INSERT [dbo].[AuthenticationTable] ON 

INSERT [dbo].[AuthenticationTable] ([Account_Number], [MobileNumber], [Password]) VALUES (350000000, N'9072834283', N'123')
INSERT [dbo].[AuthenticationTable] ([Account_Number], [MobileNumber], [Password]) VALUES (350135718, N'+919663702456', N'966')
INSERT [dbo].[AuthenticationTable] ([Account_Number], [MobileNumber], [Password]) VALUES (350203577, N'+919900868436', N'990')
INSERT [dbo].[AuthenticationTable] ([Account_Number], [MobileNumber], [Password]) VALUES (350271436, N'+911234567891', N'1234')
INSERT [dbo].[AuthenticationTable] ([Account_Number], [MobileNumber], [Password]) VALUES (350339295, N'+919845012345', N'9845')
SET IDENTITY_INSERT [dbo].[AuthenticationTable] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Admin1] ON 

INSERT [dbo].[tb_Admin1] ([AdminID], [Account_Number], [Account_Holder_Name], [Country], [City], [Amount]) VALUES (1, 350135718, N'Vihara ', N'India', N'Bengaluru', 1000)
INSERT [dbo].[tb_Admin1] ([AdminID], [Account_Number], [Account_Holder_Name], [Country], [City], [Amount]) VALUES (2, 350203577, N'Shashikala', N'India', N'Bengaluru', 400)
INSERT [dbo].[tb_Admin1] ([AdminID], [Account_Number], [Account_Holder_Name], [Country], [City], [Amount]) VALUES (3, 350271436, N'Gagana', N'India', N'Bengaluru', 1500)
INSERT [dbo].[tb_Admin1] ([AdminID], [Account_Number], [Account_Holder_Name], [Country], [City], [Amount]) VALUES (4, 350339295, N'Babuji Abraham', N'India', N'Bengaluru', 51100)
SET IDENTITY_INSERT [dbo].[tb_Admin1] OFF
GO
ALTER TABLE [dbo].[tb_Admin1]  WITH CHECK ADD  CONSTRAINT [FK_tb_Admin1_AuthenticationTable] FOREIGN KEY([Account_Number])
REFERENCES [dbo].[AuthenticationTable] ([Account_Number])
GO
ALTER TABLE [dbo].[tb_Admin1] CHECK CONSTRAINT [FK_tb_Admin1_AuthenticationTable]
GO
USE [master]
GO
ALTER DATABASE [InternetBanking] SET  READ_WRITE 
GO
