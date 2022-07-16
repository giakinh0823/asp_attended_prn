USE [prn_project]
GO
SET IDENTITY_INSERT [dbo].[class] ON 
GO
INSERT [dbo].[class] ([id], [name]) VALUES (1, N'SE1610')
GO
INSERT [dbo].[class] ([id], [name]) VALUES (2, N'SE1611')
GO
INSERT [dbo].[class] ([id], [name]) VALUES (3, N'SE1617')
GO
INSERT [dbo].[class] ([id], [name]) VALUES (4, N'SE1618')
GO
SET IDENTITY_INSERT [dbo].[class] OFF
GO
SET IDENTITY_INSERT [dbo].[course] ON 
GO
INSERT [dbo].[course] ([id], [name]) VALUES (2, N'PRN')
GO
INSERT [dbo].[course] ([id], [name]) VALUES (3, N'SWP')
GO
INSERT [dbo].[course] ([id], [name]) VALUES (4, N'SWT')
GO
INSERT [dbo].[course] ([id], [name]) VALUES (5, N'SWR')
GO
INSERT [dbo].[course] ([id], [name]) VALUES (6, N'LAB')
GO
INSERT [dbo].[course] ([id], [name]) VALUES (7, N'PRO')
GO
INSERT [dbo].[course] ([id], [name]) VALUES (8, N'PRF')
GO
SET IDENTITY_INSERT [dbo].[course] OFF
GO
SET IDENTITY_INSERT [dbo].[room] ON 
GO
INSERT [dbo].[room] ([id], [name]) VALUES (1, N'D101')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (2, N'D102')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (3, N'D103')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (4, N'D104')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (5, N'D105')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (6, N'D106')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (7, N'D107')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (8, N'D108')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (9, N'D109')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (10, N'D110')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (11, N'D201')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (12, N'D202')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (13, N'D203')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (14, N'D204')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (15, N'D205')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (16, N'D206')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (17, N'D207')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (18, N'D208')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (19, N'D209')
GO
INSERT [dbo].[room] ([id], [name]) VALUES (20, N'D210')
GO
SET IDENTITY_INSERT [dbo].[room] OFF
GO
SET IDENTITY_INSERT [dbo].[slot] ON 
GO
INSERT [dbo].[slot] ([id], [name]) VALUES (1, N'Slot 1')
GO
INSERT [dbo].[slot] ([id], [name]) VALUES (2, N'Slot 2')
GO
INSERT [dbo].[slot] ([id], [name]) VALUES (3, N'Slot 3')
GO
INSERT [dbo].[slot] ([id], [name]) VALUES (4, N'Sot 4')
GO
INSERT [dbo].[slot] ([id], [name]) VALUES (5, N'Slot 5')
GO
INSERT [dbo].[slot] ([id], [name]) VALUES (6, N'Slot 6')
GO
SET IDENTITY_INSERT [dbo].[slot] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 
GO
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (1, N'kinhhghe153111', N'giakinh0823', N'kinhhghe153111@fpt.edu.vn', N'+84972141556', N'Hà Gia Kính', 1, 0)
GO
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (2, N'anhntlhe150434', N'giakinh0823', N'anhntlhe150434@fpt.edu.vn', N'0983306694', N'Nguyễn Thị Lan Anh', 0, 0)
GO
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (3, N'QuangTNHE130045', N'giakinh0823', N'QuangTNHE130045@fpt.edu.vn', N'012345678', N'Trần Nhật Quang', 1, 0)
GO
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (4, N'BachPVHE130919', N'giakinh0823', N'BachPVHE130919@fpt.edu.vn', N'0123456789', N'Phan Viết Bách', 1, 0)
GO
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (5, N'LongNVHE140051', N'giakinh0823', N'LongNVHE140051@fpt.edu.vn', N'012356789', N'Nguyễn Viết Long', 1, 0)
GO
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (6, N'HungNTHE140253', N'giakinh0823', N'HungNTHE140253@fpt.edu', N'0123456789', N'Nguyễn Thế Hùng', 1, 0)
GO
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (7, N'SonNDHE140443', N'giakinh0823', N'SonNDHE140443@fpt.edu.vn', N'0123456789', N'Nguyễn Đức Sơn', 1, 0)
GO
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (8, N'DucNAHE150620', N'giakinh0823', N'DucNAHE150620@fpt.edu.vn', N'0123456789', N'Ngô Anh Đức', 1, 0)
GO
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (9, N'teacher1', N'giakinh0823', N'teacher1@fpt.edu.vn', N'0123456789', N'teacher1', 0, 0)
GO
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (10, N'admin', N'giakinh0823', N'admin@gmail.com', N'0123456789', N'admin', 1, 1)
GO
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (14, N'teacher2', N'giakinh0823', N'teacher2@fpt.edu.vn', N'0123456789', N'teacher2', 1, 0)
GO
SET IDENTITY_INSERT [dbo].[user] OFF
GO
INSERT [dbo].[session] ([roomid], [slotid], [date], [courseid], [userid], [classid]) VALUES (1, 1, CAST(N'2022-07-16' AS Date), 2, 9, 1)
GO
INSERT [dbo].[session] ([roomid], [slotid], [date], [courseid], [userid], [classid]) VALUES (1, 1, CAST(N'2022-07-20' AS Date), 2, 9, 1)
GO
INSERT [dbo].[session] ([roomid], [slotid], [date], [courseid], [userid], [classid]) VALUES (1, 2, CAST(N'2022-07-16' AS Date), 2, 9, 1)
GO
INSERT [dbo].[session] ([roomid], [slotid], [date], [courseid], [userid], [classid]) VALUES (1, 3, CAST(N'2022-07-16' AS Date), 3, 9, 1)
GO
INSERT [dbo].[session] ([roomid], [slotid], [date], [courseid], [userid], [classid]) VALUES (1, 4, CAST(N'2022-07-16' AS Date), 6, 14, 1)
GO
INSERT [dbo].[user_class] ([classid], [userid], [courseid]) VALUES (1, 1, 2)
GO
INSERT [dbo].[user_class] ([classid], [userid], [courseid]) VALUES (1, 2, 2)
GO
INSERT [dbo].[user_class] ([classid], [userid], [courseid]) VALUES (1, 3, 2)
GO
INSERT [dbo].[user_class] ([classid], [userid], [courseid]) VALUES (1, 4, 2)
GO
INSERT [dbo].[user_class] ([classid], [userid], [courseid]) VALUES (1, 5, 2)
GO
INSERT [dbo].[user_class] ([classid], [userid], [courseid]) VALUES (1, 6, 2)
GO
INSERT [dbo].[user_class] ([classid], [userid], [courseid]) VALUES (1, 7, 2)
GO
INSERT [dbo].[user_class] ([classid], [userid], [courseid]) VALUES (1, 8, 2)
GO
SET IDENTITY_INSERT [dbo].[group] ON 
GO
INSERT [dbo].[group] ([id], [name]) VALUES (1, N'admin')
GO
INSERT [dbo].[group] ([id], [name]) VALUES (2, N'teacher')
GO
INSERT [dbo].[group] ([id], [name]) VALUES (3, N'student')
GO
SET IDENTITY_INSERT [dbo].[group] OFF
GO
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (1, 10)
GO
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (2, 9)
GO
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (2, 14)
GO
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (3, 1)
GO
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (3, 2)
GO
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (3, 3)
GO
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (3, 4)
GO
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (3, 5)
GO
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (3, 6)
GO
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (3, 7)
GO
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (3, 8)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-16' AS Date), 1, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-16' AS Date), 2, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-16' AS Date), 3, 0)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-16' AS Date), 4, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-16' AS Date), 5, 0)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-16' AS Date), 6, 0)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-16' AS Date), 7, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-16' AS Date), 8, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-20' AS Date), 1, 0)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-20' AS Date), 2, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-20' AS Date), 3, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-20' AS Date), 4, 0)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-20' AS Date), 5, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-20' AS Date), 6, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-20' AS Date), 7, 0)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 1, CAST(N'2022-07-20' AS Date), 8, 0)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 2, CAST(N'2022-07-16' AS Date), 1, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 2, CAST(N'2022-07-16' AS Date), 2, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 2, CAST(N'2022-07-16' AS Date), 3, 0)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 2, CAST(N'2022-07-16' AS Date), 4, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 2, CAST(N'2022-07-16' AS Date), 5, 0)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 2, CAST(N'2022-07-16' AS Date), 6, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 2, CAST(N'2022-07-16' AS Date), 7, 1)
GO
INSERT [dbo].[attended] ([roomid], [slotid], [date], [userid], [status]) VALUES (1, 2, CAST(N'2022-07-16' AS Date), 8, 1)
GO
