
--QUANTIDADE DE GESTANTES ATENDIDAS OUTUBRO 2016
USE RECEPCAO;
SELECT COUNT(*) FROM PRONTUARIO_GESTANTE A
INNER JOIN PEPMOVIMENTOS B ON A.ID_=B.CODIGO
WHERE B.DATAFINALIZA BETWEEN '2016-10-01 00:17:10.467'AND'2016-10-31 20:17:10.467'

--QUANTIDADE DE GESTANTES ATENDIDAS NOVEMBRO 2016
USE RECEPCAO;
SELECT COUNT(*) FROM PRONTUARIO_GESTANTE A
INNER JOIN PEPMOVIMENTOS B ON A.ID_=B.CODIGO
WHERE B.DATAFINALIZA BETWEEN '2016-11-01 00:17:10.467'AND'2016-11-30 20:17:10.467'

--QUANTIDADE DE GESTANTES ATENDIDAS DEZEMBRO 2016
USE RECEPCAO;
SELECT COUNT(*) FROM PRONTUARIO_GESTANTE A
INNER JOIN PEPMOVIMENTOS B ON A.ID_=B.CODIGO
WHERE B.DATAFINALIZA BETWEEN '2016-12-01 00:17:10.467'AND'2016-12-31 20:17:10.467'







