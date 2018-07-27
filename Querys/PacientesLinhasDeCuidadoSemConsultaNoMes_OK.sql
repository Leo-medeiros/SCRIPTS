SELECT * FROM (
SELECT DISTINCT (B.NOME), B.PRONTUARIO, B.NomeEquipe, B.IDADE, B.MAE, B.CNS, CONVERT (VARCHAR (20), C.DATAFINALIZA, 103) DATACONSULTA,
CASE A.grupo_de_pessoas_id WHEN 3 THEN 'Hansen�ase'
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
INNER JOIN PEPMOVIMENTOS C ON A.COD_PAC = C.CODPAC
WHERE A.ATIVO = 'S'
AND C.ESPECIALIDADE IN (1362, 3372)
) AS TAB

WHERE DATACONSULTA BETWEEN '01/07/2017' AND '19/07/2017'