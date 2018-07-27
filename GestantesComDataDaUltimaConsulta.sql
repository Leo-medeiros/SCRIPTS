--Gestantes com data da �ltima consulta
USE RECEPCAO;
SELECT DISTINCT C.NOME AS NOME_DO_PACIENTE, C.NOMEEQUIPE AS NOME_DA_EQUIPE, C.SEXO, CONVERT (VARCHAR(10), 
DATA_NASCIMENTO,103) AS DATA_NASCIMENTO, C.MAE,
(SELECT TOP 1 CONVERT (VARCHAR(10), dtatende,103 )  FROM pepmovimentos x where x.codpac=c.idpep order by codigo desc) AS DATA_ULTIMO_ATENDIMENTO
FROM INDICADORES.VW_PEP_SIAB C
INNER JOIN PESSOA_GRUPO_DE_PESSOAS D ON C.IDPEP = D.COD_PAC
WHERE D.ATIVO = 'S'
AND D.grupo_de_pessoas_id = 5 --Gestante
ORDER BY C.NOMEEQUIPE


