USE RECEPCAO;
SELECT DISTINCT C.NOME AS NOME_DO_PACIENTE, C.NOMEEQUIPE AS NOME_DA_EQUIPE, C.SEXO, CONVERT (VARCHAR(10), 
DATA_NASCIMENTO,103) AS DATA_NASCIMENTO, C.MAE,
CASE WHEN A.ID_DADOS = 4 THEN 'CFC'
WHEN A.ID_DADOS = 5 THEN 'BF'
END PROGRAMA
FROM INDICADORES.VW_PEP_SIAB C
INNER JOIN DADOS_COMPLEMENTARES_LCT A ON A.id_codpac = C.IDPep
INNER JOIN DADOS_COMPLEMENTARES B ON A.ID_DADOS = B.ID
INNER JOIN pessoa_grupo_de_pessoas D ON C.IDPEP = D.COD_PAC
WHERE A.ID_DADOS IN (4,5)
AND D.grupo_de_pessoas_id = 5
AND D.ATIVO = 'S'
AND A.CHK = 'S'
ORDER BY C.NOMEEQUIPE