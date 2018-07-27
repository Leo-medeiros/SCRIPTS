/* Select para visualizar quando o paciente nao aparece para o medico*/
/* Pegar o campo código da tabela pacientes e vincular ao paciente na tabela movimentos*/

select * from recepcao.dbo.pacientes
where nome like 'verone %'

select codpac, * from recepcao.dbo.movimentos
--update recepcao.dbo.movimentos set codpac = '762062' 
where SENHA = '1140'
and codpac = '762062'