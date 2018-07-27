*/NAO IMPRIME AIH, CAMPO MUNICIPIO NA TABELA PACIENTES EM BRANCO, NECESSARIO PESQUISAR O CODMUN NA TABELA 
IBGE E ATUALIZAR NA TABELA PACIENTES*/

select movimento, * from recepcao.dbo.movimentos
where ficha = 2697957

select municipio, * from recepcao.dbo.pacientes
--update acesso.dbo.pacientes set municipio = 21232
where nome = 'LIDIANE NUNES DE LIMA'

select * from recepcao.dbo.ibge 
where nome = 'Itaquaquecetuba'


