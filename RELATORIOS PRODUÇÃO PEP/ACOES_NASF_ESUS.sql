

USE RECEPCAO
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT ACOES_NASF,
           SUM(QUANTIDADE) [QUANTIDADE]
    FROM
    (
        SELECT DISTINCT
               AN.DESCRICAO [ACOES_NASF],
               vw.NomeEquipe [EQUIPE],
               CONVERT(DATE, AI.data) [DATA_ATENDIMENTO],
               M.nome [PROFISSIONAL],
               COUNT(AI.id) [QUANTIDADE]
        FROM siabfacil.atendimento_individual AI
             INNER JOIN PACIENTES P ON AI.pessoa_id = P.codigo
             INNER JOIN siabfacil.acoes_nasf_para_atendimento_individual NASF ON NASF.atendimento_individual_id = AI.id
             INNER JOIN SIABFACIL.acoes_nasf AN ON NASF.acoes_nasf_id = AN.id
             LEFT JOIN Indicadores.vw_pep_siab vw ON VW.IDSiab = AI.id
             INNER JOIN medicos M ON(AI.prof_id = M.CODIGO)
        GROUP BY AN.descricao,
                 vw.NomeEquipe,
                 AI.data,
                 M.nome
    ) TAB1  
    GROUP BY ACOES_NASF
) TAB2













