select * from recepcao.dbo.controle_senhas
--update recepcao.dbo.controle_senhas set cancelada = '1'
where senha >=27
and senha <=6994
and tipo_atend = 'N'
and data = '20150527'