USE recepcao;
SELECT b.nome, a.medicamento, a.ativo FROM alergia a
INNER JOIN pacientes b ON a.codpac = b.codigo
WHERE codpac = 20595



