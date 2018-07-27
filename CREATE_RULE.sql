/*Regras - Rules - As regras são configurações que permitem especificar como determinados parâmetros do banco de 
dados devem se comportar, como por exemplo, limitar faixas de valores em colunas, ou especificar valores inválidos
para registros*/

/* Criar regra para que o campo codigo seja maior que 0*/
CREATE RULE rule_pacientes AS @Codigo >0

/*Vincular a regra criada acima com a tabela pacientes*/
EXECUTE sp_bindrule rule_pacientes, 'pacientes.codigo'

