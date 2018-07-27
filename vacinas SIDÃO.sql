USE RECEPCAO;
SELECT DISTINCT
(
    SELECT TOP 1 nome UNIDADE
    FROM recepcao.dbo.PEP_Parametros
) UNIDADE,
(
    SELECT TOP 1 CNES
    FROM recepcao.dbo.PEP_Parametros
) CNES,
VW.NomeEquipe [EQUIPE],
VW.nome [NOME ADOLESCENTE],
VW.sexo [SEXO],
CONVERT(VARCHAR(10), VW.data_nascimento, 103) [DATA DE NASCIMENTO],vw.idade [IDADE],
vw.cns [CNS],
ISNULL(
(
    SELECT TOP 1 X.CID10
    FROM PEPMOVIMENTOS_CID A
         INNER JOIN PEPMOVIMENTOS B ON A.ID_PEPMOVIMENTOS = B.CODIGO
         INNER JOIN CID X ON A.ID_CID = X.ID
    WHERE A.ACOMPANHAR = 1
          AND vw.IDPEP = B.CODPAC
), '') [COMORBIDADES],
ISNULL(
(
    SELECT TOP 1 X.DESCR
    FROM PEPMOVIMENTOS_CID A
         INNER JOIN PEPMOVIMENTOS B ON A.ID_PEPMOVIMENTOS = B.CODIGO
         INNER JOIN CID X ON A.ID_CID = X.ID
    WHERE A.ACOMPANHAR = 1
          AND VW.IDPEP = B.CODPAC
), '') [DESC_COMORBIDADES],
 
 

ISNULL((SELECT TOP 1 CONCAT('Vacina contra a', V.Doenca_prevenida) FROM Vacinas V
LEFT JOIN RECEPCAO.DBO.vacinas_pacientes VP ON VP.id_vacinas = V.id WHERE V.id =22),'') [BCG],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         LEFT JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 22
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 1 and YEAR(DT_APLICA)>='2011'
),'') [BCG-DATA DE APLICAO],
(SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =23 AND VP.id_vacinas = V.id ) [Anti-Hepatite B monovalente D1],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 23
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 1 and YEAR(DT_APLICA)>='2011'
),'') [Anti-Hepatite B monovalente D1 - DATA DE APLICAÇÃO],

(SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =23 AND VP.id_vacinas = V.id ) [Anti-Hepatite B monovalente D2],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 23
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 2 and YEAR(DT_APLICA)>='2011'
),'') [Anti-Hepatite B monovalente D2 - DATA DE APLICAÇÃO],

(SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =23 AND VP.id_vacinas = V.id ) [Anti-Hepatite B monovalente D3],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 23
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 3  and YEAR(DT_APLICA)>='2011'
),'') [Anti-Hepatite B monovalente D3 - DATA DE APLICAÇÃO] ,
(SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =25 AND VP.id_vacinas = V.id ) [Antipoliomielite Oral R1],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 25
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 1 and YEAR(DT_APLICA)>='2011' ),'') [Antipoliomielite Oral R1 - DATA DE APLICAÇÃO],
    (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =25 AND VP.id_vacinas = V.id ) [Antipoliomielite Oral R2],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 25
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 2  and YEAR(DT_APLICA)>='2011'),'') [Antipoliomielite Oral R2 - DATA DE APLICAÇÃO],
    (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =25 AND VP.id_vacinas = V.id ) [Antipoliomielite Oral R3],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 25
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 3 and YEAR(DT_APLICA)>='2011'),'') [Antipoliomielite Oral R3 - DATA DE APLICAÇÃO],
    (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =25 AND VP.id_vacinas = V.id ) [Antipoliomielite Oral R3],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 25
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 3 and YEAR(DT_APLICA)>='2011'),'') [Antipoliomielite Oral R3 - DATA DE APLICAÇÃO],

     (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =24 AND VP.id_vacinas = V.id ) [Antipoliomielite Inativada D1],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 24
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 1 and YEAR(DT_APLICA)>='2011'),'') [Antipoliomielite Inativada D1 - DATA DE APLICAÇÃO],

      (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =24 AND VP.id_vacinas = V.id ) [Antipoliomielite Inativada D2],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 24
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 2 and YEAR(DT_APLICA)>='2011'),'') [Antipoliomielite Inativada D2 - DATA DE APLICAÇÃO],

      (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =24 AND VP.id_vacinas = V.id ) [Antipoliomielite Inativada D3],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 24
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 3 and YEAR(DT_APLICA)>='2011'),'') [Antipoliomielite Inativada D3 - DATA DE APLICAÇÃO],

      (SELECT TOP 1 CONCAT('Vacina Oral ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =26 AND VP.id_vacinas = V.id ) [Rotavírus Humano D1],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 26
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 1 and YEAR(DT_APLICA)>='2011'),'') [Rotavírus Humano D1 - DATA DE APLICAÇÃO],

     (SELECT TOP 1 CONCAT('Vacina Oral ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =26 AND VP.id_vacinas = V.id ) [Rotavírus Humano D2],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 26
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 2 and YEAR(DT_APLICA)>='2011'),'') [Rotavírus Humano D2 - DATA DE APLICAÇÃO],

     (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =26 AND VP.id_vacinas = V.id ) [Rotavírus Humano D3],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 26
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 3 and YEAR(DT_APLICA)>='2011'),'') [Rotavírus Humano D3 - DATA DE APLICAÇÃO],

     (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =27 AND VP.id_vacinas = V.id ) [Pentavalente D1],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 27
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 1 and YEAR(DT_APLICA)>='2011'),'') [Pentavalente D1 - DATA DE APLICAÇÃO],

     (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =27 AND VP.id_vacinas = V.id ) [Pentavalente D2],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 27
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 2 and YEAR(DT_APLICA)>='2011'),'') [Pentavalente D2 - DATA DE APLICAÇÃO],

    
     (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =27 AND VP.id_vacinas = V.id ) [Pentavalente D3],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 27
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 3 and YEAR(DT_APLICA)>='2011'),'') [Pentavalente D3 - DATA DE APLICAÇÃO],

      (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =28 AND VP.id_vacinas = V.id ) [Antipneumocócica D1],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 28
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 1 and YEAR(DT_APLICA)>='2011'),'') [Antipneumocócica D1 - DATA DE APLICAÇÃO],

     (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =28 AND VP.id_vacinas = V.id ) [Antipneumocócica D2],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 28
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 2 and YEAR(DT_APLICA)>='2011'),'') [Antipneumocócica D2 - DATA DE APLICAÇÃO],

      (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =28 AND VP.id_vacinas = V.id ) [Antipneumocócica D3],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 28
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 3 and YEAR(DT_APLICA)>='2011'),'') [Antipneumocócica D3 - DATA DE APLICAÇÃO],

        (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =28 AND VP.id_vacinas = V.id ) [Antipneumocócica R1],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 28
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 4 and YEAR(DT_APLICA)>='2011'),'') [Antipneumocócica R1 - DATA DE APLICAÇÃO],

    (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =29 AND VP.id_vacinas = V.id ) [Antimeningocócica C D1],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 29
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 1 and YEAR(DT_APLICA)>='2011'),'') [Antimeningocócica C D1 - DATA DE APLICAÇÃO],

    (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =29 AND VP.id_vacinas = V.id ) [Antimeningocócica C D2],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 29
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 2 and YEAR(DT_APLICA)>='2011'),'') [Antimeningocócica C D2 - DATA DE APLICAÇÃO],

     (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =29 AND VP.id_vacinas = V.id ) [Antimeningocócica C R1],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 29
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 3 and YEAR(DT_APLICA)>='2011'),'') [Antimeningocócica C R1 - DATA DE APLICAÇÃO],

      (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =56 AND VP.id_vacinas = V.id ) [Tríplice Bacteriana R1],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 56
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 1 and YEAR(DT_APLICA)>='2011'),'') [Tríplice Bacteriana R1 - DATA DE APLICAÇÃO],

      (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =56 AND VP.id_vacinas = V.id ) [Tríplice Bacteriana R2],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 56
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 2 and YEAR(DT_APLICA)>='2011'),'') [Tríplice Bacteriana R2 - DATA DE APLICAÇÃO],

        (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =56 AND VP.id_vacinas = V.id ) [Tríplice Bacteriana D1],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 56
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 3 and YEAR(DT_APLICA)>='2011'),'') [TrípliceTríplice Bacteriana D1 - DATA DE APLICAÇÃO],

     (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =56 AND VP.id_vacinas = V.id ) [Tríplice Bacteriana D2],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 56
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 4 and YEAR(DT_APLICA)>='2011'),'') [TrípliceTríplice Bacteriana D2 - DATA DE APLICAÇÃO],

     (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =54 AND VP.id_vacinas = V.id ) [Tetra Bacteriana D2],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 54
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 1 and YEAR(DT_APLICA)>='2011'),'') [Tetra Viral D2 - DATA DE APLICAÇÃO],

    (SELECT TOP 1 CONCAT('Vacina ', V.Nome) FROM Vacinas V,RECEPCAO.DBO.vacinas_pacientes VP WHERE V.id =55 AND VP.id_vacinas = V.id ) [Anti-Hepatite A D1],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10),DT_APLICA,103)
    FROM
(
    SELECT B.DT_APLICA,
           ROW_NUMBER() OVER(PARTITION BY cod_pac,
                                          e.nome ORDER BY dt_aplica) Dose
    FROM VACINAS_PACIENTES B
         INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
    WHERE E.ID = 55
          AND VW.IDPEP = B.COD_PAC
) QRY
    WHERE DOSE = 1 and YEAR(DT_APLICA)>='2011'),'') [Anti-Hepatite A D1 - DATA DE APLICAÇÃO]

    /*STATUS VACINA, FALTA TOMAR*/
FROM Indicadores.vw_pep_siab VW
     left JOIN RECEPCAO.DBO.vacinas_pacientes VP ON VW.IDPep = VP.cod_pac
     LEFT JOIN RECEPCAO.DBO.Vacinas V ON VP.id_vacinas = V.id
	WHERE DATEPART(YEAR,VP.Dt_aplica) >='2011' AND VW.idade BETWEEN 0 AND 19
	order by vw.nome





	



    


	



