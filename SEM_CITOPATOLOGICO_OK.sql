SELECT * FROM (
select  NomeEquipe NomeEquipe,  c.nome , c.cns CNS, c.mae [Mãe] , c.Idade, c.prontuario, C.IDPEP
from RECEPCAO.INDICADORES.vw_pep_siab c
where recepcao.dbo.CalcularIdade(data_nascimento) between 25 and 64 and sexo = 'F'
EXCEPT
select  NomeEquipe NomeEquipe,  cc.nome , cc.cns CNS, cc.mae [Mãe] , cc.Idade, cc.prontuario, CC.IDPEP 
from RECEPCAO.INDICADORES.vw_pep_siab cc where cc.idpep in (
 select codpac 
 from (
 select distinct NOMEEQUIPE, a.codpac  from recepcao.dbo.pepmovimentos a 
 inner join recepcao.dbo.protocolo_saudemulher b on a.codigo = b.mov_id
 inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codpac = c.idpep and recepcao.dbo.CalcularIdade(data_nascimento) between 25 and 64 and sexo = 'F'
 where 
 dtatende >= DATEADD(YEAR, -3, GETDATE()) AND DTATENDE <= GETDATE() and   gine_exa_colpocitologico='S'
 union all
 select distinct NOMEEQUIPE, a.codigo  from recepcao.dbo.pacientes a 
 inner join recepcao.exames.Colpocitologia b on a.codigo = b.codpac  AND b.data >= DATEADD(YEAR, -3, GETDATE()) AND b.data <= GETDATE()
 inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codigo = c.idpep and recepcao.dbo.CalcularIdade(data_nascimento) between 25 and 64 and c.sexo = 'F'
 ) q1
))QRY