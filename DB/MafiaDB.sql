USE [master]
GO
/****** Object:  Database [MG]    Script Date: 12/3/2019 3:58:54 PM ******/
CREATE DATABASE [MG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MG', FILENAME = N'c:\Program Files (x86)\MSSQL12.MSSQLSERVER\MSSQL\DATA\MG.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MG_log', FILENAME = N'c:\Program Files (x86)\MSSQL12.MSSQLSERVER\MSSQL\DATA\MG_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MG] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MG] SET ARITHABORT OFF 
GO
ALTER DATABASE [MG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MG] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MG] SET RECOVERY FULL 
GO
ALTER DATABASE [MG] SET  MULTI_USER 
GO
ALTER DATABASE [MG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MG] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MG] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MG]
GO
/****** Object:  Table [dbo].[mg]    Script Date: 12/3/2019 3:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mg](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](50) NOT NULL,
 CONSTRAINT [PK_mg] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/3/2019 3:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Name] [varchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[mg] ON 

INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (1, N'Angel')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (2, N'President')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (3, N'Zing')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (4, N'Liken')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (5, N'Pro-Villager')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (6, N'Docter')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (7, N'Granny')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (8, N'Terrorist')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (9, N'Mason1')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (10, N'Mason2')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (11, N'Mason3')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (12, N'Mafia1')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (13, N'Villager1')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (14, N'Villager2')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (15, N'Villager3')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (16, N'Villager4')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (17, N'Villager5')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (18, N'Villager6')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (19, N'Villager7')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (20, N'Villager8')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (21, N'Villager9')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (22, N'Conductor')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (23, N'Mafia2')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (24, N'Mafia3')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (25, N'Mafia4')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (26, N'Mafia5')
INSERT [dbo].[mg] ([RoleId], [Role]) VALUES (27, N'Mafia6')
SET IDENTITY_INSERT [dbo].[mg] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Ajinkya', 1)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'ARAVIND', 2)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Arbaz', 3)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Ashiq', 4)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Clement', 5)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'DEEBIKA', 6)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Deepalakshmi', 7)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Finu', 8)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Gokulavani', 9)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Imon', 10)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Jane', 11)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Jeniffer', 12)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Jisma', 13)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Karthika', 14)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Keerthana', 15)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Manoj', 16)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Monica', 17)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Nandu', 18)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Pranjal', 19)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Sankari', 20)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Snowvitta', 21)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Abhijeeth', 22)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Sujitha', 23)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'TAMILSELVAN', 24)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Venkatesan', 25)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'Vishali', 26)
INSERT [dbo].[User] ([Name], [Id]) VALUES (N'YOGESH', 27)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[mg]  WITH CHECK ADD  CONSTRAINT [FK_mg_mg] FOREIGN KEY([RoleId])
REFERENCES [dbo].[mg] ([RoleId])
GO
ALTER TABLE [dbo].[mg] CHECK CONSTRAINT [FK_mg_mg]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mg', @level2type=N'CONSTRAINT',@level2name=N'PK_mg'
GO
USE [master]
GO
ALTER DATABASE [MG] SET  READ_WRITE 
GO
