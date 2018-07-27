SELECT * FROM (
select 'Equipe: ' + NomeEquipe NomeEquipe, nome [Paciente], cns [CNS], CONVERT(VARCHAR(10),
 DATA_nascimento, 103) [Data Nascimento], MAE [Mãe], idpep, prontuario 'EQUIPE - AREA - MICROAREA', 
 [dbo].[FNC_RetornaDIFFAnoMesDia](data_nascimento, getdate()) idade_completa,
 datediff(year, c.data_nascimento, dateadd(month, -1, getdate())) idade_em_anos
 from  RECEPCAO.INDICADORES.vw_pep_siab c
 ) AS TEMP