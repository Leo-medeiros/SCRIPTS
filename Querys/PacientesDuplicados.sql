USE RECEPCAO
GO
SELECT NOME, COUNT (CPF) QUANTIDADE FROM PACIENTES
GROUP BY CPF, NOME
HAVING COUNT (CPF) >1
ORDER BY QUANTIDADE DESC

SELECT *  FROM PACIENTES
WHERE NOME = 'LUCIMAR DA SILVA BARBOSA'
AND CODIGO <>31671

SELECT * FROM PEPMOVIMENTOS
WHERE CODPAC IN (31671
,34009
,34024
,34039)

