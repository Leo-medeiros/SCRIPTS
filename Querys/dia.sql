SELECT b.nomeequipe 'Equipe',  b.nome, data_nascimento, mae FROM PESSOA_GRUPO_DE_PESSOAS a
INNER JOIN indicadores.vw_pep_siab b on a.cod_pac = b.idpep
where a.grupo_de_pessoas_id = 7
ORDER BY b.nomeequipe







