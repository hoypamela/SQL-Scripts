USE [AssetDB]
GO
/****** Object:  Table [dbo].[SYSUserProfile]    Script Date: 03/24/2017 11:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYSUserProfile](
	[SYSUserProfileID] [int] IDENTITY(1,1) NOT NULL,
	[SYSUserID] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Location] [varchar](50) NOT NULL,
	[Department] [varchar](50) NOT NULL,
	[RowCreatedSYSUserID] [int] NOT NULL,
	[RowCreatedDateTime] [datetime] NULL,
	[RowModifiedSYSUserID] [int] NOT NULL,
	[RowModifiedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SYSUserProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SYSUserProfile] ADD  DEFAULT (getdate()) FOR [RowCreatedDateTime]
GO
ALTER TABLE [dbo].[SYSUserProfile] ADD  DEFAULT (getdate()) FOR [RowModifiedDateTime]
GO
ALTER TABLE [dbo].[SYSUserProfile]  WITH CHECK ADD FOREIGN KEY([SYSUserID])
REFERENCES [dbo].[SYSUser] ([SYSUserID])
GO
