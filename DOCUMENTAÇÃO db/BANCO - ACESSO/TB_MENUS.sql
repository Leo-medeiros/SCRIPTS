USE acesso
go
-- tabela dbo.menus

EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'menus','CodSistema','Codigo de indentifica��o do sistema'
EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'menus','CodMenu','Codigo de identifica��o do menu'
EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'menus','CodPai','Codigo de identifica��o do menu Pai'
EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'menus','descricao','descricao do menu'
EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'menus','padrao','Padr�o S para sim N para n�o'



