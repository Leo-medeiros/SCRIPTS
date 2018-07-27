USE acesso
go

EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'erros_log_bkp','CODIGO','Codigo de indentificação'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'erros_log_bkp','ID_USUARIO','ID do usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'erros_log_bkp','DATAHORA','Data e Hora que o sistema gerou o erro'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'erros_log_bkp','MSG','Mensagem de erro exibida no sistema'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'erros_log_bkp','TRACE','Comandos executados'








