USE RECEPCAO
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT [TIPO_DE_CONSULTA_ODONTO],
           SUM(QUANTIDADE) [QUANTIDADE]
    FROM
    (
        SELECT DISTINCT
               TCO.DESCRICAO [TIPO_DE_CONSULTA_ODONTO],
               vw.NomeEquipe [EQUIPE],
               CONVERT(DATE, AO.data) [DATA_ATENDIMENTO],
               M.nome [PROFISSIONAL],
               COUNT(AO.id) [QUANTIDADE]
        FROM siabfacil.atendimento_odonto AO
             INNER JOIN PACIENTES P ON AO.pessoa_id = P.codigo
              INNER JOIN SIABFACIL.tipo_consulta_odonto TCO ON AO.tipo_consulta_odonto_codigo = TCO.codigo
             LEFT JOIN Indicadores.vw_pep_siab vw ON VW.IDSiab = AO.id
             INNER JOIN medicos M ON(AO.prof_id = M.CODIGO)
        GROUP BY TCO.descricao,
                 vw.NomeEquipe,
                 AO.data,
                 M.nome
    ) ODON  
    GROUP BY [TIPO_DE_CONSULTA_ODONTO]
) OD



