USE DBMec
go

EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'TipoContato','ID','Codigo de identifica��o'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'TipoContato','Descricao','Descri��o do tipo de contato'



