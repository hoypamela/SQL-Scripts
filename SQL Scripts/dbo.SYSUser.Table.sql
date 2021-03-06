USE [AssetDB]
GO
/****** Object:  Table [dbo].[SYSUser]    Script Date: 03/24/2017 11:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYSUser](
	[SYSUserID] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [varchar](50) NOT NULL,
	[Password] [varchar](200) NOT NULL,
	[RowCreatedSYSUserID] [int] NOT NULL,
	[RowCreatedDateTime] [datetime] NULL,
	[RowModifiedSYSUserID] [int] NOT NULL,
	[RowMOdifiedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SYSUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SYSUser] ADD  DEFAULT (getdate()) FOR [RowCreatedDateTime]
GO
ALTER TABLE [dbo].[SYSUser] ADD  DEFAULT (getdate()) FOR [RowMOdifiedDateTime]
GO
