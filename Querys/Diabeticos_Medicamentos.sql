--DIABETICOS COM PELO MENOS 3 MEDICAMENTOS DIABETICOS PRESCRITOS
USE RECEPCAO;
SELECT DISTINCT idpep,(B.NOME), B.NomeEquipe, substring (prontuario, 6,2) microarea, B.Data_Nascimento, 
 case when (SELECT count(DISTINCT DESCRICAO) FROM Pepmovimentos_prescricao C INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO WHERE Id_Medicamento in (387,388, 282, 332,333,663,664,665 ) and d.codpac = b.idpep) >= 1 then
    replace(replace(replace(replace((SELECT distinct DESCRICAO FROM Pepmovimentos_prescricao C
    INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO
    WHERE Id_Medicamento in (387,388, 282, 332,333,663,664,665 )
    and d.codpac = b.idpep for xml PATH),'<row>',''),'</row>',''),'<descricao>',''), '</descricao>',' - ') 
    else 
  null end AS Medicamento
FROM pessoa_grupo_de_pessoas A
INNER JOIN Indicadores.vw_pep_siab B ON A.Cod_pac = B.IdPep
WHERE A.grupo_de_pessoas_id = 7
AND A.ATIVO <> 'N'
and (case when (SELECT count(DISTINCT DESCRICAO) FROM Pepmovimentos_prescricao C INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO WHERE Id_Medicamento in (387,388, 282, 332,333,663,664,665 ) and d.codpac = b.idpep) >= 1 then
    replace(replace(replace(replace((SELECT distinct DESCRICAO FROM Pepmovimentos_prescricao C
    INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO
    WHERE Id_Medicamento in (387,388, 282, 332,333,663,664,665 )
    and d.codpac = b.idpep for xml PATH),'<row>',''),'</row>',''),'<descricao>',''), '</descricao>',' - ') 
    else 
  null end) is not null
ORDER BY B.NOMEEQUIPE, microarea, B.NOME