USE RECEPCAO
GO
CREATE VIEW vw_relatorio_antidepressivos
AS
SELECT DISTINCT (B.NOME), B.NomeEquipe, B.Data_Nascimento, B.IDADE, B.SEXO, B.PRONTUARIO,
case when (SELECT count(DISTINCT DESCRICAO) FROM Pepmovimentos_prescricao C 
 INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO WHERE Id_Medicamento in 
 (46, 140, 263, 324, 455) 
 and d.codpac = b.idpep) >= 1 then
    replace(replace(replace(replace((SELECT distinct DESCRICAO FROM Pepmovimentos_prescricao C
    INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO
    WHERE Id_Medicamento in 
	(46, 140, 263, 324, 455)  
    and d.codpac = b.idpep for xml PATH),'<row>',''),'</row>',''),'<descricao>',''), '</descricao>',' - ') 
    else 
  null end AS Medicamento
 FROM PEPMOVIMENTOS A
INNER JOIN INDICADORES.VW_PEP_SIAB B ON A.CODPAC = B.IDPEP
INNER JOIN PEPMOVIMENTOS_PRESCRICAO C ON A.CODIGO = C.ID_PEPMOVIMENTOS
WHERE C.ID_MEDICAMENTO IN (46, 140, 263, 324, 455)   

