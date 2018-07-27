USE recepcao;
SELECT a.nome, b.dtatende FROM pacientes a
RIGHT OUTER JOIN pepmovimentos b ON a.codigo = b.codpac
ORDER BY b.dtatende
