SET DATEFORMAT DMY
SELECT Especialidade, Profissional, Data, [Tipo de Atendimento], Quantidade
FROM (SELECT DISTINCT Especialidade, Profissional, Data, [Tipo de Atendimento], COUNT(Data) AS Quantidade
FROM (SELECT esp.Nome AS Especialidade, med.nome AS Profissional, CONVERT(varchar, mov.DataFinaliza, 103) AS Data, 
tm.descricao AS [Tipo de Atendimento]
FROM medicos AS med LEFT OUTER JOIN
medesp AS me ON med.CODIGO = me.codmed LEFT OUTER JOIN
Especialidades AS esp ON me.codesp = esp.Codigo LEFT OUTER JOIN
PepMovimentos AS mov ON mov.codmed = med.CODIGO AND mov.Especialidade = esp.Codigo LEFT OUTER JOIN
TipoMovimento AS tm ON mov.movimento = tm.codigo LEFT OUTER JOIN
ClassificacaoRisco AS cr ON mov.Codigo = cr.IDMovimento) AS TempTable
WHERE (Data IS NOT NULL)
AND CONVERT (DATE,DATA) BETWEEN '01/06/2017' AND '08/06/2017'
GROUP BY Data, Especialidade, Profissional, [Tipo de Atendimento]) AS medicos