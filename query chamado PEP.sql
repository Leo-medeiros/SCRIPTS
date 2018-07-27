USE RECEPCAO
GO 
SELECT CID10,
       Descricao,
       Quantidade,
	  [dt_atende]
FROM
(
    SELECT c.CID10,
           c.DESCR AS Descricao,
		 CONVERT(VARCHAR(10),P.dtatende, 103) [dt_atende],
           COUNT(mp.CID10) AS Quantidade
    FROM cid AS c
         LEFT OUTER JOIN MedicoProntuario AS mp ON c.ID = mp.CID10
         LEFT OUTER JOIN PepMovimentos AS p ON mp.IDMovimento = p.Codigo
         LEFT OUTER JOIN Especialidades AS esp ON p.Especialidade = esp.Codigo
         LEFT OUTER JOIN medicos AS med ON p.codmed = med.CODIGO
         LEFT OUTER JOIN ClassificacaoRisco AS cr ON p.Codigo = cr.IDMovimento
    GROUP BY c.CID10,
             c.DESCR,
		   CONVERT(VARCHAR(10),P.dtatende, 103)
    HAVING(COUNT(mp.CID10) > 0)
) AS TempTable;