USE [master]
GO
CREATE DATABASE [HotelDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
GO
USE [HotelDB]
GO
CREATE TABLE [dbo].[Booking](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[GuestID] [int] NOT NULL,
	[BookDate] [date] NOT NULL,
	[Duration] [int] NOT NULL,
	[Id_room] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[HotelAdminID] [int] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 17.09.2023 11:46:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderID] [int] IDENTITY(1,1) NOT NULL,
	[GenderName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 17.09.2023 11:46:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest](
	[GuestID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[PhoneNumber] [bigint] NOT NULL,
	[PassportSeries] [int] NOT NULL,
	[PassportNumber] [int] NOT NULL,
	[GenderID] [int] NOT NULL,
 CONSTRAINT [PK_Guest] PRIMARY KEY CLUSTERED 
(
	[GuestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelAdmin]    Script Date: 17.09.2023 11:46:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelAdmin](
	[HotelAdminID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HotelAdmin] PRIMARY KEY CLUSTERED 
(
	[HotelAdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 17.09.2023 11:46:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomName] [nvarchar](50) NOT NULL,
	[RoomNumber] [int] NOT NULL,
	[Seats] [int] NOT NULL,
	[Cost] [float] NOT NULL,
	[RoomStatusID] [int] NOT NULL,
	[RoomCategoryID] [int] NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomCategory]    Script Date: 17.09.2023 11:46:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomCategory](
	[RoomCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[NameOfCategory] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RoomCategory] PRIMARY KEY CLUSTERED 
(
	[RoomCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomStatus]    Script Date: 17.09.2023 11:46:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomStatus](
	[RoomStatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RoomStatus] PRIMARY KEY CLUSTERED 
(
	[RoomStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookDate], [Duration], [Id_room], [Amount], [HotelAdminID]) VALUES (1, 1, CAST(N'2022-06-11' AS Date), 5, 1, 25000, 1)
INSERT [dbo].[Booking] ([BookingID], [GuestID], [BookDate], [Duration], [Id_room], [Amount], [HotelAdminID]) VALUES (9, 6, CAST(N'2023-05-08' AS Date), 5, 11, 100000, 2)
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([GenderID], [GenderName]) VALUES (1, N'Мужчина')
INSERT [dbo].[Gender] ([GenderID], [GenderName]) VALUES (2, N'Женщина')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Guest] ON 

INSERT [dbo].[Guest] ([GuestID], [Surname], [Name], [Patronymic], [PhoneNumber], [PassportSeries], [PassportNumber], [GenderID]) VALUES (1, N'Орлов', N'Павел', N'Олегович', 89618294468, 7657, 766676, 1)
INSERT [dbo].[Guest] ([GuestID], [Surname], [Name], [Patronymic], [PhoneNumber], [PassportSeries], [PassportNumber], [GenderID]) VALUES (6, N'Олежко', N'Петр', N'Николаевич', 89618294868, 8276, 577487, 1)
SET IDENTITY_INSERT [dbo].[Guest] OFF
GO
SET IDENTITY_INSERT [dbo].[HotelAdmin] ON 

INSERT [dbo].[HotelAdmin] ([HotelAdminID], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (1, N'Токарь', N'Евгений', N'Петрович', N'admin', N'admin')
INSERT [dbo].[HotelAdmin] ([HotelAdminID], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (2, N'Чернова', N'Александра', N'Артёмовна', N'admin1', N'admin1')
SET IDENTITY_INSERT [dbo].[HotelAdmin] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([RoomID], [RoomName], [RoomNumber], [Seats], [Cost], [RoomStatusID], [RoomCategoryID]) VALUES (1, N'2-местный номер стандарт (с завтраком)', 11, 2, 5000, 2, 1)
INSERT [dbo].[Room] ([RoomID], [RoomName], [RoomNumber], [Seats], [Cost], [RoomStatusID], [RoomCategoryID]) VALUES (2, N'2-местный номер стандарт (с завтраком и ужином)', 12, 2, 5500, 1, 1)
INSERT [dbo].[Room] ([RoomID], [RoomName], [RoomNumber], [Seats], [Cost], [RoomStatusID], [RoomCategoryID]) VALUES (3, N'Номер комфорт (с завтраком)', 13, 3, 5600, 1, 2)
INSERT [dbo].[Room] ([RoomID], [RoomName], [RoomNumber], [Seats], [Cost], [RoomStatusID], [RoomCategoryID]) VALUES (6, N'Номер комфорт (с завтраком и ужином)', 21, 3, 6500, 1, 2)
INSERT [dbo].[Room] ([RoomID], [RoomName], [RoomNumber], [Seats], [Cost], [RoomStatusID], [RoomCategoryID]) VALUES (7, N'Люкс апартаменты (с завтраком)', 22, 5, 17000, 1, 3)
INSERT [dbo].[Room] ([RoomID], [RoomName], [RoomNumber], [Seats], [Cost], [RoomStatusID], [RoomCategoryID]) VALUES (11, N'Люкс апартаменты (с завтраком и ужином)', 31, 5, 20000, 1, 3)
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomCategory] ON 

INSERT [dbo].[RoomCategory] ([RoomCategoryID], [NameOfCategory]) VALUES (1, N'Стандарт')
INSERT [dbo].[RoomCategory] ([RoomCategoryID], [NameOfCategory]) VALUES (2, N'Полулюкс')
INSERT [dbo].[RoomCategory] ([RoomCategoryID], [NameOfCategory]) VALUES (3, N'Люкс')
SET IDENTITY_INSERT [dbo].[RoomCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomStatus] ON 

INSERT [dbo].[RoomStatus] ([RoomStatusID], [StatusName]) VALUES (1, N'Свободно')
INSERT [dbo].[RoomStatus] ([RoomStatusID], [StatusName]) VALUES (2, N'Занято')
SET IDENTITY_INSERT [dbo].[RoomStatus] OFF
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Guest] FOREIGN KEY([GuestID])
REFERENCES [dbo].[Guest] ([GuestID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Guest]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_HotelAdmin] FOREIGN KEY([HotelAdminID])
REFERENCES [dbo].[HotelAdmin] ([HotelAdminID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_HotelAdmin]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Room] FOREIGN KEY([Id_room])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Room]
GO
ALTER TABLE [dbo].[Guest]  WITH CHECK ADD  CONSTRAINT [FK_Guest_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([GenderID])
GO
ALTER TABLE [dbo].[Guest] CHECK CONSTRAINT [FK_Guest_Gender]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomCategory] FOREIGN KEY([RoomCategoryID])
REFERENCES [dbo].[RoomCategory] ([RoomCategoryID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomCategory]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomStatus] FOREIGN KEY([RoomStatusID])
REFERENCES [dbo].[RoomStatus] ([RoomStatusID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomStatus]
GO
USE [master]
GO
ALTER DATABASE [HotelDB] SET  READ_WRITE 
GO
