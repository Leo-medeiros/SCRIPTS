USE acesso
go

EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'sistemas','codigo','Codigo de indentificação do sistema'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'sistemas','nome','Nome do sistema'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'sistemas','versao','Exibe a versão do sistema'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'sistemas','atualiza','NÃO IDENTIFICADO'

