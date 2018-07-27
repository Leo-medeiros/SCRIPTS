--/***** Script for SelectTopNRows command from SSMS  *****/
--SELECT  distinct
--      [TIPO_CONSULTA]
--      ,[PARAM_DESC]
      
--  FROM [DBVitaCare].[dbo].[VTC_PROCESSO_CLINICO]


  select b.UT_NOME nome_paciente, a.CONSULTA_ID consulta, convert(varchar(10),a.DATA_CONSULTA,103)data_consulta, a.TIPO_CONSULTA, 
  isnull(a.OBSERVACAO,'') [observação], isnull(a.AVALIACAO,'') [avaliação], isnull(a.EVOLUCAO,'') [evolução], 
  isnull(a.OBSERVACOES_ATENDIMENTO,'')[observação_atendimento], isnull(c.TIPO_DOCUMENTO,'')[doc_emitido], isnull(e.EXAME_ID,'') exame_id,
  isnull(e.EXAME_NOME, '') nome_exame, isnull(e.MATERIAL,'') material_exame, isnull(e.QUANTIDADE,'') 
  qtde, isnull(f.MEDICAMENTO_NOME,'') medicamento_prescrito, isnull(g.PARAM_DESC,'') descricao_consulta, 
  isnull(h.CID,'') cid, isnull(g.valor,'') outros_dados, d.CODIGO_INTERNO_VITACARE codprof, d.NOME profissional, d.CBO
  
  from DBVitaCare.dbo.VTC_ATENDIMENTOS a
  inner join DBVitaCare.dbo.VTC_PACIENTES b on a.UTENTE_ID=b.UT_ID
  inner join recepcao.dbo.pacientes aa on b.ut_id=aa.id_pessoa_siab
  left join  DBVitaCare.dbo.VTC_DOCUMENTOS_EMITIDOS c on a.consulta_id=c.consulta_id
  inner join DBVitaCare.dbo.lista_profissionais d on a.PROFISSIONAL_ID=d.CODIGO_INTERNO_VITACARE
  left  join DBVitaCare.dbo.VTC_EXAMES_SOLICITADOS e on a.CONSULTA_ID=e.CONSULTA_ID
  left  join DBVitaCare.dbo.VTC_PRESCRICOES f on a.CONSULTA_ID=f.CONSULTA_ID
  left  join DBVitaCare.dbo.VTC_PROCESSO_CLINICO g on a.CONSULTA_ID=g.CONSULTA_ID
  left  join DBVitaCare.dbo.VW_ATEND_CID  h on a.CONSULTA_ID=h.CONSULTA_ID
--where  a.CONSULTA_ID=266751

--select * from DBVitaCare.dbo.VW_ATEND_CID



