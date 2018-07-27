/* Relatorio antimicrobiano SCIH */

use materias
select a.codprod, c.nome, d.abreviacao, sum(qtde), b.nome from movimento a
inner join setor b on a.setor = b.setor
inner join produto c on a.codprod = c.codprod
inner join apresenta d on d.codigo = c.apresenta
where competencia = 072015
and a.grupo = 1
and a.subgrupo in ('75','72','68','67','33','66','65','63','62','61','60','59','58','64','74')
and tipomov = 'S'
and a.subestoque = 7
group by a.codprod, c.nome, d.abreviacao, b.nome
order by c.nome, b.nome