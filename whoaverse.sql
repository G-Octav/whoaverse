USE [whoaverse]
GO
/****** Object:  Table [dbo].[Badges]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Badges](
	[BadgeId] [nvarchar](50) NOT NULL,
	[BadgeGraphics] [nvarchar](50) NOT NULL,
	[BadgeTitle] [nvarchar](50) NOT NULL,
	[BadgeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Badges] PRIMARY KEY CLUSTERED 
(
	[BadgeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banneddomains]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banneddomains](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hostname] [nvarchar](50) NOT NULL,
	[Added_by] [nvarchar](50) NOT NULL,
	[Added_on] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Banneddomains] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Votes] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CommentContent] [nvarchar](max) NOT NULL,
	[Date] [smalldatetime] NOT NULL,
	[LastEditDate] [smalldatetime] NULL,
	[MessageId] [int] NULL,
	[Likes] [bigint] NOT NULL,
	[Dislikes] [bigint] NOT NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Commentvotingtracker]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commentvotingtracker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommentId] [int] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[VoteStatus] [int] NULL,
 CONSTRAINT [PK_Commentvotingtracker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Defaultsubverses]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Defaultsubverses](
	[name] [nvarchar](20) NOT NULL,
	[position] [int] NOT NULL,
 CONSTRAINT [PK_Defaultsubverses] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Messages]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Votes] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MessageContent] [nvarchar](max) NULL,
	[Date] [smalldatetime] NOT NULL,
	[Type] [int] NOT NULL,
	[Linkdescription] [nvarchar](200) NULL,
	[Title] [nvarchar](200) NULL,
	[Rank] [float] NOT NULL,
	[Subverse] [nvarchar](20) NULL,
	[Likes] [bigint] NOT NULL,
	[Dislikes] [bigint] NOT NULL,
	[Thumbnail] [nchar](40) NULL,
	[LastEditDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Promotedsubmissions]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotedsubmissions](
	[promoted_submission_id] [int] NOT NULL,
	[promoted_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Promotedsubmissions] PRIMARY KEY CLUSTERED 
(
	[promoted_submission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Savedsubmissions]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Savedsubmissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[SubmissionId] [int] NOT NULL,
 CONSTRAINT [PK_Savedsubmissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessions](
	[SessionId] [nvarchar](88) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Expires] [datetime] NOT NULL,
	[LockDate] [datetime] NOT NULL,
	[LockCookie] [int] NOT NULL,
	[Locked] [bit] NOT NULL,
	[SessionItem] [image] NULL,
	[Flags] [int] NOT NULL,
	[Timeout] [int] NOT NULL,
 CONSTRAINT [PK_Sessions] PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubverseName] [nvarchar](20) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subscriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubverseAdmins]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubverseAdmins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubverseName] [nvarchar](20) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Power] [int] NOT NULL,
 CONSTRAINT [PK_SubverseAdmins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subverses]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subverses](
	[name] [nvarchar](20) NOT NULL,
	[title] [nvarchar](500) NOT NULL,
	[description] [nvarchar](500) NULL,
	[sidebar] [nvarchar](4000) NULL,
	[submission_text] [nvarchar](500) NULL,
	[language] [nvarchar](10) NULL,
	[type] [nvarchar](10) NOT NULL,
	[label_submit_new_link] [nvarchar](50) NULL,
	[label_sumit_new_selfpost] [nvarchar](50) NULL,
	[spam_filter_links] [nvarchar](10) NULL,
	[spam_filter_selfpost] [nvarchar](10) NULL,
	[spam_filter_comments] [nvarchar](10) NULL,
	[rated_adult] [bit] NULL,
	[allow_default] [bit] NULL,
	[enable_thumbnails] [bit] NULL,
	[exclude_sitewide_bans] [bit] NULL,
	[traffic_stats_public] [bit] NULL,
	[minutes_to_hide_comments] [int] NULL,
	[creation_date] [smalldatetime] NOT NULL,
	[stylesheet] [nvarchar](4000) NULL,
	[subscribers] [int] NULL,
	[private_subverse] [bit] NULL,
 CONSTRAINT [PK_Subverses] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Userbadges]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Userbadges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[BadgeId] [nvarchar](50) NOT NULL,
	[Awarded] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Userbadges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Votingtracker]    Script Date: 2014-06-28 13:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votingtracker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MessageId] [int] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[VoteStatus] [int] NULL,
 CONSTRAINT [PK_Votingtracker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_Likes]  DEFAULT ((1)) FOR [Likes]
GO
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_Dislikes]  DEFAULT ((0)) FOR [Dislikes]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_Rank]  DEFAULT ((0)) FOR [Rank]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_Likes]  DEFAULT ((1)) FOR [Likes]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_Dislikes]  DEFAULT ((0)) FOR [Dislikes]
GO
ALTER TABLE [dbo].[Subverses] ADD  CONSTRAINT [DF_Subverses_rated_adult]  DEFAULT ((0)) FOR [rated_adult]
GO
ALTER TABLE [dbo].[Subverses] ADD  CONSTRAINT [DF_Subverses_allow_default]  DEFAULT ((0)) FOR [allow_default]
GO
ALTER TABLE [dbo].[Subverses] ADD  CONSTRAINT [DF_Subverses_enable_thumbnails]  DEFAULT ((1)) FOR [enable_thumbnails]
GO
ALTER TABLE [dbo].[Subverses] ADD  CONSTRAINT [DF_Subverses_exclude_sitewide_bans]  DEFAULT ((0)) FOR [exclude_sitewide_bans]
GO
ALTER TABLE [dbo].[Subverses] ADD  CONSTRAINT [DF_Subverses_traffic_stats_public]  DEFAULT ((0)) FOR [traffic_stats_public]
GO
ALTER TABLE [dbo].[Subverses] ADD  CONSTRAINT [DF_Subverses_private]  DEFAULT ((0)) FOR [private_subverse]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Messages] FOREIGN KEY([MessageId])
REFERENCES [dbo].[Messages] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Messages]
GO
ALTER TABLE [dbo].[Commentvotingtracker]  WITH NOCHECK ADD  CONSTRAINT [FK_Commentvotingtracker_Comments] FOREIGN KEY([CommentId])
REFERENCES [dbo].[Comments] ([Id])
GO
ALTER TABLE [dbo].[Commentvotingtracker] CHECK CONSTRAINT [FK_Commentvotingtracker_Comments]
GO
ALTER TABLE [dbo].[Defaultsubverses]  WITH CHECK ADD  CONSTRAINT [FK_Defaultsubverses_Subverses] FOREIGN KEY([name])
REFERENCES [dbo].[Subverses] ([name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Defaultsubverses] CHECK CONSTRAINT [FK_Defaultsubverses_Subverses]
GO
ALTER TABLE [dbo].[SubverseAdmins]  WITH CHECK ADD  CONSTRAINT [FK_SubverseAdmins_Subverses] FOREIGN KEY([SubverseName])
REFERENCES [dbo].[Subverses] ([name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubverseAdmins] CHECK CONSTRAINT [FK_SubverseAdmins_Subverses]
GO
ALTER TABLE [dbo].[Userbadges]  WITH CHECK ADD  CONSTRAINT [FK_Userbadges_Badges] FOREIGN KEY([BadgeId])
REFERENCES [dbo].[Badges] ([BadgeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Userbadges] CHECK CONSTRAINT [FK_Userbadges_Badges]
GO
ALTER TABLE [dbo].[Votingtracker]  WITH NOCHECK ADD  CONSTRAINT [FK_Votingtracker_Messages] FOREIGN KEY([MessageId])
REFERENCES [dbo].[Messages] ([Id])
GO
ALTER TABLE [dbo].[Votingtracker] NOCHECK CONSTRAINT [FK_Votingtracker_Messages]
GO
