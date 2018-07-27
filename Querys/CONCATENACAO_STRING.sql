/*Concatenação de strings - É possível concantenar strings usando o operador de concatenação +*/
USE recepcao;
SELECT nome, cpf, 'Rua ' + rua + ' ' + 'Número ' + num + ' ' + 'Complemento ' + 
complemento + ' ' + 'Bairro ' + bairro AS Endereco FROM pacientes;

SELECT 'Danilo ' + 'Biazotto ' + 'da Costa' AS Nome_do_Profissional


