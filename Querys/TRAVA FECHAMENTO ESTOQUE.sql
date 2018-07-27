/*FECHAMENTO DO ESTOQUE TRAVADO*/

/* Deletar a competência que ocorreu o erro*/

select * from materias.dbo.competencia
--update materias.dbo.competencia set situacao = 'A'
where comp = '022016'

/*Abrir a competencia anterior*/

select * from materias.dbo.competencia
--update materias.dbo.competencia set situacao = 'A', DataFechada = NULL, USUARIO = NULL
where comp = '022016'


/* Deletar os dados da tabela saldoprod, da competencia aberta */

select * from materias.dbo.SALDOPROD
--delete from materias.dbo.SALDOPROD
where competencia = '022016'
and saldo < 0

/* Deletar os dados da tabela tempmapa, da competencia aberta */

select * from MATERIAS.dbo.TEMPMAPA
--delete from materias.dbo.tempmapa
where comp = '022016'

/* Jogar os dados da competencia que deu problema para a competencia anterior */

select * from MATERIAS.dbo.MOVIMENTO
--update materias.dbo.movimento set competencia = '022016'
where COMPETENCIA = '032016'