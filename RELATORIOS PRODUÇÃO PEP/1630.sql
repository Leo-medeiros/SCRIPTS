
SELECT DISTINCT DESCRICAO,
       SOLICITADO,
       AVALIADO
FROM
(
    SELECT AA.descricao [DESCRICAO],
(
    SELECT COUNT(a.solicitado)
    FROM siabfacil.tipo_exame_esus_para_atendimento_individual a
         INNER JOIN siabfacil.atendimento_individual b ON a.atendimento_individual_id = b.id
    WHERE solicitado = 1
          AND a.tipo_exame_esus_id = AA.CODIGO
) [SOLICITADO],
(
    SELECT COUNT(a.avaliado)
    FROM siabfacil.tipo_exame_esus_para_atendimento_individual a
         INNER JOIN siabfacil.atendimento_individual b ON a.atendimento_individual_id = b.id
    WHERE avaliado = 1
          AND A.tipo_exame_esus_id = AA.codigo
) AVALIADO,
           M.nome [PROFISSIONAL],
           ISNULL(VW.NomeEquipe, 'FORA DE AREA') [EQUIPE]
    FROM siabfacil.tipo_exame_esus AA
         INNER JOIN siabfacil.tipo_exame_esus_para_atendimento_individual D ON d.tipo_exame_esus_id = aa.codigo
         INNER JOIN siabfacil.atendimento_individual DD ON D.atendimento_individual_id = DD.id
         INNER JOIN MEDICOS M ON DD.prof_id = M.CODIGO
         LEFT JOIN Indicadores.vw_pep_siab VW ON DD.pessoa_id = VW.IDPep
) QRY