USE [AssetDB]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 03/24/2017 11:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[DomainID] [int] NOT NULL,
	[BrandID] [int] NOT NULL,
	[EquipmentID] [int] NOT NULL,
	[ModuleID] [int] NOT NULL,
	[UnitDescription] [nvarchar](200) NOT NULL,
	[BOMCode] [nvarchar](50) NOT NULL,
	[SerialNo] [nvarchar](100) NOT NULL,
	[AssetNo] [nvarchar](50) NOT NULL,
	[StatusID] [int] NOT NULL,
	[LocationID] [int] NOT NULL,
	[Remarks] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[RecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Brand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Brand]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Domain] FOREIGN KEY([DomainID])
REFERENCES [dbo].[Domain] ([DomainID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Domain]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Equipment] FOREIGN KEY([EquipmentID])
REFERENCES [dbo].[Equipment] ([EquipmentID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Equipment]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([LocationID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Location]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Module] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[Module] ([ModuleID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Module]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_StatusLookup] FOREIGN KEY([StatusID])
REFERENCES [dbo].[StatusLookup] ([StatusID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_StatusLookup]
GO
