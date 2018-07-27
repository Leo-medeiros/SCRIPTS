USE recepcao;
SELECT B.NOME , COUNT(*) AS QUANTIDADE, CASE A.Movimento When 1 THEN 'Consulta Agendada'
WHEN 2 THEN 'Demanda Espontanea'
WHEN 3 THEN 'Visita Domiciliar'
WHEN 4 THEN 'ADM'
WHEN 6 THEN 'Serviços' 
END 'TipoConsulta' FROM pepmovimentos A
INNER JOIN MEDICOS B ON A.CODMED = B.CODIGO
WHERE A.datafinaliza BETWEEN '2015-08-01 00:17:10.467'AND'2016-08-31 23:17:10.467'
GROUP BY B.NOME, a.movimento
ORDER BY B.NOME