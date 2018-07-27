-- puerperia 


SELECT   C.NomeEquipe [EQUIPE], COUNT(1) PUERICULTURA
FROM PepMovimentos A
INNER JOIN PepMovimentos_Soli_Procedimento BB ON (A.Codigo = BB.id_PepMovimentos)
INNER JOIN Indicadores.vw_pep_siab C ON (A.codpac = C.IDPep)
WHERE BB.id_Exame IN (1041,
1333,
2992,
2994)
GROUP BY C.NomeEquipe
-- pre natal
SELECT   C.NomeEquipe [EQUIPE], COUNT(1) TOTAL_pre_natal
FROM PepMovimentos A
INNER JOIN PepMovimentos_Soli_Procedimento BB ON (A.Codigo = BB.id_PepMovimentos)
INNER JOIN Indicadores.vw_pep_siab C ON (A.codpac = C.IDPep)
WHERE BB.id_Exame IN (5594,
1040,
4172,
4173)
GROUP BY C.NomeEquipe

-- PREV CANCER UTERO
SELECT E.NomeEquipe [EQUIPE], COUNT(1) [TOTAL_CANCER_UTERO] FROM SIABFACIL.CIAP_CONDICAO_AVALIADA_PARA_ATENDIMENTO_INDIVIDUAL A
INNER JOIN SIABFACIL.CIAP_CONDICAO_AVALIADA B ON A.CIAP_CONDICAO_AVALIADA_ID = B.CODIGO
INNER JOIN SIABFACIL.ATENDIMENTO_INDIVIDUAL C ON A.ATENDIMENTO_INDIVIDUAL_ID = C.ID
INNER JOIN PepMovimentos D ON (C.codmov = D.Codigo)
INNER JOIN Indicadores.vw_pep_siab E ON (D.codpac = E.IDPep)
WHERE B.codigo = 'ABP022'
GROUP BY E.NomeEquipe

-- DIABETES
SELECT   C.NomeEquipe [EQUIPE], COUNT(1) TOTAL_DIABETES
FROM PepMovimentos A
INNER JOIN PepMovimentos_Soli_Procedimento BB ON (A.Codigo = BB.id_PepMovimentos)
INNER JOIN Indicadores.vw_pep_siab C ON (A.codpac = C.IDPep)
WHERE BB.id_Exame IN (5158,
1201,
451)
GROUP BY C.NomeEquipe

--HANSEN�ASE
SELECT   C.NomeEquipe [EQUIPE], COUNT(1) TOTAL_HANSEN�ASE
FROM PepMovimentos A
INNER JOIN PepMovimentos_Soli_Procedimento BB ON (A.Codigo = BB.id_PepMovimentos)
INNER JOIN Indicadores.vw_pep_siab C ON (A.codpac = C.IDPep)
WHERE BB.id_Exame IN (4313,
1177,
491,
1363)
GROUP BY C.NomeEquipe

--Hipertens�o
SELECT   C.NomeEquipe [EQUIPE], COUNT(1) TOTAL_Hipertens�o
FROM PepMovimentos A
INNER JOIN PepMovimentos_Soli_Procedimento BB ON (A.Codigo = BB.id_PepMovimentos)
INNER JOIN Indicadores.vw_pep_siab C ON (A.codpac = C.IDPep)
WHERE BB.id_Exame IN (1263,
1600,
1262)
GROUP BY C.NomeEquipe

-- TUBERCULOSE
SELECT   C.NomeEquipe [EQUIPE], COUNT(1) TOTAL_Hipertens�o
FROM PepMovimentos A
INNER JOIN PepMovimentos_Soli_Procedimento BB ON (A.Codigo = BB.id_PepMovimentos)
INNER JOIN Indicadores.vw_pep_siab C ON (A.codpac = C.IDPep)
WHERE BB.id_Exame IN (490,
4312,
1190,
5175,
1031,
1030,
1014)
GROUP BY C.NomeEquipe

--USUARIO DE ALCOOL
SELECT E.NomeEquipe [EQUIPE], COUNT(1) [TOTAL_usuario_alcool] FROM SIABFACIL.CIAP_CONDICAO_AVALIADA_PARA_ATENDIMENTO_INDIVIDUAL A
INNER JOIN SIABFACIL.CIAP_CONDICAO_AVALIADA B ON A.CIAP_CONDICAO_AVALIADA_ID = B.CODIGO
INNER JOIN SIABFACIL.ATENDIMENTO_INDIVIDUAL C ON A.ATENDIMENTO_INDIVIDUAL_ID = C.ID
INNER JOIN PepMovimentos D ON (C.codmov = D.Codigo)
INNER JOIN Indicadores.vw_pep_siab E ON (D.codpac = E.IDPep)
WHERE B.codigo = 'ABP012'
GROUP BY E.NomeEquipe

-- USUARIO DE DROGAS
SELECT E.NomeEquipe [EQUIPE], COUNT(1) [TOTAL_USUARIO_DE_DROGAS] FROM SIABFACIL.CIAP_CONDICAO_AVALIADA_PARA_ATENDIMENTO_INDIVIDUAL A
INNER JOIN SIABFACIL.CIAP_CONDICAO_AVALIADA B ON A.CIAP_CONDICAO_AVALIADA_ID = B.CODIGO
INNER JOIN SIABFACIL.ATENDIMENTO_INDIVIDUAL C ON A.ATENDIMENTO_INDIVIDUAL_ID = C.ID
INNER JOIN PepMovimentos D ON (C.codmov = D.Codigo)
INNER JOIN Indicadores.vw_pep_siab E ON (D.codpac = E.IDPep)
WHERE B.codigo = 'ABP013'
GROUP BY E.NomeEquipe

--SAUDE MENTAL
SELECT   C.NomeEquipe [EQUIPE], COUNT(1) TOTAL_SAUDE_MENTAL
FROM PepMovimentos A
INNER JOIN PepMovimentos_Soli_Procedimento BB ON (A.Codigo = BB.id_PepMovimentos)
INNER JOIN Indicadores.vw_pep_siab C ON (A.codpac = C.IDPep)
WHERE BB.id_Exame IN (4474,
5103,
5104,
5105,
1114,
1115,
1104,
1106,
1110,
1112)
GROUP BY C.NomeEquipe

-- AIDS 
SELECT E.NomeEquipe [EQUIPE], COUNT(1) [TOTAL_AIDS] FROM SIABFACIL.CIAP_CONDICAO_AVALIADA_PARA_ATENDIMENTO_INDIVIDUAL A
INNER JOIN SIABFACIL.CIAP_CONDICAO_AVALIADA B ON A.CIAP_CONDICAO_AVALIADA_ID = B.CODIGO
INNER JOIN SIABFACIL.ATENDIMENTO_INDIVIDUAL C ON A.ATENDIMENTO_INDIVIDUAL_ID = C.ID
INNER JOIN PepMovimentos D ON (C.codmov = D.Codigo)
INNER JOIN Indicadores.vw_pep_siab E ON (D.codpac = E.IDPep)
WHERE B.codigo = 'ABP020'
GROUP BY E.NomeEquipe









