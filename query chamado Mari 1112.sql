USE RECEPCAO
SELECT DISTINCT NOME_EQUIPE,
       ANO,
       LINHAS_DE_CUIDADO,
       MES, count(codigo) [TOTAL_DE_PACIENTES]
FROM
(
    SELECT  DISTINCT ISNULL(D.NomeEquipe, 'FORA DE AREA') [NOME_EQUIPE],
           DATEPART(YEAR, A.DataFinaliza) [ANO],
           CASE DATEPART(MONTH, a.DataFinaliza)
               WHEN 01
               THEN 'JANEIRO'
               WHEN 02
               THEN 'FEVEREIRO'
               WHEN 03
               THEN 'MARCO'
               WHEN 04
               THEN 'ABRIL'
               WHEN 05
               THEN 'MAIO'
               WHEN 06
               THEN 'JUNHO'
               WHEN 07
               THEN 'JULHO'
               WHEN 08
               THEN 'AGOSTO'
               WHEN 09
               THEN 'SETEMBRO'
               WHEN 10
               THEN 'OUTUBRO'
               WHEN 11
               THEN 'NOVEMBRO'
               WHEN 12
               THEN 'DEZEMBRO'
           END 'MÊS',
           CASE C.grupo_de_pessoas_id
               WHEN 6
               THEN 'HIPERTENSÃO ARTERIAL'
               WHEN 7
               THEN 'DIABETES'
           END 'LINHAS_DE_CUIDADO'
   ,a.Codigo
    FROM PepMovimentos a
         INNER JOIN PACIENTES b ON a.codpac = b.codigo
         INNER JOIN pessoa_grupo_de_pessoas c ON c.COD_PAC = b.CODIGO
         left JOIN Indicadores.vw_pep_siab d ON d.IDPep = a.codpac
    WHERE c.grupo_de_pessoas_id IN(6) and 
          YEAR(a.DataFinaliza) = DATEPART(YEAR, GETDATE())
) QR

group by qr.NOME_EQUIPE, qr.ANO, qr.LINHAS_DE_CUIDADO, qr.MÊS