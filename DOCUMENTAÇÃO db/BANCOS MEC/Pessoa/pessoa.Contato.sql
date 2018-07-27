USE DBMec
GO

EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Contato','ID','Codigo de identificação'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Contato','ID_TipoContato','Identificação do Tipo de contato (relacionamento com o campo ID da tabela pessoa.TipoContato)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Contato','ID_pessoa','Codigo de identificação da pessoa'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Contato','Categoria','Exibe a categoria'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Contato','DDD','Exibe  o DDD do telefone'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Contato','Numero','Exibe  o número do telefone da pessoa'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Contato','Observacao','Exibe uma observação digitada referente ao contato do paciente'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Contato','ID_PACIENTE','Codigo de identificação do Paciente (relacionamento com o campo ID da tabela pessoa.Paciente)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Contato','ID_profissional','Codigo de identificação do Profissional (relacionamento com o campo ID da tabela pessoa.profissional)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Contato','ID_GrupoContato','Codigo de identificação do grupo de contato (relacionamento com o campo ID da tabela pessoa.grupoContato)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Contato','ID_TipoContatoTemp','Campo temporario: Identificação do Tipo de contato (relacionamento com o campo ID da tabela pessoa.TipoContato) '