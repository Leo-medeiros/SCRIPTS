

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
e.id_Exame [COD_PROCEDIMENTO],
f.NOME [NOME_PROCEDIMENTO],
C.cic [PROF_CPF],
G.nome [NOME_PACIENTE],
CONVERT(VARCHAR(10), B.dtatende, 103) [DATA_ATENDIMENTO],
CONVERT(VARCHAR(11), b.dtatende, 108) [HORA_ATENDIMENTO]
FROM recepcao.indicadores.vw_pep_siab a
     INNER JOIN recepcao.dbo.pepmovimentos b ON a.idpep = b.codpac
     INNER JOIN recepcao.dbo.medicos c ON b.codmed = c.codigo
     INNER JOIN recepcao.dbo.cbo d ON c.cbo1 = d.codigo
     INNER JOIN recepcao.dbo.pepmovimentos_soli_procedimento e ON b.codigo = e.id_pepmovimentos
     INNER JOIN RECEPCAO.DBO.PROCEDIMENTOS F ON E.ID_EXAME = F.ID
     INNER JOIN RECEPCAO.DBO.PACIENTES G ON B.codpac = G.codigo
	WHERE MONTH(B.dtatende) BETWEEN DATEPART(MONTH,GETDATE()) - 1 and GETDATE() AND DATEPART(YEAR,B.dtatende) = DATEPART(YEAR,GETDATE())
)AA


union all



SELECT   
(
    SELECT TOP 1 CNES
    FROM recepcao.dbo.PEP_Parametros
) CNES,
(
    SELECT TOP 1 nome UNIDADE
    FROM recepcao.dbo.PEP_Parametros
) UNIDADE, B.cbo [ID_CBO],e.Descricao[CBO_PROFISSIONAL],d.ID [COD_PROCEDIMENTO],d.NOME [NOME_PROCEDIMENTO],
 b.cpf [PROF_CPF],P.nome [NOME_PACIENTE],
 convert(varchar(10),A.data_cad,103) [DATA_ATIVIDADE], CONVERT(varchar(8), a.data_cad,108) [HORA_ATENDIMENTO]
  from recepcao.dbo.atividade_grupo a
inner join acesso.dbo.Usuarios b on a.id_prof_resp=b.Codigo
inner join recepcao.dbo.atividade_procedimentos c on a.id=c.id_atividade
inner join RECEPCAO.dbo.Procedimentos d on c.id_procedimentos = d.CODPROC
inner join RECEPCAO.dbo.CBO e on b.cbo = e.Codigo
inner join RECEPCAO.dbo.atividade_participantes_grupo F ON F.id_atividade = A.id
INNER JOIN RECEPCAO.DBO.PACIENTES P ON F.id_participante = P.codigo
WHERE MONTH(A.data_cad) BETWEEN DATEPART(MONTH,GETDATE()) - 1 and GETDATE() AND DATEPART(YEAR,A.data_cad) = DATEPART(YEAR,GETDATE())











