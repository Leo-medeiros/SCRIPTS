select * from recepcao.dbo.log_integra_tecsec
where data >= '2015-07-06 11:32:12.517'

select * from recepcao.dbo.controle_pac
where id_ag in (27983,27795)

select * from recepcao.dbo.controle_senhas
where senha = 1131


select top 10 * from recepcao.dbo.log_integra_tecsec where url like '%1129%' order by data desc