/*Subconsultas (Subquery) - É uma declaração SQL embutida em uma consulta externa*/

USE recepcao;
SELECT nome, (SELECT TOP 1 ficha FROM pepmovimentos) 'ficha',* FROM pacientes
WHERE NOME LIKE 'MARIA%' 

SELECT (SELECT 'DANILO') AS TESTE

SELECT 'DANILO' AS TESTE




