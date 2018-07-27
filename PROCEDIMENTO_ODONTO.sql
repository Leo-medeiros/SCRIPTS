USE RECEPCAO;
select * from (
SELECT DISTINCT NOME, SUM (QUANTIDADE) QUANTIDADE FROM (
SELECT DISTINCT C.NOME, COUNT(*) QUANTIDADE FROM PepMovimentos_Soli_Procedimento A
INNER JOIN PEPMOVIMENTOS B ON A.ID_PEPMOVIMENTOS = B.CODIGO
INNER JOIN PROCEDIMENTOS C ON A.ID_EXAME = C.CODIGO
WHERE C.CODPROC IN (0307020010, 0101020066, 0307040135, 0101020082, 0307040160, 0307030040, 0307030059, 0307010031, 0101020090, 0307040143,
0101020074, 0307020029, 0414020120, 0307040070, 0307020070, 0307030024, 0307010040, 0414020383, 0101020058, 0307010015, 0401010031, 
0414020138, 0204010187, 0307010023, 0301100152, 0414020405, 0101010010, 0101020031)
GROUP BY C.NOME
UNION 
SELECT DISTINCT C.DESCRICAO NOME, SUM(B.QUANTIDADE) QUANTIDADE FROM SIABFACIL.atendimento_odonto A
INNER JOIN SIABFACIL.tipo_procedimento_odonto_para_atendimento_odonto B ON A.ID = B.atendimento_odonto_id
INNER JOIN siabfacil.tipo_procedimento_odonto C ON B.tipo_procedimento_odonto_id = C.ID
GROUP BY C.DESCRICAO) AS TEMP
GROUP BY NOME
) as tab
