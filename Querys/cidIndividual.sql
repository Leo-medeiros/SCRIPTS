USE RECEPCAO;
SELECT B.NOMEEQUIPE, C.NOME AS NomeProfissional, B.NOME, B.IDADE, B.MAE, B.CNS, A.DataFinaliza, E.CID10, E.DESCR
FROM PEPMOVIMENTOS A 
INNER JOIN INDICADORES.VW_PEP_SIAB B ON A.CODPAC = B.IDPEP
INNER JOIN MEDICOS C ON A.CODMED = C.CODIGO
INNER JOIN PepMovimentos_CID D ON A.Codigo = D.id_PepMovimentos
INNER JOIN CID E ON D.id_cid = E.ID


