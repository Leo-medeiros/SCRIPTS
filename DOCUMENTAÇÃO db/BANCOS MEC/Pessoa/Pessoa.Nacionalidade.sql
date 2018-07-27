

USE DBMec
go

EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Nacionalidade','ID','Codigo de identificação'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Nacionalidade','Descricao','Descrição da Nacionalidade'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Nacionalidade','CodigoSUS','Código do SUS'
