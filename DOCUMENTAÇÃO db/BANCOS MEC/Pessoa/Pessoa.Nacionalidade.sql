

USE DBMec
go

EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Nacionalidade','ID','Codigo de identifica��o'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Nacionalidade','Descricao','Descri��o da Nacionalidade'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Nacionalidade','CodigoSUS','C�digo do SUS'
