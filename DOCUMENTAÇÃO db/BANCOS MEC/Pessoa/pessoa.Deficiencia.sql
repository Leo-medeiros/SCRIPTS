USE DBMec
GO



EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Deficiencia','ID','Codigo de identifica��o'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Deficiencia','Descricao','Exibe a descri��o da Deficiencia'