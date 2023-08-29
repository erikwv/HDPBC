/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [SYSSystemID]
      ,[Mnemonic]
      ,[Active]
      ,[Name]
      ,[AcctNumberPrefix]
      ,[UnitNumberPrefix]
  FROM [FHA_ANALYTICS].[FHA].[D_MeditechMISFacilityMain] 