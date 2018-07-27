USE RECEPCAO;
select distinct
(select top 1 nome from RECEPCAO.dbo.PEP_Parametros) NOME_UB,
C.NOMEEQUIPE, C.NOME, C.SEXO, C.DATA_NASCIMENTO, C.IDADE, C.CNS, 
ISNULL ((SELECT TOP 1 X.CID10 FROM PEPMOVIMENTOS_CID A INNER JOIN PEPMOVIMENTOS B ON A.ID_PEPMOVIMENTOS  = B.CODIGO
INNER JOIN CID X ON A.ID_CID = X. ID 
WHERE A.ACOMPANHAR = 1 AND C.IDPEP = B.CODPAC),'') COMORBIDADES,
ISNULL ((SELECT TOP 1 X.DESCR FROM PEPMOVIMENTOS_CID A INNER JOIN PEPMOVIMENTOS B ON A.ID_PEPMOVIMENTOS  = B.CODIGO
INNER JOIN CID X ON A.ID_CID = X. ID 
WHERE A.ACOMPANHAR = 1 AND C.IDPEP = B.CODPAC),'') COMORBIDADES,
(SELECT TOP 1 NOME FROM 
(SELECT E.NOME, row_number() over (partition by cod_pac, e.nome order by dt_aplica) Dose  
FROM VACINAS_PACIENTES B 
INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
WHERE E.ID = 2061 AND C.IDPEP= B.COD_PAC) QRY WHERE DOSE = 1) [HPV D1],
(SELECT TOP 1 DT_APLICA FROM 
(SELECT B.DT_APLICA, row_number() over (partition by cod_pac, e.nome order by dt_aplica) Dose  
FROM VACINAS_PACIENTES B 
INNER JOIN VACINAS E ON B.ID_VACINAS = E.ID
WHERE E.ID = 2061 AND C.IDPEP= B.COD_PAC) QRY WHERE DOSE = 1) [DATA DE APLICACAO],

1




