--PACIENTES HIPERTENSOS COM PELO MENOS 3 MEDICAMENTOS HIPERTENSIVOS PRESCRITOS
CREATE VIEW vw_relatorio_ha_medicamentos
AS
SELECT DISTINCT idpep,(B.NOME), B.NomeEquipe, B.Data_Nascimento, 
 case when (SELECT count(DISTINCT DESCRICAO) FROM Pepmovimentos_prescricao C INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO WHERE Id_Medicamento in (375, 103, 104,309, 273, 274, 60, 61, 62, 57, 218, 219, 110, 111, 307, 308, 339, 340, 391, 44, 45, 233, 234, 508) and d.codpac = b.idpep) >= 3 then
    replace(replace(replace(replace((SELECT distinct DESCRICAO FROM Pepmovimentos_prescricao C
    INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO
    WHERE Id_Medicamento in (375, 103, 104,309, 273, 274, 60, 61, 62, 57, 218, 219, 110, 111, 307, 308, 339, 340, 391, 44, 45, 233, 234, 508)
    and d.codpac = b.idpep for xml PATH),'<row>',''),'</row>',''),'<descricao>',''), '</descricao>',' - ') 
    else 
  null end AS Medicamento
FROM pessoa_grupo_de_pessoas A
INNER JOIN Indicadores.vw_pep_siab B ON A.Cod_pac = B.IdPep
WHERE A.grupo_de_pessoas_id = 6
AND A.ATIVO = 'S'
and (case when (SELECT count(DISTINCT DESCRICAO) FROM Pepmovimentos_prescricao C INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO WHERE Id_Medicamento in (375, 103, 104,309, 273, 274, 60, 61, 62, 57, 218, 219, 110, 111, 307, 308, 339, 340, 391, 44, 45, 233, 234, 508) and d.codpac = b.idpep) >= 3 then
    replace(replace(replace(replace((SELECT distinct DESCRICAO FROM Pepmovimentos_prescricao C
    INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO
    WHERE Id_Medicamento in (375, 103, 104,309, 273, 274, 60, 61, 62, 57, 218, 219, 110, 111, 307, 308, 339, 340, 391, 44, 45, 233, 234, 508)
    and d.codpac = b.idpep for xml PATH),'<row>',''),'</row>',''),'<descricao>',''), '</descricao>',' - ') 
    else 
  null end) is not null
ORDER BY B.NOMEEQUIPE, B.NOME

