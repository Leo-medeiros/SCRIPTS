SELECT DISTINCT FAMILIA.COD_AREA "EQUIPE", FAMILIA.MICROAREA "MICRO",PESSOA.NOME "NOME",PESSOA.CNS "CNS", PESSOA.DATA_NASCIMENTO "NASC",EXTRACT(YEAR FROM AGE(PESSOA.DATA_NASCIMENTO)) "IDADE", MAX(EXAME.DATA) "DATA EXAME", 
TPEXAME.DESCRICAO "EXAME", MAX(CONTRACEPTIVO.DATA)"DATA MET. CONTRACEPTIVO", MAX(METODO.DESCRICAO)"CONTRACEPTIVO"
FROM SIABFACIL.ATENDIMENTO AS ATEND
LEFT JOIN SIABFACIL.MONITORAMENTO AS MONIT ON ATEND.ID = MONIT.ATENDIMENTO_ID
LEFT JOIN SIABFACIL.TIPO_DE_MONITORAMENTO AS TPMONIT ON MONIT.TIPO_DE_MONITORAMENTO_ID = TPMONIT.ID
LEFT JOIN SIABFACIL.PESSOA AS PESSOA ON ATEND.PESSOA_ID = PESSOA.ID
INNER JOIN SIABFACIL.FAMILIA FAMILIA ON PESSOA.FAMILIA_ID = FAMILIA.ID
INNER JOIN SIABFACIL.EXAME EXAME ON PESSOA.ID = EXAME.PESSOA_ID
INNER JOIN SIABFACIL.ACOMPANHAMENTO_CONTRACEPTIVO CONTRACEPTIVO ON PESSOA.ID = CONTRACEPTIVO.PESSOA_ID
INNER JOIN SIABFACIL.METODO_CONTRACEPTIVO METODO ON CONTRACEPTIVO.METODO_CONTRACEPTIVO_ID = METODO.ID
INNER JOIN SIABFACIL.TIPO_DE_EXAME TPEXAME ON EXAME.TIPO_DE_EXAME_ID = TPEXAME.ID
WHERE TPMONIT.ID IN (103, 120, 121)
AND ATEND.DATA >= '2017-04-01'
AND ATEND.DATA <= '2017-04-30'
AND ATEND.EXCLUIDO = FALSE
GROUP BY FAMILIA.COD_AREA,FAMILIA.MICROAREA,PESSOA.NOME,PESSOA.CNS, PESSOA.DATA_NASCIMENTO,PESSOA.DATA_NASCIMENTO, TPEXAME.DESCRICAO
ORDER BY PESSOA.NOME,TPEXAME.DESCRICAO, MAX(EXAME.DATA)
