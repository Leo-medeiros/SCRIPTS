USE RECEPCAO;

SELECT * FROM (
SELECT D.NOME, C.DESCRICAO, SUM(B.QUANTIDADE) QUANTIDADE FROM SIABFACIL.atendimento_odonto A
INNER JOIN SIABFACIL.tipo_procedimento_odonto_para_atendimento_odonto B ON A.ID = B.atendimento_odonto_id
INNER JOIN siabfacil.tipo_procedimento_odonto C ON B.tipo_procedimento_odonto_id = C.ID
INNER JOIN RECEPCAO.DBO.MEDICOS D ON A.PROF_ID = D.CODIGO
WHERE MONTH (A.DATA) = MONTH (GETDATE()) AND YEAR (A.DATA) = YEAR (GETDATE())
GROUP BY C.DESCRICAO, D.NOME
) AS TAB


