USE [master]
GO
/****** Object:  Database [AngleComm]    Script Date: 7/9/2024 9:36:10 PM ******/
CREATE DATABASE [AngleComm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AngleComm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AngleComm.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AngleComm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AngleComm_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AngleComm] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AngleComm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AngleComm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AngleComm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AngleComm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AngleComm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AngleComm] SET ARITHABORT OFF 
GO
ALTER DATABASE [AngleComm] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AngleComm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AngleComm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AngleComm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AngleComm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AngleComm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AngleComm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AngleComm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AngleComm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AngleComm] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AngleComm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AngleComm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AngleComm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AngleComm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AngleComm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AngleComm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AngleComm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AngleComm] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AngleComm] SET  MULTI_USER 
GO
ALTER DATABASE [AngleComm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AngleComm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AngleComm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AngleComm] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AngleComm] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AngleComm] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AngleComm] SET QUERY_STORE = ON
GO
ALTER DATABASE [AngleComm] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AngleComm]
GO
/****** Object:  Schema [[auth]]]    Script Date: 7/9/2024 9:36:10 PM ******/
CREATE SCHEMA [[auth]]]
GO
/****** Object:  Table [dbo].[AppSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppSlider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[FilePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppSlider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Ordered] [nvarchar](max) NULL,
	[OrderedOn] [nvarchar](max) NULL,
	[ItemId] [int] NULL,
	[OrderId] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Subcategory] [varchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[StateId] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FashionSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FashionSlider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[FilePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_FashionSlider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeSlider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[FilePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_HomeSlider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] NOT NULL,
	[FileExtension] [nvarchar](max) NULL,
	[FilePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MerchantOrder]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MerchantOrder](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[RazorpayKey] [nvarchar](max) NULL,
	[Amount] [int] NULL,
	[Currency] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_MerchantOrder] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Discount] [int] NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NULL,
	[UserId] [int] NULL,
	[PaymentId] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[PaymentMethodId] [int] NULL,
	[TotalAmount] [int] NULL,
	[ShippingCharges] [int] NULL,
	[AmountReduced] [int] NULL,
	[AmountPaid] [int] NULL,
	[OrderId] [int] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Provider] [nvarchar](max) NULL,
	[Available] [nvarchar](max) NULL,
	[Reason] [nvarchar](max) NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentRequest]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentRequest](
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Amount] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Price] [varchar](max) NULL,
	[CategoryId] [int] NULL,
	[OfferId] [int] NULL,
	[Quantity] [int] NULL,
	[FilePath] [varchar](max) NULL,
	[CartItemId] [int] NULL,
	[ItemId] [int] NULL,
	[ReviewId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecentSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecentSlider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[FilePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_RecentSlider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Responses]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responses](
	[Status] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialLogins]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialLogins](
	[name] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[provider] [nvarchar](max) NULL,
	[provideid] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[token] [nvarchar](max) NULL,
	[idToken] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Profilepic] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Phonenumber] [varchar](max) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[GenderId] [int] NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NULL,
	[CityId] [int] NULL,
	[CartId] [int] NULL,
	[OrderId] [int] NULL,
	[PaymentId] [int] NULL,
	[ReviewId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Cart] FOREIGN KEY([Id])
REFERENCES [dbo].[Cart] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Cart]
GO
/****** Object:  StoredProcedure [dbo].[CreateAppSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateAppSlider]
    @Name VARCHAR(MAX),
    @Price VARCHAR(MAX),
    @Description VARCHAR(MAX),
    @FilePath VARCHAR(MAX)
AS
BEGIN
    INSERT INTO dbo.AppSlider ([Name], [Price], [Description], [FilePath])
    VALUES (@Name, @Price, @Description, @FilePath);
END;
GO
/****** Object:  StoredProcedure [dbo].[CreateCart]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCart]
 @UserId int,
 @Ordered varchar(max),
 @OrderedOn varchar(max),
 @ItemId int,
 @OrderId int
AS
BEGIN
    INSERT INTO dbo.Cart([UserId], [Ordered], [OrderedOn], [ItemId],[OrderId])
    VALUES (@UserId, @Ordered, @OrderedOn, @ItemId, @OrderId);
END;
GO
/****** Object:  StoredProcedure [dbo].[CreateCategory]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreateCategory]
@Name varchar(max)
as
begin
insert into [AngleComm].[dbo].[Category] ([Name])
  values(@Name);
end
GO
/****** Object:  StoredProcedure [dbo].[CreateFashionSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateFashionSlider]
    @Name VARCHAR(MAX),
    @Price VARCHAR(MAX),
    @Description VARCHAR(MAX),
    @FilePath VARCHAR(MAX)
AS
BEGIN
    INSERT INTO dbo.FashionSlider([Name], [Price], [Description], [FilePath])
    VALUES (@Name, @Price, @Description, @FilePath);
END;
GO
/****** Object:  StoredProcedure [dbo].[CreateHomeSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateHomeSlider]
    @Name VARCHAR(MAX),
    @Price VARCHAR(MAX),
    @Description VARCHAR(MAX),
    @FilePath VARCHAR(MAX)
AS
BEGIN
    INSERT INTO dbo.HomeSlider([Name], [Price], [Description], [FilePath])
    VALUES (@Name, @Price, @Description, @FilePath);
END;
GO
/****** Object:  StoredProcedure [dbo].[CreateItems]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreateItems]
@CartId int,
@ProductId int
as
begin
insert into [AngleComm].[dbo].[Items] ([CartId],[ProductId])
  values (@CartId,@ProductId);
end
GO
/****** Object:  StoredProcedure [dbo].[CreateOffers]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreateOffers]
@Title varchar(max),
@Discount int
as
begin
insert into  [AngleComm].[dbo].[Offers] ([Title],[Discount])
  values (@Title,@Discount);
end
GO
/****** Object:  StoredProcedure [dbo].[CreateOrder]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreateOrder]
@CartId int,
@UserId int,
@PaymentId int
as
begin
insert into [AngleComm].[dbo].[Order]([CartId],[UserId],[PaymentId])
  values (@CartId,@UserId,@PaymentId);
end
GO
/****** Object:  StoredProcedure [dbo].[CreatePayment]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreatePayment]
@UserId int, 
@PaymentMethodId int,
@TotalAmount int,
@ShippingCharges int,
@AmountReduced int,
@AmountPaid int,
@OrderId int
as
begin
insert into [AngleComm].[dbo].[Payment] ([UserId],[PaymentMethodId],[TotalAmount],[ShippingCharges],[AmountReduced]
      ,[AmountPaid],[OrderId])
  values(@UserId,@PaymentMethodId,@TotalAmount,@ShippingCharges,@AmountReduced,@AmountPaid,@OrderId);

end
GO
/****** Object:  StoredProcedure [dbo].[CreatePaymentMethod]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreatePaymentMethod]
@Type nvarchar(max),
@Provider nvarchar(max),
@Available nvarchar(max),
@Reason nvarchar(max)
as
begin
insert into [AngleComm].[dbo].[PaymentMethod] ([Type],[Provider],[Available],[Reason])
  values (@Type,@Provider,@Available,@Reason);
end
GO
/****** Object:  StoredProcedure [dbo].[CreateProducts]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreateProducts]
@Name varchar(max),
@Description varchar(max),
@Price varchar(max),
@CategoryId int,
@OfferId int,
@Quantity int,
@FilePath varchar(max),
@CartItemId int,
@ItemId int,
@ReviewId int
as
begin
insert into [AngleComm].[dbo].[Product] ([Name],[Description],[Price],[CategoryId],[OfferId],[Quantity],[FilePath]
      ,[CartItemId],[ItemId],[ReviewId])
	  values(@Name,@Description,@Price,@CategoryId,@OfferId,@Quantity,@FilePath,@CartItemId,@ItemId,@ReviewId);

end
GO
/****** Object:  StoredProcedure [dbo].[CreateRecentSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateRecentSlider]
    @Name VARCHAR(MAX),
    @Price VARCHAR(MAX),
    @Description VARCHAR(MAX),
    @FilePath VARCHAR(MAX)
AS
BEGIN
    INSERT INTO dbo.RecentSlider([Name], [Price], [Description], [FilePath])
    VALUES (@Name, @Price, @Description, @FilePath);
END;
GO
/****** Object:  StoredProcedure [dbo].[CreateReviews]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreateReviews]
@Name  varchar(max),
@UserId  int,
@ProductId    int
as
begin
insert into  [AngleComm].[dbo].[Reviews] ([Name],[UserId],[ProductId])
  values
  (@Name,@UserId,@ProductId);

end
GO
/****** Object:  StoredProcedure [dbo].[CreateUser]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreateUser]
@Profilepic varchar(max),
@Name varchar(max),
@Email varchar(max),
@Phonenumber varchar(max),
@Address1 varchar(max),
@Address2 varchar(max),
@GenderId int,
@CountryId int,
@StateId int,
@CityId int,
@CartId int,
@OrderId int,
@PaymentId int,
@ReviewId int
as
begin
insert into
  [AngleComm].[dbo].[User] ([Profilepic],[Name],[Email],[Phonenumber],[Address1],[Address2],[GenderId],[CountryId],[StateId],
  [CityId],[CartId],[OrderId],[PaymentId],[ReviewId])
  values (@Profilepic,@Name,@Email,@Phonenumber,@Address1,@Address2,@GenderId,@CountryId,@StateId,@CityId,@CartId,
@OrderId,@PaymentId,@ReviewId);
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteAppSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteAppSlider]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[AppSlider] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteCart]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCart]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[Cart] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteCategory]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCategory]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[Category] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteCity]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCity]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[City] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteCountry]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCountry]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[Country] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteFashionSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteFashionSlider]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[FashionSlider] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteGender]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteGender]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[Gender] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteHomeSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteHomeSlider]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[HomeSlider] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteItems]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteItems]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[Items] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteOffers]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteOffers]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[Offers] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteOrder]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteOrder]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[Order] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeletePayment]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePayment]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[Payment] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeletePaymentMethod]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePaymentMethod]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[PaymentMethod] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteProducts]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteProducts]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[Product] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteRecentSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteRecentSlider]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[RecentSlider] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteReviews]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteReviews]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[Reviews] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteState]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteState]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[State] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteUser]
    @Id INT
AS
BEGIN
    DELETE FROM [AngleComm].[dbo].[User] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAlexSkills]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAlexSkills]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 6

end
GO
/****** Object:  StoredProcedure [dbo].[GetAmazonDevices]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAmazonDevices]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 7

end
GO
/****** Object:  StoredProcedure [dbo].[GetAmazonFashion]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAmazonFashion]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 8

end
GO
/****** Object:  StoredProcedure [dbo].[GetAmazonFresh]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAmazonFresh]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 9

end
GO
/****** Object:  StoredProcedure [dbo].[GetAppliances]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAppliances]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 10

end
GO
/****** Object:  StoredProcedure [dbo].[GetAppSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetAppSlider]
as
begin
select [Id]
      ,[Name]
      ,[Price]
      ,[Description]
      ,[FilePath] from dbo.AppSlider
end
GO
/****** Object:  StoredProcedure [dbo].[GetAppSliderById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAppSliderById]
    @Id INT
AS
BEGIN
    Select * FROM [AngleComm].[dbo].[AppSlider] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetBaby]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetBaby]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 11

end
GO
/****** Object:  StoredProcedure [dbo].[GetBeauty]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetBeauty]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 12

end
GO
/****** Object:  StoredProcedure [dbo].[GetBooks]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetBooks]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 13

end
GO
/****** Object:  StoredProcedure [dbo].[GetCar]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetCar]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 14

end
GO
/****** Object:  StoredProcedure [dbo].[GetCart]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetCart]
as
begin
select [Id]
      ,[UserId]
      ,[Ordered]
      ,[OrderedOn]
      ,[ItemId]
      ,[OrderId]
	   FROM [AngleComm].[dbo].[Cart]
end
GO
/****** Object:  StoredProcedure [dbo].[GetCartById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCartById]
    @Id INT
AS
BEGIN
    Select * FROM [AngleComm].[dbo].[Cart] WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetCategory]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetCategory]
as
begin
select [Id]
      ,[Name]
  FROM [AngleComm].[dbo].[Category]
end
GO
/****** Object:  StoredProcedure [dbo].[GetCategoryById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetCategoryById]
 @Id INT
as
begin
select [Id]
      ,[Name]
  FROM [AngleComm].[dbo].[Category] WHERE Id = @Id;
end
GO
/****** Object:  StoredProcedure [dbo].[GetCity]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetCity]
as
begin
select [Id]
      ,[Name]
      ,[StateId]
  FROM [AngleComm].[dbo].[City]
end
GO
/****** Object:  StoredProcedure [dbo].[GetClothing]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetClothing]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 15

end
GO
/****** Object:  StoredProcedure [dbo].[GetComputer]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetComputer]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 16

end
GO
/****** Object:  StoredProcedure [dbo].[GetCountry]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetCountry]
as
begin
select  [Id]
      ,[Name]
  FROM [AngleComm].[dbo].[Country]
end
GO
/****** Object:  StoredProcedure [dbo].[GetDecor]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetDecor]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 21

end
GO
/****** Object:  StoredProcedure [dbo].[GetElectronics]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetElectronics]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 17

end
GO
/****** Object:  StoredProcedure [dbo].[GetFashionSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetFashionSlider]
as
begin
select [Id]
      ,[Name]
      ,[Price]
      ,[Description]
      ,[FilePath] from dbo.AppSlider
end
GO
/****** Object:  StoredProcedure [dbo].[GetFashionSliderById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetFashionSliderById]
@Id INT
as
begin
select [Id]
      ,[Name]
      ,[Price]
      ,[Description]
      ,[FilePath] from dbo.AppSlider WHERE Id = @Id;
end
GO
/****** Object:  StoredProcedure [dbo].[GetFurniture]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetFurniture]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 18

end
GO
/****** Object:  StoredProcedure [dbo].[GetGarden]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetGarden]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 22

end
GO
/****** Object:  StoredProcedure [dbo].[GetGender]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetGender]
as
begin
select [Id]
      ,[Name]
  FROM [AngleComm].[dbo].[Gender]
end
GO
/****** Object:  StoredProcedure [dbo].[GetGiftCard]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetGiftCard]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 19

end
GO
/****** Object:  StoredProcedure [dbo].[GetHomeSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetHomeSlider]
as
begin
select [Id]
      ,[Name]
      ,[Price]
      ,[Description]
      ,[FilePath] from dbo.HomeSlider
end
GO
/****** Object:  StoredProcedure [dbo].[GetHomeSliderById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetHomeSliderById]
@Id INT
as
begin
select [Id]
      ,[Name]
      ,[Price]
      ,[Description]
      ,[FilePath] from dbo.AppSlider WHERE Id = @Id;
end
GO
/****** Object:  StoredProcedure [dbo].[GetItems]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetItems]
as
begin
select  [Id]
      ,[CartId]
      ,[ProductId]
  FROM [AngleComm].[dbo].[Items]
end
GO
/****** Object:  StoredProcedure [dbo].[GetItemsById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetItemsById]
@Id INT
as
begin
select  [Id]
      ,[CartId]
      ,[ProductId]
  FROM [AngleComm].[dbo].[Items] WHERE Id = @Id;
end
GO
/****** Object:  StoredProcedure [dbo].[GetMerchantOrder]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetMerchantOrder]
as
begin
select [OrderId]
      ,[RazorpayKey]
      ,[Amount]
      ,[Currency]
      ,[Name]
      ,[Email]
      ,[PhoneNumber]
      ,[Address]
      ,[Description]
      ,[Status]
  FROM [AngleComm].[dbo].[MerchantOrder]

end
GO
/****** Object:  StoredProcedure [dbo].[GetMobile]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetMobile]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 23

end
GO
/****** Object:  StoredProcedure [dbo].[GetOffers]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetOffers]
as
begin
select  [Id]
      ,[Title]
      ,[Discount]
  FROM [AngleComm].[dbo].[Offers]
end
GO
/****** Object:  StoredProcedure [dbo].[GetOffersById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetOffersById]
@Id INT
as
begin
select  [Id]
      ,[Title]
      ,[Discount]
  FROM [AngleComm].[dbo].[Offers] WHERE Id = @Id;
end
GO
/****** Object:  StoredProcedure [dbo].[GetOrder]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetOrder]
as
begin
select  [Id]
      ,[CartId]
      ,[UserId]
      ,[PaymentId]
  FROM [AngleComm].[dbo].[Order]

end
GO
/****** Object:  StoredProcedure [dbo].[GetOrderById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetOrderById]
@Id INT
as
begin
select  [Id]
      ,[CartId]
      ,[UserId]
      ,[PaymentId]
  FROM [AngleComm].[dbo].[Order] WHERE Id = @Id;

end
GO
/****** Object:  StoredProcedure [dbo].[GetPayment]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetPayment]
as
begin
select  [Id]
      ,[UserId]
      ,[PaymentMethodId]
      ,[TotalAmount]
      ,[ShippingCharges]
      ,[AmountReduced]
      ,[AmountPaid]
      ,[OrderId]
  FROM [AngleComm].[dbo].[Payment]

end
GO
/****** Object:  StoredProcedure [dbo].[GetPaymentById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetPaymentById]
@Id INT
as
begin
select  [Id]
      ,[UserId]
      ,[PaymentMethodId]
      ,[TotalAmount]
      ,[ShippingCharges]
      ,[AmountReduced]
      ,[AmountPaid]
      ,[OrderId]
  FROM [AngleComm].[dbo].[Payment] WHERE Id = @Id;

end
GO
/****** Object:  StoredProcedure [dbo].[GetPaymentMethod]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetPaymentMethod]
as
begin
select [Id]
      ,[Type]
      ,[Provider]
      ,[Available]
      ,[Reason]
  FROM [AngleComm].[dbo].[PaymentMethod]
end
GO
/****** Object:  StoredProcedure [dbo].[GetPaymentMethodById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetPaymentMethodById]
@Id INT
as
begin
select [Id]
      ,[Type]
      ,[Provider]
      ,[Available]
      ,[Reason]
  FROM [AngleComm].[dbo].[PaymentMethod] WHERE Id = @Id;
end
GO
/****** Object:  StoredProcedure [dbo].[GetPaymentRequest]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetPaymentRequest]
as
begin
select [Name]
      ,[Email]
      ,[PhoneNumber]
      ,[Address]
      ,[Amount]
  FROM [AngleComm].[dbo].[PaymentRequest]
end
GO
/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetProducts]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product]

end
GO
/****** Object:  StoredProcedure [dbo].[GetProductsById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetProductsById]
@Id INT
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] WHERE Id = @Id;

end
GO
/****** Object:  StoredProcedure [dbo].[GetRecentSlider]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetRecentSlider]
as
begin
select [Id]
      ,[Name]
      ,[Price]
      ,[Description]
      ,[FilePath] from dbo.AppSlider
end
GO
/****** Object:  StoredProcedure [dbo].[GetRecentSliderById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetRecentSliderById]
@Id INT
as
begin
select [Id]
      ,[Name]
      ,[Price]
      ,[Description]
      ,[FilePath] from dbo.AppSlider WHERE Id = @Id;
end
GO
/****** Object:  StoredProcedure [dbo].[GetResponse]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetResponse]
as
begin
select [Status]
      ,[Message]
  FROM [AngleComm].[dbo].[Responses]

end
GO
/****** Object:  StoredProcedure [dbo].[GetReviews]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetReviews]
as
begin
select  [Id]
      ,[Name]
      ,[UserId]
      ,[ProductId]
  FROM [AngleComm].[dbo].[Reviews]

end
GO
/****** Object:  StoredProcedure [dbo].[GetReviewsById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetReviewsById]
@Id INT
as
begin
select  [Id]
      ,[Name]
      ,[UserId]
      ,[ProductId]
  FROM [AngleComm].[dbo].[Reviews] WHERE Id = @Id;

end
GO
/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetUser]
as
begin
select  [Id]
      ,[Profilepic]
      ,[Name]
      ,[Email]
      ,[Phonenumber]
      ,[Address1]
      ,[Address2]
      ,[GenderId]
      ,[CountryId]
      ,[StateId]
      ,[CityId]
      ,[CartId]
      ,[OrderId]
      ,[PaymentId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[User]

end
GO
/****** Object:  StoredProcedure [dbo].[GetUserById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetUserById]
@Id INT
as
begin
select  [Id]
      ,[Profilepic]
      ,[Name]
      ,[Email]
      ,[Phonenumber]
      ,[Address1]
      ,[Address2]
      ,[GenderId]
      ,[CountryId]
      ,[StateId]
      ,[CityId]
      ,[CartId]
      ,[OrderId]
      ,[PaymentId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[User] WHERE Id = @Id;

end
GO
/****** Object:  StoredProcedure [dbo].[GetWatches]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetWatches]
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 20

end
GO
/****** Object:  StoredProcedure [dbo].[GetWatchesById]    Script Date: 7/9/2024 9:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[GetWatchesById]
@Id INT
as
begin
select [Id]
      ,[Name]
      ,[Description]
      ,[Price]
      ,[CategoryId]
      ,[OfferId]
      ,[Quantity]
      ,[FilePath]
      ,[CartItemId]
      ,[ItemId]
      ,[ReviewId]
  FROM [AngleComm].[dbo].[Product] where CategoryId = 20 and Id = @Id;

end
GO
USE [master]
GO
ALTER DATABASE [AngleComm] SET  READ_WRITE 
GO
