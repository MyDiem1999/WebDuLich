USE [DU_LICH]
GO
/****** Object:  Table [dbo].[CHI_TIET_TOUR]    Script Date: 01/15/2021 2:43:51 AM ******/
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
/****** Object:  Table [dbo].[CHUONG_TRINH_TOUR]    Script Date: 01/15/2021 2:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUONG_TRINH_TOUR](
	[MA_TOUR] [int] IDENTITY(1,1) NOT NULL,
	[HINH_ANH] [nchar](250) NULL,
	[TEN_TOUR] [nvarchar](250) NULL,
	[MA_LOAI_TOUR] [int] NULL,
	[GIA_NGUOI_LON] [decimal](18, 0) NULL,
	[GIA_TRE_EM] [decimal](18, 0) NULL,
	[NGAY_KHOI_HANH] [datetime] NULL,
	[NGAY_KET_THUC] [datetime] NULL,
	[SO_CHO] [int] NULL,
	[GHI_CHU] [nvarchar](max) NULL,
	[LICH_TRINH] [nvarchar](max) NULL,
	[NOI_DUNG] [nvarchar](max) NULL,
	[CHINH_SACH] [nvarchar](max) NULL,
	[CAU_HOI_THUONG_GAP] [nvarchar](max) NULL,
 CONSTRAINT [PK_CHUONG_TRINH_TOUR] PRIMARY KEY CLUSTERED 
(
	[MA_TOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DAT_TOUR]    Script Date: 01/15/2021 2:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DAT_TOUR](
	[MA_DAT_TOUR] [int] IDENTITY(1,1) NOT NULL,
	[MA_TOUR] [int] NOT NULL,
	[MA_KH] [int] NOT NULL,
	[GIA_NGUOI_LON] [decimal](18, 0) NULL,
	[GIA_TRE_EM] [decimal](18, 0) NULL,
	[SO_NGAY] [int] NULL,
	[SO_CHO_NGUOI_LON] [int] NULL,
	[SO_CHO_TRE_EM] [int] NULL,
	[NGAY_DAT] [datetime] NULL,
	[PHU_THU] [decimal](18, 0) NULL,
	[THANH_TIEN] [decimal](18, 0) NULL,
	[TRANGTHAI] [bit] NOT NULL,
 CONSTRAINT [PK_DAT_TOUR] PRIMARY KEY CLUSTERED 
(
	[MA_DAT_TOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DIEM_DU_LICH]    Script Date: 01/15/2021 2:43:51 AM ******/
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
/****** Object:  Table [dbo].[HINH_ANH]    Script Date: 01/15/2021 2:43:51 AM ******/
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
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 01/15/2021 2:43:51 AM ******/
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
/****** Object:  Table [dbo].[LOAI_TOUR]    Script Date: 01/15/2021 2:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_TOUR](
	[MA_LOAI_TOUR] [int] IDENTITY(1,1) NOT NULL,
	[TEN_LOAI] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_LOAI_TOUR] PRIMARY KEY CLUSTERED 
(
	[MA_LOAI_TOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MIEN]    Script Date: 01/15/2021 2:43:51 AM ******/
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
/****** Object:  Table [dbo].[QUAN_TRI_VIEN]    Script Date: 01/15/2021 2:43:51 AM ******/
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
/****** Object:  Table [dbo].[QUOC_GIA]    Script Date: 01/15/2021 2:43:51 AM ******/
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
/****** Object:  Table [dbo].[TINH]    Script Date: 01/15/2021 2:43:51 AM ******/
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

