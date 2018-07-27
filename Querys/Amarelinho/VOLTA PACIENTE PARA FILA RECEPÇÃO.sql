-- SELECT SERVE PARA QUANDO O OPERADOR ESTÁ FAZENDO O ATENDIMENTO NA RECEPÇÃO E POR ALGUM MOTIVO O MICRO DESLIGA
--IDENTIFICAR O ID DA SENHA ( VERIFICAR TAMBÉM A DATA, CASO HAJA MAIS DE UMA SENHA)
select * from recepcao.dbo.controle_senhas
where     senha=19

----------------------------------------------------------------------------------------------------------
--CASO A SITUAÇÃO DA SENHA SEJA "F", VOLTAR PARA "Q"
-- INFORMAR O NÚMERO NO CAMPO "ID_AG"
select * from recepcao.dbo.controle_pac
--update recepcao.dbo.controle_pac set situacao='Q'
where    id_ag=1799
