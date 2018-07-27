
-------------------------------------------------------------------------
-- RECEPCAO
-------------------------------------------------------------------------
use recepcao
go
--configurar salas
--select * from RECEPCAO.dbo.SalasAtendimento
----update RECEPCAO.dbo.SalasAtendimento set descricao='EXAMES DE RADIOGRAFIA'
--where codigo=5

--USE RECEPCAO

--DBCC CHECKIDENT(SalasAtendimento,RESEED,5)

--configurar fichas

--select * from recepcao.dbo.ficha

--truncate table recepcao.dbo.ficha

--GO
--DBCC CHECKIDENT (FICHA, RESEED, 1)
--GO

--prontuário
--update RECEPCAO.dbo.registro set numero=1

select * from RECEPCAO.dbo.registro


--zerar tabela de movimentos
select * from recepcao.dbo.movimentos
--truncate table recepcao.dbo.movimentos

select * from recepcao.dbo.pacientes
--truncate table recepcao.dbo.pacientes --
delete from recepcao.dbo.pacientes
DBCC CHECKIDENT('[pacientes]', RESEED, 0)


select * from [dbo].[PACIENTEOBS]
truncate table [dbo].[PACIENTEOBS]

select * from recepcao.dbo.labpedido
truncate table recepcao.dbo.labpedido

select * from recepcao.dbo.mov_primeira_consulta
truncate table recepcao.dbo.mov_primeira_consulta

select * from recepcao.dbo.pacientes_infoad
truncate table recepcao.dbo.pacientes_infoad

truncate table [dbo].[controle_acolhimento]
truncate table [dbo].[controle_acolhimento_historico]
truncate table [dbo].[CONTROLE_ACOLHIMENTO_HISTORICO_NOVO]
truncate table [dbo].[CONTROLE_ACOLHIMENTO_NOVO]
truncate table [dbo].[controle_acolhimento_novo_info]
truncate table [dbo].[CONTROLE_CHAMADAS]

truncate table [dbo].[CONTROLE_KIT_INTERNACAO]
truncate table [dbo].[controle_mov]
truncate table [dbo].[CONTROLE_MOV_CANCELA]
truncate table [dbo].[Controle_Mov_Cancelamentos]
truncate table [dbo].[controle_obs]
truncate table [dbo].[controle_pac]
truncate table [dbo].[controle_sala_atend]

truncate table [dbo].[controle_senhas]--
delete from  [dbo].[controle_senhas] --
DBCC CHECKIDENT('[controle_senhas]', RESEED, 0)

truncate table [dbo].[Med_Anamnese]
truncate table [dbo].[MED_ATESTADO_ATEND]
truncate table [dbo].[MED_ATESTADO_COMPARECIMENTO]
truncate table [dbo].[MED_DECLARACOES]
truncate table [dbo].[MED_MEDICACAO]
truncate table [dbo].[MED_MIN_HORARIOS]
truncate table [dbo].[Med_Prescricao]
truncate table [dbo].[med_reavalia]
truncate table [dbo].[med_Receituario]
truncate table [dbo].[med_resumo]
truncate table [dbo].[MovimentoSus]
truncate table [dbo].[PacInstrucao]
truncate table [dbo].[PARAM_LOG]
truncate table [dbo].[ProntuarioExt]
truncate table [dbo].[SADT]
truncate table [dbo].[SeqLab]
truncate table [dbo].[SUSANAMINESE]
truncate table [dbo].[SUSCID]
truncate table [dbo].[SUSCONDUTA]
truncate table [dbo].[SUSEXAME]
truncate table [IntegraCross].[Agend]
truncate table [IntegraCross].[Cancelados]
truncate table [IntegraCross].[ESPECIALIDADES]
truncate table [IntegraCross].[especialidades_exc]
truncate table [IntegraCross].[LOG_ERROS]
truncate table [IntegraCross].[REGULALEITO_XML]
truncate table [IntegraCross].[Resultados]
truncate table [IntegraCross].[Trans]
truncate table [Uni].[RegistrosUnificados]
truncate table log_erros
truncate table log
truncate table log_integra_tecsec
truncate table log_logins
truncate table labpedido

truncate table recepcao.dbo.agendaint
truncate table recepcao.dbo.ambps
truncate table recepcao.dbo.biometria
truncate table recepcao.dbo.cancelar
truncate table recepcao.[dbo].[AvisoObito]
truncate table recepcao.[dbo].[Braden]
truncate table recepcao.[dbo].[braden_avaliador]
truncate table recepcao.[dbo].[CadCondicao]
truncate table recepcao.[dbo].[CadOrienta]
truncate table recepcao.[dbo].[CADPAC]

delete recepcao.[dbo].[censo]
DBCC CHECKIDENT('[censo]', RESEED, 0)
--truncate table recepcao.[dbo].[censo]

truncate table recepcao.[dbo].[CC]
truncate table recepcao.[dbo].[CLASS_NAS_PAC]
truncate table recepcao.[dbo].[Classificaopac]
truncate table recepcao.[dbo].[classificaopacneo]
truncate table recepcao.[dbo].[classificaopacpq]
truncate table recepcao.[dbo].[ClassificaopacSCP]

delete recepcao.[dbo].[CODAMARELO]
DBCC CHECKIDENT('[CODAMARELO]', RESEED, 0)
--truncate table recepcao.[dbo].[CODAMARELO]

