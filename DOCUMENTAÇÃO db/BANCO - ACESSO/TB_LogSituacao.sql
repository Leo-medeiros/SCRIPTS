USE acesso
go

EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'LogSituacao','ID','Codigo de indentificação'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'LogSituacao','ID_USUARIO','ID do usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'LogSituacao','DATAHORA','Data e Hora'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'LogSituacao','SITUACAO','Situação do usuario A para ativo e I para Inativo'