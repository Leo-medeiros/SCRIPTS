select a.cbo, b.* 
from recepcao.[dbo].[COMPCBO] a 
inner join recepcao.dbo.procedimentos b on a.codigo collate SQL_Latin1_General_CP850_CI_AI = b.CODPROC collate SQL_Latin1_General_CP850_CI_AI
where a.cbo = '223293' and b.codproc = '0301010099'

insert into recepcao.dbo.compcbo (codigo, cbo) values ('0301010099', '223293')