truncate table recepcao.[dbo].[codbarrasnv]
truncate table recepcao.[dbo].[comissoesXusuarios]
truncate table recepcao.[dbo].[controle_agenda]
truncate table recepcao.[dbo].[CONTROLE_CHAMADAS]
truncate table recepcao.[dbo].[Controle_Evolucao]
truncate table recepcao.[dbo].[controle_exames]
truncate table recepcao.[dbo].[Controle_Jejum]
truncate table recepcao.[dbo].[CONTROLE_KIT_INTERNACAO]
truncate table recepcao.[dbo].[Custo_LCT]
truncate table recepcao.[dbo].[Custo_LCT_SND]
truncate table recepcao.[dbo].[Custo_RateioxCusto]
truncate table recepcao.[dbo].[CUSTOS]
truncate table recepcao.[dbo].[detalhes]
truncate table recepcao.[dbo].[ESTATINTER]
truncate table recepcao.[dbo].[FichaPAxINT]
truncate table recepcao.[dbo].[histenf_adt]
truncate table recepcao.[dbo].[Integra_Lab_Fat]
truncate table recepcao.[dbo].[internacao_aux]
truncate table recepcao.[dbo].[KIT_INTERNACAO]
truncate table recepcao.[dbo].[LAUDO_AIH]
truncate table recepcao.[dbo].[Med_Alta]
truncate table recepcao.[dbo].[Med_ComplementoEV]
truncate table recepcao.[dbo].[med_encaminhamentom2]
truncate table recepcao.[dbo].[med_evolucao]
truncate table recepcao.[dbo].[med_inalacao]
truncate table recepcao.[dbo].[Med_ItemPrescricao]
truncate table recepcao.[dbo].[MED_ITEMPRESCRICAO_CANCELADOS]
truncate table recepcao.[dbo].[Med_ItemPrescricao_Enf]
truncate table recepcao.[dbo].[med_itemprescricao_via]
truncate table recepcao.[dbo].[MED_MIN_HORARIOS_NRC]
truncate table recepcao.[dbo].[Med_Obs]
truncate table recepcao.[dbo].[med_planoAlta]
truncate table recepcao.[dbo].[MED_PRESCRICAO_PREVISAO]
truncate table recepcao.[dbo].[medico_conselho]

select * from [dbo].[medicos] where codigo<> 1440
delete from [dbo].[medicos] where codigo<> 1440

truncate table recepcao.[dbo].[MOVIMENTOS_UNIFICA]
truncate table recepcao.[dbo].[OPME_TUSS]
truncate table recepcao.[dbo].[Plano_alta]
truncate table recepcao.[dbo].[REPOUSO]
truncate table recepcao.[dbo].[TIPOCOBRANCA]
truncate table recepcao.[dbo].[TUSS]
truncate table recepcao.[dbo].[unid_caracas]
truncate table recepcao.[dbo].[Unidades_InternacaoVirtual]
truncate table recepcao.[dbo].[Unidades_InternacaoVirtual_hist]

--truncate table recepcao.[dbo].[UnidadeSus]
delete recepcao.[dbo].[UnidadeSus]
DBCC CHECKIDENT('[UnidadeSus]', RESEED, 0)

