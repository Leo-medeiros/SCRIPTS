

	USE RECEPCAO
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT [PROCEDIMENTO_ODONTO],
           SUM(QUANTIDADE) [QUANTIDADE]
    FROM
    (
        SELECT DISTINCT
               TPO.DESCRICAO [PROCEDIMENTO_ODONTO],
               vw.NomeEquipe [EQUIPE],
               CONVERT(DATE, AO.data) [DATA],
               M.nome [PROFISSIONAL],
               COUNT(AO.id) [QUANTIDADE]
        FROM siabfacil.atendimento_odonto AO
             INNER JOIN PACIENTES P ON AO.pessoa_id = P.codigo
             INNER JOIN siabfacil.tipo_procedimento_odonto_para_atendimento_odonto ODO ON AO.id = ODO.atendimento_odonto_id
		   INNER JOIN SIABFACIL.tipo_procedimento_odonto TPO ON ODO.tipo_procedimento_odonto_id = TPO.id
             LEFT JOIN Indicadores.vw_pep_siab vw ON VW.IDSiab = AO.id
             INNER JOIN medicos M ON(AO.prof_id = M.CODIGO)
        GROUP BY tpo.descricao,
                 vw.NomeEquipe,
                 AO.data,
                 M.nome
    ) PROC_ODONTO01  
    GROUP BY [PROCEDIMENTO_ODONTO]
) PROC_ODONTO02