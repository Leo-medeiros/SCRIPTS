USE DBMec
GO



EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Deficiencia','ID','Codigo de identificação'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Deficiencia','Descricao','Exibe a descrição da Deficiencia'