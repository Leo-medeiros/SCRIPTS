/*INDICES - Permitem que as aplica��es de banco de dados encontrem os dados mais rapidamente, 
sem ter que ler a tabela toda. Os usu�rios n�o v�em os �ndices - Os �ndices devem ser criados apenas em tabelas
que recebam muitas consultas*/

USE recepcao
CREATE INDEX ind_pacientes /*Nome do �ndice*/
ON pacientes (nome) /*Nome da tabela e da coluna*/


