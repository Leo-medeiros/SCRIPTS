USE DBMEC
GO

select D.nome Unidade, SUBSTRING(CONVERT(VARCHAR(10), a.data, 103), 4, 7) COMP, b.CodigoSus,  b.Descricao, SUM(a.QTDE) QTDE from [Atendimento].[Lancamentos] a
inner join [Materiais].[Procedimento] b on a.ID_Procedimento = b.ID
inner join Pessoa.Profissional c on c.ID = a.ID_Profissional
inner join sistema.Area d on d.id = c.ID_Area
group by D.nome, SUBSTRING(CONVERT(VARCHAR(10), a.data, 103), 4, 7) , b.CodigoSus,  b.Descricao