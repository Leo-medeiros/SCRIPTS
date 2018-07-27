USE recepcao;
SELECT * FROM pacientes
WHERE codigo NOT IN (5653,5673,5681)

USE recepcao;
SELECT * FROM pacientes
WHERE NOT nome like 'danilo%'
AND NOT localnasc like 'Rio%'