truncate table recepcao. [dbo].[UnidadeXMunicipios]
truncate table [integracao].[dbo].[labpedido]
----------------------------------------------
--pesquisando tabelas
----------------------------------------------
--select * from [dbo].[AcertoPartic]
--select * from [dbo].[ADICIONAL]
--select * from [dbo].[Agenda]
--select * from [dbo].[AGENDAEXAMES]
--select * from [dbo].[AGENDAEXAMES_LOG]
--select * from [dbo].[AGENDAEXAMES_OBS]
--select * from [dbo].[agendaint]
--select * from [dbo].[Almoço]
--select * from [dbo].[ALTA_ENFER]
--select * from [dbo].[altaame]
--select * from [dbo].[AMBPS]
--select * from [dbo].[AMBPS_Detalhes]
--select * from [dbo].[AMILLN02]
--select * from [dbo].[AMILREC]
--select * from [dbo].[ANAMNESE]
--select * from [dbo].[ANAMNESE_MEDICAMENTOS]
--select * from [dbo].[APAC]
--select * from [dbo].[ArqMorto_fatrepasse]
--select * from [dbo].[arquivo]
--select * from [dbo].[ASSINATURAMED]
--select * from [dbo].[AtendNaoMedica]
--select * from [dbo].[AutoExame]
--select * from [dbo].[AvisoObito]
--select * from [dbo].[BoletimOcorrencia]
--select * from [dbo].[Braden]
--select * from [dbo].[braden_avaliador]
--select * from [dbo].[BXAUTOMATICA]
--select * from [dbo].[CADADC]
--select * from [dbo].[CADAUDITORIA]
--select * from [dbo].[cadcir]
--select * from [dbo].[CADCON]
--select * from [dbo].[CadCondicao]
--select * from [dbo].[CADEMP]
--select * from [dbo].[CADFER]
--select * from [dbo].[CADGRP]
--select * from [dbo].[CadKitInter]
--select * from [dbo].[CadLab]
--select * from [dbo].[CADMED]
--select * from [dbo].[CADMMT]
--select * from [dbo].[CadOrienta]
--select * from [dbo].[CADPAC]
--select * from [dbo].[CADPAC_ARQMORTO]
--select * from [dbo].[CADPAC_CLEAR]
--select * from [dbo].[CADRX]
--select * from [dbo].[CADSGC]
--select * from [dbo].[CadSocorrente]
--select * from [dbo].[CADSSV]
--select * from [dbo].[CadVitima]
--select * from [dbo].[CANCELAR]
--select * from [dbo].[CATALOGO]
--select * from [dbo].[CC]
--select * from [dbo].[CCCADEMPX]
--select * from [dbo].[censo]
--select * from [dbo].[centralguias_contas]
--select * from [dbo].[Ciclo_Quimio]
--select * from [dbo].[CID_NOTIFICICADOS]
--select * from [dbo].[CLASS_NAS_PAC]
--select * from [dbo].[Classificaopac]
--select * from [dbo].[classificaopacneo]
--select * from [dbo].[classificaopacpq]
--select * from [dbo].[ClassificaopacSCP]
--select * from [dbo].[CODAMARELO]
--select * from [dbo].[CODAMARELO_MED]
--select * from [dbo].[codbarrasnv]
--select * from [dbo].[CODGLO]
--select * from [dbo].[comissoes]
--select * from [dbo].[comissoesXusuarios]
--select * from [dbo].[COMPETENCIA]
--select * from [dbo].[COMPHAB]
--select * from [dbo].[Complementos]
--select * from [dbo].[COMPMOD]
--select * from [dbo].[COMPREG]
--select * from [dbo].[CONDICAO_ALTA]
--select * from [dbo].[CONGELADA]
--select * from [dbo].[CONSELHOS]
--select * from [dbo].[CONSULTA]
--select * from [dbo].[controle_acolhimento]
--select * from [dbo].[controle_agenda]
--select * from [dbo].[CONTROLE_CHAMADAS]
--select * from [dbo].[Controle_Evolucao]
--select * from [dbo].[controle_exames]
--select * from [dbo].[Controle_Jejum]
--select * from [dbo].[CONTROLE_KIT_INTERNACAO]
--select * from [dbo].[CONTROLE_PAINEL]
--select * from [dbo].[controle_reclassifica]
--select * from [dbo].[controle_sala]
--select * from [dbo].[CONTROLE_SALAS]
--select * from [dbo].[CONTROLE_SENHAS_CANCELADAS]
--select * from [dbo].[CONTROLE_SETORES]
--select * from [dbo].[CONTROLE_SETORES_SUB]
--select * from [dbo].[CONTROLE_SETORES_VINC]
--select * from [dbo].[CONTROLE_SETORESXSALAS]
--select * from [dbo].[controle_substancia]
--select * from [dbo].[CONTROLE_TIPOCLASSIFICACAO]
--select * from [dbo].[ControleManut]
--select * from [dbo].[CONTROLES]
--select * from [dbo].[CONTROLES_ITEMS]
--select * from [dbo].[CONTROLES_MOVIMENTOS]
--select * from [dbo].[CONV_LEITOCOMPLETA]
--select * from [dbo].[convenios]
--select * from [dbo].[convenios_exfat]
--select * from [dbo].[CONVEXTERNO] 
--select * from [dbo].[convtemp]
--select * from [dbo].[CRACHA]
--select * from [dbo].[Custo_LCT]
--select * from [dbo].[Custo_LCT_Exames]
--select * from [dbo].[Custo_LCT_Producao]
--select * from [dbo].[Custo_LCT_RateioManual]
--select * from [dbo].[Custo_LCT_RecebeRateio]
--select * from [dbo].[Custo_LCT_SND]
--select * from [dbo].[Custo_Planilhas]
--select * from [dbo].[Custo_Rateio]
--select * from [dbo].[Custo_RateioSND]
--select * from [dbo].[Custo_RateioxCusto]
--select * from [dbo].[Custo_Regras]
--select * from [dbo].[CUSTOS]
--select * from [dbo].[detalhes]
--select * from [dbo].[ELEVADOR]
--select * from [dbo].[empresas]
--select * from [dbo].[ENCAMINHA_ENF]
--select * from [dbo].[EncaminhamentoUnidades]
--select * from [dbo].[EndConvenios]
--select * from [dbo].[entrevista_social]
--select * from [dbo].[Equipamentos]
--select * from [dbo].[Especialidades]
--select * from [dbo].[ESPECIALIDADES_AGENDAEXAMES]
--select * from [dbo].[ESPECIALIDADES_DEPARA_TECSEC]
--select * from [dbo].[Esquema_Quimio]
--select * from [dbo].[ESTATINTER]
--select * from [dbo].[ESTATISTICA]
--select * from [dbo].[EVOLUCAO_MULT_FISIO]
--select * from [dbo].[Evolucao_Proc]
--select * from [dbo].[EvolucaoExame]
--select * from [dbo].[exames_imp_apac]
--select * from [dbo].[exceptions]
--select * from [dbo].[Fat_LiberaUsuario]
--select * from [dbo].[FatDiario]
--select * from [dbo].[FatFinanca]
--select * from [dbo].[FATPREVIA]
--select * from [dbo].[FATREPASSE]
--select * from [dbo].[FatRepEmp]
--select * from [dbo].[ficha]
--select * from [dbo].[FichaPAxINT]
--select * from [dbo].[FichaSiscolo]
--select * from [dbo].[FixaUnidades]
--select * from [dbo].[Formulas]
--select * from [dbo].[frequencia]
--select * from [dbo].[FUNCIONARIOXSERVICO]
--select * from [dbo].[GASES]
--select * from [dbo].[GERADOR]
--select * from [dbo].[GERAL]
--select * from [dbo].[gerenciamento_assistencial]
--select * from [dbo].[GrupoInventario]
--select * from [dbo].[GrupoMed]
--select * from [dbo].[GrupoServico]
--select * from [dbo].[Hemodialise_pac]
--select * from [dbo].[HistEco]
--select * from [dbo].[HistEcoInf]
--select * from [dbo].[histenf_adt]
--select * from [dbo].[histenf_mater]
--select * from [dbo].[histenf_neo]
--select * from [dbo].[histenf_ped]
--select * from [dbo].[histenf_psico]
--select * from [dbo].[HISTORICO]
--select * from [dbo].[Historico_NF]
--select * from [dbo].[HISTPADRAO]
--select * from [dbo].[HistRepasse]
--select * from [dbo].[HistTermo_Hemo]
--select * from [dbo].[HoraDomingo]
--select * from [dbo].[Horario]
--select * from [dbo].[idades_gestacionais]
--select * from [dbo].[IMPORT_TEMP]
--select * from [dbo].[Ind2]
--select * from [dbo].[infadtencaminhamento]
--select * from [dbo].[InfoExtras]
--select * from [dbo].[INFORMACAO_GERAIS]
--select * from [dbo].[Integra_Lab_Fat]
--select * from [dbo].[inter_leitos]
--select * from [dbo].[intercorrencias]
--select * from [dbo].[InterMedicamentosa]
--select * from [dbo].[InterMedicamentosa_Can]
--select * from [dbo].[internacao_aux]
--select * from [dbo].[Intervalo]
--select * from [dbo].[INTERVENCAOFARMACEUTICA]
--select * from [dbo].[ISOLAMENTO]
--select * from [dbo].[KIT_INTERNACAO]
--select * from [dbo].[KitForm]
--select * from [dbo].[KitValor]
--select * from [dbo].[LabExame]
--select * from [dbo].[LabGrupo]
--select * from [dbo].[LabMascara]
--select * from [dbo].[LABPEDIDO]
--select * from [dbo].[LabRef]
--select * from [dbo].[LabResultado]
--select * from [dbo].[labVinculo]
--select * from [dbo].[LancaFat]
--select * from [dbo].[LancaQuimioRadio]
--select * from [dbo].[LancaRepasse]
--select * from [dbo].[LAUDO]
--select * from [dbo].[LAUDO_AIH]
--select * from [dbo].[LAUDO_NAO_ATENDIDO]
--select * from [dbo].[LaudoEspecial]
--select * from [dbo].[LaudosPers]
--select * from [dbo].[LaudoSUS]
--select * from [dbo].[LCT]
--select * from [dbo].[lct_automatico]
--select * from [dbo].[lctAuto_excecoes]
--select * from [dbo].[LeitosVagosOcupados] -IBCC
--select * from [dbo].[LEMBRETE]
--select * from [dbo].[ClinicasTotais] --IBCC
--select * from [dbo].[Livrao]
--select * from [dbo].[Local]
--select * from [dbo].[LOG_INTEGRA_TECSEC]
--select * from [dbo].[log_localidade]
--select * from [dbo].[LOG_LOGINS]
--select * from [dbo].[LogAgenda]
--select * from [dbo].[logCapaProntuario]
--select * from [dbo].[LOTE]
--select * from [dbo].[LoteBradesco]
--select * from [dbo].[mac_address]
--select * from [dbo].[MALADIRETA]
--select * from [dbo].[MANUTENCAO]
--select * from [dbo].[MANUTENCAO_COLABORA]
--select * from [dbo].[mat_siscolo]
--select * from [dbo].[Mater_Indicacao]
--select * from [dbo].[Mater_Intercorrencia]
--select * from [dbo].[Material_Prestador]
--select * from [dbo].[Maternidade]
--select * from [dbo].[Med_Alta]
--select * from [dbo].[MED_ALTA_EXAMES]
--select * from [dbo].[Med_Anamnese]
--select * from [dbo].[med_anamnese_clinico]
--select * from [dbo].[med_anamnese_clinicoplano]
--select * from [dbo].[med_anamnese_pq]
--select * from [dbo].[med_anamnese_pqplano]
--select * from [dbo].[Med_AnamnesePlano]
--select * from [dbo].[Med_Antimicrobiano]
--select * from [dbo].[Med_AntimicrobianoCopia]
--select * from [dbo].[MED_ATESTADO_ATEND]
--select * from [dbo].[MED_ATESTADO_COMPARECIMENTO]
--select * from [dbo].[med_Auditoria]
--select * from [dbo].[MED_AUTORIZACAO]
--select * from [dbo].[med_CadEvol]
--select * from [dbo].[MED_CARTAOGEST]
--select * from [dbo].[MED_CARTAOGEST_ITENS]
--select * from [dbo].[med_CCIH]
--select * from [dbo].[med_CCIH_Del]
--select * from [dbo].[Med_Cirurgias]
--select * from [dbo].[Med_ComplementoEV]
--select * from [dbo].[Med_ComplementoEV_QUIMIO]
--select * from [dbo].[Med_ComplementoEVCopia]
--select * from [dbo].[med_controle_cirurgia]
--select * from [dbo].[MED_CONTROLE_NR]
--select * from [dbo].[med_Curativo]
--select * from [dbo].[Med_CVC]
--select * from [dbo].[Med_CVCNeo]
--select * from [dbo].[MED_DECLARACOES]
--select * from [dbo].[med_dep_cuidados_neo]
--select * from [dbo].[med_dep_cuidados_neo_pac]
--select * from [dbo].[Med_Dep_NTiss]
--select * from [dbo].[med_enc_intercons]
--select * from [dbo].[med_encaminhamento]
--select * from [dbo].[med_encaminhamento_naomedica]
--select * from [dbo].[med_encaminhamentom2]
--select * from [dbo].[med_encaminhamentoneo]
--select * from [dbo].[med_encaminhamentopq]
--select * from [dbo].[med_evolucao]
--select * from [dbo].[med_evolucao_previa]
--select * from [dbo].[med_evolucaoplano]
--select * from [dbo].[med_exames_op]
--select * from [dbo].[med_exames_op_desc]
--select * from [dbo].[med_exames_op_vinc]
--select * from [dbo].[Med_GrauDependencia]
--select * from [dbo].[Med_Grupo_NTiss]
--select * from [dbo].[med_Horarios]
--select * from [dbo].[med_inalacao]
--select * from [dbo].[med_inalacaoCopia]
--select * from [dbo].[Med_int]
--select * from [dbo].[Med_int_ObsMed]
--select * from [dbo].[med_interconsulta]
--select * from [dbo].[Med_Intervencao]
--select * from [dbo].[med_itemprescr_carta]
--select * from [dbo].[med_itemprescr_carta_cultura]
--select * from [dbo].[med_itemprescr_carta_justificativas]
--select * from [dbo].[med_itemprescr_carta_obs]
--select * from [dbo].[med_itemprescr_carta_obs_bloqueio]
--select * from [dbo].[Med_ItemPrescricao]
--select * from [dbo].[MED_ITEMPRESCRICAO_CANCELADOS]
--select * from [dbo].[Med_ItemPrescricao_Enf]
--select * from [dbo].[MED_ITEMPRESCRICAO_ENF_AMB]
--select * from [dbo].[Med_ItemPrescricao_Enf_Copia]
--select * from [dbo].[MED_ITEMPRESCRICAO_INTERFARMA]
--select * from [dbo].[MED_ITEMPRESCRICAO_INTERFARMA_OBS]
--select * from [dbo].[MED_ITEMPRESCRICAO_INTERFARMA_OBSGERAIS]
--select * from [dbo].[MED_ITEMPRESCRICAO_INTERFARMA_PRESCRICAO]
--select * from [dbo].[med_itemprescricao_medicacao]
--select * from [dbo].[MED_ITEMPRESCRICAO_REVISAO]
--select * from [dbo].[MED_ITEMPRESCRICAO_SUBST]
--select * from [dbo].[med_itemprescricao_via]
--select * from [dbo].[MED_ITEMPRESCRICAO_VISUALIZA_FARMACIACLINICA]
--select * from [dbo].[Med_ItemPrescricaoCopia]
--select * from [dbo].[Med_Lct_NTiss]
--select * from [dbo].[med_MASCARAS_evolucao]
--select * from [dbo].[MED_MASCARAS_EVOLUCAO_CAMP]
--select * from [dbo].[MED_MEDICACAO]
--select * from [dbo].[MED_MEDICACAO_POLTRONAS]
--select * from [dbo].[MED_MIN_HORARIOS]
--select * from [dbo].[MED_MIN_HORARIOS_NRC]
--select * from [dbo].[Med_Monitorizacao]
--select * from [dbo].[Med_NTiss]
--select * from [dbo].[med_ntiss_pac]
--select * from [dbo].[Med_Obs]
--select * from [dbo].[med_oftalmo]
--select * from [dbo].[med_oncologia]
--select * from [dbo].[med_PedeCir]
--select * from [dbo].[med_planoAlta]
--select * from [dbo].[med_PreConsulta]
--select * from [dbo].[Med_Prescricao]
--select * from [dbo].[MED_PRESCRICAO_PREVISAO]
--select * from [dbo].[Med_PrescricaoCorrigidas]
--select * from [dbo].[med_PrescricaoParcial]
--select * from [dbo].[med_proc_obs]
--select * from [dbo].[med_proc_vinc]
--select * from [dbo].[Med_Procedimentos]
--select * from [dbo].[med_Produto]
--select * from [dbo].[Med_Protocolo_Cad]
--select * from [dbo].[Med_Protocolo_Cad_cID]
--select * from [dbo].[MED_QUIMIO]
--select * from [dbo].[med_reavalia]
--select * from [dbo].[med_Receituario]
--select * from [dbo].[med_redereabilita]
--select * from [dbo].[Med_Restrição]
--select * from [dbo].[med_RestricaoEnteral]
--select * from [dbo].[med_resumo]
--select * from [dbo].[med_risc_cad]
--select * from [dbo].[med_risc_desc]
--select * from [dbo].[MED_RISC_MENSURACAO]
--select * from [dbo].[med_risc_pac]
--select * from [dbo].[med_risc_vinc]
--select * from [dbo].[MED_RISC_VINC_MENSURACAO]
--select * from [dbo].[MED_RISC2_CAD]
--select * from [dbo].[med_TipoEnteral]
--select * from [dbo].[med_TipoParenteral]
--select * from [dbo].[Med_TriagemNutricional]
--select * from [dbo].[Med_Velocidade]
--select * from [dbo].[Med_Ventilacao]
--select * from [dbo].[Med_Vinculo]
--select * from [dbo].[Med_Vinculo]
--select * from [dbo].[med3]
--select * from [dbo].[medcir]
--select * from [dbo].[MedConvenio]
--select * from [dbo].[medico_conselho]
--select * from [dbo].[medicos] where nome like('medi%') -- 1440
--select * from [dbo].[medicoSadt]
--select * from [dbo].[MedicoXEmpresa]
--select * from [dbo].[metas]
--select * from [dbo].[MODELO_DECLARACOES]
--select * from [dbo].[MonitoramentoTempo]
--select * from [dbo].[MotivoViolento]
--select * from [dbo].[MOV_ENF]
--select * from [dbo].[MOV_PRIMEIRA_CONSULTA]
--select * from [dbo].[movdia]
--select * from [dbo].[movimentos]
--select * from [dbo].[MOVIMENTOS_UNIFICA]
--select * from [dbo].[MovimentoSus]
--select * from [dbo].[MunicipiosSus]
--select * from [dbo].[NANDA]
--select * from [dbo].[Neoplasia_Cad]
--select * from [dbo].[NF]
--select * from [dbo].[NFServicos]
--select * from [dbo].[NIVEIS_PROFISSIONAIS]
--select * from [dbo].[obrigatorio_esi]
--select * from [dbo].[obs_sem_alta_global]
--select * from [dbo].[ObsHistoricos]
--select * from [dbo].[ObsParticular]
--select * from [dbo].[ObsUnidades]
--select * from [dbo].[OCORRENCIA]
--select * from [dbo].[OCORRENCIA_SEQ]
--select * from [dbo].[OPME_TUSS]
--select * from [dbo].[orientacao_itens]
--select * from [dbo].[orientacoes]
--select * from [dbo].[OrigemInternacao]
--select * from [dbo].[origens]
--select * from [dbo].[Origens_Movimento]
--select * from [dbo].[OS]
--select * from [dbo].[pac_procedencia]
--select * from [dbo].[PACIENTEOBS]
--select * from [dbo].[PACIENTES]
--select * from [dbo].[pacientes_infoad]
--select * from [dbo].[PacInstrucao]
--select * from [dbo].[PACOTE]
--select * from [dbo].[PARAM_CUSTO]
--select * from [dbo].[PARAM_DIR]
--select * from [dbo].[PARAM_EXT]
--select * from [dbo].[PARAM_FAT]
--select * from [dbo].[Param_Impr_Atest_Decl]
--select * from [dbo].[param_int]
--select * from [dbo].[PARAM_LAB]
--select * from [dbo].[Param_Lab2]
--select * from [dbo].[PARAM_LOG]
--select * from [dbo].[param_obr_camp]
--select * from [dbo].[param_obr_form]
--select * from [dbo].[PARAM_PRESCRICAO]
--select * from [dbo].[PARAM_SADT]
--select * from [dbo].[ParamAgenda]
--select * from [dbo].[parametros]
--select * from [dbo].[Pastoral]
--select * from [dbo].[pdfaux]
--select * from [dbo].[PDFAUX_ITEM]
--select * from [dbo].[Pendencia_importacao_fat]
--select * from [dbo].[PENDENCIAS]
--select * from [dbo].[PIM]
--select * from [dbo].[pixeon_integracao]
--select * from [dbo].[Plano_alta]
--select * from [dbo].[Plano_alta_previa]
--select * from [dbo].[planoesp]
--select * from [dbo].[planos]
--select * from [dbo].[Pneumo_Infantil]
--select * from [dbo].[PORTE]
--select * from [dbo].[PreOperatorio]
--select * from [dbo].[Preparo]
--select * from [dbo].[presenca_risco]
--select * from [dbo].[PROCEDENCIA]
--select * from [dbo].[prod]
--select * from [dbo].[PROMISSORIA]
--select * from [dbo].[PRONTUARIO_ENFERMAGEM]
--select * from [dbo].[ProntuarioExt]
--select * from [dbo].[protocolos_assistencial]
--select * from [dbo].[RateioGeral]
--select * from [dbo].[Recepcao.dbo.Termo]
--select * from [dbo].[RECIBO]
--select * from [dbo].[REFCALCULO]
--select * from [dbo].[refeicao]
--select * from [dbo].[Refeicao_Acomp]
--select * from [dbo].[Registro_Externo]
--select * from [dbo].[REGISTRO2]
--select * from [dbo].[RegistroSnd]
--select * from [dbo].[RegistroSndTipo]
--select * from [dbo].[Regracih]
--select * from [dbo].[regras]
--select * from [dbo].[REGULALEITO]
--select * from [dbo].[REGULALEITO_RETORNO]
--select * from [dbo].[REGULALEITO_RETORNO_JSON]
--select * from [dbo].[REPOUSO]
--select * from [dbo].[Repouso_Unidades]
--select * from [dbo].[requisicaokit]
--select * from [dbo].[RESTRICAO]
--select * from [dbo].[Results]
--select * from [dbo].[Resumo]
--select * from [dbo].[resumo_cir_ano]
--select * from [dbo].[RN]
--select * from [dbo].[Rotina]
--select * from [dbo].[RPS_IBCC]
--select * from [dbo].[S_pa]
--select * from [dbo].[SADT]
--select * from [dbo].[SADT_Exame]
--select * from [dbo].[SADT_Historico]
--select * from [dbo].[SADT_MedExt]
--select * from [dbo].[Sadtaih]
--select * from [dbo].[SALASATENDIMENTO_INTEGRACAO]
--select * from [dbo].[Same]
--select * from [dbo].[SAME_Item]
--select * from [dbo].[SeqLab]
--select * from [dbo].[sequencia]
--select * from [dbo].[Sequencia_Exames]
--select * from [dbo].[SERVICOAUX]
--select * from [dbo].[SERVICOS]
--select * from [dbo].[SETORAGUA]
--select * from [dbo].[sexos]
--select * from [dbo].[simpro]
--select * from [dbo].[SisColo]
--select * from [dbo].[Siscolo_Estat]
--select * from [dbo].[solicitacao_radio_quimio]
--select * from [dbo].[spp] -- IBCC
--select * from [dbo].[spptotais] --IBCC
--select * from [dbo].[spptotais2] --IBCC
--select * from [dbo].[SUSANAMINESE]
--select * from [dbo].[SUSCID]
--select * from [dbo].[SUSCONDUTA]
--select * from [dbo].[SUSEXAME]
--select * from [dbo].[SYNAPSE]
--select * from [dbo].[TabCir]
--select * from [dbo].[TABGERAL]
--select * from [dbo].[TB_CLINICA]
--select * from [dbo].[TERMO_INTERNACAO_PQ_VOL]
--select * from [dbo].[TERMO_PROC_CIR]
--select * from [dbo].[TERMO_RESPONSABILIDADE_URGENCIA_RELATIVA]
--select * from [dbo].[tipoagenda]
--select * from [dbo].[TIPOCOBRANCA]
--select * from [dbo].[TipoDoc]
--select * from [dbo].[TipoDocumento_Cross]
--select * from [dbo].[TipoMovimento]
--select * from [dbo].[TipoMovimento_Cross]
--select * from [dbo].[TipoRefeicao]
--select * from [dbo].[TIPORESULT_EXAME]
--select * from [dbo].[TipoSaida_Cross]
--select * from [dbo].[TIPOSERVICO]
--select * from [dbo].[TISS]
--select * from [dbo].[TISS_ACOMODA]
--select * from [dbo].[tiss_atendimento]
--select * from [dbo].[TISS_AVULSA]
--select * from [dbo].[TISS_CBOS]
--select * from [dbo].[TISS_PRORROGACAO]
--select * from [dbo].[TISS_REF]
--select * from [dbo].[Tiss_SADT]
--select * from [dbo].[TISS_SEQ]
--select * from [dbo].[TISS_SEQ_GSI]
--select * from [dbo].[TissxCiefas]
--select * from [dbo].[TPS]
--select * from [dbo].[TRACE_PRESC]
--select * from [dbo].[TRANSFERENCIA]
--select * from [dbo].[TUSS]
--select * from [dbo].[UNIDADES_APRAZAMENTO]
--select * from [dbo].[Unidades_InternacaoVirtual]
--select * from [dbo].[Unidades_InternacaoVirtual_hist]
--select * from [dbo].[UnidadesPrimarias]
--select * from [dbo].[UnidadeSus]
--select * from [dbo].[UnidadeXMunicipios]
--select * from [dbo].[uniesp]
--select * from [dbo].[UserArquivo]
--select * from [dbo].[USUARIOXSETOR]
--select * from [dbo].[Validade_Refeicao]
--select * from [dbo].[Versao]
--select * from [dbo].[VidaFilme]
--select * from [dbo].[VIDAMMT]
--select * from [dbo].[VIDAPONTO]
--select * from [dbo].[VIDASERVICO]
--select * from [dbo].[vinc_cidadexMedicamentos_Cons]
--select * from [dbo].[vincesplucy]
--select * from [dbo].[vincexames]
--select * from [dbo].[vincexameskit]
--select * from [dbo].[vincLocalizaProd]
--select * from [dbo].[vincmedps]
--select * from [dbo].[vincSalas]
--select * from [dbo].[Vinculo_Quimio]
--select * from [dbo].[VinculoMedEmp]
--select * from [dbo].[Volume]
--select * from [IntegraCross].[Agend]
--select * from [IntegraCross].[Cancelados]
--select * from [IntegraCross].[ERROS]
--select * from [IntegraCross].[ESPECIALIDADES]
--select * from [IntegraCross].[especialidades_exc]
--select * from [IntegraCross].[LOG_ERROS]
--select * from [IntegraCross].[REGULALEITO_XML]
--select * from [IntegraCross].[Resultados]
--select * from [IntegraCross].[TEMP]
--select * from [IntegraCross].[Trans]
--select * from [News].[AvisoNews]
--select * from [News].[Modulos]
--select * from [Uni].[RegistrosUnificados]

