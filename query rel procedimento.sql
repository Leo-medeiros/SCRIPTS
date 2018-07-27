USE RECEPCAO;
SET DATEFORMAT DMY;


SELECT * FROM (
SELECT Profissional, Ano, Mes, Procedimento, SUM(Total) [Total]
FROM
(
    SELECT UPPER(M.nome) [Profissional],DATEPART(YEAR,pep.dtatende) [Ano],CASE DATEPART(MONTH, pep.dtatende)
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
           END 'Mes',

           dbo.F_ACENTO(P.NOME) [Procedimento],
           SUM(SP.QtdeExames) [Total]
    FROM PepMovimentos PEP
         INNER JOIN pepmovimentos_soli_procedimento SP ON PEP.Codigo = SP.id_PepMovimentos
         INNER JOIN Procedimentos P ON SP.id_Exame = P.ID
         INNER JOIN medicos M ON M.CODIGO = PEP.codmed
    GROUP BY M.nome,
             P.NOME,
		   pep.dtatende,
             m.CODIGO
)REL

group by Profissional, Ano, Mes, Procedimento
)REL