/*ATIVIDADE EM GRUPO*/
USE recepcao
SELECT C.NOME AS EQUIPE, A.descricao_local AS LOCAL, A.data_atividade AS DATA_ATIVIDADE, A.hr_inicio AS 
HORA_INICIO, A.hr_fim AS HORA_FIM, A.qtde_participantes AS QUANTIDADE_DE_PARTICIPANTES, A.NOME_ATIVIDADE, B.NomeCompleto AS
PROFISSIONAL_RESPONVAVEL, 
replace(replace((select nome from atividade_participantes_grupo x inner join indicadores.vw_pep_siab y on x.id_participante = y.IDPep where x.id_atividade = a.id for xml path),
 '<row><nome>',''), '</nome></row>',', ')   
FROM atividade_grupo a
INNER JOIN acesso.dbo.usuarios b ON a.id_prof_resp = b.codigo
INNER JOIN INDICADORES.Pep_EquipeSiab C ON B.equipe = C.CODIGO
WHERE C.CODIGO = 5127