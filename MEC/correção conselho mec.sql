
SELECT SUBSTRING(CONVERT(VARCHAR(10), i.Data, 103), 4, 7) TESTE4EE,
	f.Nome Unidade, g.Nome Area,g.ine Ine,
	i.Data Data, 
	C.ID IDProfissional,
	C.Nome Profissional, 
	e.Tipo Conselho, e.Numero NumeroConselho,
	a.ID_CID CID,

	B.NOME Paciente, 

	j.descricao TipoAlta,
	CONVERT(VARCHAR(10), B.DataNascimento, 103) DataNascimento,
	b.Sexo, b.CNS, b.CPF,
	CAST(i.Observacao As VARCHAR(MAX)) Observacao

FROM Atendimento.Tratamento a
	inner JOIN Pessoa.Paciente b on a.id_Paciente = b.ID
	inner JOIN Pessoa.Profissional c on a.id_Profissional = c.ID
	INNER JOIN Sistema.Conselho e on e.ID_Profissional = c.ID
	inner JOIN Sistema.Unidades f on f.id = b.ID_UnidadeVinculo
	INNER JOIN Sistema.Area g on g.ID = b.ID_Area and g.ID_Unidade = f.ID
	INNER JOIN Atendimento.Alta i on i.ID_Tratamento = a.ID
	INNER JOIN Sistema.TipoAlta j on i.TipoAlta = j.ID
	WHERE B.ID = 15441
	--15214
	--15441
	select * from Pessoa.Profissional
	where Nome = 'THAIS SILVA TRAJANO DE OLIVEIRA'
	

	select * from Sistema.Conselho
	where Tipo = 'cress' and Numero =

	select * from Sistema.Conselho
	where ID_Profissional = 635

	INSERT INTO Sistema.Conselho values (554,null,'CRESS','RJ')
		INSERT INTO Sistema.Conselho values (635,null,'CRESS','RJ')