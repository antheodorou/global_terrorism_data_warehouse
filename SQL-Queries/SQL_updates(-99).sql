update [Terrorist_DB].[dbo].[Main_Fact_Table]  set [nhostkid] = 0 where [nhostkid] = -99
update [Terrorist_DB].[dbo].[Main_Fact_Table]  set [nperpcap] = 0 where [nperpcap] = -99
update [Terrorist_DB].[dbo].[Main_Fact_Table]  set [nhours] = 0 where [nhours] = -99
update [Terrorist_DB].[dbo].[Main_Fact_Table]  set [ndays] = 0 where [ndays] = -99
update [Terrorist_DB].[dbo].[Main_Fact_Table] set [nperps] = 0 where [nperps] = -99
update [Terrorist_DB].[dbo].[Main_Fact_Table] set [ransomamt] = 0 where [ransomamt] = -99
update [Terrorist_DB].[dbo].[Main_Fact_Table] set [ransompaid] = 0 where [ransompaid] = -99
update [Terrorist_DB].[dbo].[Main_Fact_Table]  set [nreleased] = 0 where [nreleased] = -99
update [Terrorist_DB].[dbo].[Main_Fact_Table]  set [propvalue] = 0 where [propvalue] = -99

select[eventid] 
from [Terrorist_DB].[dbo].[Main_Fact_Table]
where [ransomamt] < 0