USE recepcao;
SELECT nome FROM pacientes
UNION
SELECT nome FROM medicos

USE recepcao;
SELECT nome FROM pacientes
INTERSECT
SELECT nome FROM medicos

USE recepcao;
SELECT nome FROM pacientes
EXCEPT
SELECT nome FROM medicos