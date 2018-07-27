--RADIODIAGNOSTICO, PATOLOGIA CLINICA


SELECT  DISTINCT B.NomeEquipe [EQUIPE], (select  count(1) [EX-RADIODIAG] from vw_rel_sol_exame VW
   inner join PepMovimentos pep on vw.codigo = pep.codigo
   inner join Indicadores.vw_pep_siab siab ON PEP.codpac = SIAB.IDPep
   where    siab.NomeEquipe = B.NomeEquipe  and vw.tipo = 'imagem' AND PEP.Especialidade = 323
   GROUP BY siab.NomeEquipe) [EX-RADIODIAG] , 
   
   (select count(1) [EX-PAT CLIN] from pepmovimentos aa 
   inner join pepmovimentos_soli_exames bb on aa.codigo = bb.id_PepMovimentos
   inner join procedimentos c on c.ID = bb.id_Exame
   inner join Indicadores.vw_pep_siab d on aa.codpac = d.IDPep
   where  d.NomeEquipe = b.NomeEquipe 
    and c.id in (4298,4287,138,140,5151,375,517,4296,4285,136,159,4286,4297,137,4306,4307,4402,1025,223,5147,220,563)
   and aa.especialidade = 323
   and aa.status = 'F'
   group by d.NomeEquipe)[EX-PAT CLIN] , (
 select count(1) [total] from pepmovimentos a 
   inner join pepmovimentos_soli_exames bs on a.codigo = bs.id_PepMovimentos
   inner join procedimentos c on c.ID = bs.id_Exame
   inner join Indicadores.vw_pep_siab sb on a.codpac = sb.IDPep
   where   sb.NomeEquipe = b.NomeEquipe  and c.id =692
   and a.especialidade = 323
   and a.status = 'F'
   group by sb.NomeEquipe) [EX-USG OBST]
   
  

FROM PepMovimentos A
INNER JOIN Indicadores.vw_pep_siab B ON (A.codpac = B.IDPep)
WHERE A.Status = 'F'



 --(SELECT   count(1)  from vw_rel_sol_exame ab
 --  inner join PepMovimentos ba on ab.codigo = ba.codigo
 --  inner join Indicadores.vw_pep_siab siab ON ba.codpac = SIAB.IDPep
 --  where    siab.NomeEquipe = b.NomeEquipe and ab.tipo = 'OUTROS EXAMES' and ba.Especialidade = 323
 --  and ba.Status = 'F'
 --  GROUP BY siab.NomeEquipe) 











