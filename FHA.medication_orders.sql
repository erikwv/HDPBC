SELECT TOP (1000)
      [FHA_ANALYTICS].[FHA].[F_MeditechPHARxMain].[SYSSystemID]
      ,[Number] as order_id
      ,[Patient] as patient_id
      ,[FHA_ANALYTICS].[FHA].[F_MeditechPHARxInpatientMedications].Med as main_med_id
      ,[FHA_ANALYTICS].[FHA].[F_MeditechPHARxInpatientMedications].Dose
      ,[FHA_ANALYTICS].[FHA].[D_MeditechPHADrugMain5].DrugId
      ,[Sig]
      ,[OrderType]
      ,[Status]
      ,[Schedule]
      ,[Route]
      ,[EnterDate]
      ,[EnterTime]
      ,[DcDate]
      ,[DcTime]
      ,[StartDate]
      ,[StartTime]
      ,[StopDate]
      ,[StopTime]
      ,[Physician]
      ,[SoftStop]
      ,[TotalDoses]
      ,[StopDateOrig]
      ,[NewRx]
      FROM [FHA_ANALYTICS].[FHA].[F_MeditechPHARxMain]
  INNER JOIN [FHA_ANALYTICS].[FHA].[F_MeditechPHARxInpatientMedications] on [FHA_ANALYTICS].[FHA].[F_MeditechPHARxInpatientMedications].[Urn] = [FHA_ANALYTICS].[FHA].[F_MeditechPHARxMain].[Urn]
  INNER JOIN [FHA_ANALYTICS].[FHA].[D_MeditechPHADrugMain] on [FHA_ANALYTICS].[FHA].[D_MeditechPHADrugMain].Mnemonic = [FHA_ANALYTICS].[FHA].[F_MeditechPHARxInpatientMedications].Med
  INNER JOIN [FHA_ANALYTICS].[FHA].[D_MeditechPHADrugMain5] on [FHA_ANALYTICS].[FHA].[D_MeditechPHADrugMain5].Mnemonic = [FHA_ANALYTICS].[FHA].[F_MeditechPHARxInpatientMedications].Med