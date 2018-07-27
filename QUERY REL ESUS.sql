
SELECT * FROM (
SELECT Faixa_Etaria,Pergunta,Resposta,COUNT(total) [Total] FROM (
SELECT DISTINCT
       A.faixa_etaria [Faixa_Etaria],
       C.descricao Pergunta,
       d.descricao Resposta,
	  P.SEXO [sexo],
	  CONVERT(VARCHAR(10),A.data_atendimento,103) data_atende,
	  VW.NomeEquipe [Equipe],
	  M.nome [Profissional],
       COUNT(d.descricao) total
FROM SIABFACIL.consumo_alimentar A
     INNER JOIN SIABFACIL.QUESTIONARIO B ON A.ID = B.consumo_alimentar_id
     INNER JOIN SIABFACIL.pergunta C ON B.pergunta_id = C.id
     INNER JOIN SIABFACIL.resposta D ON B.resposta_id = D.id
	INNER JOIN RECEPCAO.dbo.PACIENTES p on A.pessoa_id = P.codigo
	INNER JOIN Indicadores.vw_pep_siab VW  ON (A.pessoa_id = VW.IDPep)
	INNER JOIN RECEPCAO.DBO.medicos M ON (A.prof_id = M.CODIGO)
GROUP BY A.faixa_etaria,
         C.descricao,
         d.descricao,
	    P.SEXO,
	    VW.NomeEquipe,
	    m.nome,
	    A.data_atendimento
)A
GROUP BY Faixa_Etaria,Pergunta,Resposta)AAA



