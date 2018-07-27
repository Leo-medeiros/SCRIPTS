select * from recepcao.dbo.pepmovimentos
where ficha = 126291


select * from recepcao.dbo.pacientes
where codigo in  (34228,34229)

select * from recepcao.dbo.pepmovimentos_soli_exames
where id_pepmovimentos = 59706

select situacao,* from recepcao.dbo.procedimentos
--update recepcao.dbo.procedimentos set situacao = 'A'
where id in (4306,4307,336,4405)

select * from recepcao.dbo.erros_log order by codigo desc