-------------------------------------------------------------------------
-- ACESSO
-------------------------------------------------------------------------
--apagando tabelas que não são do sistema.
-------
use acesso
go
--drop table acesso.dbo.acesso_bck
--drop table acesso.dbo.acesso_2804
--drop table acesso.dbo.USUARIOS_BCK_2804
--drop table acesso.dbo.usuarios_bck_2804_adm
--drop table acesso.dbo.USUARIOS_BCK_2804_ULT
--drop table acesso.dbo.setores_bck
--drop table acesso.dbo.acesso2804

-------------------------------------------------------------------------
--zerando usuários --codigo in(1292,1308)
select * from acesso.dbo.Usuarios
--delete from acesso.dbo.Usuarios
where codigo not in(1292,1308,1309,1310,1312,1313,1314,1454,1455,1465,1466,1505)

-------------------------------------------------------------------------
--select * from acesso.dbo.Usuarios
--where login in('sar','pr','medico','alexandre','PERFIL SUPRIMENTOS','NELSON','ANDERSON','PERFIL RECEPCAO','PERFIL ENFERMAGEM','PERFIL MÉDICO','MARIANA.LEMOS','WELLINGTON.CASTRO')

-------
select * from acesso.dbo.Supervisores
where CodUsuario not in(1292,1308,1309,1310,1312,1313,1314,1454,1455,1465,1466,1505)

