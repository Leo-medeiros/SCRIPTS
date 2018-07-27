USE RECEPCAO
SET DATEFORMAT DMY
SELECT *
FROM
(

    SELECT [TIPO ATENDIMENTO ESUS], PROFISSIONAL,
           SUM(QUANTIDADE) [QUANTIDADE]
    FROM
    (
        SELECT DISTINCT
               TA.descricao [TIPO ATENDIMENTO ESUS],
               vw.NomeEquipe [EQUIPE],
               CONVERT(date, AI.data) [DATA ATENDIMENTO],
               M.nome [PROFISSIONAL],
               COUNT(AI.id) [QUANTIDADE]
        FROM siabfacil.atendimento_individual AI
             INNER JOIN PACIENTES P ON AI.pessoa_id = P.codigo
             INNER JOIN siabfacil.tipo_atendimento_esus TA ON TA.codigo = AI.tipo_atendimento_esus_codigo
             LEFT JOIN Indicadores.vw_pep_siab vw ON VW.IDSiab = AI.id
             INNER JOIN medicos M ON(AI.prof_id = M.CODIGO)
        GROUP BY TA.descricao,
                 vw.NomeEquipe,
                 AI.data,
                 M.nome
    ) A
    where [DATA ATENDIMENTO] between '01/01/2018' and '31/01/2018'
    GROUP BY [TIPO ATENDIMENTO ESUS],PROFISSIONAL
) B








