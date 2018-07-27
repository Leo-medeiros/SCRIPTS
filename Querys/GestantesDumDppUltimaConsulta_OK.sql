USE RECEPCAO;
SELECT * FROM (
SELECT DISTINCT C.NOME AS NOME_DO_PACIENTE, C.NOMEEQUIPE AS NOME_DA_EQUIPE, C.SEXO, CONVERT (VARCHAR(10), 
DATA_NASCIMENTO,103) AS DATA_NASCIMENTO, C.MAE,  MAX (e.data_ultima_menstruacao) 'DUM',max(e.data_provavel_parto) 'DPP',
(SELECT TOP 1 CONVERT (VARCHAR(10), dtatende,103 )  FROM pepmovimentos x where x.codpac=c.idpep order by codigo desc) AS DATA_ULTIMO_ATENDIMENTO
FROM INDICADORES.VW_PEP_SIAB C
left JOIN PESSOA_GRUPO_DE_PESSOAS D ON C.IDPEP = D.COD_PAC
left JOIN pepmovimentos a on c.idpep = a.codpac
left JOIN prontuario_gestante b on b.id_ = a.codigo
left JOIN prontuario_gestante_gest_gravi_atual e ON b.id_pront_gestante_gest_gravi_atual = e.id_pront_gestante_gest_gravi_atual
WHERE isnull (d.ativo, 'S') <> 'N'
AND D.grupo_de_pessoas_id = 5 
AND E.data_ultima_menstruacao IS NOT NULL
AND E.data_provavel_parto IS NOT NULL
GROUP BY c.nome, c.NomeEquipe, c.sexo, c.data_nascimento, c.mae, c.idpep) AS TEMP