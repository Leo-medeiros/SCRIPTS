/*Clausula WITH TIES - Verifica se existe algum item com o mesmo valor do último item do TOP, caso positivo, ele exibe*/

USE recepcao;
SELECT TOP (993) WITH TIES nome, estadocivil AS ES, * FROM PACIENTES WHERE estadocivil IS NOT NULL
ORDER BY estadocivil

