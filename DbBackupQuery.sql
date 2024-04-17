CREATE DATABASE astronoapi;
GO
USE [astronoapi]
GO
/****** Object:  Database [astronoapi]    Script Date: 17.4.2024 г. 22:29:48 ******/
CREATE DATABASE [astronoapi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'astronoapi', FILENAME = N'D:\sqlServer2022\MSSQL16.MSSQLSERVER\MSSQL\DATA\astronoapi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'astronoapi_log', FILENAME = N'D:\sqlServer2022\MSSQL16.MSSQLSERVER\MSSQL\DATA\astronoapi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [astronoapi] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [astronoapi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [astronoapi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [astronoapi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [astronoapi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [astronoapi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [astronoapi] SET ARITHABORT OFF 
GO
ALTER DATABASE [astronoapi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [astronoapi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [astronoapi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [astronoapi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [astronoapi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [astronoapi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [astronoapi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [astronoapi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [astronoapi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [astronoapi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [astronoapi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [astronoapi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [astronoapi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [astronoapi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [astronoapi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [astronoapi] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [astronoapi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [astronoapi] SET RECOVERY FULL 
GO
ALTER DATABASE [astronoapi] SET  MULTI_USER 
GO
ALTER DATABASE [astronoapi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [astronoapi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [astronoapi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [astronoapi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [astronoapi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [astronoapi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'astronoapi', N'ON'
GO
ALTER DATABASE [astronoapi] SET QUERY_STORE = ON
GO
ALTER DATABASE [astronoapi] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [astronoapi]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 17.4.2024 г. 22:29:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 17.4.2024 г. 22:29:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 17.4.2024 г. 22:29:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 17.4.2024 г. 22:29:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 17.4.2024 г. 22:29:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 17.4.2024 г. 22:29:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 17.4.2024 г. 22:29:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 17.4.2024 г. 22:29:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 17.4.2024 г. 22:29:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[TranslatedName] [nvarchar](max) NOT NULL,
	[TranslatedDescription] [nvarchar](max) NOT NULL,
	[IsMeteor] [bit] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Translations]    Script Date: 17.4.2024 г. 22:29:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Translations](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Bg] [nvarchar](max) NOT NULL,
	[En] [nvarchar](max) NOT NULL,
	[Page] [int] NOT NULL,
 CONSTRAINT [PK_Translations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240312131812_InitialMigration', N'7.0.14')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2fc65584-d0e7-477f-bbe8-08c7827d8a32', N'test5', N'TEST5', N'test5@abv.bg', N'TEST5@ABV.BG', 0, N'AQAAAAIAAYagAAAAEBMtvxvwSonnDMDIg5TM7LtraGFNQ6Ckd8ONBbl0tAdKLzv7s/7a55vdIQKNeHjNgw==', N'JBMSVJEJLCBBZ2WSHOR6EKFSMI4OSFWJ', N'8b4e24b2-e383-49c5-90e4-6340493a0c09', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3fbf5e42-b5be-463e-a2bd-e0f5c8dc6308', N'test6', N'TEST6', N'test6@abv.bg', N'TEST6@ABV.BG', 0, N'AQAAAAIAAYagAAAAEIIeTzmu/3gSuttfEEgmowSORSoR1r05j0cpGkzWWh5E7C2eDK6HKpuDiXIa846neg==', N'34OCPRABKVDSB3RDOAB67EN7GP5HCVTC', N'7e0413cb-a960-46a4-89eb-3933a8b3458f', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5af03102-fa9b-4a5b-9dc9-568a35b2d173', N'test', N'TEST', N'test@abv.bg', N'TEST@ABV.BG', 0, N'AQAAAAIAAYagAAAAELVFGMMDgoTk1Hh3uPlC/sGSLm3bi4LZWz+fIt8HvVMkGd6nLm8QaAe7YyaYc7oKcw==', N'XAMVJ7ODZAFKE6NSRST4JUIVGU7CWHM4', N'1dd468cc-b721-4a22-bfe7-b8e4b3a00371', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'680e2ca7-2fa2-4da3-a7cb-ea2470557ba3', N'test8', N'TEST8', N'test8@gmail.com', N'TEST8@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOOOz5QHu2XCjIK8RYxjLZJQXePrI1z5Rr4JhltnC2lpfTHl97SUeZo7oNvGv8mTpA==', N'CBWG65UZGX2CEOBVBB2NDHZYSPWVD5LU', N'fb5643e1-41fb-41c5-9159-addf1fe784dc', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6be20647-e8e4-4eb3-889b-0de9d2ccddcd', N'user5', N'USER5', N'user5@bav.bg', N'USER5@BAV.BG', 0, N'AQAAAAIAAYagAAAAEOgh2A00Zdu5QQhBLl0kgcbUZ8QWuODbRcJNtUQRZmGqDuc8qe69HnFMoiWA0KhB1g==', N'ZD3BNJEYTEC7UNWHFBESHWF6MRLCNTWG', N'a2edb515-4a52-4c88-9400-e8ec87082646', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8a311f14-f169-4966-bbb3-6b03cc405d3d', N'test2', N'TEST2', N'test2@gmail.com', N'TEST2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEI9CmMcol+Q8ew2KHeCRhblZiPSFaiGtd6FLeDPGZiL2Ue4mUqlRjhAbRy6HGnj6Pg==', N'LOIRN4U4Y6PLYZZZZ6PFFAQNSF63CM4Y', N'6ef784e3-a2f1-4c35-b080-37944f23e425', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'962612f6-0f41-4fdb-a2f5-d214daf3ed02', N'test3', N'TEST3', N'test3@abv.bg', N'TEST3@ABV.BG', 0, N'AQAAAAIAAYagAAAAEIYjFjOoN8xtGL9HRrLPm2pT6Xe2Riyg8dZEJtrPCpojNqSTFBe18Ss8Q5pNPZKvRQ==', N'HHPAMFSMICCKVKFVKKZFMY2DSR5KVPJM', N'6dc75ec6-da7f-45ee-8c2c-db108c418769', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9f5bb696-016d-4e6a-a7b3-49aa758795ab', N'test4', N'TEST4', N'test4@abv.bg', N'TEST4@ABV.BG', 0, N'AQAAAAIAAYagAAAAEK7e/9yoMpRrDiD/yUutoNmkX53j4XxQ2++95Wobg1615dCMf8w9r0g0mvshCwzC/g==', N'PRB6OR2BU5ISKGHL7XJIEHTKZV2WJT2E', N'7c21954b-cd50-4e1b-a1d5-5b4e5d364c34', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b47c480c-f18e-4679-8f28-ce81b9ecb01c', N'test10', N'TEST10', N'test10@gmail.com', N'TEST10@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEDmrooGP62MKqqbm8+/WxEuuYnq/PVn0t2SQA5SCMTqfohlZ2JezwfM8d6Gb8UPjKw==', N'LLOTGQDGO6JCMYQIIEQLGN5FKHCHIUY3', N'b6272380-4b82-420e-b85c-8403bdfc4159', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c831de30-d74d-4db8-83ca-41e61cd58587', N'user', N'USER', N'user@gmail.com', N'USER@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEE7MEI5W09qACuhWg/aAz+yNem828gxi1zg/uPvRx6WeyD78RqQaDKfFa8GXY/+D9w==', N'5JCDPIZNQCKXTQS2KX5LW2PWEGAK4OVM', N'e79c0323-c43e-494a-b148-06d22c9623be', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cc089cfb-7d7f-4760-a19c-ed826b587c0f', N'test7', N'TEST7', N'test7@abv.bg', N'TEST7@ABV.BG', 0, N'AQAAAAIAAYagAAAAEA+I6fPCf3xqUqU/O07JEVwopI17dtPBlhQ6827jJXb8Kw405Uj/XgrfrdUOy813lA==', N'X7AATNIMPHTT34AJ3SZFWBUTJMECLTQF', N'a15e89f9-41aa-4fbd-b0b2-e97978211781', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd4bc3941-63bd-41af-adc8-72dbb1df1c84', N'tsveti', N'TSVETI', N'cnikolova95@gmail.com', N'CNIKOLOVA95@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELsdYTdXZn/FCOOURjBan5QaRD+p4UyaWa5e6/625qqi1H3xRjezC52x8kQf4RXfBw==', N'V46V6EL4JBJG4LBGJGWAPDWE4QIAHQPZ', N'f672f4f3-b594-4a16-ab4b-9896dd6af7d1', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f44c0273-3891-4538-98e8-fce10d51b7cd', N'user2', N'USER2', N'user@abv.bg', N'USER@ABV.BG', 0, N'AQAAAAIAAYagAAAAEFEEBAZCzuztkeF+ZgCNkOADtBjmYkiup/RayLrFnmyHv/d0xVoxKUdpR3miKcFELw==', N'M6DFECD2R4XQSPX2DRRQBWCEDQZCDGNK', N'8516b884-8433-45e6-bab6-53352f10e9cb', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Events] ON 
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (7, N'Moon At Perigee', N'On this day, at 04:35 CST, the Moon is at its closest approach to Earth, known as perigee. This makes it appear larger and brighter in our night sky. You can take some incredible photographs if you prepare well in advance. The point on the Moon''s orbit closest to Earth is called the perigee and the point farthest away is the apogee.', N'Луна в перигей', N'На този ден, в 04:35 CST, Луната е в най-близкия си подход към Земята, известен като перигей. Това го прави да изглежда по-голям и по-ярък в нашето нощно небе. Можете да направите няколко невероятни снимки, ако се подготвите добре предварително. Точката от орбитата на Луната, която е най-близо до Земята, се нарича перигей, а най-отдалечената точка е апогей.', 0, CAST(N'2024-01-13T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (9, N'Conjunction of the Moon and Jupiter', N'Jupiter, the largest planet in the solar system, makes a close pass by the Moon, offering a great opportunity to observe and photograph the two together, at 14:40 CST.', N'Съвпад на Луната и Юпитер', N'Юпитер, най-голямата планета в Слънчевата система, преминава близо до Луната, предлагайки страхотна възможност да наблюдавате и снимате двете заедно в 14:40 CST.', 0, CAST(N'2024-01-18T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (10, N'Pleiades And The Moon', N'The Moon makes a close pass to the Pleiades, an open star cluster also known as the Seven Sisters at 07:25 CST. With binoculars or a small telescope, you should be able to see the cluster next to the Moon. The Pleiades are an asterism, or star pattern, as well as an open star cluster with around 1,000 stars. They are around 410 light-years away from Earth and are located in the constellation Taurus.', N'Плеяди и Луната', N'Луната преминава близо до Плеядите, отворен звезден куп, известен също като Седемте сестри в 07:25 CST. С бинокъл или малък телескоп трябва да можете да видите клъстера до Луната. Плеядите са астеризъм или звезден модел, както и отворен звезден куп с около 1000 звезди. Те са на около 410 светлинни години от Земята и се намират в съзвездието Телец.', 0, CAST(N'2024-01-20T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (11, N'Full Moon', N'The Moon will be located on the opposite side of the Earth as the Sun and its face will be will be fully illuminated. This phase occurs at 17:55 UTC. This full moon was known by early Native American tribes as the Wolf Moon because this was the time of year when hungry wolf packs howled outside their camps. This moon has also been know as the Old Moon and the Moon After Yule.', N'Пълнолуние', N'Луната ще бъде разположена на противоположната страна на Земята, тъй като Слънцето и нейното лице ще бъдат напълно осветени. Тази фаза настъпва в 17:55 UTC. Тази пълна луна е била известна от ранните индиански племена като Вълчата луна, защото това е времето от годината, когато гладни глутници вълци вият пред лагерите си. Тази луна също е известна като Старата луна и Луната след Юле.', 0, CAST(N'2024-01-25T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (14, N'Conjunction of the Moon and Venus', N'The Moon and Venus will share the same right ascension, with the Moon passing 5°25'' to the south of Venus.The Moon will
be at mag -9.9, and Venus at mag -4.0, both in the constellation Sagittarius.The pair will be too widely separated to
fit within the field of view of a telescope or pair of binoculars, but will be
visible to the naked eye.', N'Съвпад на Луната и Венера', N'Луната и Венера ще споделят едно и също право изкачване, като Луната ще премине 5°25'' на юг от Венера. Луната ще
да бъде с величина -9,9, а Венера с величина -4,0, и двете в съзвездието Стрелец. Двойката ще бъде твърде широко раздалечена, за
се вписват в зрителното поле на телескоп или чифт бинокъл, но ще бъдат
видими с просто око.', 0, CAST(N'2024-02-07T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-08T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (17, N'New Moon', N'The Moon will located on the same side of the Earth as the Sun and will not be visible in the night sky. This phase occurs at 23:00 UTC. This is the best time of the month to observe faint objects such as galaxies and star clusters because there is no moonlight to interfere.', N'Новолуние', N'Луната ще бъде разположена от същата страна на Земята като Слънцето и няма да се вижда на нощното небе. Тази фаза настъпва в 23:00 UTC. Това е най-доброто време от месеца за наблюдение на слаби обекти като галактики и звездни купове, защото няма лунна светлина, която да пречи.', 0, CAST(N'2024-02-09T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (19, N'Comet C/2021 S3 passes perihelion', N'Comet C/2021 S3 (PANSTARRS) will make its closest approach to the Sun on 14 February, at a distance of 1.32 AU.The comet will be visible from 13 February (Visible from 06:06 until 06:17 Highest at 06:17, 23° above SE horizon) to 15 February (Visible from 05:53 until 06:15 Highest at 06:15, 24° above SE horizon)', N'Кометата C/2021 S3 преминава през перихелий', N'Кометата C/2021 S3 (PANSTARRS) ще се доближи най-близо до Слънцето на 14 февруари на разстояние 1,32 AU. Кометата ще бъде видима от 13 февруари (Вижда се от 06:06 до 06:17 Най-високо в 06:17 , 23° над югоизточен хоризонт) до 15 февруари (Виден от 05:53 до 06:15 най-висок в 06:15, 24° над югоизточен хоризонт)', 0, CAST(N'2024-02-13T06:06:00.0000000' AS DateTime2), CAST(N'2024-02-15T06:15:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (21, N'Conjunction of the Moon and Jupiter', N'On February 15, the 37.5%-illuminated Moon(mag -11.6) will be close to Jupiter (mag -2.3). Both objects will be in the constellation Aries. Observe them with the naked eye or through a pair of binoculars.', N'Съвпад на Луната и Юпитер', N'На 15 февруари Луната с 37,5% осветеност (величина -11,6) ще бъде близо до Юпитер (величина -2,3). И двата обекта ще бъдат в съзвездието Овен. Наблюдавайте ги с просто око или през бинокъл.', 0, CAST(N'2024-02-15T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (23, N'Full Moon', N'The Moon will be located on the opposite side of the Earth as the Sun and its face will be will be fully illuminated. This phase occurs at 12:32 UTC. This full moon was known by early Native American tribes as the Snow Moon because the heaviest snows usually fell during this time of the year. Since hunting is difficult, this moon has also been known by some tribes as the Hunger Moon, since the harsh weather made hunting difficult.', N'Пълнолуние', N'Луната ще бъде разположена на противоположната страна на Земята, тъй като Слънцето и нейното лице ще бъдат напълно осветени. Тази фаза настъпва в 12:32 UTC. Тази пълна луна е била известна от ранните индиански племена като Снежна луна, защото най-тежките снегове обикновено падат през това време на годината. Тъй като ловът е труден, тази луна също е известна от някои племена като Луната на глада, тъй като суровото време затруднява лова.', 0, CAST(N'2024-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (26, N'Moon near Venus', N'On March 8, the 7.4%-illuminated Moon (mag -9.4) will be close to Venus (mag. -3.8). Both objects will be in the constellation Capricornus.The pair will be too widely separated to fit within the field of view of a telescope, but will be visible to the naked eye or through a pair of binoculars.', N'Луна близо до Венера', N'На 8 март осветената от 7,4% Луна (величина -9.4) ще бъде близо до Венера (величина -3.8). И двата обекта ще бъдат в съзвездието Козирог. Двойката ще бъде твърде широко раздалечена, за да се побере в зрителното поле на телескоп, но ще бъде видима с невъоръжено око или през чифт бинокъл.', 0, CAST(N'2024-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2024-03-09T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (28, N'New Moon', N'The Moon will located on the same side of the Earth as the Sun and will not be visible in the night sky. This phase occurs at 09:02 UTC. This is the best time of the month to observe faint objects such as galaxies and star clusters because there is no moonlight to interfere.', N'Новолуние', N'Луната ще бъде разположена от същата страна на Земята като Слънцето и няма да се вижда на нощното небе. Тази фаза настъпва в 09:02 UTC. Това е най-доброто време от месеца за наблюдение на слаби обекти като галактики и звездни купове, защото няма лунна светлина, която да пречи.', 0, CAST(N'2024-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2024-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (32, N'Full Moon', N'The Moon will be located on the opposite side of the Earth as the Sun and its face will be will be fully illuminated. This phase occurs at 07:02 UTC. This full moon was known by early Native American tribes as the Worm Moon because this was the time of year when the ground would begin to soften and the earthworms would reappear. This moon has also been known as the Crow Moon, the Crust Moon, the Sap Moon, and the Lenten Moon.', N'Пълнолуние', N'Луната ще бъде разположена на противоположната страна на Земята, тъй като Слънцето и нейното лице ще бъдат напълно осветени. Тази фаза настъпва в 07:02 UTC. Тази пълна луна е била известна от ранните индиански племена като Луната на червеите, защото това е времето от годината, когато земята ще започне да се размеква и земните червеи ще се появят отново. Тази луна е известна също като Луната на враната, Луната на кората, Луната на сока и Луната на постите.', 0, CAST(N'2024-03-25T00:00:00.0000000' AS DateTime2), CAST(N'2024-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (34, N'Penumbral Lunar Eclipse', N' A penumbral lunar eclipse occurs when the Moon passes through the Earth''s partial shadow, or penumbra. During this type of eclipse the Moon will darken slightly but not completely. The eclipse will be visible throughout all North America, Mexico, Central America, and South America.', N'Полусенково лунно затъмнение', N'Лунно затъмнение в полусянка се случва, когато Луната преминава през частичната сянка на Земята или полусянката. По време на този тип затъмнение Луната ще потъмнее леко, но не напълно. Затъмнението ще бъде видимо в цяла Северна Америка, Мексико, Централна Америка и Южна Америка.', 0, CAST(N'2024-03-25T00:00:00.0000000' AS DateTime2), CAST(N'2024-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (36, N'
Conjunction of the Moon and Mars', N'On April 6, the 10%-illuminated Moon (mag -10.3) will be close to Mars (mag 1.2). Both objects will be in the constellation Aries.The pair will be too widely separated to fit within the field of view of a telescope, but will be visible to the naked eye or through a pair of binoculars.

', N'Съвпад на Луната и Марс', N'На 6 април Луната с 10% осветеност (величина -10.3) ще бъде близо до Марс (величина 1.2). И двата обекта ще бъдат в съзвездието Овен. Двойката ще бъде твърде широко раздалечена, за да се побере в зрителното поле на телескоп, но ще бъде видима с невъоръжено око или през чифт бинокъл.', 0, CAST(N'2024-04-06T00:00:00.0000000' AS DateTime2), CAST(N'2024-04-07T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (38, N'New Moon', N'The Moon will located on the same side of the Earth as the Sun and will not be visible in the night sky. This phase occurs at 18:22 UTC. This is the best time of the month to observe faint objects such as galaxies and star clusters because there is no moonlight to interfere.', N'Новолуние', N'Луната ще бъде разположена от същата страна на Земята като Слънцето и няма да се вижда на нощното небе. Тази фаза настъпва в 18:22 UTC. Това е най-доброто време от месеца за наблюдение на слаби обекти като галактики и звездни купове, защото няма лунна светлина, която да пречи.', 0, CAST(N'2024-04-08T00:00:00.0000000' AS DateTime2), CAST(N'2024-04-09T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (41, N'Total Solar Eclipse', N'A total solar eclipse occurs when the moon completely blocks the Sun, revealing the Sun''s beautiful outer atmosphere known as the corona. This is a rare, once-in-a-lifetime event for viewers in the United States. The last total solar eclipse visible in the continental United States occurred in 2017 and the next one will not take place until 2045. The path of totality will begin in the Pacific Ocean and move across parts of Mexico and the eastern United States and Nova Scotia. The total eclipse will be visible in parts of Texas, Arkansas, Missouri, Illinois, Indiana, Kentucky, Ohio, Pennsylvania, New York, Vermont, New Hampshire, and Maine. ', N'Пълно слънчево затъмнение', N'Пълно слънчево затъмнение настъпва, когато луната напълно блокира Слънцето, разкривайки красивата външна атмосфера на Слънцето, известна като корона. Това е рядко събитие, което се случва веднъж в живота на зрителите в Съединените щати. Последното пълно слънчево затъмнение, видимо в континенталните Съединени щати, се случи през 2017 г., а следващото няма да се случи до 2045 г. Пътят на пълното затъмнение ще започне в Тихия океан и ще премине през части от Мексико и източните Съединени щати и Нова Скотия. Пълното затъмнение ще бъде видимо в части от Тексас, Арканзас, Мисури, Илинойс, Индиана, Кентъки, Охайо, Пенсилвания, Ню Йорк, Върмонт, Ню Хемпшир и Мейн.', 0, CAST(N'2024-04-08T15:43:00.0000000' AS DateTime2), CAST(N'2024-04-08T20:52:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (44, N'Conjunction of the Moon and Jupiter', N'The Moon and Jupiter will share the same right ascension, with the Moon passing 3°59'' to the north of Jupiter. The Moon will be 2 days old.The Moon will be at mag -9.8, and Jupiter at mag -2.0, both in the constellation Aries.The pair will be too widely separated to fit within the field of view of a telescope, but will be visible to the naked eye or through a pair of binoculars.', N'Съвпад на Луната и Юпитер', N'Луната и Юпитер ще споделят едно и също право изкачване, като Луната преминава 3°59'' на север от Юпитер.Луната ще бъде при величина -9,8, а Юпитер при величина -2,0, и двете в съзвездието Овен. Двойката ще бъде твърде широко раздалечена, за да се побере в зрителното поле на телескоп, но ще да се вижда с невъоръжено око или чрез бинокъл.', 0, CAST(N'2024-04-11T00:00:00.0000000' AS DateTime2), CAST(N'2024-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (46, N'Comet 12P/Pons-Brooks', N'On April 21, 2024, comet 12P/Pons-Brooks will reach its perihelion, the closest point to the Sun. By that time, it is expected to become visible to the naked eye (its magnitude will rise to 4.2). Soon after the perihelion, the comet will disappear from the Northern Hemisphere’s night sky. In the Southern Hemisphere, it will remain visible until the end of the year.
', N'Кометата 12P/Понс-Брукс', N'На 21 април 2024 г. кометата 12P/Понс-Брукс ще достигне своя перихелий, най-близката точка до Слънцето. Дотогава се очаква да стане видим с невъоръжено око (величината му ще нарасне до 4,2). Скоро след перихелия кометата ще изчезне от нощното небе на Северното полукълбо. В южното полукълбо ще остане видим до края на годината.', 0, CAST(N'2024-03-31T00:00:00.0000000' AS DateTime2), CAST(N'2024-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (48, N'Lyrids Meteor Shower. ', N'The Lyrids is an average shower, usually producing about 20 meteors per hour at its peak. It is produced by dust particles left behind by comet C/1861 G1 Thatcher, which was discovered in 1861. The shower runs annually from April 16-25. It peaks this year on the night of the night of the 22nd and morning of the 23rd. These meteors can sometimes produce bright dust trails that last for several seconds. Unfortunately the glare of the full moon will block out all but the brightest meteors this year. But if you are patient, you may still be able to catch a few good ones. Best viewing will be from a dark location after midnight. Meteors will radiate from the constellation Lyra, but can appear anywhere in the sky.', N'Метеоритен дъжд Лириди.', N'Лиридите са среден поток, който обикновено произвежда около 20 метеора на час в своя пик. Произвежда се от прахови частици, оставени от кометата C/1861 G1 Thatcher, открита през 1861 г. Поливът тече ежегодно от 16 до 25 април. Той достига своя връх тази година в нощта на 22-ри и сутринта на 23-ти. Тези метеори понякога могат да произведат ярки следи от прах, които продължават няколко секунди. За съжаление блясъкът на пълната луна ще блокира всички, освен най-ярките метеори тази година. Но ако сте търпеливи, все пак може да успеете да хванете няколко добри. Най-доброто гледане ще бъде от тъмно място след полунощ. Метеорите ще излъчват от съзвездието Лира, но могат да се появят навсякъде в небето.', 1, CAST(N'2024-04-16T00:00:00.0000000' AS DateTime2), CAST(N'2024-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (50, N'Full Moon', N'The Moon will be located on the opposite side of the Earth as the Sun and its face will be will be fully illuminated. This phase occurs at 23:50 UTC. This full moon was known by early Native American tribes as the Pink Moon because it marked the appearance of the moss pink, or wild ground phlox, which is one of the first spring flowers. This moon has also been known as the Sprouting Grass Moon, the Growing Moon, and the Egg Moon. Many coastal tribes called it the Fish Moon because this was the time that the shad swam upstream to spawn.', N'Пълнолуние', N'Луната ще бъде разположена на противоположната страна на Земята, тъй като Слънцето и нейното лице ще бъдат напълно осветени. Тази фаза настъпва в 23:50 UTC. Тази пълна луна е била известна от ранните индиански племена като Розовата луна, защото бележи появата на розовия мъх или дивия земен флокс, който е едно от първите пролетни цветя. Тази луна е известна още като Луната на поникнала трева, Луната на растежа и Луната на яйцето. Много крайбрежни племена го наричали Рибната луна, защото това е било времето, когато шадът плува нагоре по течението, за да хвърля хайвера си.', 0, CAST(N'2024-04-23T00:00:00.0000000' AS DateTime2), CAST(N'2024-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (52, N'Eta Aquarids Meteor Shower.', N'The Eta Aquarids is an above average shower, capable of producing up to 60 meteors per hour at its peak. Most of the activity is seen in the Southern Hemisphere. In the Northern Hemisphere, the rate can reach about 30 meteors per hour. It is produced by dust particles left behind by comet Halley, which has been observed since ancient times. The shower runs annually from April 19 to May 28. It peaks this year on the night of May 6 and the morning of the May 7. The nearly new moon means dark skies for what should be an excellent show this year. Best viewing will be from a dark location after midnight. Meteors will radiate from the constellation Aquarius, but can appear anywhere in the sky.', N'Метеоритен дъжд Ета Аквариди.', N'Eta Aquarids е дъжд над средното ниво, способен да произвежда до 60 метеора на час в своя пик. По-голямата част от активността се наблюдава в южното полукълбо. В Северното полукълбо скоростта може да достигне около 30 метеора на час. Произвежда се от прахови частици, оставени от кометата Халей, която се наблюдава от древни времена. Дъждът тече ежегодно от 19 април до 28 май. Тази година достига своя връх в нощта на 6 май и сутринта на 7 май. Почти новолунието означава тъмно небе за това, което трябва да бъде отлично шоу тази година. Най-доброто гледане ще бъде от тъмно място след полунощ. Метеорите ще излъчват от съзвездието Водолей, но могат да се появят навсякъде в небето.', 1, CAST(N'2024-05-06T00:00:00.0000000' AS DateTime2), CAST(N'2024-05-07T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (54, N'New Moon', N'The Moon will located on the same side of the Earth as the Sun and will not be visible in the night sky. This phase occurs at 03:23 UTC. This is the best time of the month to observe faint objects such as galaxies and star clusters because there is no moonlight to interfere.', N'Новолуние', N'Луната ще бъде разположена от същата страна на Земята като Слънцето и няма да се вижда на нощното небе. Тази фаза настъпва в 03:23 UTC. Това е най-доброто време от месеца за наблюдение на слаби обекти като галактики и звездни купове, защото няма лунна светлина, която да пречи.', 0, CAST(N'2024-05-08T00:00:00.0000000' AS DateTime2), CAST(N'2024-05-09T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (56, N'Full Moon', N'The Moon will be located on the opposite side of the Earth as the Sun and its face will be will be fully illuminated. This phase occurs at 13:55 UTC. This full moon was known by early Native American tribes as the Flower Moon because this was the time of year when spring flowers appeared in abundance. This moon has also been known as the Corn Planting Moon and the Milk Moon.', N'Пълнолуние', N'Луната ще бъде разположена на противоположната страна на Земята, тъй като Слънцето и нейното лице ще бъдат напълно осветени. Тази фаза настъпва в 13:55 UTC. Това пълнолуние е било известно от ранните индиански племена като Луната на цветята, защото това е времето от годината, когато пролетните цветя се появяват в изобилие. Тази луна е известна още като Луната за засаждане на царевица и Луната на млякото.', 0, CAST(N'2024-05-23T00:00:00.0000000' AS DateTime2), CAST(N'2024-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (58, N'Conjunction of the Moon and Saturn', N'The Moon and Saturn will share the same right ascension, with the Moon passing 22'' to the south of Saturn. The Moon will be 23 days old.
At around the same time, the two objects will also make a close approach, technically called an appulse.The pair will be visible in the dawn sky, rising at 00:30 UTC.The Moon will be at mag -11.8, and Saturn at mag 0.9, both in the constellation Aquarius.The pair will be close enough to fit within the field of view of a telescope, but will also be visible to the naked eye or through a pair of binoculars.', N'Съвпад на Луната и Сатурн', N'Луната и Сатурн ще споделят едно и също право изкачване, като Луната ще премине 22'' на юг от Сатурн. Луната ще бъде на 23 дни.
Приблизително по същото време двата обекта също ще се сближат, технически наречено аппулс. Двойката ще се вижда в небето на зазоряване, изгрявайки в 00:30 UTC. Луната ще бъде на величина -11,8, а Сатурн на величина 0.9, и двете в съзвездието Водолей. Двойката ще бъде достатъчно близо, за да се побере в зрителното поле на телескоп, но също така ще бъде видима с просто око или през чифт бинокъл.', 0, CAST(N'2024-05-31T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (61, N'Conjunction of the Moon and Mars', N'The Moon and Mars will share the same right ascension, with the Moon passing 2°24'' to the north of Mars. The Moon will be 25 days old.
At around the same time, the two objects will also make a close approach, technically called an appulse.The pair will be difficult to observe as they will appear no higher than 14° above the horizon. They will be visible in the dawn sky, rising at 01:36 UTC.The Moon will be at mag -10.7, and Mars at mag 1.0, both in the constellation Pisces.The pair will be too widely separated to fit within the field of view of a telescope, but will be visible to the naked eye or through a pair of binoculars.', N'Съвпад на Луната и Марс', N'Луната и Марс ще споделят едно и също право изкачване, като Луната ще премине 2°24'' на север от Марс. Луната ще бъде на 25 дни.
Приблизително по същото време двата обекта също ще се приближат (технически наречен аппулс). Двойката ще бъде трудна за наблюдение, тъй като няма да изглежда по-висока от 14° над хоризонта. Те ще бъдат видими в небето на зазоряване, изгрявайки в 01:36 UTC. Луната ще бъде при величина -10,7, а Марс при величина 1,0, и двете в съзвездието Риби. Двойката ще бъде твърде широко раздалечена, за да се побере в полето на изглед на телескоп, но ще се вижда с просто око или през бинокъл.', 0, CAST(N'2024-06-03T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-04T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (62, N'η-Lyrid Meteor Shower', N'The η-Lyrid meteor shower will be active from 3 May to 14 May, producing its peak rate of meteors around 8 May.Over this period, there will be a chance of seeing η-Lyrid meteors whenever the shower''s radiant point – in the constellation Lyra – is above the horizon.The radiant point is above the horizon all night, which means that the shower will be active throughout the hours of darkness.The radiant point culminates (is highest in the sky) after dawn – at around 03:00 UTC – and so the shower is likely produce its best displays shortly before dawn, when its radiant point is highest.The shower is expected to reach peak activity at around 12:00 UTC on 8 May 2024, and so the best displays might be seen before dawn on 8 May and after dusk on 8 May.', N'η-Лириден Метеоритен дъжд', N'Метеорният поток η-Лириди ще бъде активен от 3 май до 14 май, произвеждайки своя пиков процент от метеори около 8 май. През този период ще има шанс да се видят метеори η-Лириди винаги, когато радиантната точка на потока – в съзвездието Лира – е над хоризонта. Радиантната точка е над хоризонта през цялата нощ, което означава, че дъждът ще бъде активен през часовете на тъмнината. Радиантната точка кулминира (е най-високо в небето) след зазоряване – около 03:00 UTC – така че дъждът вероятно ще покаже най-добрите си изображения малко преди зазоряване, когато неговата точка на излъчване е най-висока. Очаква се дъждът да достигне пикова активност около 12:00 UTC на 8 май 2024 г. и така може да се видят най-добрите прояви преди разсъмване на 8 май и след здрач на 8 май', 1, CAST(N'2024-05-03T00:00:00.0000000' AS DateTime2), CAST(N'2024-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (64, N'New Moon', N'The Moon will located on the same side of the Earth as the Sun and will not be visible in the night sky. This phase occurs at 12:39 UTC. This is the best time of the month to observe faint objects such as galaxies and star clusters because there is no moonlight to interfere.', N'Новолуние', N'Луната ще бъде разположена от същата страна на Земята като Слънцето и няма да се вижда на нощното небе. Тази фаза настъпва в 12:39 UTC. Това е най-доброто време от месеца за наблюдение на слаби обекти като галактики и звездни купове, защото няма лунна светлина, която да пречи.', 0, CAST(N'2024-06-06T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-07T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (66, N'Daytime Arietid Meteor Shower', N'The Daytime Arietid meteor shower will be active from 14 April to 24 June, producing its peak rate of meteors around 10 June.Over this period, there will be a chance of seeing Daytime Arietid meteors whenever the shower''s radiant point – in the constellation Aries – is above the horizon, with the number of visible meteors increasing the higher the radiant point is in the sky.The shower will not be visible before around 01:25 UTC each night, when its radiant point rises above the eastern horizon. It will then remain active until dawn breaks around 03:10 UTC.The radiant point culminates (is highest in the sky) after dawn – at around 09:00 UTC – and so the shower is likely produce its best displays shortly before dawn, when its radiant point is highest.The shower is expected to reach peak activity at around 09:00 UTC on 10 June 2024, and so the best meteors might be seen before dawn on 10 June and after the radiant rises on 10 June.', N'Метеоритен дъжд Аретид през деня', N'Дневният метеорен поток Аретид ще бъде активен от 14 април до 24 юни, произвеждайки своя пиков брой метеори около 10 юни. През този период ще има шанс да се видят дневни метеори Аретид винаги, когато радиантната точка на потока – в съзвездието Овен – е над хоризонта, като броят на видимите метеори нараства, колкото по-високо е радиантната точка в небето. Потокът няма да се вижда преди 01:25 UTC всяка нощ, когато радиантната му точка се издига над източния хоризонт. След това ще остане активен, докато се зазори около 03:10 UTC. Радиантната точка кулминира (е най-високата в небето) след зазоряване – около 09:00 UTC – и така дъждът вероятно ще даде най-доброто си представяне малко преди зазоряване, когато неговата радиантна точка е най-висока. Очаква се дъждът да достигне пикова активност около 09:00 UTC на 10 юни 2024 г. и така най-добрите метеорити може да се видят преди зазоряване на 10 юни и след издигането на радианта на 10 юни.', 1, CAST(N'2024-06-10T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (67, N'Full Moon', N'The Moon will be located on the opposite side of the Earth as the Sun and its face will be will be fully illuminated. This phase occurs at 01:09 UTC. This full moon was known by early Native American tribes as the Strawberry Moon because it signaled the time of year to gather ripening fruit. It also coincides with the peak of the strawberry harvesting season. This moon has also been known as the Rose Moon and the Honey Moon.', N'Пълнолуние', N'Луната ще бъде разположена на противоположната страна на Земята, тъй като Слънцето и нейното лице ще бъдат напълно осветени. Тази фаза настъпва в 01:09 UTC. Тази пълна луна е била известна от ранните индиански племена като Ягодова луна, защото е сигнализирала за времето от годината за събиране на зреещи плодове. Съвпада и с пика на сезона за беритба на ягоди. Тази луна е известна още като Розовата луна и Медената луна.', 0, CAST(N'2024-06-22T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Events] ([Id], [Name], [Description], [TranslatedName], [TranslatedDescription], [IsMeteor], [StartDate], [EndDate]) VALUES (68, N'June Bootid Meteor Shower', N'The June Bootid meteor shower will be active from 22 June to 2 July, producing its peak rate of meteors around 27 June.
Over this period, there will be a chance of seeing June Bootid meteors whenever the shower''s radiant point – in the constellation Bootes – is above the horizon, with the number of visible meteors increasing the higher the radiant point is in the sky.The radiant point is circumpolar, which means it is always above the horizon and the shower will be active throughout the night.The radiant point culminates (is highest in the sky) before nightfall – at around 20:00 UTC – and so the shower is likely produce its best displays soon after dusk, when the radiant point is still as high as possible.The shower is expected to reach peak activity at around 06:00 UTC on 27 June 2024, and so the best meteors might be seen before dawn on 27 June.', N'Юнски Метеоритен дъжд Бутид', N'Юнският метеорен поток Bootid ще бъде активен от 22 юни до 2 юли, като ще генерира своя пиков процент от метеори около 27 юни.
През този период ще има шанс да се видят юнски метеори Bootid, когато радиантната точка на потока – в съзвездието Воловар – е над хоризонта, като броят на видимите метеори нараства, колкото по-високо е радиантната точка в небето.Радиантната точка е циркумполярна, което означава, че винаги е над хоризонта и дъждът ще бъде активен през цялата нощ. Радиантната точка кулминира (е най-високо в небето) преди падането на нощта – около 20:00 UTC – и така дъждът вероятно ще предизвика своята най-добрите показвания скоро след здрач, когато радиантната точка е все още възможно най-висока. Потокът се очаква да достигне пикова активност около 06:00 UTC на 27 юни 2024 г. и така най-добрите метеори може да се видят преди зазоряване на 27 юни.', 1, CAST(N'2024-06-23T00:00:00.0000000' AS DateTime2), CAST(N'2024-07-02T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Events] OFF
GO
SET IDENTITY_INSERT [dbo].[Translations] ON 
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (1, N'Заинтересован ли си от астрономията?', N'Are you interested in astronomy?', 1)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (3, N'Искаш ли да научиш нови неща за звездните събития или за звездите и съзвездията?', N'Do you want to learn new things about celestial events or stars and constelations?', 1)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (4, N'Тогава Астроно е перфектното място за теб! Просто избери от категориите отдолу и изследвай нови вселени и учи нови неща.', N'Then Astrono is the perfect place for you! Just choose from the categories below and explore a whole new univerce and learn new things.', 1)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (5, N'Ако искаш да научиш повече за небесни събития като пълнолуние, новолуние, лунни затъмнения, слънчеви затъмнения, съвпади на луната с планети, метеорните дъждове или комети и да разбереш кога ще се случат, тогава провери страницата.', N'If you want to know more about celestial events such as full moon, new moon, lunar eclipses, solar eclipses, conjunctions of the moon with planets, meteor showers or comets and find out when they will happen, then check the page.', 1)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (6, N'Ако звездите грабват вниманието ти и искаш да научиш за звездите и съзвездията, тогава тази страница е за теб.', N'If stars grab your attention and you want to learn about the stars and the constellations then this page is for you.', 1)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (7, N'Ако искаш да видиш различни лунни карти или да научиш за образуването на луната, лунните фази или за различните видове затъмнения, провери тази страница.', N'If you want to see different moon maps, or to learn about the moon formation, moon phases or about the different types of eclipses, then chek this page.', 1)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (8, N'СЪБИТИЯ', N'EVENTS', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (9, N'ЗВЕЗДИ И СЪЗВЕЗДИЯ', N'STARS AND CONSTELLATIONS', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (10, N'ЛУНА', N'MOON', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (11, N'ЗА МЕН', N'ABOUT', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (12, N'Основни знания за Звездите', N'Star Basics', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (14, N'Видове Звезди', N'Types Stars', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (15, N'Множество звездни системи', N'Multiple star systems', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (17, N'Съзвездия', N'Constellations', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (19, N'Съзвездия по сезони', N'Constellations by seasons', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (20, N'Интересувате ли се от предстоящите небесни събития?', N'Are you interested in upcoming selectial events?
', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (21, N'Ако е така скролни надолу за да научиш кои събития предстоят и научи повече за тях.', N'If so, then scroll down to learn what events are coming and information about them.', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (23, N'Искаш ли да научиш за луната?', N'Do you want to learn about the moon?', 3)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (24, N'Ако искаш да научиш за образуването на луната, лунните фази или за различните видове затъмнения, тогава провери тази страница.', N'If you want to learn about the moon formation, moon phases or about the different types of eclipses, then check this page.', 3)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (25, N'ЛУННИ КАРТИ', N'MOON MAPS
', 3)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (26, N'ФОРМИРАНЕ НА ЛУНАТА', N'MOON FORMATION', 3)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (27, N'ЛУННИ ФАЗИ', N'MOON PHASES', 3)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (28, N'ЗАТЪМНЕНИЯ', N'ECLIPSES', 3)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (29, N'ЦИФРОВ МОДЕЛ НА РЕЛЕФА', N'DIGITAL ELEVATION MODEL', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (30, N'Топографска карта на Луната, <br> създадена от Лунния <br> разузнавателен орбитър.', N'Topographic​ ​Moon​ ​map​ ​created​ ​by <br> ​ ​Lunar​ ​Reconnaissance​ ​Orbiter.', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (31, N'Надморска височина (m)', N'Elev (m)', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (32, N'Научи повече &gt;', N'Learn more &gt;', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (33, N'ГРАВИТАЦИОННА КАРТА', N'GRAVITY MAP', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (34, N'Глобално изследване на лунната <br> гравитация, създадено от <br>космическия апарат близнак GRAIL.', N'Global​ ​lunar​ ​gravity​ ​survey​ ​created <br>​ ​by​ ​the​ ​twin​ ​GRAIL​ ​spacecraft.', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (35, N'НАЛИЧИЕ НА ВОДОРД', N'HYDROGEN​ ​ABUNDANCE', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (36, N'Наличието на водород може дa <br> показва наличието на вода.', N'The​ ​presence​ ​of​ ​hydrogen​ ​may <br>​ ​indicate​ ​the​ ​presence​ ​of​ ​water.', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (37, N'PPM ПО ТЕГЛО', N'PPM BY WEIGHT', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (38, N'ГРАПАВОСТ НА ПОВЪРХНОСТТА', N'SURFACE​ ​ROUGHNESS', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (39, N'Грапавите повърхности показват​ <br> ​наличие на​ ​големи скали.', N'Rough​ ​surfaces​ ​indicate​ ​the <br>​ ​presence​ ​of​ ​large ​rocks.', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (40, N'Как се е образувала Луната?', N'How did the Moon form?', 5)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (41, N'Луната е родена от разрушение. Няколко теории за образуването на нашата Луна се борят за доминиране, но почти всички споделят обща точка: близо до времето на формиране на Слънчевата система, преди около 4,5 милиарда години, нещо ― може би един обект с размера на Марс, може би поредица от обекти ― се блъсна в младата Земя и изхвърли достатъчно разтопени и изпарени отломки в космоса, за да създаде Луната.', N'Earth’s Moon was born out of destruction. Several theories about our Moon’s formation vie for dominance, but almost all share that point in common: near the time of the solar system’s formation, about 4.5 billion years ago, something ― perhaps a single object the size of Mars, perhaps a series of objects ― crashed into the young Earth and flung enough molten and vaporized debris into space to create the Moon.', 5)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (42, N'Смята се, че Луната се е образувала при огромен сблъсък. Масивен обект – наречен Тея на името на митологичния гръцки титан, който е бил майката на Селена, богинята на Луната – се е разбил в Земята, изхвърляйки материал в космоса, който се превърна в Луната. Кредит: НАСА', N'Earth’s Moon is thought to have formed in a tremendous collision. A massive object ― named Theia after the mythological Greek Titan who was the mother of Selene, goddess of the Moon ― smashed into Earth, flinging material into space that became the Moon. Credit: NASA', 5)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (43, N'Лунна „Археология“', N'Lunar “Archaeology”', 5)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (44, N'Въпреки че и Земята, и Луната са произлезли от този древен сблъсък – и Земята със сигурност е по-лесно достъпна – изучаването на Луната ни дава най-добрия шанс да разберем какво се е случило преди всички тези милиарди години. Активните геоложки процеси на Земята, от тектониката на плочите до ерозията, изтриват доказателствата за образуването. Освен събития като сблъсъци, голяма част от повърхността на Луната се променя в много по-бавна времева скала. Подобно на детективи на местопрестъпление, учените използват улики, запазени на лунната повърхност, за да сглобят историята на Луната. Всяко подобрение на теорията за гигантския удар или нова теория ще трябва да обясни какво наблюдаваме на Луната днес.', N'Though Earth and Moon both came from that ancient collision ― and Earth is certainly within easier reach ― studying the Moon gives us our best chance of understanding what happened all those billions of years ago. Earth’s active geological processes, from plate tectonics to erosion, erase the evidence of formation. Aside from events like impacts, much of the Moon’s surface changes on a vastly slower timescale. Like detectives at a crime scene, scientists use clues preserved on the lunar surface to piece together the Moon’s history. Any improvements to the giant impact theory or a new theory would need to explain what we observe of the Moon today.', 5)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (46, N'Една от странностите е ниското съдържание на желязо на Луната в сравнение със Земята. Богатото на желязо ядро ​​на Земята представлява около 30 процента от нейната маса, но ядрото на Луната е само около 1,6-1,8 процента от общата й маса. Едно възможно обяснение е, че енергията от сблъсъка със Земята, която е формирала Луната, е изпарила по-леки материали, изхвърляйки ги в космоса, и е оставила след себе си по-тежки елементи – като желязо, което се изпарява само при изключително високи температури – да потънат в ядрото на Земята. Жизнеспособната теория за образуването на луната също трябва да обясни къде е Луната сега спрямо Земята и скоростта и наклона на нейната орбита. Повърхностните рефлектори, поставени на Луната по време на Аполо, показват, че Луната се отдалечава от Земята със скорост около инч и половина на година.', N'One of the oddities is the Moon’s low iron content as compared with Earth’s. Earth’s iron-rich core accounts for around 30 percent of its mass, but the core of the Moon is only about 1.6-1.8 percent of its total mass. One possible explanation is that the energy of the impact with Earth that formed the Moon vaporized lighter materials, casting them into space, and left behind heavier elements ― such as iron, which vaporizes only at extremely high temperatures ― to sink into Earth’s core.Any viable theory of lunar formation also has to explain where the Moon is now in relation to Earth and the speed and inclination of its orbit. Surface reflectors placed on the Moon during Apollo show that the Moon moves away from Earth at the rate of about an inch and a half per year.', 5)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (47, N'Тази диаграма показва напречно сечение на вътрешността на Луната по време на нейната ранна история, включително силикатната мантия и малко метално ядро. Лунната мантия е с ниско съдържание на елементи 14 цинк, калай, кадмий, индий и тулий, вероятно защото те никога не са се кондензирали отново от газова форма след сблъсъка, който е създал Луната. (Илюстрацията е предоставена с любезното съдействие на NASA/JPL-Caltech).', N'This diagram shows a cross-section of the Moon’s interior during its early history, including the silicate mantle and a small metallic core. The lunar mantle is low in the elements 14 zinc, tin, cadmium, indium, and thulium, possibly because they never recondensed from gas form after the collision that created the Moon. (Illustration courtesy of NASA/JPL-Caltech).', 5)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (48, N'Това показва, че първоначално Луната се е формирала много по-близо до нашата планета и следователно скоростта на въртене на ранната Земя е била много по-висока, отколкото е днес. Компютърните модели, създадени от учени, за да тестват и анализират теориите за формирането на Луната, трябва да покажат как масивен сблъсък може да доведе до съществуващите орбити и ротация на Луната и Земята в продължение на милиарди години, когато се съчетае с типичните гравитационни взаимодействия между двете тела. (Дори днес разстоянието между Земята и Луната и продължителността на един ден на Земята продължават да растат поради въздействието на земните приливи и отливи.)', N'This indicates that the Moon initially formed much closer to our planet, and, therefore, that the early Earth’s spin rate was much higher than it is today. Computer models created by scientists to test and analyze Moon formation theories must show how a massive collision can produce the existing orbits and rotation of Moon and Earth over billions of years when paired with the typical gravitational interactions between the two bodies. (Even today, the distance between the Earth and Moon, and the length of a day on Earth, continues to grow due to the effects of Earth’s tides.)', 5)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (49, N'Близката и далечната страна на Луната. Кредит: НАСА LRO / Джатан Мехта', N'The Moon''s near side and far side. Credit: NASA LRO / Jatan Mehta', 5)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (50, N'И накрая, съществуват странни несъответствия между близката и далечната страна на Луната. Разликите включват: дебелината на кората ― 43 мили (70 километра) от близката страна на Луната срещу 93 мили (150 километра) от далечната страна; контрастиращият геоложки състав, включително концентрация на радиоактивни елементи от близката страна; и богатата история на вулканизма от близката страна в сравнение с относителната липса на вулканична активност от другата страна. Колко тясно са свързани тези разлики с образуването на Луната – как се е охладила, как е протекла нейната вулканична дейност и начина, по който е била бомбардирана от обекти от космоса – е въпрос, с който учените продължават да се борят днес.', N'Finally, strange discrepancies exist between the Moon’s near and far sides. Differences include: the thickness of the crust ― 43 miles (70 kilometers) on the Moon''s near-side versus 93 miles (150 kilometers) on the far side; the contrasting geological makeup, including a concentration of radioactive elements on the near side; and the rich history of volcanism on the near side compared with a relative lack of volcanic activity on the far side. How closely these differences are related to the Moon’s formation ― how it cooled, how its volcanic activity took place, and the manner in which it has been bombarded by objects from space ― is a question scientists continue to wrestle with today.', 5)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (51, N'Сценарист: Трейси Фогел<br>
        Научни съветници: Прабал Саксена (Център за космически полети Годард на НАСА),<br>
        Сара Валенсия (Космосът Годард на НАСА
        Flight Center)<br> и Бил Ботке (Southwest Research Institute Boulder)', N'Writer: Tracy Vogel<br>
        Science Advisors: Prabal Saxena (NASA''s Goddard Space Flight Center),<br>
        Sarah Valencia (NASA''s Goddard Space
        Flight Center)<br> and Bill Bottke (Southwest Research Institute Boulder)', 5)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (52, N'В цялата ни слънчева система единственият обект, който свети със собствена светлина, е Слънцето. Тази светлина винаги се насочва към Земята и Луната от посоката на Слънцето, осветявайки половината от нашата планета в нейната орбита и отразявайки се от повърхността на Луната, за да създаде лунна светлина. Подобно на Земята, Луната има дневна и нощна страна, която се променя с въртенето и. Слънцето винаги осветява половината от Луната, докато другата половина остава тъмна, но доколко можем да видим от тази осветена половина се променя, докато Луната пътува през своята орбита. Нека да разгледаме отделните фази и как движенията на Луната и Слънцето ни се появяват, докато гледаме от Северното полукълбо на Земята:', N'In our entire solar system, the only object that shines with its own light is the Sun. That light always beams onto Earth and Moon from the direction of the Sun, illuminating half of our planet in its orbit and reflecting off the surface of the Moon to create moonlight.Like Earth, the Moon has a day side and a night side, which change as the Moon rotates. The Sun always illuminates half of the Moon while the other half remains dark, but how much we are able to see of that illuminated half changes as the Moon travels through its orbit.Let’s take a look at the individual phases, and how the movements of the Moon and Sun appear to us as we watch from the Northern Hemisphere on Earth:', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (53, N'Тази графика показва позицията на Луната и Слънцето по време на всяка от фазите на Луната и Луната, както изглежда от Земята по време на всяка фаза. Не е в мащаб. Кредит: NASA/JPL-Caltech', N'This graphic shows the position of the Moon and the Sun during each of the Moon’s phases and the Moon as it appears from Earth during each phase. Not to scale. Credit: NASA/JPL-Caltech', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (54, N'Новолуние', N'New moon', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (55, N'Това е невидимата фаза на Луната, като осветената страна на Луната е обърната към Слънцето, а нощната - към Земята. В тази фаза Луната е в същата част на небето като Слънцето и изгрява и залязва със Слънцето. Не само, че осветената страна е обърната към Земята, тя също е нагоре през деня! Не забравяйте, че в тази фаза Луната обикновено не минава директно между Земята и Слънцето поради наклона на орбитата на Луната. Той минава близо до Слънцето само от нашата гледна точка на Земята.', N'This is the invisible phase of the Moon, with the illuminated side of the Moon facing the Sun and the night side facing Earth. In this phase, the Moon is in the same part of the sky as the Sun and rises and sets with the Sun. Not only is the illuminated side facing away from the Earth, it’s also up during the day! Remember, in this phase, the Moon doesn’t usually pass directly between Earth and the Sun, due to the inclination of the Moon’s orbit. It only passes near the Sun from our perspective on Earth.', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (56, N'Изгряващ Полумесец', N'Waxing Crescent', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (57, N'Тази сребриста част от Луната се появява, когато осветената половина на Луната е обърната предимно към Земята, а от нашата планета се вижда само малка част. Тя се увеличава ежедневно, тъй като орбитата на Луната пренася дневната ѝ страна все по-далеч в полезрението. Всеки ден Луната изгрява малко по-късно.', N'This silver sliver of a Moon occurs when the illuminated half of the Moon faces mostly away from Earth, with only a tiny portion visible to us from our planet. It grows daily as the Moon’s orbit carries the Moon’s dayside farther into view. Every day, the Moon rises a little bit later.', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (58, N'Първа четвърт', N'First Quarter', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (59, N'Луната е на една четвърт от пътя си през месеца и виждате половината от осветената ѝ страна. Хората могат да нарекат това полумесец, но не забравяйте, че това не е точно това, което виждате на небето. Виждате само част от цялата Луна - половината от осветената половина. Първата четвърт на Луната изгрява около обяд и залязва около полунощ. Вечер тя е високо в небето и се наблюдава отлично.', N'The Moon is now a quarter of the way through its monthly journey and you see half of its illuminated side. People may casually call this a half moon, but remember, that’s not really what you’re witnessing in the sky. You’re seeing just a slice of the entire Moon ― half of the illuminated half. A first quarter moon rises around noon and sets around midnight. It’s high in the sky in the evening and makes for excellent viewing.', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (60, N'Растяща Луна', N'Waxing Gibbous', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (61, N'Сега се вижда по-голямата част от дневната страна на Луната и тя изглежда по-ярка на небето.', N'Now most of the Moon’s dayside has come into view, and the Moon appears brighter in the sky.', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (62, N'Пълнолуние', N'Full Moon', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (63, N'Луната е толкова близо, колкото да видим слънчевото осветяване на цялата дневна страна (така че технически това би било истинската полулуна). Луната е срещу Слънцето, гледана от Земята, разкривайки дневната страна на Луната. Пълнолунието изгрява около залез и залязва около изгрев. Луната ще изглежда пълна за няколко дни, преди да премине в...', N'This is as close as we come to seeing the Sun’s illumination of the entire day side of the Moon (so, technically, this would be the real half moon). The Moon is opposite the Sun, as viewed from Earth, revealing the Moon’s dayside. A full moon rises around sunset and sets around sunrise. The Moon will appear full for a couple of days before it moves into…', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (64, N'Намаляваща Луна', N'Waning Gibbous', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (65, N'Когато Луната започне своето пътуване обратно към Слънцето, противоположната страна на Луната вече отразява нейната светлина. Изглежда, че осветената страна се смалява, но орбитата на Луната просто я изнася от нашата гледна точка. Луната изгрява все по-късно и по-късно всяка нощ.', N'As the Moon begins its journey back toward the Sun, the opposite side of the Moon now reflects the Moon’s light. The lighted side appears to shrink, but the Moon’s orbit is simply carrying it out of view from our perspective. The Moon rises later and later each night.', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (66, N'Последна Четвърт', N'Last Quarter', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (67, N'От гледна точка на Земята Луната изглежда така, сякаш е наполовина осветена, но всъщност виждате половината от Луната, която е осветена от Слънцето - или една четвърт. Последната четвърт на Луната, известна още като трета четвърт, изгрява около полунощ и залязва около обяд.', N'The Moon looks like it’s half illuminated from the perspective of Earth, but really you’re seeing half of the half of the Moon that’s illuminated by the Sun ― or a quarter. A last quarter moon, also known as a third quarter moon, rises around midnight and sets around noon.', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (68, N'Залязващ Полумесец', N'Waning Crescent', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (70, N'Луната почти се е върнала в точката от орбитата си, в която дневната ѝ страна е обърната директно към Слънцето, и всичко, което виждаме от нашата гледна точка, е тънка крива.', N'The Moon is nearly back to the point in its orbit where its dayside directly faces the Sun, and all that we see from our perspective is a thin curve.', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (71, N'Земен блясък', N'Earthshine', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (72, N'Земното сияние се отнася до слабото осветяване на тъмната част от лунната повърхност, причинено от слънчевата светлина, отразена от Земята. Това явление възниква, когато земната повърхност отразява слънчевата светлина, която след това се насочва към Луната и осветява онази част от нея, която не е пряко осветена от Слънцето. По същество това е слабо сияние на лунната повърхност, причинено от слънчевата светлина, която се отразява от Земята и достига до Луната. Това меко сияние често се наблюдава по време на фазите на нарастващ или намаляващ полумесец на Луната, когато обърнатата към Земята страна на Луната изглежда частично осветена, докато останалата част остава слабо видима поради земното сияние.', N'Earthshine refers to the faint illumination of the dark portion of the moon''s surface caused by sunlight reflected off the Earth. This phenomenon occurs when the Earth''s surface reflects sunlight, which then travels to the moon and illuminates the portion of the moon not directly lit by the sun. Essentially, it''s a dim glow on the lunar surface caused by sunlight bouncing off Earth and reaching the moon. This soft glow is often observable during the waxing or waning crescent phases of the moon when the Earth-facing side of the moon appears partly illuminated while the rest remains dimly visible due to earthshine.
', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (74, N'Луната е във фаза на полумесец, като по-голямата част от потъмнялата страна на Луната, обърната към Земята, се нарича земно сияние. Кредит: Zolt Levay', N'The Moon is in a crescent phase, most of the darkened, Earth-facing side of the Moon is called earthshine. Credit: Zolt Levay', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (75, N'Дневни луни', N'Daytime Moons', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (76, N'Въпреки че Луната често се възприема като нощен посетител, тя е видима и през деня като слабо, бледо присъствие. Най-доброто време за наблюдение на дневна Луна е може би по време на фазите първа и последна четвърт, когато Луната е достатъчно високо над хоризонта и на около 90 градуса от Слънцето в небето. Това спомага отразената от Слънцето светлина да стане достатъчно ярка, за да се вижда, когато се отразява от Луната. Луната може да се види на дневното небе във всяка фаза, с изключение на новолунието, когато е невидима за нас, и пълнолунието, когато е под хоризонта през деня. Фазите от полумесец до четвърт са високо в небето през деня, но дневните фази на нарастваща и намаляваща луна могат да бъдат забелязани само малко преди залез Слънце.', N'Though the Moon is often thought of as a nighttime visitor, it’s also visible during the day as a faint, pale presence. The best times to see a daytime Moon are perhaps during the first and last quarter phases, when the Moon is high enough above the horizon and at about 90 degrees from the Sun in the sky. This helps make the Sun’s reflected light bright enough to see as it reflects off of the Moon. The Moon can be seen in the daylit sky at any phase except for the new moon, when it’s invisible to us, and full moon, when it’s below the horizon during the day. The crescent through quarter phases are high in the sky during the day, but the daytime gibbous phases can be glimpsed only just before the Sun sets.', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (77, N'Настъпващата Луна изгрява над хребет в планината Уасач, Юта. Кредит: НАСА/Бил Дънфорд', N'The waxing Moon rises over a ridge in the Wasatch Mountains, Utah. Credit: NASA/Bill Dunford', 6)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (78, N'От четири до седем пъти годишно Земята, Луната и Слънцето се подреждат в правилна линия, за да създадат космическото шоу на сенките, известно като затъмнение. Орбитата на Луната около Земята е наклонена спрямо орбитата на Земята около Слънцето. Този наклон е причината да имаме случайни затъмнения, а не затъмнения всеки месец.
Има два вида затъмнения: лунни и слънчеви. По време на лунно затъмнение земната сянка закрива Луната. По време на слънчево затъмнение Луната закрива Слънцето.', N' Anywhere from four to seven times a year, our Earth, Moon and Sun line up just right to create the
                cosmic-scale shadow show known as an eclipse. The Moon''s orbit around Earth is tilted relative to
                Earth''s orbit around the Sun. This tilt is the reason why we have occasional eclipses instead of
                eclipses every month.
                <br>
                There are two types of eclipses: lunar and solar. During a lunar eclipse, Earth’s shadow obscures the
                Moon. During a solar eclipse, the Moon blocks the Sun from view.', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (79, N'Лунни затъмнения', N'Lunar Eclipses', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (80, N'Лунните затъмнения настъпват във фазата на пълнолуние. Когато Земята е разположена точно между Луната и Слънцето, земната сянка пада върху повърхността на Луната, като я затъмнява и понякога в продължение на няколко часа променя цвета на лунната повърхност в яркочервен. Всяко лунно затъмнение е видимо от половината Земя.
Съществуват три различни вида лунни затъмнения:', N' Lunar eclipses occur at the full moon phase. When Earth is positioned precisely between the Moon and
                Sun, Earth’s shadow falls upon the surface of the Moon, dimming it and sometimes turning the lunar
                surface a striking red over the course of a few hours. Each lunar eclipse is visible from half of Earth.
                <br>
                There are three different types of lunar eclipses:', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (81, N'Пълно лунно затъмнение', N'Total lunar eclipse', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (82, N'Луната навлиза във вътрешната част на сянката на Земята, или умбрата. Част от слънчевата светлина, преминаваща през земната атмосфера, достига до повърхността на Луната и я осветява слабо. Цветовете с по-къса дължина на вълната - синьото и виолетовото - се разсейват по-лесно от цветовете с по-голяма дължина на вълната, като червеното и оранжевото. Тъй като тези по-дълги вълни преминават през земната атмосфера, а по-късите се разсейват, Луната изглежда оранжева или червеникава по време на лунно затъмнение. Колкото повече прах или облаци има в земната атмосфера по време на затъмнението, толкова по-червена изглежда Луната.', N'The Moon moves into the inner part of Earth’s shadow, or the umbra. Some of the sunlight passing through Earth’s atmosphere reaches the Moon’s surface, lighting it dimly. Colors with shorter wavelengths ― the blues and violets ― scatter more easily than colors with longer wavelengths, like red and orange. Because these longer wavelengths make it through Earth’s atmosphere, and the shorter wavelengths have scattered away, the Moon appears orangish or reddish during a lunar eclipse. The more dust or clouds in Earth’s atmosphere during the eclipse, the redder the Moon appears.', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (83, N'Частично лунно затъмнение', N'Partial lunar eclipse', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (84, N'Несъвършеното подреждане на Слънцето, Земята и Луната води до преминаване на Луната само през част от земната умбра. Сянката расте и след това се отдалечава, без никога да покрива напълно Луната.', N'An imperfect alignment of Sun, Earth and Moon results in the Moon passing through only part of Earth''s umbra. The shadow grows and then recedes without ever entirely covering the Moon.', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (85, N'Пенумбрално затъмнение', N'Penumbral eclipse', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (87, N'Ако не знаете, че това се случва, може да го пропуснете. Луната преминава през полусянката на Земята, или слабата външна част на сянката ѝ. Луната е толкова слабо затъмнена, че може да е трудно да се забележи.', N'If you don’t know this one is happening, you might miss it. The Moon travels through Earth’s penumbra, or the faint outer part of its shadow. The Moon dims so slightly that it can be difficult to notice.', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (88, N'Лунното затъмнение настъпва, когато Слънцето, Земята и Луната се подредят така, че Луната да премине в сянката на Земята. Луната става по-тъмна и дори може да стане червена. Кредит: Център за космически полети "Годард" на НАСА.', N'A lunar eclipse occurs when the Sun, Earth, and Moon align so that the Moon passes into Earth’s shadow. The Moon becomes darker and may even turn red. Credit: NASA Goddard Space Flight Center.', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (89, N'Слънчеви затъмнения', N'Solar Eclipses', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (90, N'Слънчевите затъмнения се случват само във фазата на новолуние, когато Луната се намира между Земята и Слънцето. По време на слънчево затъмнение Луната хвърля сянка върху Земята и закрива или частично закрива гледката ни към Слънцето. Въпреки че слънчевите затъмнения се случват толкова често, колкото и лунните, те се виждат от толкова малка площ на Земята, че е много по-рядко да се срещнете с тях.
Съществуват четири различни вида слънчеви затъмнения:', N'Solar eclipses happen only at the new moon phase, when the Moon is between Earth and the Sun. During a solar eclipse, the Moon casts a shadow on Earth, and blocks or partially blocks our view of the Sun. Though solar eclipses happen as often as lunar eclipses, they are visible from such a small area of Earth each time that it’s much rarer to encounter one.
There are four different types of solar eclipses:', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (91, N'Слънчевото затъмнение се случва, когато Луната преминава между Слънцето и Земята, хвърляйки сянка върху части от Земята и закривайки лицето на Слънцето за наблюдателите на тези места. Кредит: Център за космически полети "Годард" на НАСА', N'A solar eclipse occurs when the Moon passes between the Sun and Earth, casting a shadow over parts of Earth and blocking the face of the Sun for observers in those locations. Credit: NASA''s Goddard Space Flight Center', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (92, N'Пълно слънчево затъмнение', N'Total Solar Eclipse', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (93, N'Пълното слънчево затъмнение се случва, когато Луната преминава между Слънцето и Земята, закривайки напълно лицето на Слънцето. Хората, които се намират в центъра на сянката на Луната, когато тя се сблъска със Земята, ще преживеят пълно затъмнение. Небето ще потъмнее, сякаш е зора или здрач. Ако метеорологичните условия позволяват, хората, които се намират на пътя на пълното слънчево затъмнение, могат да видят короната на Слънцето - външната атмосфера, която иначе обикновено е закрита от ярката повърхност на Слънцето. Пълното слънчево затъмнение е единственият вид слънчево затъмнение, при който зрителите могат да свалят за момент очилата си за затъмнение (които не са същите като обикновените слънчеви очила) за краткия период от време, когато Луната напълно закрива Слънцето.', N'A total solar eclipse happens when the Moon passes between the Sun and Earth, completely blocking the face of the Sun. People located in the center of the Moon’s shadow when it hits Earth will experience a total eclipse. The sky will darken, as if it were dawn or dusk. Weather permitting, people in the path of a total solar eclipse can see the Sun’s corona, the outer atmosphere, which is otherwise usually obscured by the bright face of the Sun. A total solar eclipse is the only type of solar eclipse where viewers can momentarily remove their eclipse glasses (which are not the same as regular sunglasses) for the brief period of time when the Moon is completely blocking the Sun.', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (94, N'Пръстенообразно слънчево затъмнение', N'Annular Solar Eclipse', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (95, N'Пръстеновидното слънчево затъмнение се случва, когато Луната преминава между Слънцето и Земята, но когато тя е в най-отдалечената си точка от Земята или близо до нея. Тъй като Луната е по-далеч от Земята, тя изглежда по-малка от Слънцето и не го покрива напълно. В резултат на това Луната изглежда като тъмен диск върху по-голям, светъл диск, което създава нещо като пръстен около Луната.', N'An annular solar eclipse happens when the Moon passes between the Sun and Earth, but when it is at or near its farthest point from Earth. Because the Moon is farther away from Earth, it appears smaller than the Sun and does not completely cover the Sun. As a result, the Moon appears as a dark disk on top of a larger, bright disk, creating what looks like a ring around the Moon.', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (96, N'Частично слънчево затъмнение', N'Partial Solar Eclipse', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (97, N'Частично слънчево затъмнение се случва, когато Луната преминава между Слънцето и Земята, но Слънцето, Луната и Земята не са в идеална линия. Само част от Слънцето ще изглежда покрита, което ще му придаде формата на полумесец. По време на пълно или пръстеновидно слънчево затъмнение хората извън зоната, покрита от вътрешната сянка на Луната, виждат частично слънчево затъмнение.', N'A partial solar eclipse happens when the Moon passes between the Sun and Earth but the Sun, Moon, and Earth are not perfectly lined up. Only a part of the Sun will appear to be covered, giving it a crescent shape. During a total or annular solar eclipse, people outside the area covered by the Moon’s inner shadow see a partial solar eclipse.', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (98, N'Хибридно слънчево затъмнение', N'	
Hybrid Solar Eclipse', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (99, N'Тъй като повърхността на Земята е изкривена, понякога затъмнението може да премине от пръстеновидно в пълно, докато сянката на Луната се движи по земното кълбо. Това се нарича хибридно слънчево затъмнение.', N'Because Earth''s surface is curved, sometimes an eclipse can shift between annular and total as the Moon’s shadow moves across the globe. This is called a hybrid solar eclipse.', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (100, N'Отляво надясно тези изображения показват пълно слънчево затъмнение, пръстеновидно слънчево затъмнение и частично слънчево затъмнение. Хибридното затъмнение изглежда като пълно или пръстеновидно затъмнение (лявото и средното изображение). Кредит: Пълно затъмнение (вляво): NASA/MSFC/Joseph Matus; пръстеновидно затъмнение (в средата): NASA/Bill Dunford; частично затъмнение (вдясно): NASA/Bill Ingalls', N'From left to right, these images show a total solar eclipse, annular solar eclipse, and partial solar eclipse. A hybrid eclipse appears as either a total or an annular eclipse (the left and middle images). Credit: Total eclipse (left): NASA/MSFC/Joseph Matus; annular eclipse (center): NASA/Bill Dunford; partial eclipse (right): NASA/Bill Ingalls', 7)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (101, N'Звезди и съзвездия', N'Stars and Constellations', 8)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (102, N'На тези страници ще научите повече за звездите и съзвездията и ще можете да търсите информация за конкретна звезда, да видите звездна карта за всяка дата, която искате или да разгледате интерактивна карта на нощното небе в реално време.', N'On these pages, you''ll learn more about the stars and constellations and be able to search for information about a specific star, view a star chart for any date you want, or view a real-time interactive map of the night sky.', 8)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (103, N'Интерактивна карта на нощното небе', N'Interactive map of the night sky', 8)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (104, N'Научете повече за', N'Learn about', 8)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (105, N'Звезди', N'Stars', 8)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (106, N'Съзвездия', N'Constellations', 8)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (108, N'Звезди', N'Stars', 9)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (109, N'Име на звезда (en)', N'Search star name', 9)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (110, N'ОСНОВИ', N'BASICS', 9)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (111, N'ВИДОВЕ ЗВЕЗДИ', N'TYPES STARS', 9)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (112, N'МНОЖЕСТВО ЗВЕЗДНИ СИСТЕМИ', N'MULTIPLE STAR SYSTEMS', 9)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (113, N'Астрономите смятат, че Вселената може да съдържа до един септилион звезди. Само в нашия Млечен път те са над 100 милиарда, включително най-изследваната звезда - Слънцето. Звездите са гигантски кълба от горещ газ - предимно водород, с малко хелий и малки количества други елементи. Всяка звезда има свой собствен жизнен цикъл, който варира от няколко милиона до трилиони години, и свойствата ѝ се променят с напредването на възрастта.', N'Astronomers estimate that the universe could contain up to one septillion stars. Our Milky Way alone contains more than 100 billion, including our most well-studied star, the Sun. Stars are giant balls of hot gas – mostly hydrogen, with some helium and small amounts of other elements. Every star has its own life cycle, ranging from a few million to trillions of years, and its properties change as it ages.', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (114, N'Раждане на звездите', N'Birth of stars', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (115, N'Звездите се образуват в големи облаци от газ и прах, наречени молекулярни облаци. Молекулярните облаци са студени, което причинява струпване на газ, създавайки джобове с висока плътност. Някои от тези бучки могат да се сблъскат една с друга или да съберат повече материя, засилвайки гравитационната си сила с нарастването на масата им. В крайна сметка гравитацията кара някои от тези бучки да се срутят. Когато това се случи, триенето кара материала да се нагрява, което в крайна сметка води до развитието на протозвезда – бебе звезда. Партиди от звезди, които наскоро са се образували от молекулярни облаци, често се наричат звездни купове, а молекулярните облаци, пълни със звездни купове, се наричат звездни разсадници.', N'Stars form in large clouds of gas and dust called molecular clouds. Molecular clouds are cold which causes gas to clump, creating high-density pockets. Some of these clumps can collide with each other or collect more matter, strengthening their gravitational force as their mass grows. Eventually, gravity causes some of these clumps to collapse. When this happens, friction causes the material to heat up, which eventually leads to the development of a protostar – a baby star. Batches of stars that have recently formed from molecular clouds are often called stellar clusters and molecular clouds full of stellar clusters are called stellar nurseries.', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (116, N'молекулярни облаци', N'Molecular clouds', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (117, N'Развитие на протозвезда', N'Developement of protostar
', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (118, N'Животът на звездите', N'Life of stars', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (119, N'Първоначално по-голямата част от енергията на протозвездата идва от топлината, отделена от нейния първоначален колапс. В продължение на милиони години високите налягания и температури в ядрото предизвикват ядрен синтез, превръщайки водорода в хелий, освобождавайки енергия, която противодейства на гравитацията. Тези стабилни звезди се наричат звезди от главната последователност и тази фаза продължава милиони или милиарди години. Нашето Слънце е по средата му. Масата на една звезда определя колко бързо тя използва своето газово гориво. Звездите с по-ниска маса горят по-дълго, изглеждат по-тъмни и по-хладни от масивните звезди, които изгарят гориво по-бързо. Някои звезди с ниска маса могат да светят трилиони години, докато масивните звезди живеят само няколко милиона години..', N'At first, most of the protostar’s energy comes from heat released by its initial collapse. Over millions of years, high pressures and temperatures in the core trigger nuclear fusion, turning hydrogen into helium, releasing energy that counteracts gravity. These stable stars are called main sequence stars, and this phase lasts millions or billions of years. Our Sun is midway through it. A star''s mass determines how fast it uses its gas fuel. Lower-mass stars burn longer, appearing dimmer and cooler than massive stars, which burn fuel faster. Some low-mass stars can shine for trillions of years, while massive stars live only a few million years.', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (120, N'Червен гигант', N'Red giant star
', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (121, N'Звезда от главната <br> последователност', N'Main sequence star', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (122, N'Смъртта на звездите', N'Death of stars', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (123, N'Тъй като ядрото на звездата изчерпва своя водород, гравитацията започва да го компресира. Тази компресия повишава нейната температура и налягане, което кара звездата да се разширява. Резултатът от този процес варира в зависимост от масата на звездата. Звездите с ниска маса еволюират в субгиганти или гиганти, сливайки хелий във въглерод, както в крайна сметка ще направи нашето Слънце. Някои гиганти пулсират, отделят атмосферата си, за да образуват планетарни мъглявини. Ядрото, известно като бяло джудже, постепенно се охлажда в продължение на милиарди години. Звездите с висока маса претърпяват синтез, за да създадат по-тежки елементи, като кислород и магнезий, докато най-масивните звезди в крайна сметка достигат до синтез на желязо, който бързо изчерпва тяхната енергия. Това води до колапс на ядрото, последван от експлозия на свръхнова. Ядрото става или неутронна звезда, или черна дупка. Суперновата разпръсква материали, обогатявайки бъдещи молекулярни облаци и засявайки образуването на нови звезди.

', N'As a star''s core depletes its hydrogen, gravity starts to compress it. This compression raises its temperature and pressure, causing the star to expand. The outcome of this process varies with the star''s mass. Low-mass stars evolve into subgiants or giants, fusing helium into carbon, as our Sun will eventually. Some giants pulsate, shedding their atmospheres to form planetary nebulae. The core, known as a white dwarf, gradually cools over billions of years. High-mass stars undergo fusion to create heavier elements, such as oxygen and magnesium, while the most massive stars eventually reach iron fusion, which depletes their energy quickly. This results in a core collapse, followed by a supernova explosion. The core becomes either a neutron star or a black hole. Supernova dispers materials, enriching future molecular clouds and seeding new star formation.', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (124, N'Супернова експлозия', N'Supernova explosion', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (125, N'Бяло джудже', N'White Dwarf', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (126, N'Неутронна звезда', N'Neutron star', 10)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (127, N'Видове звезди', N'Types stars', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (128, N'Вселената е изпълнена с удивително разнообразие от звезди, всяка от които притежава уникални
                        характеристики, които ги отличават една от друга. Звездите се различават значително по отношение
                        на тяхната яркост, размер, цвят и поведение. Някои видове се превръщат в други много бързо,
                        докато други остават относително непроменени в продължение на трилиони години.', N'The universe is filled with an astonishing diversity of stars, each possessing unique characteristics that set them apart from one another. Stars vary widely in terms of their brightness, size, color, and behavior. Some types change into others very quickly, while others stay relatively unchanged over trillions of years.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (129, N'Звезди от главната <br> последователност', N'Main sequence stars', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (130, N'Нормална звезда се образува от прах и газ в звездна ясла, набирайки маса и нагрявайки се в
                        продължение на стотици хиляди години. Когато сърцевината му достигне милиони градуси, ядреният
                        синтез започва, когато водородните ядра се сливат в хелий, освобождавайки енергия, която
                        противодейства на гравитацията. Такива звезди, известни като звезди от главната
                        последователност, съставляват около 90% от всички звезди. Те се различават по размер, цвят и
                        яркост, като продължителността им варира от милиони до милиарди години.', N'A normal star forms from dust and gas in a stellar nursery, gaining mass and heating up over hundreds of thousands of years. When its core reaches millions of degrees, nuclear fusion begins as hydrogen nuclei merge into helium, releasing energy that counters gravity. Such stars, known as main sequence stars, make up about 90% of all stars. They vary in size, color, and luminosity, with lifespans ranging from millions to billions of years.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (131, N'Допълнителна информация', N'For stargazers', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (132, N'Много звезди от главната последователност могат да се видят с невъоръжено око, като Сириус –
                        най-ярката звезда в нощното небе – в северното съзвездие Голямо куче.', N'Many main sequence stars can be seen with the unaided eye, such as Sirius – the brightest star in the night sky – in the northern constellation Canis Major.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (133, N'Червени гиганти', N'Red Giants', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (134, N'Когато звезда от главната последователност под осем слънчеви маси изчерпи водород в ядрото
                            си, тя колабира поради гравитацията, повишавайки температурата и налягането. Сливането на
                            хелий във въглерод освобождава енергия, причинявайки сливането на водорода да разширява
                            външните слоеве, образувайки червен гигант. Тези червени гиганти често изглеждат оранжеви.
                            Те стават нестабилни, пулсират и изхвърлят атмосферата си, като в крайна сметка разпръскват
                            външните си слоеве като планетарна мъглявина. Нашето Слънце ще се превърне в червен гигант
                            след около 5 милиарда години.', N'When a main sequence star under eight solar masses exhausts core hydrogen, it collapses due to gravity, raising temperature and pressure. Helium fusion into carbon releases energy, causing hydrogen fusion to expand the outer layers, forming a red giant. These red giants often appear orange. They become unstable, pulsate, and eject their atmospheres, ultimately dispersing their outer layers as a planetary nebula. Our Sun will become a red giant in about 5 billion years.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (135, N'Арктур в северното съзвездие Воловар и Гама Круцис в
                        южното съзвездие Крукс (Южният кръст) са
                        червени гиганти, видими с невъоръжено око.', N'Arcturus in the northern constellation Boötes and Gamma Crucis in the southern constellation Crux (the Southern Cross) are red giants visible to the unaided eye.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (136, N'Бели джуджета', N'White Dwarfs', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (137, N'Когато червеният гигант изхвърли външните си слоеве, той оставя след себе си ядро на бяло
                        джудже, обикновено с размерите на Земята, но много по-масивно. Една чаена лъжичка от техния
                        материал може да надхвърли един пикап. Белите джуджета се охлаждат в продължение на милиарди
                        години, като понякога излъчват видима светлина от синьо до червено. Някои съдържат прашни
                        дискове и планетарни останки от миналото им на червени гиганти. След около 10 милиарда години
                        нашето Слънце също ще се трансформира в бяло джудже след фазата си на червен гигант.', N'When a red giant sheds its outer layers, it leaves behind a white dwarf core, typically Earth-sized but far more massive. A teaspoon of their material can outweigh a pickup truck. White dwarfs cool over billions of years, occasionally emitting visible light from blue to red. Some host dusty disks and planetary remnants from their red giant past. In about 10 billion years, our Sun will also transform into a white dwarf following its red giant phase.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (138, N'Белите джуджета често са твърде слаби за наблюдение с невъоръжено око, но могат да бъдат
                        забелязани в двойни системи с по-ярки звезди от главната последователност, като Procyon B в
                        Canis Minor. Ако имате телескоп, можете да наблюдавате отделни бели джуджета като LP 145-141 в
                        Musca (южното съзвездие) и звездата на Van Maanen в Риби (северното съзвездие).', N'White dwarfs are often too faint for naked-eye observation but can be spotted in binary systems with brighter main sequence stars, like Procyon B in Canis Minor. If you have a telescope, you can observe individual white dwarfs like LP 145-141 in Musca (southern constellation) and Van Maanen''s star in Pisces (northern constellation).', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (139, N'Неутронни звезди', N'Neutron Stars', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (140, N'Неутронна звезда се образува, когато звезда от главната последователност с маса между осем и
                            20 пъти масата на Слънцето изчерпи водорода в ядрото си. Звездата първоначално слива хелий
                            във въглерод, след това превръща въглерода в по-тежки елементи като неон, кислород, силиций
                            и накрая желязо, освобождавайки енергия, която предотвратява колапса на ядрото. Въпреки
                            това, докато достига до синтез на желязо, звездата изчерпва горивото си, което води до бърз
                            колапс на ядрото, отскачане и мощна експлозия на свръхнова. Остатъчното ядро е свръхплътна
                            неутронна звезда.', N'A neutron star forms when a main sequence star with between about eight and 20 times the Sun’s mass runs out of hydrogen in its core. The star initially fuses helium into carbon, then converts carbon into heavier elements like neon, oxygen, silicon, and finally iron, releasing energy that prevents core collapse. However, as it reaches iron fusion, the star runs out of fuel, leading to a rapid core collapse, rebound, and a powerful supernova explosion. The remnant core is a superdense neutron star.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (141, N'Пулсари', N'Pulsars', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (142, N'Tе са вид бързо въртящи се неутронни звезди. Докато се
                        въртят, петната се въртят навътре и извън
                        видимостта като лъчи на фар. Някои пулсари се въртят
                        по-бързо от остриетата на миксера.', N'these are a type of rapidly rotating neutron star. As they rotate, the spots spin in and out of view like the beams of a lighthouse. Some pulsars spin faster than blender blades.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (143, N'Магнетари', N'Magnetars', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (144, N'Всички неутронни звезди имат силни магнитни полета. Но магнетарът може да бъде 10 трилиона пъти
                        по-силен от магнита за хладилник и до хиляда пъти по-силен от типичната неутронна звезда.', N'All neutron stars have strong magnetic fields. But a magnetar’s can be 10 trillion times stronger than a refrigerator magnet’s and up to a thousand times stronger than a typical neutron star’s.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (145, N'Неутронните звезди са твърде слаби, за да се видят с невъоръжено око или с телескопи в задния
                        двор, въпреки че космическият телескоп Хъбъл успя да улови няколко във видима светлина.
                        Астрономите обикновено ги наблюдават чрез рентгенови лъчи и радиоизлъчване.', N'Neutron stars are too faint to see with the unaided eye or backyard telescopes, although the Hubble Space Telescope has been able to capture a few in visible light. Astronomers usually observe them via X-rays and radio emission.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (146, N'Червени джуджета', N'Red Dwarfs', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (147, N'Червените джуджета, най-малките звезди от главната последователност, са по-хладни и често
                            изглеждат оранжеви на цвят. Те поддържат постоянен процес на синтез, който им позволява да
                            изгарят своите запаси от водород за трилиони години без значителни структурни промени. Някои
                            червени джуджета с ниска маса, само една трета от масата на Слънцето, може да имат
                            продължителност на живота, надхвърляща настоящата възраст на Вселената, до около 14 трилиона
                            години. Червените джуджета са изобилни и съставляват приблизително 75% от звездното
                            население на Млечния път.', N'Red dwarfs, the smallest main sequence stars, are cooler and often appear orange in color. They maintain a constant fusion process that allows them to burn through their hydrogen supply for trillions of years without significant structural changes. Some low-mass red dwarfs, just a third of the Sun''s mass, may have lifespans exceeding the current age of the universe, up to about 14 trillion years. Red dwarfs are abundant and make up roughly 75% of the Milky Way''s stellar population.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (148, N'Червените джуджета са твърде слаби, за да ги видите с невъоръжено око. Но с телескоп в
                            задния двор може да успеете да видите Lacaille 8760 в южното съзвездие Microscopium или
                            Lalande 21185 в северното съзвездие Голяма мечка.', N'Red dwarfs are too faint to see with the unaided eye. But with a backyard telescope, you may be able to see Lacaille 8760 in the southern constellation Microscopium or Lalande 21185 in the northern constellation Ursa Major.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (149, N'Кафявите джуджета технически не са звезди. Те са по-масивни от планетите, но не толкова
                                масивни, колкото звездите. Обикновено те имат между 13 и 80 пъти масата на Юпитер. Те не
                                излъчват почти никаква видима светлина, но учените са видели няколко в инфрачервена
                                светлина. Някои кафяви джуджета се образуват по същия начин като звездите от главната
                                последователност, от газови и прахови купчини в мъглявини, но те никога не набират
                                достатъчно маса, за да извършат синтез в мащаба на звезда от главната последователност.
                                Други могат да се образуват като планети, от дискове от газ и прах около звездите.`,
                    legend1: `Много звезди от главната последователност могат да се видят с невъоръжено око, като Сириус –
                        най-ярката звезда в нощното небе – в северното съзвездие Голямо куче.', N'Brown dwarfs aren’t technically stars. They’re more massive than planets but not quite as massive as stars. Generally, they have between 13 and 80 times the mass of Jupiter. They emit almost no visible light, but scientists have seen a few in infrared light. Some brown dwarfs form the same way as main sequence stars, from gas and dust clumps in nebulae, but they never gain enough mass to do fusion on the scale of a main sequence star. Others may form like planets, from disks of gas and dust around stars.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (150, N'Кафяви джуджета', N'Brown Dwarfs', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (151, N'Кафявите джуджета обикновено са невидими както за невъоръжено око, така и за малки телескопи
                            в задния двор поради тяхната слабост и малки размери.', N'Brown dwarfs are generally invisible to both the unaided eye and small backyard telescopes due to their faintness and small size.', 11)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (152, N'Множество звездни системи', N'Multiple star systems', 12)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (153, N'Нашата слънчева система, с нейните осем планети, обикалящи около самотно Слънце, ни се струва позната, защото там живеем. Но в галактиката като цяло планетарни системи като нашата определено са малцинство. Повече от половината звезди в небето имат един или повече партньори. Тези множество звездни системи се предлагат в зашеметяващо разнообразие от вкусове: големи, горещи звезди, орбитирани от по-малки, по-хладни; двойни звезди, орбитирани от планети; двойки пулсиращи с рентгенови лъчи, докато единият отделя материал, който е погълнат от другия.', N'Our solar system, with its eight planets orbiting a solitary Sun, feels familiar because it''s where we live. But in the galaxy at large, planetary systems like ours are decidedly in the minority. More than half of all stars in the sky have one or more partners. These multiple star systems come in a stunning variety of flavors: large, hot stars orbited by smaller, cooler ones; double stars orbited by planets; pairs pulsing with X-rays as one sheds material that is devoured by the other.', 12)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (154, N'Двойни звезди', N'Binary Stars', 12)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (155, N'Системите с две звезди предлагат разнообразен набор от характеристики, подобно на общото звездно
                        население на галактиката. Тези двойки показват широк диапазон на маса, като например жълта
                        звезда със среден размер, обикаляща около по-малко червено джудже. Някои се развиват
                        асиметрично, като една звезда се превръща в червен гигант, докато другата остава стабилна. Тези
                        системи могат да приемат планети. Двойки неутронни звезди могат да се спират заедно и да се
                        сблъскват, произвеждайки тежки елементи като злато, платина и йод.', N'Double-star systems offer a diverse array of characteristics, much like the galaxy''s overall stellar population. These pairs exhibit a wide mass range, such as a medium-sized yellow star orbiting a smaller red dwarf. Some evolve asymmetrically, with one star becoming a red giant while the other remains stable. These systems can host planets. Pairs of neutron stars canspiral together and collide, producing heavy elements, like gold, platinum, and iodine.', 12)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (156, N'Рентгеновите двойни системи', N'X-ray Binaries', 12)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (157, N'Рентгеновите двойни системи включват трансфер на материал между звездите. Когато масивна звезда
                        изчерпи ядреното си гориво и се превърне в бяло джудже, неутронна звезда или черна дупка, тя
                        може гравитационно да издърпа материал от близкия си спътник, излъчвайки рентгенови лъчи. Тези
                        двоични файлове предоставят представа за явления като емисии на пулсари, термоядрени експлозии и
                        наличието на материал, образуващ акреционни дискове около звездите.', N'X-ray binaries involve material transfer between stars. When a massive star exhausts its nuclear fuel and becomes a white dwarf, neutron star, or black hole, it can gravitationally pull material from its close companion, emitting X-rays. These binaries provide insights into phenomena like pulsar emissions, thermonuclear explosions, and the presence of material forming accretion disks around the stars.', 12)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (158, N'Mножествa звезди', N'Other Multiples', 12)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (159, N'Някои системи с множество звезди включват три или повече звезди, чиито орбити са сложно
                        преплетени от гравитацията. В една система са наблюдавани до седем звезди. Подобно на двойните
                        системи, тройните звездни системи могат да приемат планети. В тризвездна система две звезди
                        обикалят една около друга, след това двойката и трета звезда също обикалят една около друга. В
                        четворна звездна система две двойки звезди обикалят една около друга, а тези две двойки на свой
                        ред се въртят една около друга.', N'Some multiple star systems include three stars or more, their orbits intricately intertwined by gravity. As many as seven stars have been observed in a single system. Like binaries, triple-star systems can host planets. In a three star system, two stars orbit each other, then the pair and a third star also orbit each other. In a quadruple star system, two pairs of stars orbit each other, and these two pairs, in turn, orbit each other.', 12)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (160, N'Система с 4 звезди', N'Quadruple star system', 12)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (161, N'Съзвездие:', N'Constellation:', 13)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (162, N'Група звезди, която образува въображаем контур', N'A group of stars that forms an imaginary outline', 13)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (163, N'Разстояние:', N'Distance:', 13)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (164, N'Една светлинна година е около 5,88 трилиона мили.', N'A light year is about 5.88 trillion miles.', 13)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (165, N'Спектрален клас:', N'Spectral class:', 13)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (166, N'Изображение за съзвездието от библиотеката с изображения на НАСА', N'Image for the constellation from NASA image library', 13)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (167, N'Изображение на звездата от библиотеката с изображения на НАСА', N'Image for the star from NASA image library', 13)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (168, N'Съзвездия', N'Constellations', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (170, N'Генерирай', N'Generate', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (171, N'Звездна Карта', N'Star Chart', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (172, N'Отнема около 10-15 секунди да се генерира.', N'It may take 10-15 seconds to generate a star chart.', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (173, N'Какво представляват съзвездията?', N'What are constellations?', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (174, N'Има няколко различни определения за съзвездия, но много хора 
            се сещат за съзвездия като група от звезди. Съзвездията, които можете да видите
             през нощта зависят от вашето местоположение на Земята и времето от годината.
              Съзвездията бяха наречени на предмети, животни и хора отдавна. Астрономите
               и днес използвайте съзвездия, за да назовавате звезди и метеорни потоци.', N'There are a few different definitions of constellations, but many people think of constellations as a group of stars. The constellations you can see at night depend on your location on Earth and the time of year. Constellations were named after objects, animals, and people long ago. Astronomers today still use constellations to name stars and meteor showers.', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (175, N'Какви съзвездия можете да видите на нощното небе?', N'What constellations can you see in the night sky?', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (176, N'Съзвездията, които можете да видите през нощта, зависят от времето на годината. Земята обикаля около Слънцето веднъж годишно. Нашият поглед към космоса през нощното небе се променя, докато орбитираме. И така, нощното небе изглежда малко по-различно всяка вечер, защото Земята е на различно място в своята орбита. Звездите се появяват всяка вечер, за да се движат леко на запад от мястото, където са били предната нощ. Вашето местоположение на Земята също определя какви звезди и съзвездия виждате и колко високо изглеждат, че се издигат в небето. Северното полукълбо винаги сочи в различна посока от южното полукълбо. Това означава, че наблюдателите на звезди в Австралия например получават малко по-различен изглед на небето и могат да видят няколко различни съзвездия отколкото тези в Съединените щати. Може да е малко объркващо да си представим как нощното небе се променя, докато обикаляме около Слънцето. Можете да видите как работи всичко в илюстрацията по-долу.', N'The constellations you can see at night depend on the time of year. Earth orbits around the Sun once each year. Our view into space through the night sky changes as we orbit. So, the night sky looks slightly different each night because Earth is in a different spot in its orbit. The stars appear each night to move slightly west of where they were the night before. Your location on Earth also determines what stars and constellations you see, and how high they appear to rise in the sky. The Northern Hemisphere is always pointing in a different direction than the Southern Hemisphere. This means that stargazers in Australia, for example, get a slightly different view of the sky and can see a few different constellations than those in the United States. It can be a little confusing to picture how the night sky changes as we orbit the Sun. You can see how it all works in the illustration below.', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (177, N'Диаграма, показваща някои от съзвездията, които се виждат от Северното полукълбо през по различно време на годината. Кредит: NASA/JPL-Caltech', N'A chart showing some of the constellations that are visible from the Northern Hemisphere in different times of year. Credit: NASA/JPL-Caltech', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (178, N'Съзвездия по сезони', N'Constellations by seasons', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (179, N'Съзвездията са постоянно променящи се шарки от
             звезди, които красят нашето нощно небе, вариращи според сезоните. От зимния
              блясък на Орион и Телец до Лебед и Лира през лятото, тези небесни подредби
               са вдъхновявали култури през цялата история. Присъединете се към нас, докато 
               изследваме съзвездията по сезон, задълбочавайки се в тяхната богата история
                и завладяващо знание.', N'Constellations are ever-changing patterns of stars that grace our night sky, varying with the seasons. From the wintry brilliance of Orion and Taurus to the summer''s Cygnus and Lyra, these celestial arrangements have inspired cultures throughout history. Join us as we explore the constellations by season, delving into their rich history and captivating lore.', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (180, N'Научи повече', N'Learn more', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (181, N'Зимни съзвездия', N'Winter constellations', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (182, N'За да видим съзвездията, които идват и си отиват със сезоните, трябва да обърнем гръб на северните околополюсни съзвездия и да гледаме на юг. Ако зимното небе изглежда оживено със звезди, това не е илюзия. Освен очевидните факти, че тогава въздухът е чист и сух, ние гледаме към регион, богат на звезди който определя един от спиралните ръкави на нашата галактика Млечен път. От двадесет и една най-ярки звезди в цялото нощно небе (така наречените звезди от 1-ва величина), седем са в тази област.', N'To see the constellations that come and go with the seasons, we need to turn our backs on the north circumpolar constellations and face south. If the winter sky seems alive with stars, it’s no illusion. Besides the obvious facts that the air is clear and dry then, we’re looking at a star-rich region that defines one of the spiral arms of our Milky Way Galaxy. Of the twenty-one brightest stars in the entire night sky (so-called 1st-magnitude stars),seven are in this area.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (183, N'В зимна вечер небето е дом на какво повечето астрономи са съгласни, че е най-великият от всички съзвездия — Орион Ловеца. Правоъгълник от ярки звезди, което включва противоположно ъгли, Бетелгейзе и Ригел от 1-ва величина, е разделен на две от диагонален ред от три ярки звезди (“Коланът"). Под колана виси ред от три звезди - "мечът" на Орион. Не се заблуждавайте от техните невдъхновяващ вид с просто око; средата звездата в меча изобщо не е звезда. Орион Небула е завладяваща гледка, наподобяваща мъх петно светлина в бинокъл, където се раждат звезди.', N'On a winter evening, the sky is home to what most astronomers agree is the grandest of all constellations — Orion the Hunter. A rectangle of bright stars, which includes, at opposite corners, 1st-magnitude Betelgeuse and Rigel, is bisected by a diagonal row of three bright stars (the “belt”). Beneath the belt hangs a row of three stars — Orion’s “sword.” Don’t be fooled by their uninspiring naked-eye appearance; the middle star in the sword isn’t a star at all. The Orion Nebula is a captivating sight, resembling a fuzzy patch of light in binoculars, where stars are born.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (184, N'Тази карта показва зимното небе в 02:00 сутринта на 1 декември; полунощ на 1 януари и 22:00 ч. на 1 февруари.', N'This map shows the winter sky at 2 a.m. on December 1; midnight on January 1; and 10 p.m. on February 1.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (185, N'Орион служи като център на ослепителна група от звезди и съзвездия. Следвайте пояса на Орион, за да намерите Сириус, най-ярката звезда, водеща Голямото куче. Той блести красиво близо до хоризонта през зимата. Продължавайки от пояса на Орион, намерете V-образните Хиади, представляващи „главата“ на Бика Телец и групата Плеяди наблизо.Най-горният рог на Телец се свързва с Капела в Аурига Колесничаря, разположена над Орион.Спътниците на Орион включват Близнаците Близнаци, открити чрез удължаване на линия от Ригел през Бетелгейзе. През 2005 г. Сатурн се присъединява към Близнаци.По средата между Сириус, Полукс и Кастор ще забележите звездата Процион от първа величина, представляваща Малкото куче, Малкото куче.', N'Orion serves as the centerpiece for a dazzling group of stars and constellations. Follow Orion''s belt to find Sirius, the brightest star, leading Canis Major. It shimmers beautifully near the horizon during winter. Continuing from Orion''s belt, locate the V-shaped Hyades representing Taurus the Bull''s "head" and the Pleiades cluster nearby. Taurus''s uppermost horn connects to Capella in Auriga the Charioteer, situated above Orion. Orion''s companions include Gemini the Twins, found by extending a line from Rigel through Betelgeuse. In 2005, Saturn joins Gemini. Midway between Sirius and Pollux and Castor, you''ll spot the 1st-magnitude star Procyon, representing Canis Minor, the Little Dog.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (186, N'Пролетни съзвездия
', N'Spring constellations', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (187, N'Докато дните се удължават и времето се затопля, Орион и неговата зимна свита се придвижват бавно към западното небе. Лъвът Лъв сега заема централно място високо на юг. Най-забележимата характеристика на Лъва е астеризъм (група от звезди), който напомня на наблюдателите за сърп или обърнат назад въпросителен знак. Периодът на въпросителния знак е звездата от 1-ва величина Регул. Отляво на сърпа има три звезди, които образуват правоъгълен триъгълник. Виждаме Лъва отстрани; сърпът очертава главата му, а триъгълникът - задните части. Погледнат с малко въображение, Лео определено има котешки профил.

', N'As the days lengthen and the weather warms, Orion and his wintry retinue process slowly into the western sky. Leo the Lion now assumes center stage high in the south. Leo’s most noticeable feature is an asterism (a grouping of stars) that reminds observers of a sickle or a backward question mark. The period on the question mark is the 1st-magnitude star Regulus. To the left of the Sickle are three stars that form a right triangle. We see the Lion from the side; the Sickle outlines his head, and the triangle, his hindquarters. Viewed with a little imagination, Leo definitely sports a feline profile.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (188, N'През пролетта Голямата мечка се появява почти над главата от средните северни ширини. Ако ти следваш Дипър далеч от купа, вие ще „прескочите до Арктур“, златисто-жълто звезда от 1-ва величина в съзвездието Воловар пастирят. Самото съзвездие е оформено като огромно хвърчило, с Арктур в основата си. Продължава дъгата, ще „спринтирате до Spica“. Тази синьо-бяло звезда от 1-ва величина е в Дева, което е огромно, разпръснато съзвездие. Ако погледнете отдолу и на дясно от Spica, ще забележите спретната малка група от четири ярки звезди, които приличат на очертанията на платно.', N'During spring, the Big Dipper appears nearly overhead from mid-northern latitudes. If you follow the handle of the Dipper away from the bowl, you’ll “arc to Arcturus,” a golden-yellow 1st-magnitude star in theconstellation Boötes the Herdsman. The constellation itself is shaped like a huge kite, with Arcturus at its base. Continuing the arc, you’ll “sprint to Spica.” This blue-white 1st-magnitude star is in Virgo, which is a huge, sprawling constellation. If you look below and to the right of Spica, you’ll spot a neat little group of four bright stars that resembles the outline of a sail.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (189, N'01:00 ч. на 1 март; 23:00 ч. на 1 април; 21:00 ч. на 1 май. Добавете един час за лятното часово време.', N'1 a.m. on March 1; 11 p.m. on April 1; 9 p.m. on May 1. Add one hour for daylight-saving time.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (190, N'Това е съзвездието Корвус Врана. Винаги съм се впечатлявал колко величествено изглежда това малко съзвездие, кацнало над върховете на дърветата на юг на ясна пролетна вечер.', N'This is the constellation Corvus the Crow. I’m always impressed at how stately this little constellation looks, perched above the treetops to the south on a clear spring evening.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (191, N'Летни съзвездия', N'Summer constellations
', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (192, N'Лятото е сезон на смесени благословии за астрономите. Нощите са топли, но кратки и често мъгливи. Сякаш това не е достатъчно лошо, с което трябва да се борим рояци кръвосмучещи комари! Ако оставим настрана мъглата и насекомите, лятното небе е истинска галерия от космически шедьоври. Млечният път се извива високо напречно небето, което е по-богато от зимния си аналог, защото сега гледаме към сърцето на нашата галактика. Доминиращи във вечерното небе са три от 1-ва величина звезди, образуващи летния триъгълник. Вега е най-ярката от трите и се намира в красиво малко съзвездие, наречено Лира Лирата.', N'Summer is a season of mixed blessings for astronomers. The nights are warm but short and often hazy. As that weren’t bad enough, we have to contend with swarms of blood-sucking mosquitoes! Haze and insects aside, the summer sky is a veritable gallery of cosmic masterpieces. The Milky Way arches high across the sky, which is richer than its winter counterpart because we now look toward the heart of our galaxy. Dominating the evening sky are three 1st-magnitude stars forming the Summer Triangle. Vega is the brightest of the three and is located in a nifty little constellation called Lyra the Lyre.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (193, N'Денеб, втората звезда в летния триъгълник, служи като небесната опашка на Лебеда Лебед, и заедно с четири други видни звезди на лебедът, колективно композира поразителният астеризъм, известен като Северния кръст, който е сложно вплетено в ефирния гоблен на Млечния път, с величествено украсен Денеб върхът на кръста, докато Албирео, известен двойна звезда, украсява основата си със своите завладяващи нюанси от сияен златистожълт и хипнотизиращ сапфир синьо, забележителен спектакъл, който изисква сила на телескоп, за да оцените напълно.', N'Deneb, the second star in the Summer Triangle, serves as the celestial tail of Cygnus the Swan, and, along with four other prominent stars of the Swan, collectively composes the striking asterism known as the Northern Cross, which is intricately woven within the ethereal tapestry of the Milky Way, with Deneb majestically adorning the pinnacle of the cross while Albireo, a renowned double star, graces its base with its captivating hues of radiant golden yellow and mesmerizing sapphire blue, a remarkable spectacle that demands the power of a telescope to fully appreciate.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (194, N'01:00 на 1 юни; 23:00 на 1 юли; 21:00 на
1 август. Добавете един час за лятното часово време.', N'1 a.m. on June 1; 11 p.m. on July 1; 9 p.m. on August 1. Add one hour for daylight-saving time.
', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (195, N'По-на юг по Млечния път е ярката звезда Алтаир и нейното родителско съзвездие, Орела Орела. Ако следвате Млечния път от Акуила към южния хоризонт, трябва да намерите група звезди, които приличат на чайник. Този астеризъм е част от Стрелец Стрелец. Това съзвездие маркира местоположението на центъра на нашата галактика. Районът гъмжи от съкровища на дълбокото небе - особено ярки мъглявини и звездни купове. Вдясно от чайника е румената звезда от 1-ва величина Антарес, „сърцето“ на Скорпион Скорпионът. Подобно на зимната звезда Бетелгейзе, Антарес е червен свръхгигант в последните етапи от живота си. Редица от звезди във формата на рибарска кука надолу и вляво от Антарес образува опашката и жилото на Скорпиона, докато изправен ред от три звезди отдясно на Антарес маркира местоположението на ноктите му.', N'Farther south on the Milky Way is the bright star Altair and its parent constellation, Aquila the Eagle. If you follow the Milky Way from Aquila toward the southern horizon, you should find a group of stars that looks like a teapot. This asterism is part of Sagittarius the Archer. This constellation marks the location of our galaxy’s center. The area teems with deep-sky treasures — especially bright nebulaeand star clusters. To the right of the teapot is the ruddy 1st-magnitude star Antares, the “heart” of Scorpius the Scorpion. Like the winter star Betelgeuse, Antares is a red supergiant star in the last stages of its life. A fishhook-shaped row of stars trailing down and to the left of Antares forms the Scorpion’s tail and stinger, while an upright row of three stars to Antares’s right marks the location of its claws.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (196, N'Есенни съзвездия', N'Autumn constellations', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (197, N'Когато нощите започват да се удължават и хладът прониква във въздуха, летният Млечен път излиза от централната сцена (въпреки че летният триъгълник остава видим на запад до началото на зимата). След летния триъгълник е едно от най-красивите съзвездия на нощното небе - делфинът Делфин. Четири звезди, подредени като диамант оформя главата на делфина, докато една пета създава опашката. Можете да си представите делфин, изскачащ от водата, докато гледате това съзвездие.', N'As the nights begin to lengthen and a chill pervades the air, the summer Milky Way exits center stage (although the Summer Triangle remains visible in the west until early winter). Following the Summer Triangle is one of the night sky’s prettiest constellations — Delphinus the Dolphin. Four stars, arranged like a diamond, form the Dolphin’s head, while a fifth creates the tail. You can imagine a dolphin leaping out of the water as you gaze at this constellation.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (198, N'След него има доста безплодна небесна шир, чиято най-забележителната характеристика е Големият площад на Крилатият кон Пегас. Алферац е на върха левия ъгъл на Големия площад. От тук два реда от звезди, разклонени и нагоре. Това е съзвездието Принцесата Андромеда. И да, той е дом на велика галактика Андромеда. На разстояние 2,7 милиона светлинни години от Земята, това е най-отдалеченият обект лесно видими с просто око. През бинокъл, обаче ще видите елипсовидно сияние (на галактиката светло ядро), което изглежда по-голямо в малко телескопи.', N'In its wake is a rather barren expanse of sky whose most prominent feature is the Great Square of Pegasus the Winged Horse. Alpheratz is at the top left corner of the Great Square. From here, two rows of stars branch out and up. This is the constellation Andromeda the Princess. And yes, it is home to the great Andromeda Galaxy. At a distance of 2.7 million light-years from Earth, it’s the most remote object readily visible to the naked eye. Through binoculars, however, you’ll see an elliptical glow (the galaxy’s bright nucleus), which appears larger in small telescopes.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (199, N'01:00 на 1 септември; 23:00 на 1 октомври;
21:00 на 1 ноември. Добавете един час за зимно часово време.', N'1 a.m. on September 1; 11 p.m. on October 1; 9 p.m. on November 1. Add one hour for daylight-saving time.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (200, N'Сега, след като ви запознах с някои от съзвездията, е време да се отправите и да намерите свои собствени приятели. Обширното нощно небе ще ви стане по-познато, след като прекарате качествено време в изучаване на „лицата“ на съзвездията. ', N'Now that I’ve introduced you to some of the constellations, it’s time to head out and make your own friends. The expansive night sky will become more familiar to you after spending quality time learning the “faces” of the constellations.', 15)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (201, N'Звезди и съзвездия', N'Stars and Constellations', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (202, N'Луна', N'Moon', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (203, N'Събития', N'Events', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (204, N'За мен', N'About', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (205, N'Преведи', N'Translate', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (206, N'Цифров модел на релефа', N'Digital elevation model', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (208, N'Гравитационна карта', N'Gravity map', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (209, N'Наличие на водород', N'Hydrogen​ ​Abundance', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (210, N'Грапавост на повърхността', N'Surface​ ​Roughness', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (228, N'кратерът Коперник, гледан от орбита.', N'Copernicus crater viewed from orbit.', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (234, N'Този набор от данни показва топографията на Луната. Инструментът LOLA на борда на LRO е измерил височината на повече от 6 милиарда точки на лунната повърхност, така че учените вече разполагат с по-добра топография на Луната от всяко друго планетарно тяло в Слънчевата система!Червеното и бялото обозначават големи височини, а синьото и лилавото - малки височини.', N'This​ ​dataset​ ​shows​ ​the​ ​Moon''s​ ​topography.​ ​The​ ​LOLA​ ​instrument​onboard​ ​LRO​ ​has​ ​measured​ ​the altitude​ ​of​ ​more​ ​than​ ​6​ ​billion​ ​points​ ​on​ ​the​lunar​ ​surface,​ ​so​ ​that​ ​scientists​ ​now​ ​have​ ​better​ ​topography for​ ​the​ ​Moon​than​ ​any​ ​other​ ​planetary​ ​body​ ​in​ ​the​ ​solar​ ​system!​ ​Red​ ​and​ ​white​ ​indicate​high​ ​altitudes and​ ​blue​ ​and​ ​purple​ ​indicate​ ​low​ ​altitudes.', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (237, N'Tази перспектива, известна като проекция на Меркатор, показва далечната страна на Луната в центъра, а близката страна (гледана от Земята) - от двете страни.', N'​​This perspective, known as a Mercator projection, shows the far side of the moon in the center and the near side (as viewed from Earth) at either side.', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (238, N'Карта на гравитацията', N'Gravity​ ​Map', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (239, N'Картите на гравитационното поле разкриват характеристики като тектонични структури, вулканични форми на релефа, пръстени на басейни и централни върхове на кратери. Гравитационното поле на Луната не прилича на това на никоя от земните планети в нашата Слънчева система.', N'Gravity​ ​field​ ​maps​ ​reveal​ ​features​ ​such​ ​as​ ​tectonic​ ​structures,​ ​volcanic​ ​landforms,​ ​basin​ ​rings,​ ​and crater​ ​central​ ​peaks.​ ​The​ ​moon''s​ ​gravity​ ​field​ ​is​ ​unlike​ ​that​ ​of​ ​any​ ​terrestrial​ ​planet​ ​in​ ​our​ ​solar​ ​system.', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (240, N'Областите на южния полюс на Луната, в които вероятно има големи залежи от замръзнала вода, са оцветени в синьо на тази карта.', N'Areas of the moon''s south pole with possibly high deposits of frozen water are colored blue in this map.', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (241, N'Наличие на водород', N'Hydrogen​ ​Abundance', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (242, N'Данните потвърждават, че водородът в постоянно засенчените области на лунните полюси е под формата на воден лед. Този воден лед може да бъде задържан за неопределено време.', N'Data​ ​confirmed​ ​hydrogen​ ​in​ ​the​ ​permanently​ ​shaded​ ​regions​ ​of​ ​the​ ​lunar​ ​poles​ ​is​ ​in​ ​the​ ​form​ ​of water-ice.​ ​This​ ​water-ice​ ​may​ ​be​ ​trapped​ ​indefinitely.', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (243, N'Камъни, събрани на дъното на кратера Анаксагор', N'​​​Boulders clustered on the floor of Anaxagoras crater', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (244, N'Грапавост на повърхността', N'Surface​ ​Roughness', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (245, N'Този набор от данни показва грапавостта на лунната повърхност. Грубите повърхности показват наличието на големи скали, които могат да представляват опасност за бъдещите лунни апарати. Най-грубите повърхности са червени и бели, а по-гладките - сини.', N'This​ ​dataset​ ​shows​ ​the​ ​moon''s​ ​surface​ ​roughness.​ ​Rough​ ​surfaces​ ​indicate​ ​the​ ​presence​ ​of​ ​large rocks,​ ​which​ ​may​ ​pose​ ​hazards​ ​for​ ​future​ ​lunar​ ​landers.​ ​The​ ​roughest​ ​surfaces​ ​are​ ​red​ ​and​ ​white​ ​while the​ ​smoother​ ​areas​ ​are​ ​blue.', 4)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (246, N'Класификация на звездите по температура, цвят и размер.', N'Stars classification by temperature, color and size.', 13)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (247, N'Няма такава звезда в списъка', N'No such star on the list', 13)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (248, N'Генерирай!', N'Generate!', 14)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (249, N'Формиране на луната', N'Moon Formation', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (250, N'Лунни фази', N'Moon Phases', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (251, N'Затъмнения', N'Eclipses', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (252, N'Добави Събитие', N'Add Event', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (253, N'Обнови Събитие', N'Add Event', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (254, N'Изтрий Събитие', N'Add Event', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (255, N'Име на английски език', N'Name in english', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (256, N'Описание на английски език', N'Description in english', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (257, N'Име на български език', N'Name in bulgarian', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (258, N'Описание на български език', N'Description in bulgarian', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (259, N'Метеоритен дъжд ли е?', N'Is it meteor shower?', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (260, N'Да', N'Yes', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (261, N'Не', N'No', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (262, N'Начална дата', N'Start date', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (263, N'Крайна дата', N'End date', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (264, N'Изпрати', N'Submit', 2)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (265, N'Излез', N'Logout', 16)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (266, N'Преведи', N'Translate', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (267, N'Влез', N'Sign in', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (268, N'Потребителско име', N'Username', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (269, N'Парола', N'Password', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (270, N'Регистрирай се', N'Registrate', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (271, N'Нямаш профил? ', N'Don’t have an account? ', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (272, N'Здравей, Приятел!', N'Hello, Friend!', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (273, N'Регистрирай се и имай достъп до повече функционалности, като звезден навигатор, генератор на звездни карти и добавяй предстоящи небесни събития.', N'Registrate and access more features like a star navigator, star chart generator and add upcoming celestial events.', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (274, N'Не искаш да си направиш профил? Няма проблем! Можеш да използваш Астроно, но някои функционалности ще липсват.', N'Don’t want to make an account? No problem! You can still use Astrono, though some functionalities may be limited', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (275, N'Добре дошъл отново!', N'Welcome Back!', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (276, N'За достъп до повече функционалности, влез в профила си.', N'To access more interesting features please login.', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (277, N'Създай профил', N'Create Account', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (278, N'Имейл', N'Email', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (279, N'    Имаш профил? ', N'Have an account? ', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (280, N'Влез', N'Sign in', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (281, N'Потребителско име', N'Username', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (282, N'Парола', N'Password', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (283, N'Регистрирай се', N'Registrate', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (284, N'Нямаш профил? ', N'Don’t have an account? ', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (285, N'Здравей, Приятел!', N'Hello, Friend!', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (286, N'Регистрирай се и имай достъп до повече функционалности, като звезден навигатор, генератор на звездни карти и добавяй предстоящи небесни събития.', N'Registrate and access more features like a star navigator, star chart generator and add upcoming celestial events.', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (287, N'Не искаш да си направиш профил? Няма проблем! Можеш да използваш Астроно, но някои функционалности ще липсват.', N'Don’t want to make an account? No problem! You can still use Astrono, though some functionalities may be limited', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (288, N'Добре дошъл отново!', N'Welcome Back!', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (289, N'За достъп до повече функционалности, влез в профила си.', N'To access more interesting features please login.', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (290, N'Създай профил', N'Create Account', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (291, N'Имейл', N'Email', 0)
GO
INSERT [dbo].[Translations] ([Id], [Bg], [En], [Page]) VALUES (292, N'Влез в профила си', N'Sign in', 0)
GO
SET IDENTITY_INSERT [dbo].[Translations] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 17.4.2024 г. 22:29:49 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 17.4.2024 г. 22:29:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 17.4.2024 г. 22:29:49 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 17.4.2024 г. 22:29:49 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 17.4.2024 г. 22:29:49 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 17.4.2024 г. 22:29:49 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 17.4.2024 г. 22:29:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Translations] ADD  DEFAULT ((0)) FOR [Page]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [astronoapi] SET  READ_WRITE 
GO
