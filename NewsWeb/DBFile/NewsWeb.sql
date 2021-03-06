USE [NewsWeb]
GO
/****** Object:  Table [dbo].[About]    Script Date: 1/11/2022 11:42:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[SmallDescription] [ntext] NULL,
	[Description] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 1/11/2022 11:42:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 1/11/2022 11:42:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Content] [ntext] NULL,
	[Address] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 1/11/2022 11:42:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 1/11/2022 11:42:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 1/11/2022 11:42:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 1/11/2022 11:42:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[CategoryID] [bigint] NULL,
	[Alias] [nvarchar](250) NULL,
	[Image] [varchar](250) NULL,
	[Status] [bit] NULL,
	[SmallDescription] [ntext] NULL,
	[Description] [ntext] NULL,
	[ViewCount] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Tags] [nvarchar](500) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsCategory]    Script Date: 1/11/2022 11:42:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_NewsCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsTag]    Script Date: 1/11/2022 11:42:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsTag](
	[NewsID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NewsTag] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 1/11/2022 11:42:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 1/11/2022 11:42:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/11/2022 11:42:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](32) NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([ID], [Name], [Alias], [Status], [SmallDescription], [Description], [CreatedDate], [ModifiedDate]) VALUES (1, N'Về chúng tôi', N'Ve-chung-toi', 1, N'Chúng tôi làm những điều này', N'<h2>What is an About Us page?</h2>

<p>An &quot;About Us&quot; Page is where you reveal your brand story, business values, mission, and experiences.&nbsp;</p>

<p>Now the question is: why would you want to share all this information and make it appealing? The answer is simple: you want to tell your audience who you are, show them what you are good at, and tell them you are worthy of their trust.</p>

<p>Think for a moment: would you rather purchase from a business you know nothing about, or would you go for somebody with a friendly face shared on their About page and a story that you find exciting? The latter one, right?&nbsp;</p>

<p>A great About Us page not just portrays your story, qualities and provides an insight on how your business started, but it also helps you sell. When visitors become familiar with your story and connect with it, they&#39;re probably going to purchase from you. A well-planned About Us page can do this!</p>

<p><img alt="Tips to create about us pages" sizes="(max-width: 1500px) 100vw, 1500px" src="https://www.webdew.com/hs-fs/hubfs/tips-to-create-about-us-pages.png?width=1500&amp;name=tips-to-create-about-us-pages.png" srcset="https://www.webdew.com/hs-fs/hubfs/tips-to-create-about-us-pages.png?width=750&amp;name=tips-to-create-about-us-pages.png 750w, https://www.webdew.com/hs-fs/hubfs/tips-to-create-about-us-pages.png?width=1500&amp;name=tips-to-create-about-us-pages.png 1500w, https://www.webdew.com/hs-fs/hubfs/tips-to-create-about-us-pages.png?width=2250&amp;name=tips-to-create-about-us-pages.png 2250w, https://www.webdew.com/hs-fs/hubfs/tips-to-create-about-us-pages.png?width=3000&amp;name=tips-to-create-about-us-pages.png 3000w, https://www.webdew.com/hs-fs/hubfs/tips-to-create-about-us-pages.png?width=3750&amp;name=tips-to-create-about-us-pages.png 3750w, https://www.webdew.com/hs-fs/hubfs/tips-to-create-about-us-pages.png?width=4500&amp;name=tips-to-create-about-us-pages.png 4500w" width="1500" /></p>

<h2>Why does your website need an About Us page?</h2>

<p>Well,&nbsp;benefits of about us page are many.&nbsp;Various types of visitors check out your &quot;About Us&quot; page. They can be first-time visitors, regular visitors, people who wish to work with you, and possible customers. With all kinds of visitors coming to your website, you need to offer sufficient and valuable information to convince them to establish a more substantial connection with you and your business.</p>

<p><a href="https://www.webdew.com/cs/c/?cta_guid=49c3bec7-801b-4e71-96b1-19df71898b9c&amp;signature=AAH58kHwpunx16sXxlrSsV4OMsTwGXmZBg&amp;pageId=43124498451&amp;placement_guid=54f20bf5-fd06-4e95-9e06-c8e0b1f90327&amp;click=dbbf0a88-805f-439c-9d19-8788c6336825&amp;hsutk=&amp;canon=https%3A%2F%2Fwww.webdew.com%2Fblog%2Fabout-us-page-examples&amp;portal_id=3074142&amp;redirect_url=APefjpFyIVJ305M77GkD8TZc38SFYlSpc5pAHd8uSmn4-7i2B13zm6ptM3V3v72mvm4XPFgQftl8BD4nRNQtHuND15hCKac5O_DL5_aZCbaR7H96Ke8-ypxRgPH_dOJuUPpBuYGGbk3A1O1Ga970VZ2GTiqyn0HQ7g" id="cta_button_3074142_49c3bec7-801b-4e71-96b1-19df71898b9c" rel="noopener" target="_blank"><img alt="New call-to-action" height="400" src="https://www.webdew.com/hubfs/6-tricks-to-create-professional-website-1.svg" width="400" /></a></p>

<p>Although not every user who visits your website will end up on your &quot;About Us&quot; page, you still need to make sure to attract those who click on the page. You can achieve this by having insightful, exciting content and ultimately makes them believe that they really need what you are offering.</p>

<p>Your &ldquo;About Us&rdquo; page is a wonderful way to show your visitors who you are and provide them the confidence that you and your organization have the skills and expertise they need to solve their issues.&nbsp;</p>

<p>Your &#39;About Us&#39; page is where you create that first intimate bond with your prospective client. It&#39;s where they ascertain if you would understand them and if you&#39;re dependable. The more pleasant, personal, and convincing you are, the more likely it is that prospects will feel comfortable buying from you and becoming lifetime customers.</p>

<h2>Some Incredible About Us Page Examples</h2>

<p>Nevertheless, creating an &quot;About Us&quot; page that precisely represents your organization can perhaps feel challenging than one might expect. You can consider several things you want your visitors to know, from your history to your achievements to your business values, yet filling all of that information on a single page can be overwhelming for you as well as your visitors.</p>

<p>So how can you design a compelling &quot;About Us&quot; page that will show your visitors who you are and what you do? Indeed, there&#39;s no one-size-fits-all solution; however, there&#39;s no harm in looking at what other successful organizations are doing.&nbsp;</p>

<p>So, have a look at these &quot;About Us&quot; page examples of organizations who got it right.</p>
', CAST(N'2022-01-10T11:29:28.257' AS DateTime), CAST(N'2022-01-10T11:35:10.620' AS DateTime))
SET IDENTITY_INSERT [dbo].[About] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

INSERT [dbo].[FeedBack] ([ID], [Name], [Phone], [Email], [Content], [Address], [CreatedDate], [Status]) VALUES (1, N'Hồ Văn Lợi', N'0856322337', N'holoidhv@gmail.com', N'khong co gì', N'Nghệ An', CAST(N'2022-01-10T10:40:15.480' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO
INSERT [dbo].[Footer] ([ID], [Content], [Status]) VALUES (N'footer', N'<footer class="border-top">
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <ul class="list-inline text-center">
                        <li class="list-inline-item">
                            <a href="https://www.facebook.com/thangkhoia.16/">
                                <span class="fa-stack fa-lg">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="https://www.facebook.com/thangkhoia.16/">
                                <span class="fa-stack fa-lg">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="https://www.facebook.com/thangkhoia.16/">
                                <span class="fa-stack fa-lg">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                    <div class="small text-center text-muted fst-italic">Website tin tức nhóm 6 trình bày</div>
                </div>
            </div>
        </div>
    </footer>', 1)
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status]) VALUES (1, N'Trang chủ', N'/', 1, N'_blank', 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status]) VALUES (2, N'Giới thiệu', N'/gioi-thieu', 2, N'_self', 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status]) VALUES (3, N'Liên hệ', N'/lien-he', 3, N'_self', 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status]) VALUES (4, N'Đăng nhập', N'/admin/login', 4, N'_blank', 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [Name], [CategoryID], [Alias], [Image], [Status], [SmallDescription], [Description], [ViewCount], [CreatedDate], [ModifiedDate], [Tags]) VALUES (5, N'Hà Nội: F0 trong ngày vượt mốc 2.800 ca, 3 giải pháp chính để chống dịch', 1, N'ha-noi-f0-trong-ngay-vuot-moc-2-800-ca-3-giai-phap-chinh-de-chong-dich', N'/Data/images/Anh/raven.jpg', 1, N'(Dân trí) - Tối 9/1, Sở Y tế Hà Nội thông tin trên địa bàn đã phát hiện thêm 2.811 ca dương tính SARS-CoV-2, trong đó có 617 ca cộng đồng.', N'<ul>
	<li><a href="https://dantri.com.vn/suc-khoe.htm" title="Sức khỏe">SỨC KHỎE</a></li>
</ul>

<h1>H&agrave; Nội: F0 trong ng&agrave;y vượt mốc 2.800 ca, 3 giải ph&aacute;p ch&iacute;nh để chống dịch</h1>

<p><img alt="Minh Nhật" src="https://icdn.dantri.com.vn/2021/11/20/nmq7539-crop-1637379274218.jpeg" /></p>

<p><a href="https://dantri.com.vn/tac-gia/minh-nhat-90.htm"><strong>Minh Nhật</strong></a></p>

<p>5 giờ trước</p>

<h2>(D&acirc;n tr&iacute;) - Tối 9/1, Sở Y tế H&agrave; Nội th&ocirc;ng tin tr&ecirc;n địa b&agrave;n đ&atilde; ph&aacute;t hiện th&ecirc;m 2.811 ca dương t&iacute;nh SARS-CoV-2, trong đ&oacute; c&oacute; 617 ca cộng đồng.</h2>

<p>0:00/0:00</p>

<p><a href="javascript:void(0);">Nữ miền Bắc</a></p>

<p>Bệnh nh&acirc;n ph&acirc;n bố tại 405 x&atilde; phường thị trấn thuộc 30/30 quận, huyện, thị x&atilde;.</p>

<p>Một số quận, huyện ghi nhận nhiều bệnh nh&acirc;n trong ng&agrave;y như: Đống Đa (136); Hai B&agrave; Trưng (123); Bắc Từ Li&ecirc;m (112); Ba Đ&igrave;nh (105); H&agrave; Đ&ocirc;ng (102)&hellip;</p>

<p>Cộng dồn số F0 tại H&agrave; Nội trong đợt dịch 4 (từ ng&agrave;y 29/4) l&agrave; 70.958 ca.</p>

<p><img alt="Hà Nội: F0 trong ngày vượt mốc 2.800 ca, 3 giải pháp chính để chống dịch - 1" src="https://icdn.dantri.com.vn/thumb_w/770/2022/01/09/hanoi-1641726570918.jpg" title="Hà Nội: F0 trong ngày vượt mốc 2.800 ca, 3 giải pháp chính để chống dịch - 1" /></p>

<p>T&iacute;nh đến hết ng&agrave;y 8/1, H&agrave; Nội c&oacute; 43.695 trường hợp F0 đang được điều trị. Tổng số mũi ti&ecirc;m to&agrave;n th&agrave;nh phố đ&atilde; thực hiện được từ khi triển khai ti&ecirc;m chủng vaccine ph&ograve;ng&nbsp;<a href="https://dantri.com.vn/suc-khoe/dai-dich-covid-19.htm">Covid-19</a>&nbsp;l&agrave; 13.147.422 mũi ti&ecirc;m; 211.377 mũi bổ sung v&agrave; 978.487 mũi vaccine nhắc lại.&nbsp;</p>

<p>Theo Sở Y tế H&agrave; Nội, 3 giải ph&aacute;p ch&iacute;nh để ph&ograve;ng,&nbsp;<a href="https://dantri.com.vn/suc-khoe/dai-dich-covid-19.htm">chống dịch Covid-19</a>&nbsp;hiện nay cần được tập trung thực hiện l&agrave; tăng cường ti&ecirc;m vaccine; cung cấp thuốc đầy đủ kịp thời cho người bệnh v&agrave; quản l&yacute; chặt chẽ bệnh nh&acirc;n điều trị tại nh&agrave;, hạn chế tối đa bệnh nh&acirc;n chuyển tầng.</p>

<p><iframe frameborder="0" id="dantri-widget-corona-vietnam-vaccinations" scrolling="no" src="https://gadgets.dantri.com.vn/corona/vietnam-vaccinations?embed=true"></iframe></p>
', 0, CAST(N'2022-01-09T23:32:31.040' AS DateTime), NULL, N'an cuop')
INSERT [dbo].[News] ([ID], [Name], [CategoryID], [Alias], [Image], [Status], [SmallDescription], [Description], [ViewCount], [CreatedDate], [ModifiedDate], [Tags]) VALUES (6, N'Nghi phạm cướp 3 tỷ đồng tại ngân hàng trốn chạy như thế nào?', 3, N'Nghi-pham-cuop-3-ty-dong-tai-ngan-hang-tron-chay-nhu-the-nao', N'/Data/images/Anh/haiphong.jpg', 1, N'(Dân trí) - Sau khi cướp được 3 tỉ đồng từ Ngân hàng, nghi phạm đã về nhà cất bớt tiền rồi di chuyển lên Hà Nội. Để phục vụ việc trốn chạy, nghi phạm mua một chiếc xe máy phân khối lớn với giá hơn 700 triệu đồng.', N'<h2>(D&acirc;n tr&iacute;) - Sau khi cướp được 3 tỉ đồng từ Ng&acirc;n h&agrave;ng, nghi phạm đ&atilde; về nh&agrave; cất bớt tiền rồi di chuyển l&ecirc;n H&agrave; Nội. Để phục vụ việc trốn chạy, nghi phạm mua một chiếc xe m&aacute;y ph&acirc;n khối lớn với gi&aacute; hơn 700 triệu đồng.</h2>

<p>0:00/0:00</p>

<p><a href="javascript:void(0);">Nữ miền Bắc</a></p>

<p><img alt="Nghi phạm cướp 3 tỷ đồng tại ngân hàng trốn chạy như thế nào? - 1" src="https://icdn.dantri.com.vn/thumb_w/770/2022/01/09/2694774914466420002853725808882097367382657n-1641726162566.jpg" title="Nghi phạm cướp 3 tỷ đồng tại ngân hàng trốn chạy như thế nào? - 1" /></p>

<p>C&ocirc;ng an Hải Ph&ograve;ng di l&yacute; nghi phạm về Hải Ph&ograve;ng (Ảnh: CTV).</p>

<p>V&agrave;o l&uacute;c hơn 15h chiều nay (ng&agrave;y 9/1), Ph&ograve;ng CSHS, C&ocirc;ng an TP Hải Ph&ograve;ng đ&atilde; di l&yacute; Nguyễn Văn Nam (SN 1998, tr&uacute; tại huyện đảo C&aacute;t Hải, Hải Ph&ograve;ng) từ nơi bắt được đối tượng (Th&aacute;i Nguy&ecirc;n) về địa phương. Nam l&agrave; nghi phạm d&ugrave;ng s&uacute;ng uy hiếp nh&acirc;n vi&ecirc;n Ph&ograve;ng giao dịch Ng&acirc;n h&agrave;ng Vietcombank ở đường Đ&igrave;nh Vũ (phường Đ&ocirc;ng Hải 2, Hải An, Hải Ph&ograve;ng) cướp đi 3 tỷ đồng.</p>

<p>Trước đ&oacute;, v&agrave;o l&uacute;c hơn 10h s&aacute;ng c&ugrave;ng ng&agrave;y, c&aacute;c trinh s&aacute;t của Ph&ograve;ng cảnh s&aacute;t h&igrave;nh sự - C&ocirc;ng an TP Hải Ph&ograve;ng đ&atilde; phối hợp c&ugrave;ng C&ocirc;ng an tỉnh Th&aacute;i Nguy&ecirc;n bắt được Nguyễn Văn Nam khi nghi phạm n&agrave;y đang lẩn trốn tại một nh&agrave; nghỉ thuộc thị x&atilde; Phổ Y&ecirc;n.</p>

<p>Lực lượng C&ocirc;ng an thu giữ tr&ecirc;n người nghi phạm s&uacute;ng, một lượng tiền mặt v&agrave; một xe ph&acirc;n khối lớn.</p>

<p><img alt="Nghi phạm cướp 3 tỷ đồng tại ngân hàng trốn chạy như thế nào? - 2" src="https://icdn.dantri.com.vn/thumb_w/770/2022/01/09/2691061313340854652353304943685471854508425n-1641726528241.jpg" title="Nghi phạm cướp 3 tỷ đồng tại ngân hàng trốn chạy như thế nào? - 2" /></p>

<p>Chiếc xe ph&acirc;n khối lớn Nam sử dụng để trốn chạy (Ảnh: CTV).</p>

<p>Theo một l&atilde;nh đạo Ph&ograve;ng CSHS, C&ocirc;ng an Hải Ph&ograve;ng, hiện chưa thể thống k&ecirc; cũng như thu hồi số tiền tang vật vụ &aacute;n do nghi phạm cất giấu nhiều nơi.</p>

<p>Tại cơ quan C&ocirc;ng an bước đầu Nam khai nhận đ&atilde; t&igrave;m mua s&uacute;ng để sử dụng v&agrave;o mục đ&iacute;ch cướp ng&acirc;n h&agrave;ng v&agrave; thực hiện một m&igrave;nh.</p>

<p>V&agrave;o thời điểm xảy ra vụ việc, Nam bất ngờ ập v&agrave;o Ph&ograve;ng giao dịch Ng&acirc;n h&agrave;ng Vietcombank ở đường Đ&igrave;nh Vũ (phường Đ&ocirc;ng Hải 2, Hải An, Hải Ph&ograve;ng), d&ugrave;ng s&uacute;ng uy hiếp nh&acirc;n vi&ecirc;n v&agrave; cướp đi 3 tỷ đồng.</p>

<p>Sau đ&oacute; Nam chạy ra ngo&agrave;i, cướp xe của một nh&acirc;n vi&ecirc;n bảo vệ, tẩu tho&aacute;t về hướng cầu T&acirc;n Vũ- Lạch Huyện, bỏ xe m&aacute;y lại tại đ&acirc;y, bắt taxi d&ugrave; về nh&agrave;.</p>

<p>Tại nh&agrave; Nam b&igrave;nh tĩnh thay quần &aacute;o, ch&ocirc;n một phần tiền tại gốc c&acirc;y trong s&acirc;n nh&agrave;, cho bạn g&aacute;i một khoản rồi t&igrave;m đường l&ecirc;n H&agrave; Nội. Để phục vụ mục&nbsp;đ&iacute;ch trốn chạy, Nam t&igrave;m đến một cửa h&agrave;ng xe m&aacute;y chi hơn 700 triệu đồng mua xe m&aacute;y ph&acirc;n khối lớn.</p>

<p><img alt="Nghi phạm cướp 3 tỷ đồng tại ngân hàng trốn chạy như thế nào? - 3" src="https://icdn.dantri.com.vn/thumb_w/770/2022/01/09/nghi-pham-cuop-3-ti-dong-tai-ngan-hang-da-tron-chay-nhu-the-nao-3-1641727974485.jpeg" title="Nghi phạm cướp 3 tỷ đồng tại ngân hàng trốn chạy như thế nào? - 3" /></p>

<p>Cửa h&agrave;ng b&agrave;n giao xe cho Nam (Ảnh: Fanpage cửa h&agrave;ng).</p>

<p>Mua xe xong, Nam điều khiển xe m&aacute;y di chuyển l&ecirc;n Th&aacute;i Nguy&ecirc;n v&agrave; bị bắt sau đ&oacute;.</p>

<p>Tr&ecirc;n mạng x&atilde; hội cũng lan truyền h&igrave;nh ảnh một cửa h&agrave;ng tặng hoa ch&uacute;c mừng khi b&agrave;n giao xe cho Nguyễn Văn Nam k&egrave;m h&igrave;nh ảnh nghi phạm n&agrave;y điều khiển xe rời đi.</p>

<p>Theo địa phương nơi Nam sinh sống, đối tượng từng được đưa đi gi&aacute;o dục tại Trường gi&aacute;o dưỡng trong khoảng thời gian từ cuối năm 2011 đến cuối năm 2013. Nam cũng thường xuy&ecirc;n vắng mặt tại địa phương, kh&ocirc;ng c&oacute; nơi ở ổn định.</p>
', 0, CAST(N'2022-01-09T23:55:39.003' AS DateTime), NULL, N'an cuop')
INSERT [dbo].[News] ([ID], [Name], [CategoryID], [Alias], [Image], [Status], [SmallDescription], [Description], [ViewCount], [CreatedDate], [ModifiedDate], [Tags]) VALUES (7, N'Gần 16.000 ca Covid-19 trên toàn quốc, Hà Nội, Hải Phòng ca mắc tăng cao', 2, N'gan-16-000-ca-covid-19-tren-toan-quoc-ha-noi-hai-phong-ca-mac-tang-cao', N'/Data/images/Anh/covid_19.jpeg', 1, N'(Dân trí) - Ngày 9/1, Bộ Y tế cho biết tại 60 tỉnh thành ghi nhận 15.751 ca Covid-19, với 10.217 F0 cộng đồng. Số mắc mới tại Hà Nội tăng cao, đứng đầu cả nước với 2.811 F0, tiếp đó là Hải Phòng 836 ca mắc mới.', N'<h2>(D&acirc;n tr&iacute;) - Ng&agrave;y 9/1, Bộ Y tế cho biết tại 60 tỉnh th&agrave;nh ghi nhận 15.751 ca Covid-19, với 10.217 F0 cộng đồng. Số mắc mới tại H&agrave; Nội tăng cao, đứng đầu cả nước với 2.811 F0, tiếp đ&oacute; l&agrave; Hải Ph&ograve;ng 836 ca mắc mới.</h2>

<p>T&iacute;nh từ 16h ng&agrave;y 8/1 đến 16h ng&agrave;y 9/1, tr&ecirc;n Hệ thống Quốc gia quản l&yacute; ca bệnh&nbsp;<a href="https://dantri.com.vn/suc-khoe/dai-dich-covid-19.htm">Covid-19</a>&nbsp;ghi nhận 15.779 ca nhiễm mới, trong đ&oacute; 28 ca nhập cảnh v&agrave; 15.751 ca ghi nhận trong nước (giảm 762 ca so với ng&agrave;y trước đ&oacute;) tại 60 tỉnh, th&agrave;nh phố (c&oacute; 10.217 ca trong cộng đồng).</p>

<p>H&agrave; Nội với 2.811 ca mắc mới đứng đầu cả nước. 4 tỉnh c&oacute; số mắc cao tiếp theo l&agrave; Hải Ph&ograve;ng (836), Kh&aacute;nh H&ograve;a (790), B&igrave;nh Phước (679), B&igrave;nh Định (636).</p>

<p><img alt="Gần 16.000 ca Covid-19 trên toàn quốc, Hà Nội, Hải Phòng ca mắc tăng cao - 1" src="https://icdn.dantri.com.vn/thumb_w/770/2022/01/05/covid19-tai-ha-noi-hon-2-1641381990105.jpeg" title="Gần 16.000 ca Covid-19 trên toàn quốc, Hà Nội, Hải Phòng ca mắc tăng cao - 1" /></p>

<p>X&eacute;t nghiệm Covid-19 cho người d&acirc;n (Ảnh minh họa: Mạnh Qu&acirc;n).</p>

<p>Số mắc tại c&aacute;c tỉnh c&ograve;n lại gồm: C&agrave; Mau (615), Vĩnh Long (532), H&agrave; Giang (492), T&acirc;y Ninh (475), TPHCM (472), Bến Tre (454), Đ&agrave; Nẵng (433), Hưng Y&ecirc;n (410), Bắc Ninh (382), Quảng Ninh (315), Thanh H&oacute;a (293), B&agrave; Rịa - Vũng T&agrave;u (285), Thừa Thi&ecirc;n Huế (255), Bạc Li&ecirc;u (237), L&acirc;m Đồng (228), Hậu Giang (195), Hải Dương (175), Quảng Ng&atilde;i (171), Vĩnh Ph&uacute;c (170), H&ograve;a B&igrave;nh (169), Th&aacute;i Nguy&ecirc;n (162), Nam Định (157), Cần Thơ (152), Ninh B&igrave;nh (140), An Giang (140), Tr&agrave; Vinh (138), Nghệ An (128), Đồng Th&aacute;p (127), Quảng Nam (126), Bắc Giang (126), Ki&ecirc;n Giang (120), Ph&uacute; Thọ (118), S&oacute;c Trăng (117), B&igrave;nh Dương (117), Th&aacute;i B&igrave;nh (113), Điện Bi&ecirc;n (105), Đắk N&ocirc;ng (103), Tiền Giang (97), H&agrave; Nam (96), Đồng Nai (95), B&igrave;nh Thuận (88), Quảng B&igrave;nh (74), Y&ecirc;n B&aacute;i (73), Bắc Kạn (71), Quảng Trị (63), H&agrave; Tĩnh (54), L&agrave;o Cai (47), Tuy&ecirc;n Quang (46), Ninh Thuận (41), Lai Ch&acirc;u (41), Sơn La (38), Ph&uacute; Y&ecirc;n (34), Kon Tum (34), Long An (32), Cao Bằng (28).</p>

<p>Ng&agrave;y 9/1, Sở Y tế B&igrave;nh Phước đăng k&yacute; bổ sung 7.402 ca tr&ecirc;n Hệ thống Quốc gia quản l&yacute; ca bệnh Covid-19 sau khi r&agrave; so&aacute;t, bổ sung đầy đủ th&ocirc;ng tin tại B&igrave;nh Phước.</p>

<p>Trung b&igrave;nh số ca nhiễm mới trong nước ghi nhận trong 7 ng&agrave;y qua l&agrave; 16.097 ca/ng&agrave;y.</p>

<p>Đến nay tại Việt Nam đ&atilde; ghi nhận 30 ca mắc Covid-19 do biến thể Omicron, đều l&agrave; c&aacute;c ca được c&aacute;ch ly ngay sau khi nhập cảnh tại H&agrave; Nội (1), Quảng Nam (14), TPHCM (11), Hải Dương (1), Hải Ph&ograve;ng (1), Thanh H&oacute;a (2).</p>

<p>Như vậy kể từ đầu dịch đến nay Việt Nam c&oacute; 1.899.575 ca nhiễm, đứng thứ 28/224 quốc gia v&agrave; v&ugrave;ng l&atilde;nh thổ, trong khi với tỷ lệ số ca nhiễm/một triệu d&acirc;n, Việt Nam đứng thứ 143/224 quốc gia v&agrave; v&ugrave;ng l&atilde;nh thổ (b&igrave;nh qu&acirc;n cứ một triệu người c&oacute; 19.253 ca nhiễm).</p>

<p>Trong đợt dịch thứ 4 (từ ng&agrave;y 27/4/2021 đến nay), số ca nhiễm mới ghi nhận trong nước l&agrave; 1.893.570 ca, trong đ&oacute; c&oacute; 1.497.431 bệnh nh&acirc;n đ&atilde; được c&ocirc;ng bố khỏi bệnh.</p>

<p>C&aacute;c địa phương ghi nhận số nhiễm t&iacute;ch lũy cao trong đợt dịch n&agrave;y: TPHCM (507.810), B&igrave;nh Dương (291.446), Đồng Nai (98.745), T&acirc;y Ninh (82.197), H&agrave; Nội (67.776).</p>

<p>Về t&igrave;nh h&igrave;nh điều trị, trong ng&agrave;y c&oacute; 12.210 bệnh nh&acirc;n được c&ocirc;ng bố khỏi bệnh, n&acirc;ng tổng số ca được điều trị khỏi l&ecirc;n 1.500.248 trường hợp.</p>

<p>Số bệnh nh&acirc;n nặng đang điều trị l&agrave; 5.970 ca, trong đ&oacute;:</p>

<p>- Thở oxy qua mặt nạ: 4.257 ca</p>

<p>- Thở&nbsp; oxy d&ograve;ng cao HFNC: 861 ca</p>

<p>- Thở m&aacute;y kh&ocirc;ng x&acirc;m lấn: 136 ca</p>

<p>- Thở m&aacute;y x&acirc;m lấn: 696 ca</p>

<p>- ECMO: 20 ca</p>

<p>Về số bệnh nh&acirc;n tử vong, từ 17h30 ng&agrave;y 8/1 đến 17h30 ng&agrave;y 9/1 ghi nhận 202 ca tử vong, trong đ&oacute; tại TPHCM (19), An Giang (21), Long An (15), Đồng Th&aacute;p (14), Vĩnh Long (14), Ki&ecirc;n Giang (13), S&oacute;c Trăng (11), Cần Thơ (11), Đồng Nai (10), Tiền Giang (10), B&igrave;nh Dương (9), Bến Tre (9), B&agrave; Rịa - Vũng T&agrave;u (8 ), T&acirc;y Ninh (5), Hậu Giang (5), C&agrave; Mau (4), B&igrave;nh Định (4), Tr&agrave; Vinh (3), Kh&aacute;nh H&ograve;a (3), B&igrave;nh Thuận (3), Bạc Li&ecirc;u (3), Đắk Lắk (2), Bắc Ninh (1), Quảng Ninh (1), Huế (1), Gia Lai (1), Đ&agrave; Nẵng (1), L&acirc;m Đồng (1).</p>

<p>Trung b&igrave;nh số tử vong ghi nhận trong 7 ng&agrave;y qua l&agrave; 213 ca/ng&agrave;y.</p>

<p>Tổng số ca tử vong do Covid-19 tại Việt Nam t&iacute;nh đến nay l&agrave; 34.319 ca, chiếm tỷ lệ 1,8% so với tổng số ca nhiễm.</p>

<p>Đến nay, tổng số ca tử vong do Covid-19 tại Việt Nam xếp thứ 26/224 v&ugrave;ng l&atilde;nh thổ. Số ca tử vong tr&ecirc;n một&nbsp;triệu d&acirc;n xếp thứ 130/224 quốc gia, v&ugrave;ng l&atilde;nh thổ tr&ecirc;n thế giới. So với ch&acirc;u &Aacute;, tổng số ca tử vong xếp thứ 6/49 (xếp thứ 3 ASEAN), tử vong tr&ecirc;n một triệu d&acirc;n xếp thứ 26/49 quốc gia, v&ugrave;ng l&atilde;nh thổ ch&acirc;u &Aacute; (xếp thứ 5 ASEAN).</p>

<p>Về t&igrave;nh h&igrave;nh ti&ecirc;m chủng, trong ng&agrave;y 8/1 c&oacute; 865.962 liều vaccine ph&ograve;ng Covid-19 được ti&ecirc;m. Như vậy, tổng số liều vaccine đ&atilde; được ti&ecirc;m l&agrave; 160.033.187 liều, trong đ&oacute; ti&ecirc;m mũi một l&agrave; 78.247.751 liều, ti&ecirc;m mũi 2 l&agrave; 70.900.775 liều, ti&ecirc;m mũi 3 (ti&ecirc;m bổ sung/ti&ecirc;m nhắc v&agrave; mũi 3 của vaccine Abdala) l&agrave; 10.884.661 liều.</p>

<p><iframe frameborder="0" id="dantri-widget-corona-vietnam-vaccinations" scrolling="no" src="https://gadgets.dantri.com.vn/corona/vietnam-vaccinations?embed=true"></iframe></p>
', 0, CAST(N'2022-01-09T23:56:58.350' AS DateTime), NULL, N'covid19')
INSERT [dbo].[News] ([ID], [Name], [CategoryID], [Alias], [Image], [Status], [SmallDescription], [Description], [ViewCount], [CreatedDate], [ModifiedDate], [Tags]) VALUES (9, N'Thực hư thông tin về "mật đạo" ở Tịnh thất Bồng Lai', 4, N'thuc-hu-thong-tin-ve-mat-dao-o-tinh-that-bong-lai', N'/Data/images/Anh/tinhthatbonglai.jpeg', 1, N'(Dân trí) - Trên mạng xã hội đang lan truyền thông tin có một "mật đạo" ở Tịnh thất Bồng Lai và Diễm My đã sống ở đây trước khi được giải cứu. Vậy có hay không "mật đạo" này?', N'<p>Gần một tuần qua, cộng đồng mạng li&ecirc;n tục dậy s&oacute;ng bởi những th&ocirc;ng tin r&uacute;ng động li&ecirc;n quan đến những sai phạm xảy ra tại Tịnh thất Bồng Lai (Thiền am b&ecirc;n bờ vũ trụ). Ngo&agrave;i những h&agrave;nh vi vi phạm ph&aacute;p luật đ&atilde; được cơ quan điều tra c&ocirc;ng bố, nhiều người vẫn đồn đo&aacute;n về &quot;mật đạo&quot; dưới nền nh&agrave; ở Tịnh thất.</p>

<p><img alt="Thực hư thông tin về mật đạo ở Tịnh thất Bồng Lai - 1" src="https://icdn.dantri.com.vn/thumb_w/770/2022/01/09/dji05961641455740881-1-1641742501049.jpeg" title="Thực hư thông tin về mật đạo ở Tịnh thất Bồng Lai - 1" /></p>

<p>Nhiều người đồn đo&aacute;n dưới nền nh&agrave; ở Tịnh thất Bồng Lai c&oacute; &quot;mật đạo&quot; v&agrave; Diễm My được cất giấu tại đ&acirc;y (Ảnh Hải Long).&nbsp;</p>

<p>Cơ quan chức năng tỉnh Long An đ&atilde; l&ecirc;n tiếng phủ nhận th&ocirc;ng tin t&igrave;m thấy Diễm My trong căn hầm b&iacute; mật ở Tịnh thất Bồng Lai. Tuy vậy, việc cơ quan chức năng chưa khẳng định, cũng chưa phủ nhận th&ocirc;ng tin về &quot;mật đạo&quot; ở đ&acirc;y n&ecirc;n cộng đồng mạng c&oacute; nhiều đồn đo&aacute;n. Mặt kh&aacute;c, một số h&agrave;ng x&oacute;m, d&ugrave; chưa sang Tịnh thất Bồng Lai lần n&agrave;o vẫn trả lời youtuber rằng nơi đ&acirc;y c&oacute; &quot;mật đạo&quot;, c&agrave;ng khiến th&ocirc;ng tin n&agrave;y trở n&ecirc;n mơ hồ hơn.</p>

<p>Để t&igrave;m hiểu về th&ocirc;ng tin tr&ecirc;n,&nbsp;<em>PV D&acirc;n tr&iacute;</em>&nbsp;đ&atilde; li&ecirc;n hệ với &ocirc;ng N.T.S (ngụ TPHCM, một người nhiều năm &acirc;m thầm thu thập những bằng chứng sai phạm tại Tịnh thất Bồng Lai).</p>

<p>&Ocirc;ng S. cho hay: &quot;T&ocirc;i v&agrave;o Tịnh thất Bồng Lai nhiều lần rồi, c&oacute; chỗ n&agrave;o ở trong đ&oacute; t&ocirc;i chưa đi. T&ocirc;i d&aacute;m khẳng định, trong đ&oacute; kh&ocirc;ng c&oacute; căn hầm b&iacute; mật đ&acirc;u. Th&ocirc;ng tin &quot;mật đạo&quot; ho&agrave;n to&agrave;n l&agrave; bịa đặt. Đ&oacute; l&agrave; căn nh&agrave; cũ, x&acirc;y mấy chục năm rồi, lấy đ&acirc;u ra hầm b&iacute; mật. Quanh khu đ&oacute; c&ograve;n thường xuy&ecirc;n bị ngập, hầm n&agrave;o chịu nổi&quot;.</p>

<p><img alt="Thực hư thông tin về mật đạo ở Tịnh thất Bồng Lai - 2" src="https://icdn.dantri.com.vn/thumb_w/770/2022/01/09/anh-chup-man-hinh-20220109-luc-212705-1641742590852.jpeg" title="Thực hư thông tin về mật đạo ở Tịnh thất Bồng Lai - 2" /></p>

<p>&Ocirc;ng S. khẳng định Tịnh thất Bồng Lai kh&ocirc;ng c&oacute; &quot;mật đạo&quot;. Nơi đ&acirc;y chỉ c&oacute; những căn ph&ograve;ng nhỏ, tối tăm, ẩm thấp (Ảnh cắt từ clip).</p>

<p>Theo &ocirc;ng S., tại nơi ở cũ của &ocirc;ng L&ecirc; T&ugrave;ng V&acirc;n tại huyện B&igrave;nh Ch&aacute;nh (TPHCM) c&oacute; một số căn hầm b&iacute; mật nhưng đ&atilde; được đập bỏ từ l&acirc;u. Những căn hầm đ&oacute; &ocirc;ng V&acirc;n l&agrave;m g&igrave; th&igrave; kh&ocirc;ng ai biết v&agrave; cũng kh&ocirc;ng c&oacute; h&igrave;nh ảnh n&agrave;o được ghi nhận lại. Th&ocirc;ng tin n&agrave;y &ocirc;ng S. được nghe lại từ những người th&acirc;n t&iacute;n của &ocirc;ng V&acirc;n.</p>

<p>&quot;Ở Tịnh thất Bồng Lai chỉ c&oacute; c&aacute;c căn ph&ograve;ng nhỏ, ẩm thấp, tối tăm. Những căn ph&ograve;ng n&agrave;y được &ocirc;ng V&acirc;n chia nhỏ từ căn nh&agrave; lớn để c&oacute; chỗ ri&ecirc;ng tư cho nhiều người. Mỗi căn ph&ograve;ng chỉ v&agrave;i m2, c&oacute; cửa sơ s&agrave;i. Tuy vậy, những căn ph&ograve;ng n&agrave;y đ&atilde; được &ocirc;ng V&acirc;n đập bỏ mấy th&aacute;ng trước để lấy chỗ x&acirc;y nh&agrave; mới. Người ta kh&ocirc;ng v&ocirc; đ&oacute;, cứ đồn bậy bạ&quot; - &ocirc;ng S. n&oacute;i th&ecirc;m.</p>

<p><img alt="Thực hư thông tin về mật đạo ở Tịnh thất Bồng Lai - 3" src="https://icdn.dantri.com.vn/thumb_w/770/2022/01/07/1111641455638819-1641544968996.jpeg" title="Thực hư thông tin về mật đạo ở Tịnh thất Bồng Lai - 3" /></p>

<p>Theo h&igrave;nh ảnh từ tr&ecirc;n cao, ph&iacute;a sau Tịnh thất Bồng Lai l&agrave; khu ruộng l&uacute;a, do vậy, tin đồn về việc &quot;mật đạo&quot; th&ocirc;ng ra con đường ph&iacute;a sau cũng kh&aacute; v&ocirc; l&yacute; (Ảnh Hải Long).</p>

<p>Th&ecirc;m một nguồn tin ri&ecirc;ng của&nbsp;<em>D&acirc;n tr&iacute;</em>&nbsp;cũng khẳng định: &quot;T&ocirc;i v&agrave;o Tịnh thất Bồng Lai gặp &ocirc;ng V&acirc;n nhiều rồi, từ thời nơi đ&acirc;y chưa nổi tiếng v&agrave; c&ograve;n đang nở rộ th&ocirc;ng tin c&oacute; hoa ưu đ&agrave;m xuất hiện. Khi đ&oacute;, &ocirc;ng V&acirc;n cũng nhiều lần đưa t&ocirc;i đi thăm cảnh vật xung quanh v&agrave; giới thiệu tất cả mọi ng&oacute;c ng&aacute;ch của căn nh&agrave;. T&ocirc;i thấy chỉ c&oacute; căn nh&agrave; cũ, kh&ocirc;ng thấy hầm n&agrave;o cả. Hầm b&iacute; mật chỉ l&agrave; th&ocirc;ng tin tr&ecirc;n mạng th&ocirc;i&quot;.</p>

<p>Để l&agrave;m r&otilde; vấn đề tr&ecirc;n,<em>&nbsp;PV D&acirc;n tr&iacute;</em>&nbsp;đ&atilde; li&ecirc;n hệ với cơ quan điều tra c&ocirc;ng an tỉnh Long An, c&ocirc;ng an huyện Đức H&ograve;a nhưng đều được cho biết: &quot;Vụ việc đang được điều tra v&agrave; sẽ tổ chức cung cấp th&ocirc;ng tin sau&quot;.</p>

<p>Ng&agrave;y 7/1, C&ocirc;ng an huyện Đức H&ograve;a (Long An) đ&atilde; khởi tố &ocirc;ng L&ecirc; T&ugrave;ng V&acirc;n (SN 1932), L&ecirc; Thanh Ho&agrave;n Nguy&ecirc;n (1990), L&ecirc; Thanh Nhất Nguy&ecirc;n (1991), L&ecirc; Thanh Tr&ugrave;ng Dương (1995) về tội &quot;Lợi dụng quyền tự do d&acirc;n chủ x&acirc;m phạm lợi &iacute;ch của Nh&agrave; nước, tổ chức, c&aacute; nh&acirc;n&quot;.</p>

<p>Cả 4 bị can c&ugrave;ng cư tr&uacute; tại ấp Lập Th&agrave;nh, x&atilde; H&ograve;a Kh&aacute;nh T&acirc;y, huyện Đức H&ograve;a, Long An, tại địa điểm được gọi t&ecirc;n Tịnh thất Bồng Lai hay Thiền am b&ecirc;n bờ vũ trụ. C&ocirc;ng an quyết định bắt tạm giam đối với 3 bị can, ri&ecirc;ng &ocirc;ng L&ecirc; T&ugrave;ng V&acirc;n bị cấm đi khỏi nơi cư tr&uacute;.</p>

<p>Ngo&agrave;i tội danh tr&ecirc;n, &ocirc;ng L&ecirc; T&ugrave;ng V&acirc;n cũng đang bị điều tra về h&agrave;ng loạt phản &aacute;nh sai phạm kh&aacute;c xoay quanh c&aacute;c h&agrave;nh vi c&oacute; dấu hiệu trục lợi h&igrave;nh thức tu tại gia, nu&ocirc;i trẻ mồ c&ocirc;i, cơ nhỡ để k&ecirc;u gọi từ thiện, trục lợi từ thiện v&agrave;&nbsp;lợi dụng quyền tự do d&acirc;n chủ x&acirc;m phạm lợi &iacute;ch của tổ chức, c&aacute; nh&acirc;n, loạn lu&acirc;n.</p>
', 0, CAST(N'2022-01-10T13:30:19.600' AS DateTime), NULL, N'tinh that bong lai')
INSERT [dbo].[News] ([ID], [Name], [CategoryID], [Alias], [Image], [Status], [SmallDescription], [Description], [ViewCount], [CreatedDate], [ModifiedDate], [Tags]) VALUES (10, N'Sau loạt bài của Dân trí, TPHCM giải ngân khẩn hàng trăm tỷ tiền chống dịch', 3, N'sau-loat-bai-cua-dan-tri-tphcm-giai-ngan-khan-hang-tram-ty-tien-chong-dich', N'/Data/images/Anh/covid_19_2.jpeg', 1, N'(Dân trí) - "Sáng nay, Sở Y tế vừa gọi báo đã có quyết định cấp tiền chống dịch. Bệnh viện đã cử nhân viên lên Sở làm thủ tục ngay, thành thật cảm ơn báo rất nhiều" - Giám đốc BV đa khoa khu vực Hóc Môn cho biết.', N'<h2>(D&acirc;n tr&iacute;) - &quot;S&aacute;ng nay, Sở Y tế vừa gọi b&aacute;o đ&atilde; c&oacute; quyết định cấp tiền chống dịch. Bệnh viện đ&atilde; cử nh&acirc;n vi&ecirc;n l&ecirc;n Sở l&agrave;m thủ tục ngay, th&agrave;nh thật cảm ơn b&aacute;o rất nhiều&quot; - Gi&aacute;m đốc BV đa khoa khu vực H&oacute;c M&ocirc;n cho biết.</h2>

<p>0:00/0:00</p>

<p><a href="javascript:void(0);">Nữ miền Bắc</a></p>

<p>Sau c&aacute;c b&agrave;i viết của&nbsp;<em>D&acirc;n tr&iacute;</em>&nbsp;phản &aacute;nh t&igrave;nh cảnh kh&oacute; khăn của nhiều bệnh viện (BV) ở TPHCM c&oacute; tham gia quản l&yacute; BV d&atilde; chiến, điều trị&nbsp;<a href="https://dantri.com.vn/suc-khoe/dai-dich-covid-19.htm">Covid-19</a>&nbsp;khi trở th&agrave;nh &quot;con nợ&quot; tiền tỷ bất đắc dĩ của c&aacute;c c&ocirc;ng ty dược, đơn vị cung&nbsp;cấp vật tư&hellip; v&igrave; ng&acirc;n s&aacute;ch Nh&agrave; nước r&oacute;t kinh ph&iacute; về chậm, cơ quan chức năng lập tức đ&atilde; v&agrave;o cuộc xử l&yacute;.</p>

<p>Trao đổi với PV s&aacute;ng 10/1, b&aacute;c sĩ Đặng Quốc Qu&acirc;n, Gi&aacute;m đốc BV đa khoa khu vực H&oacute;c M&ocirc;n vui mừng cho biết: &quot;S&aacute;ng nay, Sở Y tế vừa gọi b&aacute;o đ&atilde; c&oacute; quyết định cấp tiền chống dịch. BV đ&atilde; cử nh&acirc;n vi&ecirc;n l&ecirc;n Sở l&agrave;m thủ tục ngay, th&agrave;nh thật cảm ơn b&aacute;o rất nhiều&quot;.</p>

<p>Theo b&aacute;c sĩ Qu&acirc;n, với quyết định từ cơ quan quản l&yacute;, 20 tỷ đồng m&agrave; BV xin cấp v&agrave;o th&aacute;ng 12 đ&atilde; được duyệt. Số tiền n&agrave;y BV sẽ d&ugrave;ng chi trả tiền thuốc men, vật tư ti&ecirc;u hao, h&oacute;a chất v&agrave; tiền trợ cấp cho nh&acirc;n vi&ecirc;n y tế trong th&aacute;ng đầu năm 2022.</p>

<p>&quot;Qua th&aacute;ng 2 hoặc trễ nhất đầu th&aacute;ng 3, BV sẽ chuyển đổi lại c&ocirc;ng năng điều trị th&ocirc;ng thường. BV sẽ th&agrave;nh lập khoa điều trị Covid-19 quy m&ocirc; 150 giường, trong đ&oacute; c&oacute; 20 giường hồi sức t&iacute;ch cực cho bệnh nh&acirc;n nặng&quot; - b&aacute;c sĩ Qu&acirc;n n&oacute;i.</p>

<p><img alt="Sau loạt bài của Dân trí, TPHCM giải ngân khẩn hàng trăm tỷ tiền chống dịch - 1" src="https://icdn.dantri.com.vn/thumb_w/770/2022/01/10/bv-da-khoa-khu-vuc-hoc-mon-1641788845707.jpeg" title="Sau loạt bài của Dân trí, TPHCM giải ngân khẩn hàng trăm tỷ tiền chống dịch - 1" /></p>

<p>BV đa khoa khu vực H&oacute;c M&ocirc;n th&ocirc;ng b&aacute;o vừa được Sở Y tế duyệt giải ng&acirc;n 20 tỷ đồng tiền chống dịch (Ảnh: Ho&agrave;ng L&ecirc;).</p>

<p>C&ograve;n b&agrave; Ho&agrave;ng Thị Thanh Kiều, Trưởng ph&ograve;ng T&agrave;i ch&iacute;nh kế to&aacute;n BV L&ecirc; Văn Thịnh, đơn vị trước đ&oacute; th&agrave;nh &quot;con nợ trăm tỷ&quot; (v&igrave; chi 240 tỷ đồng chống dịch nhưng mới nhận 101 tỷ) cũng th&ocirc;ng tin, BV vừa được Sở Y tế giải ng&acirc;n bổ sung hơn 75 tỷ đồng.</p>

<p>&quot;Tiền đ&atilde; r&oacute;t về t&agrave;i khoản. H&ocirc;m nay, BV bắt đầu ra kho bạc giải ng&acirc;n. Giờ chỉ cần đưa hồ sơ thanh to&aacute;n của c&aacute;c c&ocirc;ng ty ra kho bạc, để họ chuyển tiền cho c&aacute;c nh&agrave; cung cấp vật tư, tiền thuốc.</p>

<p>C&ograve;n tiền lương, tiền ăn uống BV đ&atilde; ưu ti&ecirc;n chi trước. Được giải ng&acirc;n hơn 50% cũng rất mừng, nếu kh&ocirc;ng chắc c&aacute;c c&ocirc;ng ty lại đ&ograve;i nợ tiếp&quot; - b&agrave; Kiều n&oacute;i.</p>

<p>Ngo&agrave;i ra, đại diện BV L&ecirc; Văn Thịnh cho biết th&ecirc;m, c&ograve;n khoảng 30 tỷ đồng tiền tạm ứng v&agrave; 12 tỷ đồng tiền chống dịch vượt dự to&aacute;n, BV chưa lấy được từ bảo hiểm x&atilde; hội (BHXH) do c&ograve;n vướng c&aacute;c thủ tục giấy tờ. Số tiền n&agrave;y cũng đang được BV t&igrave;m c&aacute;ch th&aacute;o gỡ.</p>

<p><img alt="Sau loạt bài của Dân trí, TPHCM giải ngân khẩn hàng trăm tỷ tiền chống dịch - 2" src="https://icdn.dantri.com.vn/thumb_w/770/2022/01/10/bv-le-van-thinhhl-1641788675627.jpeg" title="Sau loạt bài của Dân trí, TPHCM giải ngân khẩn hàng trăm tỷ tiền chống dịch - 2" /></p>

<p>BV L&ecirc; Văn Thịnh cho biết đ&atilde; được chi bổ sung hơn 75 tỷ đồng tiền chống dịch (Ảnh: Ho&agrave;ng L&ecirc;).</p>

<p>Th&ocirc;ng b&aacute;o với PV trong s&aacute;ng 10/1, b&aacute;c sĩ V&otilde; Đức Chiến, Gi&aacute;m đốc BV Nguyễn Tri Phương kh&ocirc;ng giấu được sự hồ hởi. &Ocirc;ng cho biết, Sở Y tế đ&atilde; ph&ecirc; duyệt giải ng&acirc;n bổ sung cho BV hơn 20 tỷ đồng, ph&iacute;a BHXH cũng đ&atilde; r&oacute;t về số tiền tương tự.</p>

<p>&quot;19-20 giờ tối nhưng Gi&aacute;m đốc Sở đ&atilde; chỉ đạo k&yacute; ngay. Chuyển tiền thanh to&aacute;n qu&aacute; hạn xong, c&ocirc;ng ty dược đ&atilde; cung cấp lại vật tư cho ch&uacute;ng t&ocirc;i sau thời gian tạm ngưng. Đ&acirc;y l&agrave; t&iacute;n hiệu rất t&iacute;ch cực, gi&uacute;p BV giải tỏa &aacute;p lực rất nhiều.</p>

<p>Đặc th&ugrave; của TPHCM rất đ&ocirc;ng BV, n&ecirc;n được vậy l&agrave; Sở đ&atilde; nỗ lực hỗ trợ lắm rồi. Xin gửi lời cảm ơn ch&acirc;n th&agrave;nh đến b&aacute;o&nbsp;<em>D&acirc;n tr&iacute;</em>&quot; - b&aacute;c sĩ Chiến t&acirc;m sự.</p>

<p>Trước đ&oacute; khi trả lời PV&nbsp;<em>D&acirc;n tr&iacute;</em>, b&agrave; Nguyễn Thị Huỳnh Mai, Ch&aacute;nh văn ph&ograve;ng Sở Y tế TPHCM cho biết, Sở đang l&agrave;m việc với c&aacute;c BV li&ecirc;n quan đến c&ocirc;ng t&aacute;c giải ng&acirc;n tiền chống dịch.</p>

<p>&quot;Đ&acirc;y l&agrave; vấn đề kh&ocirc;ng nhỏ. Tất cả quy chế chi ti&ecirc;u, thanh quyết to&aacute;n thuộc về chức năng của Ph&ograve;ng Kế hoạch - T&agrave;i ch&iacute;nh.</p>

<p>C&aacute;c BV kh&oacute; khăn thế n&agrave;o, tạm ứng t&agrave;i ch&iacute;nh để chi cho chống dịch thế n&agrave;o, Ph&ograve;ng Kế hoạch - T&agrave;i ch&iacute;nh sẽ nắm bắt vấn đề để tham mưu cụ thể cho ban gi&aacute;m đốc&quot; - b&agrave; Mai khẳng định.</p>
', 0, CAST(N'2022-01-10T13:31:29.290' AS DateTime), NULL, N'covid19')
INSERT [dbo].[News] ([ID], [Name], [CategoryID], [Alias], [Image], [Status], [SmallDescription], [Description], [ViewCount], [CreatedDate], [ModifiedDate], [Tags]) VALUES (11, N'Báo Thái Lan gọi HA Gia Lai của HLV Kiatisuk là đội bóng trong mơ', 5, N'Bao-Thai-Lan-goi-HA-Gia-Lai-cua-HLV-Kiatisuk-la-doi-bong-trong-mo', N'/Data/images/Anh/thethao.jpeg', 1, N'(Dân trí) - Sau khi HLV Kiatisuk trở lại Việt Nam và giúp HA Gia Lai vô địch giải đấu khởi động cho mùa bóng mới, truyền thông Thái Lan vạch ra tương lai đầy hứa hẹn cho CLB của "Zico Thái".', N'<h2>(D&acirc;n tr&iacute;) - Sau khi HLV Kiatisuk trở lại Việt Nam v&agrave; gi&uacute;p HA Gia Lai v&ocirc; địch giải đấu khởi động cho m&ugrave;a b&oacute;ng mới, truyền th&ocirc;ng Th&aacute;i Lan vạch ra tương lai đầy hứa hẹn cho CLB của &quot;Zico Th&aacute;i&quot;.</h2>

<p>0:00/0:00</p>

<p><a href="javascript:void(0);">Nữ miền Bắc</a></p>

<p>Tờ Siam Sport của Th&aacute;i Lan viết:&nbsp;<em>&quot;Ng&ocirc;i v&ocirc; địch đầu ti&ecirc;n trong năm mới, Zico (biệt danh của Kiatisuk) dẫn dắt HA Gia Lai gi&agrave;nh c&uacute;p&nbsp;<a href="https://dantri.com.vn/the-thao/bong-da-trong-nuoc.htm">b&oacute;ng đ&aacute;</a>&nbsp;Ho&agrave;ng Đế Quang Trung, sau khi HA Gia Lai thắng đội B&igrave;nh Định 1-0 trong buổi chiều tối 9/1&quot;.</em>&nbsp;</p>

<p><em>&quot;Ở trận đấu n&agrave;y, Zico vẫn chọn c&aacute;ch sử dụng đội h&igrave;nh trẻ kết hợp với c&aacute;c cầu thủ ngoại. Đấy l&agrave; trận đấu m&agrave; HA Gia Lai chỉ cần h&ograve;a l&agrave; v&ocirc; địch, nhưng họ đ&atilde; gi&agrave;nh chiến thắng&quot;</em>&nbsp;- tờ Siam Sport viết th&ecirc;m.</p>

<p><img alt="Báo Thái Lan gọi HA Gia Lai của HLV Kiatisuk là đội bóng trong mơ - 1" src="https://icdn.dantri.com.vn/thumb_w/770/2022/01/10/hagl510122-1641784436948.jpeg" title="Báo Thái Lan gọi HA Gia Lai của HLV Kiatisuk là đội bóng trong mơ - 1" /></p>

<p>Truyền th&ocirc;ng Th&aacute;i Lan d&agrave;nh lời khen cho CLB HA Gia Lai của Kiatisuk sau c&uacute;p b&oacute;ng đ&aacute; Ho&agrave;ng Đế Quang Trung vừa diễn ra tại B&igrave;nh Định (Ảnh: FBNV).</p>

<p>Ở c&uacute;p b&oacute;ng đ&aacute; Ho&agrave;ng Đế Quang Trung vừa diễn ra tại B&igrave;nh Định, HLV Kiatisuk của HA Gia Lai kh&ocirc;ng sử dụng nh&oacute;m cầu thủ vừa trở về từ đội tuyển quốc gia tại AFF Cup 2020, gồm C&ocirc;ng Phượng, Tuấn Anh, Xu&acirc;n Trường, Văn To&agrave;n, Hồng Duy, Minh Vương v&agrave; Văn Thanh.</p>

<p>Vị HLV người Th&aacute;i Lan muốn để cho c&aacute;c cầu thủ n&oacute;i tr&ecirc;n nghỉ ngơi ho&agrave;n to&agrave;n sau khoảng thời gian d&agrave;i tập trung v&agrave; thi đấu cho đội tuyển Việt Nam.</p>

<p>D&ugrave; thiếu vắng đến qu&aacute; nửa đội h&igrave;nh ch&iacute;nh thức, nhưng đội b&oacute;ng phố n&uacute;i vẫn c&oacute; khởi đầu th&agrave;nh c&ocirc;ng trước khi bước v&agrave;o m&ugrave;a giải V-League 2022.&nbsp;</p>

<p>Tờ Siam Sport b&igrave;nh luận tiếp:&nbsp;<em>&quot;Ba trận thắng li&ecirc;n tiếp tại c&uacute;p Ho&agrave;ng Đế Quang Trung gi&uacute;p cho Zico Kiatisuk c&oacute; ng&ocirc;i v&ocirc; địch đầu ti&ecirc;n kể từ khi dẫn dắt CLB HA Gia Lai&quot;.</em></p>

<p><img alt="Báo Thái Lan gọi HA Gia Lai của HLV Kiatisuk là đội bóng trong mơ - 2" src="https://icdn.dantri.com.vn/thumb_w/770/2022/01/10/hagl610122-1641784436937.jpeg" title="Báo Thái Lan gọi HA Gia Lai của HLV Kiatisuk là đội bóng trong mơ - 2" /></p>

<p>Đội b&oacute;ng của HLV Kiatisuk c&oacute; khởi đầu tốt trước thềm m&ugrave;a giải V-League 2022 (Ảnh: FBNV).</p>

<p>Trong khi đ&oacute;, một tờ b&aacute;o kh&aacute;c của Th&aacute;i Lan l&agrave; nhật b&aacute;o Thai Rath thậm ch&iacute; đ&atilde; d&ugrave;ng đến từ &quot;dream team&quot; (đội b&oacute;ng trong mơ) để n&oacute;i về HA Gia Lai của Kiatisuk ở thời điểm hiện tại.</p>

<p>Thai Rath viết:&nbsp;<em>&quot;Zico đang điều khiển một dream team, v&agrave; HLV n&agrave;y cũng vừa tiết lộ mục ti&ecirc;u ở thời điểm khi anh gần hết hợp đồng dẫn dắt CLB HA Gia Lai&quot;.</em></p>

<p><em>&quot;Hợp đồng của Zico với đội b&oacute;ng tại Việt Nam sẽ kết th&uacute;c v&agrave;o ng&agrave;y 30/11/2022, cho biết sau khi hết hợp đồng, anh c&oacute; tham vọng dẫn dắt một đội b&oacute;ng tại giải J-League của Nhật Bản&quot;</em>&nbsp;- tờ Thai Rath th&ocirc;ng tin th&ecirc;m về đ&iacute;ch đến tiếp theo đầy mơ ước của HLV Kiatisuk.</p>

<p>Về ph&iacute;a CLB HA Gia Lai, với lực lượng trẻ hiện tại, c&aacute;c ngoại binh như Brandao, Baiano, Kim Dong Su, c&ugrave;ng với nh&oacute;m c&aacute;c tuyển thủ quốc gia vừa n&ecirc;u ở tr&ecirc;n, đội b&oacute;ng của HLV Kiatisuk vẫn l&agrave; ứng cử vi&ecirc;n s&aacute;ng gi&aacute; cho ng&ocirc;i v&ocirc; địch V-League năm nay.</p>

<p>Năm ngo&aacute;i, cho đến trước khi V-League 2021 tạm dừng v&agrave; bị hủy v&igrave; dịch Covid-19, HA Gia Lai dẫn đầu giải, đồng thời tr&agrave;n trề cơ hội l&ecirc;n ng&ocirc;i. Nhưng cuối c&ugrave;ng họ kh&ocirc;ng được c&ocirc;ng nhận l&agrave; nh&agrave; v&ocirc; địch V-League 2021.</p>
', 0, CAST(N'2022-01-10T13:32:29.463' AS DateTime), NULL, N'thethao')
INSERT [dbo].[News] ([ID], [Name], [CategoryID], [Alias], [Image], [Status], [SmallDescription], [Description], [ViewCount], [CreatedDate], [ModifiedDate], [Tags]) VALUES (12, N'Cổ phiếu đầu cơ giảm sốc, tái ''nghẽn lệnh'' giao dịch', 6, N'co-phieu-dau-co-giam-soc-tai-nghen-lenh-giao-dich', N'/Data/images/Anh/kinhte_1.jpg', 1, N'TTO - Trong lúc thị trường chứng khoán ''đỏ lửa'', hàng loạt cổ phiếu đầu cơ bị bán ra mạnh, nhiều nhà đầu tư không khỏi lo lắng khi bị giao dịch trong "bịt mắt", tái ''nghẽn lệnh'' mua bán cổ phiếu trên sàn HoSE.', N'<div class="content-detail column-2" id="main-detail">
            <div class="w980">
                
                <h1 class="article-title">Cổ phiếu đầu cơ giảm sốc, tái ''nghẽn lệnh'' giao dịch</h1>
                <div class="date-time">10/01/2022 16:09 GMT+7</div>
                
            </div>
            <section class="detail-w fl">
                <div id="mainContentDetail">
                    






<div class="column-first-second">
    
<style>
    .content .content-detail .network .border-radius.btn-zalo-icon:after{background-image:url(https://static.mediacdn.vn/tuoitre/web_images/Zalo-pc-bar-2.svg);background-repeat:no-repeat;content:'''';display:block;margin-left:4px;margin-top:11px;background-size:initial;width:26px;height:10px}.content .content-detail .network .border-radius.btn-zalo-icon:hover,.content .content-detail .network .border-radius.btn-zalo-icon.active{border:1px solid #e32;opacity:1}.content .content-detail .network .border-radius.btn-zalo-icon:hover:after{background-image:url(https://static.mediacdn.vn/tuoitre/web_images/Zalo-pc-bar-hover.svg)}
</style>
<div class="network networktop fl is-affixed" id="sticky-box" style="height: 292px; position: relative;"><div class="inner-wrapper-sticky" style="position: relative; transform: translate3d(0px, 2192px, 0px);">
    <a href="javascript:;" rel="nofollow" title="Thích" class="icon-like border-radius btn-qt" data-newsid="20220110144226566">
        <b class="number">4</b>
    </a>
    
    <a href="javascript:void(0);" rel="nofollow" data-id="20220110144226566" title="Bình luận" data-url="https://tuoitre.vn/news-20220110144226566.htm" data-title="QyVFMSVCQiU5NSUyMHBoaSVFMSVCQSVCRnUlMjAlQzQlOTElRTElQkElQTd1JTIwYyVDNiVBMSUyMGdpJUUxJUJBJUEzbSUyMHMlRTElQkIlOTFjJTJDJTIwdCVDMyVBMWklMjAlMjduZ2glRTElQkElQkRuJTIwbCVFMSVCQiU4N25oJTI3JTIwZ2lhbyUyMGQlRTElQkIlOEJjaA==" data-zone="11" class="icon-comment border-radius">
        <b class="number" data-count-comment="20220110144226566">0</b>
    </a>
    <a href="javascript:;" rel="nofollow" data-id="20220110144226566" data-url="https://tuoitre.vn/news-20220110144226566.htm" title="Xem thêm" data-title="QyVFMSVCQiU5NSUyMHBoaSVFMSVCQSVCRnUlMjAlQzQlOTElRTElQkElQTd1JTIwYyVDNiVBMSUyMGdpJUUxJUJBJUEzbSUyMHMlRTElQkIlOTFjJTJDJTIwdCVDMyVBMWklMjAlMjduZ2glRTElQkElQkRuJTIwbCVFMSVCQiU4N25oJTI3JTIwZ2lhbyUyMGQlRTElQkIlOEJjaA==" data-zone="11" class="icon-book border-radius"></a>
    
    <a onclick="fbClient.shareClick(''https://tuoitre.vn/news-20220110144226566.htm'')" href="javascript:;" rel="nofollow" title="Facebook" class="icon-facebook border-radius"></a>
    <a class="btn-zalo-icon border-radius zalo-share-button" data-href="https://tuoitre.vn/news-20220110144226566.htm" data-oaid="1151501595453344035" data-layout="2" data-color="blue" data-customize="true"><iframe frameborder="0" allowfullscreen="" scrolling="no" width="0px" height="0px" src="https://sp.zalo.me/plugins/share?dev=null&amp;color=blue&amp;oaid=1151501595453344035&amp;href=https%3A%2F%2Ftuoitre.vn%2Fnews-20220110144226566.htm&amp;layout=2&amp;customize=true&amp;callback=null&amp;id=8a540ac9-f8f6-4b17-a0b5-d43c6a5502cf&amp;domain=tuoitre.vn&amp;android=false&amp;ios=false" style="position: absolute;"></iframe></a>
    <a href="javascript:;" rel="nofollow" title="Lưu" data-id="20220110144226566" data-url="https://tuoitre.vn/news-20220110144226566.htm" data-title="QyVFMSVCQiU5NSUyMHBoaSVFMSVCQSVCRnUlMjAlQzQlOTElRTElQkElQTd1JTIwYyVDNiVBMSUyMGdpJUUxJUJBJUEzbSUyMHMlRTElQkIlOTFjJTJDJTIwdCVDMyVBMWklMjAlMjduZ2glRTElQkElQkRuJTIwbCVFMSVCQiU4N25oJTI3JTIwZ2lhbyUyMGQlRTElQkIlOEJjaA==" data-important="0" class="icon-save border-radius"><b class="number">Lưu</b></a>
<div class="resize-sensor" style="position: absolute; inset: 0px; overflow: hidden; z-index: -1; visibility: hidden;"><div class="resize-sensor-expand" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;"><div style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 100000px; height: 100000px;"></div></div><div class="resize-sensor-shrink" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;"><div style="position: absolute; left: 0; top: 0; transition: 0s; width: 200%; height: 200%"></div></div></div></div></div>
    <div class="main-content-body">
        
        <h2 class="sapo">TTO - Trong lúc thị trường chứng khoán ''đỏ lửa'', hàng loạt cổ phiếu đầu cơ bị bán ra mạnh, nhiều nhà đầu tư không khỏi lo lắng khi bị giao dịch trong "bịt mắt", tái ''nghẽn lệnh'' mua bán cổ phiếu trên sàn HoSE.</h2>
        
                <div class="relate-container">
                    <ul>
            
                <li>
                    <a data-zone="0" data-type="1" data-newstype="30" data-id="20220104131316961" title="Bộ trưởng Bộ Tài chính yêu cầu bịt các lỗ hổng để thị trường chứng khoán phát triển minh bạch" data-objecttype="1" data-title-encode="QiVFMSVCQiU5OSUyMHRyJUM2JUIwJUUxJUJCJTlGbmclMjBCJUUxJUJCJTk5JTIwVCVDMyVBMGklMjBjaCVDMyVBRG5oJTIweSVDMyVBQXUlMjBjJUUxJUJBJUE3dSUyMGIlRTElQkIlOEJ0JTIwYyVDMyVBMWMlMjBsJUUxJUJCJTk3JTIwaCVFMSVCQiU5NW5nJTIwJUM0JTkxJUUxJUJCJTgzJTIwdGglRTElQkIlOEIlMjB0ciVDNiVCMCVFMSVCQiU5RG5nJTIwY2glRTElQkIlQTluZyUyMGtobyVDMyVBMW4lMjBwaCVDMyVBMXQlMjB0cmklRTElQkIlODNuJTIwbWluaCUyMGIlRTElQkElQTFjaA==" href="/bo-truong-bo-tai-chinh-chi-dao-bit-cac-lo-hong-de-thi-truong-chung-khoan-phat-trien-minh-bach-20220104131316961.htm">Bộ trưởng Bộ Tài chính yêu cầu bịt các lỗ hổng để thị trường chứng khoán phát triển minh bạch</a>
                </li>
            
                <li>
                    <a data-zone="0" data-type="1" data-newstype="30" data-id="20220104101936673" title="Chứng khoán vượt đỉnh 1.500 điểm trong phiên đầu năm, kỳ vọng gói kích thích kinh tế" data-objecttype="1" data-title-encode="Q2glRTElQkIlQTluZyUyMGtobyVDMyVBMW4lMjB2JUM2JUIwJUUxJUJCJUEzdCUyMCVDNCU5MSVFMSVCQiU4OW5oJTIwMS41MDAlMjAlQzQlOTFpJUUxJUJCJTgzbSUyMHRyb25nJTIwcGhpJUMzJUFBbiUyMCVDNCU5MSVFMSVCQSVBN3UlMjBuJUM0JTgzbSUyQyUyMGslRTElQkIlQjMlMjB2JUUxJUJCJThEbmclMjBnJUMzJUIzaSUyMGslQzMlQURjaCUyMHRoJUMzJUFEY2glMjBraW5oJTIwdCVFMSVCQSVCRg==" href="/chung-khoan-vuot-dinh-1-500-diem-trong-phien-dau-nam-ky-vong-goi-kich-thich-kinh-te-20220104101936673.htm">Chứng khoán vượt đỉnh 1.500 điểm trong phiên đầu năm, kỳ vọng gói kích thích kinh tế</a>
                </li>
            
                <li>
                    <a data-zone="0" data-type="1" data-newstype="30" data-id="20220102121801042" title="Chứng khoán Việt vào top có mức sinh lời cao bậc nhất thế giới, dự báo lập đỉnh mới năm 2022" data-objecttype="1" data-title-encode="Q2glRTElQkIlQTluZyUyMGtobyVDMyVBMW4lMjBWaSVFMSVCQiU4N3QlMjB2JUMzJUEwbyUyMHRvcCUyMGMlQzMlQjMlMjBtJUUxJUJCJUE5YyUyMHNpbmglMjBsJUUxJUJCJTlEaSUyMGNhbyUyMGIlRTElQkElQURjJTIwbmglRTElQkElQTV0JTIwdGglRTElQkElQkYlMjBnaSVFMSVCQiU5QmklMkMlMjBkJUUxJUJCJUIxJTIwYiVDMyVBMW8lMjBsJUUxJUJBJUFEcCUyMCVDNCU5MSVFMSVCQiU4OW5oJTIwbSVFMSVCQiU5QmklMjBuJUM0JTgzbSUyMDIwMjI=" href="/chung-khoan-viet-vao-top-co-muc-sinh-loi-cao-bac-nhat-the-gioi-du-bao-lap-dinh-moi-nam-2022-20220102121801042.htm">Chứng khoán Việt vào top có mức sinh lời cao bậc nhất thế giới, dự báo lập đỉnh mới năm 2022</a>
                </li>
            </ul></div>
        <div class="content fck" id="main-detail-body">
            <div class="VCSortableInPreviewMode" type="Photo" style=""><div><a href="https://cdn.tuoitre.vn/2022/1/10/logo-5a10e16e-3a99-4fe8-93c8-8d24b7e30ef2-1369-0000009eb8a78afb-16418043647731792978145.jpg" data-fancybox-group="img-lightbox" title="Phiên đầu tuần 10-1 chứng kiến sàn HoSE tái &quot;nghẽn lệnh&quot;, đồng thời nhiều cổ phiếu đầu cơ bị rớt giá mạnh - Ảnh: BÔNG MAI" target="_blank" class="detail-img-lightbox"><img src="https://cdn.tuoitre.vn/thumb_w/586/2022/1/10/logo-5a10e16e-3a99-4fe8-93c8-8d24b7e30ef2-1369-0000009eb8a78afb-16418043647731792978145.jpg" id="img_1627" w="1776" h="1184" alt="Cổ phiếu đầu cơ giảm sốc, tái nghẽn lệnh giao dịch - Ảnh 1." title="Cổ phiếu đầu cơ giảm sốc, tái nghẽn lệnh giao dịch - Ảnh 1." rel="lightbox" type="photo" style="max-width:100%;" data-original="https://cdn.tuoitre.vn/2022/1/10/logo-5a10e16e-3a99-4fe8-93c8-8d24b7e30ef2-1369-0000009eb8a78afb-16418043647731792978145.jpg" width="" height="" class="lightbox-content"></a></div><div class="PhotoCMS_Caption ck_legend caption"><p data-placeholder="[nhập chú thích]" class="">Phiên đầu tuần 10-1 chứng kiến sàn HoSE tái "nghẽn lệnh", đồng thời nhiều cổ phiếu đầu cơ bị rớt giá mạnh - Ảnh: BÔNG MAI</p></div></div><p class=""><b>L<span style="color: rgb(60, 60, 60);">ại&nbsp;</span></b><b style="">nghẽn lệnh</b></p><p class=""><span style="">Ở phiên giao dịch chiều 10-1,</span><span style=""> giữa lúc thị trường chứng khoán đảo chiều lao dốc mạnh, nhiều nhà đầu tư phản ánh bị "bịt mắt", gặp khó khăn trong quá trình mua bán các cổ phiếu đang niêm yết trên HoSE (</span><span style="">Sở Giao dịch chứng khoán TP.HCM).</span><br></p><p class="">"Bảng giá ở các công ty chứng khoán đang bị đơ trong khi lệnh đặt của nhà đầu tư vẫn đang khớp. Mọi người chú ý trong giao dịch", nhân viên môi giới của một công ty chứng khoán lớn gửi khuyến nghị đến khách hàng.<span style=""><br></span></p><p class="">Một nhân viên tư vấn ở công ty chứng khoán khác cũng gửi cảnh báo: "Hiện tại lỗi từ HoSE mất kết nối với các công ty chứng khoán. Anh chị chú ý tỉ trọng tài khoản tại thời điểm này, tránh bịt mắt đi mua hàng quá rủi ro nhé".</p><p class="">Chứng kiến hơn 1,38 tỉ cổ phiếu/phiên được khớp lệnh trên HoSE, ông Huỳnh Minh Tuấn - giám đốc môi giới hội sở Công ty chứng khoán Mirae Asset - cảm thán: "Kỷ lục của kỷ lục".<br></p><p class=""><span style="">Trong bối cảnh thị trường chứng khoán thu hút dòng vốn đầu tư, khối lượng cổ phiếu giao dịch và thanh khoản đều tăng cao, sự việc sàn HoSE có khả năng tái nghẽn lệnh được nhiều chuyên gia dự báo trước.</span></p><p class=""><span style="">Tại lễ đánh cồng khai trương phiên giao dịch đầu năm mới (4-1), Bộ trưởng Bộ Tài chính Hồ Đức Phớc cũng cho biết "chiến dịch" 100 ngày đã kịp thời thành công xử lý nghẽn lệnh trên sàn HoSE, nâng giới hạn xử lý lên 3 triệu lệnh/ngày.&nbsp;</span></p><p class=""><span style="">Tuy nhiên, đến nay "room" đã đạt khoảng 2,5 triệu lệnh/phiên, nếu không nhanh chóng cải tiến thì sẽ tiếp tục nghẽn mạch trong tương lai gần.</span></p><p>"Chúng ta cần nhanh chóng triển khai gói thầu để mở rộng và luôn luôn đón đầu, không để hệ thống giao dịch bị nghẽn mạch, đảm bảo điều kiện tốt nhất cho thị trường chứng khoán", bộ trưởng nhấn mạnh.</p><p>Bộ trưởng cũng yêu cầu Sở Giao dịch chứng khoán Việt Nam (VNX) chỉ đạo HoSE, bàn với chủ tịch FPT để nhanh chóng mở rộng và đón đầu chống nghẽn mạch, đảm bảo mọi điều kiện thuận lợi nhất để thị trường chứng khoán thông suốt, phát triển.</p><div id="zone-jnvk0c1v"><div id="share-jnvk0cro"></div> </div><p><b>Dòng tiền rút khỏi nhóm cổ phiếu đầu cơ</b></p><p class="">Trong phiên giao dịch đầu tuần, hàng loạt cổ phiếu như GAS (PetroVietnam Gas), BCM (Đầu tư và phát triển công nghiệp), NVL (Novaland), GVR (Công nghiệp cao su Việt Nam), POW (Điện lực dầu khí Việt Nam), DIG (Đầu tư phát triển xây dựng)... bị rớt giá mạnh, gây áp lực lên VN-Index.</p><p class="">Sau hàng loạt phiên kéo tăng và tăng trần, hôm nay cổ phiếu của CEO (Tập đoàn C.E.O) bị rơi xuống giá sàn. Trước đó cổ phiếu này bị SBS cảnh báo rơi vào vùng "nguy hiểm" vì <a class="link-inline-content" data-cke-saved-href="https://tuoitre.vn/rui-ro-gia-co-phieu-bi-thoi-phong-qua-muc-boi-dong-tien-dau-co-20220108154614697.htm" href="https://tuoitre.vn/rui-ro-gia-co-phieu-bi-thoi-phong-qua-muc-boi-dong-tien-dau-co-20220108154614697.htm" target="_blank" title="bị thổi phồng quá mức bởi dòng tiền đầu cơ">bị thổi phồng quá mức bởi dòng tiền đầu cơ</a>. </p><p class=""><span style="">Nhiều cổ phiếu khác như ROS (Xây dựng FLC Faros), FLC (</span><span style="">Tập đoàn FLC), SDJ (</span><span style="">Sông Đà 25)... cũng bị giảm mạnh, sau khi "kéo" giá trong thời gian dài.</span></p><p class=""><span style="">Trong lúc thị trường "đỏ lửa", cổ phiếu HVN (Vietnam Airlines), HAG (</span><span style="">Hoàng Anh Gia Lai), VRE (Vincom Retail), Vietinbank (CTG), VIC (Vingroup)... lội ngược dòng và chống đỡ thị trường.</span></p><p class=""><span style="">Chốt phiên giao dịch, chỉ số VN-Index giảm 24,177 điểm (</span><span style="">-1,62%) xuống&nbsp;</span><span style="">1.503,71 điểm.</span><span style="">&nbsp;Rổ VN30 cũng bị giảm 17,54 điểm (-1,14%) xuống </span><span style="">1.514,70 điểm.</span></p><p class=""><span style="">Về sàn HNX bị rớt 10,95 điểm (-2,22%) xuống </span><span style="">482,89 điểm. Chỉ số sàn UPCoM bị giảm 1,3 điểm (-1,12%) xuống mốc 114,3 điểm.</span></p><p class=""><span style="">Quan sát diễn biến giao dịch, ông Huỳnh Minh Tuấn nhận định: "</span><span style="">Thị trường hiện tại không có tin gì xấu về vĩ mô, đơn giản là một phiên xoay chuyển của dòng vốn đầu cơ đã cảnh báo nhiều".</span><br></p><p class="">Đóng cửa phiên, tổng giá trị giao dịch trên toàn thị trường, bao gồm ba sàn chính HoSE, HNX và UPCoM đạt hơn 50.117 tỉ đồng, tương đương 2,2 tỉ USD. Riêng n<span style="">hà đầu tư ngoại bán ròng hơn 410 tỉ đồng.</span></p><div type="RelatedOneNews" class="VCSortableInPreviewMode">     <a href="https://tuoitre.vn/bo-truong-ho-duc-phoc-thi-truong-chung-khoan-rat-tot-khong-nen-tang-thue-giao-dich-20220107183653226.htm" style="padding: 0px;" data-cke-saved-href="https://tuoitre.vn/bo-truong-ho-duc-phoc-thi-truong-chung-khoan-rat-tot-khong-nen-tang-thue-giao-dich-20220107183653226.htm">         <img style="float: left; width: 150px; height: 120px; margin-right: 10px;" src="https://cdn.tuoitre.vn/zoom/188_117/2022/1/7/bo-truong-bo-tai-chinh-ho-duc-phoc-7-162721033769882414457-1641555555954707644038-crop-164155557662794262482.png" alt="Bộ trưởng Hồ Đức Phớc: Thị trường chứng khoán rất tốt, không nên tăng thuế giao dịch" data-cke-saved-src="https://cdn.tuoitre.vn/zoom/150_120/2022/1/7/bo-truong-bo-tai-chinh-ho-duc-phoc-7-162721033769882414457-1641555555954707644038-crop-164155557662794262482.png">     </a><a href="https://tuoitre.vn/bo-truong-ho-duc-phoc-thi-truong-chung-khoan-rat-tot-khong-nen-tang-thue-giao-dich-20220107183653226.htm" style="text-align: left;" class="OneNewsTitle" data-cke-saved-href="https://tuoitre.vn/bo-truong-ho-duc-phoc-thi-truong-chung-khoan-rat-tot-khong-nen-tang-thue-giao-dich-20220107183653226.htm">Bộ trưởng Hồ Đức Phớc: Thị trường chứng khoán rất tốt, không nên tăng thuế giao dịch</a>     <p class="VCObjectBoxRelatedNewsItemSapo">TTO - Bộ trưởng Bộ Tài chính Hồ Đức Phớc nêu quan điểm trên khi giải trình trước Quốc hội trong phiên thảo luận về gói hỗ trợ chính sách tài khóa, tiền tệ cho chương trình phục hồi kinh tế xã hội chiều 7-1.</p> </div>
        </div>
        <div class="author">
            <i class="icon-pencil"></i>BÔNG MAI
        </div>
    </div>
<div class="resize-sensor" style="position: absolute; inset: 0px; overflow: hidden; z-index: -1; visibility: hidden;"><div class="resize-sensor-expand" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;"><div style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 100000px; height: 100000px;"></div></div><div class="resize-sensor-shrink" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;"><div style="position: absolute; left: 0; top: 0; transition: 0s; width: 200%; height: 200%"></div></div></div></div>



                </div>
                
                <div class="clearfix"></div>
                
                <div class="tagandnetwork" id="tagandnetwork">
                    
<style>
    .content .content-detail .network.networkbottom>a.btn-zalo-text,.k14-sp-wrapper .sp-body-content .network.networkbottom>a.btn-zalo-text{background-color:#0060ff;width:69px;box-sizing:border-box;cursor:pointer}.content .content-detail .network.networkbottom>a.btn-zalo-text:after,.k14-sp-wrapper .sp-body-content .network.networkbottom>a.btn-zalo-text:after{background-position:0 0;width:14px;height:16px;top:8px;background-image:url(https://static.mediacdn.vn/tuoitre/web_images/Zalo-pc-share.png);background-size:initial}
</style>
<div class="network fl networkbottom">
    <a href="javascript:;" rel="nofollow" class="icon-like btn-qt" data-newsid="20220110144226566">Quan tâm
    </a>
    <a onclick="fbClient.shareClick(''https://tuoitre.vn/news-20220110144226566.htm'')" href="javascript:;" rel="nofollow" class="icon-facebook btn-facebook">Facebook
    </a>
    <a class="btn-zalo-text zalo-share-button" data-href="https://tuoitre.vn/news-20220110144226566.htm" data-oaid="1151501595453344035" data-layout="2" data-color="blue" data-customize="true">
        Zalo
    <iframe frameborder="0" allowfullscreen="" scrolling="no" width="0px" height="0px" src="https://sp.zalo.me/plugins/share?dev=null&amp;color=blue&amp;oaid=1151501595453344035&amp;href=https%3A%2F%2Ftuoitre.vn%2Fnews-20220110144226566.htm&amp;layout=2&amp;customize=true&amp;callback=null&amp;id=0cbe62e3-f486-4da3-811b-2d5b2a841cda&amp;domain=tuoitre.vn&amp;android=false&amp;ios=false" style="position: absolute;"></iframe></a>
</div>
<script>
    $(''.content .content-detail .network.networkbottom .btn-qt'').click(function () {
        $(this).css("background-color", "#6e6e6e");
    });
</script>

                    <div class="clearfix"></div>
                    
<div class="tags-container">    
    <ul class="tags-wrapper">
        <li class="tags-item"><a href="/co-phieu.html" title="cổ phiếu">Cổ phiếu</a></li><li class="tags-item"><a href="/chung-khoan.html" title="chứng khoán">Chứng khoán</a></li><li class="tags-item"><a href="/giao-dich.html" title="giao dịch">Giao dịch</a></li>
    </ul>
</div>
                    <div class="clearfix"></div>
                    
                    
                    <div class="tagandtopicandbanner">
                        
                        
                        <div class="clearfix"></div>
                        <span class="line mgt16"></span>
                        <div class="clearfix"></div>
                        

<section class="comment-wrapper clearfix kcblist-inited" data-objectid="20220110144226566" data-sort="1" data-objecttype="1" data-pagesize="10" data-height="0" data-top="0" data-objecttitle="QyVFMSVCQiU5NSUyMHBoaSVFMSVCQSVCRnUlMjAlQzQlOTElRTElQkElQTd1JTIwYyVDNiVBMSUyMGdpJUUxJUJBJUEzbSUyMHMlRTElQkIlOTFjJTJDJTIwdCVDMyVBMWklMjAlMjduZ2glRTElQkElQkRuJTIwbCVFMSVCQiU4N25oJTI3JTIwZ2lhbyUyMGQlRTElQkIlOEJjaA==" data-objecturl="https://tuoitre.vn/news-20220110144226566.htm" data-zone="11">
    
    <div data-view="formcomment" class="form-comment clearfix kcbform-inited">
        <textarea class="input-type-text comment_text_readonly" placeholder="Viết bình luận của bạn" data-input="content"></textarea>
        <a href="javascript:void(0)" title="Gửi bình luận" class="send-comment" data-act="send">Gửi bình luận</a>
    </div>
    <div class="comment_list">
        <span class="box-head">Bình luận (0)</span>
        <div class="lst-comment" id="listComment">
            <ul data-view="listcm"></ul>
        </div>
        <p class="text-no-comment" data-view="nocomment" style="">
            Hiện chưa có bình luận nào, hãy là người đầu tiên bình luận
        </p>
        <a class="viewmore-comment" href="javascript:void(0)" id="viewmorecm" data-act="viewmore" title="Xem thêm bình luận" style="display: none;">Xem thêm bình luận</a>
    </div>
</section>

                        
                        <div class="bannerarticledetail">
                            


<div id="zone-jmge2zqg"><div id="share-jtqmaxc0"><div id="placement-jtr3jb6v" revenue="cpm"><div id="banner-jmge2zqg-jtr3jbtf" style="min-height: 0px; min-width: 0px;"><div id="slot-1-jmge2zqg-jtr3jbtf"><div bg-id="2955" bd-size="2" bg-domain="1036" id="div-gpt-ad-1563796022293-0-w">
    <div id="div-gpt-ad-1563796022293-0">
    
<script type="text/javascript" src="//platform.bidgear.com/hb/i4.js"></script>

    
<script>
        bgI("div-gpt-ad-1563796022293-0", 1, 300, 250);
    </script>

    
</div></div></div></div></div><div id="placement-jo2djbje" revenue="cpm"><div id="banner-jmge2zqg-jo2djc8f" style="min-height: 0px; min-width: 0px;"><div id="slot-1-jmge2zqg-jo2djc8f"><div bg-id="2473" bd-size="2" bg-domain="1036" id="div-gpt-ad-1563795983190-0-w">
    <div id="div-gpt-ad-1563795983190-0">
    
<script type="text/javascript" src="//platform.bidgear.com/hb/i4.js"></script>

    
<script>
        bgI("div-gpt-ad-1563795983190-0", 1, 300, 250);
    </script>

    
</div></div></div></div></div></div> </div>
<script>
          arfAsync.push("jmge2zqg");
</script>
                        </div>
                    </div>
                    
                </div>



                
                <input type="hidden" id="hdNewsId" value="20220110144226566">

            </section>
            
                <section class="slidebar fr">
                    
                    <div class="area1">
                        <div class="bannerright1" style="margin-top: -7px;">
                            


<div id="zone-jmgdxnkl"><div id="share-jmgdxogy"><div id="placement-kuct7b1o" revenue="cpm"><div id="banner-jmgdxnkl-kuct7bbo" style="min-height: 0px; min-width: 0px;"><div id="slot-1-jmgdxnkl-kuct7bbo"><iframe style="display: block;" width="300" height="600" id="iframe-jmgdxnkl-kuct7bbo" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe></div></div></div></div> </div>
<script>
    if (is_iPadScreen != null && widthScreen < 1024) { } else
          arfAsync.push("jmgdxnkl");
</script>
                            
                        </div>
                        
                        <div class="area1_2">
                            <div class="box_xem_nhieu_detail_column23">
    
            <div class="box-worldcup-2018 typeother">
                <p class="title-box" title="Xem nhiều">Xem nhiều</p>
                <ul>
        
            <li>
                <a href="/xu-huong-sam-tet-thiet-thuc-tiet-kiem-20220109082917388.htm" title="Xu hướng sắm Tết thiết thực, tiết kiệm" class="img120x75 pos-rlt" data-icon-type-done="0">
                    <img class="img120x75" src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/9/1-1641691442031937576253-crop-16416917048281883070580.jpg" data-src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/9/1-1641691442031937576253-crop-16416917048281883070580.jpg">
                    <span class="number">1</span>
                </a>
                <div class="title-box-wc-2018"><a href="/xu-huong-sam-tet-thiet-thuc-tiet-kiem-20220109082917388.htm" title="Xu hướng sắm Tết thiết thực, tiết kiệm" data-id="20220109082917388" data-comment="20220109082917388">Xu hướng sắm Tết thiết thực, tiết kiệm</a></div>
                <span class="timeago" title="1/9/2022 9:37:20 AM">1 ngày trước</span>
            </li>
        
            <li>
                <a href="/goi-ho-tro-340-000-ti-dong-can-cho-phep-tp-hcm-bo-sung-ngan-sach-dia-phuong-vao-goi-20220110004343732.htm" title="Gói hỗ trợ 340.000 tỉ đồng: Cần cho phép TP.HCM bổ sung ngân sách địa phương vào gói" class="img120x75 pos-rlt" data-icon-type-done="0">
                    <img class="img120x75" src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/sg-16417495544991012979405-crop-1641749752911931528623.jpg" data-src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/sg-16417495544991012979405-crop-1641749752911931528623.jpg">
                    <span class="number">2</span>
                </a>
                <div class="title-box-wc-2018" style="display: flex; justify-content: space-between;"><a href="/goi-ho-tro-340-000-ti-dong-can-cho-phep-tp-hcm-bo-sung-ngan-sach-dia-phuong-vao-goi-20220110004343732.htm" title="Gói hỗ trợ 340.000 tỉ đồng: Cần cho phép TP.HCM bổ sung ngân sách địa phương vào gói" data-id="20220110004343732" data-comment="20220110004343732" data-comment-done="20220110004343732" style="width: 132px;">Gói hỗ trợ 340.000 tỉ đồng: Cần cho phép TP.HCM bổ sung ngân sách địa phương vào gói</a><div class="ico-data-type type-data-comment"><span class="stt">1</span><i class="icon icon-comments"></i> </div></div>
                <span class="timeago" title="1/10/2022 8:59:57 AM">8 giờ trước</span>
            </li>
        
            <li>
                <a href="/vu-horea-phan-phao-y-kien-dai-bieu-quoc-hoi-phai-su-dung-hieu-qua-dat-dai-20220108185611438.htm" title="Vụ HoREA ''phản pháo'' ý kiến đại biểu Quốc hội: Phải sử dụng hiệu quả đất đai" class="img120x75 pos-rlt" data-icon-type-done="0">
                    <img class="img120x75" src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/8/cong-chung-16416427224711299737849-crop-16416430045751160563729.jpg" data-src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/8/cong-chung-16416427224711299737849-crop-16416430045751160563729.jpg">
                    <span class="number">3</span>
                </a>
                <div class="title-box-wc-2018"><a href="/vu-horea-phan-phao-y-kien-dai-bieu-quoc-hoi-phai-su-dung-hieu-qua-dat-dai-20220108185611438.htm" title="Vụ HoREA ''phản pháo'' ý kiến đại biểu Quốc hội: Phải sử dụng hiệu quả đất đai" data-id="20220108185611438" data-comment="20220108185611438">Vụ HoREA ''phản pháo'' ý kiến đại biểu Quốc hội: Phải sử dụng hiệu quả đất đai</a></div>
                <span class="timeago" title="1/9/2022 11:05:08 AM">1 ngày trước</span>
            </li>
        
            <li>
                <a href="/nho-ky-sinh-trung-mi-an-lien-han-quoc-dem-ve-hon-600-trieu-do-20220110121339263.htm" title="Nhờ Ký sinh trùng, mì ăn liền Hàn Quốc đem về hơn 600 triệu đô" class="img120x75 pos-rlt" data-icon-type-done="0">
                    <img class="img120x75" src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/usr1627265359402-1641791416880775467619-crop-16417915625511924773472.jpeg" data-src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/usr1627265359402-1641791416880775467619-crop-16417915625511924773472.jpeg">
                    <span class="number">4</span>
                </a>
                <div class="title-box-wc-2018"><a href="/nho-ky-sinh-trung-mi-an-lien-han-quoc-dem-ve-hon-600-trieu-do-20220110121339263.htm" title="Nhờ Ký sinh trùng, mì ăn liền Hàn Quốc đem về hơn 600 triệu đô" data-id="20220110121339263" data-comment="20220110121339263">Nhờ Ký sinh trùng, mì ăn liền Hàn Quốc đem về hơn 600 triệu đô</a></div>
                <span class="timeago" title="1/10/2022 1:04:31 PM">4 giờ trước</span>
            </li>
        
            <li>
                <a href="/nhin-vu-thu-thiem-dai-bieu-lo-that-thoat-dia-to-khi-chuyen-doi-su-dung-dat-khong-dau-gia-20220110104406473.htm" title="Nhìn vụ Thủ Thiêm, đại biểu lo thất thoát địa tô khi chuyển đổi sử dụng đất không đấu giá" class="img120x75 pos-rlt" data-icon-type-done="0">
                    <img class="img120x75" src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/ngo-trung-thanh-1641785928870968697119-crop-1641785934000644658690.jpg" data-src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/ngo-trung-thanh-1641785928870968697119-crop-1641785934000644658690.jpg">
                    <span class="number">5</span>
                </a>
                <div class="title-box-wc-2018"><a href="/nhin-vu-thu-thiem-dai-bieu-lo-that-thoat-dia-to-khi-chuyen-doi-su-dung-dat-khong-dau-gia-20220110104406473.htm" title="Nhìn vụ Thủ Thiêm, đại biểu lo thất thoát địa tô khi chuyển đổi sử dụng đất không đấu giá" data-id="20220110104406473" data-comment="20220110104406473">Nhìn vụ Thủ Thiêm, đại biểu lo thất thoát địa tô khi chuyển đổi sử dụng đất không đấu giá</a></div>
                <span class="timeago" title="1/10/2022 11:02:01 AM">6 giờ trước</span>
            </li>
        
            </ul>
        <div class="clearfix"></div>
            </div>
    
        
</div>
                        </div>
                    </div>
                    <div class="area2">
                        <div class="area2_1">
                            
                                <div class="bannerright2">
                                    


<script type="text/javascript">
(function() {
    if (decodeURIComponent(window._ADM_Channel).match(/\/the-thao\//g) && !document.getElementById("coordinate-fpt")) {
        var zone = document.createElement("zone");
        var div = document.createElement("div");
        div.id = "coordinate-fpt";
        zone.id = "kr0g8540";
        var pos = document.querySelector("#main-detail > section.slidebar.fr > div.area2 > div.area2_1");
        if(!pos) pos = document.querySelector("#content > div > div.list-middle > div.list-middle-block > div.w490.fr.list-middle-content > div.clearfix.mgt20 > div.fr.mgt20").children[0];
	pos.parentNode.insertBefore(div, pos);
        div.appendChild(zone);
        arfAsync.push("kr0g8540");
    }
})();

</script>

<div id="zone-jmgdsrp8"><div id="share-jmgdssk1"><div id="placement-jo2d4bxw" revenue="cpm"><div id="banner-jmgdsrp8-jo2d4cjc" style="min-height: 0px; min-width: 0px;"><div id="slot-1-jmgdsrp8-jo2d4cjc"><div bg-id="1465" bd-size="2" bg-domain="1036" id="div-gpt-ad-1563795674917-0-w">
    <div id="div-gpt-ad-1563795674917-0">
    
<script type="text/javascript" src="//platform.bidgear.com/hb/i4.js"></script>

    
<script>
        bgI("div-gpt-ad-1563795674917-0", 1, 300, 250);
    </script>

    
</div></div></div></div></div></div> </div>

<div id="widget-raovat-coordinate" style="margin-top:20px;"><div id="raovat-coordinate-right1"></div><div id="raovat-coordinate-right1"></div></div>
<div id="widget-job-coordinate"></div>


<script type="text/javascript">
    (function() {
        var isDetailPage = decodeURIComponent(window._ADM_Channel).match(/\/detail\//) ? 1 : 0;
        if (isDetailPage) {
            var contenBody = document.querySelector("#main-detail > section.detail-w.fl");
            if (contenBody && contenBody.clientHeight > 1500) {
                // Rao vat
								var widgetRaovat = document.getElementById("widget-raovat-coordinate");
								var divRaoVat = document.createElement("div");
								divRaoVat.id = "raovat-coordinate-right" + Math.floor(Math.random() * 2 + 1);
								widgetRaovat.appendChild(divRaoVat);
								TTOAds.Utils.loadScript(''https://raovat.tuoitre.vn/js/rvtto/rvtto-bundle.js'');
                //Job
                //TTOAds.Utils.loadScript(''https://static-job.tuoitre.vn/static/jobs/min/widget-job-jmgdsrp8.js'');
            }
        }
    })();
</script>

<script>
    if (is_iPadScreen != null && widthScreen < 1024) { } else
        arfAsync.push("jmgdsrp8");
</script>
                                </div>
                            
                        </div>

                        <div class="area2_2">
                            <div id="advZoneSticky10Top" style="clear: both;"></div>
                            <div id="advZoneSticky10" style="clear: both; margin-top: 20px; display: block; left: 680px; top: 10px; bottom: auto; position: fixed;">
                                <div class="box_noi_bat_detail_column2">
    
            <div class="boxNewsHot type2">
                <p class="title-box">Cùng mục</p>
                <ul class="list-news">
        
            <li>
                <a data-objecttype="" href="/tiki-ban-khong-loi-nhuan-trai-cay-mien-tay-giup-ba-con-don-tet-am-no-20220110115356047.htm" title="Tiki bán không lợi nhuận trái cây miền Tây, giúp bà con đón Tết ấm no" class="img120x75 pos-rlt" data-icon-type-done="0">
                    <img src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/thumbnail-600x375-tuoitre-1641790301774960968351-crop-16417903093501915615692.png" data-src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/thumbnail-600x375-tuoitre-1641790301774960968351-crop-16417903093501915615692.png" alt="Tiki bán không lợi nhuận trái cây miền Tây, giúp bà con đón Tết ấm no" class="img120x75">
                </a>
                <div class="description">
                    <div class="name-title">
                        <a data-objecttype="" href="/tiki-ban-khong-loi-nhuan-trai-cay-mien-tay-giup-ba-con-don-tet-am-no-20220110115356047.htm" title="Tiki bán không lợi nhuận trái cây miền Tây, giúp bà con đón Tết ấm no" data-id="20220110115356047" data-comment="20220110115356047">Tiki bán không lợi nhuận trái cây miền Tây, giúp bà con đón Tết ấm no</a>
                    </div>
                    <span class="timeago clearfix" title="1/10/2022 3:00:00 PM">2 giờ trước</span>
                </div>
            </li>
        
            <li>
                <a data-objecttype="" href="/kiem-soat-chat-chuyen-muc-dich-su-dung-dat-tranh-truc-loi-chinh-sach-20220110125519151.htm" title="Kiểm soát chặt chuyển mục đích sử dụng đất, tránh trục lợi chính sách" class="img120x75 pos-rlt" data-icon-type-done="0">
                    <img src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/bo-truong-nguyen-chi-dung-16417935775041650483079-crop-16417937812161405204407.jpg" data-src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/bo-truong-nguyen-chi-dung-16417935775041650483079-crop-16417937812161405204407.jpg" alt="Kiểm soát chặt chuyển mục đích sử dụng đất, tránh trục lợi chính sách" class="img120x75">
                </a>
                <div class="description">
                    <div class="name-title" style="display: flex; justify-content: space-between;">
                        <a data-objecttype="" href="/kiem-soat-chat-chuyen-muc-dich-su-dung-dat-tranh-truc-loi-chinh-sach-20220110125519151.htm" title="Kiểm soát chặt chuyển mục đích sử dụng đất, tránh trục lợi chính sách" data-id="20220110125519151" data-comment="20220110125519151" data-comment-done="20220110125519151" style="width: 144px;">Kiểm soát chặt chuyển mục đích sử dụng đất, tránh trục lợi chính sách</a><div class="ico-data-type type-data-comment"><span class="stt">1</span><i class="icon icon-comments"></i> </div>
                    </div>
                    <span class="timeago clearfix" title="1/10/2022 1:48:45 PM">3 giờ trước</span>
                </div>
            </li>
        
            <li>
                <a data-objecttype="" href="/nho-ky-sinh-trung-mi-an-lien-han-quoc-dem-ve-hon-600-trieu-do-20220110121339263.htm" title="Nhờ Ký sinh trùng, mì ăn liền Hàn Quốc đem về hơn 600 triệu đô" class="img120x75 pos-rlt" data-icon-type-done="0">
                    <img src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/usr1627265359402-1641791416880775467619-crop-16417915625511924773472.jpeg" data-src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/usr1627265359402-1641791416880775467619-crop-16417915625511924773472.jpeg" alt="Nhờ Ký sinh trùng, mì ăn liền Hàn Quốc đem về hơn 600 triệu đô" class="img120x75">
                </a>
                <div class="description">
                    <div class="name-title">
                        <a data-objecttype="" href="/nho-ky-sinh-trung-mi-an-lien-han-quoc-dem-ve-hon-600-trieu-do-20220110121339263.htm" title="Nhờ Ký sinh trùng, mì ăn liền Hàn Quốc đem về hơn 600 triệu đô" data-id="20220110121339263" data-comment="20220110121339263">Nhờ Ký sinh trùng, mì ăn liền Hàn Quốc đem về hơn 600 triệu đô</a>
                    </div>
                    <span class="timeago clearfix" title="1/10/2022 1:04:31 PM">4 giờ trước</span>
                </div>
            </li>
        
            <li>
                <a data-objecttype="" href="/chong-dich-nghiem-ngat-hong-kong-mat-vi-tri-trung-tam-hang-khong-ban-ron-nhat-20220110124642338.htm" title="Chống dịch nghiêm ngặt, Hong Kong mất vị trí trung tâm hàng không bận rộn nhất" class="img120x75 pos-rlt" data-icon-type-done="0">
                    <img src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/screen-shot-2022-01-10-at-124102-16417932720401433434990-crop-1641793400876548595649.png" data-src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/screen-shot-2022-01-10-at-124102-16417932720401433434990-crop-1641793400876548595649.png" alt="Chống dịch nghiêm ngặt, Hong Kong mất vị trí trung tâm hàng không bận rộn nhất" class="img120x75">
                </a>
                <div class="description">
                    <div class="name-title">
                        <a data-objecttype="" href="/chong-dich-nghiem-ngat-hong-kong-mat-vi-tri-trung-tam-hang-khong-ban-ron-nhat-20220110124642338.htm" title="Chống dịch nghiêm ngặt, Hong Kong mất vị trí trung tâm hàng không bận rộn nhất" data-id="20220110124642338" data-comment="20220110124642338">Chống dịch nghiêm ngặt, Hong Kong mất vị trí trung tâm hàng không bận rộn nhất</a>
                    </div>
                    <span class="timeago clearfix" title="1/10/2022 1:01:35 PM">4 giờ trước</span>
                </div>
            </li>
        
            <li>
                <a data-objecttype="" href="/cua-ca-mau-ngoai-truyen-ky-3-nuoi-cua-de-chuyen-man-choi-an-thiet-2022011008460573.htm" title="Cua Cà Mau ngoại truyện - Kỳ 3: Nuôi cua đẻ, chuyện mần chơi ăn thiệt" class="img120x75 pos-rlt" data-icon-type-done="0">
                    <img src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/cua-52-1read-only-16417790346992110829805-crop-1641779099766854444184.jpg" data-src="https://cdn.tuoitre.vn/zoom/120_75/2022/1/10/cua-52-1read-only-16417790346992110829805-crop-1641779099766854444184.jpg" alt="Cua Cà Mau ngoại truyện - Kỳ 3: Nuôi cua đẻ, chuyện mần chơi ăn thiệt" class="img120x75">
                </a>
                <div class="description">
                    <div class="name-title">
                        <a data-objecttype="" href="/cua-ca-mau-ngoai-truyen-ky-3-nuoi-cua-de-chuyen-man-choi-an-thiet-2022011008460573.htm" title="Cua Cà Mau ngoại truyện - Kỳ 3: Nuôi cua đẻ, chuyện mần chơi ăn thiệt" data-id="2022011008460573" data-comment="2022011008460573">Cua Cà Mau ngoại truyện - Kỳ 3: Nuôi cua đẻ, chuyện mần chơi ăn thiệt</a>
                    </div>
                    <span class="timeago clearfix" title="1/10/2022 12:44:00 PM">4 giờ trước</span>
                </div>
            </li>
        
            </ul>
    </div>
        
</div>
                            </div>
                        </div>
                    </div>
                    
                </section>
            
            <div class="clearfix"></div>
        </div>', 0, CAST(N'2022-01-10T16:31:29.913' AS DateTime), NULL, N'kinhte')
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[NewsCategory] ON 

INSERT [dbo].[NewsCategory] ([ID], [Name], [MetaTitle], [DisplayOrder], [SeoTitle], [CreatedDate], [ModifiedDate], [Status]) VALUES (1, N'Thế giới', N'the-gioi', 1, NULL, CAST(N'2022-01-05T16:50:28.043' AS DateTime), NULL, 1)
INSERT [dbo].[NewsCategory] ([ID], [Name], [MetaTitle], [DisplayOrder], [SeoTitle], [CreatedDate], [ModifiedDate], [Status]) VALUES (2, N'Trong nước', N'trong-nuoc', 2, NULL, CAST(N'2022-01-05T16:50:28.043' AS DateTime), NULL, 1)
INSERT [dbo].[NewsCategory] ([ID], [Name], [MetaTitle], [DisplayOrder], [SeoTitle], [CreatedDate], [ModifiedDate], [Status]) VALUES (3, N'Xã hôi', N'xa-hoi', 3, NULL, CAST(N'2022-01-05T16:50:28.043' AS DateTime), NULL, 1)
INSERT [dbo].[NewsCategory] ([ID], [Name], [MetaTitle], [DisplayOrder], [SeoTitle], [CreatedDate], [ModifiedDate], [Status]) VALUES (4, N'Văn hóa', N'van-hoa', 4, NULL, CAST(N'2022-01-05T16:50:28.043' AS DateTime), NULL, 1)
INSERT [dbo].[NewsCategory] ([ID], [Name], [MetaTitle], [DisplayOrder], [SeoTitle], [CreatedDate], [ModifiedDate], [Status]) VALUES (5, N'Thể thao', N'the-thao', 5, NULL, CAST(N'2022-01-05T16:50:28.043' AS DateTime), NULL, 1)
INSERT [dbo].[NewsCategory] ([ID], [Name], [MetaTitle], [DisplayOrder], [SeoTitle], [CreatedDate], [ModifiedDate], [Status]) VALUES (6, N'Kinh doanh', N'kinh-doanh', 6, NULL, CAST(N'2022-01-05T16:50:28.043' AS DateTime), NULL, 1)
INSERT [dbo].[NewsCategory] ([ID], [Name], [MetaTitle], [DisplayOrder], [SeoTitle], [CreatedDate], [ModifiedDate], [Status]) VALUES (7, N'Sư kiện', N'su-kien', 7, NULL, CAST(N'2022-01-09T18:05:39.263' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[NewsCategory] OFF
GO
INSERT [dbo].[NewsTag] ([NewsID], [TagID]) VALUES (6, N'an-cuop')
INSERT [dbo].[NewsTag] ([NewsID], [TagID]) VALUES (7, N'covid19')
INSERT [dbo].[NewsTag] ([NewsID], [TagID]) VALUES (8, N'covid19')
INSERT [dbo].[NewsTag] ([NewsID], [TagID]) VALUES (9, N'tinh-that-bong-lai')
INSERT [dbo].[NewsTag] ([NewsID], [TagID]) VALUES (10, N'covid19')
INSERT [dbo].[NewsTag] ([NewsID], [TagID]) VALUES (11, N'thethao')
INSERT [dbo].[NewsTag] ([NewsID], [TagID]) VALUES (12, N'kinhte')
GO
INSERT [dbo].[Tag] ([ID], [Name]) VALUES (N'an-cuop', N'an cuop')
INSERT [dbo].[Tag] ([ID], [Name]) VALUES (N'covid19', N'covid19')
INSERT [dbo].[Tag] ([ID], [Name]) VALUES (N'kinhte', N'kinhte')
INSERT [dbo].[Tag] ([ID], [Name]) VALUES (N'thethao', N'thethao')
INSERT [dbo].[Tag] ([ID], [Name]) VALUES (N'tinh-that-bong-lai', N'tinh that bong lai')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Username], [Password], [Name], [Email], [Phone], [ModifiedDate], [CreatedDate], [Status]) VALUES (1, N'admin', N'202cb962ac59075b964b07152d234b70', N'LoiHoVan', NULL, NULL, CAST(N'2022-01-05T18:25:22.673' AS DateTime), CAST(N'2022-01-04T12:44:42.357' AS DateTime), 1)
INSERT [dbo].[User] ([ID], [Username], [Password], [Name], [Email], [Phone], [ModifiedDate], [CreatedDate], [Status]) VALUES (3, N'conchimnon', N'202cb962ac59075b964b07152d234b70', N'conchimnon1', N'holoidhv@gmail.com', N'12313', CAST(N'2022-01-05T18:25:05.063' AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [Username], [Password], [Name], [Email], [Phone], [ModifiedDate], [CreatedDate], [Status]) VALUES (6, N'kkk', N'202cb962ac59075b964b07152d234b70', N'fafaf', N'fafaf', N'3123131', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[FeedBack] ADD  CONSTRAINT [DF_FeedBack_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[FeedBack] ADD  CONSTRAINT [DF_FeedBack_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Footer] ADD  CONSTRAINT [DF_Footer_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[NewsCategory] ADD  CONSTRAINT [DF_NewsCategory_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[NewsCategory] ADD  CONSTRAINT [DF_NewsCategory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[NewsCategory] ADD  CONSTRAINT [DF_NewsCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
