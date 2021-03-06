USE RECEPCAO
GO

SELECT * FROM (
SELECT RTRIM(CID10) [CID_10],
       C.DESCR [DESCRICAO],
       COUNT(C.CID10) [TOTAL DE CID POR ANO],
       DATEPART(YEAR, dataatende) [ANO]
FROM RECEPCAO.DBO.PepMovimentos_CID PC
     INNER JOIN RECEPCAO.DBO.cid C ON PC.id_cid = C.ID
WHERE YEAR(dataatende) IS NOT NULL
GROUP BY CID10,
         C.DESCR,
         DATEPART(YEAR, dataatende)

) QRY_CID




