/*Procedimentos coletivos - Sa�de Bucal*/
USE recepcao
SELECT * FROM PepMovimentos_Soli_Procedimento A
INNER JOIN PEPMOVIMENTOS B ON A.ID_PEPMOVIMENTOS = B.CODIGO
INNER JOIN PROCEDIMENTOS C ON A.ID_EXAME = C.ID
WHERE B.DATAFINALIZA BETWEEN '2016-08-01 00:45:37.727'AND'2016-08-31 23:45:37.727'
AND C.ID IN (3149,3150,3151)






