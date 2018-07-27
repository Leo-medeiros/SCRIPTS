USE RECEPCAO

GO

SELECT e.Nome,count(P.Especialidade) FROM PepMovimentos P
INNER JOIN Especialidades E ON (P.Especialidade = E.Codigo)
WHERE DATEPART(YEAR,P.dtatende) = DATEPART(YEAR,GETDATE())
group by e.Nome