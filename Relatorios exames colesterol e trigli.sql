/*a enfermeira quer um relatório com o resultado de triglicerídeos, colesterol LDL e Total alterados*/

-- triglicerídeos
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT VW.nome [Nome],
           VW.NomeEquipe [Nome Equipe],
           VW.idade [Idade],
           VW.cns [Cns],
           VW.mae [Nome Mae],
           VW.prontuario [Prontuario],
		 CONVERT(VARCHAR(10),T.DATA,103) [Data Resultado],
           T.resultado [Resultado],
		 T.observacao

    FROM RECEPCAO.exames.Trigliceridios T
         INNER JOIN RECEPCAO.Indicadores.vw_pep_siab VW ON(T.codpac = VW.IDPep)
       WHERE ISNUMERIC(T.resultado) = 1  and
       convert(numeric(6,2), REPLACE(T.Resultado, ',', '.'))  > 499.0
   
) QRY


-- colesterol ldl 2 A 19 ANOS
SET DATEFORMAT DMY
SELECT *
FROM
(

    SELECT VW.nome [Nome],
           VW.NomeEquipe [Nome Equipe],
           VW.idade [Idade],
           VW.cns [Cns],
           VW.mae [Nome Mae],
           VW.prontuario [Prontuario],
		  CONVERT(VARCHAR(10),C.DATA,103) [Data Resultado],
           C.resultado [Resultado],
		 C.observacao [Observacao]
    FROM RECEPCAO.exames.colesterol_ldl C
         INNER JOIN RECEPCAO.Indicadores.vw_pep_siab VW ON(C.codpac = VW.IDPep)
	    WHERE ISNUMERIC(C.resultado) = 1 AND VW.idade BETWEEN 02 AND 19
	     AND REPLACE(C.resultado, ',', '.') > 129.0
) QRY1




-- colesterol ldl MAIOR QUE 19
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT VW.nome [Nome],
           VW.NomeEquipe [Nome Equipe],
           VW.idade [Idade],
           VW.cns [Cns],
           VW.mae [Nome Mae],
           VW.prontuario [Prontuario],
		  CONVERT(VARCHAR(10),C.DATA,103) [Data Resultado],
           C.resultado [Resultado],
		 C.observacao [Observacao]
    FROM RECEPCAO.exames.colesterol_ldl C
         INNER JOIN RECEPCAO.Indicadores.vw_pep_siab VW ON(C.codpac = VW.IDPep)
	    WHERE ISNUMERIC(C.resultado) = 1 AND VW.idade > 19
	     AND REPLACE(C.resultado, ',', '.') > 189.0
) QRY2





-- colesterol total de 2 a 19 anos
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT VW.nome [Nome],
           VW.NomeEquipe [Nome Equipe],
           VW.idade [Idade],
           VW.cns [Cns],
           VW.mae [Nome Mae],
           VW.prontuario [Prontuario],
		  CONVERT(VARCHAR(10),CT.DATA,103) [Data Resultado],
           CT.resultado [Resultado],
		 CT.observacao
         FROM RECEPCAO.exames.Colesterol_total CT
         INNER JOIN RECEPCAO.Indicadores.vw_pep_siab VW ON(CT.CODPAC = VW.IDPep)
    WHERE ISNUMERIC(ct.resultado) = 1 
     AND  REPLACE(CT.resultado, ',', '.') > 199.0 and vw.idade between 02 and 19 
   ) QRY3
 



-- colesterol total maior de 19
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT VW.nome [Nome],
           VW.NomeEquipe [Nome Equipe],
           VW.idade [Idade],
           VW.cns [Cns],
           VW.mae [Nome Mae],
           VW.prontuario [Prontuario],
		  CONVERT(VARCHAR(10),CT.DATA,103) [Data Resultado],
           CT.resultado [Resultado],
		 CT.observacao
         FROM RECEPCAO.exames.Colesterol_total CT
         INNER JOIN RECEPCAO.Indicadores.vw_pep_siab VW ON(CT.CODPAC = VW.IDPep)
    WHERE ISNUMERIC(ct.resultado) = 1 
     AND REPLACE(CT.resultado, ',', '.') > 239.0 and vw.idade > 19
   ) QRY4
 
















