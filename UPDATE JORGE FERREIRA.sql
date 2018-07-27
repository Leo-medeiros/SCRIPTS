select * from Atendimento.Tratamento  WHERE ID_Paciente = 6722 
AND  Situacao = 'i'



BEGIN TRAN;
UPDATE Atendimento.Tratamento
  SET
      Conclusao = 'I',
      DataPrevisaoDeAlta = NULL,
      Situacao = 'I'
WHERE ID_Paciente = 6722 
AND  Situacao = 'T'


COMMIT;
ROLLBACK;





-- UPDATE DE BACKUP
-- UPDATE Atendimento.Tratamento SET SITUACAO = 'T', CONCLUSAO = 'AD1'
-- WHERE ID_Paciente = 6722 and Situacao = 't'



SELECT * FROM Pessoa.Paciente
WHERE ID = 6722