select 'Equipe: ' + NomeEquipe NomeEquipe, nome [Paciente], cns [CNS], CONVERT(VARCHAR(10),
 DATA_nascimento, 103) [Data Nascimento], MAE [Mãe], idpep, prontuario 'EQUIPE - AREA - MICROAREA'
 from  RECEPCAO.INDICADORES.vw_pep_siab c
where datediff(month, c.data_nascimento, dateadd(month, -1, getdate())) <= 72
EXCEPT

select 'Equipe: ' + NomeEquipe NomeEquipe,  nome [Paciente], cns [CNS],
 CONVERT(VARCHAR(10), DATA_nascimento, 103) [Data Nascimento], MAE [Mãe], idpep, prontuario 'EQUIPE - AREA - MICROAREA'
  from 

RECEPCAO.indicadores.vw_pep_siab WHERE IDPep IN 
(
select Cod_pac
from recepcao.dbo.vacinas_pacientes a
inner join recepcao.dbo.vacinas b on b.id = a.id_vacinas
inner join recepcao.dbo.PACIENTES c on c.codigo = a.Cod_pac
inner join recepcao.indicadores.vw_pep_siab D ON D.idpep = A.Cod_pac
where datediff(month, c.dtnasc, DATEADD(MONTH,-1,getdate())) <= 72
GROUP BY  nomeequipe, Cod_pac, id_vacinas, Quant_doses
having Quant_doses >= COUNT(DISTINCT A.ID)
)




