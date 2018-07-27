
SELECT * FROM openquery(siab, 'SELECT * FROM siabfacil.pessoa where nome like ''%BERNARDO FAVARO RIBEIRO%''')

exec SP_SIAB_PEP @cpf = '04256527770' 

exec SP_SIAB_PEP @nome = 'Bernardo Favaro Ribeiro'



USE RECEPCAO;
SELECT * FROM PACIENTES 
WHERE NOME = 'Bernardo Favaro Ribeiro'