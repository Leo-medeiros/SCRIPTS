/* Exemplo de juncao de tabelas, neste exemplo o select traz os campos codigo e nome da pacientes e o campo ficha
da movimentos, o campo chave neste caso eh o codigo*/

use recepcao
select pacientes.codigo, pacientes.nome, movimentos.ficha from pacientes, movimentos
where pacientes.codigo=movimentos.codigo

/* Neste exemplo abaixo, substituimos a letra pelo nome da tabela, para simplificar a consulta*/

use RECEPCAO
select a.codigo, a.nome, b.ficha from pacientes a, movimentos b
where a.codigo=b.codigo

