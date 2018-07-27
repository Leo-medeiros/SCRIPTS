USE recepcao
SELECT d.nomeequipe 'Nome da Equipe', d.nome 'Nome do Paciente', d.sexo 'Sexo do Paciente', d.idade 'Idade do Paciente', b.cid10 'CID', b.descr 'Descricao' FROM PepMovimentos_CID a
INNER JOIN cid b ON a.id_cid = b.id
INNER JOIN pepmovimentos c ON a.id_PepMovimentos = c.codigo
INNER JOIN Indicadores.vw_pep_siab d ON c.codpac = d.idpep
WHERE b.cid10 like 'I__'
ORDER BY d.NomeEquipe





