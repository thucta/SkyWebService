USE [NHAHANGKHACHSAN]
ALTER DATABASE [NHAHANGKHACHSAN] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NHAHANGKHACHSAN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET ARITHABORT OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET RECOVERY FULL 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET  MULTI_USER 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NHAHANGKHACHSAN', N'ON'
GO
USE [NHAHANGKHACHSAN]
GO
/****** Object:  Table [dbo].[BOOKING]    Script Date: 26/03/2017 9:53:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKING](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datein] [datetime] NOT NULL,
	[room] [int] NOT NULL,
	[detail] [nvarchar](max) NULL,
	[quanlity] [int] NOT NULL,
	[dateout] [datetime] NOT NULL,
	[users] [int] NOT NULL,
 CONSTRAINT [PK_BOOKTING] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FOOD]    Script Date: 26/03/2017 9:53:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FOOD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detail] [varchar](255) NULL,
	[foodname] [varchar](255) NOT NULL,
	[price] [money] NOT NULL,
	[infor] [int] NOT NULL,
	[image] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK__FOOD__AE55585527CCD71F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IMAGE]    Script Date: 26/03/2017 9:53:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMAGE](
	[infor] [int] NOT NULL,
	[imageurl] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_IMAGE] PRIMARY KEY CLUSTERED 
(
	[infor] ASC,
	[imageurl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INFORMATION]    Script Date: 26/03/2017 9:53:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFORMATION](
	[id] [int] IDENTITY(1,2) NOT NULL,
	[hotline] [nvarchar](11) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[timeopen] [time](4) NOT NULL,
	[timeclose] [time](4) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[intro] [ntext] NOT NULL,
	[number] [nvarchar](10) NOT NULL,
	[ward] [nvarchar](50) NOT NULL,
	[street] [nvarchar](50) NOT NULL,
	[district] [nvarchar](50) NOT NULL,
	[province] [nvarchar](50) NOT NULL,
	[urlpartner] [nchar](10) NULL,
	[partner] [int] NOT NULL,
 CONSTRAINT [PK_INFORMATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PARTNER]    Script Date: 26/03/2017 9:53:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTNER](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_FLATNAME] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RATING]    Script Date: 26/03/2017 9:53:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RATING](
	[infor] [int] NOT NULL,
	[users] [int] NOT NULL,
 CONSTRAINT [PK_RATING] PRIMARY KEY CLUSTERED 
(
	[infor] ASC,
	[users] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROOM]    Script Date: 26/03/2017 9:53:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROOM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[infor] [int] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[detail] [nvarchar](max) NULL,
	[quanlity] [nchar](10) NULL,
	[maxpeople] [int] NOT NULL,
	[price] [money] NOT NULL,
 CONSTRAINT [PK__ROOM__F3249856AFD3DED2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SERVICE]    Script Date: 26/03/2017 9:53:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NULL,
 CONSTRAINT [PK__SERVICE__25B469EADB46A87E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SERVICEINFOR]    Script Date: 26/03/2017 9:53:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICEINFOR](
	[information] [int] NOT NULL,
	[service] [int] NOT NULL,
 CONSTRAINT [PK_SERVICE_INFOR] PRIMARY KEY CLUSTERED 
(
	[information] ASC,
	[service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USERS]    Script Date: 26/03/2017 9:53:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](11) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[point] [int] NOT NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BOOKING] ON 

INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (1, CAST(N'2015-08-08 00:00:00.000' AS DateTime), 1, N'1', 1, CAST(N'2016-02-28 00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (2, CAST(N'2015-08-08 00:00:00.000' AS DateTime), 2, N'2', 2, CAST(N'2015-08-08 00:00:00.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[BOOKING] OFF
SET IDENTITY_INSERT [dbo].[FOOD] ON 

INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (3, N'111', N'111', 111.0000, 5, N'1111111111111')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (4, N'222', N'222', 2222.0000, 5, N'11111111111')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (5, N'333', N'333', 333.0000, 9, N'2222222222')
SET IDENTITY_INSERT [dbo].[FOOD] OFF
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (5, N'http://localhost:8080/SkyService/image/1313545905-001.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (5, N'http://localhost:8080/SkyService/image/201533016165813.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (5, N'http://localhost:8080/SkyService/image/29221143343_e11e599ac1_o.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (9, N'http://localhost:8080/SkyService/image/70132d2ff0fda841abb5f0dde83efe5f.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (9, N'http://localhost:8080/SkyService/image/ben-trong-khach-san-7-sao-xa-xi-nhat-the-gioi-o-dubai.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (13, N'http://localhost:8080/SkyService/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (13, N'http://localhost:8080/SkyService/image/images.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (13, N'http://localhost:8080/SkyService/image/Khach-san-3-sao-Danang-Petro.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (13, N'http://localhost:8080/SkyService/image/khach-san-hoang-thanh- (10).jpg')
SET IDENTITY_INSERT [dbo].[INFORMATION] ON 

INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (5, N'01654116641', N'Nguyen Tinh                                       ', CAST(N'10:01:00' AS Time), CAST(N'12:20:00' AS Time), N'nha hang 5 *                            ', N'day la nha hang                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', N'69        ', N'5', N'man thien', N'9                                                 ', N'HCM                                               ', NULL, 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (9, N'23', N'qwewqe', CAST(N'01:12:00' AS Time), CAST(N'01:22:22' AS Time), N'2', N'2', N'2', N'3', N'4', N'4', N'HN', N'1         ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (13, N'123', N'123', CAST(N'12:12:00' AS Time), CAST(N'04:01:00' AS Time), N'123', N'123', N'123', N'123', N'man', N'213', N'HCM', N'1         ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (15, N'123', N'123', CAST(N'12:12:00' AS Time), CAST(N'04:01:00' AS Time), N'1234', N'123', N'123', N'123', N'man', N'213', N'HCM', N'1         ', 1)
SET IDENTITY_INSERT [dbo].[INFORMATION] OFF
SET IDENTITY_INSERT [dbo].[PARTNER] ON 

INSERT [dbo].[PARTNER] ([id], [name]) VALUES (1, N'Khach San')
INSERT [dbo].[PARTNER] ([id], [name]) VALUES (2, N'Nha Hang')
SET IDENTITY_INSERT [dbo].[PARTNER] OFF
SET IDENTITY_INSERT [dbo].[ROOM] ON 

INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price]) VALUES (1, 5, N'5', N'5', N'5         ', 5, 5.0000)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price]) VALUES (2, 13, N'13', N'13', N'13        ', 13, 333.0000)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price]) VALUES (3, 9, N'9', N'9', N'9         ', 9, 9.0000)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price]) VALUES (4, 5, N'5', N'5', N'5         ', 5, 5.0000)
SET IDENTITY_INSERT [dbo].[ROOM] OFF
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (4, N'ABC', N'123        ', N'123', N'123', 1)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (5, N'111', N'111', N'111', N'111', 111)
SET IDENTITY_INSERT [dbo].[USERS] OFF
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD  CONSTRAINT [FK_BOOKTING_ROOM] FOREIGN KEY([room])
REFERENCES [dbo].[ROOM] ([id])
GO
ALTER TABLE [dbo].[BOOKING] CHECK CONSTRAINT [FK_BOOKTING_ROOM]
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD  CONSTRAINT [FK_BOOKTING_USERS] FOREIGN KEY([users])
REFERENCES [dbo].[USERS] ([id])
GO
ALTER TABLE [dbo].[BOOKING] CHECK CONSTRAINT [FK_BOOKTING_USERS]
GO
ALTER TABLE [dbo].[FOOD]  WITH CHECK ADD  CONSTRAINT [FK_FOOD_INFORMATION] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[FOOD] CHECK CONSTRAINT [FK_FOOD_INFORMATION]
GO
ALTER TABLE [dbo].[IMAGE]  WITH CHECK ADD  CONSTRAINT [FK_IMAGE_INFORMATION] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[IMAGE] CHECK CONSTRAINT [FK_IMAGE_INFORMATION]
GO
ALTER TABLE [dbo].[INFORMATION]  WITH CHECK ADD  CONSTRAINT [FK_INFORMATION_PARTNER1] FOREIGN KEY([partner])
REFERENCES [dbo].[PARTNER] ([id])
GO
ALTER TABLE [dbo].[INFORMATION] CHECK CONSTRAINT [FK_INFORMATION_PARTNER1]
GO
ALTER TABLE [dbo].[RATING]  WITH CHECK ADD  CONSTRAINT [FK_RATING_INFORMATION] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[RATING] CHECK CONSTRAINT [FK_RATING_INFORMATION]
GO
ALTER TABLE [dbo].[RATING]  WITH CHECK ADD  CONSTRAINT [FK_RATING_USERS] FOREIGN KEY([users])
REFERENCES [dbo].[USERS] ([id])
GO
ALTER TABLE [dbo].[RATING] CHECK CONSTRAINT [FK_RATING_USERS]
GO
ALTER TABLE [dbo].[ROOM]  WITH CHECK ADD  CONSTRAINT [FK_ROOM_INFORMATION] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[ROOM] CHECK CONSTRAINT [FK_ROOM_INFORMATION]
GO
ALTER TABLE [dbo].[SERVICEINFOR]  WITH CHECK ADD  CONSTRAINT [FK_SERVICE_INFOR_INFORMATION] FOREIGN KEY([information])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[SERVICEINFOR] CHECK CONSTRAINT [FK_SERVICE_INFOR_INFORMATION]
GO
ALTER TABLE [dbo].[SERVICEINFOR]  WITH CHECK ADD  CONSTRAINT [FK_SERVICE_INFOR_SERVICE] FOREIGN KEY([service])
REFERENCES [dbo].[SERVICE] ([id])
GO
ALTER TABLE [dbo].[SERVICEINFOR] CHECK CONSTRAINT [FK_SERVICE_INFOR_SERVICE]
GO
USE [master]
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET  READ_WRITE 
GO
