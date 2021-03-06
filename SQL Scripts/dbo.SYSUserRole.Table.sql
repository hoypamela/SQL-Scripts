USE [AssetDB]
GO
/****** Object:  Table [dbo].[SYSUserRole]    Script Date: 03/24/2017 11:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYSUserRole](
	[SYSUserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[SYSUserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[RowCreatedSYSUserID] [int] NOT NULL,
	[RowCreatedDateTime] [datetime] NULL,
	[RowModifiedSYSUserID] [int] NOT NULL,
	[RowModifiedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SYSUserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SYSUserRole] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[SYSUserRole] ADD  DEFAULT (getdate()) FOR [RowCreatedDateTime]
GO
ALTER TABLE [dbo].[SYSUserRole] ADD  DEFAULT (getdate()) FOR [RowModifiedDateTime]
GO
ALTER TABLE [dbo].[SYSUserRole]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[LookupRole] ([RoleID])
GO
ALTER TABLE [dbo].[SYSUserRole]  WITH CHECK ADD FOREIGN KEY([SYSUserID])
REFERENCES [dbo].[SYSUser] ([SYSUserID])
GO
