-- Cad. individual ESUS

SELECT  
	B.nu_cns AS "CNS_DO_PROFISSIONAL", 
	B.nu_cbo_2002 as "CBO", B.nu_cnes AS "CNES",
	B.nu_ine AS "INE", TO_CHAR(A.dt_cad_individual, 'DD/MM/YYYY') AS "DATA",
	A.nu_cns_cidadao AS "CNS_DO_CIDADAO", a.st_responsavel_familiar as "RESPONSAVEL_FAMILIAR",
	a.nu_cartao_sus_responsavel AS "CNS_DO_RESPONSAVEÇ_FAMILIAR",a.nu_micro_area AS "MICRO_AREA",
	a.no_cidadao AS "NOME_COMPLETO", a.no_social_cidadao AS "NOME_SOCIAL", TO_CHAR(a.dt_nascimento,'DD/MM/YYYY') AS "DATA_DE_NASCIMENTO",
	CASE WHEN A.co_sexo = 0 THEN 'M' ELSE 'F' END "SEXO",
	(SELECT R.NO_RACA_COR FROM tb_raca_cor R WHERE A.co_raca_cor = r.co_raca_cor) AS "RAÇA/COR",
	(SELECT E.NO_ETNIA FROM tb_etnia E WHERE f.co_dim_etnia = e.co_etnia) AS "ETNIA", A.nu_pis_pasep AS "N°_NIS(PIS/PASES)",
	A.no_mae_cidadao AS "NOME_COMPLETO_DA_MAE", CASE WHEN a.st_desconhece_nome_mae = 1 THEN 'SIM' ELSE 'NAO' END  "MAE_DESCONHECIDA",
	A.no_pai_cidadao AS "NOME_COMPLETO_DO_PAI",CASE WHEN a.st_desconhece_nome_pai = 1 THEN 'SIM' ELSE 'NAO' END  "PAI_DESCONHECIDO",
	(SELECT N.NO_IDENTIFICADOR FROM TB_DIM_NACIONALIDADE N WHERE N.CO_ORDEM = A.co_nacionalidade) AS "NACIONALIDADE",
	(SELECT P.no_pais FROM TB_DIM_PAIS P WHERE co_seq_dim_pais = A.co_pais) AS "PAIS_DE_NASCIMENTO", 
	TO_CHAR(A.dt_naturalizacao, 'DD/MM/YYYY')AS "DATA_DE_NATURALIZACAO",TO_CHAR(A.dt_entrada_brasil,'DD/MM/YYYY')AS "DATA_DE_ENTRADA_NO_BRASIL",
	A.ds_portaria_naturalizacao AS "PORTARIA_DE_NATURALIZACAO", 
	M.no_municipio || ' ' || uf.sg_uf AS "MUNICIPIO_E_UF_DE_NASCIMENTO", a.nu_celular_cidadao AS "TELEFONE_CELULAR",
	a.ds_email_cidadao AS "E-MAIL", (SELECT TP.DS_TIPO_PARENTESCO FROM TB_DIM_TIPO_PARENTESCO TP WHERE F.co_dim_tipo_parentesco = TP.co_ordem)
	AS "RELAÇAO_DE_PARENTESCO_COM_O_RESPONSAVEL_FAMILIAR", (SELECT C.no_cbo FROM tb_cbo C WHERE a.co_cbo = c.co_cbo) AS "OCUPAÇÃO",
	CASE WHEN F.st_frequenta_creche = 0 THEN 'NÃO' ELSE 'SIM' END "FREQUENTA_ESCOLA_OU_CRECHE",
	(SELECT SM.DS_DIM_SITUACAO_TRABALHO FROM tb_dim_situacao_trabalho SM WHERE F.co_dim_situacao_trabalho = SM.co_seq_dim_situacao_trabalho) AS 
	"SITUAÇÃO_NO_MERCADO_DE_TRABALHO", (SELECT E.DS_DIM_TIPO_ESCOLARIDADE FROM tb_dim_tipo_escolaridade E WHERE F.co_dim_tipo_escolaridade = E.CO_ORDEM)
	AS "CURSO_MAIS_ELEVEDO_QUE_FREQUENTA_OU_FREQUENTOU", ' ' AS "CRIANCAS_0_A_9_ANOS_QUEM_FICA",CASE WHEN F.st_tipo_cuidado_crianca_1 = '0' THEN 'NÃO' ELSE 'SIM'
	END "ADULTO RESPONSAVEL", CASE WHEN F.st_tipo_cuidado_crianca_2 = '0' THEN 'NÃO' ELSE 'SIM'
	END "OUTRA(S) CRIANÇA(S)", 
	CASE WHEN F.st_tipo_cuidado_crianca_3 = '0' THEN 'NÃO' ELSE 'SIM'
	END "ADOLESCENTE", CASE WHEN F.st_tipo_cuidado_crianca_4 = '0' THEN 'NÃO' ELSE 'SIM'
	END "SOZINHA", CASE WHEN F.st_tipo_cuidado_crianca_5 = '0' THEN 'NÃO' ELSE 'SIM'
	END "CRECHE", CASE WHEN F.st_tipo_cuidado_crianca_6 = '0' THEN 'NÃO' ELSE 'SIM'
	END "OUTRA", CASE WHEN F.st_frequenta_cuidador = 1 THEN 'SIM' ELSE 'NÃO' END "FREQUENTA_CUIDADOR_TRADICIONAL",
	CASE WHEN F.st_participa_grupo_comunitario = 1 THEN 'SIM' ELSE 'NÃO' END "PARTICIPA_DE_ALGUM_GRUPO_COMUNITARIO",
	CASE WHEN F.st_plano_saude_privado = 1 THEN 'SIM' ELSE 'NÃO' END "POSSUI_PLANO_DE_SAUDE_PRIVADO",
	CASE WHEN F.st_participa_grupo_comunitario = 1 THEN 'SIM' ELSE 'NÃO' END "PARTICIPA_DE_ALGUM_GRUPO_COMUNITARIO",
	(SELECT s.ds_dim_tipo_orientacao_sexual FROM TB_DIM_tipo_ORIENTACAO_SEXUAL s where f.co_dim_tipo_orientacao_sexual = s.co_ordem) AS
	"ORIENTAÇÃO_SEXUAL", (SELECT I.DS_IDENTIDADE_GENERO FROM tb_dim_identidade_genero I WHERE I.CO_ORDEM = F.co_dim_identidade_genero)
	AS "IDENTIDADE_DE_GENERO", CASE WHEN F.st_deficiencia = 0 
	THEN 'NÃO' 
	ELSE 'SIM' END "TEM_DEFICIENCIA",
	 CASE WHEN F.st_defi_auditiva = 0 
	 THEN 'NÃO' ELSE 'SIM' END "AUDITIVA",
	CASE WHEN F.st_defi_visual = 0 
	 THEN 'NÃO' ELSE 'SIM' END "VISUAL",
	 CASE WHEN F.st_defi_fisica = 0 
	 THEN 'NÃO' ELSE 'SIM' END "FISICA",
	 CASE WHEN F.st_defi_intelectual_cognitiva = 0 
	 THEN 'NÃO' ELSE 'SIM' END "INTELECTUAL/COGNITIVA",
	CASE WHEN F.st_defi_outra = 0 
	 THEN 'NÃO' ELSE 'SIM' END "OUTRA", (SELECT s.ds_dim_tipo_saida_cadastro FROM tb_dim_tipo_saida_cadastro s where s.co_ordem = f.co_dim_tipo_saida_cadastro)
	AS "SAIDA_CADASTRO_CIDADAO", CASE WHEN F.ST_GESTANTE = 0 THEN 'NÃO' ELSE 'SIM' END "ESTA_GESTANTE",
	(SELECT p.ds_dim_tipo_condicao_peso FROM TB_DIM_TIPO_CONDICAO_PESO p where p.co_ordem = f.co_dim_tipo_condicao_peso) AS "CONDICAO_PESO",
	CASE WHEN F.st_doenca_respiratoria = 0 THEN 'NÃO' ELSE 'SIM' END "TEM_DOENÇA_RESPIRATORIA",
	CASE WHEN F.st_doenca_respira_asma = 0 
	THEN 'NÃO' ELSE 'SIM' END "ASMA",
	CASE WHEN F.st_doenca_respira_dpoc_enfisem = 0 
	THEN 'NÃO' ELSE 'SIM' END "DPCO/ENFISEMA",
	CASE WHEN F.st_doenca_respira_outra = 0 
	THEN 'NÃO' ELSE 'SIM' END "OUTRA",
	CASE WHEN F.st_doenca_respira_n_sabe = 0 
	THEN 'NÃO' ELSE 'SIM' END "NÃO_SABE",
	CASE WHEN F.st_fumante = 0 THEN 'NÃO' ELSE 'SIM' END "ESTA_FUMANTE",
	CASE WHEN F.st_alcool = 0 THEN 'NÃO' ELSE 'SIM' END "USUARIO_DE_ALCOOL",
	CASE WHEN F.st_outra_droga = 0 THEN 'NÃO' ELSE 'SIM' END "USUARIO_DE_OUTRAS_DROGAS",
	CASE WHEN F.st_hipertensao_arterial = 0 THEN 'NÃO' ELSE 'SIM' END "HIPERTENSAO_ARTERIAL",
	CASE WHEN F.st_diabete = 0 THEN 'NÃO' ELSE 'SIM' END "DIABETE",
	CASE WHEN F.st_avc = 0 THEN 'NÃO' ELSE 'SIM' END "AVC/DERRAME",	
	CASE WHEN F.st_infarto = 0 THEN 'NÃO' ELSE 'SIM' END "INFARTO",
	CASE WHEN F.st_doenca_cardiaca = 0 THEN 'NÃO' ELSE 'SIM' END "TEM_DOENÇA_CARDIACA",
	CASE WHEN F.st_doenca_card_insuficiencia = 0 THEN 'NÃO' ELSE 'SIM' END "INSUFICIENCIA_CARDIACA",
	CASE WHEN F.st_doenca_card_outro = 0 THEN 'NÃO' ELSE 'SIM' END "OUTRO",
	CASE WHEN F.st_doenca_card_n_sabe = 0 THEN 'NÃO' ELSE 'SIM' END "NÃO_SABE",
	CASE WHEN F.st_problema_rins = 0 THEN 'NÃO' ELSE 'SIM' END "TEM_OU_TEVE_PROBLEMAS_NOS_RINS",
	CASE WHEN F.st_problema_rins_insuficiencia = 0 THEN 'NÃO' ELSE 'SIM' END "INSUFICIENCIA_RENAL",
	CASE WHEN F.st_problema_rins_outro = 0 THEN 'NÃO' ELSE 'SIM' END "OUTRO",
	CASE WHEN F.st_problema_rins_nao_sabe = 0 THEN 'NÃO' ELSE 'SIM' END "NÃO_SABE",
	CASE WHEN F.st_hanseniase = 0 THEN 'NÃO' ELSE 'SIM' END "ESTA_COM_HANSENIASE",
	CASE WHEN F.st_tuberculose = 0 THEN 'NÃO' ELSE 'SIM' END "ESTA_COM_TUBERCULOSE",
	CASE WHEN F.st_cancer = 0 THEN 'NÃO' ELSE 'SIM' END "TEVE_OU_TEM_CANCER",
	CASE WHEN F.st_internacao_12 = 0 THEN 'NÃO' ELSE 'SIM' END "TEVE_ALGUMA_INTERNACAO_NOS_ULTIMOS_12_MESES",
	CASE WHEN F.st_tratamento_psiquiatra = 0 THEN 'NÃO' ELSE 'SIM' END "TEVE_DIAGNOSTICO_PROBLEMA_MENTAL_POR_PROF_DE_SAUDE",
	CASE WHEN F.st_acamado = 0 THEN 'NÃO' ELSE 'SIM' END "ESTA_ACAMADO",
	CASE WHEN F.st_domiciliado = 0 THEN 'NÃO' ELSE 'SIM' END "ESTA_DOMICILIADO",
	CASE WHEN F.st_usa_planta_medicinal = 0 THEN 'NÃO' ELSE 'SIM' END "USA_PLANTAS_MEDICINAIS",
	CASE WHEN F.st_pic = 0 THEN 'NÃO' ELSE ' ' END "USA_OUTRAS_PRATICAS_INTEGRATIVAS_E_COMPLEMENTARES",
	(SELECT  ab.ds_dim_tempo_morador_rua FROM tb_dim_tempo_morador_rua AB where ab.co_ordem = F.co_dim_tempo_morador_rua) "ESTA_EM_SITUACAO_DE_RUA",
	CASE WHEN F.st_acompanhado_instituicao = 0 THEN 'NÃO' ELSE ' ' END "É_ACOMPANHADO_POR_OUTRA_INSITUIÇÃO",
	CASE WHEN F.st_recebe_beneficio = 0 THEN 'NÃO' ELSE ' ' END "RECEBE_ALGUM_BENEFICIO",
	CASE WHEN F.st_visita_familiar_frequente = 0 THEN 'NÃO' ELSE ' ' END "VISITA_ALGUM_FAMILIAR_COM_FREQENCIA",
	(SELECT aa.ds_dim_frequencia_alimentacao FROM tb_dim_frequencia_alimentacao aa where aa.co_ordem = f.co_dim_frequencia_alimentacao)
	AS "QUANTAS_VEZES_SE_ALIMENTA_NO_DIA",CASE WHEN F.st_orig_alimen_restaurante_pop = 0 THEN 'NÃO' ELSE 'SIM' END "RESTAURANTE_POPULAR",
	CASE WHEN F.st_orig_alimen_doacao_reli = 0 THEN 'NÃO' ELSE 'SIM' END "DOAÇÃO_GRUPO_RELIGIOSO",
	CASE WHEN F.st_orig_alimen_doacao_rest = 0 THEN 'NÃO' ELSE 'SIM' END "DOAÇÃO_RESTAURANTE",
	CASE WHEN F.st_orig_alimen_doacao_popular = 0 THEN 'NÃO' ELSE 'SIM' END "DOAÇÃO_POPULAR",
	CASE WHEN F.st_orig_alimen_outros = 0 THEN 'NÃO' ELSE 'SIM' END "OUTRAS",
	CASE WHEN F.st_higiene_pessoal_acesso = 0 THEN 'NÃO' ELSE 'SIM' END "TEM_ACESSO_A_HIGIENE_PESSOAL",
	CASE WHEN F.st_hig_pess_banho = 0 THEN 'NÃO' ELSE 'SIM' END "BANHO",
	CASE WHEN F.st_hig_pess_sanitario = 0 THEN 'NÃO' ELSE 'SIM' END "ACESSO_AO_SANITARIO",
	CASE WHEN F.st_hig_pess_higiene_bucal = 0 THEN 'NÃO' ELSE 'SIM' END "HIGINE_BUCAL",
	CASE WHEN F.st_hig_pess_outros = 0 THEN 'NÃO' ELSE 'SIM' END "OUTRAS"
	
FROM tb_cds_cad_individual A
INNER JOIN TB_CDS_PROF B ON A.CO_CDS_PROF_CADASTRANTE = B.CO_SEQ_CDS_PROF 
INNER JOIN tb_fat_cad_individual F ON A.CO_UNICO_FICHA = F.NU_UUID_FICHA
INNER JOIN TB_DIM_MUNICIPIO M ON F.co_dim_municipio_cidadao = M.co_seq_dim_municipio
INNER JOIN TB_DIM_UF UF  ON  M.CO_DIM_UF = UF.CO_SEQ_DIM_UF