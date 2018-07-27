

CREATE VIEW DBO.VW_TIPO_DE_ATEND_MED_E_ENF AS

SELECT DISTINCT
       NOMEEQUIPE,
(
    SELECT COUNT(1) [PUERICULTURA]
    FROM PepMovimentos A,
         PepMovimentos_Soli_Procedimento BB,
         Indicadores.vw_pep_siab C
    WHERE A.Codigo = BB.id_PepMovimentos
          AND A.codpac = C.IDPep
          AND BB.id_Exame IN(1041, 1333, 2992, 2994)
    AND C.NOMEEQUIPE = PEP.NOMEEQUIPE
    GROUP BY c.NomeEquipe
) [PUERICULTURA],
(
    SELECT COUNT(1)
    FROM PepMovimentos A
         INNER JOIN PepMovimentos_Soli_Procedimento BB ON(A.Codigo = BB.id_PepMovimentos)
         INNER JOIN Indicadores.vw_pep_siab C ON(A.codpac = C.IDPep)
    WHERE C.NomeEquipe = PEP.NOMEEQUIPE
          AND BB.id_Exame IN(5594, 1040, 4172, 4173)
    GROUP BY C.NomeEquipe
) PRE_NATAL,
(
    SELECT COUNT(1) [TOTAL_CANCER_UTERO]
    FROM SIABFACIL.CIAP_CONDICAO_AVALIADA_PARA_ATENDIMENTO_INDIVIDUAL A
         INNER JOIN SIABFACIL.CIAP_CONDICAO_AVALIADA B ON A.CIAP_CONDICAO_AVALIADA_ID = B.CODIGO
         INNER JOIN SIABFACIL.ATENDIMENTO_INDIVIDUAL C ON A.ATENDIMENTO_INDIVIDUAL_ID = C.ID
         INNER JOIN PepMovimentos D ON(C.codmov = D.Codigo)
         INNER JOIN Indicadores.vw_pep_siab E ON(D.codpac = E.IDPep)
    WHERE E.NomeEquipe = PEP.NomeEquipe
          AND B.codigo = 'ABP022'
    GROUP BY E.NomeEquipe
) [PREV_CANCER_UTERO],
(
    SELECT COUNT(1) [TOTAL_AIDS]
    FROM SIABFACIL.CIAP_CONDICAO_AVALIADA_PARA_ATENDIMENTO_INDIVIDUAL A
         INNER JOIN SIABFACIL.CIAP_CONDICAO_AVALIADA B ON A.CIAP_CONDICAO_AVALIADA_ID = B.CODIGO
         INNER JOIN SIABFACIL.ATENDIMENTO_INDIVIDUAL C ON A.ATENDIMENTO_INDIVIDUAL_ID = C.ID
         INNER JOIN PepMovimentos D ON(C.codmov = D.Codigo)
         INNER JOIN Indicadores.vw_pep_siab E ON(D.codpac = E.IDPep)
    WHERE E.NomeEquipe = PEP.NOMEEQUIPE
          AND B.codigo = 'ABP020'
    GROUP BY E.NomeEquipe
) [DST/AIDS],
       isnull(
(
    SELECT COUNT(1) TOTAL_DIABETES
    FROM PepMovimentos A
         INNER JOIN PepMovimentos_Soli_Procedimento BB ON(A.Codigo = BB.id_PepMovimentos)
         INNER JOIN Indicadores.vw_pep_siab C ON(A.codpac = C.IDPep)
    WHERE C.NomeEquipe = PEP.NomeEquipe
          AND BB.id_Exame IN(5158, 1201, 451)
    GROUP BY C.NomeEquipe
), 0) [DIABETES],
       ISNULL(
(
    SELECT COUNT(1) TOTAL_HANSENÍASE
    FROM PepMovimentos A
         INNER JOIN PepMovimentos_Soli_Procedimento BB ON(A.Codigo = BB.id_PepMovimentos)
         INNER JOIN Indicadores.vw_pep_siab C ON(A.codpac = C.IDPep)
    WHERE C.NomeEquipe = PEP.NomeEquipe
          AND BB.id_Exame IN(4313, 1177, 491, 1363)
    GROUP BY C.NomeEquipe
), 0) [HANSENÍASE],
       ISNULL(
(
    SELECT COUNT(1) TOTAL_Hipertensão
    FROM PepMovimentos A
         INNER JOIN PepMovimentos_Soli_Procedimento BB ON(A.Codigo = BB.id_PepMovimentos)
         INNER JOIN Indicadores.vw_pep_siab C ON(A.codpac = C.IDPep)
    WHERE C.NomeEquipe = PEP.NOMEEQUIPE
          AND BB.id_Exame IN(1263, 1600, 1262)
    GROUP BY C.NomeEquipe
), 0) [HA],
(
    SELECT COUNT(1) TUBERCULOSE
    FROM PepMovimentos A
         INNER JOIN PepMovimentos_Soli_Procedimento BB ON(A.Codigo = BB.id_PepMovimentos)
         INNER JOIN Indicadores.vw_pep_siab C ON(A.codpac = C.IDPep)
    WHERE C.NomeEquipe = PEP.NomeEquipe
          AND BB.id_Exame IN(490, 4312, 1190, 5175, 1031, 1030, 1014)
    GROUP BY C.NomeEquipe
) [TUBERCULOSE],
(
    SELECT COUNT(1) [TOTAL_usuario_alcool]
    FROM SIABFACIL.CIAP_CONDICAO_AVALIADA_PARA_ATENDIMENTO_INDIVIDUAL A
         INNER JOIN SIABFACIL.CIAP_CONDICAO_AVALIADA B ON A.CIAP_CONDICAO_AVALIADA_ID = B.CODIGO
         INNER JOIN SIABFACIL.ATENDIMENTO_INDIVIDUAL C ON A.ATENDIMENTO_INDIVIDUAL_ID = C.ID
         INNER JOIN PepMovimentos D ON(C.codmov = D.Codigo)
         INNER JOIN Indicadores.vw_pep_siab E ON(D.codpac = E.IDPep)
    WHERE E.NomeEquipe = PEP.NomeEquipe
          AND B.codigo = 'ABP012'
    GROUP BY E.NomeEquipe
) [USUARIO_DE_ALCOOL],
(
    SELECT COUNT(1) [TOTAL_USUARIO_DE_DROGAS]
    FROM SIABFACIL.CIAP_CONDICAO_AVALIADA_PARA_ATENDIMENTO_INDIVIDUAL A
         INNER JOIN SIABFACIL.CIAP_CONDICAO_AVALIADA B ON A.CIAP_CONDICAO_AVALIADA_ID = B.CODIGO
         INNER JOIN SIABFACIL.ATENDIMENTO_INDIVIDUAL C ON A.ATENDIMENTO_INDIVIDUAL_ID = C.ID
         INNER JOIN PepMovimentos D ON(C.codmov = D.Codigo)
         INNER JOIN Indicadores.vw_pep_siab E ON(D.codpac = E.IDPep)
    WHERE E.NomeEquipe = PEP.NomeEquipe
          AND B.codigo = 'ABP013'
    GROUP BY E.NomeEquipe
) [TOTAL_USUARIO_DE_DROGAS],
       ISNULL(
(
    SELECT COUNT(1) TOTAL_SAUDE_MENTAL
    FROM PepMovimentos A
         INNER JOIN PepMovimentos_Soli_Procedimento BB ON(A.Codigo = BB.id_PepMovimentos)
         INNER JOIN Indicadores.vw_pep_siab C ON(A.codpac = C.IDPep)
    WHERE C.NomeEquipe = PEP.NomeEquipe
          AND BB.id_Exame IN(4474, 5103, 5104, 5105, 1114, 1115, 1104, 1106, 1110, 1112)
    GROUP BY C.NomeEquipe
), 0) [SAUDE_MENTAL]
FROM Indicadores.vw_pep_siab PEP
