USE [AssetDB]
GO
/****** Object:  Table [dbo].[LookupRole]    Script Date: 03/24/2017 11:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupRole](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](100) NULL,
	[RoleDescription] [varchar](500) NULL,
	[RowCreatedSYSUserID] [int] NOT NULL,
	[RowCreatedDateTime] [datetime] NULL,
	[RowModifiedSYSUserID] [int] NOT NULL,
	[RowModifiedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[LookupRole] ADD  DEFAULT ('') FOR [RoleName]
GO
ALTER TABLE [dbo].[LookupRole] ADD  DEFAULT ('') FOR [RoleDescription]
GO
ALTER TABLE [dbo].[LookupRole] ADD  DEFAULT (getdate()) FOR [RowCreatedDateTime]
GO
ALTER TABLE [dbo].[LookupRole] ADD  DEFAULT (getdate()) FOR [RowModifiedDateTime]
GO
