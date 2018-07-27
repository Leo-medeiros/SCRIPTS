use DBMec
go



EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'EspecialidadeProfissional','ID','Codigo de identificação'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'EspecialidadeProfissional','id_profissional','Codigo de identificação do profissional (relacionamento com o campo ID da tabela pessoa.Profissional)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'EspecialidadeProfissional','id_especialidade','Codigo de identificação do Especialidade (relacionamento com o campo ID da tabela pessoa.Especialidade)'