USE RECEPCAO;
SELECT COUNT (DISTINCT CODPAC) FROM Pepmovimentos A
INNER JOIN Indicadores.vw_PEP_SIAB B ON A.CODPAC = B.IDPEP
WHERE A.Datafinaliza BETWEEN '2017-01-01 00:24:29.133'AND'2017-03-31 11:24:29.133'
AND A.Codpac NOT IN (Select DISTINCT Codpac FROM PepMovimentos WHERE Datafinaliza
<'2017-01-01 00:24:29.133')