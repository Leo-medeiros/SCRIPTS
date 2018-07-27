USE [RECEPCAO]
GO

/****** Object:  View [dbo].[vw_diabeticos_risco]    Script Date: 30/08/2017 10:36:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER VIEW [dbo].[vw_diabeticos_risco]
AS
(

SELECT DISTINCT * FROM (
SELECT distinct (B.NOME), B.NomeEquipe, CONVERT (VARCHAR (20), B.Data_Nascimento, 103) DATA_NASCIMENTO, mae,
isnull((select top 1   'Olho Direito Escavacao : ' +  a.OlhoDirEscavacao  +' | Olho Direito Impossivel Observar : ' + a.OlhoDirImpObservar + ' | Olho Direito Maculopatia Diabetica :' + a.OlhoDirMaculopatia + ' | Olho Direito Turvacao dos Meios: ' + a.OlhoDirTurvacao + ' | Olho Direito Retinopatia Diabetica: ' +
A.OlhoDirRetinopatia + ' | Olho Direito Vasos: ' + a.OlhoDirVasos + ' | Olho Esquerdo Escavacao: ' + a.OlhoesqEscavacao +' | Olho Esquerdo Impossivel Observar: ' + a.OlhoesqImpObservar + ' | Olho Esquerdo Maculopatia Diabetica: ' + a.OlhoesqMaculopatia + ' | Olho Esquerdo Turvacao dos Meios: ' + a.OlhoesqTurvacao + ' | Olho Esquerdo Retinopatia Diabetica: ' +
A.OlhoesqRetinopatia + ' | Olho Esquerdo Vasos: ' + a.OlhoesqVasos + ' | Informacoes Adicionais: ' + a.infoadicoutros  from EXAMES.TeleRetinografia A 
where b.idpep=A.CODPAC ORDER BY ID DESC),'')RETINOGRAFIA, 
ISNULL ((SELECT TOP 1 CID10 FROM PEPMOVIMENTOS_CID PC 
INNER JOIN PEPMOVIMENTOS PM ON PC.ID_PEPMOVIMENTOS = PM.CODIGO
INNER JOIN CID CID ON PC.ID_CID = CID.ID
WHERE PM.CODPAC = B.IDPEP 
AND CID.CID10 IN  ('N18', 'N188', 'I50', 'I500', 'P290', 'H350', 'H351', 'H352', 'H360', 'S08 '    
,'S081'    
,'S088'    
,'S089'    
,'S18 '    
,'S28 '    
,'S281'    
,'S38 '    
,'S382'    
,'S383'    
,'S48 '    
,'S480'    
,'S481'    
,'S489'    
,'S58 '    
,'S580'    
,'S581'    
,'S589'    
,'S68 '    
,'S680'    
,'S681'    
,'S682'    
,'S683'    
,'S684'    
,'S688'    
,'S689'    
,'S78 '    
,'S780'    
,'S781'    
,'S789'    
,'S88 '    
,'S880'    
,'S881'    
,'S889'    
,'S98 '    
,'S980'    
,'S981'    
,'S982'    
,'S983'    
,'S984'    
,'T05 '    
,'T050'    
,'T051'    
,'T052'    
,'T053'    
,'T054'    
,'T055'    
,'T056'    
,'T058'    
,'T059'    
,'T096'    
,'T116'    
,'T136'    
,'T147'    
,'T87 '    
,'T873'    
,'T874'    
,'T875'    
,'T876'    
,'T926'    
,'T936'    
,'Y835'
,'E10'
,'E11'
,'E12'
,'E13')), '') CID,
ISNULL ((SELECT TOP 1 DESCR FROM PEPMOVIMENTOS_CID PC 
INNER JOIN PEPMOVIMENTOS PM ON PC.ID_PEPMOVIMENTOS = PM.CODIGO
INNER JOIN CID CID ON PC.ID_CID = CID.ID
WHERE PM.CODPAC = B.IDPEP 
AND CID.CID10 IN  ('N18', 'N188', 'I50', 'I500', 'P290', 'H350', 'H351', 'H352', 'H360', 'S08 '    
,'S081'    
,'S088'    
,'S089'    
,'S18 '    
,'S28 '    
,'S281'    
,'S38 '    
,'S382'    
,'S383'    
,'S48 '    
,'S480'    
,'S481'    
,'S489'    
,'S58 '    
,'S580'    
,'S581'    
,'S589'    
,'S68 '    
,'S680'    
,'S681'    
,'S682'    
,'S683'    
,'S684'    
,'S688'    
,'S689'    
,'S78 '    
,'S780'    
,'S781'    
,'S789'    
,'S88 '    
,'S880'    
,'S881'    
,'S889'    
,'S98 '    
,'S980'    
,'S981'    
,'S982'    
,'S983'    
,'S984'    
,'T05 '    
,'T050'    
,'T051'    
,'T052'    
,'T053'    
,'T054'    
,'T055'    
,'T056'    
,'T058'    
,'T059'    
,'T096'    
,'T116'    
,'T136'    
,'T147'    
,'T87 '    
,'T873'    
,'T874'    
,'T875'    
,'T876'    
,'T926'    
,'T936'    
,'Y835'
,'E10'
,'E11'
,'E12'
,'E13')), '') DESCRCID,
ISNULL((SELECT TOP 1 HEMOGLOBINA FROM EXAMES.HBA1C_HEMOGLOBINA_GLICADA HG WHERE ISNUMERIC(replace(Hemoglobina, ',', '.')) = 1 AND
convert(float, replace(Hemoglobina, ',', '.')) > 10 AND HG.CODPAC = B.IDPEP), '') HEMOGLOBINAGLICADA,
ISNULL((SELECT TOP 1 CONVERT (VARCHAR (10), HE.data, 103) DATARESULTADO FROM EXAMES.HBA1C_HEMOGLOBINA_GLICADA HE WHERE HE.CODPAC = B.IDPEP AND ISNUMERIC(replace(Hemoglobina, ',', '.')) = 1 AND
convert(float, replace(Hemoglobina, ',', '.')) > 10), '') DATARESULTADO
FROM pessoa_grupo_de_pessoas A
INNER JOIN Indicadores.vw_pep_siab B ON A.Cod_pac = B.IdPep
INNER JOIN PEPMOVIMENTOS C ON B.IDPEP = C.CODPAC
INNER JOIN PEPMOVIMENTOS_CID D ON D.ID_PEPMOVIMENTOS = C.CODIGO
INNER JOIN CID E ON D.ID_CID = E.ID
INNER JOIN EXAMES.hba1c_hemoglobina_glicada HE ON HE.CODPAC = B.IDPEP
WHERE A.grupo_de_pessoas_id = 7
AND A.ATIVO = 'S' 
AND ISNUMERIC(replace(Hemoglobina, ',', '.')) = 1 AND
 convert(float, replace(Hemoglobina, ',', '.')) > 10 --Informar o resultado do exame
and CID10 IN ('N18', 'N188', 'I50', 'I500', 'P290', 'H350', 'H351', 'H352', 'H360', 'S08 '    
,'S081'    
,'S088'    
,'S089'    
,'S18 '    
,'S28 '    
,'S281'    
,'S38 '    
,'S382'    
,'S383'    
,'S48 '    
,'S480'    
,'S481'    
,'S489'    
,'S58 '    
,'S580'    
,'S581'    
,'S589'    
,'S68 '    
,'S680'    
,'S681'    
,'S682'    
,'S683'    
,'S684'    
,'S688'    
,'S689'    
,'S78 '    
,'S780'    
,'S781'    
,'S789'    
,'S88 '    
,'S880'    
,'S881'    
,'S889'    
,'S98 '    
,'S980'    
,'S981'    
,'S982'    
,'S983'    
,'S984'    
,'T05 '    
,'T050'    
,'T051'    
,'T052'    
,'T053'    
,'T054'    
,'T055'    
,'T056'    
,'T058'    
,'T059'    
,'T096'    
,'T116'    
,'T136'    
,'T147'    
,'T87 '    
,'T873'    
,'T874'    
,'T875'    
,'T876'    
,'T926'    
,'T936'    
,'Y835'
,'E10'
,'E11'
,'E12'
,'E13')
) QRY)





GO


