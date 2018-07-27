--Pacientes que não tomaram vacina de febre amarela
USE RECEPCAO;
select distinct NOME, NomeEquipe, mae, cns, IDADE, 'Não tomou vacina de Febre Amarela' Vacina
from indicadores.vw_pep_siab where idpep not in (
select distinct c.idpep from recepcao.dbo.vacinas_pacientes a 
inner join recepcao.dbo.vacinas b on b.id = a.id_vacinas
inner join indicadores.vw_pep_siab c on a.cod_pac = c.idpep
where datediff(month, data_nascimento, getdate())  between 9 and 708
and c.sexo = 'F'
AND B.NOME LIKE '%febre amarela%')
