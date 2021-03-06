USE [master]
GO
/****** Object:  Database [EmployeeAppDB]    Script Date: 10/19/2018 2:58:06 PM ******/
CREATE DATABASE [EmployeeAppDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeAppDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EmployeeAppDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmployeeAppDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EmployeeAppDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmployeeAppDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeAppDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeAppDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeAppDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeAppDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmployeeAppDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeAppDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeAppDB] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeAppDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeAppDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeAppDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeAppDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EmployeeAppDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [EmployeeAppDB]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/19/2018 2:58:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[Emp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Emp_FirstName] [nvarchar](50) NOT NULL,
	[Emp_LastName] [nvarchar](50) NULL,
	[Emp_Email] [nvarchar](50) NULL,
	[Emp_Salary] [money] NULL,
	[Emp_Designation] [nvarchar](50) NULL,
	[Emp_DOB] [datetime] NULL,
	[Emp_Address] [nvarchar](100) NULL,
	[Gender] [char](1) NULL,
	[valid] [bit] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Emp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

GO
INSERT [dbo].[Employee] ([Emp_Id], [Emp_FirstName], [Emp_LastName], [Emp_Email], [Emp_Salary], [Emp_Designation], [Emp_DOB], [Emp_Address], [Gender], [valid]) VALUES (1, N'Salman', N'Shaikh', N's@s.com', 30000.0000, N'Software Developer', CAST(N'1992-08-31 00:00:00.000' AS DateTime), N'Aurangabad', N'M', 0)
GO
INSERT [dbo].[Employee] ([Emp_Id], [Emp_FirstName], [Emp_LastName], [Emp_Email], [Emp_Salary], [Emp_Designation], [Emp_DOB], [Emp_Address], [Gender], [valid]) VALUES (2, N'Amer', N'Shaikh', N'a@a.com', 20000.0000, N'Software Developer', CAST(N'1993-05-01 00:00:00.000' AS DateTime), N'Aurangabad', N'M', 1)
GO
INSERT [dbo].[Employee] ([Emp_Id], [Emp_FirstName], [Emp_LastName], [Emp_Email], [Emp_Salary], [Emp_Designation], [Emp_DOB], [Emp_Address], [Gender], [valid]) VALUES (3, N'Raees', N'Patel', N'r@r.com', 40000.0000, N'Software Developer', CAST(N'1991-05-01 00:00:00.000' AS DateTime), N'Pune', N'M', 1)
GO
INSERT [dbo].[Employee] ([Emp_Id], [Emp_FirstName], [Emp_LastName], [Emp_Email], [Emp_Salary], [Emp_Designation], [Emp_DOB], [Emp_Address], [Gender], [valid]) VALUES (4, N'Raj', N'kumar', N'rj@r.com', 10000.0000, N'Sales', CAST(N'1990-04-01 00:00:00.000' AS DateTime), N'Pune', N'M', 1)
GO
INSERT [dbo].[Employee] ([Emp_Id], [Emp_FirstName], [Emp_LastName], [Emp_Email], [Emp_Salary], [Emp_Designation], [Emp_DOB], [Emp_Address], [Gender], [valid]) VALUES (5, N'Deep', N'Sigh', N'd@d.com', 15000.0000, N'HR', CAST(N'1995-02-04 00:00:00.000' AS DateTime), N'Mumbai', N'F', 1)
GO
INSERT [dbo].[Employee] ([Emp_Id], [Emp_FirstName], [Emp_LastName], [Emp_Email], [Emp_Salary], [Emp_Designation], [Emp_DOB], [Emp_Address], [Gender], [valid]) VALUES (6, N'Khaled', N'Ansari', N'k@k.com', 45000.0000, N'Civil Engineer', CAST(N'1992-12-31 00:00:00.000' AS DateTime), N'Aurangabad', N'M', 1)
GO
INSERT [dbo].[Employee] ([Emp_Id], [Emp_FirstName], [Emp_LastName], [Emp_Email], [Emp_Salary], [Emp_Designation], [Emp_DOB], [Emp_Address], [Gender], [valid]) VALUES (7, N'Nazish', N'Nazar', N'nn@nn.com', 25000.0000, N'Electronic Enginner', CAST(N'1997-12-31 00:00:00.000' AS DateTime), N'Mumbai', N'M', 1)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
USE [master]
GO
ALTER DATABASE [EmployeeAppDB] SET  READ_WRITE 
GO
