
USE ACESSO
OPEN SYMMETRIC KEY KeyPrSistemas DECRYPTION BY PASSWORD = N'prsist@12';
  SELECT Codigo, Login, CodSetor, senhadbf, SENHANOVA, ID_Medico, ID_Coren, Cracha, Titulo, NomeCompleto, Cargo, conselho, bionexo, digital, 
  perfil, validade, SITUACAO, nconselho, prescricao, ATENDIMENTO_TOTAL, ID_PROF, USUARIOMASTER, CONVERT(VARCHAR(3000), DECRYPTBYKEY(SENHA)) SENHA,
  CONVERT(VARCHAR(3000), DECRYPTBYKEY(SENHA)) SENHASTRIN
  FROM Usuarios
  where nomecompleto like '%josana%'
 
 CLOSE SYMMETRIC KEY KeyPrSistemas