INSERT [dbo].[CHUONG_TRINH_TOUR] ([MA_TOUR], [HINH_ANH], [TEN_TOUR], [MA_LOAI_TOUR], [GIA_NGUOI_LON], [GIA_TRE_EM], [NGAY_KHOI_HANH], [NGAY_KET_THUC], [SO_CHO], [GHI_CHU], [LICH_TRINH], [NOI_DUNG], [CHINH_SACH], [CAU_HOI_THUONG_GAP]) VALUES (1, N'phuquoc.jpg                                                                                                                                                                                                                                               ', N'DU LỊCH TẾT TÂN SỬU 2021 PHÚ QUỐC [MÙNG 2, 3, 4 TẾT] KHỞI HÀNH TỪ CẦN THƠ', 1, CAST(3290000 AS Decimal(18, 0)), CAST(1645000 AS Decimal(18, 0)), CAST(0x0000ACCE00000000 AS DateTime), NULL, NULL, NULL, N'Ngày 01: CẦN THƠ – PHÚ QUỐC (Ăn ba bữa)    
02h30 Xe và hướng dẫn viên đón khách tại văn phòng Lữ hành VietTravel. Khởi hành đi bến tàu Rạch Giá. 
06h00 Dùng điểm tâm sáng. Lên tàu đi Phú Quốc chuyến 07h20   
09h50 Đến Phú Quốc, xe đón đoàn tham quan Suối Tranh  . 
12h00 Dùng cơm trưa. Nhận phòng khách sạn. 
Buổi chiều  Chương trình lựa chọn:   
  Lựa chọn 1: Xe đưa đoàn đi tham quan Chùa Hộ Quốc và tiếp tục đến  Bãi Sao – bãi biển cát trắng đẹp và thơ mộng nhất Đảo Ngọc Phú Quốc. Quý khách tự do tham quan tắm biển và chiêm ngưỡng vẻ đẹp tự nhiên với biển xanh cát trắng được bao trọn giữa những ngọn núi đồi. 
  Lựa chọn 2: Xe đưa đoàn đến An Thới di chuyển đến  Hòn Thơm bằng hệ thống cáp treo Vượt biển dài nhất thế giới. Trải nghiệm bãi biển Hòn Thơm: Hòa mình vào làn nước biển xanh biếc tại một trong những hòn đảo đẹp nhất Việt Nam. Quý khách tắm biển và trải nghiệm các trò chơi tại Bãi Trào – một bãi biển hoang sơ với bãi cát trắng trải dài, nước biển xanh biếc. Bên cạnh đó còn có các trò chơi biển vô cùng hấp dẫn như: Jetki, phao kéo chuối, dù lượn, nhà phao công viên nước, chèo thuyền kayak… Thưởng thức show diễn đa màu sắc của các vũ công Philippines và Châu Âu, nghệ sỹ dân gian,… (Chi phí cáp treo tự túc). Trên đường về du khách tham quan cơ sở nuôi cấy ngọc trai. Tại đây du khách sẽ được tìm hiểu quá trình nuôi cấy ngọc trai thiên nhiên và mua sắm các trang sức bằng ngọc trai chính hiệu. 
18h00 Dùng cơm tối. Tối Tự do khám phá Chợ đêm Phú Quốc. Nghỉ đêm tại Phú Quốc.  

Ngày 02: KHÁM PHÁ ĐẢO NGỌC PHÚ QUỐC (Ăn sáng, trưa)   
06h30 Đoàn dùng điểm tâm sáng tại khách sạn. 
07h30 Quý khách tham quan Dinh Cậu ngắm ngọn hải đăng Dương Đông trong buổi sáng biển đảo đầy thơ mộng. Đoàn ghé thăm  cơ sở nhà thùng Phú Quốc – tìm hiểu qui trình chế biến nước mắm nổi tiếng của Đảo Ngọc. Mua sắm các loại đặc sản... Tiếp theo Quý khách tham quan  Vườn Tiêu Phú Quốc, Lò chế biến rượu sim. Quý khách có thể mua đặc sản địa phương về làm qua cho người thân. 
11h00 Quý khách dùng cơm trưa và về khách sạn nghỉ ngơi. 
Buổi chiều Chương trình tự chọn (Tự túc tham quan và di chuyển)     
  Lựa chọn 1: Tham quan Khu vui chơi giải trí VinWonders Phú Quốc với các trò chơi trong nhà, trò chơi ngoài trời lần đầu tiên xuất hiện tại Việt Nam: Đĩa quay siêu tốc, Cối xay gió, Đĩa bay…, Lâu đài Cổ tích; Khu công viên nước&nbsp;với các trò chơi mạo hiểm: Boomerang khổng lồ, Đường trượt siêu lòng chảo, Dòng sông lười, lâu đài, bể tạo sóng…; Phim 5D với nhiều kỹ xảo và hiệu ứng hiện đại; Khu Thủy Cung với hàng trăm loài sinh vật biển quý hiếm: chim Cánh cụt,&nbsp; cá Nemo, cá Napoleon, cá Mập trắng, cua King Crab…Thưởng thức chương trình biểu diễn nhạc nước, biểu diễn cá heo, nàng tiên cá,… (Chi phí tự túc)   
  Lựa chọn 2: Khám phá Khu Vinpearl Safari: khám phá Vườn Thú Hoang Dã đầu tiên tại Việt Nam với quy mô 180ha, cùng hơn 130 loài động vật quý hiếm và các chương trình Biểu diễn động vật, Chụp ảnh với động vật, Khám phá và trải nghiệm Vườn thú mở trong rừng tự nhiên, gần gũi và thân thiện với con người  (Chi phí tự túc) 
Tối Tự do khám phá đảo ngọc. Nghỉ đêm tại Phú Quốc.  

Ngày 03: PHÚ QUỐC – CẦN THƠ (Ăn ba bữa)   
06h30 Đoàn dùng điểm tâm sáng tại khách sạn. 
07h30 Xe đưa đoàn tham quan  Chợ Dương Đông, mua đặc sản về làm quà cho người thân.  
11h00 Đoàn dùng cơm trưa. Trả phòng. 
13h00 Xe đưa đoàn ra bến tàu làm thủ tục về Rạch Giá chuyến 14h15  . 
16h45 Xe đón đoàn tại bến tàu Rạch Giá đưa về điểm đón ban đầu. Qúy khách ăn nhẹ bánh mỳ trên xe. 
20h00 Đến điểm đón ban đầu. Kết thúc chương trình. Chào tạm biệt và hẹn gặp lại!', N'- Du lịch Tết Tân Sửu 2021
- Tham quan VinWonders Phú Quốc là công viên theo chủ  đề đầu tiên tại Việt Nam
- Trải nghiệm đến Hòn Thơm bằng hệ thống cáp treo vượt biển dài nhất thế giới
- Tham quan và trải nghiệm cơ sở nuối cấy ngọc trai, cơ sở nhà thùng Phú Quốc.', N' * Giá tour trọn gói bao gồm   
- Chi phí xe máy lạnh đời mới phục vụ chương trình tham quan (Loại xe phụ thuộc vào số lượng đoàn). 
- Chi phí vé tàu cao tốc: Rạch Giá – Phú Quốc – Rạch Giá. 
- Chi phí 02 đêm khách sạn theo tiêu chuẩn 2 – 4 khách/phòng. 
- Chi phí ăn, uống theo chương trình (03 bữa sáng + 04 bữa chính + 01 bữa ăn nhẹ). 
- Chi phí tham quan theo chương trình. 
- Chi phí Hướng dẫn viên tiếng Việt suốt tuyến. 
- Quà tặng: Nón, nước suối, khăn lạnh 
- Thuế VAT. 
- Bảo hiểm du lịch tối đa 150.000.000đ/vụ/khách.

 * Giá tour không bao gồm   
- Chi phí khách ngủ phòng đơn. 
- Chi phí tham quan ngoài chương trình. 
- Vé cáp treo Hòn Thơm + công viên nước 400.000đ/khách. 
- Vé tham quan VINWONDERS 750.000đ/khách; Vé tham quan VINPEARL SAFARI 650.000đ/khách; (Combo một ngày 1.000.000đ/khách)   
- Chi phí câu cá, câu mực. 
- Chi phí điện thoại, giặt ủi, và chi phí cá nhân khác.

 * Giá vé trẻ em   
- Trẻ em dưới 05 tuổi: miễn phí vé tour, cha mẹ tự lo chi phí phát sinh của bé. 
- Trẻ em từ 05 – dưới 06 tuổi: thu 500.000đ chi phí vé tàu cao tốc, miễn phí vé tour, cha mẹ tự lo chi phí phát sinh của bé. 
- Trẻ em từ 06 – dưới 11 tuổi: thu 50% giá tour người lớn và ngủ chung giường với ba mẹ. 
- Trẻ em từ 11 tuổi trở lên tính vé như người lớn. 
  Lưu ý: 02 (hai) người lớn chỉ được kèm với 1 (một) trẻ em dưới 06 tuổi. Nếu trẻ em đi kèm nhiều hơn thì từ em thứ hai phải mua ½ vé. 
 Trẻ em free mua ghế ngồi: Giá 950.000vnd/bé  ', NULL)
INSERT [dbo].[CHUONG_TRINH_TOUR] ([MA_TOUR], [HINH_ANH], [TEN_TOUR], [MA_LOAI_TOUR], [GIA_NGUOI_LON], [GIA_TRE_EM], [NGAY_KHOI_HANH], [NGAY_KET_THUC], [SO_CHO], [GHI_CHU], [LICH_TRINH], [NOI_DUNG], [CHINH_SACH], [CAU_HOI_THUONG_GAP]) VALUES (2, N'vuontraicay.jpg                                                                                                                                                                                                                                           ', N'DU LỊCH TẾT TÂN SỬU 2021 CẦN THƠ - CỒN SƠN - CHÂU ĐỐC [MÙNG 2,3,4 TẾT]', 1, CAST(3529000 AS Decimal(18, 0)), CAST(1765000 AS Decimal(18, 0)), CAST(0x0000ACCF00000000 AS DateTime), NULL, NULL, NULL, N' NGÀY 01: TP. HỒ CHÍ Minh - CÁI BÈ - CẦN THƠ (Ăn sáng, trưa, chiều)   
Buổi sáng, quý khách tập trung tại văn phòng Lữ hành VietTravel. Xe và hướng dẫn viên của Lữ hành VietTravel đón khách (lúc 06h00 sáng tại 45 Lê Thánh Tôn, Quận 1 hoặc lúc 06h30 sáng tại số 1 Nguyễn Chí Thanh, Quận 5), khởi hành đi Cần Thơ. Đoàn xuống thuyền đến  Cồn Sơn, trải nghiệm cuộc sống bình dị của cư dân miền sông nước Nam Bộ. Quý khách lên  tham quan bè cá  , tìm hiểu quy trình nuôi cá thát lát, cá trạch lẩu, lươn,... Đến cồn Sơn, quý khách tản bộ trên con đường qua những vườn cây ăn trái xum xuê rợp bóng mát, thưởng thức các loại trái cây (tùy mùa): vú sữa, nhãn, chôm chôm, bưởi, dâu da,... Đoàn ăn trưa với những  món ăn Nam Bộ được chế biến từ nguồn thực phẩm sạch tự cung tự cấp trên cồn, được hướng dẫn và  trải nghiệm tự làm một loại bánh dân gian: bánh khọt, bánh in, bánh kẹp cuốn,... Xe đón đoàn tại bến thuyền về khách sạn nhận phòng nghỉ ngơi, buổi tối tự do đi dạo bến Ninh Kiều, chợ đêm Cần Thơ. Nghỉ đêm tại Cần Thơ.

NGÀY 02 : CẦN THƠ - CHÂU ĐỐC (Ăn sáng, trưa, chiều)   
Buổi sáng, tham quan  Cầu Tình Yêu. Viếng  Thiền viện Trúc Lâm Phương Nam - thiền viện lớn nhất miền Tây. Khởi hành đi Châu Đốc, trên đường tham quan  rừng tràm Trà Sư, du khách sẽ được bước đi trên – “Cầu tre vạn bước” với chiều dài hơn 2km len lỏi vào rừng, hòa mình vào thiên nhiên sinh thái hoang dã, thông thả khám phá những bí ẩn mà một khu rừng đang hiện hữu, đi tắc ráng theo những con rạch xuyên qua Lung Sen và khu Rừng Giống, lên tháp vọng cảnh cao 23m nhìn toàn cảnh rừng tràm và tượng Phật Di Lặc, chùa Vạn Linh trên núi Cấm bằng kính viễn vọng. Nghỉ đêm tại Châu Đốc. 

NGÀY 03: CHÂU ĐỐC - TP. HỒ CHÍ Minh (Ăn sáng, trưa)   
Buổi sáng trả phòng viếng  Miếu Bà Chúa Xứ, Tây An cổ tự, Lăng Thoại Ngọc Hầu - danh nhân có công khai mở đất An Giang, Chùa Hang - ngôi chùa gắn liền với truyền thuyết 2 con rắn lớn biết nghe kinh Phật. Khởi hành về TP. HCM. Đến Sa Đéc tham quan  Nhà Cổ Huỳnh Thủy Lê – Ông là người tình của Marguerite Duras – Mối tình đó được bà viết nên tiểu thuyết và dựng thành phim Người tình (L’Amant), Dùng cơm trưa tại Sa Đéc .Đến TP.HCM, đưa quý khách về văn phòng VietTravel. Kết thúc chương trình.', N'- Du lịch Tết Tân Sửu 2021 Cần Thơ - Châu Đốc
- Tham quan bè cá, tìm hiểu quy trình nuôi cá thát lát, cá trạch lẩu, lươn,...
-  Viếng Thiền viện Trúc Lâm Phương Nam - thiền viện lớn nhất miền Tây.
- Tham quan rừng tràm Trà Sư, du khách sẽ được bước đi trên – “Cầu tre vạn bước”.', N' * Giá tour bao gồm: 
- Chi phí xe phục vụ theo chương trình. 
- Chi phí ăn – uống theo chương trình. 
- Chi phí khách sạn tiêu chuẩn 2 khách/phòng lẻ khác ngủ giường phụ hoặc chịu chi phí phụ thu phòng đơn:  
Khởi hành 13/02/2021 (Mùng 2): + 950.000 đ/ khách/ tour. 
Khởi hành 14/02/2021 (Mùng 3): + 900.000 đ/ khách/ tour. 
Khởi hành 15/02/2021 (Mùng 4): + 750.000 đ/ khách/ tour. 
* Cần Thơ: TTC, Mường Thanh, Nesta, .. 
* Châu Đốc: Hạnh Phát... 
Hoặc các khách sạn khác tương đương
- Chi phí tham quan, hướng dẫn viên tiếng Việt 
- Quà tặng: Nón, nước suối, khăn lạnh  

 * Giá tour không bao gồm:    
- Ăn uống ngoài chương trình, giặt ủi, điện thoại và các chi phí cá nhân 
-  Chi phí phụ thu phòng đơn:  
Khởi hành mùng 2 tết: + 950.000 đ/ khách/ tour. 
Khởi hành mùng 3 tết: + 900.000 đ/ khách/ tour. 
Khởi hành mùng 4 tết: + 750.000 đ/ khách/ tour.   
- Phụ thu khách nước ngoài + 450.000 đ/ khách/ tour', NULL)
INSERT [dbo].[CHUONG_TRINH_TOUR] ([MA_TOUR], [HINH_ANH], [TEN_TOUR], [MA_LOAI_TOUR], [GIA_NGUOI_LON], [GIA_TRE_EM], [NGAY_KHOI_HANH], [NGAY_KET_THUC], [SO_CHO], [GHI_CHU], [LICH_TRINH], [NOI_DUNG], [CHINH_SACH], [CAU_HOI_THUONG_GAP]) VALUES (3, N'phanthiet.jpg                                                                                                                                                                                                                                             ', N'DU LỊCH TẾT TÂN SỬU 2021 PHAN THIẾT - MŨI NÉ - LÀNG CHÀI XƯA [MÙNG 2,3,4 TẾT]', 1, CAST(4559000 AS Decimal(18, 0)), CAST(1970000 AS Decimal(18, 0)), CAST(0x0000ACCE00000000 AS DateTime), NULL, NULL, NULL, N'NGÀY 01 : TP. HCM - PHAN THIẾT - LÀNG CHÀI XƯA (Ăn sáng, trưa, chiều)
Đón quý khách tại văn phòng lữ hành VietTravel (lúc 06h00 sáng tại 45 Lê Thánh Tôn, Quận 1 hoặc lúc 06h30 sáng tại số 1 Nguyễn Chí Thanh, Quận 5), khởi hành đi Bình Thuận. Đến Phan Thiết, quý khách tham quan không gian trưng bày nghệ thuật “Làng chài xưa”. Toàn bộ khu trưng bày có diện tích 1.600m². Đây là không gian trưng bày nghệ thuật và là bảo tàng thu nhỏ, tái hiện lại một phần làng chài xưa của Phan Thiết - Mũi Né cách đây hơn 300 năm. Du khách đến đây sẽ được tham quan làng chài dưới rặng dừa; phố cổ ven sông Cà Ty; nhà ở và nơi sản xuất nước mắm của hàm hộ Phan Thiết; con đường Phan Thiết - Mũi Né xưa; đắm mình vào biển Mũi Né 3D và mua sắm trong không gian chợ quê làng xưa… tận mắt được chứng kiến một làng chài xưa của xứ biển Phan Thiết được tái hiện một cách công phu. Nhận phòng và tự do tắm biển tại resort. Nghỉ đêm tại Mũi Né.

NGÀY 02 : THAM QUAN MŨI NÉ - XEM NHẠC KỊCH FISHER MEN SHOW (Ăn sáng, trưa, chiều)
Buổi sáng, quý khách tự do nghỉ dưỡng hay tắm biển tại khách sạn. Buổi chiều, quý khách tham quan Lâu Đài Rượu Vang - tham quan 2 hầm chứa rượu cùng quy trình và mô hình sản xuất rượu khép kín được thiết kế nằm sâu dưới lòng đất. Xe đưa đoàn vào Hòn Rơm - tham quan thắng cảnh đồi cát vàng dưới tác động của gió biển đã tạo nên những hình dạng rất tuyệt vời. Buổi tối, xe đưa quý khách  đến xem show nhạc kịch nước Huyền Thoại Làng Chài - show giải trí đặc sắc và đậm nét văn hóa làng chài của Phan Thiết - Bình Thuận. Đây là show kịch múa được dàn dựng công phu trên sân khấu nhạc nước đầu tiên và duy nhất tại Việt Nam, áp dụng công nghệ 2D và 3D mới nhất hiện nay. Với thời lượng 1 tiếng cùng kịch bản được dày công biên soạn, sáng tác theo trường phái giả tưởng, dựa theo những truyền thuyết dân gian và huyền thoại về làng chài và biển cả, show trình diễn hứa hẹn mang lại nhiều cảm xúc đến khán giả với các cao trào và tình tiết của câu chuyện cùng những hiệu ứng đặc biệt từ sân khấu nhạc nước đầy mãn nhãn. Nghĩ đêm tại Mũi Né.

NGÀY 03 : MŨI NÉ - PHAN THIẾT - TP. HCM (Ăn sáng, trưa)
Buổi sáng, quý khách nghỉ ngơi trong resort đến giờ trả phòng. Khởi hành về TP. HCM. Dừng chân mua sắm đặc sản Phan Thiết. Về đến TP.HCM, xe đưa quý khách về điểm đón ban đầu. Kết thúc chương trình.', N'- Du lịch Tết Tân Sửu 2021 Phan Thiết
- Tham quan không gian trưng bày nghệ thuật “Làng chài xưa”.
- Xem show nhạc kịch nước Huyền Thoại Làng Chài - show giải trí đặc sắc và đậm nét văn hóa làng chài của Phan Thiết - Bình Thuận.
- Tham quan Lâu Đài Rượu Vang - tham quan 2 hầm chứa rượu cùng quy trình và mô hình sản xuất rượu khép kín.', N'* Giá tour bao gồm:  
- Chi phí xe phục vụ theo chương trình.
- Chi phí ăn – uống theo chương trình.
- Chi phí khách sạn tiêu chuẩn 2 khách/phòng. lẻ khác ngủ giường phụ hoặc chịu chi phí phụ thu phòng đơn tương ứng: 
+ Novela 4* : +1.300.000 đ/ khách/ tour.
+ Sai Gon -Mui Ne 4* : + 2.000.000 đ/ khách/ tour.
+ Sunny Beach 4* : + 2.100.000 đ/ khách/ tour.
- Chi phí tham quan, hướng dẫn viên tiếng Việt
- Quà tặng: Nón, nước suối, khăn lạnh. 

* Giá tour không bao gồm:  
- Ăn uống ngoài chương trình, giặt ủi, điện thoại và các chi phí cá nhân
- Chi phí phụ thu phòng đơn tương ứng:
+ Novela 4* : +1.300.000 đ/ khách/ tour.
+ Sai Gon -Mui Ne 4* : + 2.000.000 đ/ khách/ tour.
+ Sunny Beach 4* : + 2.100.000 đ/ khách/ tour.
- Phụ thu khách nước ngoài : + 250.000 đ/ khách.', N'1/ Nên đi Phan Thiết vào thời gian nào ?
Quý khách có thể đi Phan Thiết tất cả các mùa trong năm. Nhưng để thuận lợi cho việc tắm biển, tham quan và nghỉ dưỡng bạn nên đến Phan Thiết vào đầu tháng 6 hay từ tháng 8 – 12. Vào  tháng 7 vì mùa này thường có mưa nhiều, có tảo biển sẽ làm cho nước biển không được trong xanh. Còn đến đây để lướt sóng thì nên đi vào tháng 9 – 12, mùa có gió dễ chịu nhất là tháng 11 – tháng 4 năm sau. 

2/ Phan Thiết có lễ hội nào đặc sắc ?
Ở Phan Thiết có 2 lễ hội lớn:
+ Lễ nghinh ông: Lễ hội Nghinh Ông Quan thánh Phan Thiết theo thông lệ tổ chức 02 năm một lần (năm chẵn dương lịch) với mục đích bảo tồn và phát triển văn hóa dân gian địa phương, có ý nghĩa cầu cho mưa thuận gió hòa, mùa màng tươi tốt, cuộc sống bình an. 
+ Lễ Cầu ngư: diễn ra ở dinh Vạn Thủy Tú, thành phố Phan Thiết thường diễn ra vào ngày 20/6 Âm lịch hàng năm. 

3/ Những điểm nào nên tham quan khi tới Phan Thiết ?
Đến Phan Thiết, quý khách có thể tham quan: Trường Dục Thanh, Tháp Chàm Poshanư, đồi cát, Lâu Đài rượu vang RD, Dinh Vạn Thủy Tú, Làng Chài, Suối Hồng, Bàu Trắng, Núi Tà Cú,.. 

4/ Điểm tham quan Hòn Rơm, muốn đi trượt cát bằng máng có được không ?
Quý khách có thể đi trượt cát tại đồi cát bằng ván (ván được làm từ những miếng nhựa/ mica)')
INSERT [dbo].[CHUONG_TRINH_TOUR] ([MA_TOUR], [HINH_ANH], [TEN_TOUR], [MA_LOAI_TOUR], [GIA_NGUOI_LON], [GIA_TRE_EM], [NGAY_KHOI_HANH], [NGAY_KET_THUC], [SO_CHO], [GHI_CHU], [LICH_TRINH], [NOI_DUNG], [CHINH_SACH], [CAU_HOI_THUONG_GAP]) VALUES (4, N'Chonoicairang.jpg                                                                                                                                                                                                                                         ', N'DU LỊCH TẾT TÂN SỬU 2021 MỸ THO - BẾN TRE - CẦN THƠ - CÀ MAU - BẠC LIÊU - SÓC TRĂNG [MÙNG 2,3 TẾT]', 1, CAST(3979000 AS Decimal(18, 0)), CAST(2090000 AS Decimal(18, 0)), CAST(0x0000ACCE00000000 AS DateTime), NULL, NULL, N'* Ghi chú khác:
- Công ty xuất hóa đơn cho du khách có nhu cầu (Trong thời hạn 7 ngày sau khi kết thúc chương trình du lịch). Du khách được chọn một trong những chương trình khuyến mãi dành cho khách lẻ định kỳ (Nếu có).
- Du khách có mặt tại điểm đón trước 15 phút. Du khách đến trễ khi xe đã khởi hành hoặc hủy tour không báo trước vui lòng chịu phí như ‘hủy vé ngay ngày khởi hành’.', N'NGÀY 01: TP. HỒ CHÍ Minh - MỸ THO - BẾN TRE - CẦN THƠ (Ăn sáng, trưa, chiều)
Đón quý khách tại văn phòng Lữ hành VietTravel, khởi hành đi Mỹ Tho bằng đường cao tốc Sài Gòn - Trung Lương. Đến Mỹ Tho xe đưa khách tham quan chùa Vĩnh Tràng. Di chuyển ra bến tàu, du thuyền trên sông Mekong ngắm cảnh bốn cù lao Long, Lân Qui, Phụng…Tham quan cảng cá Mỹ Tho, làng nuôi cá bè dọc cù lao Tân Long. Đến cù lao Thới Sơn tham quan nhà dân, trại nuôi ong, thưởng thức trà mật ong, chụp hình với Trăn Gấm. Đi bộ trên đường làng Thới Sơn, tham quan lò kẹo dừa, thưởng thức trái cây theo mùa. Nghe nhạc tài tử Nam Bộ. Sang thăm cồn Phụng với di tích Đạo Dừa, trại nuôi cá sấu, vườn thú mini. Khởi hành đi Cần Thơ. Tối tự do dạo bến Ninh Kiều. Nghỉ đêm tại Cần Thơ.

NGÀY 02 : CẦN THƠ - CÀ MAU (Ăn sáng, trưa, chiều)
Buổi sáng, tham quan Cầu Tình Yêu . Viếng Thiền viện Trúc Lâm Phương Nam - thiền viện lớn nhất miền Tây. Khởi hành đi Cà Mau,nghỉ đêm tại Cà Mau.

NGÀY 03: CÀ MAU- BẠC LIÊU (Ăn sáng, trưa, chiều)
Sau bữa sáng,đoàn khởi hành đi  Mũi Cà Mau, tham quan và chụp ảnh lưu niệm tại Khu Văn Hóa Du Lịch Mũi Cà Mau, Điểm Cực Nam Tổ Quốc, tham quan mốc toạ độ quốc gia- Panô biểu tượng Mũi Cà Mau. Chiều khởi hành đi Bạc Liêu. Viếng nhà thờ Tắc Sậy và thăm nơi an nghỉ của Linh mục Trương Bửu Diệp. Nghỉ đêm tại Bạc Liêu.

NGÀY 04 : BẠC LIÊU - SÓC TRĂNG- TP.HỒ CHÍ MINH (Ăn sáng, trưa)
Buổi sáng, tham quan Khu dinh thự Công tử Bạc Liêu, tìm hiểu cuộc đời của Hắc công tử Trần Trinh Huy nổi tiếng giàu có, ăn chơi, phóng khoáng một thời. Khu lưu niệm nghệ thuật Đờn Ca Tài Tử Nam Bộ và nhạc sĩ Cao Văn Lầu, người sáng tác ra bài Dạ Cổ Hoài Lang, tiền đề của nghệ thuật ca ra bộ, cải lương rất đặc sắc của Nam Bộ. Khởi hành về TP.Hồ Chí Minh, ghé Sóc trăng viếng chùa Mã Tộc (chùa Dơi). Tiếp tục khởi hành về thành phố Hồ Chí Minh. Kết thúc chương trình', N'- Du lịch Tết Tân Sửu 2021 Mỹ Tho - Cần Thơ - Cà Mau - Bạc Liêu
- Tham quan cảng cá Mỹ Tho, làng nuôi cá bè dọc cù lao Tân Long.
- Thăm cồn Phụng với di tích Đạo Dừa, trại nuôi cá sấu, vườn thú mini.
- Nghe nhạc tài tử Nam Bộ.
- Viếng Thiền viện Trúc Lâm Phương Nam.', N'* Giá tour bao gồm:  
- Chi phí xe phục vụ theo chương trình.
- Chi phí ăn – uống theo chương trình.
- Chi phí khách sạn tiêu chuẩn 2 khách/phòng. lẻ khác ngủ giường phụ hoặc chịu chi phí phụ thu phòng đơn: + 1.350.000 đ/ khách
* Cần Thơ : Fortuneland, ..
* Cà Mau: Mường Thanh,Phú Cường...
* Bạc Liêu: New Palace,..
Hoặc các khách sạn khác tương đương
- Chi phí tham quan, hướng dẫn viên tiếng Việt
- Quà tặng: Nón, nước suối, khăn lạnh

* Giá tour không bao gồm:  
- Ăn uống ngoài chương trình, giặt ủi, điện thoại và các chi phí cá nhân
- Chi phí phụ thu phòng đơn: + 1.350.000 đ/ khách
- Phụ thu khách nước ngoài : + 350.000 đ/ khách

THÔNG TIN HƯỚNG DẪN
* Vé trẻ em:  
- Vé tour: Trẻ em từ  6 đến 11 tuổi mua một nửa giá vé người lớn, trẻ em trên 11 tuổi mua vé như người lớn.
- Đối với trẻ em dưới 6 tuổi, gia đình tự lo cho bé ăn ngủ và tự trả phí tham quan (nếu có). Hai người lớn chỉ được kèm một trẻ em. Từ trẻ thứ 2 trở lên, mỗi em phải 50% giá vé người lớn.
- Tiêu chuẩn 50% giá tour bao gồm: Suất ăn, ghế ngồi và ngủ ghép chung với gia đình.
* Hành lý và giấy tờ tùy thân:  
- Du khách mang theo giấy Chứng Minh Nhân Dân hoặc Hộ chiếu. Đối với du khách là Việt kiều, Quốc tế nhập cảnh Việt Nam bằng visa rời, vui lòng mang theo visa khi đăng ký và đi tour.
- Khách lớn tuổi (từ 70 tuổi trở lên), khách tàn tật tham gia tour, phải có thân nhân đi kèm và cam kết đảm bảo đủ sức khỏe khi tham gia tour du lịch.
- Trẻ em dưới 14 tuổi khi đi tour phải mang theo Giấy khai sinh hoặc Hộ chiếu. Trẻ em từ 14 tuổi trở lên phải mang theo giấy Chứng Minh Nhân Dân hoặc Hộ chiếu riêng
- Tất cả giấy tờ tùy thân mang theo đều phải bản chính
- Du khách mang theo hành lý gọn nhẹ và phải tự bảo quản hành lý, tiền bạc, tư trang trong suốt thời gian đi du lịch.
- Khách Việt Nam ở cùng phòng với khách Quốc tế  hoặc Việt kiều yêu cầu phải có giấy hôn thú.
* Trường hợp hủy vé tour, du khách vui lòng thanh toán các khoản lệ phí hủy tour như sau:
a) Đối với dịp Lễ, Tết:
- Du khách chuyển đổi tour sang ngày khác và báo trước ngày khởi hành trước 15 ngày sẽ không chịu phí (không áp dụng các tour ở KS 4- 5 sao), nếu trễ hơn sẽ căn cứ theo qui định hủy phạt  phía dưới và chỉ được chuyển ngày khởi hành tour 1 (một) lần.
- Hủy vé trong vòng 24 giờ hoặc ngay ngày khởi hành, chịu phạt 100% tiền tour.
- Hủy vé trước ngày khởi hành từ 2 - 7 ngày, chịu phạt 80% tiền tour.
- Hủy vé trước ngày khởi hành từ 8 - 15 ngày, chịu phạt 50% tiền tour.
- Hủy vé trước ngày khởi hành 15 ngày, chịu phạt 20% tiền tour.
b) Sau khi hủy tour, du khách vui lòng đến nhận tiền trong vòng 15 ngày kể từ ngày kết thúc tour. Chúng tôi chỉ  thanh toán trong khỏang thời gian nói trên.
c) Trường hợp hủy tour do sự cố khách quan như thiên tai, dịch bệnh hoặc do tàu thủy, xe lửa, máy bay hoãn/hủy chuyến, VietTravel sẽ không chịu trách nhiệm bồi thường thêm bất kỳ chi phí nào khác ngoài việc hoàn trả chi phí những dịch vụ chưa được sử dụng của tour đó.', NULL)
INSERT [dbo].[CHUONG_TRINH_TOUR] ([MA_TOUR], [HINH_ANH], [TEN_TOUR], [MA_LOAI_TOUR], [GIA_NGUOI_LON], [GIA_TRE_EM], [NGAY_KHOI_HANH], [NGAY_KET_THUC], [SO_CHO], [GHI_CHU], [LICH_TRINH], [NOI_DUNG], [CHINH_SACH], [CAU_HOI_THUONG_GAP]) VALUES (5, N'ninhchudalat.jpg                                                                                                                                                                                                                                          ', N'DU LỊCH TẾT TÂN SỬU 2021 NINH CHỮ - ĐÀ LẠT [MÙNG 2 TẾT]', 1, CAST(6779000 AS Decimal(18, 0)), CAST(3490000 AS Decimal(18, 0)), CAST(0x0000ACCE00000000 AS DateTime), NULL, NULL, N'* Ghi chú khác:
- Công ty xuất hóa đơn cho du khách có nhu cầu (Trong thời hạn 7 ngày sau khi kết thúc chương trình du lịch). Du khách được chọn một trong những chương trình khuyến mãi dành cho khách lẻ định kỳ (Nếu có).
- Du khách có mặt tại điểm đón trước 15 phút. Du khách đến trễ khi xe đã khởi hành hoặc hủy tour không báo trước vui lòng chịu phí như ‘hủy vé ngay ngày khởi hành’.', N'NGÀY 01: TP.HCM - NINH CHỮ (Ăn sáng, trưa, chiều)
Đón quý khách tại văn phòng Lữ Hành VietTravel (lúc 06h00 sáng tại 45 Lê Thánh Tôn, Quận 1 hoặc lúc 06h30 sáng tại số 1 Nguyễn Chí Thanh, Quận 5), khởi hành đi Ninh Chữ. Đến Ninh Chữ, đoàn nhận phòng, tự do nghỉ ngơi, tắm biển Ninh Chữ. Nghỉ đêm tại Ninh Chữ.

NGÀY 02: NINH CHỮ - VỊNH VĨNH HY (Ăn sáng, trưa, chiều)
Đoàn theo tỉnh lộ 702 - cung đường ven biển tuyêt đẹp qua vườn quốc gia Núi Chúa, ngắm toàn cảnh vịnh Vĩnh Hy từ trên cao. Xuống thuyền ngoạn cảnh vịnh Vĩnh Hy, chiêm ngưỡng quần thể san hô đầy màu sắc bằng tàu đáy kính. Sau đó du khách tự do tắm biển, thưởng thức các loại hải sản tươi sống (chi phí tự túc). Quý khách ghé tham quan vườn nho ở Thái An và mua đặc sản. Đoàn về lại Ninh Chữ nghỉ ngơi. Nghỉ đêm tại Ninh Chữ.

NGÀY 03: NINH CHỮ - ĐÀ LẠT (Ăn sáng, trưa, chiều)
Sau bữa sáng, quý khách trả phòng, xe đưa đoàn đến thăm Trùng Sơn Cổ Tự trên núi Đá Chồng, nơi đoàn có thể ngắm nhìn toàn cảnh Ninh Chữ với những cánh đồng, ruộng muối, đầm phá đan xen tạo nên bức tranh nhiều màu sắc... Đoàn dừng chân tham quan Tháp Chăm Poklong Garai - một kiến trúc văn hóa đặc sắc của người Chăm được xây dựng vào cuối thế kỷ XIV, nghe về sự tích Đồi Trầu và nhìn ngắm tòan bộ cảnh quan TP. Phan Rang. Khởi hành đi Đà Lạt, đến Đà Lạt, đoàn ghé viếng chùa Linh Phước. Xe đưa đoàn đến Quảng trường Lâm Viên với không gian rộng lớn, thoáng mát hướng ra hồ Xuân Hương cùng công trình nghệ thuật khối bông hoa dã quỳ và khối nụ hoa Atiso khổng lồ được thiết kế bằng kính màu rất đẹp mắt. Nhận phòng và nghỉ đêm tại Đà Lạt.

NGÀY 04: THAM QUAN ĐÀ LẠT (Ăn sáng, trưa, chiều)
Buổi sáng, quý khách đến với Khu Du Lịch Dalat Fairytale Land & Hầm Rượu Vang Vĩnh Tiến, tham quan khu vườn cổ tích đầy màu sắc của những chú lùn nằm trong nhà máy sản xuất rượu vang Vĩnh Tiến, tìm hiểu quy trình sản xuất trà thảo dược, rượu vang, Đông Trùng Hạ Thảo và khám phá đường hầm Rượu vang đặc sắc. Tham quan Nông Trại Cún Puppy Farm với các chú cún từ nhỏ đến lớn được chăm sóc cẩn thận thật đáng yêu. Buổi chiều, đoàn tham quan Đường hầm điêu khắc đất đỏ (Đà Lạt Star) - tái hiện lịch sử Đà Lạt qua hơn 120 năm, Hồ vô cực - nơi tình yêu bắt đầu. Tham quan thác Datanla (tự túc chi phí tham gia trò chơi máng trượt). Nghỉ đêm tại Đà Lạt.

NGÀY 05: ĐÀ LẠT - TP. HỒ CHÍ MINH  (Ăn sáng, trưa)
Buổi sáng, xe đưa đoàn đến chợ Đà Lạt, quý khách tự do mua sắm. Trả phòng, khởi hành về Tp. HCM. Kết thúc chương trình.
* Ghi chú: Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.', N'- Du lịch Tết Tân Sửu 2021 Ninh Chữ - Đà Lạt 
- Ngắm toàn cảnh vịnh Vĩnh Hy từ trên cao.
- Ngoạn cảnh vịnh Vĩnh Hy, chiêm ngưỡng quần thể san hô đầy màu sắc bằng tàu đáy kính. 
- Tham quan Tháp Chăm Poklong Garai - một kiến trúc văn hóa đặc sắc của người Chăm được xây dựng vào cuối thế kỷ XIV.
- Tham quan Nông Trại Cún Puppy Farm với các chú cún từ nhỏ đến lớn được chăm sóc cẩn thận thật đáng yêu.', N'* Giá tour bao gồm:  
- Chi phí xe phục vụ theo chương trình.
- Chi phí ăn – uống theo chương trình.
- Chi phí khách sạn 3 và 4 sao tiêu chuẩn 2 khách/phòng. lẻ khác ngủ giường phụ hoặc chịu chi phí phụ thu phòng đơn: + 2.900.000 đ/ khách
+ Ninh Chữ : TTC Ninh Chữ 3*
+ Đà Lạt :  Kings 4*
Hoặc các khách sạn khác tương đương
- Chi phí tham quan, hướng dẫn viên tiếng Việt
- Quà tặng: Nón, nước suối, khăn lạnh

* Giá tour không bao gồm:  
- Ăn uống ngoài chương trình, giặt ủi, điện thoại và các chi phí cá nhân
- Chi phí phụ thu phòng đơn: + 2.900.000 đ/ khách
- Phụ thu khách nước ngoài : + 300.000 đ/ khách

THÔNG TIN HƯỚNG DẪN
* Vé trẻ em:  
- Vé tour: Trẻ em từ  6 đến 11 tuổi mua một nửa giá vé người lớn, trẻ em trên 11 tuổi mua vé như người lớn.
- Đối với trẻ em dưới 6 tuổi, gia đình tự lo cho bé ăn ngủ và tự trả phí tham quan (nếu có). Hai người lớn chỉ được kèm một trẻ em. Từ trẻ thứ 2 trở lên, mỗi em phải 50% giá vé người lớn.
- Tiêu chuẩn 50% giá tour bao gồm: Suất ăn, ghế ngồi và ngủ ghép chung với gia đình.
* Hành lý và giấy tờ tùy thân:  
- Du khách mang theo giấy Chứng Minh Nhân Dân hoặc Hộ chiếu. Đối với du khách là Việt kiều, Quốc tế nhập cảnh Việt Nam bằng visa rời, vui lòng mang theo visa khi đăng ký và đi tour.
- Khách lớn tuổi (từ 70 tuổi trở lên), khách tàn tật tham gia tour, phải có thân nhân đi kèm và cam kết đảm bảo đủ sức khỏe khi tham gia tour du lịch.
- Trẻ em dưới 14 tuổi khi đi tour phải mang theo Giấy khai sinh hoặc Hộ chiếu. Trẻ em từ 14 tuổi trở lên phải mang theo giấy Chứng Minh Nhân Dân hoặc Hộ chiếu riêng
- Tất cả giấy tờ tùy thân mang theo đều phải bản chính
- Du khách mang theo hành lý gọn nhẹ và phải tự bảo quản hành lý, tiền bạc, tư trang trong suốt thời gian đi du lịch.
- Khách Việt Nam ở cùng phòng với khách Quốc tế  hoặc Việt kiều yêu cầu phải có giấy hôn thú.
* Trường hợp hủy vé tour, du khách vui lòng thanh toán các khoản lệ phí hủy tour như sau:
a) Đối với dịp Lễ, Tết:
- Du khách chuyển đổi tour sang ngày khác và báo trước ngày khởi hành trước 15 ngày sẽ không chịu phí (không áp dụng các tour ở KS 4- 5 sao), nếu trễ hơn sẽ căn cứ theo qui định hủy phạt  phía dưới và chỉ được chuyển ngày khởi hành tour 1 (một) lần.
- Hủy vé trong vòng 24 giờ hoặc ngay ngày khởi hành, chịu phạt 100% tiền tour.
- Hủy vé trước ngày khởi hành từ 2 - 7 ngày, chịu phạt 80% tiền tour.
- Hủy vé trước ngày khởi hành từ 8 - 15 ngày, chịu phạt 50% tiền tour.
- Hủy vé trước ngày khởi hành 15 ngày, chịu phạt 20% tiền tour.
b) Sau khi hủy tour, du khách vui lòng đến nhận tiền trong vòng 15 ngày kể từ ngày kết thúc tour. Chúng tôi chỉ  thanh toán trong khỏang thời gian nói trên.
c) Trường hợp hủy tour do sự cố khách quan như thiên tai, dịch bệnh hoặc do tàu thủy, xe lửa, máy bay hoãn/hủy chuyến, VietTravel sẽ không chịu trách nhiệm bồi thường thêm bất kỳ chi phí nào khác ngoài việc hoàn trả chi phí những dịch vụ chưa được sử dụng của tour đó.', NULL)
INSERT [dbo].[CHUONG_TRINH_TOUR] ([MA_TOUR], [HINH_ANH], [TEN_TOUR], [MA_LOAI_TOUR], [GIA_NGUOI_LON], [GIA_TRE_EM], [NGAY_KHOI_HANH], [NGAY_KET_THUC], [SO_CHO], [GHI_CHU], [LICH_TRINH], [NOI_DUNG], [CHINH_SACH], [CAU_HOI_THUONG_GAP]) VALUES (6, N'danang.jpg                                                                                                                                                                                                                                                ', N'DU LỊCH TẾT TÂN SỬU 2021 ĐÀ NẴNG - HỘI AN - BÀ NÀ - MỸ KHÊ - BẢO TÀNG TRANH 3D [MÙNG 2 TẾT]', 1, CAST(8019000 AS Decimal(18, 0)), CAST(6126000 AS Decimal(18, 0)), CAST(0x0000ACCE00000000 AS DateTime), NULL, NULL, N'* Ghi chú khác:  
- Công ty xuất hóa đơn cho du khách có nhu cầu (Trong thời hạn 7 ngày sau khi kết thúc chương trình du lịch). Du khách được chọn một trong những chương trình khuyến mãi dành cho khách lẻ định kỳ (Nếu có).
- Du khách đến trễ, không làm thủ tục đúng giờ (khi hãng hàng không đã đóng quầy, kết thúc chấp nhận hành khách), hoặc không lên máy bay trước giờ đóng cửa lên máy bay, hoặc hủy tour không báo trước vui lòng chịu phí như ‘hủy vé ngay ngày khởi hành’', N'NGÀY 01: TP. HỒ CHÍ MINH – ĐÀ NẴNG – HỘI AN – TẶNG SHOW À Ố (Ăn trưa, chiều)
Buổi sáng, quý khách tập trung tại Cổng D1, Ga đi trong nước, sân bay Tân Sơn Nhất. Hướng dẫn viên của Lữ hành VietTravel đón quý khách, hỗ trợ làm thủ tục. Khởi hành ra Đà Nẵng trên chuyến bay VN122 lúc 09:45. Đến Đà Nẵng, quý khách tham quan thắng cảnh Ngũ Hành Sơn và làng nghề điêu khắc đá Hòa Hải. Buổi chiều khởi hành tham quan Phố cổ Hội An với các công trình tiêu biểu: Chùa Cầu Nhật Bản, chùa Ông, hội quán Phúc Kiến, khu phố đèn lồng. Đoàn thưởng thức “À Ố Show” – vở diễn độc đáo với hình thức xiếc kể chuyện, sử dụng toàn bộ đạo cụ chính là tre kết hợp với âm nhạc để mang đến những bức tranh hóm hỉnh mà đầy tinh tế từ làng quê yên bình đến phố thị nhộn nhịp đậm nét đời thường của người dân Việt Nam. Sau khi xem show đoàn quay về Đà Nẵng. Nghỉ đêm tại Đà Nẵng
Lưu ý: Trong trường hợp vì lý do không đủ khách để thực hiện À Ố Show, quý khách sẽ được Lữ hành VietTravel bố trí tham quan Công viên Ấn tượng Hội An, và xem show “Ký Ức Hội An”.

NGÀY 02: ĐÀ NẴNG – KDL BÀ NÀ – CẦU VÀNG  (Ăn sáng, chiều)
Sau bữa sáng, quý khách sẽ được tự do tham quan hoàn toàn. Lữ hành VietTravel xin phép gợi ý 2 chương trình để quý khách tham khảo: 
 Lựa chọn 1 (Tự túc chi phí ăn trưa + tham quan- chưa bao gồm trong giá tour ) Tự do để khám phá TP.Đà Nẵng. Quý khách có thể ra sông Hàn ngắm cầu Rồng - một trong những con rồng thép lớn nhất thế giới, cầu Trần Thị Lý - với kiến trúc tựa con thuyền căng buồm vươn ra biển lớn, tượng Cá chép hóa rồng - một biểu tượng mang đậm tính nghệ thuật và tín ngưỡng dân gian, cầu Tình Yêu - cây cầu trái tim với những ổ khóa dễ thương trên thành cầu rất thú vị và lãng mạn. Hoặc đến chợ Hàn (hoặc chợ Cồn), mua sắm đặc sản địa phương. Quý khách tự túc ăn trưa, trải nghiệm phong vị ẩm thực độc đáo của Đà Nẵng.
 Lựa chọn 2 (Tự túc chi phí tham quan & Ăn trưa buffet Việt tại Bà Nà Hills- chưa bao gồm trong giá tour): Xe đưa quý khách đến Ga cáp treo của KDL Bà Nà Hills. Lên Bà Nà bằng cáp treo, ngắm toàn cảnh núi non hùng vỹ và tận hưởng khí hậu trong lành. Dạo bước trên Cầu Vàng tọa lạc tại Vườn Thiên Thai, với thiết kế độc đáo và ấn tượng, đầy mềm mại tựa một dải lụa, được nâng đỡ bởi đôi bàn tay khổng lồ loang lổ rêu phong giữa cảnh sắc nên thơ tuyệt diệu của Bà Nà – Núi Chúa. Viếng chùa Linh Ứng, khám phá Fantasy Park - khu vui chơi giải trí trong nhà đẳng cấp quốc tế (miễn phí 105 trò chơi) và trò chơi Hiệp sĩ Thần thoại (Máng trượt). Dạo bộ giữa Khu làng Pháp một không gian kiến trúc tái hiện sinh động nước Pháp thời cận đại đầy lãng mạn, sang trọng và lịch lãm. Trải nghiệm Tàu hỏa leo núi, tham quan 9 vườn hoa, Hầm rượu cổ Debay (không bao gồm thưởng thức rượu vang) .Tự túc chi phí khám phá Khu trưng bày tượng sáp - duy nhất tại Việt Nam. Xe đưa quý khách về lại TP.Đà Nẵng.
Nghỉ đêm tại Đà Nẵng.

NGÀY 03: ĐÀ NẴNG – SƠN TRÀ – TP.HCM (Ăn sáng, trưa)
Buổi sáng, xe đưa quý khách tham quan bán đảo Sơn Trà, ngắm cảng Tiên Sa, viếng chùa Linh Ứng Bãi Bụt – ngôi chùa lớn nhất ở thành phố Đà Nẵng, chiêm bái tượng Phật Quan Thế Âm cao nhất Việt Nam. Đoàn tham quan Bảo tàng tranh 3D Art In Paradise Đà Nẵng, du khách sẽ hoá thân và diễn xuất thành các nhân vật trong những tác phẩm tranh 3D đầy thú vị. Ra sân bay Đà Nẵng để về TP. HCM trên chuyến bay VN131 lúc 15:15. Kết thúc chương trình. Quý khách tự túc phương tiện từ sân bay TSN về nhà.', N'- Du lịch Tết Tân Sửu 2021 Đà Nẵng - Hội An - Mỹ Khê - Bảo Tàng Tranh 3D
- Tham quan Bảo tàng tranh 3D Art In Paradise Đà Nẵng, du khách sẽ hoá thân và diễn xuất thành các nhân vật trong những tác phẩm tranh 3D đầy thú vị.
- Thưởng thức “À Ố Show” – vở diễn độc đáo với hình thức xiếc kể chuyện, sử dụng toàn bộ đạo cụ chính là tre kết hợp với âm nhạc để mang đến những bức tranh hóm hỉnh mà đầy tinh tế từ làng quê yên bình đến phố thị nhộn nhịp đậm nét đời thường của người dân Việt Nam.
- Buổi chiều khởi hành tham quan Phố cổ Hội An với các công trình tiêu biểu: Chùa Cầu Nhật Bản, chùa Ông, hội quán Phúc Kiến, khu phố đèn lồng.', N'PHỤ THU LỰA CHỌN 2 (Tham quan & ăn trưa buffet tại Bà Nà Hills): +1.030.000đ/ người lớn (chiều cao từ 1m4 trở lên), + 760.000đ/ trẻ em (chiều cao từ 1m – dưới 1m4).

* Vé trẻ em
- Trẻ em dưới 2 tuổi: thu 10% giá vé máy bay người lớn. Gia đình tự lo cho bé ăn ngủ.
- Trẻ em từ 2 đến dưới 6 tuổi: mua 90% giá vé máy bay người lớn. Gia đình tự lo cho bé ăn ngủ và tự trả phí tham quan (nếu có).
- Hai người lớn chỉ được kèm một trẻ em dưới 6 tuổi. Từ trẻ thứ 2 trở lên, mỗi em phải chịu mức giá tương đương trẻ em từ 6 đến 11 tuổi.
- Trẻ em từ 6 đến 11 tuổi: mua 90% giá vé máy bay và 50 % giá tour của người lớn. Ttiêu chuẩn gồm Vé máy bay, ăn uống và tham quan theo chương trình, ngủ chung giường với phụ huynh.
- Trẻ em trên 11 tuổi: áp dụng giá và các tiêu chuẩn dịch vụ như người lớn.

* Giá tour bao gồm:  
- Chi phí xe máy lạnh phục vụ theo chương trình.
- Vé máy bay khứ hồi của Vietnam Airlines.
- Chi phí khách sạn 3 sao theo tiêu chuẩn (2 khách/phòng), lẻ khách ngủ giường phụ hoặc chịu chi phí phụ thu phòng đơn: +500.000 đ/ khách/ tour.
- Chi phí ăn - uống theo chương trình.
- Chi phí tham quan và tàu thuyền.
- Chi phí Hướng dẫn viên tiếng Việt.
- Quà tặng: Nón, nước suối, khăn lạnh, viết.

* Giá tour không bao gồm:  
- Chi phí tham quan - ăn uống ngoài chương trình, tắm biển (thuê dù ghế, tắm nước ngọt), giặt ủi, điện thoại và các chi phí cá nhân khác.
- Tham quan & Ăn buffet tại Bà Nà Hills (Lựa chọn 2): +1.030.000đ/ người lớn (chiều cao từ 1m4 trở lên), + 760.000đ/ trẻ em (chiều cao từ 1m – dưới 1m4).
- Chi phí tham gia các trò chơi gắp thú bông, trò chơi kỹ năng carnival và các trò chơi có thưởng tại khu Fantasy Park, tham quan Khu trưng bày tượng sáp tại Bà Nà Hills;|
- Chi phí phụ thu người nước ngoài : +300.000 đ/ khách/ tour.
- Chi phí phụ thu phòng đơn: + 500.000 đ/ khách/tour.

THÔNG TIN HƯỚNG DẪN

* Quy định vé máy bay: Đây là chương trình hợp tác với các hãng hàng không nên có một số lưu ý:
- Giá vé máy bay không bao gồm suất ăn/uống trên máy bay.
- Không được hoàn hoặc hủy vé máy bay. Nếu hủy, vui lòng chịu phạt 100% chi phí vé máy bay.
- Khi đăng ký vé máy bay, quý khách cung cấp họ và tên, ngày tháng năm sinh (đúng từng ký tự ghi trong hộ chiếu hoặc Chứng minh nhân dân). 
- Không được thay đổi thông tin đặt chỗ: họ tên hành khách, chuyến bay, ngày bay, chặng bay, tách đoàn, gia hạn vé.
- Số lượng khách tối thiểu để tổ chức tour: 10 khách/đoàn.
- Trường hợp hủy tour do sự cố khách quan như thiên tai, dịch bệnh hoặc do máy bay hoãn - hủy chuyến, Lữ hành VietTravel sẽ không chịu trách nhiệm bồi thường thêm bất kỳ chi phí nào khác ngoài việc hoàn trả chi phí những dịch vụ chưa được sử dụng của tour đó (ngoại trừ chi phí vé máy bay)

* Trường hợp hủy vé landtour, quý khách vui lòng thanh toán các khoản sau: 
- Quý khách chuyển đổi tour sang ngày khác và báo trước ngày khởi hành trước 15 ngày sẽ không chịu phí (không áp dụng các tour khách sạn 4-5 sao), nếu trễ hơn sẽ căn cứ theo qui định hủy phạt phía dưới và chỉ được chuyển ngày khởi hành tour 1 lần.
- Hủy vé trong vòng 24 giờ hoặc ngay ngày khởi hành, chịu phạt 100% tiền tour.
- Hủy vé trước ngày khởi hành từ 2 - 7 ngày, chịu phạt 80% tiền tour.
- Hủy vé trước ngày khởi hành từ 8 - 14 ngày, chịu phạt 50% tiền tour.
- Hủy vé trước ngày khởi hành từ 15 ngày trở lên, chịu phạt 30% tiền tour.
- Sau khi hủy tour, du khách vui lòng đến nhận tiền trong vòng 15 ngày kể từ ngày kết thúc tour. Chúng tôi chỉ thanh toán trong khỏang thời gian nói trên.

* Hành lý và giấy tờ tùy thân:    
- Du khách mang theo giấy Chứng Minh Nhân Dân (còn thời hạn 15 năm) hoặc Hộ chiếu (còn thời hạn sử dụng). Đối với du khách là Việt kiều, Quốc tế nhập cảnh Việt Nam bằng visa rời, vui lòng mang theo visa khi đăng ký và khi đi tour.
- Khách lớn tuổi (từ 70 tuổi trở lên), khách tàn tật tham gia tour, phải có thân nhân đi kèm và cam kết đảm bảo đủ sức khỏe khi tham gia tour du lịch. 
- Trẻ em dưới 14 tuổi khi đi tour phải mang theo giấy khai sinh hoặc hộ chiếu. Trẻ em từ 14 tuổi trở lên phải mang theo giấy Chứng Minh Nhân Dân.
- Tất cả giấy tờ tùy thân mang theo đều phải bản chính. 
- Du khách mang theo hành lý gọn nhẹ và phải tự bảo quản hành lý, tiền bạc, tư trang trong suốt thời gian đi du lịch.
- Du khách được miễn cước 1 KIỆN HÀNH LÝ KÝ GỞI (23kg) và 1 KIỆN HÀNH LÝ XÁCH TAY (10kg).
- Khách Việt Nam ở cùng phòng với khách Quốc tế  hoặc Việt kiều yêu cầu phải có giấy hôn thú.
- Du khách có mặt tại sân bay trước 3 tiếng so với giờ khởi hành.', N'1/ Mùa nào đi Đà Nẵng đẹp?
Mùa đẹp nhất vào mùa hè. Chính xác hơn là từ khoảng đầu tháng 4 đến hết tháng 8 dương lịch.

2/ Muốn xem Cầu Rồng phun lửa thì đi ngày nào?
Cầu Rồng phun lửa và phun nước từ 21h00 các ngày thứ 7 và chủ nhật hàng tuần.

3/ Đi Đà Nẵng có món gì đặc biệt ?
Nổi tiếng với các món: bánh tráng thịt heo hai đầu da, bê thui Cầu Mống,..

4/ Bé dưới 2 tuổi có thể đi tour Cù Lao Chàm được không?
Được. Bé và gia đình có thể tắm biển tại Cù Lao Chàm.

5/ Các khách sạn lưu trú tại Đà Nẵng thường tiêu chuẩn mấy sao?
Tour thường nghỉ đêm tại khách sạn chuẩn 3 sao.

6/ Ở lựa chọn 2 đi Bà Nà , thì hướng dẫn viên sẽ hẹn thời gian rước đoàn vào khoảng mấy giờ?
Hướng dẫn viên sẽ thông báo thời gian cụ thể vào ngày tour đi Bà Nà.

7/ Đi Bà Nà Hill có thể mang thức ăn từ bên ngoài vào được không?
Vì Bà Nà Hill là khu du lịch có nhiều nhà hàng và quầy bán thức ăn các loại nên họ không cho phép khách tham quan mang thức ăn từ bên ngoài vào để đảm bảo vấn đề an toàn thực phẩm cũng như vệ sinh của khu du lịch.

8/ Đi Bà Nà bao lâu thì hết ?
Bà Nà Hill là 1 khu du lịch rất rộng với rất nhiều hạng mục cũng như khi vui chơi nên sẽ mất rất nhiều thời gian nên thông thường các tour chỉ đi tham quan các hạng mục đặc trưng và tham quan trong khoảng hơn nửa ngày :
+ Bảo Tàng Sáp: Khu trưng bày tượng sáp đầu tiên ở Việt Nam với nhiều tượng của các nhân vật nổi tiếng. Mỗi tác phẩm là kỹ thuật tinh xảo được thực hiện bởi nghệ nhân người Ý
+ Công Viên Fantasy Park: Công viên trò chơi hấp dẫn với hơn 100 trò chơi lấy cảm hứng từ hai cuốn tiểu thuyết nổi tiếng “Hành trình vào trung tâm Trái Đất” và “Hai vạn dặm dưới đáy biển”
+ Làng Pháp: Làng Pháp bao gồm 7 khu vực tương ứng với 7 nốt nhạc trong cung nhạc đa sắc, mộng mơ. Bởi thế, nơi đây luôn là điểm đến lý tưởng cho những du khách đam mê khám phá kiến trúc cổ châu Âu và tận hưởng các dịch vụ đẳng cấp nhất.
+ Cầu Vàng: Cây cầu nằm ở độ cao gần 1500m so với mc nước biển. Cầu Vàng được thiết kế ấn tượng với hình ảnh bàn tay nâng đỡ cầu giữa trời. Cầu tọa lạc tại vườn Thiên Thai và giúp du khách di chuyển thuận tiện hơn từ chân núi đến vườn hoa Le Jardin D’Amour.
+ Vườn hoa Le Jardin D’Amour: 9 khu vườn hoa với các chủ đề, câu chuyện, phong cách khác nhau tạo ra không gian lãng mạn cho du khách chụp những bức ảnh ấn tượng.
+ Hầm Rượu
+ Chùa Linh Ứng

9/ Nếu gia đình tôi không đi Bà Nà Hill thì sẽ làm gì vào thời gian đoàn đi Bà Nà ?
Gia đình mình có thể tự túc đi tham quan xung quanh thành phố Đà Nẵng: Công Viên Tình Yêu, Asia Park, Chợ Cồn, ..

10/ Nhà có người đi xe lăn thì có đi cáp treo Bà Nà được không ?
Được. Bà Nà Hill sẽ có nhân viên hỗ trợ lên, xuống cáp treo.

11/ Em bé đi Bà Nà có tính phí không ?
Vé tham quan cũng như cáp treo sẽ được tính theo chiều cao của em bé. Dưới 1 m : miễn phí, từ 1m-1,4m: trẻ em : 600.000 đ/ bé; trên 1.4m: người lớn: 800.000 đ ( giá áp dụng 31/12/2020)

12/ Tour có ngủ đêm tại Hội An không ?
Tùy từng tour. Có tour sẽ ngủ lại tại Hội An. Nhưng thông thường hầu hết các tour đều có thời gian đi tham quan Hội An.

13/ Ở lựa chọn tư túc tham quan, nếu tôi muốn đi Vinwonder Hội An thì có được không?
Được, nhưng khoảng cách từ Đà Nẵng và Hội An hơi xa (khoảng 40- 55 km) đồng thời Vinwonder cũng rất rộng và đa dạng về hoạt động vui chơi nên lưu ý về giờ giấc ạ.

14/ Ngày cuối cùng của tour, nếu tôi về sau ( tự túc mua vé máy bay) thì có trừ  được tiền vé của chặng về không (nếu có thì khoảng bao nhiêu)?
Quý khách có thể tự túc vé máy bay để về sau nhưng sẽ không được trừ chi phí tiền vé này do vé máy bay của tour là vé đoàn. Khi mua bắt buộc sẽ đi và về cùng đoàn

15/ Người cao tuổi có đi được tour tham quan Động Thiên Đường không?
Được, nếu sức khỏe tốt vì Động Thiên Đường là hang khô và trong quá trình tham quan sẽ đi bộ trên 1km cầu thang gỗ của Động Thiên Đường.

16/ Đi Cù Lao Chàm khi nào thì đẹp?
Cù Lao Chàm đi đẹp nhất vào khoảng từ khoảng đầu tháng 4 đến hết tháng 8 dương lịch hàng năm.

17/ Đi Cù Lao Chàm làm gì ?
Ngoài hoạt động tắm biển, lặn ngắm san hô thì Cù Lao Chàm còn có các điểm tham quan: Giếng Cổ Chăm Pa, chùa Hải Tạng, khu Bảo Tồn Cù Lao Chàm, Chợ quê Tân Hiệp,..')
INSERT [dbo].[CHUONG_TRINH_TOUR] ([MA_TOUR], [HINH_ANH], [TEN_TOUR], [MA_LOAI_TOUR], [GIA_NGUOI_LON], [GIA_TRE_EM], [NGAY_KHOI_HANH], [NGAY_KET_THUC], [SO_CHO], [GHI_CHU], [LICH_TRINH], [NOI_DUNG], [CHINH_SACH], [CAU_HOI_THUONG_GAP]) VALUES (7, N'condao.jpg                                                                                                                                                                                                                                                ', N'DU LỊCH TẾT TÂN SỬU 2021 CÔN ĐẢO [MÙNG 4 TẾT]', 3, CAST(7300000 AS Decimal(18, 0)), CAST(5300000 AS Decimal(18, 0)), CAST(0x0000ACD000000000 AS DateTime), NULL, NULL, N'Ghi chú: Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.

* Ghi chú khác:
- Công ty xuất hóa đơn cho du khách có nhu cầu (Trong thời hạn 7 ngày sau khi kết thúc chương trình du lịch). Du khách được chọn một trong những chương trình khuyến mãi dành cho khách lẻ định kỳ (Nếu có).
- Du khách có mặt tại điểm đón trước 15 phút. Du khách đến trễ khi xe đã khởi hành hoặc hủy tour không báo trước vui lòng chịu phí như ‘hủy vé ngay ngày khởi hành’', N'Ngày 01: TP. HỒ CHÍ MINH - CÔN ĐẢO (Ăn trưa, chiều)
Buổi sáng, quý khách tập trung tại Ga đi trong nước, sân bay Tân Sơn Nhất. Bay đi Côn Đảo (cất cánh 08h25). Đáp xuống sân bay Cỏ Ống. Khởi hành tham quan Cảng Bến Đầm: Cảng lớn nhất tại Côn Đảo, là địa điểm hoạt động trung chuyển hàng hóa, hành khách, giao dịch, buôn bán thủy sản và cung ứng các dịch vụ hậu cần nghề biển; Mũi Cá Mập : Mỏm núi vươn dài ra biển có hình tượng giống hàm cá mập; Đỉnh Tình Yêu:  Là chóp núi có hình tượng của đôi trai gái đang tâm tình mà thiên nhiên đã ban tặng cho Côn Đảo; Bãi Nhát:  Một bãi tắm bị tác động của thuỷ triều, khi nước xuống sẽ lộ thiên một bãi tắm với cát trắng mịn, nước trong xanh. Quay về khách sạn. Buổi chiều tối quý khách tự do khám phá Côn Đảo. Nghỉ đêm trên Côn Đảo.

NGÀY 02: THAM QUAN CÔN ĐẢO (Ăn sáng, trưa, chiều)
Buổi sáng, quý khách tham quan Dinh chúa đảo - nơi lưu giữ các tư liệu và hình ảnh của Côn Đảo từ thời Pháp thuộc đến những năm 2000; Trại tù Phú Hải; Cầu tàu 914; Viếng nghĩa trang Hàng Dương nơi yên nghĩ của hơn 2.000 nấm mộ và đặc biệt là mộ cô Sáu (Võ Thị Sáu), Khu Chuồng Cọp Pháp - Mỹ hệ thống biệt giam đặc biệt tại Côn Đảo. Chuồng Bò Miếu bà Phi Yến nơi thờ phượng bà Lê Thị Râm, vợ chúa Nguyễn Ánh. Buổi chiều quý khách đến tắm biển tại bãi Đầm Trầu (cách trung tâm thị trấn Côn Đảo khoảng 13km). Đây là một bãi tắm gần như còn hoang sơ, tuyệt đẹp với cát vàng mịn màng, làn nước trong xanh màu ngọc bích. Từ lộ chính, quý khách đi bộ theo đường mòn khoảng 1,5km để đến bãi tắm. Trên đường đi quý khách dừng chân để viếng Miếu Cậu - nơi thờ hoàng tử Cải, con trai của chúa Nguyễn Ánh và bà Hoàng Phi Yến. Quay về khách sạn. Tự do. Nghỉ đêm ở Côn Đảo.

NGÀY 03: CÔN ĐẢO - TP. HỒ CHÍ MINH (Ăn sáng)
Buổi sáng, quý khách trả phòng. Di chuyển ra sân bay Cỏ Ống. Bay vào TP.HCM (cất cánh lúc 10h25). Về đến sân bay Tân Sơn Nhất. Kết thúc chương trình. (Quý khách tự túc phương tiện từ sân bay về lại nhà).', N'- Đến với Côn Đảo (hay với các tên khác như Côn Sơn, Côn Lôn) đã gợi cho người nghe hình ảnh mịt mù của một khu vực xa xôi, mờ mịt, có lúc được ví như địa ngục trần gian nổi tiếng từ thời Pháp thuộc đến giữa năm 1975. 
- Tham quan Cầu tàu 914, Trại Phú Hải, Chuồng Cọp Pháp - Mỹ, Mũi Cá Mập, Đỉnh Tình Yêu.', N'* Các khoản phụ thu (nếu có) :  
- Phụ thu nâng hạng lên loại phòng Suite khu Building: + 2.600.000/khách/tour.
- Phụ thu Phòng đơn Building Sup: +1.800.000 đồng/khách/ tour.
- Phụ thu bữa ăn chính (nếu cần): + 180.000 đồng/suất.
- Phụ thu bữa ăn sáng (nếu cần): + 130,000 đồng/suất

* Vé trẻ em:  
- Đối với trẻ em dưới 6 tuổi, gia đình tự lo cho bé ăn ngủ và tự trả phí tham quan (nếu có). Hai khách người lớn chỉ được dẫn kèm một trẻ em. Từ trẻ thứ 2 trở lên, mỗi trẻ phải mua 1 suất của Trẻ em từ 6 đến dưới 12 tuổi.
- Tiêu chuẩn trẻ từ 6 đến dưới 12 tuổi bao gồm: vé máy bay, suất ăn, ghế ngồi và ngủ ghép chung với phụ huynh.

* Giá tour bao gồm:  
- Chi phí xe máy lạnh phục vụ theo chương trình.
- Chi phí khách sạn Sài Gòn - Côn Đảo (2 khách/phòng – khu building hoặc Villa)
- Chi phí ăn - uống theo chương trình. (4 bữa chính)
- Chi phí tham quan và tàu thuyền.
- Chi phí Hướng dẫn viên tiếng Việt.
- Vé máy bay khứ hồi.
- Quà tặng: Nón, nước suối, khăn lạnh, viết…

 * Giá tour không bao gồm:  
- Chi phí ăn uống ngoài chương trình, giặt ủi, điện thoại và các chi phí cá nhân khác.

* Quý khách vui lòng chấp nhận điều kiện áp dụng sau:
- Đổi tên vé máy bay: chi phí đổi : 2.200.000 /lần đổi.
+ Hủy vé  sau khi mua tour, chịu phạt :
- Người lớn : 3.200.000 đồng / khách
- Trẻ em từ 2- dưới 12 tuổi : 2.200.000 đồng / khách
- Trẻ em dưới 2 tuổi :  700.000 đồng / khách
+ Hủy vé trong vòng 06 ngày trước ngày khởi hành, chịu phạt:
- Người lớn  5.200.000 đồng / khách
- Trẻ em 2- dưới 12 tuổi : 3.200.000 đồng / khách
- Trẻ em dưới 2 tuổi : 700.000/khách
+ Hủy vé trong vòng 24 giờ hoặc ngay ngày khởi hành, chịu phạt 100% tiền tour.

* Hành lý và giấy tờ tùy thân:  
- Du khách mang theo giấy Chứng Minh Nhân Dân hoặc Hộ chiếu. Đối với du khách là Việt kiều, Quốc tế nhập cảnh Việt Nam bằng visa rời, vui lòng mang theo visa khi đăng ký và đi tour.
- Khách lớn tuổi (từ 70 tuổi trở lên), khách tàn tật tham gia tour, phải có thân nhân đi kèm và cam kết đảm bảo đủ sức khỏe khi tham gia tour du lịch.
- Trẻ em dưới 14 tuổi khi đi tour phải mang theo Giấy khai sinh hoặc Hộ chiếu. Trẻ em từ 14 tuổi trở lên phải mang theo giấy Chứng Minh Nhân Dân hoặc Hộ chiếu riêng.
- Tất cả giấy tờ tùy thân mang theo đều phải bản chính.
- Du khách mang theo hành lý gọn nhẹ và phải tự bảo quản hành lý, tiền bạc, tư trang trong suốt thời gian đi du lịch. Du khách miễn 20 kg cước hành lý ký gởi và 7kg hành lý xách tay.
Khách Việt Nam ở cùng phòng với khách Quốc tế  hoặc Việt kiều yêu cầu phải có giấy hôn thú.
- Du khách có mặt tại sân bay trước 3 tiếng so với giờ khởi hành.', N'1/ Nên du lịch Côn Đảo vào mùa nào trong năm?
Từ tháng 3 đến tháng 9 tuy là mùa mưa nhưng biển khá êm, các trận mưa không kéo dài,thường gián đoạn nên  rất thích hợp để tham gia những hoạt động trên biển, cũng như tham quan. Đặc biệt nhất đây là mùa rùa từ mọi nơi về Côn Đảo đẻ trứng.  
Từ tháng 10 đến tháng 2 thời gian này là mùa khô nên luôn có nắng dịu nhẹ, thích hợp cho hành trình khám phá Côn Đảo của bạn.

2/ Nếu không đi máy bay thì tôi có thể chọn phương tiện nào khác để đến Côn Đảo?
Hiện tại ngoài hành trình bay của Vietnam Airlines kết hợp với dịch vụ bay Vasco thì quý khách có thể đến Côn Đảo bằng tàu cao tốc từ: Vũng Tàu, Hồ Chí Minh, Sóc Trăng và Cần Thơ.

3/ Tôi có thể tự túc phương tiện đến Côn Đảo và nhập đoàn không ?
Quý khách hoàn toàn có thể tự túc phương tiện đến Côn Đảo và nhập đoàn với Lữ hành VietTravel.

4/ Khi đi Côn Đảo, tôi có thể viếng mộ Cô Sáu vào ban đêm không ?
Quý khách có thể viếng nghĩa trang Hàng Dương vào ban đêm, để thuận tiện hơn quý khách vui lòng trao đổi với nhân viên của Lữ hành VietTravel để được hỗ trợ cũng như tư vấn chuẩn bị những vật dụng cần thiết.

5/ Đến Côn Đảo mua gì làm quà ?
Hạt bàng - một loại đặc sản ngon và lạ với nhiều cách chế biến khác nhau: mứt hạt bàng (mặn và ngọt), hạt bàng rang. Ngoài ra, bạn có thể mua các loại hải sản tươi hay khô như mực khô, mực một nắng và có thể mua đồ lưu niện từ những sản phẩm thủ công mỹ nghệ bằng vỏ óc.')
INSERT [dbo].[CHUONG_TRINH_TOUR] ([MA_TOUR], [HINH_ANH], [TEN_TOUR], [MA_LOAI_TOUR], [GIA_NGUOI_LON], [GIA_TRE_EM], [NGAY_KHOI_HANH], [NGAY_KET_THUC], [SO_CHO], [GHI_CHU], [LICH_TRINH], [NOI_DUNG], [CHINH_SACH], [CAU_HOI_THUONG_GAP]) VALUES (8, N'mocchau.jpg                                                                                                                                                                                                                                               ', N'DU LỊCH HÀ NỘI - MỘC CHÂU - NINH BÌNH - KHỞI HÀNH TỪ CẦN THƠ', 2, CAST(6290000 AS Decimal(18, 0)), CAST(4250000 AS Decimal(18, 0)), CAST(0x0000ACB700000000 AS DateTime), NULL, NULL, NULL, N'Ngày 01: CẦN THƠ – HÀ NỘI – HÒA BÌNH – MỘC CHÂU (Ăn trưa, tối)
Buổi sáng, quý khách tập trung tại Ga đi trong nước - Sân bay Cần Thơ. Hướng dẫn viên Lữ hành VietTravel đón quý khách và hỗ trợ làm thủ tục. Khởi hành ra Hà Nội (chuyến bay VNA lúc 08:40). Đến sân bay Nội Bài, khởi hành đến tham quan nhà máy thủy điện Hòa Bình. Buổi chiều, đoàn đến Mộc Châu, tham quan thác Dải Yếm, vườn hoa Happy Land. Nghỉ đêm tại Mộc Châu.

Ngày 02: MỘC CHÂU – NINH BÌNH (Ăn sáng, trưa, tối) 
Tham quan đồi chè Mộc Châu, rừng Thông Bản Áng. Đoàn dừng chân nghỉ ngơi tại Thung Khe - đèo Đá Trắng. Tiếp tục về Ninh Bình, thăm cố đô Hoa Lư. Nghỉ đêm tại Ninh Bình.

Ngày 03: NINH BÌNH – HÀ NỘI (Ăn sáng, trưa, tối) 
Buổi sáng, đoàn đến tham quan Khu du lịch Tràng An - KDL nằm trong quần thể danh thắng Tràng An đã được UNESCO công nhận di sản hỗn hợp đầu tiên của Việt Nam và khu vực Đông Nam Á (đạt cả hai tiêu chí về văn hóa và thiên nhiên) vào ngày 25/6/2014. Sau đó, viếng Chùa Bái Đính. Chiều về lại Hà Nội, thăm Văn Miếu Quốc Tử Giám. Buổi tối, đoàn tự do dạo quanh hồ Hoàn Kiếm, tham quan “36 phố phường” -  khu phố cổ với những ngành nghề đặc trưng và truyền thống của cư dân Thủ đô. Nghỉ đêm tại Hà Nội.

Ngày 04: HÀ NỘI – CẦN THƠ (Ăn sáng, trưa) 
Buổi sáng, HDV đưa đoàn đến viếng lăng Chủ tịch Hồ Chí Minh. Tham quan khu di tích Phủ chủ tịch – viếng chùa Trấn Quốc. Sau bữa trưa, xe đưa đoàn đến sân bay Nội Bài làm thủ tục về lại Cần Thơ (Chuyến bay VNA lúc 19h05). Đến sân bay Cần Thơ, Qúy khách tự túc về lại tư gia. Kết thúc chương trình. Chào tạm biệt và hẹn gặp lại.

* Điểm tham quan có thể sắp xếp lại cho phù hợp nhưng vẫn bảo đảm đầy đủ nội dung của chương trình.', N'- Thưởng ngoạn thắng cảnh Mộc Châu thác Dải Yếm, vườn hoa Happy Land, đồi chè Mộc Châu, rừng Thông Bản Áng
- Tham quan Khu du lịch Tràng An - Ninh Bình 
- Viếng Chùa Bái Đính, Lăng Chủ tịch Hồ Chí Minh', N'* Giá tour trọn gói bao gồm
- Chi phí xe máy lạnh phục vụ theo chương trình tham quan.
- Vé máy bay Vietnam Airlines khứ hồi : Cần Thơ – Hà Nội – Cần Thơ (01 kiện 10kg xách tay + 01 kiện 23kg ký gửi).
- Chi phí 03 đêm khách sạn 3 sao theo tiêu chuẩn 2 – 3 khách/phòng.
- Chi phí ăn – uống theo chương trình.
- Chi phí tham quan theo chương trình.
- Chi phí Hướng dẫn viên tiếng Việt tham quan tại Miền Bắc.
- Quà tặng: Nón, nước suối, khăn lạnh.
- Thuế VAT.

* Giá tour không bao gồm
- Chi phí khách ngủ phòng đơn.
- Chi phí tham quan ngoài chương trình.
- Chi phí điện thoại, giặt ủi, và chi phí cá nhân khác.

* Giá vé trẻ em
- Vé tour: Trẻ em từ 6 đến dưới 11 tuổi tính 50% giá vé người lớn, trẻ em từ 11 tuổi trở lên mua vé người lớn.
- Đối với trẻ em dưới 5 tuổi, gia đình tự lo cho bé ăn ngủ và tự trả phí tham quan (Nếu có). Hai người lớn chỉ được kèm một trẻ em. Từ trẻ thứ 2 trở lên, mỗi em cần mua một nửa vé người lớn. Tiêu chuẩn nửa vé bao gồm: Suất ăn, ghế ngồi và ngủ ghép chung với gia đình.
- Vé máy bay (theo quy định của hãng hàng không), trẻ em dưới 2 tuổi 10% vé máy bay người lớn, trẻ em từ 2 – dưới 12 tuổi tính 90% vé máy bay người lớn, 12 tuổi trở lên mua vé máy bay người lớn
- Trẻ em free mua ghế ngồi trên xe: Giá 950.000vnd/bé

THÔNG TIN HƯỚNG DẪN

* Quy định vé máy bay:
- Không được phép gia hạn vé máy bay.
- Không được phép đổi tên.
- Không được phép hoàn/hủy vé máy bay. Nếu hủy phải thanh toán 100% chi phí vé máy bay.
- Không được phép thay đổi đặt chỗ.
- Không được phép đổi lộ trình.

* Trường hợp hủy vé tour, quý khách vui lòng thanh toán các khoản lệ phí hủy sau:

a) Đối với ngày thường:
Du khách chuyển đổi tour sang ngày khác và báo trước ngày khởi hành trước 15 ngày sẽ không chịu phí (không áp dụng các tour khách sạn 4 - 5 sao), nếu trễ hơn sẽ căn cứ theo qui định hủy phía dưới và chỉ được chuyển ngày khởi hành tour 1 lần.
- Hủy vé trước ngày khởi hành từ 2 ngày, chi trả 100% tiền landtour, 100% chi phí vé máy bay.
- Hủy vé trước ngày khởi hành từ 3 – 6 ngày, chi trả 80% tiền landtour, 100% chi phí vé máy bay.
- Hủy vé trước ngày khởi hành từ 7 - 14 ngày, chi trả 60% tiền landtour, 100% chi phí vé máy bay.
- Hủy vé trước ngày khởi hành từ 15 ngày, chi trả 50% tiền landtour, 100% chi phí vé máy bay.

b) Đối với dịp Lễ, Tết:
Du khách chuyển đổi tour sang ngày khác và báo trước ngày khởi hành trước 30 ngày sẽ không chịu phí (không áp dụng các tour khách sạn 4 - 5 sao), nếu trễ hơn sẽ căn cứ theo qui định hủy phạt phía dưới và chỉ được chuyển ngày khởi hành tour 1 lần.
- Hủy vé trước ngày khởi hành từ 6 ngày, chi trả 100% tiền landtour, 100% chi phí vé máy bay.
- Hủy vé trước ngày khởi hành từ 7 - 14 ngày, chi trả 80% tiền landtour, 100% chi phí vé máy bay.
- Hủy vé trước ngày khởi hành từ 15 ngày, chi trả 60% tiền landtour, 100% chi phí vé máy bay.

c) Sau khi hủy tour, du khách vui lòng đến nhận tiền trong vòng 15 ngày kể từ ngày kết thúc tour. Chúng tôi chỉ thanh toán trong khoảng thời gian nói trên, sau thời gian trên mọi khiếu nại, thắc mắc sẽ không được giải quyết.

