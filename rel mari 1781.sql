USE RECEPCAO
GO

SET LANGUAGE 'Brazilian'

SELECT	  A.nome [NOME_PACIENTE],
		  FORMAT(A.data_nascimento,'d') [DATA_NASCIMENTO],
		  a.NomeEquipe [EQUIPE],
		  a.prontuario [PRONTUARIO],
		  FORMAT(B.data_finalizacao,'d') [DATA_DO_PARTO] 
FROM INDICADORES.vw_pep_siab A
    INNER JOIN pessoa_grupo_de_pessoas B ON A.IDPEP = B.COD_PAC
WHERE 
	   B.grupo_de_pessoas_id = 5
	   AND ATIVO = 'N'
	   AND B.data_finalizacao between GETDATE() - 45 and getdate()

