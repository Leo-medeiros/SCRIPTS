/*Quantidade de pessoas ativas na linha de cuidado*/

USE recepcao;
SELECT DISTINCT (b.nome), b.nomeequipe 'Equipe', data_nascimento, mae FROM PESSOA_GRUPO_DE_PESSOAS a
INNER JOIN indicadores.vw_pep_siab b on a.cod_pac = b.idpep
where a.grupo_de_pessoas_id in (6,7) --Trocar o número de acordo com a prioridade desejada
AND a.ativo = 'S'
ORDER BY b.nomeequipe, b.nome






