USE RECEPCAO;
GO
SET DATEFORMAT DMY;
SELECT   -- CASE WHEN (GROUPING(PROCEDIMENTO)=1) THEN 'TOTAL'
  --  ELSE ISNULL(PROCEDIMENTO,'NAO INFORMADO') END AS PROCEDIMENTO,

      PROCEDIMENTO, total
	 FROM
(
    SELECT  c.descricao [PROCEDIMENTO],
           d.NomeEquipe [EQUIPE],
           CONVERT(VARCHAR(10), A.data, 103) [DATA],
           E.nome [PROFISSIONAL],
           count(quantidade) [total]
    FROM SIABFACIL.procedimento_individual A
	   INNER JOIN PACIENTES AA ON A.PESSOA_ID = AA.CODIGO
         INNER JOIN SIABFACIL.tipo_procedimento_para_procedimento_individual B ON(A.id = B.procedimento_individual_id)
         INNER JOIN SIABFACIL.tipo_procedimento C ON b.tipo_procedimento_id = c.id
         LEFT JOIN Indicadores.vw_pep_siab D ON a.pessoa_id = d.IDPep
         INNER JOIN medicos E ON A.prof_id = E.CODIGO AND  
	    E.CBO1 IN('223116', '225142', '223565', '223710', '2241E1', '223810', '251510', '251605', '223905', ' 223810')
	    INNER JOIN PepMovimentos G ON D.IDPep = G.codpac and G.STATUS = 'F'
    GROUP BY C.descricao,
             D.NomeEquipe,
             A.data,
             E.nome
) PROCE
where DATA between '01/03/2018' and '31/03/2018'
--GROUP BY PROCEDIMENTO WITH ROLLUP


	

SET DATEFORMAT DMY
SELECT * FROM siabfacil.procedimento_individual A
INNER JOIN SIABFACIL.tipo_procedimento_para_procedimento_individual B ON(A.id = B.procedimento_individual_id)
         INNER JOIN SIABFACIL.tipo_procedimento C ON b.tipo_procedimento_id = c.id
	    WHERE DATA BETWEEN '21/07/2017' AND '22/07/2017' and c.id = 27


	    select * from SIABFACIL.tipo_procedimento 
	    where descricao = 'ADMINISTRAÇÃO DE MEDICAMENTOS VIA ORAL'
