/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) 
      [FHA_ANALYTICS].[FHA].[F_MeditechADMPatMain].[SYSSystemID]
      ,[FHA_ANALYTICS].[FHA].[F_MeditechADMPatMain].Urn
      ,[Id]
      ,[AcctNumber]
      ,[Name]
      ,[Status]
      ,[FHA_ANALYTICS].[FHA].[F_MeditechADMPatCanadaRecall].HealthCareNumber as Phn
      ,[UnitNumber]
      ,[MriUrn]
      ,[Birthdate]
      ,[Sex]
      ,[Service]
      ,[Location]
      ,[OutpatientLocation]
      ,[InpatientLocation]
      ,[AdmitDate]
      ,[AdmitTime]
      ,[AdmitDateTime]
      ,[ServiceDate]
      ,[ServiceTime]
      ,[ServiceDateTime]
      ,[DischargeDate]
      ,[DischargeTime]
      ,[DischargeDateTime]
      ,[SuppressEmr]
      ,[OutpatientService]
      ,[OutpatientPriorLocation]
      ,[LoaStatus]
  FROM [FHA_ANALYTICS].[FHA].[F_MeditechADMPatMain]
  INNER JOIN [FHA_ANALYTICS].[FHA].[F_MeditechADMPatCanadaRecall] on [FHA_ANALYTICS].[FHA].[F_MeditechADMPatCanadaRecall].Urn = [FHA_ANALYTICS].[FHA].[F_MeditechADMPatMain].Urn
  Where ServiceDate >20170101