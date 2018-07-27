
--�	Listagem da popula��o cadastrada, do sexo feminino entre 25 e 64 anos de idade, separada por equipe (INE da equipe). Per�odo: agosto 2017.

 
 USE RECEPCAO
 GO
 SELECT DISTINCT A.NomeEquipe, B.INE, A.Nome, A.Prontuario, A.Idade, A.CNS, A.Unidade  FROM INDICADORES.VW_PEP_SIAB A
 INNER JOIN Wv_EquipeSiab B ON A.NomeEquipe = B.NOME
 WHERE SEXO = 'F'
 AND IDADE BETWEEN 25 AND 64
 ORDER BY A.NOMEEQUIPE

