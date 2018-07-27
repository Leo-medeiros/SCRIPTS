--PACIENTES HIPERTENSOS COM DATA DA ÚLTIMA CONSULTA MÉDICA E DE ENFERMAGEM E PA
USE Recepcao;
SET DATEFORMAT DMY
SELECT * FROM (
SELECT DISTINCT (C.Nome), C.Nomeequipe, CONVERT(VARCHAR(10),C.DATA_NASCIMENTO,103) DATA_NASCIMENTO, C.prontuario, C.cns, 
isnull((select top 1 convert(varchar(10), dtatende, 103) from PepMovimentos D 
inner join MedicoProntuario x on D.codigo = x.idmovimento where C.IdPep = D.Codpac
and status = 'F' order by dtatende desc),'') DataUltimaConsultaMedica,
isnull((select top 1 convert(varchar(10), dtatende, 103) from PepMovimentos D
inner join PRONTUARIO_ENFERMAGEM x on D.codigo = x.mov_id where C.IdPep = D.Codpac and status = 'F'
order by dtatende desc),'') DataUltimaConsultaEnfermagem, 
ISNULL ((SELECT TOP 1 A.PRESSAOSISTOLICA FROM HistoricoAfericoes A
INNER JOIN PEPMOVIMENTOS B ON A.IDMov = B.CODIGO
WHERE B.CODPAC = C.IDPEP ORDER BY A.ID DESC),'') [Pressao Arterial Sistolica], 
ISNULL ((SELECT TOP 1 A.PRESSAODIASTOLICA FROM HistoricoAfericoes A
INNER JOIN PEPMOVIMENTOS B ON A.IDMov = B.CODIGO
WHERE B.CODPAC = C.IDPEP ORDER BY A.ID DESC),'') [Pressao Arterial Diastolica]
FROM pessoa_grupo_de_pessoas A
INNER JOIN Indicadores.vw_Pep_SIAB C ON A.Cod_pac = C.IDPep
WHERE A.grupo_de_pessoas_id = 6
AND Ativo <> 'N') QRY
where [Pressao Arterial Diastolica] = 90




