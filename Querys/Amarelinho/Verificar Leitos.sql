/*Script para deixar um leito vago*/
select codpac,situacao,tipomov,* from recepcao.dbo.unidades
--update recepcao.dbo.unidades set codpac = NULL , situacao = 'V', tipomov = NULL
where codigo = 288

/*Campos para dar altar*/
/*Realizar update na tabela movimentos*/
--tipoalta = CODIGO DA ALTA
--obsalta DATA NESTE FORMATO = '16/07/2015-12:00'
--obito = S ou N 
--operador alta = operador que realizou a alta
--dtalta = a data da alta

select dtalta,* from recepcao.dbo.movimentos
--update recepcao.dbo.movimentos set dtalta = '2015-07-21 12:02:00'
where ficha = 37413 and codigo = 37334


select * from recepcao.dbo.unidades


select * from acesso.dbo.usuarios
where login like 'antonio.%'