--upper(isnull((select substring(x.rua + ', ' + x.num + ' ' + isnull(x.complemento,''), 1, 60) from recepcao.dbo.pacientes x where x.codigo = c.IDPep),'')) [ENDERECO], 
--isnull((select recepcao.dbo.num(x.tel) from recepcao.dbo.pacientes x where x.codigo = c.IDPep),0) TEL1,
--isnull((select recepcao.dbo.num(x.telcel) from recepcao.dbo.pacientes x where x.codigo = c.IDPep),0) TEL2, 
--substring(c.prontuario,1,4)+substring(c.prontuario,6,2)+substring(c.prontuario,9,5) N_PRONT, SUBSTRING(c.prontuario,0,5) COD_AREA, SUBSTRING(c.prontuario,6,2) COD_MICROA,
--isnull((select a.cpf from recepcao.dbo.pacientes a where a.codigo=c.idpep),'')CPF, isnull((select a.dnv from recepcao.dbo.pacientes a where a.codigo=c.idpep),'')DNV, 
--isnull(c.CNS,'')CNS, isnull((select nis from openquery (siab,'select nis, id from siabfacil.pessoa') where id=c.IDPep ),'') NIS, C.NOME, C.mae NOME_MAE,
--c.sexo SEXO_PACIENTE, C.IDADE, convert(varchar(10),c.data_nascimento,103) DATA_NASC, 
--isnull((select case when g.descricao='BRANCA' then 'B'
--when  g.descricao='PRETA'  then 'N'
--when  g.descricao='AMARELA' then 'A'
--when  g.descricao='PARDA' then 'P'
--when  g.descricao='INDIGENA' then 'I'			
--else '' end descricao from recepcao.dbo.pacientes e 
--inner join    RECEPCAO.dbo.RACAS g on e.etnia=g.CODIGO
--where c.idpep=e.codigo),'')COR,
--isnull((select case when a.ID=1 then 1
--	when  a.ID=3 then 2
--	when  a.ID=4 then 3
--	when  a.ID=5 then 4
--	when  a.ID=6 then 5
--	when  a.ID=6 then 7
--	else '' end escolaridade from recepcao.dbo.pacientes p 
--							inner join recepcao.dbo.Escolaridade a on p.IDEscolaridade=a.ID
--							where p.codigo=c.idpep),'') N_ESCOLAR,
----isnull(convert(varchar(10),d.DATA_INICIAL,103),'') DT_DIAG_DM,
----isnull(convert(varchar(10),e.DATA_INICIAL,103),'') DT_DIAG_HAS,
--([recepcao].[dicionario].[Fr_TrazDtDiagDiabete](c.idpep)) DT_DIAG_DM,
--[recepcao].[dicionario].[Fr_TrazDtDiagHipertensao](c.idpep) DT_DIAG_HAS,
----isnull(isnull((select top 1 b.cid10 from recepcao.dbo.PepMovimentos_CID a
----		inner join recepcao.dbo.cid b on a.id_cid=b.id 
----		inner join recepcao.dbo.pepmovimentos p on a.id_PepMovimentos =p.codigo and  p.codigo=c.idpep
----		where CID10 in ('E10','E149') order by a.id_PepMovimentos_CIDS desc),
----		(select top 1 b.codigo from recepcao.dbo.pepmovimentos_ciaps a
----		inner join recepcao.dbo.ciap b on a.id_ciap=b.ID 
----		inner join recepcao.dbo.pepmovimentos p on a.id_PepMovimentos =p.codigo and  p.codigo=c.idpep 
----		where b.Codigo in ('T89','T90') order by a.id_PepMovimentos_Ciaps desc)),'') CID_ENT_DM,
----isnull(isnull((select top 1 b.cid10 from recepcao.dbo.PepMovimentos_CID a
----		inner join recepcao.dbo.cid b on a.id_cid=b.id 
----		inner join recepcao.dbo.pepmovimentos p on a.id_PepMovimentos =p.codigo and  p.codigo=c.idpep
----		where CID10 in ('I10','I159') order by a.id_PepMovimentos_CIDS desc),
----		(select top 1 b.codigo from recepcao.dbo.pepmovimentos_ciaps a
----		inner join recepcao.dbo.ciap b on a.id_ciap=b.ID 
----		inner join recepcao.dbo.pepmovimentos p on a.id_PepMovimentos =p.codigo and  p.codigo=c.idpep 
----		where b.Codigo in ('K86','K87') order by a.id_PepMovimentos_Ciaps desc)),'') CID_ENT_HAS,
--isnull([recepcao].[dicionario].[Fr_TrazCidDiabete](c.idpep), '') [CID_ENT_DM],
--	isnull([recepcao].[dicionario].[Fr_TrazCidHipertensao](c.idpep), '') [CID_ENT_HAS],
--isnull((select top 1 case when pre_ap_tabagismo='S' then 1 else 2 end tab from recepcao.dbo.PRONTUARIO_ENFERMAGEM x
--																	inner join recepcao.dbo.pepmovimentos m on x.mov_id = m.codigo 
--																	where m.codpac=c.idpep
--																	order by x.pre_data desc),'2') TAB,
--(select count(pre_id) from recepcao.dbo.PRONTUARIO_ENFERMAGEM s 
--		inner join recepcao.dbo.pepmovimentos m on m.codigo=s.MOV_ID
--		where m.codpac=c.idpep and pre_ap_tabagismo='S') TAB_TEMPO,
--isnull((select top 1 PRE_AP_TABAG_DIA from recepcao.dbo.PRONTUARIO_ENFERMAGEM S
--		inner join recepcao.dbo.pepmovimentos m on m.codigo=s.MOV_ID
--		where m.codpac=c.idpep and pre_ap_tabagismo='S'
--		order by pre_data desc),'') TAB_QUANT,
--isnull((select top 1 convert(varchar(10),dtatende,103) from recepcao.dbo.pepmovimentos m where m.codpac=c.IDPep and especialidade = 323 order by dtatende desc),'') DT_ULT_CONS_MED,
--isnull((select count(codigo) from recepcao.dbo.pepmovimentos m where m.codpac=c.IDPep and especialidade = 323),'') CONS_MED_TOTAL,

