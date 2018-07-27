USE RECEPCAO
GO

SELECT  DISTINCT 
			 P.nome,CONVERT(VARCHAR(10),P.dtnasc,103) [DT_NASC], 
			 P.mae [MAE], M.nome [PROFISSIONAL], 
			 VW.NomeEquipe [EQUIPE], CONVERT(VARCHAR(10),PM.DataFinaliza,103) [DATA_FINALIZA] FROM PACIENTES P
INNER JOIN PepMovimentos PM ON (P.CODIGO = PM.codpac)
INNER JOIN medicos M ON (PM.codmed = M.CODIGO)
INNER JOIN Indicadores.vw_pep_siab VW ON (PM.codpac = VW.IDPep)
INNER JOIN siabfacil.atendimento_odonto  AO ON (AO.pessoa_id = P.codigo)
INNER JOIN  siabfacil.conduta_encaminhamento_odonto_para_atendimento_odonto SO ON (SO.atendimento_odonto_id = AO.id)
WHERE PM.Especialidade = 1362
AND AO.tipo_consulta_odonto_codigo = 3 AND 
so.conduta_encaminhamento_odonto_codigo = 15
AND PM.DataFinaliza IS NOT NULL


SELECT p.DataFinaliza,* FROM PepMovimentos p
INNER  join siabfacil.atendimento_odonto ao on (ao.pessoa_id = p.codpac)
INNER join siabfacil.conduta_encaminhamento_odonto_para_atendimento_odonto SO ON (SO.atendimento_odonto_id = AO.id)
WHERE p.Especialidade = 1362
AND p.codpac = 6600
 and ao.tipo_consulta_odonto_codigo = 3
and SO.conduta_encaminhamento_odonto_codigo = 15


SELECT PAC.NOME,CONVERT(VARCHAR(10),PAC.dtnasc,103) [DT_NASC],PAC.MAE,
INNER JOIN RECEPCAO.DBO.PepMovimentos PM ON (PAC.codigo = PM.codpac)
INNER JOIN MEDICOS M ON (M.CODIGO =)












