SET DATEFORMAT DMY
SELECT * FROM (

SELECT distinct Equipe, SUM([EX-RADIODIAG]) as 'EX-RADIODIAG', sum([EX-PAT CLIN]) as 'EX-PAT CLIN',
sum([EX-USG OBST]) as 'EX-USG OBST', sum([EX-CITOPAT]) as 'EX-CITOPAT', sum([OUTROS EXAMES]) as 'OUTROS EXAMES' FROM (
SELECT B.NomeEquipe [Equipe],A.dtatende [Data],
case when vw.tipo = 'imagem' then 1 else 0 end [EX-RADIODIAG],
0 [EX-PAT CLIN],
0 [EX-USG OBST],
0 [EX-CITOPAT],
case when vw.tipo = 'OUTROS EXAMES' then 1 else 0 end [OUTROS EXAMES]


  FROM PepMovimentos A
INNER JOIN Indicadores.vw_pep_siab B ON A.codpac = B.IDPep
INNER JOIN vw_rel_sol_exame  VW ON VW.codigo = A.Codigo
WHERE A.Status = 'F' AND A.Especialidade = 323

UNION ALL

SELECT distinct b.NomeEquipe, A.dtatende [Data],
0 [EX-RADIODIAG],
case when c.ID in (4298, 4287, 138, 140, 5151, 375, 517, 4296, 4285, 136, 159, 4286, 4297, 137, 4306, 4307, 4402, 1025, 223, 5147, 220, 563) then 1 else 0 end [EX-PAT CLIN],
case when c.ID = 692 then 1 else 0 end [EX-USG OBST],
case when c.ID in (5219, 4387, 4388, 565) then 1 else 0 end [EX-CITOPAT],
0 [OUTROS EXAMES]
  FROM PepMovimentos A
INNER JOIN Indicadores.vw_pep_siab B ON A.codpac = B.IDPep
INNER JOIN pepmovimentos_soli_exames bs ON a.codigo = bs.id_PepMovimentos
INNER JOIN procedimentos c ON c.ID = bs.id_Exame
WHERE A.Status = 'F' AND A.Especialidade = 323
)TBB
WHERE DATA BETWEEN '01/07/2018' AND '20/07/2018'

GROUP BY Equipe)TBB01