--isnull((select top 1 convert(varchar(10),dtatende,103) from recepcao.dbo.pepmovimentos m where m.codpac=c.IDPep and especialidade = 1360 order by dtatende desc),'') DT_ULT_CONS_ENF,
--isnull((select count(codigo) from recepcao.dbo.pepmovimentos m where m.codpac=c.IDPep and especialidade = 1360),'') CONS_ENF_TOTAL,
--isnull((select top 1 convert(varchar(10),dtatende,103) from recepcao.dbo.pepmovimentos m where m.codpac=c.IDPep and especialidade = 1362 order by dtatende desc),'') DT_ULT_CONS_SB,
--isnull((select top 1 convert(varchar(10),data,103) from openquery (siab, 
--'SELECT a.data, a.pessoa_id, a.familia_id
--FROM SIABFACIL.ATENDIMENTO A 
--INNER JOIN SIABFACIL.MONITORADOR B ON A.MONITORADOR_ID = B.ID
--INNER JOIN SIABFACIL.FAMILIA D ON A.FAMILIA_ID = D.ID
--INNER JOIN CNES.LFCES037 C ON C.COD_AREA = D.COD_AREA
--WHERE A.EXCLUIDO = FALSE
--AND A.FAMILIA_ID IS NOT NULL
--AND A.MONITORADOR_ID = 3') x
--where x.pessoa_id = c.idsiab order by data desc),'') DT_ULT_VISITA_ACS,
--isnull((select top 1 PRE_ATIV_FISICA from recepcao.dbo.PRONTUARIO_ENFERMAGEM order by pre_data desc),'') ATIV_FIS,
--isnull((select top 1 convert(float,Peso) from recepcao.dbo.historicoafericoes x
--								inner join recepcao.dbo.pepmovimentos m on x.IDMov = m.codigo 
--								where m.codpac=c.idpep and x.peso is not NULL
--								order by data desc),'') PESO,
--isnull((select top 1 convert(float,altura) from recepcao.dbo.historicoafericoes x
--								inner join recepcao.dbo.pepmovimentos m on x.IDMov = m.codigo 
--								where m.codpac=c.idpep and x.altura is not NULL
--								order by data desc),'') ALTURA,
--isnull((select top 1 round(CONVERT(float,peso)/(convert(float,Altura)*convert(float,altura)),2) from recepcao.dbo.historicoafericoes x
--								inner join recepcao.dbo.pepmovimentos m on x.IDMov = m.codigo 
--								where m.codpac=c.idpep and x.peso is not NULL and x.altura >0 
--								order by data desc),'') IMC,
--isnull((select top 1 round(CONVERT(float,Circunferencia)/(convert(float,Altura)*convert(float,altura)),2) from recepcao.dbo.historicoafericoes x
--								inner join recepcao.dbo.pepmovimentos m on x.IDMov = m.codigo 
--								where m.codpac=c.idpep and x.peso is not NULL and x.Circunferencia >0 
--								order by data desc),'') CIRCUNFERENCIA,
--isnull((select top 1  case when A.OlhoEsqRetinopatia LIKE '%NÃO%' then '6'
--when  A.OlhoEsqRetinopatia LIKE '%SEM%'  then '1'
--when  A.OlhoEsqRetinopatia='RETINOPATIA DIABÉTICA NÃO PROLIFERATIVA MODERADA' then '3'
--when  A.OlhoEsqRetinopatia='RETINOPATIA DIABÉTICA PROLIFERATIVA' then '5'
--when  A.OlhoEsqRetinopatia='RETINOPATIA DIABÉTICA NÃO PROLIFERATIVA LEVE' then '2'		
--when  A.OlhoEsqRetinopatia LIKE '%INTENSA%' then '4'		
--else '' end RETINOGRAFIA_ESQ from EXAMES.TeleRetinografia A 
--where c.idpep=A.CODPAC ORDER BY ID DESC),'')RETINOGRAFIA_ESQ, 
--ISNULL ((select top 1  CONVERT (VARCHAR (10), a.data, 103)  from EXAMES.TeleRetinografia A 
--where c.idpep=A.CODPAC ORDER BY ID DESC), '') DT_RETIN_ESQ,
--isnull((select top 1  case when A.OlhoDirRetinopatia LIKE '%NÃO%' then '6'
--when  A.OlhoDirRetinopatia LIKE '%SEM%'  then '1'
--when  A.OlhoDirRetinopatia='RETINOPATIA DIABÉTICA NÃO PROLIFERATIVA MODERADA' then '3'
--when  A.OlhoDirRetinopatia='RETINOPATIA DIABÉTICA PROLIFERATIVA' then '5'
--when  A.OlhoDirRetinopatia='RETINOPATIA DIABÉTICA NÃO PROLIFERATIVA LEVE' then '2'		
--when  A.OlhoDirRetinopatia LIKE '%INTENSA%' then '4'		
--else '' end RETINOGRAFIA_DIR from EXAMES.TeleRetinografia A 
--where c.idpep=A.CODPAC ORDER BY ID DESC),'')RETINOGRAFIA_DIR, 
--ISNULL ((select top 1  CONVERT (VARCHAR (10), a.data, 103)  from EXAMES.TeleRetinografia A 
--where c.idpep=A.CODPAC ORDER BY ID DESC), '') DT_RETIN_DIR,
--isnull((select top 1  case when A.registro_fundoscopia = 'S' then '6'
--else '' end FUNDOSCOPIA_ESQ from protocolo_hiperdia A 
--INNER JOIN PEPMOVIMENTOS B ON A.MOV_ID = B.CODIGO
--where c.idpep=B.CODPAC),'')FUNDOSCOPIA_ESQ, 
--isnull((select top 1 CONVERT (VARCHAR (10), b.datafinaliza, 103)  from protocolo_hiperdia A 
--INNER JOIN PEPMOVIMENTOS B ON A.MOV_ID = B.CODIGO
--where c.idpep=B.CODPAC AND A.registro_fundoscopia IS NOT NULL AND A.REGISTRO_FUNDOSCOPIA <> 'N'),'')DT_FUNDOSCOPIA_ESQ,
--isnull((select top 1  case when A.registro_fundoscopia = 'S' then '6'
--else '' end FUNDOSCOPIA_ESQ from protocolo_hiperdia A 
--INNER JOIN PEPMOVIMENTOS B ON A.MOV_ID = B.CODIGO
--where c.idpep=B.CODPAC),'')FUNDOSCOPIA_DIR, 
--isnull((select top 1 CONVERT (VARCHAR (10), b.datafinaliza, 103)  from protocolo_hiperdia A 
--INNER JOIN PEPMOVIMENTOS B ON A.MOV_ID = B.CODIGO
--where c.idpep=B.CODPAC AND A.registro_fundoscopia IS NOT NULL AND A.REGISTRO_FUNDOSCOPIA <> 'N'),'')DT_FUNDOSCOPIA_DIR,
--isnull((select top 1 CONVERT (VARCHAR (10), b.datafinaliza, 103)  from protocolo_hiperdia A 
--INNER JOIN PEPMOVIMENTOS B ON A.MOV_ID = B.CODIGO
--where c.idpep=B.CODPAC AND A.avaliacao_pe_diabetico IS NOT NULL),'')DT_PES_AVAL,
--isnull((select top 1  case when A.AVALIACAO_PE_DIABETICO LIKE '%NÃO%' then '6'
--when  A.AVALIACAO_PE_DIABETICO = '1'  then '0'
--when  A.AVALIACAO_PE_DIABETICO='2' then '1'
--when  A.AVALIACAO_PE_DIABETICO ='3' then '2'
--when  A.AVALIACAO_PE_DIABETICO='4' then '3'		
--when  A.AVALIACAO_PE_DIABETICO LIKE '5' then '4'	
--when  A.AVALIACAO_PE_DIABETICO LIKE '6' then '5'		
--else '' end CATEG_RISC_MMII_ESQ from protocolo_hiperdia A 
--INNER JOIN PEPMOVIMENTOS B ON A.MOV_ID = B.CODIGO
--where c.idpep=B.CODPAC ORDER BY ID DESC),'')CATEG_RISC_MMII_ESQ,
--isnull((select top 1  case when A.AVALIACAO_PE_DIABETICO LIKE '%NÃO%' then '6'
--when  A.AVALIACAO_PE_DIABETICO = '1'  then '0'
--when  A.AVALIACAO_PE_DIABETICO='2' then '1'
--when  A.AVALIACAO_PE_DIABETICO ='3' then '2'
--when  A.AVALIACAO_PE_DIABETICO='4' then '3'		
--when  A.AVALIACAO_PE_DIABETICO LIKE '5' then '4'	
--when  A.AVALIACAO_PE_DIABETICO LIKE '6' then '5'		
--else '' end CATEG_RISC_MMII_ESQ from protocolo_hiperdia A 
--INNER JOIN PEPMOVIMENTOS B ON A.MOV_ID = B.CODIGO
--where c.idpep=B.CODPAC ORDER BY ID DESC),'')CATEG_RISC_MMII_DIR,
--'' AMPUT_MMII_ESQ,
--	'' DT_AMPUT_ESQ,
--	'' AMPUT_MMII_DIR,
--	'' DT_AMPUT_DIR,
--	ISNULL ((select top 1 resultado from recepcao.[exames].[Colesterol_total] where codpac = c.idpep order by data desc),'') COLESTEROL_TOTAL,
--	ISNULL ((select top 1 convert(varchar(10), data, 103) from recepcao.[exames].[Colesterol_total] where codpac = c.idpep order by data desc),'') DT_COLEST_TOTAL,
--	ISNULL ((select top 1 resultado from recepcao.[exames].[colesterol_ldl] where codpac = c.idpep order by data desc),'') LDL,
--	ISNULL ((select top 1 convert(varchar(10), data, 103) from recepcao.[exames].[colesterol_ldl] where codpac = c.idpep order by data desc),'') DT_LDL,
--	ISNULL ((select top 1 resultado from recepcao.[exames].[Colesterol_HDL] where codpac = c.idpep order by data desc),'') HDL,
--	ISNULL ((select top 1 convert(varchar(10), data, 103) from recepcao.[exames].[Colesterol_HDL] where codpac = c.idpep order by data desc),'') DT_HDL,
--	ISNULL ((select top 1 resultado from recepcao.[exames].[Trigliceridios] where codpac = c.idpep order by data desc),'') TRIGLICERIDEOS,
--	ISNULL ((select top 1 convert(varchar(10), data, 103) from recepcao.[exames].[Trigliceridios] where codpac = c.idpep order by data desc),'') DT_TRIG,
--		case when [recepcao].[dicionario].[Fr_TrazPressaoSistolicaPac](c.idpep) > 10 AND [recepcao].[dicionario].[Fr_TrazPressaoSistolicaPac](c.idpep) <= 140 then '1' 
--		when [recepcao].[dicionario].[Fr_TrazPressaoSistolicaPac](c.idpep) >141 and [recepcao].[dicionario].[Fr_TrazPressaoSistolicaPac](c.idpep) <= 159 then '2' 
--	  when [recepcao].[dicionario].[Fr_TrazPressaoSistolicaPac](c.idpep) >=160 and [recepcao].[dicionario].[Fr_TrazPressaoSistolicaPac](c.idpep) <= 179 then '3'
--	  when [recepcao].[dicionario].[Fr_TrazPressaoSistolicaPac](c.idpep) >180 then '4'  
--	  else '' end PAS,
--	  ISNULL ((SELECT TOP 1 A.PRESSAOSISTOLICA FROM HistoricoAfericoes A
--	  INNER JOIN PEPMOVIMENTOS B ON A.IDMov = B.CODIGO
--	  WHERE B.CODPAC = C.IDPEP ORDER BY A.ID DESC),'') PAS,
--	    case when [recepcao].[dicionario].[Fr_TrazPressaoDiastolicaPac](c.idpep) > 10 AND [recepcao].[dicionario].[Fr_TrazPressaoDiastolicaPac](c.idpep) <= 90 then '1'
--		 when [recepcao].[dicionario].[Fr_TrazPressaoDiastolicaPac](c.idpep) > 91 AND [recepcao].[dicionario].[Fr_TrazPressaoDiastolicaPac](c.idpep) <=99 then '2' 
--	   when [recepcao].[dicionario].[Fr_TrazPressaoDiastolicaPac](c.idpep) > 99 AND [recepcao].[dicionario].[Fr_TrazPressaoDiastolicaPac](c.idpep) <=109 then '3' 
--	   when [recepcao].[dicionario].[Fr_TrazPressaoDiastolicaPac](c.idpep) >= 110 then '4'
--	   else '' end PAD,
--	   ISNULL ((SELECT TOP 1 A.PRESSAODIASTOLICA FROM HistoricoAfericoes A
--	  INNER JOIN PEPMOVIMENTOS B ON A.IDMov = B.CODIGO
--	  WHERE B.CODPAC = C.IDPEP ORDER BY A.ID DESC),'') PAD,
--	isnull([recepcao].[dicionario].[Fr_TrazDtPressaoArterialPac](c.idpep),'') DT_PA,
--	ISNULL (convert(varchar(10),( 
	
--	select top 1 case when convert(numeric(3,1), case len(dbo.num(HEMOGLOBINA)) 
--	                                       when 3 then substring(dbo.num(HEMOGLOBINA),2,1) + '.' + substring(dbo.num(HEMOGLOBINA),3,1)
--								           when 1 then null
--										   when 2 then substring(dbo.num(HEMOGLOBINA),2,1)
--										   when 4 then substring(dbo.num(HEMOGLOBINA),1,2) + '.' + substring(dbo.num(HEMOGLOBINA),4,1)
--										   else null end) >= 1 and convert(numeric(3,1), case len(dbo.num(HEMOGLOBINA)) 
--	                                       when 3 then substring(dbo.num(HEMOGLOBINA),2,1) + '.' + substring(dbo.num(HEMOGLOBINA),3,1)
--								           when 1 then null
--										   when 2 then substring(dbo.num(HEMOGLOBINA),2,1)
--										   when 4 then substring(dbo.num(HEMOGLOBINA),1,2) + '.' + substring(dbo.num(HEMOGLOBINA),4,1)
--										   else null end) <= 7 then 1
			
--					  when convert(numeric(3,1), case len(dbo.num(HEMOGLOBINA)) 
--	                                       when 3 then substring(dbo.num(HEMOGLOBINA),2,1) + '.' + substring(dbo.num(HEMOGLOBINA),3,1)
--								           when 1 then null
--										   when 2 then substring(dbo.num(HEMOGLOBINA),2,1)
--										   when 4 then substring(dbo.num(HEMOGLOBINA),1,2) + '.' + substring(dbo.num(HEMOGLOBINA),4,1)
--										   else null end) >= 7.1 and convert(numeric(3,1), case len(dbo.num(HEMOGLOBINA)) 
--	                                       when 3 then substring(dbo.num(HEMOGLOBINA),2,1) + '.' + substring(dbo.num(HEMOGLOBINA),3,1)
--								           when 1 then null
--										   when 2 then substring(dbo.num(HEMOGLOBINA),2,1)
--										   when 4 then substring(dbo.num(HEMOGLOBINA),1,2) + '.' + substring(dbo.num(HEMOGLOBINA),4,1)
--										   else null end) <= 8 then 2

--					  when convert(numeric(3,1), case len(dbo.num(HEMOGLOBINA)) 
--	                                       when 3 then substring(dbo.num(HEMOGLOBINA),2,1) + '.' + substring(dbo.num(HEMOGLOBINA),3,1)
--								           when 1 then null
--										   when 2 then substring(dbo.num(HEMOGLOBINA),2,1)
--										   when 4 then substring(dbo.num(HEMOGLOBINA),1,2) + '.' + substring(dbo.num(HEMOGLOBINA),4,1)
--										   else null end) >= 8.1 and convert(numeric(3,1), case len(dbo.num(HEMOGLOBINA)) 
--	                                       when 3 then substring(dbo.num(HEMOGLOBINA),2,1) + '.' + substring(dbo.num(HEMOGLOBINA),3,1)
--								           when 1 then null
--										   when 2 then substring(dbo.num(HEMOGLOBINA),2,1)
--										   when 4 then substring(dbo.num(HEMOGLOBINA),1,2) + '.' + substring(dbo.num(HEMOGLOBINA),4,1)
--										   else null end) <= 10 then 3

--					  when convert(numeric(3,1), case len(dbo.num(HEMOGLOBINA)) 
--	                                       when 3 then substring(dbo.num(HEMOGLOBINA),2,1) + '.' + substring(dbo.num(HEMOGLOBINA),3,1)
--								           when 1 then null
--										   when 2 then substring(dbo.num(HEMOGLOBINA),2,1)
--										   when 4 then substring(dbo.num(HEMOGLOBINA),1,2) + '.' + substring(dbo.num(HEMOGLOBINA),4,1)
--										   else null end) >= 10.1 and convert(numeric(3,1), case len(dbo.num(HEMOGLOBINA)) 
--	                                       when 3 then substring(dbo.num(HEMOGLOBINA),2,1) + '.' + substring(dbo.num(HEMOGLOBINA),3,1)
--								           when 1 then null
--										   when 2 then substring(dbo.num(HEMOGLOBINA),2,1)
--										   when 4 then substring(dbo.num(HEMOGLOBINA),1,2) + '.' + substring(dbo.num(HEMOGLOBINA),4,1)
--										   else null end) <= 11.9 then 4

--					  when convert(numeric(3,1), case len(dbo.num(HEMOGLOBINA)) 
--	                                       when 3 then substring(dbo.num(HEMOGLOBINA),2,1) + '.' + substring(dbo.num(HEMOGLOBINA),3,1)
--								           when 1 then null
--										   when 2 then substring(dbo.num(HEMOGLOBINA),2,1)
--										   when 4 then substring(dbo.num(HEMOGLOBINA),1,2) + '.' + substring(dbo.num(HEMOGLOBINA),4,1)
--										   else null end) >= 12 then 5
--					  else null
--					  end
--	 FROM EXAMES.hba1c_hemoglobina_glicada WHERE CODPAC = C.IDPEP ORDER BY DATA DESC)), '') HBA1C,
--	 ISNULL (( SELECT TOP 1 HEMOGLOBINA FROM recepcao.[exames].[hba1c_hemoglobina_glicada] A 
--	WHERE a.codpac = c.idpep  and  isnumeric(a.hemoglobina)=1 order by a.data desc),'')HBA1C,
--	'' COMPLICAÇÕES_SEC
from recepcao.indicadores.vw_pep_siab c
INNER JOIN vacinas_pacientes D ON C.IDPEP = D.COD_PAC
INNER JOIN VACINAS E ON D.ID_VACINAS = E.ID

	




 




