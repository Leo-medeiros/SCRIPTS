

USE RECEPCAO;
SET DATEFORMAT DMY;
SELECT *
FROM
(
    SELECT [FORNECIMENTO_ODONTO],
           SUM(QUANTIDADE) [QUANTIDADE]
    FROM
    (
        SELECT DISTINCT
               FO.DESCRICAO [FORNECIMENTO_ODONTO],
               vw.NomeEquipe [EQUIPE],
               CONVERT(DATE, AO.data) [DATA],
               M.nome [PROFISSIONAL],
               COUNT(AO.id) [QUANTIDADE]
        FROM siabfacil.atendimento_odonto AO
             INNER JOIN PACIENTES P ON AO.pessoa_id = P.codigo
             INNER JOIN siabfacil.fornecimento_odonto_para_atendimento_odonto OO ON AO.id = OO.atendimento_odonto_id
             INNER JOIN SIABFACIL.fornecimento_odonto FO ON OO.fornecimento_odonto_codigo = FO.codigo
             LEFT JOIN Indicadores.vw_pep_siab vw ON VW.IDSiab = AO.id
             INNER JOIN medicos M ON(AO.prof_id = M.CODIGO)
        GROUP BY FO.descricao,
                 vw.NomeEquipe,
                 AO.data,
                 M.nome
    ) FORN_ODON
    GROUP BY [FORNECIMENTO_ODONTO]
) ODON_FORN