



 DECLARE @GUID UNIQUEIDENTIFIER = (SELECT KEY_GUID('Key_pass'))
 INSERT INTO acesso.login_usuarios VALUES (1,'Funcionario_teste', ENCRYPTBYKEY(@GUID, 'senha123'),100)
 GO


OPEN SYMMETRIC KEY Key_pass 
 DECRYPTION BY CERTIFICATE pass  WITH PASSWORD = '123'
 GO



select *, senhaCRIPT = CAST (DECRYPTBYKEY(senhaCRIPT) AS varchar(50)) from acesso.login_usuarios




 CLOSE SYMMETRIC KEY Key_pass


