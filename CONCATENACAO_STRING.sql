/*Concatena��o de strings - � poss�vel concantenar strings usando o operador de concatena��o +*/
USE recepcao;
SELECT nome, cpf, 'Rua ' + rua + ' ' + 'N�mero ' + num + ' ' + 'Complemento ' + 
complemento + ' ' + 'Bairro ' + bairro AS Endereco FROM pacientes;

SELECT 'Danilo ' + 'Biazotto ' + 'da Costa' AS Nome_do_Profissional


