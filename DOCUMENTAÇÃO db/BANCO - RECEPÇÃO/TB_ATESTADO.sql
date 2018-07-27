







USE RECEPCAO
GO


EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','ID','Codigo de indentificação'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','Ficha','Ficha do paciente'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','dthora','Data e hora do atestado'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','usuario','Descrição do usuario que fez o atestado'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','paciente','Nome do paciente'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','cpf','CPF do paciente'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','unidade','Unidade de saúde'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','txtdescricao','Descrição do atestado'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','dia','Dia do atestado'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','mes','Mes do atestado'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','ano','Ano do atestado'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','cnpj','cnpj'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','medico','Médico'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'atestadomedico','crm','CRM do Médico'