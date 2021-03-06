USE [AssetDB]
GO
/****** Object:  Table [dbo].[ActivityLog]    Script Date: 03/24/2017 11:49:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLog](
	[ActivityID] [int] IDENTITY(1,1) NOT NULL,
	[RecID] [int] NOT NULL,
	[Action] [nvarchar](50) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[SysUserID] [int] NOT NULL,
 CONSTRAINT [PK_ActivityLog] PRIMARY KEY CLUSTERED 
(
	[ActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ActivityLog]  WITH CHECK ADD  CONSTRAINT [FK_ActivityLog_Inventory] FOREIGN KEY([RecID])
REFERENCES [dbo].[Inventory] ([RecID])
GO
ALTER TABLE [dbo].[ActivityLog] CHECK CONSTRAINT [FK_ActivityLog_Inventory]
GO
ALTER TABLE [dbo].[ActivityLog]  WITH CHECK ADD  CONSTRAINT [FK_ActivityLog_SysUser] FOREIGN KEY([SysUserID])
REFERENCES [dbo].[SYSUser] ([SYSUserID])
GO
ALTER TABLE [dbo].[ActivityLog] CHECK CONSTRAINT [FK_ActivityLog_SysUser]
GO
