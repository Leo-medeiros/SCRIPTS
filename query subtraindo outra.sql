


SELECT (SELECT COUNT(1) FROM(
select  nome, nomeequipe, idade, mae, prontuario, cns from RECEPCAO.INDICADORES.vw_pep_siab 
where recepcao.dbo.CalcularIdade(data_nascimento) between 25 and 64 and sexo = 'F')T2)
-(
SELECT COUNT(1) FROM(
select distinct * from (
select distinct c.nome, NOMEEQUIPE, c.idade, c.mae, c.prontuario, c.cns  from recepcao.dbo.pepmovimentos a 
inner join recepcao.dbo.protocolo_saudemulher b on a.codigo = b.mov_id
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codpac = c.idpep and recepcao.dbo.CalcularIdade(data_nascimento) between 25 and 64 and sexo = 'F'
where dtatende >= DATEADD(YEAR, -3, GETDATE()) AND DTATENDE <= GETDATE()
and   gine_exa_colpocitologico='S'
union all
select distinct c.nome, NOMEEQUIPE, c.idade, c.mae, c.prontuario, c.cns from recepcao.dbo.pacientes a 
inner join recepcao.exames.Colpocitologia b on a.codigo = b.codpac AND b.data >= DATEADD(YEAR, -3, GETDATE()) AND b.data <= GETDATE()
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codigo = c.idpep and recepcao.dbo.CalcularIdade(data_nascimento) between 25 and 64 and c.sexo = 'F'
) q1 )T1)




