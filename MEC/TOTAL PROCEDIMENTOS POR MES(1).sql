--TOTAL DE PROCEDIMENTOS POR MES
USE DBMEC
GO

DECLARE @DATAINI DATETIME
DECLARE @DATAFIM DATETIME

--SET @DATAINI = '01/01/2017'
--SET @DATAFIM = '01/08/2017 23:59:59'

SET DATEFORMAT YMD
SELECT C.NOME, F.NOME UNIDADE, D.CODIGOSUS, D.DESCRICAO,
--SUBSTRING(CONVERT(VARCHAR(10), A.DATA, 103), 4, 7) COMP, 
left (a.data, 4)'ANO',
         CASE DATEPART(MONTH,A.DATA)
         WHEN 1 THEN 'JANEIRO'
         WHEN 2 THEN 'FEVEREIRO'
         WHEN 3 THEN 'MARÇO'
         WHEN 4 THEN 'ABRIL'
         WHEN 5 THEN 'MAIO'
         WHEN 6 THEN 'JUNHO'
         WHEN 7 THEN 'JULHO'
         WHEN 8 THEN 'AGOSTO'
         WHEN 9 THEN 'SETEMBRO'
         WHEN 10 THEN 'OUTUBRO'
         WHEN 11 THEN 'NOVEMBRO'
         WHEN 12 THEN 'DEZEMBRO'
		 END 'MÊS',
		 SUM(A.QTDE) TOTAL
		 
		FROM ATENDIMENTO.LANCAMENTOS A
		INNER JOIN PESSOA.PACIENTE B ON A.ID_PACIENTE = B.ID
		LEFT JOIN PESSOA.PROFISSIONAL C ON A.ID_PROFISSIONAL = C.ID
		LEFT JOIN SISTEMA.CONSELHO E ON E.ID_PROFISSIONAL = C.ID
		INNER JOIN MATERIAIS.PROCEDIMENTO D ON A.ID_PROCEDIMENTO = D.ID
		INNER JOIN SISTEMA.UNIDADES F ON F.ID = B.ID_UNIDADEVINCULO
		INNER JOIN SISTEMA.AREA G ON G.ID = B.ID_AREA AND G.ID_UNIDADE = F.ID
		GROUP BY C.NOME, F.NOME, D.CODIGOSUS,  D.DESCRICAO,
		left (a.data, 4),
		--datepart(year, A.Data),
--SUBSTRING(CONVERT(VARCHAR(10), A.DATA, 103), 4, 7), 
		CASE DATEPART(MONTH,A.DATA)
         WHEN 1 THEN 'JANEIRO'
         WHEN 2 THEN 'FEVEREIRO'
         WHEN 3 THEN 'MARÇO'
         WHEN 4 THEN 'ABRIL'
         WHEN 5 THEN 'MAIO'
         WHEN 6 THEN 'JUNHO'
         WHEN 7 THEN 'JULHO'
         WHEN 8 THEN 'AGOSTO'
         WHEN 9 THEN 'SETEMBRO'
         WHEN 10 THEN 'OUTUBRO'
         WHEN 11 THEN 'NOVEMBRO'
         WHEN 12 THEN 'DEZEMBRO'
		 END 

ORDER BY F.NOME DESC