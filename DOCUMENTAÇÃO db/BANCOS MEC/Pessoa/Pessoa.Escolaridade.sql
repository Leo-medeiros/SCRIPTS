USE DBMec
GO


EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Escolaridade','ID','Codigo de identificação'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Escolaridade','Descricao','Exibe a descrição da escolaridade'