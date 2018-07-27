USE recepcao;
SELECT nome, (SELECT TOP 1 ficha FROM pepmovimentos) 'ficha',* FROM pacientes 



