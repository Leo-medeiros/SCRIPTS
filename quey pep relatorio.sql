USE RECEPCAO
GO



SELECT * FROM (

SELECT m.nome [PROFISSIONAL], TM.descricao [DESCRICAO],DATEPART(YEAR, P.DataFinaliza) [ANO],CASE DATEPART(MONTH, p.DataFinaliza)
    WHEN 01
    THEN 'JANEIRO'
    WHEN 2
    THEN 'FEVEREIRO'
    WHEN 3
    THEN 'MARÇO'
    WHEN 4
    THEN 'ABRIL'
    WHEN 5
    THEN 'MAIO'
    WHEN 6
    THEN 'JUNHO'
    WHEN 7
    THEN 'JULHO'
    WHEN 8
    THEN 'AGOSTO'
    WHEN 9
    THEN 'SETEMBRO'
    WHEN 10
    THEN 'OUTUBRO'
    WHEN 11
    THEN 'NOVEMBRO'
    WHEN 12
    THEN 'DEZEMBRO'
END 'MÊS',COUNT(P.Codigo) [TOTAL] FROM PepMovimentos P
INNER JOIN medicos M ON P.codmed = M.CODIGO
INNER JOIN TipoMovimento TM ON P.movimento = TM.codigo
WHERE DATEPART(YEAR,P.DataFinaliza) = '2017'
GROUP BY m.nome , TM.descricao,DATEPART(YEAR, P.DataFinaliza),DATEPART(MONTH, P.DataFinaliza) 
)QUERY