d) Trường hợp hủy tour do sự cố khách quan như thiên tai, dịch bệnh hoặc do tàu thủy, xe lửa, máy bay hoãn/hủy chuyến, Lữ hành VietTravel sẽ không chịu trách nhiệm bồi thường thêm bất kỳ chi phí nào khác ngoài việc hoàn trả chi phí những dịch vụ chưa được sử dụng của tour đó (ngoại trừ chi phí vé máy bay)

* Quy định thanh toán khi đăng ký tour:
a) Đối với ngày thường:
- Thời gian giữ chỗ: 36 giờ.
- Trong quá trình giữ chỗ, quý khách sẽ tiến hành đặt cọc: 50% tổng số tiền tour.
- Quý khách vui lòng thanh toán số tiền tour còn lại trước ngày khởi hành 07 ngày.

b) Đối với dịp Lễ, Tết:
- Thời gian giữ chỗ: 36 giờ.
- Trong quá trình giữ chỗ, quý khách sẽ tiến hành đặt cọc: 60% tổng số tiền tour.
- Quý khách vui lòng thanh toán số tiền tour còn lại trước ngày khởi hành 15 ngày.

* Hành lý và giấy tờ tùy thân:  
- Du khách mang theo giấy CMND (còn hạn sử dụng trong vòng 15 năm) hoặc Hộ chiếu (còn hạn sử dụng ít nhất 6 tháng). Đối với du khách là Việt kiều, Quốc tế nhập cảnh Việt Nam bằng visa rời, vui lòng mang theo visa khi đăng ký và đi tour.
- Khách lớn tuổi (từ 70 tuổi trở lên), khách tàn tật tham gia tour, phải có thân nhân đi kèm và cam kết đảm bảo đủ sức khỏe khi tham gia tour du lịch.
- Trẻ em dưới 14 tuổi khi đi tour phải mang theo giấy khai sinh (bản gốc hoặc bản sao y) hoặc hộ chiếu. Trẻ em từ đủ 14 tuổi trở lên phải mang theo giấy CMND.
- Tất cả giấy tờ tùy thân mang theo đều phải bản chính và còn hạn sử dụng tính đến ngày về của chuyến đi.
- Du khách mang theo hành lý gọn nhẹ và phải tự bảo quản hành lý, tiền bạc, tư trang trong suốt thời gian đi du lịch.
- Khách Việt Nam ở cùng phòng với khách Quốc tế  hoặc Việt kiều yêu cầu phải có giấy hôn thú.

