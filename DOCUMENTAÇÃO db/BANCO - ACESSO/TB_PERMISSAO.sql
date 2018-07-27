USE acesso
go

EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'PERMISSAO','codigo','Codigo de indentificação'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'PERMISSAO','descricao','Descrição da permissão'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'PERMISSAO','coluna','Nome da Coluna'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'PERMISSAO','tipo','Tipo de dado da coluna'











