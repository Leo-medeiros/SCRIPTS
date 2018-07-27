USE recepcao;
SELECT * FROM pessoa_grupo_de_pessoas A
INNER JOIN INDICADORES.VW_PEP_SIAB B ON A.COD_PAC = B.IDPEP 
WHERE grupo_de_pessoas_id = '6'
AND B.IDADE BETWEEN '10'AND'49' 
AND B.SEXO = 'F'

