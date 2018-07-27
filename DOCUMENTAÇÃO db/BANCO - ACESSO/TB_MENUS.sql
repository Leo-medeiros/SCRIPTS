USE acesso
go
-- tabela dbo.menus

EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'menus','CodSistema','Codigo de indentificação do sistema'
EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'menus','CodMenu','Codigo de identificação do menu'
EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'menus','CodPai','Codigo de identificação do menu Pai'
EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'menus','descricao','descricao do menu'
EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'menus','padrao','Padrão S para sim N para não'



