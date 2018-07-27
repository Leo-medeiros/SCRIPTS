USE RECEPCAO;
SET DATEFORMAT DMY;
SELECT *
FROM
(
    SELECT DISTINCT
           vw.nome [Nome],
           vw.idade [Idade],
           vw.Cor [Cor],
           isnull(
                 (
                     SELECT DESCRICAO
                     FROM siabfacil2.vw_escolaridade E
                     WHERE E.ID = SIAB.escolaridade_id
                 ), 'NÃO INFORMADO') [Escolaridade],
           CONVERT(VARCHAR(3), H.PressaoSistolica)+' x'+CONVERT(VARCHAR(3), h.PressaoDiastolica) [Ultima_PA],
           CASE
               WHEN(H.Altura * H.Altura) IS NOT NULL
               THEN CONVERT(DECIMAL(18, 2), (H.Peso / (H.Altura * H.Altura)))
               ELSE NULL
           END IMC,
           C.CID10 [CID],
           CONVERT(VARCHAR(103), h.Data, 103) [Data]
    FROM RECEPCAO.Indicadores.vw_pep_siab VW
         INNER JOIN dbo.PepMovimentos P ON(P.codpac = VW.IDPep)
         INNER JOIN dbo.PepMovimentos_CID PC ON(P.Codigo = PC.id_PepMovimentos)
         INNER JOIN dbo.cid C ON(PC.id_cid = C.ID)
         INNER JOIN dbo.HistoricoAfericoes H ON(P.Codigo = H.IDMov)
         INNER JOIN PACIENTES PAC ON(PAC.codigo = P.codpac)
         INNER JOIN siabfacil2.vw_pessoa siab ON(pac.id_pessoa_siab = siab.id)
    WHERE VW.sexo = 'F'
          AND VW.idade BETWEEN 10 AND 49
          AND c.ID IN(3699,3711, 3712, 3713, 3714, 3715, 3716)
         AND H.peso <> 0
         AND H.Altura <> 0
) AS NV;



















