/* EXAME NAO APARECE NO SYNAPSE - PEGAR O CAMPO FICHA DA SADT E DAR UM SELECT NA TAB SYNAPSE*/


select * from recepcao.dbo.SADT 
where OrigemMovimento  = '6028527'


select * from recepcao.dbo.synapse 
where FICHA = '6028544'