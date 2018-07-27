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
           CONVERT(VARCHAR(103), h.Data, 103) [Data]
    FROM RECEPCAO.Indicadores.vw_pep_siab VW
         INNER JOIN dbo.PepMovimentos P ON(P.codpac = VW.IDPep)
         INNER JOIN dbo.HistoricoAfericoes H ON(P.Codigo = H.IDMov)
         INNER JOIN PACIENTES PAC ON(PAC.codigo = P.codpac)
         INNER JOIN siabfacil2.vw_pessoa siab ON(pac.id_pessoa_siab = siab.id)
    WHERE VW.sexo = 'F'
          AND VW.idade BETWEEN 10 AND 49
          AND H.peso <> 0
          AND H.Altura <> 0
          AND H.PressaoSistolica IN
    (
        SELECT PressaoSistolica
        FROM HistoricoAfericoes
        WHERE PressaoSistolica > 140
    )
          AND h.PressaoDiastolica IN
    (
        SELECT PressaoDiastolica
        FROM HistoricoAfericoes
        WHERE PressaoDiastolica > 90
    )
) AS TAB;






















