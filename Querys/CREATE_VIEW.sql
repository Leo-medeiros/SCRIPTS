/*Views - Uma exibi��o (Vis�o) Tabela Virtual*/

CREATE VIEW vw_teste 
AS SELECT b.nomeequipe 'Equipe', b.nome, data_nascimento, mae FROM PESSOA_GRUPO_DE_PESSOAS a
INNER JOIN indicadores.vw_pep_siab b on a.cod_pac = b.idpep
where a.grupo_de_pessoas_id = 5 --Trocar o n�mero de acordo com a prioridade desejada
AND a.ativo = 'S'


SELECT * FROM VW_TESTE
WHERE nome LIKE 'A%'

