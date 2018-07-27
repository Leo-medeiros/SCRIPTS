SELECT * FROM (
select distinct c.NOME, c.NomeEquipe, c.mae, c.cns, c.IDADE from recepcao.dbo.vacinas_pacientes a
inner join recepcao.dbo.vacinas b on b.id = a.id_vacinas
inner join indicadores.vw_pep_siab c on a.cod_pac = c.idpep
--where c.idade between '0'and '19'
) AS TEMP


