USE recepcao;
SELECT distinct b.nome, b.nomeequipe 'Equipe', data_nascimento, mae, A.DATA_FINALIZACAO, convert(varchar(max),A.MOTIVO) motivo,
d.sinan, (SELECT COUNT (CODPAC) FROM PEPMOVIMENTOS  PM WHERE PM.CODPAC = B.IDPEP) AS QuantidadeDeConsultas, 
CASE a.motivo_cod
WHEN 'T' THEN 'Completou o Tratamento'
WHEN 'A' THEN 'Abandonou o Tratamento'
WHEN 'R' THEN 'Transferência'
WHEN 'O' THEN 'Óbito'
WHEN 'F' THEN 'Falência'
WHEN 'M' THEN 'Mudança de Diagnóstico'
WHEN 'E' THEN 'Adicionado Por Engano'
WHEN 'Z' THEN 'Realizado Tratamento Em Outra Unidade'
ELSE 'Não Informado'
END Motivo
FROM PESSOA_GRUPO_DE_PESSOAS a
INNER JOIN indicadores.vw_pep_siab b on a.cod_pac = b.idpep
INNER JOIN PEPMOVIMENTOS C ON B.IDPEP = C.CODPAC
INNER JOIN PROTOCOLO_TUBERCULOSE D ON C.CODIGO = D.MOV_ID
where a.grupo_de_pessoas_id = 8 
AND a.ativo  <>'S'
AND D.SINAN IS NOT NULL
AND D.SINAN <>0





