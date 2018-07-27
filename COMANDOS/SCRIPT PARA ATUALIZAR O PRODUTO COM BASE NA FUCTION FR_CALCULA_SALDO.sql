USE MATERIAS

GO

/* SCRIPT PARA ATUALIZAR O PRODUTO COM BASE NA FUCTION FR_CALCULA_SALDO*/

--EXECUTAR PRIMEIRO O BEGIN TRAN
BEGIN TRAN 

UPDATE PRODUTO SET ESTOQUE = ESTOQUE + (SELECT estoque FROM DBO.FR_calcula_saldo (87,5))
-- ALTERAR O CODIGO DO PRODUTO
WHERE CODPROD = 87

UPDATE PRODUTO SET SALDO = SALDO + (SELECT saldo FROM DBO.FR_calcula_saldo (87,5))
-- ALTERAR O CODIGO DO PRODUTO
WHERE CODPROD =87


ROLLBACK 
COMMIT




