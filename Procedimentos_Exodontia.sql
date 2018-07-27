/*Quantidade de exodontia*/
SELECT COUNT(*) FROM SIABFACIL.tipo_procedimento_odonto_para_atendimento_odonto A
INNER JOIN SIABFACIL.tipo_procedimento_odonto B ON A.tipo_procedimento_odonto_id = B.ID
INNER JOIN SIABFACIL.ATENDIMENTO_ODONTO C ON A.atendimento_odonto_id = C.ID
WHERE B.ID IN (11,12)
AND C.DATA <= '2016-06-30 20:47:48.610'








