USE RECEPCAO

GO
SELECT * FROM (
SELECT 
	vw.nome 'Nome',vw.NomeEquipe 'Nome_Equipe',
	u.unidade 'Unidade_de_referencia', 
	vw.prontuario, case vw.sexo 
		when 'M'
		then 'MASCULINO'
		when 'F'
		then 'FEMININO'
		end 'sexo', 
	CONVERT(VARCHAR(10), vw.data_nascimento, 103) 'dt_nascimento',
	vw.cns,CONVERT(VARCHAR(10),p.dtatende,103) 'dt_atendimento'
 FROM Indicadores.vw_pep_siab vw 
inner join PEPMOVIMENTOS p on vw.IDPep = p.codpac
inner join ubs u on p.id_ubs = u.id_ubs
where p.id_ubs is not null)NV_RELAT
