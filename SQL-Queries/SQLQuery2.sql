/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [country]
      ,[country_txt]
  FROM [ter_db].[dbo].[Countries]

  delete from [ter_db].[dbo].[Countries] where country = 0