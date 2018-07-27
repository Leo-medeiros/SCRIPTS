
SELECT    *
FROM
(
    SELECT   d.nome, d.idade,d.sexo,d.prontuario,d.mae,a.ficha,d.NomeEquipe [nome_equipe],CASE DATEPART(MONTH, a.DataFinaliza)
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
     CONVERT(VARCHAR(10), A.DataFinaliza, 103) [DT_ATENDE]
    FROM PepMovimentos a
         INNER JOIN PACIENTES b ON a.codpac = b.codigo
         INNER JOIN pessoa_grupo_de_pessoas c ON c.COD_PAC = b.CODIGO
         LEFT JOIN Indicadores.vw_pep_siab d ON d.IDPep = a.codpac
    WHERE c.grupo_de_pessoas_id IN(7)
         AND YEAR(a.DataFinaliza) = DATEPART(YEAR, GETDATE()) AND DATEPART(MONTH, A.DataFinaliza) = '01' AND
	    D.NomeEquipe = 'BARAO'
	  
   
) QR





