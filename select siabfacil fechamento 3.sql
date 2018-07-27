set dateformat ymd

truncate table TempFechamento
go

insert into TempFechamento (Profissional, cargo, ficha, Atendimento, Paciente, Sexo, Data_Nasc, idade, cpf, cod_familia, cartaosus, cod_sus,
descricao, equipe, id_tipo_monitoramento)
(
select distinct b.nome Profissional, g.descricao cargo, a.ficha, convert(varchar(10),a.dtatende, 103) Atendimento, c.nome Paciente, c.sexo, 
convert(varchar(10),c.dtnasc, 103) Data_Nasc, (recepcao.dbo.CalcularIdade(c.dtnasc)) idade, c.cpf, c.cod_familia, c.cartaosus, f.codproc cod_sus,
h.descricao, b.equipe, h.id id_tipo_monitoramento 
from recepcao.dbo.pepmovimentos a
inner join recepcao.dbo.medicos b on a.codmed=b.codigo
inner join recepcao.dbo.pacientes c on a.codpac=c.codigo
inner join recepcao.dbo.pepmovimentos_soli_procedimento e on a.codigo=e.id_pepmovimentos
inner join recepcao.dbo.procedimentos f on e.id_exame=f.id
inner join recepcao.dbo.Pep_SF_PerfilMonitorador g		on g.id=b.perfilmonitorador
inner join recepcao.dbo.Pep_SF_tipo_de_monitoramento h	on f.codproc=h.cod_sus
where dtatende between '2015/11/01 00:00'and'2015/11/30 23:00'


union


select   distinct e.nome profissional, g.descricao cargo, d.ficha, convert(varchar(10),d.dtatende, 103) Atendimento, f.nome paciente, f.sexo,
convert(varchar(10),f.dtnasc, 103) Data_Nasc, (recepcao.dbo.CalcularIdade(f.dtnasc)) idade, f.cpf, f.cod_familia, f.cartaosus, c.cod_sus,
 c.descricao, E.EQUIPE, c.id id_tipo_monitoramento 
from recepcao.dbo.Pep_SF_atendimento a
inner join recepcao.dbo.Pep_SF_monitoramento b			on a.id=b.atendimento_id
inner join recepcao.dbo.Pep_SF_tipo_de_monitoramento c	on b.tipo_de_monitoramento_id=c.id
inner join recepcao.dbo.PepMovimentos d					on d.Codigo=a.id_pepmov
inner join recepcao.dbo.medicos e						on d.codmed = e.codigo
inner join recepcao.dbo.pacientes f						on d.codpac = f.codigo
inner join recepcao.dbo.Pep_SF_PerfilMonitorador g		on g.id=e.perfilmonitorador
inner join recepcao.dbo.PepMovimentos_Soli_Procedimento h on d.codigo=h.id_pepmovimentos
where  f.codigo<>1
and    month (d.dtatende)=11
and    

(
	cod_sus is not null 
	or
	(
		c.descricao = 'CONSULTA A RESIDENTES FORA DA ÁREA' or
		c.descricao = 'CONSULTA A RESIDENTES FORA DA ÁREA (ENF)' or
		c.descricao = 'CONSULTA A RESIDENTES DENTRO DA AREA' or
		c.descricao = 'CONSULTA A RESIDENTE DENTRO DA AREA (ENF)' or
		c.descricao like 'PUERICUL%' or
		c.descricao = 'PRÉ-NATAL' or
		c.descricao = 'DIABETE' or
		c.descricao = 'HIPERTENSÃO ARTERIAL' or
		c.descricao like '%TUBERCULOSE%' or
		c.descricao like '%CITO%' or
		c.descricao like '%CONSULTA DE ENF%' or
		c.descricao like '%CURATIVO%' or
		c.descricao like '%INALA%' or
		c.descricao like '%INJE%' or
		c.descricao like '%PONTO%' or
		c.descricao like '%DOMICILIAR%'
		))


)

select * from TempFechamento


------------------------------------------------------------------------------------------------------------------------------------
--select * from recepcao.dbo.TempFechamento
----update recepcao.dbo.tempfechamento set atendimento = NULL
--where   cod_familia is NULL


--and     cod_sus=cod_sus
--and     ficha=3287
----and equipe = substring(cod_familia,1,4) and descricao like '%fora%'  --  segunda limpeza
----and    atendimento is not NULL
----and    cod_familia is NULL



