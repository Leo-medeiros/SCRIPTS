USE DBMec
GO


EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Escolaridade','ID','Codigo de identifica��o'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Escolaridade','Descricao','Exibe a descri��o da escolaridade'