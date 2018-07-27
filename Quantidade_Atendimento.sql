USE RECEPCAO;
SELECT count (A.Nome) AS QuantidadeAtendimento, A.Nome FROM Pacientes A
INNER JOIN Pepmovimentos B ON A.Codigo = B.Codpac
GROUP BY A.Nome
ORDER BY count (A.Nome) DESC

