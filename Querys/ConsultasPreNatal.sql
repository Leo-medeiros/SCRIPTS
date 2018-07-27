SELECT DISTINCT* FROM (
select DISTINCT * from (
SELECT DISTINCT 
C.NOME AS NOME_DO_PACIENTE, 
C.NOMEEQUIPE AS NOME_DA_EQUIPE, 
CONVERT (VARCHAR(10), 
DATA_NASCIMENTO,103) AS DATA_NASCIMENTO, 
C.MAE, 

(select top 1 d.CID10 from PEPMOVIMENTOS A inner join PepMovimentos_CID b on A.CODIGO = B.id_PepMovimentos inner join CID D ON B.id_cid = D.ID where a.codpac = c.idpep and D.ID in(13780, 13824) order by dtatende desc) CID10, 
(select top 1 d.DESCR from PEPMOVIMENTOS A inner join PepMovimentos_CID b on A.CODIGO = B.id_PepMovimentos inner join CID D ON B.id_cid = D.ID where a.codpac = c.idpep and D.ID in(13780, 13824) order by dtatende desc) DESCRICAO_CID,  

(select top 1 d.CODIGO from PEPMOVIMENTOS A inner join PEPMOVIMENTOS_CIAPS b on A.CODIGO = B.id_PepMovimentos inner join CIAP D ON B.id_ciap = D.ID where a.codpac = c.idpep and d.CODIGO = 'W78' order by dtatende desc) CIAP, 
(select top 1 d.TITULO from PEPMOVIMENTOS A inner join PEPMOVIMENTOS_CIAPS b on A.CODIGO = B.id_PepMovimentos inner join CIAP D ON B.id_ciap = D.ID where a.codpac = c.idpep and d.CODIGO = 'W78' order by dtatende desc) DESCRICAO_CIAP, 

(SELECT TOP 1 CONVERT (VARCHAR(10), dtatende,103 )  FROM pepmovimentos x where x.codpac=c.idpep order by codigo desc) AS DATA_ULTIMO_ATENDIMENTO
FROM INDICADORES.VW_PEP_SIAB C
INNER JOIN PESSOA_GRUPO_DE_PESSOAS E ON C.IDPEP = E.COD_PAC
WHERE 
    E.GRUPO_DE_PESSOAS_ID = 5
 AND E.ATIVO <> 'N'
) qry where cid10 is not null or ciap is not null) QRY