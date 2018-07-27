

USE RECEPCAO
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT CONDUTA_ENCAMINHAMENTO_ESUS,
           SUM(QUANTIDADE) [QUANTIDADE]
    FROM
    (
        SELECT DISTINCT
               ce.DESCRICAO [CONDUTA_ENCAMINHAMENTO_ESUS],
               vw.NomeEquipe [EQUIPE],
               CONVERT(DATE, AI.data) [DATA_ATENDIMENTO],
               M.nome [PROFISSIONAL],
               COUNT(AI.id) [QUANTIDADE]
        FROM siabfacil.atendimento_individual AI
             INNER JOIN PACIENTES P ON AI.pessoa_id = P.codigo
             INNER JOIN siabfacil.conduta_encaminhamento_para_atendimento_individual CON on AI.id = CON.atendimento_individual_id
		   INNER JOIN SIABFACIL.conduta_encaminhamento CE on CON.conduta_encaminhamento_id = CE.id
             LEFT JOIN Indicadores.vw_pep_siab vw ON VW.IDSiab = AI.id
             INNER JOIN medicos M ON(AI.prof_id = M.CODIGO)
        GROUP BY CE.descricao,
                 vw.NomeEquipe,
                 AI.data,
                 M.nome
    ) TAB1  
    GROUP BY CONDUTA_ENCAMINHAMENTO_ESUS
) TAB2