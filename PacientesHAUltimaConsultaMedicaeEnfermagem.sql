--PACIENTES HIPERTENSOS COM DATA DA ÚLTIMA CONSULTA MÉDICA E DE ENFERMAGEM
USE Recepcao;
SELECT DISTINCT (B.Nome), B.Nomeequipe, B.Data_Nascimento, 
isnull((select top 1 convert(varchar(10), dtatende, 103) from PepMovimentos C 
inner join MedicoProntuario x on c.codigo = x.idmovimento where B.IdPep = C.Codpac
and status = 'F' order by dtatende desc),'') DataUltimaConsultaMedica,
isnull((select top 1 convert(varchar(10), dtatende, 103) from PepMovimentos C
inner join PRONTUARIO_ENFERMAGEM x on c.codigo = x.mov_id where B.IdPep = C.Codpac and status = 'F'
order by dtatende desc),'') DataUltimaConsultaEnfermagem
FROM pessoa_grupo_de_pessoas A
INNER JOIN Indicadores.vw_Pep_SIAB B ON A.Cod_pac = B.IDPep
WHERE A.grupo_de_pessoas_id = 6
AND Ativo = 'S'
ORDER BY B.NomeEquipe, B.Nome