* Lưu ý:
- Du khách có mặt tại sân bay trước 2 tiếng so với giờ máy bay khởi hành. Trong trường hợp đến trễ không làm thủ tục đúng giờ (khi hãng hàng không đã đóng quầy, kết thúc chấp nhận hành khách); Không lên máy bay trước giờ đóng cửa lên máy bay, hoặc hủy tour không báo trước vui lòng chịu phí như “hủy vé ngay ngày khởi hành”.
- Công ty xuất hóa đơn cho du khách có nhu cầu (Trong thời hạn 7 ngày sau khi kết thúc chương trình du lịch). Du khách được chọn một trong những chương trình khuyến mãi dành cho khách lẻ định kỳ (Nếu có).
- Trường hợp Du khách muốn ngủ phòng đơn phải đóng thêm chi phí phụ thu.', NULL)
SET IDENTITY_INSERT [dbo].[CHUONG_TRINH_TOUR] OFF
SET IDENTITY_INSERT [dbo].[DAT_TOUR] ON 

INSERT [dbo].[DAT_TOUR] ([MA_DAT_TOUR], [MA_TOUR], [MA_KH], [GIA_NGUOI_LON], [GIA_TRE_EM], [SO_NGAY], [SO_CHO_NGUOI_LON], [SO_CHO_TRE_EM], [NGAY_DAT], [PHU_THU], [THANH_TIEN], [TRANGTHAI]) VALUES (11, 2, 3, CAST(3529000 AS Decimal(18, 0)), CAST(1765000 AS Decimal(18, 0)), NULL, 1, 0, CAST(0x0000ACB100031219 AS DateTime), NULL, CAST(3529000 AS Decimal(18, 0)), 1)
INSERT [dbo].[DAT_TOUR] ([MA_DAT_TOUR], [MA_TOUR], [MA_KH], [GIA_NGUOI_LON], [GIA_TRE_EM], [SO_NGAY], [SO_CHO_NGUOI_LON], [SO_CHO_TRE_EM], [NGAY_DAT], [PHU_THU], [THANH_TIEN], [TRANGTHAI]) VALUES (12, 3, 3, CAST(4559000 AS Decimal(18, 0)), CAST(1970000 AS Decimal(18, 0)), NULL, 1, 0, CAST(0x0000ACB100101F92 AS DateTime), NULL, CAST(4559000 AS Decimal(18, 0)), 0)
SET IDENTITY_INSERT [dbo].[DAT_TOUR] OFF
INSERT [dbo].[DIEM_DU_LICH] ([MA_DIEM_DL], [HINH_ANH], [TEN_DIEM_DL], [THONG_TIN], [MA_TINH]) VALUES (1, NULL, N'HÀ NỘI', NULL, 1)
INSERT [dbo].[DIEM_DU_LICH] ([MA_DIEM_DL], [HINH_ANH], [TEN_DIEM_DL], [THONG_TIN], [MA_TINH]) VALUES (2, NULL, N'HẠ LONG', NULL, 2)
INSERT [dbo].[DIEM_DU_LICH] ([MA_DIEM_DL], [HINH_ANH], [TEN_DIEM_DL], [THONG_TIN], [MA_TINH]) VALUES (3, NULL, N'SAPA', NULL, 3)
INSERT [dbo].[DIEM_DU_LICH] ([MA_DIEM_DL], [HINH_ANH], [TEN_DIEM_DL], [THONG_TIN], [MA_TINH]) VALUES (4, NULL, N'NINH BÌNH', NULL, 4)
INSERT [dbo].[DIEM_DU_LICH] ([MA_DIEM_DL], [HINH_ANH], [TEN_DIEM_DL], [THONG_TIN], [MA_TINH]) VALUES (5, NULL, N'PHAN THIẾT', NULL, 5)
SET IDENTITY_INSERT [dbo].[KHACH_HANG] ON 

