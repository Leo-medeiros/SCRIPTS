-- VIGILANCIA EM SAUDE BUCAL ESUS

USE RECEPCAO
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT [DESCRICAO],
           SUM(QUANTIDADE) [QUANTIDADE]
    FROM
    (
        SELECT DISTINCT
               VSC.DESCRICAO [DESCRICAO],
               vw.NomeEquipe [EQUIPE],
               CONVERT(DATE, AO.data) [DATA_ATENDIMENTO],
               M.nome [PROFISSIONAL],
               COUNT(AO.id) [QUANTIDADE]
        FROM siabfacil.atendimento_odonto AO
             INNER JOIN PACIENTES P ON AO.pessoa_id = P.codigo
		   INNER JOIN siabfacil.vigilancia_saude_bucal_para_atendimento_odonto VSBAO ON AO.id = VSBAO.atendimento_odonto_id
		   INNER JOIN SIABFACIL.vigilancia_saude_bucal VSC on VSBAO.vigilancia_saude_bucal_codigo = VSC.codigo
             LEFT JOIN Indicadores.vw_pep_siab vw ON VW.IDSiab = AO.id
             INNER JOIN medicos M ON(AO.prof_id = M.CODIGO)
        GROUP BY VSC.descricao,
                 vw.NomeEquipe,
                 AO.data,
                 M.nome
    ) AT_ODONTO1
    GROUP BY [DESCRICAO]
) AT_ODONTO2
