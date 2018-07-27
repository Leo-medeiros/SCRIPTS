USE RECEPCAO
	
	
SET LANGUAGE 'brazilian'
SELECT PAC.nome [Paciente],
       dbo.CalcularIdade(pac.dtnasc) [Idade], VW.sexo,
       FORMAT(PEP.dtatende, 'd') [Data_Atendimento],

       m.nome [Profissional],
       p.NOME [Procedimento], VW.NomeEquipe


FROM PepMovimentos PEP
     INNER JOIN pepmovimentos_soli_procedimento SP ON PEP.Codigo = SP.id_PepMovimentos
     INNER JOIN Procedimentos P ON SP.id_Exame = P.ID
     INNER JOIN medicos m ON m.codigo = pep.codmed
     INNER JOIN PACIENTES PAC ON PAC.codigo = PEP.CODPAC
	INNER JOIN Indicadores.vw_pep_siab VW ON VW.IDPep = PEP.Codigo