--delete from acesso.dbo.Supervisores
where CodUsuario not in(1292,1308,1309,1310,1312,1313,1314,1454,1455,1465,1466,1505)

---

select * from acesso.dbo.acesso
where CodUsuario not in(1292,1308,1309,1310,1312,1313,1314,1454,1455,1465,1466,1505)

--delete from acesso.dbo.acesso
where CodUsuario not in(1292,1308,1309,1310,1312,1313,1314,1454,1455,1465,1466,1505)

--select * from [dbo].[ASSINATURA]
--select * from [dbo].[USUARIO_TEMA]
--select * from [dbo].[Usuarios_TipoMovimento]
-------------------------------

-------------------------------------------------------------------------
-- MATERIAS
-------------------------------------------------------------------------
use materias
go
--select * from [dbo].[alteracao_nf] 
--select * from [dbo].[bck_fecha] 
--select * from [dbo].[CustoMedio]
--select * from [dbo].[ESTATBAR]
--select * from [dbo].[HistoricoInventario1]
--select * from [dbo].[inventario2]
--select * from [dbo].[MOVIMENTO]
--select * from [dbo].[Numeracao]
--select * from [dbo].[OBS_Psicotropico]
--select * from [dbo].[RequisicaoKit]


truncate table [dbo].[alteracao_nf] 
truncate table [dbo].[bck_fecha] 
truncate table [dbo].[CustoMedio]
truncate table [dbo].[ESTATBAR]
truncate table [dbo].[HistoricoInventario1]
truncate table [dbo].[inventario2]
truncate table [dbo].[MOVIMENTO]
truncate table [dbo].[Numeracao]
truncate table [dbo].[OBS_Psicotropico]
truncate table [dbo].[RequisicaoKit]

