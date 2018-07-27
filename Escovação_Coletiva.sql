/*Quantidade de procedimentos de escovação coletiva*/
SELECT * FROM pepmovimentos_soli_procedimento A
LEFT JOIN PROCEDIMENTOS B ON A.ID_PEPMOVIMENTOS = B.CODIGO
WHERE A.ID_EXAME = 12

SELECT * FROM ATIVIDADE_PRATICAS_GRUPO A
INNER JOIN atividade_grupo B ON A.ID_ATIVIDADE = B.ID
WHERE ID_PRATICAS = 9
