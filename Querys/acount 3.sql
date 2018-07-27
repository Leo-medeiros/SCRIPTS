/*�ltimos Slides*/

DECLARE @COMP INT = 2015
DECLARE @DENOMINAD NUMERIC(10,2)
DECLARE @NUMERADOR_E3_PENULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_E3_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_E3_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_E3_ULTIMO NUMERIC(10,2)

DECLARE @NUMERADOR_E4_PENULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_E4_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_E4_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_E4_ULTIMO NUMERIC(10,2)
DECLARE @DATA_PENULTIMO_COMP DATETIME;
DECLARE @DATA_ULTIMO_COMP DATETIME;

SET @DATA_ULTIMO_COMP = CONVERT(DATETIME, CONVERT(VARCHAR(4),@COMP) + '-12-31 23:59:59')
SET @DATA_PENULTIMO_COMP = CONVERT(DATETIME, CONVERT(VARCHAR(4),@COMP) + '-09-30 23:59:59')



SELECT @DENOMINAD = count(1) from Accountability.vw_pessoa

--e3

-- n
SELECT @NUMERADOR_E3_PENULTIMO = COUNT(DISTINCT b.ficha)  from recepcao.indicadores.vw_pep_siab a 
inner join recepcao.dbo.pepmovimentos b on a.idpep=b.codpac
inner join recepcao.dbo.Encaminhamento_aps_para_at_secundaria c on b.ficha=c.ficha
where ESPECIALIDADE=323
--AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (7, 8, 9)
AND B.dtatende >= CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01')
AND B.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01 23:59:59')))




-- d
SELECT @DENOMINAD_E3_PENULTIMO = COUNT(DISTINCT A.FICHA) FROM RECEPCAO.DBO.PEPMOVIMENTOS A
INNER JOIN RECEPCAO.INDICADORES.VW_PEP_SIAB B ON A.CODPAC=B.IDPEP
WHERE  ESPECIALIDADE=323 AND STATUS='F' 
--AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (7, 8, 9)
AND A.dtatende >= CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01')
AND A.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01 23:59:59')))


-- n
SELECT @NUMERADOR_E3_ULTIMO = COUNT(DISTINCT b.ficha)  from recepcao.indicadores.vw_pep_siab a 
inner join recepcao.dbo.pepmovimentos b on a.idpep=b.codpac
inner join recepcao.dbo.Encaminhamento_aps_para_at_secundaria c on b.ficha=c.ficha
where ESPECIALIDADE=323
--AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (10,11,12)
AND B.dtatende >= CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_ULTIMO_COMP, 112)+'01')
AND B.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_ULTIMO_COMP, 112)+'01 23:59:59')))




-- d
SELECT @DENOMINAD_E3_ULTIMO = COUNT(DISTINCT A.FICHA) FROM RECEPCAO.DBO.PEPMOVIMENTOS A
INNER JOIN RECEPCAO.INDICADORES.VW_PEP_SIAB B ON A.CODPAC=B.IDPEP
WHERE  ESPECIALIDADE=323 AND STATUS='F' 
AND A.dtatende >= CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_ULTIMO_COMP, 112)+'01')
AND A.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_ULTIMO_COMP, 112)+'01 23:59:59')))





--e4

-- n
SELECT @NUMERADOR_E4_PENULTIMO = COUNT(DISTINCT A.FICHA) FROM RECEPCAO.DBO.PEPMOVIMENTOS A
INNER JOIN RECEPCAO.DBO.MEDICOPRONTUARIO B ON A.CODIGO=B.IDMOVIMENTO
INNER JOIN RECEPCAO.DBO.MEDICOS C ON C.CODIGO=A.CODMED
INNER JOIN RECEPCAO.INDICADORES.VW_PEP_SIAB D ON A.CODPAC = D.IDPEP
INNER JOIN RECEPCAO.DBO.DADOS_COMPLEMENTARES_LCT E ON D.IDPEP=E.ID_CODPAC
INNER JOIN RECEPCAO.DBO.DADOS_COMPLEMENTARES F ON E.ID_DADOS=F.ID AND F.ID = 3
WHERE CONDUTA LIKE '%ENC%' and ISNULL(C.EQUIPE, '') != ''
AND   A.STATUS='F' AND ESPECIALIDADE=323
--AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (7, 8, 9)
AND A.dtatende >= CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01')
AND A.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01 23:59:59')))

-- d
SELECT @DENOMINAD_E4_PENULTIMO = COUNT(DISTINCT b.ficha)  from recepcao.indicadores.vw_pep_siab a 
inner join recepcao.dbo.pepmovimentos b on a.idpep=b.codpac
inner join recepcao.dbo.Encaminhamento_aps_para_at_secundaria c on b.ficha=c.ficha
where ESPECIALIDADE=323
--AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (7, 8, 9)
AND B.dtatende >= CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01')
AND B.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01 23:59:59')))

-- n
SELECT @NUMERADOR_E4_ULTIMO = COUNT(DISTINCT A.FICHA) FROM RECEPCAO.DBO.PEPMOVIMENTOS A
INNER JOIN RECEPCAO.DBO.MEDICOPRONTUARIO B ON A.CODIGO=B.IDMOVIMENTO
INNER JOIN RECEPCAO.DBO.MEDICOS C ON C.CODIGO=A.CODMED
INNER JOIN RECEPCAO.INDICADORES.VW_PEP_SIAB D ON A.CODPAC = D.IDPEP
INNER JOIN RECEPCAO.DBO.DADOS_COMPLEMENTARES_LCT E ON D.IDPEP=E.ID_CODPAC
INNER JOIN RECEPCAO.DBO.DADOS_COMPLEMENTARES F ON E.ID_DADOS=F.ID AND F.ID = 3
WHERE CONDUTA LIKE '%ENC%' and ISNULL(C.EQUIPE, '') != ''
AND   A.STATUS='F' AND ESPECIALIDADE=323
--AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (10,11,12)
AND A.dtatende >= CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_ULTIMO_COMP, 112)+'01')
AND A.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_ULTIMO_COMP, 112)+'01 23:59:59')))

-- d
SELECT @DENOMINAD_E4_ULTIMO = COUNT(DISTINCT b.ficha)  from recepcao.indicadores.vw_pep_siab a 
inner join recepcao.dbo.pepmovimentos b on a.idpep=b.codpac
inner join recepcao.dbo.Encaminhamento_aps_para_at_secundaria c on b.ficha=c.ficha
where ESPECIALIDADE=323
--AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (10,11,12)
AND B.dtatende >= CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01')
AND B.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01 23:59:59')))



SELECT 
 CASE WHEN @NUMERADOR_E3_PENULTIMO = 0 OR @DENOMINAD_E3_PENULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_E3_PENULTIMO/@DENOMINAD_E3_PENULTIMO) * 100) END E3_PENULTIMO_TRIMESTRE, 
 CASE WHEN @NUMERADOR_E3_ULTIMO = 0 OR @DENOMINAD_E3_ULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_E3_ULTIMO/@DENOMINAD_E3_ULTIMO) * 100) END E3_ULTIMO_TRIMESTRE,
 CASE WHEN @NUMERADOR_E4_PENULTIMO = 0 OR @DENOMINAD_E4_PENULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_E4_PENULTIMO/@DENOMINAD_E4_PENULTIMO) * 100) END E4_PENULTIMO_TRIMESTRE, 
 CASE WHEN @NUMERADOR_E4_ULTIMO = 0 OR @DENOMINAD_E4_ULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_E4_ULTIMO/@DENOMINAD_E4_ULTIMO) * 100) END E4_ULTIMO_TRIMESTRE