USE RECEPCAO;
SELECT B.NOMEEQUIPE AS NomeEquipe, B.NOME AS NomePessoa, B.data_nascimento AS DataNascimento, B.MAE AS NomeMae, 
A.data_finalizacao AS DataEncerramentoGestacao, A.MOTIVO AS MotivoFinalizacao FROM PESSOA_GRUPO_DE_PESSOAS A
INNER JOIN INDICADORES.vw_pep_siab B ON A.COD_PAC = B.IDPEP
WHERE A.GRUPO_DE_PESSOAS_ID = 5
AND A.ATIVO = 'N'
AND A.data_finalizacao > '2017-02-05 23:14:18.527'
ORDER BY B.NomeEquipe