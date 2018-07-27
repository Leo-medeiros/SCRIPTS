/*Total de Atendimentos*/
USE recepcao;
SELECT COUNT(*) FROM pepmovimentos
WHERE datafinaliza BETWEEN '2015-08-01 00:17:10.467'AND'2016-08-31 23:17:10.467'

/*Total de consultas médicas*/
USE recepcao;
SELECT COUNT(*) FROM pepmovimentos
WHERE datafinaliza BETWEEN '2015-08-01 00:17:10.467'AND'2016-08-31 23:17:10.467'
AND Especialidade = 323

/*Total de Atendimentos*/
USE recepcao;
SELECT COUNT(*) FROM pepmovimentos
WHERE datafinaliza BETWEEN '2016-01-01 00:17:10.467'AND'2016-08-31 23:17:10.467'

/*Total de consultas médicas*/
USE recepcao;
SELECT COUNT(*) FROM pepmovimentos
WHERE datafinaliza BETWEEN '2016-01-01 00:17:10.467'AND'2016-08-31 23:17:10.467'
AND Especialidade = 323

