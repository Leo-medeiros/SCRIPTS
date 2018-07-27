USE recepcao
SELECT b.nome,recepcao.dbo.calcularidadeatende(b.dtnasc, a.data_inicial)'Idade',* FROM pessoa_grupo_de_pessoas a
INNER JOIN pacientes b ON a.cod_pac = b.codigo
WHERE a.grupo_de_pessoas_id = '6'
AND b.sexo = 'F'
AND recepcao.dbo.calcularidadeatende (b.dtnasc, a.data_inicial) BETWEEN '10'AND'49'
AND a.data_inicial = '2016-02-17 15:47:14.150'
ORDER BY b.nome

SELECT * FROM pessoa_grupo_de_pessoas
WHERE grupo_de_pessoas_id = '6'
AND data_inicial IS NULL


