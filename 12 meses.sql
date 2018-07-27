USE RECEPCAO
GO


SELECT DISTINCT 
	   P.nome [NOME],
	   CONVERT(VARCHAR(10), P.dtnasc,103) [DT_NASCIMENTO],  CASE PG.grupo_de_pessoas_id 
	   WHEN 6 THEN 'Hipertensão Arterial'
        WHEN 7 THEN 'Diabetes'
	   END 'LinhasDeCuidado', P.mae [NOME MAE],
	   vw.NomeEquipe [NOME EQUIPE], vw.prontuario [PRONTUARIO],
	   
	ISNULL((SELECT CONVERT(varchar(10),dtatende, 103)FROM PepMovimentos),'SEM CONSULTA')  [ULTIMA_CONSULTA]
	  
               
FROM PACIENTES P
INNER JOIN pessoa_grupo_de_pessoas PG ON (PG.COD_PAC = P.codigo)
INNER JOIN INDICADORES.VW_PEP_SIAB VW ON p.codigo = VW.IDPep
LEFT JOIN PepMovimentos PEP ON (PEP.codpac = P.codigo)
WHERE p.codigo NOT IN (SELECT CODPAC FROM PepMovimentos)
--and PG.grupo_de_pessoas_id  in (6,7)
and dtatende BETWEEN DATEDIFF(MONTH, -12, dtatende) AND GETDATE()