INSERT [dbo].[KHACH_HANG] ([MA_KH], [TEN_KH], [NGAY_SINH], [GIOI_TINH], [CMND], [PASSPORT], [MA_QUOC_GIA], [DIA_CHI], [EMAIL], [TAI_KHOAN_KH], [MAT_KHAU_KH], [DIEN_THOAI], [GHI_CHU]) VALUES (1, N'Nguyễn Thị Lan', CAST(0xE6160B00 AS Date), N'Nữ', N'041910019909        ', N'L02318320           ', N'VN        ', N'căn hộ CBD Premium, 125 Đồng Văn Cống, phường Thạnh Mỹ Lợi, Quận 2, TP. HCM', N'lan123@gmail.com                                                                                                                                                                                                                                          ', N'nguyenlan                                                                                                                                                                                                                                                 ', N'lan123              ', N'0321234679          ', NULL)
INSERT [dbo].[KHACH_HANG] ([MA_KH], [TEN_KH], [NGAY_SINH], [GIOI_TINH], [CMND], [PASSPORT], [MA_QUOC_GIA], [DIA_CHI], [EMAIL], [TAI_KHOAN_KH], [MAT_KHAU_KH], [DIEN_THOAI], [GHI_CHU]) VALUES (2, N'Jeckson Doshi', CAST(0x591B0B00 AS Date), N'Nam', N'0321967014809       ', N'J2380167            ', N'US        ', N'130 Hồ Tùng Mậu, phường Bến Nghé, quận 1, TP.HCM', N'son@gmail.com                                                                                                                                                                                                                                             ', N'jeckson                                                                                                                                                                                                                                                   ', N'jeck123             ', N'093641340`          ', NULL)
INSERT [dbo].[KHACH_HANG] ([MA_KH], [TEN_KH], [NGAY_SINH], [GIOI_TINH], [CMND], [PASSPORT], [MA_QUOC_GIA], [DIA_CHI], [EMAIL], [TAI_KHOAN_KH], [MAT_KHAU_KH], [DIEN_THOAI], [GHI_CHU]) VALUES (3, N'Nguyễn Hoài Sang', NULL, NULL, NULL, NULL, NULL, N'', N'asjhdjka@gmail.com                                                                                                                                                                                                                                        ', N'sang                                                                                                                                                                                                                                                      ', N'123                 ', N'8237172             ', NULL)
SET IDENTITY_INSERT [dbo].[KHACH_HANG] OFF
SET IDENTITY_INSERT [dbo].[LOAI_TOUR] ON 