select * from [dbo].[TEMPMAPA]
truncate table [dbo].[TEMPMAPA]

select * from [dbo].[SALDOPROD]
truncate table [dbo].[SALDOPROD]

select * from materias.dbo.COMPETENCIA
--update materias.dbo.COMPETENCIA set comp='092015' where situacao='A'
select * from materias.dbo.COMPETENCIA where comp<>'092015'  
delete from materias.dbo.COMPETENCIA where comp<>'092015'  

----------------------------------------------
select cmedio,estoque,saldo,cunit,* from materias.dbo.PRODUTO
--update materias.dbo.PRODUTO set estoque=0,saldo=0,operador='Importação',ESTOQUEBK=0


-------------------------------------------------------------------------
-- DEMAIS CONFIGURAÇÕES - CONTINUAR DAQUI...
-------------------------------------------------------------------------

--select * from recepcao.dbo.PARAM_EXT
--cnes - Cod_unid_sus= 6680704
--cnpj 29468055000102 confirmar
--Endereco_Hosp=EST BOTAFOGO, S/N - Bairro_hosp='COSTA BARROS', 
--Empresa='UPA 24H COSTA BARROS', Empresa2='UPA 24H COSTA BARROS'
--09.652.823/0001-76 ---- 09652823000176

select * from materias.[dbo].[PARAM_MAT]



