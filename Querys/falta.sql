--falta consolidado
SET DATEFORMAT DMY
SELECT CONVERT (VARCHAR (20), DATACONSULTA, 103) DATACONSULTA, NOME, qtde FROM (
SELECT convert(date,A.DATA_AGENDA) DATACONSULTA, B.NOME, count(1) qtde  FROM Agenda_FALTA A
INNER JOIN MEDICOS B ON A.CODMED = B.CODIGO
WHERE B.CBO1 IN ('223293', '223228', '223276', '223288', '223232', '223236' , '234450', '322415', '322430', '223244', '322405', '322425' )
AND A.ORIGEM = 'F'
group by convert(date,A.DATA_AGENDA),b.nome) AS TAB
WHERE DATACONSULTA BETWEEN '16/01/2017' AND '16/01/2017'

--falta individual
select [Nome do Paciente], [PRONTUARIO], CONVERT (VARCHAR (20), dataconsulta, 103) DATACONSULTA, [Nome do usuário que marcou falta],[Nome do Profissional]
from
(select b.nome [Nome do Paciente], B.cod_familia [PRONTUARIO], CONVERT (VARCHAR (20), a.data_agenda, 103) DATACONSULTA, d.NomeCompleto [Nome do usuário que marcou falta],c.nome [Nome do Profissional]
from recepcao.dbo.agenda_falta a
inner join recepcao.dbo.pacientes b on a.codpac = b.codigo
inner join recepcao.dbo.medicos c on a.codmed = c.codigo
inner join acesso.dbo.usuarios d on a.usuario = d.codigo
and a.origem = 'F')
as tabelaTemporaria 
WHERE dataconsulta BETWEEN '16/01/2017' AND '16/01/2017'
AND [Nome do Profissional] = 'ALISIA DA CRUZ SANTOS'
