USE recepcao;
SELECT a.nome, a.CONSELHO, b.Sigla FROM medicos a
FULL JOIN conselho b ON a.conselho = b.sigla
WHERE a.conselho IS NULL
OR B.sigla IS NULL