select * from acesso.dbo.sistemas
--update acesso.dbo.sistemas set versao=null
where codigo=21

SELECT * FROM RECEPCAO.DBO.param_int
--update RECEPCAO.DBO.param_int set nomeunid='UPA 24H COSTA BARROS'
SELECT * FROM RECEPCAO.DBO.PARAM_DIR
SELECT * FROM RECEPCAO.DBO.PARAM_EXT
SELECT * FROM RECEPCAO.DBO.PARAM_FAT
SELECT * FROM RECEPCAO.DBO.Param_Impr_Atest_Decl
SELECT * FROM RECEPCAO.DBO.param_int
SELECT * FROM RECEPCAO.DBO.PARAM_LAB
SELECT * FROM RECEPCAO.DBO.Param_Lab2
SELECT * FROM RECEPCAO.DBO.PARAM_LOG
SELECT * FROM RECEPCAO.DBO.param_obr_camp
SELECT * FROM RECEPCAO.DBO.param_obr_form
SELECT * FROM RECEPCAO.DBO.PARAM_PRESCRICAO
SELECT * FROM RECEPCAO.DBO.PARAM_SADT
SELECT * FROM RECEPCAO.DBO.ParamAgenda

-------------------------------------------------------------------------
-- cirurgia
-------------------------------------------------------------------------
use cirurgia
go

