USE DBMec
go

EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'AgendaProfissional','ID','Codigo de identifica��o da agenda'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'AgendaProfissional','ID_profissional','C�digo de identifica��o do profissional (relacionamento com o campo ID da tabela Pessoa.Profissional)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'AgendaProfissional','ID_Paciente','Codigo de identifica��o o Paciente (Relacionamento com o campo ID da tabela pessoa.paciente)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'AgendaProfissional','ID_tratamento','Codigo de identifica��o do tratamento (relacionamento com o campo ID da tabela atendimento.tratamento)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'AgendaProfissional','Data','Data da Agenda'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'AgendaProfissional','Ativo','Exibe se esta ativa (1 = ativo, 0= desativado)'





