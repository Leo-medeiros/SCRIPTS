-- SELECT SERVE PARA QUANDO O OPERADOR EST� FAZENDO O ATENDIMENTO NA RECEP��O E POR ALGUM MOTIVO O MICRO DESLIGA
--IDENTIFICAR O ID DA SENHA ( VERIFICAR TAMB�M A DATA, CASO HAJA MAIS DE UMA SENHA)
select * from recepcao.dbo.controle_senhas
where     senha=19

----------------------------------------------------------------------------------------------------------
--CASO A SITUA��O DA SENHA SEJA "F", VOLTAR PARA "Q"
-- INFORMAR O N�MERO NO CAMPO "ID_AG"
select * from recepcao.dbo.controle_pac
--update recepcao.dbo.controle_pac set situacao='Q'
where    id_ag=1799
