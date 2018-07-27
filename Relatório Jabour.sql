set dateformat dmy

select b.nome 'Nome Profissional',c.nome 'Nome Paciente',a.ficha, c.sexo 'Sexo Paciente', 
case when datediff(year,c.dtnasc,GETDATE()) = 0 then datediff(month,c.dtnasc,GETDATE()) else datediff(year,c.dtnasc,GETDATE()) end idade, d.descricao 'Tipo de Consulta', f.nome'Procedimento',a.dtatende 'Data Atendimento' 
from recepcao.dbo.pepmovimentos a
inner join recepcao.dbo.medicos b on a.codmed=b.codigo
inner join recepcao.dbo.pacientes c on a.codpac=c.codigo
inner join recepcao.dbo.tipomovimento d on a.movimento=d.codigo
inner join recepcao.dbo.pepmovimentos_soli_procedimento e on a.codigo=e.id_pepmovimentos
inner join recepcao.dbo.procedimentos f on e.id_exame=f.id
where dtatende between '01/11/2015 00:00'and'26/11/2015 23:00'
and b.nome = 'LILIANA GONZALEZ CABALLERO'
order by c.nome


