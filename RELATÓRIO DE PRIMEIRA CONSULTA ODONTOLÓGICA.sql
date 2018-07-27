-- RELATÓRIO DE PRIMEIRA CONSULTA ODONTOLÓGICA 

USE recepcao;
GO
SELECT DISTINCT  *
FROM
(
    SELECT 
          PAC.nome [NOME],
		CONVERT(VARCHAR(10),pac.dtnasc, 103) [DT_NASCIMENTO],
		vw.prontuario [PRONTUARIO],
           vw.NomeEquipe [EQUIPE],
           med.nome [PROFISSIONAL],
           CONVERT(VARCHAR(10), O.data, 103) [DT_PRIMEIRA_CONSULTA]
    FROM PepMovimentos P
         INNER JOIN PepMovimentos_Soli_Procedimento SP ON(P.Codigo = SP.id_PepMovimentos)
         INNER JOIN Procedimentos PRO ON(SP.id_Exame = PRO.ID)
         INNER JOIN siabfacil.atendimento_odonto O ON(o.codmov = p.Codigo)
         INNER JOIN PACIENTES PAC ON(P.codpac = PAC.codigo)
         INNER JOIN Indicadores.vw_pep_siab VW ON(P.codpac = VW.IDPep)
         INNER JOIN medicos MED ON(P.codmed = MED.CODIGO)
    WHERE P.Especialidade in (1362, 3372)
          AND o.tipo_consulta_odonto_codigo = 1
		AND pro.CODPROC = '0301010153'
) QRY





	 