INSERT [dbo].[LOAI_TOUR] ([MA_LOAI_TOUR], [TEN_LOAI]) VALUES (1, N'Tour Tết')
INSERT [dbo].[LOAI_TOUR] ([MA_LOAI_TOUR], [TEN_LOAI]) VALUES (2, N'Tour Hot')
INSERT [dbo].[LOAI_TOUR] ([MA_LOAI_TOUR], [TEN_LOAI]) VALUES (3, N'Tour Khuyến Mãi')
SET IDENTITY_INSERT [dbo].[LOAI_TOUR] OFF
INSERT [dbo].[MIEN] ([MA_MIEN], [TEN_MIEN], [TRONG_NGOAI_NUOC]) VALUES (1, N'Miền Bắc', 1)
INSERT [dbo].[MIEN] ([MA_MIEN], [TEN_MIEN], [TRONG_NGOAI_NUOC]) VALUES (2, N'Miền Trung', 1)
INSERT [dbo].[MIEN] ([MA_MIEN], [TEN_MIEN], [TRONG_NGOAI_NUOC]) VALUES (3, N'Miền Nam', 1)
INSERT [dbo].[MIEN] ([MA_MIEN], [TEN_MIEN], [TRONG_NGOAI_NUOC]) VALUES (4, N'Châu Á', 0)
INSERT [dbo].[MIEN] ([MA_MIEN], [TEN_MIEN], [TRONG_NGOAI_NUOC]) VALUES (5, N'Châu Âu', 0)
INSERT [dbo].[MIEN] ([MA_MIEN], [TEN_MIEN], [TRONG_NGOAI_NUOC]) VALUES (6, N'Châu Mỹ - Châu Úc - Châu Phi', 0)
INSERT [dbo].[QUAN_TRI_VIEN] ([TAI_KHOAN], [MAT_KHAU]) VALUES (N'admin                                                                                                                                                                                                                                                     ', N'admin               ')
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
ALTER TABLE [dbo].[DAT_TOUR] ADD  CONSTRAINT [DF_DAT_TOUR_TRANGTHAI]  DEFAULT ((0)) FOR [TRANGTHAI]
GO
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
ALTER TABLE [dbo].[CHUONG_TRINH_TOUR]  WITH CHECK ADD  CONSTRAINT [FK_CHUONG_TRINH_TOUR_LOAI_TOUR] FOREIGN KEY([MA_LOAI_TOUR])
REFERENCES [dbo].[LOAI_TOUR] ([MA_LOAI_TOUR])
GO
ALTER TABLE [dbo].[CHUONG_TRINH_TOUR] CHECK CONSTRAINT [FK_CHUONG_TRINH_TOUR_LOAI_TOUR]
GO
ALTER TABLE [dbo].[DAT_TOUR]  WITH CHECK ADD  CONSTRAINT [FK_DAT_TOUR_CHUONG_TRINH_TOUR] FOREIGN KEY([MA_TOUR])
REFERENCES [dbo].[CHUONG_TRINH_TOUR] ([MA_TOUR])
GO
ALTER TABLE [dbo].[DAT_TOUR] CHECK CONSTRAINT [FK_DAT_TOUR_CHUONG_TRINH_TOUR]
GO
ALTER TABLE [dbo].[DAT_TOUR]  WITH CHECK ADD  CONSTRAINT [FK_DAT_TOUR_KHACH_HANG] FOREIGN KEY([MA_KH])
REFERENCES [dbo].[KHACH_HANG] ([MA_KH])
GO
ALTER TABLE [dbo].[DAT_TOUR] CHECK CONSTRAINT [FK_DAT_TOUR_KHACH_HANG]
GO
ALTER TABLE [dbo].[DIEM_DU_LICH]  WITH CHECK ADD  CONSTRAINT [FK_DIEM_DU_LICH_TINH1] FOREIGN KEY([MA_TINH])
REFERENCES [dbo].[TINH] ([MA_TINH])
GO
ALTER TABLE [dbo].[DIEM_DU_LICH] CHECK CONSTRAINT [FK_DIEM_DU_LICH_TINH1]
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
