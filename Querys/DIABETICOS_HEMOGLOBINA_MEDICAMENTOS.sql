--DIABETICOS COM PELO MENOS 3 MEDICAMENTOS DIABETICOS PRESCRITOS
USE RECEPCAO;
SELECT DISTINCT idpep,(B.NOME), B.NomeEquipe, substring (prontuario, 6,2) microarea, B.Data_Nascimento, 
 case when (SELECT count(DISTINCT DESCRICAO) FROM Pepmovimentos_prescricao C INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO WHERE Id_Medicamento in (339,340, 110,111, 233, 234, 146) and d.codpac = b.idpep) >= 1 then
    replace(replace(replace(replace((SELECT distinct DESCRICAO FROM Pepmovimentos_prescricao C
    INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO
    WHERE Id_Medicamento in (387,388, 282, 332,333,663,664,665 )
    and d.codpac = b.idpep for xml PATH),'<row>',''),'</row>',''),'<descricao>',''), '</descricao>',' - ') 
    else 
  null end AS Medicamento,


 c.Hemoglobina


FROM pessoa_grupo_de_pessoas A
INNER JOIN Indicadores.vw_pep_siab B ON A.Cod_pac = B.IdPep
inner join 
(
		select aa.codpac,  aA.Hemoglobina
		FROM EXAMES.hba1c_hemoglobina_glicada aa
		INNER JOIN indicadores.vw_pep_siab bb on aa.codpac = bb.idpep
		WHERE
		ISNUMERIC(replace(aa.Hemoglobina, ',', '.')) = 1 AND
		convert(float, replace(aa.Hemoglobina, ',', '.')) > 10
		and aa.Hemoglobina is not null
 ) c on c.codpac = a.COD_PAC

--WHERE A.grupo_de_pessoas_id = 7
--AND A.ATIVO = 'S'
WHERE (case when (SELECT count(DISTINCT DESCRICAO) FROM Pepmovimentos_prescricao C INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO WHERE Id_Medicamento in (339,340, 110,111, 233, 234, 146 ) and d.codpac = b.idpep) >= 1 then
    replace(replace(replace(replace((SELECT distinct DESCRICAO FROM Pepmovimentos_prescricao C
    INNER JOIN PEPMOVIMENTOS D ON C.ID_Pepmovimentos = D.CODIGO
    WHERE Id_Medicamento in (387,388, 282, 332,333,663,664,665 )
    and d.codpac = b.idpep for xml PATH),'<row>',''),'</row>',''),'<descricao>',''), '</descricao>',' - ') 
    else 
  null end) is not null
ORDER BY B.NOMEEQUIPE, microarea, B.NOME