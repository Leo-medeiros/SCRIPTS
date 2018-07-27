USE RECEPCAO;
SELECT DISTINCT C.NOME AS NOME_DO_PACIENTE, C.NOMEEQUIPE AS NOME_DA_EQUIPE, C.DATA_NASCIMENTO, C.MAE AS NOME_DA_MAE, A.HEMOGLOBINA, A.GLICOSE 'GLICOSE' 
FROM [exames].[hba1c_hemoglobina_glicada] A
INNER JOIN PESSOA_GRUPO_DE_PESSOAS B ON A.CODPAC = B.COD_PAC
INNER JOIN INDICADORES.VW_PEP_SIAB C ON A.CODPAC = C.IDPEP
WHERE B.GRUPO_DE_PESSOAS_ID = 7
AND B.ATIVO <> 'N'
ORDER BY C.NOMEEQUIPE

