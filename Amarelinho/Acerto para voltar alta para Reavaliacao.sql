select * from recepcao.dbo.controle_mov
-- update recepcao.dbo.controle_mov set mov='R'
where ficha='6003522'
and mov in ('A','I','O','X','N')


select * from recepcao.dbo.controle_senhas
-- update recepcao.dbo.controle_mov set mov='R'
where senha='2633'




select * from recepcao.dbo.movimentos
where id_senha='2413'



Select * from RECEPCAO.dbo.pacientes
where codigo='346250'


select * from recepcao.dbo.med_itemprescricao


select * from recepcao.dbo.medicos where nome like 'felipe%'