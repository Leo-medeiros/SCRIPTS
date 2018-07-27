SET DATEFORMAT DMY
SELECT DISTINCT * FROM (
SELECT distinct b.nome, b.nomeequipe 'Equipe', data_nascimento, mae, A.DATA_INICIAL, d.sinan, b.prontuario
FROM PESSOA_GRUPO_DE_PESSOAS a
INNER JOIN indicadores.vw_pep_siab b on a.cod_pac = b.idpep
INNER JOIN PEPMOVIMENTOS C ON B.IDPEP = C.CODPAC
LEFT JOIN protocolo_hanseniase D ON C.CODIGO = D.MOV_ID
where a.grupo_de_pessoas_id = 3 
AND a.ativo  <>'N'
)
AS TEMP