USE RECEPCAO;
SELECT DISTINCT b.nome, b.nomeequipe 'Equipe', data_nascimento, mae, CONVERT (VARCHAR (10), DATA, 103) AS DATA, RESULTADO AS
RESULTADO_COLPOCITOLOGIA, OBSERVACAO FROM PESSOA_GRUPO_DE_PESSOAS a
INNER JOIN indicadores.vw_pep_siab b on a.cod_pac = b.idpep
INNER JOIN Exames.Colpocitologia C ON B.IDPEP = C.CODPAC
where a.grupo_de_pessoas_id = 6
and b.sexo = 'F'
and b.idade between '10'and'54'
ORDER BY b.nomeequipe




