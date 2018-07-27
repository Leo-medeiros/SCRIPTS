USE [RECEPCAO]
GO

/****** Object:  View [dbo].[vw_relatorio_ha_risco]    Script Date: 29/08/2017 11:22:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create VIEW [dbo].[vw_relatorio_ha_risco]
AS
select DISTINCT * from (
SELECT DISTINCT (B.NOME), B.NomeEquipe, CONVERT (VARCHAR (20), B.Data_Nascimento, 103) DATA_NASCIMENTO, cid.CID10 CID, cid.DESCR descrCid,
case when (SELECT count(DISTINCT DESCRICAO) FROM Pepmovimentos_prescricao C INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO WHERE Id_Medicamento in (375, 103, 104,309, 273, 274, 60, 61, 62, 57, 218, 219, 110, 111, 307, 308, 339, 340, 391, 44, 45, 233, 234, 508) and d.codpac = b.idpep) >= 3 then
replace(replace(replace(replace((SELECT distinct DESCRICAO FROM Pepmovimentos_prescricao C
INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO
WHERE Id_Medicamento in (375, 103, 104,309, 273, 274, 60, 61, 62, 57, 218, 219, 110, 111, 307, 308, 339, 340, 391, 44, 45, 233, 234, 508)
and d.codpac = b.idpep for xml PATH),'<row>',''),'</row>',''),'<descricao>',''), '</descricao>',' - ') 
else 
null end AS Medicamento
FROM pessoa_grupo_de_pessoas A
INNER JOIN Indicadores.vw_pep_siab B ON A.Cod_pac = B.IdPep
INNER JOIN PEPMOVIMENTOS D ON D.CODPAC = B.IDPEP
iNNER JOIN PEPMOVIMENTOS_CID PC ON PC.ID_PEPMOVIMENTOS = D.CODIGO
INNER JOIN CID CID ON PC.ID_CID = CID.ID
WHERE A.grupo_de_pessoas_id = 6
AND A.ATIVO = 'S'
and cid.CID10 IN ('I130', 'I131', 'I132', 'n18', 'n188', 'i110', 'i50', 'i500', 'p290', 'I10') 
AND (case when (SELECT count(DISTINCT DESCRICAO) FROM Pepmovimentos_prescricao C INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO WHERE Id_Medicamento in (375, 103, 104,309, 273, 274, 60, 61, 62, 57, 218, 219, 110, 111, 307, 308, 339, 340, 391, 44, 45, 233, 234, 508) and d.codpac = b.idpep) >= 3 then
replace(replace(replace(replace((SELECT distinct DESCRICAO FROM Pepmovimentos_prescricao C
INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO
WHERE Id_Medicamento in (375, 103, 104,309, 273, 274, 60, 61, 62, 57, 218, 219, 110, 111, 307, 308, 339, 340, 391, 44, 45, 233, 234, 508)
and d.codpac = b.idpep for xml PATH),'<row>',''),'</row>',''),'<descricao>',''), '</descricao>',' - ') 
else 
null end) is not null
)QRY



GO



