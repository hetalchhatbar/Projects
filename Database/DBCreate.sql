USE [master]
GO
/****** Object:  Database [NLevelCategories]    Script Date: 5/20/2022 5:13:26 PM ******/
CREATE DATABASE [NLevelCategories]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NLevelCategories', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LOCALHOST\MSSQL\DATA\NLevelCategories.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NLevelCategories_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LOCALHOST\MSSQL\DATA\NLevelCategories_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NLevelCategories] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NLevelCategories].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NLevelCategories] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NLevelCategories] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NLevelCategories] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NLevelCategories] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NLevelCategories] SET ARITHABORT OFF 
GO
ALTER DATABASE [NLevelCategories] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NLevelCategories] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NLevelCategories] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NLevelCategories] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NLevelCategories] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NLevelCategories] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NLevelCategories] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NLevelCategories] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NLevelCategories] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NLevelCategories] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NLevelCategories] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NLevelCategories] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NLevelCategories] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NLevelCategories] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NLevelCategories] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NLevelCategories] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NLevelCategories] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NLevelCategories] SET RECOVERY FULL 
GO
ALTER DATABASE [NLevelCategories] SET  MULTI_USER 
GO
ALTER DATABASE [NLevelCategories] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NLevelCategories] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NLevelCategories] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NLevelCategories] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NLevelCategories] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NLevelCategories] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NLevelCategories', N'ON'
GO
ALTER DATABASE [NLevelCategories] SET QUERY_STORE = OFF
GO
USE [NLevelCategories]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 5/20/2022 5:13:26 PM ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tblPCategories]    Script Date: 5/20/2022 5:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPCategories](
	[CategoryID] [bigint] IDENTITY(1,1) NOT NULL,
	[PCategoryName] [nvarchar](50) NULL,
	[C1CategoryName] [nvarchar](50) NULL,
	[C2CategoryName] [nvarchar](50) NULL,
	[C3CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblPCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblPCategories] ON 

INSERT [dbo].[tblPCategories] ([CategoryID], [PCategoryName], [C1CategoryName], [C2CategoryName], [C3CategoryName]) VALUES (1, N'Books', N'Educatenal', N'School', NULL)
INSERT [dbo].[tblPCategories] ([CategoryID], [PCategoryName], [C1CategoryName], [C2CategoryName], [C3CategoryName]) VALUES (2, N'Books', N'Educatenal', N'Higher studies', N'Engineering')
INSERT [dbo].[tblPCategories] ([CategoryID], [PCategoryName], [C1CategoryName], [C2CategoryName], [C3CategoryName]) VALUES (3, N'Books', N'Educatenal', N'Higher studies', N'Mechanical')
INSERT [dbo].[tblPCategories] ([CategoryID], [PCategoryName], [C1CategoryName], [C2CategoryName], [C3CategoryName]) VALUES (4, N'Books', N'Fiction', N'', N'')
INSERT [dbo].[tblPCategories] ([CategoryID], [PCategoryName], [C1CategoryName], [C2CategoryName], [C3CategoryName]) VALUES (5, N'Books', N'Philosophical', N'', N'')
INSERT [dbo].[tblPCategories] ([CategoryID], [PCategoryName], [C1CategoryName], [C2CategoryName], [C3CategoryName]) VALUES (6, N'Electornic', N'Mobile', N'', N'')
INSERT [dbo].[tblPCategories] ([CategoryID], [PCategoryName], [C1CategoryName], [C2CategoryName], [C3CategoryName]) VALUES (7, N'Electornic', N'TV', N'', N'')
INSERT [dbo].[tblPCategories] ([CategoryID], [PCategoryName], [C1CategoryName], [C2CategoryName], [C3CategoryName]) VALUES (8, N'Electornic', N'Fridge', N'', N'')
SET IDENTITY_INSERT [dbo].[tblPCategories] OFF
GO
USE [master]
GO
ALTER DATABASE [NLevelCategories] SET  READ_WRITE 
GO
