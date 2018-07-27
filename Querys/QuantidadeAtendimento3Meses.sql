USE RECEPCAO;
SELECT B.NomeEquipe, B.Nome AS NomePaciente, B.Idade, B.CNS, A.DataFinaliza AS DataAtendimento,
CASE A.Movimento When 1 THEN 'Demanda Programada' ELSE 'Demanda Espontânea' END 'TipoConsulta'
FROM Pepmovimentos A
INNER JOIN  Indicadores.vw_pep_siab B ON A.Codpac = B.Idpep
WHERE a.Datafinaliza >='2017-01-01 00:39:04.000'
AND a.Especialidade = 323
AND A.Movimento in (1,2)
ORDER BY B.NomeEquipe, A.movimento, A.DataFinaliza


--SELECT * FROM TIPOMOVIMENTO

