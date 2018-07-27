USE DBMEC
GO

set dateformat ymd

select b.Nome [paciente],c.Nome, f.nome Unidade, SUBSTRING(CONVERT(VARCHAR(10), a.data, 103), 4, 7) COMP, d.CodigoSus,  d.Descricao,SUM(a.QTDE) TOTAL 
		 FROM Atendimento.Lancamentos a
		INNER JOIN Pessoa.Paciente b on a.id_Paciente = b.ID
		LEFT JOIN Pessoa.Profissional c on a.id_Profissional = c.ID
		LEFT JOIN Sistema.Conselho e on e.ID_Profissional = c.ID
		INNER JOIN Materiais.Procedimento d on a.ID_Procedimento = d.ID
		INNER JOIN Sistema.Unidades f on f.id = b.ID_UnidadeVinculo
		INNER JOIN Sistema.Area g on g.ID = b.ID_Area and g.ID_Unidade = f.ID
	--	where c.ID_CBO = '223208'
where d.CodigoSus in ('0101010010')
and a.data between '2017-11-01 00:00:00.000'and'2017-11-30 23:59:00.000'
group by c.Nome, f.nome, SUBSTRING(CONVERT(VARCHAR(10), a.data, 103), 4, 7) , d.CodigoSus,  d.Descricao,b.Nome
order by f.Nome, COMP desc
