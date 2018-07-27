SELECT B.IDPEP CODPAC, A.* FROM siabfacil.vw_ficha_deficiente A INNER JOIN INDICADORES.vw_pep_siab B ON A.idsiab = B.IDSIAB

SELECT B.IDPEP CODPAC, A.* FROM siabfacil.vw_ficha_b_hipertenso A INNER JOIN INDICADORES.vw_pep_siab B ON A.idsiab = B.IDSIAB

SELECT B.IDPEP CODPAC, A.* FROM siabfacil.vw_ficha_b_hanseniase A INNER JOIN INDICADORES.vw_pep_siab B ON A.idsiab = B.IDSIAB

SELECT B.IDPEP CODPAC, A.* FROM siabfacil.vw_ficha_b_diabetico A INNER JOIN INDICADORES.vw_pep_siab B ON A.idsiab = B.IDSIAB

SELECT B.IDPEP CODPAC, A.* FROM siabfacil.vw_ficha_b_tuberculose A INNER JOIN INDICADORES.vw_pep_siab B ON A.idsiab = B.IDSIAB

SELECT B.IDPEP CODPAC, A.* FROM siabfacil.vw_ficha_c_crianca A INNER JOIN INDICADORES.vw_pep_siab B ON A.idsiab = B.IDSIAB

SELECT B.IDPEP CODPAC, A.* FROM siabfacil.vw_ficha_gestante A INNER JOIN INDICADORES.vw_pep_siab B ON A.idsiab = B.IDSIAB

SELECT B.IDPEP CODPAC, A.* FROM siabfacil.vw_ficha_A_individual A INNER JOIN INDICADORES.vw_pep_siab B ON A.idsiab = B.IDSIAB