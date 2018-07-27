USE DBMec
go

EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'ConfigAgendaProfissional','ID','Codigo de identificação'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'ConfigAgendaProfissional','ID_profissional','Código de identificação do profissional (relacionamento com o campo ID da tabela Pessoa.Profissional)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'ConfigAgendaProfissional','segunda','Exibe se o profissional faz visita neste dia da semana (1 para sim, 0 para não)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'ConfigAgendaProfissional','terca','Exibe se o profissional faz visita neste dia da semana (1 para sim, 0 para não)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'ConfigAgendaProfissional','quarta','Exibe se o profissional faz visita neste dia da semana (1 para sim, 0 para não)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'ConfigAgendaProfissional','quinta','Exibe se o profissional faz visita neste dia da semana (1 para sim, 0 para não)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'ConfigAgendaProfissional','sexta','Exibe se o profissional faz visita neste dia da semana (1 para sim, 0 para não)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'ConfigAgendaProfissional','sabado','Exibe se o profissional faz visita neste dia da semana (1 para sim, 0 para não)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'ConfigAgendaProfissional','domingo','DExibe se o profissional faz visita neste dia da semana (1 para sim, 0 para não)'
EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'ConfigAgendaProfissional','AtendimentosPorDia','DExibe quantos atendimentos o profissional realiza por dia'



