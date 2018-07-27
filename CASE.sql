USE recepcao;
/*PRIMEIRO RODAR ESSA QUERY, PEGAR O CAMPO CODIGO E INFORMAR NO CAMPO CODPAC DA QUERY ABAIXO*/
SELECT * FROM pacientes WHERE nome = 'INFORME O NOME'

/*QUERY PARA EXIBIR O STATUS DO ATENDIMENTO*/
SELECT   b.nome 'Paciente', c.nome 'Profissional', a.dtatende 'Data de in�cio de atendimennto',a.datafinaliza 'Data de finaliza��o do atendimento',
CASE A.STATUS 
WHEN 'F' THEN 'FINALIZADO'
WHEN 'E' THEN 'ATENDIMENTO N�O FINALIZADO'
WHEN 'C' THEN 'CHAMADO'
WHEN 'N' THEN 'N�O RESPONDEU'
WHEN 'A' THEN 'ATENDIDO'
WHEN 'P' THEN 'PENDENTE'
WHEN 'V' THEN 'EVAS�O'
WHEN 'X' THEN 'EXCLU�DO'
WHEN 'W' THEN 'EM EPSERA'
END 'Status'
FROM pepmovimentos a
LEFT JOIN pacientes b ON a.codpac = b.codigo
LEFT JOIN medicos c ON a.codmed = c.codigo
/*INFORME ABAIXO O CODIGO EXIBIDO NA PRIMEIRA QUERY*/
WHERE codpac = 1
ORDER BY a.status



