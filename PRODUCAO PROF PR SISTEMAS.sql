

SET DATEFORMAT DMY




SELECT DISTINCT * FROM (
SELECT  
(
    SELECT TOP 1 CNES
    FROM recepcao.dbo.PEP_Parametros
) CNES,
(
    SELECT TOP 1 nome UNIDADE
    FROM recepcao.dbo.PEP_Parametros
) UNIDADE,
c.cbo1 COD_CBO,
d.descricao [CBO_PROFISSIONAL],
CONVERT(VARCHAR(255),C.nome) [PROFISSIONAL],
e.id_Exame [COD_PROCEDIMENTO],
f.NOME [NOME_PROCEDIMENTO],
C.cic [PROF_CPF],
CONVERT(VARCHAR(255),G.nome) [NOME_PACIENTE],
CONVERT(VARCHAR(10), B.dtatende, 103) [DATA_ATENDIMENTO],
CONVERT(VARCHAR(11), b.dtatende, 108) [HORA_ATENDIMENTO]
FROM recepcao.indicadores.vw_pep_siab a
     INNER JOIN recepcao.dbo.pepmovimentos b ON a.idpep = b.codpac
     INNER JOIN recepcao.dbo.medicos c ON b.codmed = c.codigo
     INNER JOIN recepcao.dbo.cbo d ON c.cbo1 = d.codigo
     INNER JOIN recepcao.dbo.pepmovimentos_soli_procedimento e ON b.codigo = e.id_pepmovimentos
     INNER JOIN RECEPCAO.DBO.PROCEDIMENTOS F ON E.ID_EXAME = F.ID
     INNER JOIN RECEPCAO.DBO.PACIENTES G ON B.codpac = G.codigo
	WHERE B.dtatende BETWEEN '01/03/2018 00:00' AND '31/03/2018 23:59'
)AA


union ALL



SELECT   
(
    SELECT TOP 1 CNES
    FROM recepcao.dbo.PEP_Parametros
) CNES,
(
    SELECT TOP 1 nome UNIDADE
    FROM recepcao.dbo.PEP_Parametros
) UNIDADE, B.cbo [ID_CBO],e.Descricao[CBO_PROFISSIONAL],CONVERT(VARCHAR(255),b.NomeCompleto) [PROFISSIONAL],d.CODPROC [COD_PROCEDIMENTO],d.NOME [NOME_PROCEDIMENTO],
 b.cpf [PROF_CPF],CONVERT(VARCHAR(255),P.nome) [NOME_PACIENTE],
 convert(varchar(10),A.data_cad,103) [DATA_ATIVIDADE], CONVERT(varchar(8), a.data_cad,108) [HORA_ATENDIMENTO]
  from recepcao.dbo.atividade_grupo a
inner join acesso.dbo.Usuarios b on a.id_prof_resp=b.Codigo
inner join recepcao.dbo.atividade_procedimentos c on a.id=c.id_atividade
inner join RECEPCAO.dbo.Procedimentos d on c.id_procedimentos = d.CODPROC
inner join RECEPCAO.dbo.CBO e on b.cbo = e.Codigo
inner join RECEPCAO.dbo.atividade_participantes_grupo F ON F.id_atividade = A.id
INNER JOIN RECEPCAO.DBO.PACIENTES P ON F.id_participante = P.codigo
WHERE A.data_atividade  BETWEEN '01/03/2018 00:00' AND '31/03/2018 23:59'










