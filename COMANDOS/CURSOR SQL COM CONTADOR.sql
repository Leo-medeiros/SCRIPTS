USE BDTESTE

DECLARE NOME CURSOR
LOCAL
FAST_FORWARD
FOR SELECT PRE_NOME FROM funcionarios 

DECLARE @NOME VARCHAR(20)
DECLARE @CONTADOR INT

OPEN NOME 

SET @CONTADOR = 1
WHILE @CONTADOR <= 3
BEGIN
FETCH NOME INTO @NOME
PRINT @NOME
SET @CONTADOR = @CONTADOR + 1
END
PRINT @NOME



DEALLOCATE NOME