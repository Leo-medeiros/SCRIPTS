USE acesso
go

EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'PERMISSAO','codigo','Codigo de indentifica��o'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'PERMISSAO','descricao','Descri��o da permiss�o'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'PERMISSAO','coluna','Nome da Coluna'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'PERMISSAO','tipo','Tipo de dado da coluna'











