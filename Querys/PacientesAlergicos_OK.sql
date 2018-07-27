USE recepcao;
SELECT * FROM (
SELECT b.nome, b.Nomeequipe, b.idade, b.mae, a.medicamento FROM alergia a
INNER JOIN indicadores.vw_pep_siab b ON a.codpac = b.idpep
WHERE A.MEDICAMENTO NOT LIKE '%NEGA%'
AND A.ATIVO = 1) AS TEMP





