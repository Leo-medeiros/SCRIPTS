USE RECEPCAO
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT PROBLEMAS_CONDICOES_AVALIADAS_ESUS,
           SUM(QUANTIDADE) [QUANTIDADE]
    FROM
    (
        SELECT DISTINCT
               CA.DESCRICAO [PROBLEMAS_CONDICOES_AVALIADAS_ESUS],
               vw.NomeEquipe [EQUIPE],
               CONVERT(DATE, AI.data) [DATA_ATENDIMENTO],
               M.nome [PROFISSIONAL],
               COUNT(AI.id) [QUANTIDADE]
        FROM siabfacil.atendimento_individual AI
             INNER JOIN PACIENTES P ON AI.pessoa_id = P.codigo
             INNER JOIN siabfacil.ciap_condicao_avaliada_para_atendimento_individual CAI on ai.id = CAI.atendimento_individual_id
		   INNER JOIN SIABFACIL.ciap_condicao_avaliada CA on CAI.ciap_condicao_avaliada_id = CA.codigo 
             LEFT JOIN Indicadores.vw_pep_siab vw ON VW.IDSiab = AI.id
             INNER JOIN medicos M ON(AI.prof_id = M.CODIGO)
        GROUP BY CA.descricao,
                 vw.NomeEquipe,
                 AI.data,
                 M.nome
    ) TB  
    GROUP BY PROBLEMAS_CONDICOES_AVALIADAS_ESUS
) TB1