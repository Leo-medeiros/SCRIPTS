select tipomov, sum(valor)  from materias.dbo.MOVIMENTO
where tipomov IN ('S','D')
and COMPETENCIA = '052015'
and EmprestimoSN is null
group by tipomov


select tipomov, sum(valor)  from materias.dbo.MOVIMENTO
where tipomov IN ('S','D')
and COMPETENCIA = '052015'
and EmprestimoSN = 'S'
group by tipomov

