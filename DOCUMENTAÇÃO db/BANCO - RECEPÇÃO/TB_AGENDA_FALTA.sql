
USE RECEPCAO
GO


EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'agenda_falta','ID','Codigo de indentificação'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'agenda_falta','CODPAC','Codigo do paciente'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'agenda_falta','codmed','Codigo do Médico'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'agenda_falta','data_agenda','Data do agendamento'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'agenda_falta','data_exclusao','Data da exclusão do agendamento'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'agenda_falta','usuario','Codigo do usuario que realizou a exclusão'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'agenda_falta','origem','Origem da exclusão'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'agenda_falta','motivo','Motivo da exclusão'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'agenda_falta','profissional','Profissional'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'agenda_falta','paciente','Paciente'
EXEC RECEPCAO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'agenda_falta','codesp','Codigo da especialidade'