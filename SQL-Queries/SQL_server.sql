/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [crit1_dim]
      ,[label]
  FROM [restoreTer].[dbo].[crit1_dimension]

  

    SELECT @@SERVERNAME
