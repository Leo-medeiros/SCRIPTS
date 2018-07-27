ALTER VIEW vw_teste
AS SELECT b.nomeequipe 'Equipe', b.nome, data_nascimento, mae, b.sexo FROM PESSOA_GRUPO_DE_PESSOAS a
INNER JOIN indicadores.vw_pep_siab b on a.cod_pac = b.idpep
where a.grupo_de_pessoas_id = 5 --Trocar o número de acordo com a prioridade desejada
AND a.ativo = 'S'