SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
USE [AssetDB]
GO
-- =============================================
-- Author:		pammy
-- Create date: 03/03/3017
-- Description:	Add record to Brand table
-- =============================================
Alter PROCEDURE [dbo].[addBrand]
	@brandName   nvarchar(50)        -- brandName
 AS
BEGIN
	SET NOCOUNT ON;
	 
	 INSERT INTO [dbo].[Brand]
           ([BrandName])
     VALUES
           (@brandName)

END
GO
