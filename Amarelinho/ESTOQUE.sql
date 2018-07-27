select nf, pedido, qtde, valor,  * from materias.dbo.pedido
where pedido = 33428


select nf, competencia, datahora,* from materias.dbo.movimento
where codigo = 9416685

select DIFQTDE, DIFVALOR, STATUS, * from materias.dbo.pedido
--update materias.dbo.pedido set difqtde = '0,00', difvalor = '0,00', status = 'R'
where produto = 2007
and codigo = 117067
order by codigo desc