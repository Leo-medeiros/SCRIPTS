
/* SELECT PARA VERIFICAR SE A PRESCRICAO ESTA OK - PEGAR O CAMPO CODIGO NA TABELA DE CIMA E JOGAR PARA A DE BAIXO*/

select * from recepcao.dbo
where id_ficha = '6047001'

select * from recepcao.dbo.med_itemprescricao
where codigo = '6533'

select * from 