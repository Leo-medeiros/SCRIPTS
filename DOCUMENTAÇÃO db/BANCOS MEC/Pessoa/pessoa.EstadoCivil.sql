USE DBMec
GO



EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'EstadoCivil','ID','Codigo de identifica��o'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'EstadoCivil','Descricao','Descri��o do Estado Civil'