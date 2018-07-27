/* Paciente sumiu do leito, pegar o codpac do paciente na tabela movimentos, rodar na tabela unidades e mudar o leito\
para ocupado*/

select *from recepcao.dbo.movimentos
where ficha = '6048742'

SELECT *FROM RECEPCAO.DBO.UNIDADES
--UPDATE RECEPCAO.DBO.UNIDADES SET CODPAC = '806439' , SITUACAO = 'O'
WHERE CODIGO ='226'