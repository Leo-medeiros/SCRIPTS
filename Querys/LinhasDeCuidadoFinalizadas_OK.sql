SELECT * FROM (
SELECT B.NOME, B.NomeEquipe, B.mae, B.cns, B.IDADE, A.data_finalizacao, A.MOTIVO, CASE A.grupo_de_pessoas_id WHEN 3 THEN 'Hansen�ase'
WHEN 5 THEN 'Gestante'
WHEN 6 THEN 'Hipertens�o Arterial'
WHEN 7 THEN 'Diabetes'
WHEN 8 THEN 'Tuberculose'
WHEN 10 THEN 'Deficiente'
WHEN 1000 THEN 'Sa�de Mental'
WHEN 1001 THEN 'Crian�a'
END 'LinhasDeCuidado'
FROM PESSOA_GRUPO_DE_PESSOAS A
INNER JOIN INDICADORES.VW_PEP_SIAB B ON A.COD_PAC = B.IDPEP
WHERE A.ATIVO = 'N'
) AS TEMP