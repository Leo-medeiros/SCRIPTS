SELECT * FROM (
SELECT DISTINCT B.NOME, B.NomeEquipe, B.mae, B.cns, B.IDADE, CASE A.grupo_de_pessoas_id 
WHEN 7 THEN 'Diabetes'
END 'LinhasDeCuidado', 
(SELECT TOP 1  CASE AVALIACAO_PE_DIABETICO WHEN 1 THEN 'Filamento Verde' 
WHEN 2 THEN 'Filamento Azul'
WHEN 3 THEN 'Filamento Violeta'
WHEN 4 THEN 'Filamento Vermelho'
WHEN 5 THEN 'Filamento Laranja'
WHEN 6 THEN 'Filamento Magenta'
ELSE 'N�o Informado'
END ExamePeDiabetico
FROM PE_DIABETICO PDIA WHERE PDIA.MOV_ID = C.CODIGO) AS EXAME_PE_DIABETICO
FROM PESSOA_GRUPO_DE_PESSOAS A
INNER JOIN INDICADORES.VW_PEP_SIAB B ON A.COD_PAC = B.IDPEP
INNER JOIN PEPMOVIMENTOS C ON A.COD_PAC = C.CODPAC
INNER JOIN PE_DIABETICO D ON C.CODIGO = D.MOV_ID
WHERE A.GRUPO_DE_PESSOAS_ID = 7
AND A.ATIVO <> 'N'
AND D.AVALIACAO_PE_DIABETICO IS NOT NULL
AND D.AVALIACAO_PE_DIABETICO <> ''
) AS TEMP
