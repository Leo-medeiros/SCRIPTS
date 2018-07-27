USE RECEPCAO;
select distinct c.NOME, c.NomeEquipe, c.mae, c.cns, c.IDADE, b.Nome Vacina from recepcao.dbo.vacinas_pacientes a
inner join recepcao.dbo.vacinas b on b.id = a.id_vacinas
inner join indicadores.vw_pep_siab c on a.cod_pac = c.idpep
WHERE B.NOME LIKE '%febre amarela%'
order by c.NomeEquipe, c.nome