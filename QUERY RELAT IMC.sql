USE RECEPCAO

SELECT * FROM (
SELECT P.NOME,
       CONVERT(VARCHAR(10), P.DTNASC, 103) [DT_NASC],
	  VW.Prontuario [PRONTUARIO],
       H.PESO,
       H.ALTURA,
       CASE
           WHEN(H.Altura * H.Altura) IS NOT NULL
           THEN CONVERT(DECIMAL(18, 2), (H.Peso / (H.Altura * H.Altura)))
           ELSE NULL
       END IMC,
       VW.NomeEquipe [EQUIPE], CONVERT(VARCHAR(10), m.dtatende,103) [DATA_DO_REGISTRO]
FROM RECEPCAO.dbo.HistoricoAfericoes H
     INNER JOIN RECEPCAO.DBO.PepMovimentos M ON(H.IDMov = M.Codigo)
     INNER JOIN RECEPCAO.DBO.PACIENTES P ON(M.codpac = P.codigo)
     INNER JOIN RECEPCAO.Indicadores.vw_pep_siab VW ON(VW.IDPep = M.codpac)
WHERE CONVERT(DECIMAL(18, 2), (H.Peso / (H.Altura * H.Altura))) > 50.00
      AND H.peso <> 0
      AND H.Altura <> 0) IMC


	 


	



	 