SELECT * FROM cirurgia.[dbo].[BaixaCir] 
SELECT * FROM cirurgia.[dbo].[cadcir] 
SELECT * FROM cirurgia.[dbo].[DebitoCirurgico]
SELECT * FROM cirurgia.[dbo].[HistoricoPac]

truncate table cirurgia.[dbo].[BaixaCir] 

--truncate table cirurgia.[dbo].[cadcir] 
delete cirurgia.[dbo].[cadcir]
DBCC CHECKIDENT('[cadcir]', RESEED, 0)

truncate table cirurgia.[dbo].[DebitoCirurgico]
truncate table cirurgia.[dbo].[HistoricoPac]

----------------------------------------------------------------
--Banco de Sangue
----------------------------------------------------------------
use bcosangue;
go

--SELECT * FROM bcosangue.[dbo].[Amostra]
--SELECT * FROM bcosangue.[dbo].[Bolsas_Processadas]
--SELECT * FROM bcosangue.[dbo].[CancelaReserva]
--SELECT * FROM bcosangue.[dbo].[Componentes]
--SELECT * FROM bcosangue.[dbo].[Doacoes]
--SELECT * FROM bcosangue.[dbo].[Doador]
--SELECT * FROM bcosangue.[dbo].[Fraciona_Transfusao]
--SELECT * FROM bcosangue.[dbo].[Infusao]
--SELECT * FROM bcosangue.[dbo].[IntegracaoLab]
--SELECT * FROM bcosangue.[dbo].[LOG]
--SELECT * FROM bcosangue.[dbo].[Movimento_Reagente]
--SELECT * FROM bcosangue.[dbo].[PacSangue]
--SELECT * FROM bcosangue.[dbo].[Pedido_Transfusao]
--SELECT * FROM bcosangue.[dbo].[Pedido_Transfusao_Just]
--SELECT * FROM bcosangue.[dbo].[ProvaCruzada]
--SELECT * FROM bcosangue.[dbo].[Resultado_Transfusao]
--SELECT * FROM bcosangue.[dbo].[ResultadoProc]
--SELECT * FROM bcosangue.[dbo].[RetornoBolsa]
--SELECT * FROM bcosangue.[dbo].[SeqBolsa]
--SELECT * FROM bcosangue.[dbo].[SequenciaAmostra]
--SELECT * FROM bcosangue.[dbo].[Sorologia]
--SELECT * FROM bcosangue.[dbo].[Tipagem_Transfusao]
--SELECT * FROM bcosangue.[dbo].[Transfusao]
--SELECT * FROM bcosangue.[dbo].[VINCULO_EXAMES_LAB]

truncate table bcosangue.[dbo].[Amostra]
truncate table bcosangue.[dbo].[Bolsas_Processadas]
truncate table bcosangue.[dbo].[CancelaReserva]
truncate table bcosangue.[dbo].[Componentes]
truncate table bcosangue.[dbo].[Doacoes]
truncate table bcosangue.[dbo].[Doador]
truncate table bcosangue.[dbo].[Fraciona_Transfusao]
truncate table bcosangue.[dbo].[Infusao]
truncate table bcosangue.[dbo].[IntegracaoLab]
truncate table bcosangue.[dbo].[LOG]
truncate table bcosangue.[dbo].[Movimento_Reagente]
truncate table bcosangue.[dbo].[PacSangue]
truncate table bcosangue.[dbo].[Pedido_Transfusao]
truncate table bcosangue.[dbo].[Pedido_Transfusao_Just]
truncate table bcosangue.[dbo].[ProvaCruzada]
truncate table bcosangue.[dbo].[Resultado_Transfusao]
truncate table bcosangue.[dbo].[ResultadoProc]
truncate table bcosangue.[dbo].[RetornoBolsa]
truncate table bcosangue.[dbo].[SeqBolsa]
truncate table bcosangue.[dbo].[SequenciaAmostra]
truncate table bcosangue.[dbo].[Sorologia]
truncate table bcosangue.[dbo].[Tipagem_Transfusao]
truncate table bcosangue.[dbo].[Transfusao]
truncate table bcosangue.[dbo].[VINCULO_EXAMES_LAB]

----------------------------------------------------------------
--Cadastro
----------------------------------------------------------------
use cadastro;
go

--SELECT * FROM cadastro.

--truncate table cadastro.[dbo].[Amostra]



----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
use acesso;
go
BACKUP DATABASE ACESSO TO DISK ='E:\BancoUPA\Zerado\ACESSO.BAK'
go
---
use bcosangue;
go
BACKUP DATABASE bcosangue TO DISK ='E:\BancoUPA\Zerado\bcosangue.BAK'
go
---
use cadastro;
go
BACKUP DATABASE cadastro TO DISK ='E:\BancoUPA\Zerado\cadastro.BAK'
go
---
use cirurgia;
go
BACKUP DATABASE cirurgia TO DISK ='E:\BancoUPA\Zerado\cirurgia.BAK'
go
---
use integracao;
go
BACKUP DATABASE integracao TO DISK ='E:\BancoUPA\Zerado\integracao.BAK'
go
---
use materias;
go
BACKUP DATABASE MATERIAS TO DISK ='E:\BancoUPA\Zerado\MATERIAS.BAK'
go
------
use recepcao;
go
BACKUP DATABASE RECEPCAO TO DISK ='E:\BancoUPA\Zerado\RECEPCAO.BAK'
go
---
use TSMANAGER;
go
BACKUP DATABASE TSMANAGER TO DISK ='E:\BancoUPA\Zerado\TSMANAGER.BAK'
go
---