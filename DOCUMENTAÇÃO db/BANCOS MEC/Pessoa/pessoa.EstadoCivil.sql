USE DBMec
GO



EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'EstadoCivil','ID','Codigo de identificação'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'EstadoCivil','Descricao','Descrição do Estado Civil'