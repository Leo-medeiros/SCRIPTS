USE DBMec
go

EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente_Contato','ID','Codigo de identificação'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente_Contato','ID_TipoContato','Identificação do Tipo de Contato do Paciente (Relacionamento com o campo ID da tabela Pessoa.TipoContato)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente_Contato','DDD','Exibe o DDD do contato do Paciente'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente_Contato','Numero','Exibe o Numero do Paciente'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente_Contato','Observacao','Exibe a observação do contato do Paciente'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente_Contato','ID_GrupoContato','Identificação do Grupo de Contato do Paciente (Relacionamento com o campo ID da tabela Pessoa.GrupoContato)'



