USE DBMec
go

EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Etnia','ID','Codigo de identifica��o'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Etnia','Descricao','Descri��o do tipo da Etnia'
