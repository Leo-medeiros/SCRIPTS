
-- RELAOTORIO EXIBINDO O TOTAL POR TURNO

SET DATEFORMAT DMY
SELECT * FROM (
SELECT distinct Turno [TURNO],
       SUM(TOTAL_ATIVIDADE_POR_TURNO) [TOTAL_ATIVIDADE_POR_TURNO]
FROM
(
    SELECT ISNULL(dbo.FC_CalculoDeTurno(A.turno), 'NAO INFORMADO') [Turno],
           A.data_atividade [DATA],
           EA.NomeCompleto [PROFISSIONAL],
		 VW.NOME [EQUIPE],
           COUNT(A.id) TOTAL_ATIVIDADE_POR_TURNO
    FROM atividade_grupo A
         INNER JOIN pep_atividade_grupo AB ON A.ID_ATIVIDADE = AB.id
         INNER JOIN ACESSO.DBO.Usuarios EA ON a.id_prof_resp = EA.Codigo
	     LEFT JOIN Wv_EquipeSiab VW on  EA.equipe = VW.CODIGO
   
    GROUP BY turno,
             A.data_atividade,
             EA.NomeCompleto,
		   VW.NOME
) U
GROUP BY Turno)bb
ORDER BY TOTAL_ATIVIDADE_POR_TURNO DESC



-- RELATORIO EXIBINDO O TOTAL POR ATIVIDADE
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT ISNULL(ATIVIDADE, 'TOTAL') [ATIVIDADE],
           SUM(TOTAL_ATIVIDADES) [TOTAL_ATIVIDADES]
    FROM
(
    SELECT AB.descricao [ATIVIDADE],
           A.data_atividade Data_Atividade,
           EA.NomeCompleto [PROFISSIONAL],
           VW.NOME [EQUIPE],
           COUNT(A.ID) [TOTAL_ATIVIDADES]
    FROM atividade_grupo A
         INNER JOIN pep_atividade_grupo AB ON A.ID_ATIVIDADE = AB.id
         INNER JOIN ACESSO.DBO.Usuarios EA ON a.id_prof_resp = EA.Codigo
         LEFT JOIN Wv_EquipeSiab VW ON EA.equipe = VW.CODIGO
    GROUP BY AB.descricao,
             A.data_atividade,
             EA.NomeCompleto,
             VW.NOME
) ATIV
    GROUP BY ATIVIDADE WITH ROLLUP
) AT2

-- RELATORIO EXIBINDO O TOTAL POR PUBLICO ALVO
SET DATEFORMAT DMY;
SELECT * FROM (
SELECT ISNULL(PUBLICO_ALVO, 'TOTAL') [PUBLICO_ALVO],
           SUM(TOTAL_PUBLICO_ALVO) [TOTAL_PUBLICO_ALVO]
FROM
(
    SELECT BA.descricao [PUBLICO_ALVO],
           A.data_atividade [DATA],
           EA.NomeCompleto [PROFISSIONAL],
           VW.NOME [EQUIPE],
           COUNT(A.ID) [TOTAL_PUBLICO_ALVO]
    FROM atividade_grupo A
         INNER JOIN atividade_publico_grupo B ON A.id = B.id_atividade
         INNER JOIN pep_publico_alvo_grupo BA ON B.id_publico = BA.id
         INNER JOIN ACESSO.DBO.Usuarios EA ON a.id_prof_resp = EA.Codigo
         LEFT JOIN Wv_EquipeSiab VW ON EA.equipe = VW.CODIGO
    GROUP BY BA.descricao,
             A.data_atividade,
             EA.NomeCompleto,
             VW.NOME
) AA
GROUP BY PUBLICO_ALVO WITH ROLLUP
)AB


-- RELATORIO EXIBINDO O TOTAL POR TEMAS PARA REUNIAO
SET DATEFORMAT DMY
SELECT * FROM (
SELECT ISNULL(TEMAS_PARA_REUNIAO, 'TOTAL') [TEMAS_PARA_REUNIAO],
       SUM(TOTAL_TEMAS_PARA_REUNIAO) [TOTAL_TEMAS_PARA_REUNIAO]
FROM
(
    SELECT DA.descricao [TEMAS_PARA_REUNIAO],
           A.data_atividade [DATA],
           EA.NomeCompleto [PROFISSIONAL],
           VW.NOME [EQUIPE],
           COUNT(A.ID) [TOTAL_TEMAS_PARA_REUNIAO]
    FROM atividade_grupo A
         INNER JOIN atividade_reuniao_grupo D ON A.id = D.id_atividade
         INNER JOIN pep_reuniao_grupo DA ON D.id_reuniao = DA.id
         INNER JOIN ACESSO.DBO.Usuarios EA ON a.id_prof_resp = EA.Codigo
         LEFT JOIN Wv_EquipeSiab VW ON EA.equipe = VW.CODIGO
    GROUP BY DA.descricao,
             A.data_atividade,
             EA.NomeCompleto,
             VW.NOME
) T
GROUP BY TEMAS_PARA_REUNIAO WITH ROLLUP
)TEMAS




-- RELATORIO EXIBINDO O TOTAL POR TEMAS EM SAUDE
SET DATEFORMAT DMY;
SELECT *
FROM
(
    SELECT ISNULL(PRATICAS_TEMAS_EM_SAUDE, 'TOTAL') [PRATICAS_TEMAS_EM_SAUDE],
           SUM(TOTAL_DE_TEMAS_EM_SAUDE) [TOTAL_DE_TEMAS_EM_SAUDE]
    FROM
(
    SELECT CA.descricao [PRATICAS_TEMAS_EM_SAUDE],
           A.data_atividade [DATA],
           EA.NomeCompleto [PROFISSIONAL],
           VW.NOME [EQUIPE],
           COUNT(A.ID) [TOTAL_DE_TEMAS_EM_SAUDE]
    FROM atividade_grupo A
         INNER JOIN atividade_praticas_grupo C ON A.id = C.id_atividade
         INNER JOIN pep_praticas_grupo CA ON C.id_praticas = CA.id
         INNER JOIN ACESSO.DBO.Usuarios EA ON a.id_prof_resp = EA.Codigo
         LEFT JOIN Wv_EquipeSiab VW ON EA.equipe = VW.CODIGO
    GROUP BY CA.descricao,
             A.data_atividade,
             EA.NomeCompleto,
             VW.NOME
) A
    GROUP BY PRATICAS_TEMAS_EM_SAUDE WITH ROLLUP
) B




























