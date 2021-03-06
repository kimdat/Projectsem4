CREATE DATABASE [CinestarDatabase]
GO
USE [CinestarDatabase]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NULL,
	[email] [varchar](250) NULL,
	[phone] [varchar](11) NULL,
	[password] [varchar](50) NULL,
	[address] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [nvarchar](50) NULL,
	[Cemail] [varchar](100) NULL,
	[Cphone] [varchar](11) NULL,
	[Ccontent] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupon]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupon](
	[couponId] [varchar](100) NOT NULL,
	[user_Email] [varchar](250) NULL,
	[priceDiscound] [int] NULL,
	[status] [bit] NULL,
	[DateEnd] [datetime] NULL,
 CONSTRAINT [PK_Coupon] PRIMARY KEY CLUSTERED 
(
	[couponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Endow]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Endow](
	[endowId] [varchar](10) NOT NULL,
	[endowContent] [nvarchar](2000) NULL,
	[endowImage] [varchar](250) NULL,
	[endowTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_Endow] PRIMARY KEY CLUSTERED 
(
	[endowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[languageId] [int] IDENTITY(1,1) NOT NULL,
	[languageName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipCard]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipCard](
	[cardno] [varchar](50) NOT NULL,
	[totalspend] [int] NOT NULL,
	[dateregister] [date] NULL,
	[user_email] [varchar](250) NULL,
	[Point] [int] NULL,
 CONSTRAINT [PK_membershipCard] PRIMARY KEY CLUSTERED 
(
	[cardno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[movieId] [varchar](10) NOT NULL,
	[movieTitle] [nvarchar](50) NULL,
	[movieCategory] [nvarchar](50) NULL,
	[performer] [nvarchar](100) NULL,
	[filmDirector] [nvarchar](30) NULL,
	[movieContent] [nvarchar](2000) NULL,
	[image] [varchar](250) NULL,
	[trailer] [varchar](250) NULL,
	[startMovie] [date] NULL,
	[endMovie] [date] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[movieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieLanguage]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieLanguage](
	[idMovieLanguage] [int] IDENTITY(1,1) NOT NULL,
	[idMovie] [varchar](10) NULL,
	[idLanguage] [int] NULL,
 CONSTRAINT [PK_MovieLanguage] PRIMARY KEY CLUSTERED 
(
	[idMovieLanguage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieReview]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieReview](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[titleR] [nvarchar](250) NULL,
	[movieReviewContent] [nvarchar](max) NULL,
	[movieReviewView] [int] NULL,
	[type] [bit] NULL,
	[image] [varchar](500) NULL,
 CONSTRAINT [PK_movieReview] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RatingMovie]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingMovie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [varchar](10) NULL,
	[rating] [int] NULL,
	[user_rating] [varchar](250) NULL,
 CONSTRAINT [PK_RatingMovie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RatingThreater]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingThreater](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_email] [varchar](250) NULL,
	[threat_id] [int] NULL,
	[numberrating] [int] NULL,
	[comment] [nvarchar](250) NULL,
	[status] [int] NULL,
	[datecomment] [datetime] NULL,
 CONSTRAINT [PK_RatingThreater] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[roomId] [varchar](10) NOT NULL,
	[roomName] [nvarchar](50) NULL,
	[roomSize] [int] NULL,
	[roomCategory] [varchar](50) NULL,
	[threatId] [int] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[roomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RowOfSeats]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RowOfSeats](
	[rowId] [int] IDENTITY(1,1) NOT NULL,
	[roomId] [varchar](10) NULL,
	[rowNo] [varchar](10) NULL,
 CONSTRAINT [PK_RowOfSeats] PRIMARY KEY CLUSTERED 
(
	[rowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[seatId] [int] IDENTITY(1,1) NOT NULL,
	[seatNo] [int] NULL,
	[rowId] [int] NULL,
	[type] [int] NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_Seat] PRIMARY KEY CLUSTERED 
(
	[seatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Showtimes]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Showtimes](
	[showtimesId] [int] IDENTITY(1,1) NOT NULL,
	[movieId] [varchar](10) NULL,
	[roomId] [varchar](10) NULL,
	[time] [time](7) NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Showtimes] PRIMARY KEY CLUSTERED 
(
	[showtimesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Threat]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Threat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[phone] [varchar](50) NULL,
	[address] [nvarchar](500) NULL,
	[region] [nvarchar](50) NULL,
 CONSTRAINT [PK_Threat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[ticketId] [int] IDENTITY(1,1) NOT NULL,
	[showtimeId] [int] NULL,
	[user_email] [varchar](250) NULL,
	[ticketBookingTime] [date] NULL,
	[pay] [int] NULL,
	[totalPrice] [int] NULL,
	[priceHasDropped] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[ticketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketDetailsSeat]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketDetailsSeat](
	[ticketDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[ticketId] [int] NULL,
	[seatId] [int] NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_ticketDetails] PRIMARY KEY CLUSTERED 
(
	[ticketDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketDetailsWaterCorn]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketDetailsWaterCorn](
	[ticketDetailsWaterCornId] [int] IDENTITY(1,1) NOT NULL,
	[ticketId] [int] NULL,
	[idWaterCorn] [int] NULL,
	[soLuong] [int] NULL,
	[unitPrice] [int] NULL,
 CONSTRAINT [PK_TicketDetailsWaterCorn] PRIMARY KEY CLUSTERED 
(
	[ticketDetailsWaterCornId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[email] [varchar](250) NOT NULL,
	[name] [nvarchar](100) NULL,
	[dob] [datetime2](7) NULL,
	[phone] [varchar](50) NULL,
	[password] [varchar](500) NULL,
	[address] [nvarchar](500) NULL,
	[tokenlifetime] [bigint] NULL,
	[token] [varchar](250) NULL,
	[province] [nvarchar](100) NULL,
	[district] [nvarchar](100) NULL,
	[ward] [nvarchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[id_facebook] [varchar](100) NULL,
	[id_google] [varchar](100) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WaterCorn]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WaterCorn](
	[idWaterCorn] [int] IDENTITY(1,1) NOT NULL,
	[nameWaterCorn] [nvarchar](50) NULL,
	[contentWaterCorn] [nvarchar](500) NULL,
	[imageWaterCorn] [varchar](250) NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_WaterCorn] PRIMARY KEY CLUSTERED 
(
	[idWaterCorn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 9/17/2021 8:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[movie_Id] [varchar](10) NULL,
	[user_email] [varchar](250) NULL,
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([id], [userName], [email], [phone], [password], [address]) VALUES (1, N'', N'kimdat1999@gmail.com', NULL, N'123', NULL)
INSERT [dbo].[Admins] ([id], [userName], [email], [phone], [password], [address]) VALUES (2, N'', N'dai1998', NULL, N'123', NULL)
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Cid], [Cname], [Cemail], [Cphone], [Ccontent]) VALUES (105, N'thanh huy', N'hjy@gmail.com', N'0869772557', N'good')
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'aZoYcN8Tev', N'kimdat1307@gmail.com', 20000, 0, CAST(N'2021-10-16T19:02:40.203' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'Clx9qUq1TQ', N'kimdat1307@gmail.com', 100000, 0, CAST(N'2021-10-16T18:21:18.557' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'CP100BD', N'bindai243156@gmail.com', 100000, 0, CAST(N'2021-10-13T14:34:46.560' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'CP20BD', N'bindai243156@gmail.com', 20000, 0, CAST(N'2021-10-15T04:04:32.007' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'CP50BD', N'bindai243156@gmail.com', 40000, 0, CAST(N'2021-10-15T21:04:01.787' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'CP80BD', N'bindai243156@gmail.com', 80000, 0, CAST(N'2021-10-15T03:09:04.543' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'croUZpn1F-', N'kimdat1307@gmail.com', 40000, 1, CAST(N'2021-10-15T02:40:22.107' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'DSy7jytbKc', N'kimdat1307@gmail.com', 100000, 0, CAST(N'2021-10-16T10:17:09.677' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'g20AHf6KrG', N'kimdat1307@gmail.com', 40000, 0, CAST(N'2021-10-13T14:41:26.830' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'JmkLftkwZQ', N'kimdat1307@gmail.com', 60000, 0, CAST(N'2021-10-16T19:01:49.060' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'JNDHocsCGf', N'kimdat1307@gmail.com', 100000, 1, CAST(N'2021-10-13T12:52:51.837' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'LGULnxkIrT', N'kimdat1307@gmail.com', 20000, 0, CAST(N'2021-10-16T19:02:16.987' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'lxxySXBIgt', N'kimdat1307@gmail.com', 20000, 0, CAST(N'2021-10-15T02:40:37.107' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'Mq-3BJh7uQ', N'kimdat1307@gmail.com', 40000, 0, CAST(N'2021-10-16T18:54:17.137' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'se7i2HrQLh', N'kimdat1307@gmail.com', 20000, 1, CAST(N'2021-10-16T10:22:42.383' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'UIubpYvml1', N'kimdat1307@gmail.com', 100000, 0, CAST(N'2021-10-15T02:39:56.090' AS DateTime))
INSERT [dbo].[Coupon] ([couponId], [user_Email], [priceDiscound], [status], [DateEnd]) VALUES (N'xF41kr0xjX', N'kimdat1307@gmail.com', 100000, 0, CAST(N'2021-10-16T18:54:37.640' AS DateTime))
GO
INSERT [dbo].[Endow] ([endowId], [endowContent], [endowImage], [endowTitle]) VALUES (N'E001', N'- Giá vé ưu đãi: 45.000 đ/vé 2D và 55.000 đ/vé 3D.- Thời gian: Áp dụng cho tất cả các suất chiếu ngày Thứ Hai hàng tuần.- Lưu ý: Không áp dụng cho các ngày lễ/tết.
', N'c_monday.jpg', N'Tẹt Ga 45K')
INSERT [dbo].[Endow] ([endowId], [endowContent], [endowImage], [endowTitle]) VALUES (N'E002', N'<p>Combo BIG STAR ưu đãi vào ngày thứ Ba hàng tuần, bao gồm: 1 vé xem phim, 1 ly nước 22oz, 1 bắp 44oz</p>

<p>Giá combo áp dụng: </p>

<p> </p>

<p>- Tại Cinestar Sinh Viên, Mỹ Tho và Huế: 79,000đ </p>

<p> </p>

<p>- Tại Cinestar Hai Bà Trưng, Quốc Thanh và Đà Lạt: 99,000đ </p>

<p> </p>

<p>Điều kiện: </p>

<p> </p>

<p>- Không áp dụng đồng thời với các chương trình khuyến mãi khác.</p>

<p> </p>

<p>- Chỉ áp dụng khi mua trực tiếp tại quầy.</p>

<p> </p>
', N'big.jpg', N'BIG STAR THỨ 3')
INSERT [dbo].[Endow] ([endowId], [endowContent], [endowImage], [endowTitle]) VALUES (N'E003', N'<p>Thành Viên Cinestar được áp dụng giá vé ưu đãi, hạng thẻ C’FRIEND và C’VIP.</p>

<p><u>Thời gian:</u> <strong>Thứ Tư</strong> hàng tuần</p>

<p>- Giá vé: 45,000 đ/vé 2D và  55,000 đ/ vé 3D</p>

<p>- Giảm 10% giá trị hóa đơn bắp nước cho chủ thẻ C’FRIEND và 15% cho chủ thẻ C’VIP.</p>

<p>- Chương trình tích điểm thành viên và các điều kiện thành viên khác được áp dụng.</p>

<p>Lưu ý:</p>

<p>- Chỉ áp dụng mua trực tiếp tại quầy.</p>

<p>- Chương trình không giới hạn số vé và số lần giao dịch trong thời gian diễn ra.</p>

<p>- Không áp dụng cho các ngày lễ/tết.</p>
', N'c_member.jpg', NULL)
INSERT [dbo].[Endow] ([endowId], [endowContent], [endowImage], [endowTitle]) VALUES (N'E004', N'<p style="text-align:left"><span style="font-size:medium"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">&Aacute;P DỤNG MỨC GI&Aacute; 45K / V&Eacute; 2D&nbsp;- CẢ TUẦN - TO&Agrave;N HỆ THỐNG</span></span></span></span></p>

<p style="text-align:left"><span style="font-size:medium"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;KH&Ocirc;NG đắn đo về gi&aacute; v&eacute;<br />
&nbsp;KH&Ocirc;NG nhức đầu nghĩ điểm hẹn cuối tuần<br />
&nbsp;KH&Ocirc;NG cần miệt m&agrave;i lựa chọn phim</span></span></span></span></p>

<p style="text-align:left"><span style="font-size:medium"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">&Aacute;p dụng d&agrave;nh cho gi&aacute;o vi&ecirc;n, giảng vi&ecirc;n,&nbsp;học sinh, sinh vi&ecirc;n v&agrave;&nbsp;thanh ni&ecirc;n dưới 22 tuổi<strong>, tr&ecirc;n to&agrave;n hệ thống.</strong></span></span></span></span></p>

<p style="text-align:left"><span style="font-size:medium"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">Ưu đ&atilde;i gi&aacute; v&eacute; xem phim chỉ&nbsp;<strong>45,000đ/v&eacute; 2D.</strong></span></span></span></span></p>

<p style="text-align:left">&nbsp;</p>
', N'hssv.jpg', N'TẸT GA 45K SUỐT TUẦN TOÀN HỆ THỐNG')
INSERT [dbo].[Endow] ([endowId], [endowContent], [endowImage], [endowTitle]) VALUES (N'E005', N'<p>- Áp dụng cho mỗi vé xem phim vào các suất trước 10h và sau 22h hàng ngày.</p>

<p> </p>

<p>- Mua vé giá ưu đãi: 45.000 đ / vé 2D, 55.000 đ / vé 3D.</p>

<p> </p>

<p>Lưu ý: Chương trình không áp dụng cho ngày lễ/tết.</p>
', N'c_ten.jpg', N'C''TEN - KHUYẾN MÃI TẠI MỐC 10H')
GO
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([languageId], [languageName]) VALUES (1, N'Phụ đề tiếng việt')
INSERT [dbo].[Language] ([languageId], [languageName]) VALUES (2, N'Thuyết minh tiếng việt')
SET IDENTITY_INSERT [dbo].[Language] OFF
GO
INSERT [dbo].[MembershipCard] ([cardno], [totalspend], [dateregister], [user_email], [Point]) VALUES (N'M0TaqnouzbQf', 11910000, CAST(N'2021-08-28' AS Date), N'bindai243156@gmail.com', 642)
INSERT [dbo].[MembershipCard] ([cardno], [totalspend], [dateregister], [user_email], [Point]) VALUES (N'M1Ta2ZouzbQf', 905000, CAST(N'2021-09-07' AS Date), N'daindts1908051@fpt.edu.vn', 181)
INSERT [dbo].[MembershipCard] ([cardno], [totalspend], [dateregister], [user_email], [Point]) VALUES (N'M2vnCinvV2hs', 250830000, CAST(N'2021-09-13' AS Date), N'kimdat1307@gmail.com', 37826)
INSERT [dbo].[MembershipCard] ([cardno], [totalspend], [dateregister], [user_email], [Point]) VALUES (N'M3cbTTN0gZBU', 250500000, CAST(N'2021-09-13' AS Date), N'kimdat1999@gmail.com', 50000)
INSERT [dbo].[MembershipCard] ([cardno], [totalspend], [dateregister], [user_email], [Point]) VALUES (N'M4svAuS196Rm', 250500000, CAST(N'2021-09-13' AS Date), N'kimdat19991@gmail.com', 50000)
INSERT [dbo].[MembershipCard] ([cardno], [totalspend], [dateregister], [user_email], [Point]) VALUES (N'M5LfhnfaXrNr', 0, CAST(N'2021-09-15' AS Date), N'kimdat19919@gmail.com', 0)
INSERT [dbo].[MembershipCard] ([cardno], [totalspend], [dateregister], [user_email], [Point]) VALUES (N'M6WRLFmrUgc5', 0, CAST(N'2021-09-16' AS Date), N'kimdat1307123@gmail.com', 0)
GO
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M001', N'TENET', N'Viễn tưởng, hành động', N'John David Washington, Robert Pattinson, Elizabeth Debicki, Kenneth Branagh, Michael Caine', N'Christopher Nolan', N'Tenet là câu chuyện nói về một điệp viên CIA với biệt danh The Protagonist (nhân vật chính) được một tổ chức bí mật chiêu mộ cho nhiệm vụ giải cứu thế giới thoát khỏi thế chiến thứ III. Đồng hành cùng với anh trong nhiệm vụ này là Neil – một điệp viên da trắng có tung tích mờ ám. Để bắt đầu nhiệm vụ của mình, họ tìm đến những tên buôn vũ khí nguy hiểm nhất thế giới nhằm khám phá ra nguồn gốc của những hiện tượng kỳ lạ đã xảy ra gần đây.', N'imagesMovie/tenet.jpg', N'mgwGixbtIBU', CAST(N'2021-07-25' AS Date), CAST(N'2021-08-19' AS Date), 1)
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M002', N'DỊ NHÂN THẾ HỆ MỚI', N'Kinh dị, siêu anh hùng', N'Maisie Williams, Anya Taylor-Joy, Charlie Heaton, Alice Braga, Blu Hunt, Henry Zaga', N'Josh Boone', N'Dị nhân thế hệ mới là một bộ phim kinh dị siêu anh hùng của Mỹ năm 2020 dựa trên băng nhóm dị nhân New Mutants của Marvel Comics do hãng 20th Century Studios giữ vai trò phân phối. Đây là phần thứ mười ba và cũng là phần cuối cùng trong loạt phim điện ảnh X-Men.', N'imagesMovie/thenew.jpg', N'q6JzdkBcYq4', CAST(N'2021-07-24' AS Date), CAST(N'2021-08-18' AS Date), 1)
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M003', N'ÁC QUỶ ĐỐI ĐẦU', N'Hành động', N'Park Jung-min, Hwang Jung-min, Lee Jung-jae, Choi Hee-seo', N'Hong Won-chan', N'Ác quỷ đối đầu là một bộ phim hành động của Hàn Quốc do đạo diễn Hong Won-chan thực hiện cùng với Hive Media Corp. sản xuất. Phim có sự tham gia của các diễn viên nổi tiếng như Park Jung-min, Hwang Jung-min, Lee Jung-jae và Choi Hee-seo.', N'imagesMovie/aqdd.jpg', N'KtLXv04nM9s', CAST(N'2021-07-23' AS Date), CAST(N'2021-08-17' AS Date), 1)
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M004', N'ĐẦU GẤU BĂC CỰC: KÌ NGHỈ VUI NHỘN', N'Hài', N'Jennifer Cameron, Paul Dobson, Brian Drummond', N'Anthony Bell', N'Tiếp theo phần 3 đầy vui nhộn, lần này chú gấu Norm và gia đình sẽ lên đường đi tìm lại chiếc vương miện của mình đã bị đánh cắp ngay trước thềm Lễ hội Ánh sáng. Chuyến đi như một kì nghỉ của gia đình hứa hẹn sẽ mang đến những tràng cười ngất ngây khi Norm phải đau đầu với những màn nghịch ngợm của ba chú gấu con.', N'imagesMovie/notn.jpg', N'_Rfes2my-pU', CAST(N'2021-07-22' AS Date), CAST(N'2021-08-16' AS Date), 1)
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M005', N'HẦM QUỶ', N'Kinh dị', N'Addy Miller, Elizabeth Birkner, Jan Broberg', N'Matthew Whedon, Andrew Mecham', N'Câu chuyện của Behind You xoay quanh hai đứa trẻ là Olivia (Addy Miller) và em gái Claire (Elizabeth Birkner). Sau cái chết đột ngột của người mẹ còn cha ở nước ngoài, cả hai buộc phải đến sống cùng dì Beth (Jan Bronberg). Tuy nhiên, Olivia dần nhận ra những biểu hiện và hành động kỳ quái của người dì. Từ đây, hàng loạt sự kiện kinh hoàng bắt đầu diễn ra khiến tính mạng của hai chị em đều gặp nguy hiểm.', N'imagesMovie/hamquy.jpg', N'fqo4dC-z5mA', CAST(N'2021-07-21' AS Date), CAST(N'2021-08-15' AS Date), 1)
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M006', N'ĐỐI ĐẦU - BẢO VỆ GÃ ĐIÊN, GIẢI CỨU NHÂN LOẠI', N'Hành động, hồi hộp', N'Jesse Metcalfe, Bruce Willis, Lala Kent', N'Matt Eskandari', N'Bộ phim xoay quanh đội lính đánh thuê của Derek Miller (Jesse Metcalfe) đảm nhận nhiệm vụ giải cứu con gái của ông trùm tập đoàn công nghệ (Bruce Willis) thoát khỏi âm mưu độc đoán của Kẻ rửa tội (Sergio Rizzuto). Kế hoạch thay đổi trật tự xã hội của hắn trở nên dễ dàng hơn sau khi sở hữu trong tay Dự Án 725 - một mối đe dọa lớn đối với loài người. Đối Đầu (Hard Kill) không đơn thuần là phim hành động mà tác phẩm còn chỉ ra mối hiểm họa ẩn chứa đằng sau sự phát triển vượt bậc của công nghệ đối với nhân loại.', N'imagesMovie/movie_6.jpeg', N'aqhLpMBE7fY', CAST(N'2021-07-20' AS Date), CAST(N'2021-08-14' AS Date), 1)
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M007', N'GREENLAND : THẢM HỌA THIÊN THẠCH (2020)', N'Hành động, bí ẩn', N'Gerard Butler, Morena Baccarin, Roger Dale Floyd, Scott Glenn, Randal Gonzalez', N'Ric Roman Waugh', N'Một chùm sao chổi từ hệ mặt trời khác đã rơi xuống trái đất gây nên thảm hoạ diệt vong ở cấp độ toàn cầu. Gia đình Garrity là một trong số ít được chọn bởi chỉnh phủ để có thể đi vào hầm trú ẩn tận thế được đặt tại Greenland. Nhưng sự cố đã xảy ra, họ đã không lên được máy bay và bị lạc nhau. Thế giới rơi vào cảnh điêu tàn, hỗn loạn, xã hội mất đi trật tự vốn có, bạo loạn cướp bóc và bạo động. Cả gia đình vừa phải tìm lại nhau, vừa phải tìm cách sống sót qua thảm hoạ tận thế.', N'imagesMovie/movie_7.jpg', N'eRN4fU3Wi-c', CAST(N'2021-08-21' AS Date), CAST(N'2021-09-20' AS Date), 2)
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M008', N'BREAK THE SILENCE : THE MOVIE', N'Hòa nhạc, nhạc kịch', N'RM, Jin, Suga, J-Hope, Jimin, V, Jungkook', N'Jun-Soo Park', N'Break the Silence: The Movie là một bộ phim tài liệu Hàn Quốc năm 2020 của đạo diễn Park Jun-soo và được sản xuất bởi Big Hit Three Sixty, kể về hậu trường của chuyến lưu diễn Love Yourself World Tour năm 2018–2019 của nhóm nhạc nam Hàn Quốc BTS.', N'imagesMovie/movie_8.jpg', N'afM9Z7_QBXU', CAST(N'2021-08-22' AS Date), CAST(N'2021-09-19' AS Date), 2)
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M009', N'ÁC NỮ', N'Kinh dị', N'Indah Permatasari, Arifin Putra
', N'Anggy Umbara, Bounty Umbara
', N'Bloodlust Lady (Ác Nữ): Câu chuyện báo thù đầy kinh dị, giật gân tại vùng nông thôn Indonesia. Nội dung phim kể về oan hồn một cô gái quyết tâm đuổi theo những gã đàn ông tồi đã cướp đi mạng sống của cô.', N'imagesMovie/movie_9.jpg', N'HtaBHbah1LM', CAST(N'2021-08-23' AS Date), CAST(N'2021-09-18' AS Date), 2)
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M010', N'NÀNG TIÊN CÁ Ở PARIS', N'Tâm lý, thần thoại, tình cảm', N'Tcheky Karyo, Rossy de Palma, Marilyn Lima, Romane Bohringer, Alexis Michalik', N'Mathias Malzieu', N'Được dịch từ tiếng Anh-A Mermaid in Paris là một bộ phim hài lãng mạn giả tưởng năm 2020 do Mathias Malzieu đạo diễn, người đồng viết kịch bản cùng Stéphane Landowski. Phim có sự tham gia của Nicolas Duvauchelle và Marilyn Lima. Bộ phim được phát hành tại Pháp vào ngày 11 tháng 3 năm 2020 bởi Sony Pictures Releasing.', N'imagesMovie/movie_10.jpg', N'MMDCvF6PSdM', CAST(N'2021-08-24' AS Date), CAST(N'2021-09-17' AS Date), 2)
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M011', N'MORTAL KOMBAT: CUỘC CHIẾN SINH TỬ', N'Viễn tưởng, tâm lý, võ thuật, hành động', N'Lewis Tan, Jessica McNamee, Josh Lawson', N'Simon McQuoid', N'Mortal Kombat: Cuộc Chiến Sinh Tử xoay quanh võ sĩ võ thuật tổng hợp Cole Young (Lewis Tan), người mang trên mình một vết chàm rồng đen bí ẩn - biểu tượng của Mortal Kombat. Cole Young không hề biết về dòng máu bí ẩn đang chảy trong người anh, hay vì sao anh lại bị tên sát thủ Sub-Zero (Joe Taslim) săn lùng. Vì sự an nguy của gia đình, Cole cùng với một nhóm những chiến binh đã được tuyển chọn để tham gia vào một trận chiến đẫm máu nhằm chống lại những kẻ thù đến từ Outworld.', N'imagesMovie/cuoc_chien_sinh_tu.jpg', N'_rUC3-pNLyc', CAST(N'2021-08-25' AS Date), CAST(N'2021-09-16' AS Date), 2)
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M012', N'GODZILLA VS KONG', N'Viễn tưởng, hành động', N'Alexander Skarsgard, Millie Bobby Brown, Kyle Chandler, Rebecca Hall, Brian Tyree Henry', N'Adam Wingard', N'Khi hai kẻ thù truyền kiếp gặp nhau trong một trận chiến ngoạn mục, số phận của cả thế giới vẫn còn bị bỏ ngỏ… Bị đưa khỏi Đảo Đầu Lâu, Kong cùng Jia, một cô bé mồ côi có mối liên kết mạnh mẽ với mình và đội bảo vệ đặc biệt hướng về mái nhà mới. Bất ngờ, nhóm đụng độ phải Godzilla hùng mạnh, tạo ra một làn sóng hủy diệt trên toàn cầu. Thực chất, cuộc chiến giữa hai kẻ khổng lồ dưới sự thao túng của các thế lực vô hình mới chỉ là điểm khởi đầu để khám phá những bí ẩn nằm sâu trong tâm Trái đất.', N'imagesMovie/godzilla_vs_1_.jpg', N'XGHnvnX5aFU', CAST(N'2021-08-26' AS Date), CAST(N'2021-09-15' AS Date), 2)
INSERT [dbo].[Movie] ([movieId], [movieTitle], [movieCategory], [performer], [filmDirector], [movieContent], [image], [trailer], [startMovie], [endMovie], [status]) VALUES (N'M013', N'ONG NHÍ PHIÊU LƯU KÝ: GIẢI CỨU CÔNG CHÚA', N'Hoạt hình', N'Coco Jack Gillies, Evie Gillies, Benson Jack Anthony, Justine Clarke, Shane Dundas; David Collins', N'Noel Cleary', N'Quá háo hức chào đón mùa xuân, Maya và Willy đã thức dậy khỏi giấc ngủ đông sớm hơn thời gian dự định. Từ đây, đôi bạn vô tình phải nhận một nhiệm vụ đặc biệt – bảo vệ và đưa quả trứng vàng đến ngôi nhà mới. Tuy nhiên, mọi rắc rối bắt đầu ập đến khi quả trứng nứt và cô công chúa kiến bé nhỏ ra đời. Maya, Willy và những người bạn đồng hành phải phối hợp cùng nhau để chăm sóc và bảo vệ công chúa kiến khỏi vô vàn nguy hiểm xung quanh. Trong hành trình đầy bất ngờ và gian nan này, Willy dần dần khám phá được một khía cạnh khác của bản thân – dịu dàng và kiên nhẫn với cô công chúa nhỏ. Bộ đôi Maya và Willy cũng đã trưởng thành hơn và tình bạn giữa họ càng trở nên thêm khăng khít và gắn bó.', N'imagesMovie/main_poster_mtb_1_.jpg', N'RVzlfJ2vWLY', CAST(N'2021-12-19' AS Date), NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[MovieLanguage] ON 

INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (1, N'M001', 1)
INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (2, N'M002', 2)
INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (3, N'M003', 1)
INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (4, N'M004', 2)
INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (5, N'M005', 1)
INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (6, N'M006', 2)
INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (7, N'M007', 1)
INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (8, N'M008', 2)
INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (9, N'M009', 1)
INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (10, N'M010', 2)
INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (11, N'M011', 1)
INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (12, N'M012', 2)
INSERT [dbo].[MovieLanguage] ([idMovieLanguage], [idMovie], [idLanguage]) VALUES (13, N'M012', 1)
SET IDENTITY_INSERT [dbo].[MovieLanguage] OFF
GO
SET IDENTITY_INSERT [dbo].[MovieReview] ON 

INSERT [dbo].[MovieReview] ([id], [title], [titleR], [movieReviewContent], [movieReviewView], [type], [image]) VALUES (43, N'[Review] Thiên Thần Hộ Mệnh: Victor Vũ Và Nỗ Lực Trẻ Hóa ', N'Thiên Thần Hộ Mệnh phức tạp, nhiều twist và rõ nhất là trẻ hơn! ', N'<p>7 năm sau Scandal 2: Hào Quang Trở Lại, Victor Vũ mới trở về thể loại “vén màn showbiz”.</p>

<p><strong>Thiên Thần Hộ Mệnh</strong> phức tạp, nhiều twist và rõ nhất là trẻ hơn!</p>

<p>Nhân vật chính – Mai Ly là hot girl tầm trung kiêm hát bè cho ca sĩ nổi tiếng Lam Phương. Ly có sắc có tài nhưng chưa gặp thời. Cô chỉ có thể đứng phía sau nhìn người chị thân thiết tỏa sáng trong sự ganh tị thầm lặng. Bởi lẽ, Phương chẳng những tài sắc vẹn toàn mà còn có gia thế khủng và bạn trai siêu giỏi.</p>

<p>Thế rồi, Lam Phương dính scandal clip nóng rồi tự sát. Nửa năm sau, Mai Ly trở thành ngôi sao thay thế nàng ca sĩ bạc mệnh. Hiện tại, cô sở hữu danh vọng, hào quang và người đàn ông từng là người yêu Lam Phương. Tất cả thành quả này, Mai Ly tin là nhờ vào “đứa con” đang giữ bên người - Búp bê tên bé Na.</p>

<p style="text-align:center"><iframe class="w-100" frameborder="0" height="400px" scrolling="no" src="	https://www.galaxycine.vn/media/2021/5/5/thien-than-ho-menh--2_1620201192938.jpg" width="600px"></iframe></p>

<p>Ở Scandal, Victor Vũ ví von tác phẩm mình thực hiện là “phim siêu thị”. Quả thật, so với đa số phim chiếu rạp Việt Nam hiện nay, sản phẩm dán nhãn Victor Vũ xếp “chiếu trên”. </p>

<p>Thiên Thần Hộ Mệnh có khung hình đẹp, màu phim sang trọng, mang lại cảm giác “điện ảnh”. Xét về chất lượng hình ảnh, khó thể chê vào đâu được. Dù đa số cảnh quay ở nhà, studio… phần nhìn bộ phim tạm khiến người xem hài lòng. Ấn tượng nhất có lẽ là căn nhà trọ đầu phim Mai Ly ở cùng cô bạn thân Huyền. Đối lập với không gian giường ngủ đẹp đẽ lung linh phục vụ cho các buổi livestream kiếm tìm sự nổi tiếng là nhà bếp và nhà vệ sinh cũ kĩ, bám bẩn. Chưa cần “hù”, khán giả đủ lạnh gáy ở phân đoạn ban đêm. </p>

<p>Khắc họa showbiz, ekip sản xuất chẳng ngại chi bộn tiền để khoác lên người nhân vật hàng tá bộ cánh lộng lẫy. Dù nghèo tới độ “bị cúp nước 3 ngày không tắm”, Mai Ly và Huyền vẫn vô cùng xinh đẹp ở mọi cảnh quay. Lam Phương – nàng ca sĩ “nhà mặt phố, bố làm to” thì khỏi cần phải bàn. Từ trang phục đi diễn đến quần áo đi tiệc, ngay cả bộ đầm lúc cô tự sát đều đủ khiến hội chị em trầm trồ xuýt xoa. </p>

<p>Thiên Thần Hộ Mệnh bắt trend nuôi búp bê bùa ngải hiện tại và có những pha “cua gắt” phù hợp vừa khiến khán giả shock vừa đủ thông qua quy trình kiểm duyệt nội dung khá khắt khe của Việt Nam. So cùng Người Bất Tử, cú twist cuối phim trơn tru và hợp lí hơn. Bài hát “Nhìn vậy mà không phải vậy” do Orange trình bày mang giai điệu hết sức bắt tai rất hợp với nội dung phim. Nếu ai nghĩ rằng có thể xem trailer rồi đoán nội dung phim thì nên nghe thử ca khúc này. </p>

<p>Tuy nhiên, phim cũng có những điểm yếu nhất định. Dễ thấy nhất là về mặt diễn xuất. </p>

<p style="text-align:center"><iframe class="w-100" frameborder="0" height="400" scrolling="no" src="https://www.galaxycine.vn/media/2021/5/5/thien-than-ho-menh--1_1620201162624.jpeg" width="600"></iframe></p>

<p>Trúc Anh được xem là nàng thơ mới của điện ảnh Việt Nam. Sở hữu đôi mắt to tròn biết nói, khuôn mặt phúc hậu và suối tóc dài óng ả, Trúc Ảnh từng khiến bao trái tim xao xuyến khi đảm nhận vai diễn Hà Lan (Mắt Biếc). Thế nhưng, Hà Lan dù trải qua mấy chục năm cuộc đời vẫn là một người phụ nữ ngây thơ khờ dại. Nàng “mắt biếc” không cần khắc họa nội tâm là mấy. Mai Ly thì ngược lại. Trong vòng chưa đến 1 năm, cô gái trẻ gặp rất nhiều sóng gió cuộc đời. Vinh quang và tủi nhục, thiên đường và vực thẳm, Mai Ly tuổi đôi mươi đã trải đời hơn hẳn người phụ nữ Hà Lan. Trúc Anh diễn tốt khi Mai Ly “tay đôi” cùng cô bạn thân hoặc người mình đơn phương. Cảnh Trúc Anh thể hiện tốt nhất có lẽ là lúc Mai Ly vì “con” mà trở mặt với bạn thân. Tuy nhiên, ở những phân đoạn cảm xúc nhân vật lên đến cao trào khác, cô đuối và gồng.  Dĩ nhiên, về tổng thể, Trúc Anh làm đa số khán giả tạm hài lòng.</p>

<p>Dù đất diễn ít ỏi, Salim vẫn đủ sức làm người xem nhớ mãi. Cô quá xinh đẹp, quá chói mắt. Mỗi cảnh Lam Phương xuất hiện, khán giả đều bị hớp hồn bởi ánh mắt nụ cười quá đỗi quyến rũ. Salim chưa chứng minh khả năng diễn xuất bao nhiêu nhưng để khắc họa Lam Phương, thế là đủ.</p>

<p>Là ca sĩ trẻ lần đầu lấn sân sang diễn xuất, Amee được “đo ni đóng giày” vai Huyền không khác gì hình ảnh cô ngoài đời – một nàng sinh viên dễ thương, hồn nhiên và hết lòng vì bạn bè. Thậm chí, Victor Vũ còn ưu ái đến mức cho hẳn ca khúc Tình Bạn Diệu Kì vào đoạn kết. Dẫu rằng, ở bộ phim thể loại li kì mang màu sắc kinh dị như Thiên Thần Hộ Mệnh, bài hát này khá lệch pha.</p>

<p>Mắt xích yếu nhất dàn cast chính là người đàn ông trong mơ – Khánh do chàng hot boy Samuel An thủ vai. Công bằng mà nói, vẻ lịch lãm nam tính của anh rất hợp với nhân vật. Anh chàng diễn trơn tru hầu hết các cảnh quay. Đáng tiếc, ở phút cao trào nhất, Samuel An lại hụt hơi, khiến tổng thể phim bị mất điểm nghiêm trọng.</p>

<p>Hướng tới khán giả trẻ, Thiên Thần Hộ Mệnh không dành bao nhiên đất cho dàn diễn viên kì cựu. Dẫu vậy, nghệ sĩ Thanh Thủy vẫn để lại ấn tượng mạnh mẽ. Nhân vật này cần khai thác thêm.</p>

<p>Trùng hợp làm sao, Thiên Thần Hộ Mệnh ra mắt lúc bộ phim hay Hollywood Promising Young Woman được trình chiếu tại Việt Nam chưa lâu. Tuy có vài điểm khác biệt, hai tác phẩm đều khắc họa hình ảnh của người phụ nữ vừa bị tổn thương về thể xác vừa bị tấn công tinh thần. Dù đường hướng khác nhau, đoạn kết vẫn đủ sức nặng khiến công chúng ngẫm nghĩ lúc ra về.</p>

<p>Thiên Thần Hộ Mệnh đạt doanh thu khả quan sau những ngày công chiếu đầu tiên, hơn hẳn đối thủ cùng thời điểm. Liệu Victor Vũ có đại thắng phòng vé và tiếp tục “vũ trụ bùa ngải” đã thành thương hiệu? Đành phải chờ sau khi hệ thống rạp chiếu phim tại các thành phố lớn hết “chạy” dịch Cô Vy! </p>
', 14, 1, N'thienthan.jpg')
INSERT [dbo].[MovieReview] ([id], [title], [titleR], [movieReviewContent], [movieReviewView], [type], [image]) VALUES (44, N'[Preview] Bố Già: Đậm Chất Đời – Tình Về Gia Đình ', N'Bố Già bản điện ảnh sẽ kể một câu chuyện rất mới, rất đời, các nhân vật được thổi vào một số phận mới, một người bố mới mà khán giả chưa từng được xem. ', N'<p><font style="vertical-align:inherit"><font style="vertical-align:inherit">Sau th&agrave;nh c&ocirc;ng rực rỡ của Bố gi&agrave; phi&ecirc;n bản web-drama, Trấn Th&agrave;nh quyết t&acirc;m đưa &quot;đứa con&quot; của m&igrave;nh l&ecirc;n m&agrave;n ảnh rộng. </font><font style="vertical-align:inherit">Tuy nhi&ecirc;n, kh&ocirc;ng như nhiều người dự đo&aacute;n, The Godfather phi&ecirc;n bản điện ảnh sẽ kể một c&acirc;u chuyện rất mới, rất đời, c&aacute;c nh&acirc;n vật được thổi v&agrave;o một số phận mới, một người cha mới m&agrave; kh&aacute;n giả chưa từng thấy.</font></font></p>

<p><strong><font style="vertical-align:inherit"><font style="vertical-align:inherit">Tr&agrave;n đầy sức sống&nbsp;</font></font></strong></p>

<p><font style="vertical-align:inherit"><font style="vertical-align:inherit">Từ poster, teaser trailer v&agrave; trailer ch&iacute;nh thức của phim, c&oacute; thể thấy </font></font><strong><font style="vertical-align:inherit"><font style="vertical-align:inherit">bộ phim Bố gi&agrave;</font></font></strong><font style="vertical-align:inherit"><font style="vertical-align:inherit"> sẽ chi&ecirc;u đ&atilde;i người xem một &ldquo;bữa tiệc&rdquo; tr&agrave;n đầy nhựa sống với những con người, cuộc đời v&agrave; những c&acirc;u chuyện hết sức b&igrave;nh dị. </font><font style="vertical-align:inherit">th&acirc;n thuộc. </font><font style="vertical-align:inherit">Đ&oacute; l&agrave; một con hẻm đơn sơ nhưng lu&ocirc;n nhộn nhịp v&agrave; sầm uất m&agrave; ch&uacute;ng ta c&oacute; thể bắt gặp ở bất cứ đ&acirc;u ở S&agrave;i G&ograve;n. </font><font style="vertical-align:inherit">Đ&oacute; l&agrave; những l&uacute;c chỉ cần một gia đ&igrave;nh c&oacute; việc, c&oacute; thể khiến cả khu phố &ugrave;n tắc m&agrave; chẳng mấy ai bận t&acirc;m, ph&agrave;n n&agrave;n; </font><font style="vertical-align:inherit">Đ&oacute; l&agrave; những th&aacute;ng ng&agrave;y sống với s&ocirc;ng nước theo đ&uacute;ng nghĩa đen - cực nhưng khi đ&atilde; quen, kh&ocirc;ng c&oacute; th&igrave; đ&acirc;u phải l&agrave; S&agrave;i G&ograve;n mới ...&nbsp;</font></font></p>

<p style="text-align:center"><iframe class="w-100" frameborder="0" height="400px" scrolling="no" src="https://www.galaxycine.vn/media/2021/1/29/bogia6002_1611909633333.png" width="600px"></iframe></p>

<p>According to DOP Diep The Vinh of the film, the alley chosen as the main setting is a real-life labor alley and of course, it has a very typical Saigon style: simple, noisy and affinity. &ldquo;We had to spend a very long time to find the context that both fits the story and brings the most life to the color of the film. We feel very fortunate that in the middle of the bustling city, we can still find an alley that meets all the needs of the crew and helps us convey the truest story to the screen.&quot; That&#39;s why Tran Thanh thanked the people living in the alley for helping The Godfather movie version be brought to the audience in the most complete and closest way.</p>

<p><strong>Heavy family love&nbsp;</strong></p>

<p>It is known that in the story of the Godfather in the movie version, Tran Thanh plays a character named Sang. Although it was only revealed through a few short minutes of the teaser and trailer, most viewers commented that: It feels like seeing my father from the image of Mr. Sang.&nbsp;</p>

<p style="text-align:right"><iframe class="w-100" frameborder="0" height="400px" scrolling="no" src="https://www.galaxycine.vn/media/2021/1/29/bogia6003_1611909648559.png" width="600px"></iframe></p>

<p>He was &quot;out of his mind&quot; when he learned that his son&#39;s torn pants cost more than 10 million. He innocently opened the bathroom door to give the shampoo bottle to his 20-year-old son: &quot;You act like I&#39;ve never seen it before&quot;. He also does not care about what is called &quot;cheesy&quot; so he is not afraid to show his affection for his children. Not only about the house, Mr. Sang also loves to take care of the neighbor&#39;s affairs. On the surface, he seems to be a hot-tempered man, but in fact, he is a lover of the alley, loved his relatives, loved those who &quot;turned off the lights&quot; by his side more than ever...&nbsp;</p>

<p>Of course, life is not always rosy.</p>

<p>The most recent trailer for the Godfather movie version brought to viewers the contradictions, problems, times when &quot;rice is not good, soup is not sweet&quot; that almost every Vietnamese family has encountered. Especially, a series of lines like &quot;daggers&quot; said by brothers and sisters in a house makes us more heartbroken than ever. Is this also the forecast of the &quot;stormy&quot; days that Mr. Sang and his family have to go through: &quot;Your job, I think it&#39;s too hairy! What&#39;s the point of picking up shit to eat!&quot;, &quot;The kind whose father gave birth but didn&#39;t have a mother to teach him&quot;, &quot;If his father still chases him, what kind of graveyard do we have&quot;, &quot;I hate him&quot;...&nbsp;</p>

<p>Talking about these details, Tran Thanh said: &quot;Instead of poeticizing the father-son relationship, brotherhood shows viewers beautiful images. We want to tell the most real, most real, closest story. Because we think family really includes a lot of emotions: love, hurt, anger, pain, arguments and misunderstandings so we can learn to appreciate. That&#39;s why we go into the dark corners of every family, into the argument between father and son, the hurtful words we accidentally utter to our family members.&quot;&nbsp;</p>

<p><font style="vertical-align:inherit"><font style="vertical-align:inherit">Ngo&agrave;i những gương mặt tham gia phi&ecirc;n bản web-drama gồm Trấn Th&agrave;nh, NSND Ngọc Gi&agrave;u, Tuấn Trần, L&ecirc; Giang, phim &quot;Bố gi&agrave;&quot; hay c&ograve;n c&oacute; c&aacute;c diễn vi&ecirc;n như Lan Phương, Ho&agrave;ng M&egrave;o, La Thanh, Quoc Khanh. </font><font style="vertical-align:inherit">, L&ecirc; Trang, AQuay, Bảo Ph&uacute;c ... từ đ&oacute; tạo n&ecirc;n l&agrave;n gi&oacute; mới hấp dẫn hơn. </font><font style="vertical-align:inherit">C&aacute;c nh&acirc;n vật n&agrave;y sẽ đ&oacute;ng vai tr&ograve; g&igrave;? </font><font style="vertical-align:inherit">L&agrave;m thế n&agrave;o họ sẽ mang lại những khoảnh khắc h&agrave;i hước hoặc rắc rối?</font></font></p>

<p><font style="vertical-align:inherit"><font style="vertical-align:inherit">H&atilde;y c&ugrave;ng chờ c&acirc;u trả lời từ ng&agrave;y 12/02/2021 (tức m&ugrave;ng 1 Tết Kỷ Sửu).&nbsp;</font></font><br />
<font style="vertical-align:inherit"><font style="vertical-align:inherit">Xem th&ecirc;m tại: https://www.galaxycine.vn/binh-luan-phim/preview-bo-gia-dam-chat-doi--tinh-ve-gia-dinh</font></font></p>
', 22, 0, N'bogia450x300_1611909372697.jpg')
INSERT [dbo].[MovieReview] ([id], [title], [titleR], [movieReviewContent], [movieReviewView], [type], [image]) VALUES (48, N'[Review] Trạng Tí: Một Bộ Phim Đầy Sáng Tạo!', N'Do một số vấn đề ở khâu sản xuất, Trạng Tí phải chịu nhiều chỉ trích từ khi chưa ra rạp chiếu phim  ', N'<p>Do một số vấn đề ở khâu sản xuất, <strong>Trạng Tí </strong>phải chịu nhiều chỉ trích từ khi chưa ra rạp chiếu phim.</p>

<p> </p>

<p>Ngoài kiện tụng về nguyên tác, Trạng Tí “hứng gạch” bởi hình tượng vai chính khác xa bản gốc. Fan có lý của họ nhưng nhà sản xuất có sai khi sáng tạo? Thế giới đã tồn tại nhiều ví dụ như Dragonball Evolution (2009) và Death Note (2017) hay sắp tới là live action The Little Mermaid. Việc nhân vật khác xa bản gốc chẳng phải điều hiếm thấy. Các phần sau bom tấn truyền hình Game Of Thrones, đặc biệt là mùa cuối đều được bộ đôi chế tác David Benioff và D.B. Weiss đi theo hướng riêng vì nguyên tác chưa kết thúc.</p>

<p> </p>

<p>Nếu tạm bỏ qua hàng loạt tranh cãi ấy và xem Trạng Tí là một tác phẩm riêng biệt, đây là bộ phim có chất lượng. </p>

<p><iframe class="w-100" frameborder="0" height="400px" scrolling="no" src="https://www.galaxycine.vn/media/2021/5/5/trang-ti-6_1620185010681.jpg" width="600px"></iframe></p>

<p>Điểm cộng lớn nhất chính là bối cảnh. Quay tại Ninh Bình, Trạng Tí phô diễn trọn vẹn vùng đất cố đô. Những cánh đồng xanh mơn mởn, núi rừng hùng vĩ đẹp đẽ và ấn tượng. Tuy vài đoạn bị lộ phông xanh, tổng thể vẫn chấp nhận được. </p>

<p>  Ekip sản xuất Studio68 đã tiến một bước dài về mặt CGI nếu so cùng Tấm Cám: Chuyện Chưa Kể. Hãy quên đi con quái vật thường bị đem ra làm ví dụ cho kĩ xảo lỗi, Thần Hổ rất đẹp và sống động. Dù rằng, với khán giả Việt Nam quen xem phim Hollywood, hình ảnh này chưa mấy đặc sắc. Nếu chỉ xét trong phim Việt Nam, CGI Trạng Tí xứng đáng nhận tràng pháo tay tán thưởng. </p>
', 4, 1, N'trangti.jpg')
INSERT [dbo].[MovieReview] ([id], [title], [titleR], [movieReviewContent], [movieReviewView], [type], [image]) VALUES (49, N'[Preview] Gái Già Lắm Chiêu V: Ứng Viên Số 1 Cho Phòng Vé Tết 2021?', N'Gái Già Lắm Chiêu 3 đã lên ngôi vương phòng vé Tết 2020 trước hai đối thủ nặng kí 30 Chưa Phải Tết và Đôi Mắt Âm Dương. Liệu Gái Già Lắm Chiêu V có tái lập kì tích ấy ở mùa Tết năm nay? ', N'Gái Già Lắm Chiêu 3 đã lên ngôi vương phòng vé Tết 2020 trước hai đối thủ nặng kí 30 Chưa Phải Tết và Đôi Mắt Âm Dương. Liệu Gái Già Lắm Chiêu V có tái lập kì tích ấy ở mùa Tết năm nay?</p>

<p>Lý Lệ Hà (NSND Lê Khanh), Lý Lệ Hồng (NSND Hồng Vân) và Lý Linh (Kaity Nguyễn) là ba chị em Lý gia sang chảnh và quyền lực. Dòng họ Lý ở trong Bạch Trà viên xa hoa lộng lẫy, với đầy cổ vật có giá trị “gấp mấy lần siêu xe”. Bảo vật của gia tộc này là chiếc Phượng bào “Phượng hoàng tam vĩ”, khiến tất cả nhân vật không tiếc mọi thứ mọi thủ đoạn chiếm đoạt.</p>

<p> </p>

<p>Cô em út Lý Linh đang thăng tiến trong công việc. Ấy vậy mà, với cô điều ấy là chưa đủ. Mục tiêu của nữ cường nhân mới 25 tuổi này là ngồi lên chiếc ghế quyền lực tại tòa tháp Đế Vương. Thiếu gia họ Quách “câu” cô nàng bằng cách hứa hẹn một tương lai tươi sáng, để Lý Linh trở thành “Mị Châu” đem chiếc Phượng bào mà cha anh ta sẵn sàng đánh đổi bằng cả tòa tháp về cho mình. Tuy nhiên, Lý Linh khó thể thành công khi người đang sở hữu báu vật ấy là cô chị cả Lý Lệ Hà – nhà sưu tập cổ vật hoàng cung thông minh và sắc sảo. Mọi chuyện càng trở nên rắc rối hơn khi Lệ Hà lại chính là tình nhân bí mật của ông chủ nhà họ Quách. Ngoài ra, dù Lý Lệ Hồng và cậu trai trẻ Jonathan Vĩnh Thuỵ mang vẻ ngoài vô hại dường như cũng có mưu tính sâu xa. </p>

<p>Cuối cùng, “Phượng hoàng tam vĩ” lọt vào tay ai?<p><iframe class="w-100" frameborder="0" height="400px" scrolling="no" src="https://www.galaxycine.vn/media/2021/1/25/gai-gia-lam-chieu-v-9_1611544870619.jpg" width="700px"></iframe></p>

<p>Khác với loạt phim trước, có lẽ, Gái Già Lắm Chiêu V sẽ khai thác đề tài “sóng gió gia đình”, khi từ first look, teaser và trailer đều xoay quanh ba chị em họ Lý. Tuy nhiên, Gái Già Lắm Chiêu 3 từng xoay công chúng như chong chóng vì trailer “giả vờ” đạo nhái Crazy Rich Asians nhưng lúc thành phim lại hoàn toàn khác. Biết đâu, phần V lại mang đến một cú twist bất ngờ về nội dung cho khán giả.</p>

<p>Khi hình ảnh đầu tiên về Gái Già Lắm Chiêu V hé lộ, công chúng bị sốc trước hình ảnh mái tóc ngắn của NSND Lê Khanh. Quý bà Thái Tuyết Mai nền nã thanh lịch ở Gái Già 3 lột xác gai góc, mạnh mẽ và không thể ấn tượng hơn ở vai diễn Lý Lệ Hà. Chia tay mái tóc gắn bó bao năm, NSND Lê Khanh hé lộ: “Tôi luôn khát khao một vai diễn bộc lộ được những suy nghĩ và tính cách khác nhau ẩn chứa bên trong mình. Tiếp tục với phần mới của Gái già lắm chiêu, nhân vật của tôi hoàn toàn khác biệt và khác hẳn tất cả các nhân vật mà tôi từng tham gia từ trên sân khấu cho đến màn ảnh. Tôi đã chủ động  xin đạo diễn cho tôi cắt phăng mái tóc dài của mình ngay từ trước khi bộ phim bấm máy để được hoá thân sớm vào nhân vật. Đủ để cho thấy sự quyết liệt của tôi với vai diễn gai góc này!</p>
', 16, 0, N'gaigia.jpg')
SET IDENTITY_INSERT [dbo].[MovieReview] OFF
GO
SET IDENTITY_INSERT [dbo].[RatingMovie] ON 

INSERT [dbo].[RatingMovie] ([id], [movie_id], [rating], [user_rating]) VALUES (7, N'M001', 9, N'bindai243156@gmail.com')
INSERT [dbo].[RatingMovie] ([id], [movie_id], [rating], [user_rating]) VALUES (8, N'M001', 2, N'kimdat1999@gmail.com')
INSERT [dbo].[RatingMovie] ([id], [movie_id], [rating], [user_rating]) VALUES (1007, N'M004', 9, N'kimdat1999@gmail.com')
INSERT [dbo].[RatingMovie] ([id], [movie_id], [rating], [user_rating]) VALUES (1008, N'M004', 1, N'kimdat1307@gmail.com')
SET IDENTITY_INSERT [dbo].[RatingMovie] OFF
GO
SET IDENTITY_INSERT [dbo].[RatingThreater] ON 

INSERT [dbo].[RatingThreater] ([id], [user_email], [threat_id], [numberrating], [comment], [status], [datecomment]) VALUES (2151, N'kimdat1307@gmail.com', 1034, 3, N'rạp đẹ', 1, CAST(N'2021-09-13T12:51:03.330' AS DateTime))
INSERT [dbo].[RatingThreater] ([id], [user_email], [threat_id], [numberrating], [comment], [status], [datecomment]) VALUES (2152, N'bindai243156@gmail.com', 2, 3, N'RẠP ĐƯỢC', 1, CAST(N'2021-09-13T14:35:36.440' AS DateTime))
INSERT [dbo].[RatingThreater] ([id], [user_email], [threat_id], [numberrating], [comment], [status], [datecomment]) VALUES (3149, N'kimdat1999@gmail.com', 2, 5, N'', 1, CAST(N'2021-09-13T22:01:19.543' AS DateTime))
INSERT [dbo].[RatingThreater] ([id], [user_email], [threat_id], [numberrating], [comment], [status], [datecomment]) VALUES (3150, N'kimdat1307@gmail.com', 3, 5, N'sdasdas', 1, CAST(N'2021-09-15T18:27:40.110' AS DateTime))
INSERT [dbo].[RatingThreater] ([id], [user_email], [threat_id], [numberrating], [comment], [status], [datecomment]) VALUES (3154, N'kimdat1307@gmail.com', 1, 5, N'asd', 1, CAST(N'2021-09-16T07:56:27.307' AS DateTime))
INSERT [dbo].[RatingThreater] ([id], [user_email], [threat_id], [numberrating], [comment], [status], [datecomment]) VALUES (3155, N'kimdat1307@gmail.com', 2, 5, N'rạp này đẹp', 2, CAST(N'2021-09-16T10:24:15.523' AS DateTime))
SET IDENTITY_INSERT [dbo].[RatingThreater] OFF
GO
INSERT [dbo].[Room] ([roomId], [roomName], [roomSize], [roomCategory], [threatId]) VALUES (N'R01', NULL, NULL, NULL, 1)
INSERT [dbo].[Room] ([roomId], [roomName], [roomSize], [roomCategory], [threatId]) VALUES (N'R02', NULL, NULL, NULL, 2)
INSERT [dbo].[Room] ([roomId], [roomName], [roomSize], [roomCategory], [threatId]) VALUES (N'R03', NULL, NULL, NULL, 1)
INSERT [dbo].[Room] ([roomId], [roomName], [roomSize], [roomCategory], [threatId]) VALUES (N'R04', NULL, NULL, NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[RowOfSeats] ON 

INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (1, N'R01', N'A')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (2, N'R01', N'B')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (3, N'R01', N'C')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (4, N'R01', N'D')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (5, N'R01', N'E')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (6, N'R01', N'F')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (7, N'R01', N'G')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (8, N'R01', N'H')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (9, N'R02', N'A')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (10, N'R02', N'B')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (11, N'R02', N'C')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (12, N'R02', N'D')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (13, N'R02', N'E')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (14, N'R02', N'F')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (15, N'R02', N'G')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (16, N'R02', N'H')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (17, N'R03', N'A')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (18, N'R03', N'B')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (19, N'R03', N'C')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (20, N'R03', N'D')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (21, N'R03', N'E')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (22, N'R03', N'F')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (23, N'R03', N'G')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (24, N'R03', N'H')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (25, N'R04', N'A')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (26, N'R04', N'B')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (27, N'R04', N'C')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (28, N'R04', N'D')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (29, N'R04', N'E')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (30, N'R04', N'F')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (31, N'R04', N'G')
INSERT [dbo].[RowOfSeats] ([rowId], [roomId], [rowNo]) VALUES (32, N'R04', N'H')
SET IDENTITY_INSERT [dbo].[RowOfSeats] OFF
GO
SET IDENTITY_INSERT [dbo].[Seat] ON 

INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (1, 1, 1, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (2, 2, 1, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (3, 3, 1, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (4, 4, 1, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (5, 5, 1, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (6, 6, 1, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (7, 7, 1, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (8, 8, 1, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (9, 9, 1, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (10, 10, 1, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (11, 11, 1, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (12, 12, 1, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (13, 1, 2, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (14, 2, 2, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (15, 3, 2, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (16, 4, 2, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (17, 5, 2, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (18, 6, 2, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (19, 7, 2, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (20, 8, 2, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (21, 9, 2, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (22, 10, 2, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (23, 11, 2, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (24, 12, 2, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (25, 1, 3, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (26, 2, 3, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (27, 3, 3, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (28, 4, 3, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (29, 5, 3, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (30, 6, 3, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (31, 7, 3, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (32, 8, 3, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (33, 9, 3, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (34, 10, 3, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (35, 11, 3, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (36, 12, 3, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (37, 1, 4, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (38, 2, 4, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (39, 3, 4, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (40, 4, 4, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (41, 5, 4, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (42, 6, 4, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (43, 7, 4, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (44, 8, 4, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (45, 9, 4, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (46, 10, 4, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (47, 11, 4, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (48, 12, 4, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (49, 1, 5, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (50, 2, 5, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (51, 3, 5, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (52, 4, 5, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (53, 5, 5, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (54, 6, 5, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (55, 7, 5, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (56, 8, 5, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (57, 9, 5, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (58, 10, 5, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (59, 11, 5, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (60, 12, 5, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (61, 1, 6, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (62, 2, 6, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (63, 3, 6, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (64, 4, 6, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (65, 5, 6, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (66, 6, 6, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (67, 7, 6, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (68, 8, 6, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (69, 9, 6, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (70, 10, 6, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (71, 11, 6, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (72, 12, 6, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (73, 1, 7, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (74, 2, 7, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (75, 3, 7, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (76, 4, 7, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (77, 5, 7, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (78, 6, 7, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (79, 7, 7, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (80, 8, 7, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (81, 9, 7, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (82, 10, 7, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (83, 11, 7, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (84, 12, 7, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (85, 1, 8, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (86, 2, 8, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (87, 3, 8, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (88, 4, 8, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (89, 5, 8, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (90, 6, 8, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (97, 1, 9, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (98, 2, 9, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (99, 3, 9, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (100, 4, 9, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (101, 5, 9, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (102, 6, 9, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (103, 7, 9, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (104, 8, 9, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (105, 9, 9, 1, 50000)
GO
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (106, 10, 9, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (107, 11, 9, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (108, 12, 9, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (109, 1, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (110, 2, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (111, 3, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (112, 4, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (113, 5, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (114, 6, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (115, 7, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (116, 8, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (117, 9, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (118, 10, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (119, 11, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (120, 12, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (121, 1, 10, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (122, 2, 11, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (123, 3, 11, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (124, 4, 11, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (125, 5, 11, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (126, 6, 11, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (127, 7, 11, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (128, 8, 11, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (129, 9, 11, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (130, 10, 11, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (131, 11, 11, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (132, 12, 11, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (133, 1, 12, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (134, 2, 12, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (135, 3, 12, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (136, 4, 12, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (137, 5, 12, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (138, 6, 12, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (139, 7, 12, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (140, 8, 12, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (141, 9, 12, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (142, 10, 12, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (143, 11, 12, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (144, 12, 12, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (145, 1, 13, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (146, 2, 13, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (147, 3, 13, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (148, 4, 13, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (149, 5, 13, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (150, 6, 13, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (151, 7, 13, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (152, 8, 13, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (153, 9, 13, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (154, 10, 13, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (155, 11, 13, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (156, 12, 13, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (157, 1, 14, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (158, 2, 14, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (159, 3, 14, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (160, 4, 14, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (161, 5, 14, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (162, 6, 14, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (163, 7, 14, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (164, 8, 14, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (165, 9, 14, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (166, 10, 14, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (167, 11, 14, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (168, 12, 14, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (169, 1, 15, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (170, 2, 15, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (171, 3, 15, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (172, 4, 15, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (173, 5, 15, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (174, 6, 15, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (175, 7, 15, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (176, 8, 15, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (177, 9, 15, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (178, 10, 15, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (179, 11, 15, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (180, 12, 15, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (181, 1, 16, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (182, 2, 16, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (183, 3, 16, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (184, 4, 16, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (185, 5, 16, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (186, 6, 16, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (193, 1, 17, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (194, 2, 17, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (195, 3, 17, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (196, 4, 17, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (197, 5, 17, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (198, 6, 17, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (199, 7, 17, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (200, 8, 17, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (201, 9, 17, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (202, 10, 17, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (203, 11, 17, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (204, 12, 17, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (205, 1, 18, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (206, 2, 18, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (207, 3, 18, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (208, 4, 18, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (209, 5, 18, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (210, 6, 18, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (211, 7, 18, 1, 50000)
GO
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (212, 8, 18, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (213, 9, 18, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (214, 10, 18, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (215, 11, 18, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (216, 12, 18, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (217, 1, 19, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (218, 2, 19, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (219, 3, 19, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (220, 4, 19, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (221, 5, 19, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (222, 6, 19, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (223, 7, 19, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (224, 8, 19, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (225, 9, 19, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (226, 10, 19, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (227, 11, 19, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (228, 12, 19, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (229, 1, 20, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (230, 2, 20, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (231, 3, 20, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (232, 4, 20, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (233, 5, 20, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (234, 6, 20, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (235, 7, 20, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (236, 8, 20, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (237, 9, 20, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (238, 10, 20, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (239, 11, 20, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (240, 12, 20, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (241, 1, 21, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (242, 2, 21, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (243, 3, 21, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (244, 4, 21, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (245, 5, 21, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (246, 6, 21, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (247, 7, 21, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (248, 8, 21, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (249, 9, 21, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (250, 10, 21, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (251, 11, 21, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (252, 12, 21, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (253, 1, 22, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (254, 2, 22, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (255, 3, 22, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (256, 4, 22, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (257, 5, 22, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (258, 6, 22, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (259, 7, 22, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (260, 8, 22, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (261, 9, 22, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (262, 10, 22, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (263, 11, 22, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (264, 12, 22, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (265, 1, 23, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (266, 2, 23, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (267, 3, 23, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (268, 4, 23, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (269, 5, 23, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (270, 6, 23, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (271, 7, 23, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (272, 8, 23, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (273, 9, 23, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (274, 10, 23, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (275, 11, 23, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (276, 12, 23, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (277, 1, 24, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (278, 2, 24, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (279, 3, 24, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (280, 4, 24, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (281, 5, 24, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (282, 6, 24, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (289, 1, 25, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (290, 2, 25, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (291, 3, 25, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (292, 4, 25, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (293, 5, 25, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (294, 6, 25, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (295, 7, 25, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (296, 8, 25, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (297, 9, 25, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (298, 10, 25, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (299, 11, 25, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (300, 12, 25, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (301, 1, 26, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (302, 2, 26, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (303, 3, 26, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (304, 4, 26, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (305, 5, 26, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (306, 6, 26, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (307, 7, 26, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (308, 8, 26, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (309, 9, 26, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (310, 10, 26, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (311, 11, 26, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (312, 12, 26, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (313, 1, 27, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (314, 2, 27, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (315, 3, 27, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (316, 4, 27, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (317, 5, 27, 1, 50000)
GO
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (318, 6, 27, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (319, 7, 27, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (320, 8, 27, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (321, 9, 27, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (322, 10, 27, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (323, 11, 27, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (324, 12, 27, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (325, 1, 28, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (326, 2, 28, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (327, 3, 28, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (328, 4, 28, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (329, 5, 28, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (330, 6, 28, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (331, 7, 28, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (332, 8, 28, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (333, 9, 28, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (334, 10, 28, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (335, 11, 28, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (336, 12, 28, 1, 50000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (337, 1, 29, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (338, 2, 29, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (339, 3, 29, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (340, 4, 29, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (341, 5, 29, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (342, 6, 29, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (343, 7, 29, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (344, 8, 29, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (345, 9, 29, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (346, 10, 29, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (347, 11, 29, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (348, 12, 29, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (349, 1, 30, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (350, 2, 30, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (351, 3, 30, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (352, 4, 30, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (353, 5, 30, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (354, 6, 30, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (355, 7, 30, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (356, 8, 30, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (357, 9, 30, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (358, 10, 30, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (359, 11, 30, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (360, 12, 30, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (361, 1, 31, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (362, 2, 31, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (363, 3, 31, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (364, 4, 31, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (365, 5, 31, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (366, 6, 31, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (367, 7, 31, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (368, 8, 31, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (369, 9, 31, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (370, 10, 31, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (371, 11, 31, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (372, 12, 31, 2, 70000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (373, 1, 32, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (374, 2, 32, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (375, 3, 32, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (376, 4, 32, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (377, 5, 32, 3, 100000)
INSERT [dbo].[Seat] ([seatId], [seatNo], [rowId], [type], [price]) VALUES (378, 6, 32, 3, 100000)
SET IDENTITY_INSERT [dbo].[Seat] OFF
GO
SET IDENTITY_INSERT [dbo].[Showtimes] ON 

INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (1, N'M001', N'R01', CAST(N'12:40:00' AS Time), CAST(N'2021-09-26' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (3, N'M002', N'R03', CAST(N'15:30:00' AS Time), CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (4, N'M002', N'R03', CAST(N'16:30:00' AS Time), CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (5, N'M002', N'R04', CAST(N'08:30:00' AS Time), CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (8, N'M001', N'R01', CAST(N'14:00:00' AS Time), CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (11, N'M003', N'R04', CAST(N'21:30:00' AS Time), CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (12, N'M004', N'R03', CAST(N'22:00:00' AS Time), CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (14, N'M005', N'R03', CAST(N'23:10:00' AS Time), CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (15, N'M001', N'R03', CAST(N'20:00:00' AS Time), CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (16, N'M001', N'R03', CAST(N'09:25:00' AS Time), CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (17, N'M001', N'R03', CAST(N'10:30:00' AS Time), CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (18, N'M001', N'R02', CAST(N'13:10:00' AS Time), CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (21, N'M001', N'R01', CAST(N'03:30:00' AS Time), CAST(N'2021-07-06' AS Date))
INSERT [dbo].[Showtimes] ([showtimesId], [movieId], [roomId], [time], [date]) VALUES (22, N'M005', N'R02', CAST(N'16:45:00' AS Time), CAST(N'2021-11-13' AS Date))
SET IDENTITY_INSERT [dbo].[Showtimes] OFF
GO
SET IDENTITY_INSERT [dbo].[Threat] ON 

INSERT [dbo].[Threat] ([id], [name], [phone], [address], [region]) VALUES (1, N'Cinestar My Tho', N'+84 (273) 703 8881', N'52 Dinh Bo Linh Ward 3 My Tho City Tien Giang', N'Tiền Giang')
INSERT [dbo].[Threat] ([id], [name], [phone], [address], [region]) VALUES (2, N'Cinestar Đà Lạt', N'+84 (263) 3969 969', N'Cinestar Da Lat, Lam Vien Square, Ward 10, Da Lat City, Lam Dong', N'Đà Lạt')
INSERT [dbo].[Threat] ([id], [name], [phone], [address], [region]) VALUES (3, N'Cinestar Huế', N' +84 (234) 7300 081', N'
25 Hai Ba Trung, Vinh Ninh Ward, City. Hue', N'Huế')
INSERT [dbo].[Threat] ([id], [name], [phone], [address], [region]) VALUES (4, N'Cinestar Hai Bà Trưng', N'+84 (28)7300 8881', N'135 Hai Ba Trung, Ben Nghe Ward 1, Ho Chi Minh City', N'Hồ Chí Minh')
INSERT [dbo].[Threat] ([id], [name], [phone], [address], [region]) VALUES (5, N'cinstar Huế', N'0909090909', N'Kiệt 71 Nguyễn Tri Phương, Quận Thanh Khê, Việt Nam', N'Hồ Chí Minh')
INSERT [dbo].[Threat] ([id], [name], [phone], [address], [region]) VALUES (1034, N'cinestar huếhai', N'0909090909', N'Hẻm 71 Đường Nguyễn Bặc 71/3, Quận Tân Bình, Việt Nam', N'Hồ Chí Minh')
INSERT [dbo].[Threat] ([id], [name], [phone], [address], [region]) VALUES (1035, N'cinestar hạ long', N'0909090909', N'Hạ Long, Việt Nam', N'Quảng Ninh')
INSERT [dbo].[Threat] ([id], [name], [phone], [address], [region]) VALUES (2045, N'CINESTAR HUẾhh', N'0909090912', N'Hẻm 71 Đường Nguyễn Phúc Chu 71/9, Quận Tân Bình, Việt Nam', N'Hồ Chí Minh')
SET IDENTITY_INSERT [dbo].[Threat] OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket] ON 

INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (13, 14, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 1, 650000, 650000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (16, 14, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 2, 840000, 840000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (18, 14, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 1, 635000, 635000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (20, 14, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 2, 400000, 400000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (22, 14, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 1, 400000, 400000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (24, 14, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 2, 400000, 400000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (26, 14, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 1, 480000, 480000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (28, 14, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 1, 560000, 560000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (30, 14, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 2, 560000, 560000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (32, 14, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 2, 680000, 680000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (34, 14, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 1, 560000, 560000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (37, 14, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 1, 140000, 140000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (39, 17, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 1, 105000, 105000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (41, 17, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 2, 50000, 50000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (43, 17, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 2, 50000, 50000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (47, 17, N'bindai243156@gmail.com', CAST(N'2021-08-28' AS Date), 1, 105000, 105000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (49, 18, N'bindai243156@gmail.com', CAST(N'2021-08-29' AS Date), 1, 105000, 105000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (51, 8, N'bindai243156@gmail.com', CAST(N'2021-08-29' AS Date), 2, 790000, 790000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (53, 16, N'bindai243156@gmail.com', CAST(N'2021-08-29' AS Date), 2, 220000, 220000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (55, 16, N'bindai243156@gmail.com', CAST(N'2021-08-29' AS Date), 1, 395000, 335000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (60, 16, N'bindai243156@gmail.com', CAST(N'2021-08-29' AS Date), 1, 290000, 270000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (64, 18, N'bindai243156@gmail.com', CAST(N'2021-08-29' AS Date), 2, 805000, 805000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (66, 15, N'bindai243156@gmail.com', CAST(N'2021-08-29' AS Date), 2, 815000, 715000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (70, 16, N'bindai243156@gmail.com', CAST(N'2021-08-29' AS Date), 1, 275000, 215000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (72, 18, N'bindai243156@gmail.com', CAST(N'2021-09-03' AS Date), 1, 240000, 240000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (81, 15, N'bindai243156@gmail.com', CAST(N'2021-09-03' AS Date), 1, 120000, 120000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (1071, 22, N'bindai243156@gmail.com', CAST(N'2021-09-07' AS Date), 2, 290000, 230000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (1072, 11, N'daindts1908051@fpt.edu.vn', CAST(N'2021-09-07' AS Date), 2, 285000, 285000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (1073, 12, N'daindts1908051@fpt.edu.vn', CAST(N'2021-09-07' AS Date), 2, 275000, 275000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (1074, 4, N'daindts1908051@fpt.edu.vn', CAST(N'2021-09-07' AS Date), 1, 345000, 345000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (1078, 4, N'kimdat1307@gmail.com', CAST(N'2021-09-08' AS Date), 1, 240000, 240000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (3141, 18, N'bindai243156@gmail.com', CAST(N'2021-09-15' AS Date), 2, 105000, 85000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (3143, 4, N'bindai243156@gmail.com', CAST(N'2021-09-15' AS Date), 1, 100000, 100000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (3144, 15, N'bindai243156@gmail.com', CAST(N'2021-09-15' AS Date), 1, 270000, 230000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (3147, 4, N'bindai243156@gmail.com', CAST(N'2021-09-15' AS Date), 2, 215000, 175000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (3154, 8, N'kimdat1307@gmail.com', CAST(N'2021-09-16' AS Date), 1, 70000, 30000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (3157, 8, N'kimdat1307@gmail.com', CAST(N'2021-09-16' AS Date), 2, 105000, 85000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (3158, 8, N'kimdat1307@gmail.com', CAST(N'2021-09-16' AS Date), 1, 105000, 105000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (3174, 11, N'kimdat1307@gmail.com', CAST(N'2021-09-16' AS Date), 1, 155000, 55000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (3193, 15, N'bindai243156@gmail.com', CAST(N'2021-09-17' AS Date), 2, 310000, 210000, 1)
INSERT [dbo].[Ticket] ([ticketId], [showtimeId], [user_email], [ticketBookingTime], [pay], [totalPrice], [priceHasDropped], [status]) VALUES (3204, 3, N'bindai243156@gmail.com', CAST(N'2021-09-17' AS Date), 1, 50000, 50000, 1)
SET IDENTITY_INSERT [dbo].[Ticket] OFF
GO
SET IDENTITY_INSERT [dbo].[TicketDetailsSeat] ON 

INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (57, 13, 193, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (58, 13, 194, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (59, 13, 195, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (60, 13, 196, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (61, 13, 241, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (62, 13, 242, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (63, 13, 277, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (64, 13, 278, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (81, 16, 197, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (82, 16, 198, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (83, 16, 199, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (84, 16, 200, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (85, 16, 201, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (86, 16, 202, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (87, 16, 203, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (88, 16, 204, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (97, 18, 223, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (98, 18, 227, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (99, 18, 215, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (100, 18, 235, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (101, 18, 236, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (102, 18, 237, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (103, 18, 238, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (104, 18, 239, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (113, 20, 214, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (114, 20, 213, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (115, 20, 212, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (116, 20, 211, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (117, 20, 210, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (118, 20, 209, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (119, 20, 208, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (120, 20, 207, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (129, 22, 216, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (130, 22, 226, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (131, 22, 225, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (132, 22, 224, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (133, 22, 228, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (134, 22, 240, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (135, 22, 222, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (136, 22, 221, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (145, 24, 206, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (146, 24, 205, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (147, 24, 217, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (148, 24, 218, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (149, 24, 219, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (150, 24, 220, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (151, 24, 229, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (152, 24, 230, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (161, 26, 231, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (162, 26, 232, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (163, 26, 233, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (164, 26, 234, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (165, 26, 243, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (166, 26, 244, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (167, 26, 245, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (168, 26, 246, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (177, 28, 253, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (178, 28, 254, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (179, 28, 255, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (180, 28, 256, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (181, 28, 257, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (182, 28, 258, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (183, 28, 265, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (184, 28, 266, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (193, 30, 267, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (194, 30, 268, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (195, 30, 269, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (196, 30, 270, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (197, 30, 271, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (198, 30, 259, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (199, 30, 247, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (200, 30, 272, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (209, 32, 280, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (210, 32, 279, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (211, 32, 281, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (212, 32, 282, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (213, 32, 273, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (214, 32, 260, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (215, 32, 248, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (216, 32, 249, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (225, 34, 261, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (226, 34, 250, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (227, 34, 262, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (228, 34, 274, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (229, 34, 275, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (230, 34, 263, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (231, 34, 276, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (232, 34, 264, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (237, 37, 251, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (238, 37, 252, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (240, 39, 210, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (242, 41, 222, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (244, 43, 224, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (248, 47, 213, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (250, 49, 103, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (259, 51, 17, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (260, 51, 29, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (261, 51, 41, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (262, 51, 18, 50000)
GO
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (263, 51, 19, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (264, 51, 43, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (265, 51, 87, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (266, 51, 70, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (270, 53, 211, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (271, 53, 261, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (272, 53, 277, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (276, 55, 232, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (277, 55, 279, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (278, 55, 257, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (295, 60, 238, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (296, 60, 259, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (297, 60, 282, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (298, 60, 252, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (312, 64, 138, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (313, 64, 139, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (314, 64, 150, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (315, 64, 183, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (316, 64, 184, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (323, 66, 234, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (324, 66, 235, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (325, 66, 270, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (326, 66, 271, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (327, 66, 279, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (328, 66, 280, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (338, 70, 237, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (339, 70, 247, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (340, 70, 281, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (343, 72, 1, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (344, 72, 181, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (345, 72, 163, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (346, 72, 164, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (348, 70, 200, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (349, NULL, NULL, NULL)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (356, 81, 223, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (357, 81, 260, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1341, 1071, 139, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1342, 1071, 161, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1343, 1071, 184, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1344, 1072, 305, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1345, 1072, 340, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1346, 1072, 369, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1347, 1073, 209, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1348, 1073, 247, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1349, 1073, 277, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1350, 1074, 221, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1351, 1074, 256, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1352, 1074, 281, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (1353, 1078, 270, 100000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3361, 3141, 140, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3363, 3143, 211, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3364, 3143, 224, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3365, 3144, 213, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3366, 3147, 225, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3377, 3154, 57, 70000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3379, 3157, 20, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3380, 3158, 1, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3385, 3174, 330, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3386, 3174, 318, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3389, 3193, 224, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3390, 3193, 237, 50000)
INSERT [dbo].[TicketDetailsSeat] ([ticketDetailsId], [ticketId], [seatId], [price]) VALUES (3395, 3204, 223, 50000)
SET IDENTITY_INSERT [dbo].[TicketDetailsSeat] OFF
GO
SET IDENTITY_INSERT [dbo].[TicketDetailsWaterCorn] ON 

INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (17, 13, 1, 2, 110000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (20, 16, 1, 8, 440000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (25, 18, 5, 1, 30000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (26, 18, 6, 1, 25000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (27, 18, 7, 1, 100000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (28, 18, 8, 1, 80000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (30, 39, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (34, 47, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (36, 49, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (43, 51, 2, 1, 40000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (44, 51, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (45, 51, 4, 1, 40000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (46, 51, 8, 1, 80000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (47, 51, 6, 3, 75000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (48, 51, 5, 1, 30000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (52, 55, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (53, 55, 4, 1, 40000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (54, 55, 8, 1, 80000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (58, 64, 4, 2, 80000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (59, 64, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (60, 64, 7, 3, 300000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (64, 66, 1, 4, 220000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (65, 66, 6, 3, 75000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (66, 66, 8, 1, 80000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (74, 70, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (76, 72, 2, 2, 80000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (1075, 1071, 2, 1, 40000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (1076, 1071, 5, 1, 30000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (1077, 1072, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (1078, 1072, 4, 1, 40000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (1079, 1073, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (1080, 1074, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (1081, 1074, 4, 1, 40000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (1082, 1074, 5, 1, 30000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (2154, 3141, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (2155, 3144, 1, 4, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (2156, 3147, 1, 3, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (2160, 3157, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (2161, 3158, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (2164, 3174, 1, 1, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (2165, 3193, 1, 2, 55000)
INSERT [dbo].[TicketDetailsWaterCorn] ([ticketDetailsWaterCornId], [ticketId], [idWaterCorn], [soLuong], [unitPrice]) VALUES (2166, 3193, 7, 1, 100000)
SET IDENTITY_INSERT [dbo].[TicketDetailsWaterCorn] OFF
GO
INSERT [dbo].[Users] ([email], [name], [dob], [phone], [password], [address], [tokenlifetime], [token], [province], [district], [ward], [Gender], [id_facebook], [id_google]) VALUES (N'bindai243156@gmail.com', N'Nguyễn Doãn Đại', NULL, NULL, N'dai123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'100250377276937385824')
INSERT [dbo].[Users] ([email], [name], [dob], [phone], [password], [address], [tokenlifetime], [token], [province], [district], [ward], [Gender], [id_facebook], [id_google]) VALUES (N'daindts1908051@fpt.edu.vn', N'Đại (FPT Aptech)', NULL, NULL, N'dai123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'107629223320726244709')
INSERT [dbo].[Users] ([email], [name], [dob], [phone], [password], [address], [tokenlifetime], [token], [province], [district], [ward], [Gender], [id_facebook], [id_google]) VALUES (N'kimdat1307@gmail.com', N'Trần Kim Đạt', CAST(N'2001-01-02T07:00:00.0000000' AS DateTime2), N'0909090909', N'1234567899', N'Nshape Fitness, Đường Nguyễn Chí Thanh 71, Quận Đống Đa, Việt Nam', 1631797042464, N'CLiSETaLmeyL-AgsH7BzYFK7NniGEgefEPS7VUmIRuIMACa1Aw0EQKHejEZv', N'Đà Nẵng', N'Sơn Trà', N'Nại Hiên Đông', N'Male', N'1080661469345744', N'109794302664024016775')
INSERT [dbo].[Users] ([email], [name], [dob], [phone], [password], [address], [tokenlifetime], [token], [province], [district], [ward], [Gender], [id_facebook], [id_google]) VALUES (N'kimdat1307123@gmail.com', N'tran kim dat', CAST(N'1982-09-16T07:00:00.0000000' AS DateTime2), N'0909090909', N'12345678', N'71/15', NULL, NULL, N'Đắk Lắk', N'Krông Ana', N'Ea Bông', N'Male', NULL, NULL)
INSERT [dbo].[Users] ([email], [name], [dob], [phone], [password], [address], [tokenlifetime], [token], [province], [district], [ward], [Gender], [id_facebook], [id_google]) VALUES (N'kimdat19919@gmail.com', N'trankimdat', CAST(N'2021-09-01T07:00:00.0000000' AS DateTime2), N'0912312312', N'12345678', N'71/15', NULL, NULL, N'Hà Nội', N'Đống Đa', N'Phương Liên', N'Other', NULL, NULL)
INSERT [dbo].[Users] ([email], [name], [dob], [phone], [password], [address], [tokenlifetime], [token], [province], [district], [ward], [Gender], [id_facebook], [id_google]) VALUES (N'kimdat1999@gmail.com', N'Kim Đạt Trần', CAST(N'2021-09-01T00:00:00.0000000' AS DateTime2), N'0909090909', N'123456789', N'Nshape Fitness, Đường Nguyễn Chí Thanh 71, Quận Đống Đa, Việt Nam', NULL, NULL, N'Đồng Nai', N'Long Thành', N'Cẩm Đường', N'Male', NULL, N'108254808577099211452')
INSERT [dbo].[Users] ([email], [name], [dob], [phone], [password], [address], [tokenlifetime], [token], [province], [district], [ward], [Gender], [id_facebook], [id_google]) VALUES (N'kimdat19991@gmail.com', N'trần kim đạt', CAST(N'2021-08-31T00:00:00.0000000' AS DateTime2), N'0909090909', N'12345698', N'Cinestar Hue, Đường Hai Bà Trưng 25, Huế, Việt Nam', NULL, NULL, N'Hồ Chí Minh', N'Bình Tân', N'An Lạc A', N'Other', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[WaterCorn] ON 

INSERT [dbo].[WaterCorn] ([idWaterCorn], [nameWaterCorn], [contentWaterCorn], [imageWaterCorn], [price]) VALUES (1, N'Bắp mặn (lớn)', N'', N'img/bap_man.jpg', 55000)
INSERT [dbo].[WaterCorn] ([idWaterCorn], [nameWaterCorn], [contentWaterCorn], [imageWaterCorn], [price]) VALUES (2, N'Bắp mặn (nhỏ)', N'', N'img/bap_man.jpg', 40000)
INSERT [dbo].[WaterCorn] ([idWaterCorn], [nameWaterCorn], [contentWaterCorn], [imageWaterCorn], [price]) VALUES (3, N'Bắp ngọt (lớn)', N'', N'img/bap_ngot.jpg', 55000)
INSERT [dbo].[WaterCorn] ([idWaterCorn], [nameWaterCorn], [contentWaterCorn], [imageWaterCorn], [price]) VALUES (4, N'Bắp ngọt (nhỏ)', N'', N'img/bap_ngot.jpg', 40000)
INSERT [dbo].[WaterCorn] ([idWaterCorn], [nameWaterCorn], [contentWaterCorn], [imageWaterCorn], [price]) VALUES (5, N'Pepsi (lớn)', N'', N'img/pepsi.jpg', 30000)
INSERT [dbo].[WaterCorn] ([idWaterCorn], [nameWaterCorn], [contentWaterCorn], [imageWaterCorn], [price]) VALUES (6, N'Pepsi (nhỏ)', N'', N'img/pepsi.jpg', 25000)
INSERT [dbo].[WaterCorn] ([idWaterCorn], [nameWaterCorn], [contentWaterCorn], [imageWaterCorn], [price]) VALUES (7, N'Compo 1 bắp nước mặn ngọt (lớn) + 2 Pepsi (lớn)', N'', N'img/compo_bap_nuoc.jpg', 100000)
INSERT [dbo].[WaterCorn] ([idWaterCorn], [nameWaterCorn], [contentWaterCorn], [imageWaterCorn], [price]) VALUES (8, N'Compo 1 bắp nước mặn ngọt (nhỏ) + 2 Pepsi (nhỏ)', N'', N'img/compo_bap_nuoc.jpg', 80000)
SET IDENTITY_INSERT [dbo].[WaterCorn] OFF
GO
SET IDENTITY_INSERT [dbo].[Wishlist] ON 

INSERT [dbo].[Wishlist] ([id], [movie_Id], [user_email]) VALUES (3021, N'M002', N'bindai243156@gmail.com')
INSERT [dbo].[Wishlist] ([id], [movie_Id], [user_email]) VALUES (3022, N'M001', N'bindai243156@gmail.com')
INSERT [dbo].[Wishlist] ([id], [movie_Id], [user_email]) VALUES (3031, N'M006', N'kimdat1307@gmail.com')
INSERT [dbo].[Wishlist] ([id], [movie_Id], [user_email]) VALUES (3032, N'M005', N'kimdat1307@gmail.com')
INSERT [dbo].[Wishlist] ([id], [movie_Id], [user_email]) VALUES (3033, N'M001', N'kimdat1307@gmail.com')
INSERT [dbo].[Wishlist] ([id], [movie_Id], [user_email]) VALUES (3034, N'M013', N'kimdat1307@gmail.com')
SET IDENTITY_INSERT [dbo].[Wishlist] OFF
GO
ALTER TABLE [dbo].[Coupon]  WITH CHECK ADD  CONSTRAINT [FK_Coupon_Users] FOREIGN KEY([user_Email])
REFERENCES [dbo].[Users] ([email])
GO
ALTER TABLE [dbo].[Coupon] CHECK CONSTRAINT [FK_Coupon_Users]
GO
ALTER TABLE [dbo].[MembershipCard]  WITH CHECK ADD  CONSTRAINT [FK_membershipCard_membershipCard] FOREIGN KEY([user_email])
REFERENCES [dbo].[Users] ([email])
GO
ALTER TABLE [dbo].[MembershipCard] CHECK CONSTRAINT [FK_membershipCard_membershipCard]
GO
ALTER TABLE [dbo].[MovieLanguage]  WITH CHECK ADD  CONSTRAINT [FK_MovieLanguage_Language] FOREIGN KEY([idLanguage])
REFERENCES [dbo].[Language] ([languageId])
GO
ALTER TABLE [dbo].[MovieLanguage] CHECK CONSTRAINT [FK_MovieLanguage_Language]
GO
ALTER TABLE [dbo].[MovieLanguage]  WITH CHECK ADD  CONSTRAINT [FK_MovieLanguage_Movie] FOREIGN KEY([idMovie])
REFERENCES [dbo].[Movie] ([movieId])
GO
ALTER TABLE [dbo].[MovieLanguage] CHECK CONSTRAINT [FK_MovieLanguage_Movie]
GO
ALTER TABLE [dbo].[RatingMovie]  WITH CHECK ADD  CONSTRAINT [FK_RatingMovie_RatingMovie] FOREIGN KEY([movie_id])
REFERENCES [dbo].[Movie] ([movieId])
GO
ALTER TABLE [dbo].[RatingMovie] CHECK CONSTRAINT [FK_RatingMovie_RatingMovie]
GO
ALTER TABLE [dbo].[RatingThreater]  WITH CHECK ADD  CONSTRAINT [FK_RatingThreater_Threat] FOREIGN KEY([threat_id])
REFERENCES [dbo].[Threat] ([id])
GO
ALTER TABLE [dbo].[RatingThreater] CHECK CONSTRAINT [FK_RatingThreater_Threat]
GO
ALTER TABLE [dbo].[RatingThreater]  WITH CHECK ADD  CONSTRAINT [FK_RatingThreater_Users] FOREIGN KEY([user_email])
REFERENCES [dbo].[Users] ([email])
GO
ALTER TABLE [dbo].[RatingThreater] CHECK CONSTRAINT [FK_RatingThreater_Users]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Threat] FOREIGN KEY([threatId])
REFERENCES [dbo].[Threat] ([id])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Threat]
GO
ALTER TABLE [dbo].[RowOfSeats]  WITH CHECK ADD  CONSTRAINT [FK_RowOfSeats_Room] FOREIGN KEY([roomId])
REFERENCES [dbo].[Room] ([roomId])
GO
ALTER TABLE [dbo].[RowOfSeats] CHECK CONSTRAINT [FK_RowOfSeats_Room]
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD  CONSTRAINT [FK_Seat_RowOfSeats] FOREIGN KEY([rowId])
REFERENCES [dbo].[RowOfSeats] ([rowId])
GO
ALTER TABLE [dbo].[Seat] CHECK CONSTRAINT [FK_Seat_RowOfSeats]
GO
ALTER TABLE [dbo].[Showtimes]  WITH CHECK ADD  CONSTRAINT [FK_Showtimes_Movie] FOREIGN KEY([movieId])
REFERENCES [dbo].[Movie] ([movieId])
GO
ALTER TABLE [dbo].[Showtimes] CHECK CONSTRAINT [FK_Showtimes_Movie]
GO
ALTER TABLE [dbo].[Showtimes]  WITH CHECK ADD  CONSTRAINT [FK_Showtimes_Room] FOREIGN KEY([roomId])
REFERENCES [dbo].[Room] ([roomId])
GO
ALTER TABLE [dbo].[Showtimes] CHECK CONSTRAINT [FK_Showtimes_Room]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Showtimes] FOREIGN KEY([showtimeId])
REFERENCES [dbo].[Showtimes] ([showtimesId])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Showtimes]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Users] FOREIGN KEY([user_email])
REFERENCES [dbo].[Users] ([email])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Users]
GO
ALTER TABLE [dbo].[TicketDetailsSeat]  WITH CHECK ADD  CONSTRAINT [FK_ticketDetails_Seat] FOREIGN KEY([seatId])
REFERENCES [dbo].[Seat] ([seatId])
GO
ALTER TABLE [dbo].[TicketDetailsSeat] CHECK CONSTRAINT [FK_ticketDetails_Seat]
GO
ALTER TABLE [dbo].[TicketDetailsSeat]  WITH CHECK ADD  CONSTRAINT [FK_TicketDetailsSeat_Ticket] FOREIGN KEY([ticketId])
REFERENCES [dbo].[Ticket] ([ticketId])
GO
ALTER TABLE [dbo].[TicketDetailsSeat] CHECK CONSTRAINT [FK_TicketDetailsSeat_Ticket]
GO
ALTER TABLE [dbo].[TicketDetailsWaterCorn]  WITH CHECK ADD  CONSTRAINT [FK_TicketDetailsWaterCorn_Ticket] FOREIGN KEY([ticketId])
REFERENCES [dbo].[Ticket] ([ticketId])
GO
ALTER TABLE [dbo].[TicketDetailsWaterCorn] CHECK CONSTRAINT [FK_TicketDetailsWaterCorn_Ticket]
GO
ALTER TABLE [dbo].[TicketDetailsWaterCorn]  WITH CHECK ADD  CONSTRAINT [FK_TicketDetailsWaterCorn_WaterCorn] FOREIGN KEY([idWaterCorn])
REFERENCES [dbo].[WaterCorn] ([idWaterCorn])
GO
ALTER TABLE [dbo].[TicketDetailsWaterCorn] CHECK CONSTRAINT [FK_TicketDetailsWaterCorn_WaterCorn]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Movie] FOREIGN KEY([movie_Id])
REFERENCES [dbo].[Movie] ([movieId])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Movie]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Users] FOREIGN KEY([user_email])
REFERENCES [dbo].[Users] ([email])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Users]
GO
