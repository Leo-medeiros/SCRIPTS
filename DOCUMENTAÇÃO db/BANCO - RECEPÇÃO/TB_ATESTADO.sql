







USE RECEPCAO
GO


EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','ID','Codigo de indentifica��o'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','Ficha','Ficha do paciente'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','dthora','Data e hora do atestado'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','usuario','Descri��o do usuario que fez o atestado'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','paciente','Nome do paciente'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','cpf','CPF do paciente'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','unidade','Unidade de sa�de'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','txtdescricao','Descri��o do atestado'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','dia','Dia do atestado'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','mes','Mes do atestado'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','ano','Ano do atestado'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','cnpj','cnpj'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','medico','M�dico'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','crm','CRM do M�dico'