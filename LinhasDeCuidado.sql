USE Recepcao;
SELECT DISTINCT (B.Nome), B.Nomeequipe, B.Data_Nascimento, 
isnull((select top 1 convert(varchar(10), dtatende, 103) from PepMovimentos C 
inner join MedicoProntuario x on c.codigo = x.idmovimento where B.IdPep = C.Codpac
and status = 'F' order by dtatende desc),'') DataUltimaConsultaMedica,
isnull((select top 1 convert(varchar(10), dtatende, 103) from PepMovimentos C
inner join PRONTUARIO_ENFERMAGEM x on c.codigo = x.mov_id where B.IdPep = C.Codpac and status = 'F'
order by dtatende desc),'') DataUltimaConsultaEnfermagem,
CASE A.grupo_de_pessoas_id WHEN 3 THEN 'Hanseníase'
WHEN 5 THEN 'Gestante'
WHEN 6 THEN 'Hipertensão Arterial'
WHEN 7 THEN 'Diabetes'
WHEN 8 THEN 'Tuberculose'
WHEN 10 THEN 'Deficiente'
WHEN 1000 THEN 'Saúde Mental'
WHEN 1001 THEN 'Criança'
END 'LinhasDeCuidado', a.ATIVO
FROM pessoa_grupo_de_pessoas A
INNER JOIN Indicadores.vw_Pep_SIAB B ON A.Cod_pac = B.IDPep






