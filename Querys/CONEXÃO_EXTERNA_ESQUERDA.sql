USE recepcao;
SELECT a.nome, b.dtatende FROM pacientes a
LEFT OUTER JOIN pepmovimentos b ON a.codigo = b.codpac
ORDER BY b.dtatende
