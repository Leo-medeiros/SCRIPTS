USE DBMec
go

EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente_Contato','ID','Codigo de identifica��o'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente_Contato','ID_TipoContato','Identifica��o do Tipo de Contato do Paciente (Relacionamento com o campo ID da tabela Pessoa.TipoContato)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente_Contato','DDD','Exibe o DDD do contato do Paciente'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente_Contato','Numero','Exibe o Numero do Paciente'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente_Contato','Observacao','Exibe a observa��o do contato do Paciente'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente_Contato','ID_GrupoContato','Identifica��o do Grupo de Contato do Paciente (Relacionamento com o campo ID da tabela Pessoa.GrupoContato)'



