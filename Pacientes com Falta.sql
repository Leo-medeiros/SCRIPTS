USE recepcao;
SELECT b.NomeEquipe,b.nome, b.data_nascimento,b.mae, a.data_agenda FROM agenda_falta a
INNER JOIN INDICADORES.VW_PEP_SIAB B ON A.CODPAC = B.IDPEP
where origem = 'F'
ORDER BY B.NOMEEQUIPE

