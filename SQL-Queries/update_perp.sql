/****** Script for SelectTopNRows command from SSMS  ******/
update [terroristDB].[dbo].[MainTable]
set mt.perp_id = pt.perp_id
from [terroristDB].[dbo].[MainTable] as mt, [terroristDB].[dbo].[PerpTable] as pt
