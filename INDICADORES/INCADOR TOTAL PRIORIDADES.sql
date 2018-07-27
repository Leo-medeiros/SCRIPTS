SELECT 
SUM(HIPERTENCAO) HIPERTENCAO,
SUM(DIABETES) DIABETES,
SUM(HANSENIASE) HANSENIASE,
SUM(TUBERCULOSE) TUBERCULOSE,
SUM(GESTACAO) GESTACAO,
SUM(REMEDIO) REMEDIO,
SUM(MENOR_UM) MENOR_UM,
SUM(MENOR_DOIS) MENOR_DOIS,
SUM(OUTRAS_DOENCAS_CRONICAS) OUTRAS_DOENCAS_CRONICAS,
SUM(FUMANTE) FUMANTE,
SUM(MALARIA) MALARIA,
SUM(DEFICIENCIA) DEFICIENCIA,
SUM(CURATIVOS) CURATIVOS,
SUM(OXIGENIO) OXIGENIO,
SUM(TRATAMENTO_FER) TRATAMENTO_FER,
SUM(TRIAGEM_ODONTO) TRIAGEM_ODONTO,
SUM(UAD) UAD,
SUM(CHAGAS) CHAGAS,
SUM(ACAMADO) ACAMADO,
SUM(EPILEPSIA) EPILEPSIA,
SUM(ALCOOLISMO) ALCOOLISMO,
SUM(INSERCAO_TAR) INSERCAO_TAR

from (

SELECT 
pessoa_grupo.grupo_de_pessoas_id,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 1 THEN 1 ELSE 0 END ALCOOLISMO,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 2 THEN 1 ELSE 0 END EPILEPSIA,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 3 THEN 1 ELSE 0 END HANSENIASE,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 4 THEN 1 ELSE 0 END CHAGAS,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 5 THEN 1 ELSE 0 END GESTACAO,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 6 THEN 1 ELSE 0 END  HIPERTENCAO ,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 7 THEN 1 ELSE 0 END DIABETES ,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 8 THEN 1 ELSE 0 END TUBERCULOSE ,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 9 THEN 1 ELSE 0 END ACAMADO,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 10 THEN 1 ELSE 0 END DEFICIENCIA ,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 11 THEN 1 ELSE 0 END OXIGENIO,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 12 THEN 1 ELSE 0 END MALARIA ,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 14 THEN 1 ELSE 0 END REMEDIO ,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 16 THEN 1 ELSE 0 END TRATAMENTO_FER,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 18 THEN 1 ELSE 0 END INSERCAO_TAR,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 19 THEN 1 ELSE 0 END TRIAGEM_ODONTO,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 20 THEN 1 ELSE 0 END UAD,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 21 THEN 1 ELSE 0 END FUMANTE ,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 27 THEN 1 ELSE 0 END CURATIVOS,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 28 THEN 1 ELSE 0 END MENOR_UM,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 29 THEN 1 ELSE 0 END MENOR_DOIS,
CASE WHEN pessoa_grupo.grupo_de_pessoas_id = 30 THEN 1 ELSE 0 END OUTRAS_DOENCAS_CRONICAS
FROM siabfacil.pessoa AS pessoa
INNER JOIN siabfacil.familia AS familia ON pessoa.familia_id = familia.id
INNER JOIN cnes.lfces038 AS acs ON acs.cod_mun = familia.cod_mun AND acs.cod_area = familia.cod_area AND acs.seq_equipe = familia.seq_equipe AND acs.prof_id = familia.prof_id
LEFT JOIN siabfacil.pessoa_grupo_de_pessoas AS pessoa_grupo ON pessoa_grupo.pessoa_id = pessoa.id
WHERE familia.data_desativacao IS NULL
AND pessoa.data_desativacao IS NULL
) TAB1