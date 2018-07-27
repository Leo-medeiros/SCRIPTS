/* SCRIPT DE DATA CLENAN TABELA Pacientes campo localnasc*/

USE RECEPCAO
GO

SELECT * FROM PACIENTES
WHERE localnasc != 'RIO DE JANEIRO'
AND localnasc != 'SERGIPE' AND localnasc !='SAO PAULO'


update PACIENTES set localnasc = upper (localnasc)
where 

















