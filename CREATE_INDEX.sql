/*INDICES - Permitem que as aplicações de banco de dados encontrem os dados mais rapidamente, 
sem ter que ler a tabela toda. Os usuários não vêem os índices - Os índices devem ser criados apenas em tabelas
que recebam muitas consultas*/

USE recepcao
CREATE INDEX ind_pacientes /*Nome do índice*/
ON pacientes (nome) /*Nome da tabela e da coluna*/


