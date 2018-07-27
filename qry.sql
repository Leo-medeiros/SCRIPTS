USE RECEPCAO;
GO
SELECT DISTINCT
       P.NOME,
       CONVERT(VARCHAR(10), P.dtnasc, 103) [DT_NASCIMENTO],
       P.mae [MAE],
	  ISNULL(
(
    SELECT VW.NomeEquipe
    FROM Indicadores.vw_pep_siab VW
    WHERE VW.IDPep = P.codigo
), 'FORA DE AREA') [EQUIPE],
       M.NOME [PROFISSIONAL],
       CONVERT(VARCHAR(10), PM.DataFinaliza, 103) [DT_FINALIZA]
FROM dbo.PACIENTES P
     INNER JOIN PepMovimentos PM ON(PM.codpac = P.codigo)
     INNER JOIN medicos M ON(PM.codmed = M.CODIGO)
WHERE PM.DataFinaliza IS NOT NULL and pm.Especialidade = 1362



--select tipo_consulta_odonto_codigo,* from siabfacil.atendimento_odonto

--select * from siabfacil.tipo_consulta_odonto

--select * from siabfacil.conduta_encaminhamento_odonto_para_atendimento_odonto 

--select * from siabfacil.conduta_encaminhamento_odonto

      AND P.codigo IN
(
    SELECT pessoa_id
    FROM siabfacil.atendimento_odonto AO
    WHERE AO.tipo_consulta_odonto_codigo = 3
          AND ID IN
    (
        SELECT atendimento_odonto_id
        FROM siabfacil.conduta_encaminhamento_odonto_para_atendimento_odonto
        WHERE conduta_encaminhamento_odonto_codigo = 15
    )
);



