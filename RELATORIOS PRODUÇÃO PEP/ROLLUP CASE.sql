USE RECEPCAO;
SET DATEFORMAT DMY
SELECT  *
FROM
(
    SELECT 
    
    case WHEN (GROUPING(LOCAL_DE_ATENDIMENTO)=1) THEN 'TOTAL'
    ELSE ISNULL(LOCAL_DE_ATENDIMENTO,'NAO INFORMADO') END AS LOCAL_DE_ATENDIMENTO,
    SUM(QUANTIDADE) [QUANTIDADE]
    FROM
    (
        SELECT DISTINCT
               L.descricao [LOCAL_DE_ATENDIMENTO],
               VW.NomeEquipe EQUIPE,
               CONVERT(DATE, AT.data) DATA,
               M.nome PROFISSIONAL,
               COUNT(AT.id) [QUANTIDADE]
        FROM siabfacil.atendimento_individual AT
		  INNER JOIN PACIENTES P ON (AT.pessoa_id = P.codigo)
             INNER JOIN siabfacil.local_atendimento L ON(AT.local_atendimento_id = L.id)
             LEFT JOIN Indicadores.vw_pep_siab vw ON VW.IDSiab = AT.id
             INNER JOIN medicos M ON(AT.prof_id = M.CODIGO)
		  
        GROUP BY L.descricao,
                 VW.NomeEquipe,
                 AT.data,
                 M.nome
    ) T
     GROUP BY LOCAL_DE_ATENDIMENTO
	WITH ROLLUP

    )ATEND