USE [DU_LICH]
GO
/****** Object:  Table [dbo].[CHI_TIET_TOUR]    Script Date: 1/2/2021 11:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_TOUR](
	[MA_TOUR] [int] NOT NULL,
	[MA_DIEM_DL] [int] NOT NULL,
 CONSTRAINT [PK_CHI_TIET_TOUR_1] PRIMARY KEY CLUSTERED 
(
	[MA_TOUR] ASC,
	[MA_DIEM_DL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUONG_TRINH_TOUR]    Script Date: 1/2/2021 11:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUONG_TRINH_TOUR](
	[MA_TOUR] [int] IDENTITY(1,1) NOT NULL,
	[HINH_ANH] [nchar](250) NULL,
	[TEN_TOUR] [nvarchar](250) NULL,
	[GIA_TOUR] [decimal](18, 0) NULL,
	[NGAY_KHOI_HANH] [date] NULL,
	[NGAY_KET_THUC] [date] NULL,
	[SO_CHO] [int] NULL,
	[GHI_CHU] [nvarchar](250) NULL,
	[LICH_TRINH] [nvarchar](max) NULL,
	[NOI_DUNG] [nvarchar](max) NULL,
	[CHINH_SACH] [nvarchar](max) NULL,
	[CAU_HOI_THUONG_GAP] [nvarchar](max) NULL,
	[KHUYEN_MAI] [bit] NULL,
 CONSTRAINT [PK_CHUONG_TRINH_TOUR] PRIMARY KEY CLUSTERED 
(
	[MA_TOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DAT_TOUR]    Script Date: 1/2/2021 11:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DAT_TOUR](
	[MA_DAT_TOUR] [int] NOT NULL,
	[MA_TOUR] [int] NOT NULL,
	[MA_KH] [int] NOT NULL,
	[GIA_NGUOI_LON] [decimal](18, 0) NULL,
	[GIA_TRE_EM] [decimal](18, 0) NULL,
	[SO_NGAY] [int] NULL,
	[SO_CHO_DAT] [int] NULL,
	[NGAY_DAT] [date] NULL,
	[PHU_THU] [decimal](18, 0) NULL,
	[THANH_TIEN] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DAT_TOUR] PRIMARY KEY CLUSTERED 
(
	[MA_DAT_TOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DIEM_DU_LICH]    Script Date: 1/2/2021 11:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIEM_DU_LICH](
	[MA_DIEM_DL] [int] NOT NULL,
	[HINH_ANH] [nchar](250) NULL,
	[TEN_DIEM_DL] [nvarchar](250) NULL,
	[THONG_TIN] [nvarchar](250) NULL,
	[MA_TINH] [int] NOT NULL,
 CONSTRAINT [PK_DIEM_DU_LICH] PRIMARY KEY CLUSTERED 
(
	[MA_DIEM_DL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HINH_ANH]    Script Date: 1/2/2021 11:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HINH_ANH](
	[MA_HINH_ANH] [int] NOT NULL,
	[TEN_HINH_ANH] [nvarchar](250) NULL,
	[LINK_HINH_ANH] [nchar](250) NULL,
	[MA_DIEM_DL] [int] NOT NULL,
 CONSTRAINT [PK_HINH_ANH] PRIMARY KEY CLUSTERED 
(
	[MA_HINH_ANH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 1/2/2021 11:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[MA_KH] [int] IDENTITY(1,1) NOT NULL,
	[TEN_KH] [nvarchar](250) NULL,
	[NGAY_SINH] [date] NULL,
	[GIOI_TINH] [nvarchar](10) NULL,
	[CMND] [nchar](20) NULL,
	[PASSPORT] [nchar](20) NULL,
	[MA_QUOC_GIA] [nchar](10) NULL,
	[DIA_CHI] [nvarchar](250) NULL,
	[EMAIL] [nchar](250) NULL,
	[TAI_KHOAN_KH] [nchar](250) NULL,
	[MAT_KHAU_KH] [nchar](20) NULL,
	[DIEN_THOAI] [nchar](20) NULL,
	[GHI_CHU] [nvarchar](250) NULL,
 CONSTRAINT [PK_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[MA_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MIEN]    Script Date: 1/2/2021 11:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MIEN](
	[MA_MIEN] [int] NOT NULL,
	[TEN_MIEN] [nvarchar](250) NULL,
	[TRONG_NGOAI_NUOC] [bit] NULL,
 CONSTRAINT [PK_MIEN] PRIMARY KEY CLUSTERED 
(
	[MA_MIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QUAN_TRI_VIEN]    Script Date: 1/2/2021 11:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUAN_TRI_VIEN](
	[TAI_KHOAN] [nchar](250) NOT NULL,
	[MAT_KHAU] [nchar](20) NULL,
 CONSTRAINT [PK_PHAN_QUYEN] PRIMARY KEY CLUSTERED 
(
	[TAI_KHOAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QUOC_GIA]    Script Date: 1/2/2021 11:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUOC_GIA](
	[MA_QUOC_GIA] [nchar](10) NOT NULL,
	[TEN_QUOC_GIA] [nvarchar](250) NULL,
	[GHI_CHU] [nvarchar](250) NULL,
 CONSTRAINT [PK_QUOC_GIA] PRIMARY KEY CLUSTERED 
(
	[MA_QUOC_GIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TINH]    Script Date: 1/2/2021 11:18:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINH](
	[MA_TINH] [int] NOT NULL,
	[TEN_TINH] [nvarchar](250) NULL,
	[MA_MIEN] [int] NULL,
 CONSTRAINT [PK_TINH_1] PRIMARY KEY CLUSTERED 
(
	[MA_TINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CHUONG_TRINH_TOUR] ON 

INSERT [dbo].[CHUONG_TRINH_TOUR] ([MA_TOUR], [HINH_ANH], [TEN_TOUR], [GIA_TOUR], [NGAY_KHOI_HANH], [NGAY_KET_THUC], [SO_CHO], [GHI_CHU], [LICH_TRINH], [NOI_DUNG], [CHINH_SACH], [CAU_HOI_THUONG_GAP], [KHUYEN_MAI]) VALUES (1, N'phuquoc.jpg                                                                                                                                                                                                                                               ', N'DU LỊCH TẾT TÂN SỬU 2021 PHÚ QUỐC [MÙNG 2, 3, 4 TẾT] KHỞI HÀNH TỪ CẦN THƠ', CAST(3290000 AS Decimal(18, 0)), CAST(0x29420B00 AS Date), NULL, NULL, N'Tour Tết', N'<strong>Ngày 01: CẦN THƠ – PHÚ QUỐC (Ăn ba bữa) </strong><br>
02h30 Xe và hướng dẫn viên đón khách tại văn phòng Lữ hành Saigontourist. Khởi hành đi bến tàu Rạch Giá.<br>
06h00 Dùng điểm tâm sáng. Lên tàu đi <strong>Phú Quốc chuyến 07h20</strong><br>
09h50 Đến Phú Quốc, xe đón đoàn tham quan <strong>Suối Tranh</strong>.<br>
12h00 Dùng cơm trưa. Nhận phòng khách sạn.<br>
Buổi chiều <strong>Chương trình lựa chọn:</strong><br>
<strong><u>Lựa chọn 1:</u></strong> Xe đưa đoàn đi tham quan <strong>Chùa Hộ Quốc</strong> và tiếp tục đến <strong>Bãi Sao</strong> – bãi biển cát trắng đẹp và thơ mộng nhất Đảo Ngọc Phú Quốc. Quý khách tự do tham quan tắm biển và chiêm ngưỡng vẻ đẹp tự nhiên với biển xanh cát trắng được bao trọn giữa những ngọn núi đồi.<br>
<strong><u>Lựa chọn 2:</u></strong>&nbsp; Xe đưa đoàn đến An Thới di chuyển đến <strong>Hòn Thơm</strong> <strong>bằng hệ thống cáp treo Vượt biển dài nhất thế giới</strong>. Trải nghiệm bãi biển Hòn Thơm: Hòa mình vào làn nước biển xanh biếc tại một trong những hòn đảo đẹp nhất Việt Nam. Quý khách tắm biển và trải nghiệm các trò chơi tại Bãi Trào –một bãi biển hoang sơ với bãi cát trắng trải dài, nước biển xanh biếc. Bên cạnh đó còn có các trò chơi biển vô cùng hấp dẫn như : <strong>Jetki, phao kéo chuối, dù lượn, nhà phao công viên nước, chèo thuyền kayak… Thưởng thức show diễn đa màu sắc của các vũ công Philippines và Châu Âu, nghệ sỹ dân gian,… (Chi phí cáp treo tự túc)</strong>. Trên đường về du khách <strong>tham quan cơ sở nuôi cấy ngọc trai</strong>. Tại đây du khách sẽ được tìm hiểu quá trình nuôi cấy ngọc trai thiên nhiên và mua sắm các trang sức bằng ngọc trai chính hiệu.<br>
18h00 Dùng cơm tối. Tối Tự do khám phá Chợ đêm Phú Quốc. <strong>Nghỉ đêm tại Phú Quốc.</strong>
<strong><img src="~/Content/image/dinhty.jpg" style="width: 100%;"></strong>
<strong>Bãi biển Phú Quốc</strong>

<strong>Ngày 02: KHÁM PHÁ ĐẢO NGỌC PHÚ QUỐC (Ăn sáng, trưa)</strong><br>
06h30 Đoàn dùng điểm tâm sáng tại khách sạn.<br>
07h30 Quý khách tham quan<strong> Dinh Cậu </strong>ngắm <strong>ngọn hải đăng Dương Đông</strong> trong buổi sáng biển đảo đầy thơ mộng. Đoàn ghé thăm <strong>cơ sở nhà thùng Phú Quốc</strong> – tìm hiểu qui trình chế biến nước mắm nổi tiếng của Đảo Ngọc. Mua sắm các loại đặc sản... Tiếp theo Quý khách tham quan <strong>Vườn Tiêu Phú Quốc, Lò chế biến rượu sim. </strong>Quý khách có thể mua đặc sản &nbsp;địa phương về làm qua cho người thân.<br>
11h00 Quý khách dùng cơm trưa và về khách sạn nghỉ ngơi.<br>
Buổi chiều <strong>Chương trình tự chọn (Tự túc tham quan và di chuyển) </strong> <br>
<strong><u>Lựa chọn 1</u></strong>: <strong>Tham quan Khu vui chơi giải trí </strong><strong>VinWonders</strong><strong> Phú Quốc</strong> với các trò chơi trong nhà, trò chơi ngoài trời lần đầu tiên xuất hiện tại Việt Nam: Đĩa quay siêu tốc, Cối xay gió, Đĩa bay…, Lâu đài Cổ tích; Khu công viên nước&nbsp;với các trò chơi mạo hiểm: Boomerang khổng lồ, Đường trượt siêu lòng chảo, Dòng sông lười, lâu đài, bể tạo sóng…; Phim 5D với nhiều kỹ xảo và hiệu ứng hiện đại; Khu Thủy Cung với hàng trăm loài sinh vật biển quý hiếm: chim Cánh cụt,&nbsp; cá Nemo, cá Napoleon, cá Mập trắng, cua King Crab…Thưởng thức chương trình biểu diễn nhạc nước, biểu diễn cá heo, nàng tiên cá,…<strong>(Chi phí tự túc)</strong><br>
<strong><u>Lựa chọn 2</u></strong>: <strong>Khám phá Khu Vinpearl Safari</strong>: khám phá Vườn Thú Hoang Dã đầu tiên tại Việt Nam với quy mô 180ha, cùng hơn 130 loài động vật quý hiếm và các chương trình Biểu diễn động vật, Chụp ảnh với động vật, Khám phá và trải nghiệm Vườn thú mở trong rừng tự nhiên, gần gũi và thân thiện với con người <strong>(Chi phí tự túc)<br>
Tối Tự do khám phá đảo ngọc. Nghỉ đêm tại Phú Quốc.</strong>
<strong><img src="~/Content/image/nghiatrangHangDuong.jpg" style="width: 100%;"></strong>
<strong>Khu vui chơi giải trí </strong>

<strong>Ngày 03: PHÚ QUỐC – CẦN THƠ (Ăn ba bữa)</strong><br>
06h30 Đoàn dùng điểm tâm sáng tại khách sạn.<br>
07h30 Xe đưa đoàn tham quan <strong>Chợ Dương Đông</strong>, mua đặc sản về làm quà cho người thân. <br>
11h00 Đoàn dùng cơm trưa. Trả phòng.<br>
13h00 Xe đưa đoàn ra bến tàu làm thủ tục về <strong>Rạch Giá chuyến 14h15</strong>.<br>
16h45 Xe đón đoàn tại bến tàu Rạch Giá đưa về điểm đón ban đầu. Qúy khách ăn nhẹ bánh mỳ trên xe.<br>
20h00 Đến điểm đón ban đầu. Kết thúc chương trình. Chào tạm biệt và hẹn gặp lại!', N'- Du lịch Tết Tân Sửu 2021
- Tham quan VinWonders Phú Quốc là công viên theo chủ  đề đầu tiên tại Việt Nam
- Trải nghiệm đến Hòn Thơm bằng hệ thống cáp treo vượt biển dài nhất thế giới
- Tham quan và trải nghiệm cơ sở nuối cấy ngọc trai, cơ sở nhà thùng Phú Quốc.', N'<strong>* Giá tour trọn gói bao gồm</strong><br>
- Chi phí xe máy lạnh đời mới phục vụ chương trình tham quan (Loại xe phụ thuộc vào số lượng đoàn).<br>
- Chi phí vé tàu cao tốc: Rạch Giá – Phú Quốc – Rạch Giá.<br>
- Chi phí 02 đêm khách sạn theo tiêu chuẩn 2 – 4 khách/phòng.<br>
- Chi phí ăn, uống theo chương trình (03 bữa sáng + 04 bữa chính + 01 bữa ăn nhẹ).<br>
- Chi phí tham quan theo chương trình.<br>
- Chi phí Hướng dẫn viên tiếng Việt suốt tuyến.<br>
- Quà tặng: Nón, nước suối, khăn lạnh<br>
- Thuế VAT.<br>
- Bảo hiểm du lịch tối đa 150.000.000đ/vụ/khách.

<strong>* Giá tour không bao gồm</strong><br>
- Chi phí khách ngủ phòng đơn.<br>
- Chi phí tham quan ngoài chương trình.<br>
<strong>- Vé cáp treo Hòn Thơm + công viên nước 400.000đ/khách.<br>
- Vé tham quan VINWONDERS 750.000đ/khách; Vé tham quan VINPEARL SAFARI 650.000đ/khách; (Combo một ngày 1.000.000đ/khách)</strong><br>
- Chi phí câu cá, câu mực.<br>
- Chi phí điện thoại, giặt ủi, và chi phí cá nhân khác.

<strong>* Giá vé trẻ em</strong><br>
- Trẻ em <strong>dưới 05 tuổi: </strong>miễn phí vé tour, cha mẹ tự lo chi phí phát sinh của bé.<br>
- Trẻ em <strong>từ 05 – dưới 06 tuổi: thu 500.000đ chi phí vé tàu cao tốc</strong>, miễn phí vé tour, cha mẹ tự lo chi phí phát sinh của bé.<br>
- Trẻ em <strong>từ 06 – dưới 11 tuổi: </strong>thu 50% giá tour người lớn và ngủ chung giường với ba mẹ.<br>
- Trẻ em <strong>từ 11 tuổi trở lên</strong> tính vé như người lớn.<br>
<strong><u>&nbsp;Lưu ý:</u></strong> 02 (hai) người lớn chỉ được kèm với 1 (một) trẻ em dưới 06 tuổi. Nếu trẻ em đi kèm nhiều hơn thì từ em thứ hai phải mua ½ vé.<br>
<strong>Trẻ em free mua ghế ngồi : Giá 950.000vnd/bé</strong>', NULL, NULL)
INSERT [dbo].[CHUONG_TRINH_TOUR] ([MA_TOUR], [HINH_ANH], [TEN_TOUR], [GIA_TOUR], [NGAY_KHOI_HANH], [NGAY_KET_THUC], [SO_CHO], [GHI_CHU], [LICH_TRINH], [NOI_DUNG], [CHINH_SACH], [CAU_HOI_THUONG_GAP], [KHUYEN_MAI]) VALUES (2, N'vuontraicay.jpg                                                                                                                                                                                                                                           ', N'DU LỊCH TẾT TÂN SỬU 2021 CẦN THƠ - CỒN SƠN - CHÂU ĐỐC [MÙNG 2,3,4 TẾT]', CAST(3529000 AS Decimal(18, 0)), CAST(0x2A420B00 AS Date), NULL, NULL, N'Tour Tết', N'<strong>NGÀY 01: TP. HỒ CHÍ Minh - CÁI BÈ - CẦN THƠ (Ăn sáng, trưa, chiều)</strong><br>
Buổi sáng, quý khách tập trung tại văn phòng Lữ hành&nbsp;Saigontourist. Xe và hướng dẫn viên của Lữ hành Saigontourist đón khách (lúc 06h00 sáng tại 45 Lê Thánh Tôn, Quận 1 hoặc lúc 06h30 sáng tại số 1 Nguyễn Chí Thanh, Quận 5), khởi hành đi Cần Thơ. Đoàn xuống thuyền đến <strong>Cồn Sơn,</strong> trải nghiệm cuộc sống bình dị của cư dân miền sông nước Nam Bộ. Quý khách lên<strong> tham quan bè cá</strong>, tìm hiểu quy trình nuôi cá thát lát, cá trạch lẩu, lươn,... Đến cồn Sơn, quý khách tản bộ trên con đường qua <strong>những vườn cây ăn trái </strong>xum xuê rợp bóng mát, <strong>thưởng thức các loại trái cây (tùy mùa)</strong>: vú sữa, nhãn, chôm chôm, bưởi, dâu da,... Đoàn ăn trưa với những <strong>món ăn Nam Bộ </strong>được chế biến từ nguồn thực phẩm sạch tự cung tự cấp trên cồn,&nbsp; được hướng dẫn và <strong>trải nghiệm tự làm một loại bánh dân gian</strong>: bánh khọt, bánh in, bánh kẹp cuốn,... Xe đón đoàn tại bến thuyền về khách sạn nhận phòng nghỉ ngơi, buổi tối tự do đi dạo bến Ninh Kiều, chợ đêm Cần Thơ. Nghỉ đêm tại Cần Thơ.
<img src="" style="width: 100%;">
<strong>Vườn cây ăn trái xum xuê</strong>

<strong>NGÀY 02 : CẦN THƠ - CHÂU ĐỐC&nbsp;(Ăn sáng, trưa, chiều)</strong><br>
Buổi sáng, tham quan <strong>Cầu Tình Yêu</strong>. Viếng <strong>Thiền viện Trúc Lâm Phương Nam</strong> - thiền viện lớn nhất miền Tây. Khởi hành đi Châu Đốc, trên đường tham quan<strong> rừng tràm Trà Sư,</strong> du khách sẽ được bước đi trên&nbsp; – <strong>“Cầu tre vạn bước”</strong> với chiều dài hơn 2km len lỏi vào rừng, hòa mình vào thiên nhiên sinh thái hoang dã, thông thả khám phá những bí ẩn mà một khu rừng đang hiện hữu, đi tắc ráng theo những con rạch xuyên qua Lung Sen và khu Rừng Giống, lên tháp vọng cảnh cao 23m nhìn toàn cảnh rừng tràm và tượng Phật Di Lặc, chùa Vạn Linh trên núi Cấm bằng kính viễn vọng. Nghỉ đêm tại Châu Đốc.
<img src="" style="width: 100%;">
<strong>Thiền viện Trúc Lâm Phương Nam</strong>

<strong>NGÀY 03: CHÂU ĐỐC - TP. HỒ CHÍ Minh (Ăn sáng, trưa)</strong><br>
Buổi sáng&nbsp; trả phòng viếng <strong>Miếu Bà Chúa Xứ, Tây An cổ tự, Lăng Thoại Ngọc Hầu</strong> - danh nhân có công khai mở đất An Giang, <strong>Chùa Hang</strong> - ngôi chùa gắn liền với truyền thuyết 2 con rắn lớn biết nghe kinh Phật. Khởi hành về TP. HCM. Đến Sa Đéc tham quan <strong>Nhà Cổ Huỳnh Thủy Lê </strong>– Ông là người tình của Marguerite Duras – Mối tình đó được bà viết nên tiểu thuyết và dựng thành phim Người tình (L’Amant), Dùng cơm trưa tại Sa Đéc .Đến TP.HCM, đưa quý khách về văn phòng Saigontourist. Kết thúc chương trình.
<img src="" style="width: 100%;">
<strong>Nhà Cổ Huỳnh Thủy Lê</strong>', N'- Du lịch Tết Tân Sửu 2021 Cần Thơ - Châu Đốc
- Tham quan bè cá, tìm hiểu quy trình nuôi cá thát lát, cá trạch lẩu, lươn,...
-  Viếng Thiền viện Trúc Lâm Phương Nam - thiền viện lớn nhất miền Tây.
- Tham quan rừng tràm Trà Sư, du khách sẽ được bước đi trên  – “Cầu tre vạn bước”.', N'<strong>* Giá tour bao gồm:&nbsp;&nbsp;</strong><br>
- Chi phí xe phục vụ theo chương trình.<br>
- Chi phí ăn – uống theo chương trình.<br>
- Chi phí khách sạn tiêu chuẩn 2 khách/phòng.&nbsp;lẻ khác ngủ giường phụ hoặc chịu <strong>chi phí phụ thu phòng đơn: <br>
Khởi hành 13/02/2021 (Mùng 2) : + 950.000 đ/ khách/ tour.<br>
Khởi hành 14/02/2021 (Mùng 3) : + 900.000 đ/ khách/ tour.<br>
Khởi hành 15/02/2021 (Mùng 4) : + 750.000 đ/ khách/ tour.<br>
* Cần Thơ :</strong> TTC,&nbsp;Mường Thanh, Nesta, ..<br>
* <b>Châu Đốc: </b>Hạnh Phát...<br>
<em>Hoặc các khách sạn khác tương đương</em><br>
- Chi phí tham quan, hướng dẫn viên tiếng Việt<br>
<strong>- Quà tặng: Nón, nước suối, khăn lạnh</strong>

<strong>* Giá tour không bao gồm: </strong><br>
- Ăn uống ngoài chương trình, giặt ủi, điện thoại và các chi phí cá nhân<br>
-<strong> Chi phí phụ thu phòng đơn: <br>
Khởi hành mùng 2 tết : + 950.000 đ/ khách/ tour.<br>
Khởi hành mùng 3 tết : + 900.000 đ/ khách/ tour.<br>
Khởi hành mùng 4 tết : + 750.000 đ/ khách/ tour.</strong><br>
<strong>- Phụ thu khách nước ngoài&nbsp;</strong>:&nbsp;<strong>+ 450.000&nbsp;đ/ khách/ tour</strong>', NULL, NULL)
SET IDENTITY_INSERT [dbo].[CHUONG_TRINH_TOUR] OFF
INSERT [dbo].[DIEM_DU_LICH] ([MA_DIEM_DL], [HINH_ANH], [TEN_DIEM_DL], [THONG_TIN], [MA_TINH]) VALUES (1, NULL, N'HÀ NỘI', NULL, 1)
INSERT [dbo].[DIEM_DU_LICH] ([MA_DIEM_DL], [HINH_ANH], [TEN_DIEM_DL], [THONG_TIN], [MA_TINH]) VALUES (2, NULL, N'HẠ LONG', NULL, 2)
INSERT [dbo].[DIEM_DU_LICH] ([MA_DIEM_DL], [HINH_ANH], [TEN_DIEM_DL], [THONG_TIN], [MA_TINH]) VALUES (3, NULL, N'SAPA', NULL, 3)
INSERT [dbo].[DIEM_DU_LICH] ([MA_DIEM_DL], [HINH_ANH], [TEN_DIEM_DL], [THONG_TIN], [MA_TINH]) VALUES (4, NULL, N'NINH BÌNH', NULL, 4)
INSERT [dbo].[DIEM_DU_LICH] ([MA_DIEM_DL], [HINH_ANH], [TEN_DIEM_DL], [THONG_TIN], [MA_TINH]) VALUES (5, NULL, N'PHAN THIẾT', NULL, 5)
SET IDENTITY_INSERT [dbo].[KHACH_HANG] ON 

INSERT [dbo].[KHACH_HANG] ([MA_KH], [TEN_KH], [NGAY_SINH], [GIOI_TINH], [CMND], [PASSPORT], [MA_QUOC_GIA], [DIA_CHI], [EMAIL], [TAI_KHOAN_KH], [MAT_KHAU_KH], [DIEN_THOAI], [GHI_CHU]) VALUES (1, N'Nguyễn Thị Lan', CAST(0xE6160B00 AS Date), N'Nữ', N'041910019909        ', N'L02318320           ', N'VN        ', N'căn hộ CBD Premium, 125 Đồng Văn Cống, phường Thạnh Mỹ Lợi, Quận 2, TP. HCM', N'lan123@gmail.com                                                                                                                                                                                                                                          ', N'nguyenlan                                                                                                                                                                                                                                                 ', N'lan123              ', N'0321234679          ', NULL)
INSERT [dbo].[KHACH_HANG] ([MA_KH], [TEN_KH], [NGAY_SINH], [GIOI_TINH], [CMND], [PASSPORT], [MA_QUOC_GIA], [DIA_CHI], [EMAIL], [TAI_KHOAN_KH], [MAT_KHAU_KH], [DIEN_THOAI], [GHI_CHU]) VALUES (2, N'Jeckson Doshi', CAST(0x591B0B00 AS Date), N'Nam', N'0321967014809       ', N'J2380167            ', N'US        ', N'130 Hồ Tùng Mậu, phường Bến Nghé, quận 1, TP.HCM', N'son@gmail.com                                                                                                                                                                                                                                             ', N'jeckson                                                                                                                                                                                                                                                   ', N'jeck123             ', N'093641340`          ', NULL)
SET IDENTITY_INSERT [dbo].[KHACH_HANG] OFF
INSERT [dbo].[MIEN] ([MA_MIEN], [TEN_MIEN], [TRONG_NGOAI_NUOC]) VALUES (1, N'Miền Bắc', 1)
INSERT [dbo].[MIEN] ([MA_MIEN], [TEN_MIEN], [TRONG_NGOAI_NUOC]) VALUES (2, N'Miền Trung', 1)
INSERT [dbo].[MIEN] ([MA_MIEN], [TEN_MIEN], [TRONG_NGOAI_NUOC]) VALUES (3, N'Miền Nam', 1)
INSERT [dbo].[MIEN] ([MA_MIEN], [TEN_MIEN], [TRONG_NGOAI_NUOC]) VALUES (4, N'Châu Á', 0)
INSERT [dbo].[MIEN] ([MA_MIEN], [TEN_MIEN], [TRONG_NGOAI_NUOC]) VALUES (5, N'Châu Âu', 0)
INSERT [dbo].[MIEN] ([MA_MIEN], [TEN_MIEN], [TRONG_NGOAI_NUOC]) VALUES (6, N'Châu Mỹ - Châu Úc - Châu Phi', 0)
INSERT [dbo].[QUOC_GIA] ([MA_QUOC_GIA], [TEN_QUOC_GIA], [GHI_CHU]) VALUES (N'KH        ', N'Campuchia', NULL)
INSERT [dbo].[QUOC_GIA] ([MA_QUOC_GIA], [TEN_QUOC_GIA], [GHI_CHU]) VALUES (N'LA        ', N'Lào', NULL)
INSERT [dbo].[QUOC_GIA] ([MA_QUOC_GIA], [TEN_QUOC_GIA], [GHI_CHU]) VALUES (N'US        ', N'Hoa Kỳ', NULL)
INSERT [dbo].[QUOC_GIA] ([MA_QUOC_GIA], [TEN_QUOC_GIA], [GHI_CHU]) VALUES (N'VN        ', N'Việt Nam', NULL)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (1, N'Hà Nội', 1)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (2, N'Hạ Long', 1)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (3, N'SaPa', 1)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (4, N'Ninh Bình', 1)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (5, N'Phan Thiết', 2)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (6, N'Nha Trang', 2)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (7, N'Đà Lạt', 2)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (8, N'Tây Nguyên', 2)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (9, N'Đà Nẵng', 2)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (10, N'Nghệ An', 2)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (11, N'Phú Quốc', 3)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (12, N'Côn Đảo', 3)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (13, N'Vũng Tàu', 3)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (14, N'TP.Hồ Chí Minh', 3)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (15, N'Du lịch Campuchia', 4)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (16, N'Du lịch Đài Loan', 4)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (17, N'Du lịch Hàn Quốc', 4)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (18, N'Du lịch Malaysia', 4)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (19, N'Du lịch Nhật Bản', 4)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (20, N'Du lịch Singapore', 4)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (21, N'Du lịch Thái Lan', 4)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (22, N'Du lịch Trung Quốc', 4)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (23, N'Du lịch Anh', 5)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (24, N'Du lịch Châu Âu', 5)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (25, N'Du lịch Nga', 5)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (26, N'Du lịch Scotland', 5)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (27, N'Du lịch Úc', 6)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (28, N'Du lịch Mỹ', 6)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (29, N'Du lịch Nam Phi', 6)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (30, N'Du lịch New Zealand', 6)
INSERT [dbo].[TINH] ([MA_TINH], [TEN_TINH], [MA_MIEN]) VALUES (31, N'Du lịch Canada', 6)
ALTER TABLE [dbo].[CHI_TIET_TOUR]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_TOUR_CHUONG_TRINH_TOUR] FOREIGN KEY([MA_TOUR])
REFERENCES [dbo].[CHUONG_TRINH_TOUR] ([MA_TOUR])
GO
ALTER TABLE [dbo].[CHI_TIET_TOUR] CHECK CONSTRAINT [FK_CHI_TIET_TOUR_CHUONG_TRINH_TOUR]
GO
ALTER TABLE [dbo].[CHI_TIET_TOUR]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_TOUR_DIEM_DU_LICH] FOREIGN KEY([MA_DIEM_DL])
REFERENCES [dbo].[DIEM_DU_LICH] ([MA_DIEM_DL])
GO
ALTER TABLE [dbo].[CHI_TIET_TOUR] CHECK CONSTRAINT [FK_CHI_TIET_TOUR_DIEM_DU_LICH]
GO
ALTER TABLE [dbo].[DAT_TOUR]  WITH CHECK ADD  CONSTRAINT [FK_DAT_TOUR_KHACH_HANG] FOREIGN KEY([MA_TOUR])
REFERENCES [dbo].[KHACH_HANG] ([MA_KH])
GO
ALTER TABLE [dbo].[DAT_TOUR] CHECK CONSTRAINT [FK_DAT_TOUR_KHACH_HANG]
GO
ALTER TABLE [dbo].[DIEM_DU_LICH]  WITH CHECK ADD  CONSTRAINT [FK_DIEM_DU_LICH_TINH] FOREIGN KEY([MA_TINH])
REFERENCES [dbo].[TINH] ([MA_TINH])
GO
ALTER TABLE [dbo].[DIEM_DU_LICH] CHECK CONSTRAINT [FK_DIEM_DU_LICH_TINH]
GO
ALTER TABLE [dbo].[HINH_ANH]  WITH CHECK ADD  CONSTRAINT [FK_HINH_ANH_DIEM_DU_LICH1] FOREIGN KEY([MA_DIEM_DL])
REFERENCES [dbo].[DIEM_DU_LICH] ([MA_DIEM_DL])
GO
ALTER TABLE [dbo].[HINH_ANH] CHECK CONSTRAINT [FK_HINH_ANH_DIEM_DU_LICH1]
GO
ALTER TABLE [dbo].[KHACH_HANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACH_HANG_QUOC_GIA] FOREIGN KEY([MA_QUOC_GIA])
REFERENCES [dbo].[QUOC_GIA] ([MA_QUOC_GIA])
GO
ALTER TABLE [dbo].[KHACH_HANG] CHECK CONSTRAINT [FK_KHACH_HANG_QUOC_GIA]
GO
ALTER TABLE [dbo].[TINH]  WITH CHECK ADD  CONSTRAINT [FK_TINH_MIEN] FOREIGN KEY([MA_MIEN])
REFERENCES [dbo].[MIEN] ([MA_MIEN])
GO
ALTER TABLE [dbo].[TINH] CHECK CONSTRAINT [FK_TINH_MIEN]
GO
