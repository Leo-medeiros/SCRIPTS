SELECT c.descricao
FROM siabfacil.atendimento_odonto A
     INNER JOIN siabfacil.conduta_encaminhamento_odonto_para_atendimento_odonto B ON A.id = B.atendimento_odonto_id
     INNER JOIN SIABFACIL.conduta_encaminhamento_odonto c ON b.conduta_encaminhamento_odonto_codigo = c.codigo;

	

SET DATEFORMAT DMY
SELECT Procedimento,
       TOTAL
FROM
(
    SELECT B.DESCRICAO [Procedimento],
           ISNULL(
(
    SELECT NOMEEQUIPE
    FROM INDICADORES.vw_pep_siab VW
    WHERE vw.IDPep = S.PESSOA_ID
), 'FORA DE AREA') [Equipe],
           CONVERT(VARCHAR(10), s.data, 103) [Data],
           COUNT(A.QUANTIDADE) [TOTAL]
    FROM siabfacil.atendimento_odonto  AT_ODON
            INNER JOIN siabfacil.conduta_encaminhamento_odonto_para_atendimento_odonto B ON AT_ODON.id = B.atendimento_odonto_id
		  INNER JOIN SIABFACIL.conduta_encaminhamento_odonto c ON b.conduta_encaminhamento_odonto_codigo = c.codigo
    GROUP BY
) 


	
