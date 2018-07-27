USE RECEPCAO

--Residentes fora da área de abrangência
SET DATEFORMAT DMY
SELECT  CONCAT('TOTAL: ',SUM([CONSULTAS_MEDICAS_FORA_DA_AREA DE_ABRANGENCIA])) [CONSULTAS MEDICAS FORA DA ÁREA DE ABRANGÊNCIA] FROM (
SELECT  a.dtatende [DATA] ,COUNT(1) [CONSULTAS_MEDICAS_FORA_DA_AREA DE_ABRANGENCIA]
FROM PepMovimentos A
     INNER JOIN PACIENTES B ON(A.codpac = B.codigo)
     INNER JOIN Especialidades C ON(A.Especialidade = C.Codigo)
WHERE A.Status = 'F'
      AND C.Codigo = 323
      AND B.cod_familia = 'FORA DE AREA' 
	GROUP BY A.dtatende )TP


-------------------------------------------------------

--ATENDIMENTO MEDICO A RESIDENTES DENTRO DA AREA DE ABRANGENCIA POR FX ETARIA

SET DATEFORMAT DMY 

select  EQUIPE,SUM(A) [<1], SUM(B) [1 A 4], SUM(C) [5 A 9], SUM(D) [10 A 14], SUM(E) [15 A 19], SUM(F) [20 A 39], SUM(G) [40 A 49],
SUM(H) [50 A 59], SUM(I) [>60], SUM(A+B+C+D+E+F+G+H+I) [TOTAL] from (
SELECT  B.nomeequipe [EQUIPE], 
 SUM(CASE WHEN B.idade < 1 THEN 1 ELSE 0 END) 'A',
 SUM(CASE WHEN B.idade BETWEEN 1 AND 4 THEN 1 ELSE 0 END) 'B',
 SUM(CASE WHEN B.idade BETWEEN 5 AND 9 THEN 1 ELSE 0 END) 'C',
 SUM(CASE WHEN B.idade BETWEEN 10 AND 14 THEN 1 ELSE 0 END) 'D',
 SUM(CASE WHEN B.idade BETWEEN 15 AND 19 THEN 1 ELSE 0 END) 'E',
 SUM(CASE WHEN B.idade BETWEEN 20 AND 39 THEN 1 ELSE 0 END) 'F',
 SUM(CASE WHEN B.idade BETWEEN 40 AND 49 THEN 1 ELSE 0 END) 'G',
 SUM(CASE WHEN B.idade BETWEEN 50 AND 59 THEN 1 ELSE 0 END) 'H',
 SUM(CASE WHEN B.idade >60 THEN 1 ELSE 0 END) 'I',
 A.dtatende [DATA], B.NomeEquipe [EQUIPE_], M.nome [PROFISSIONAL]
FROM PepMovimentos A
INNER JOIN Indicadores.vw_pep_siab B ON (A.codpac = B.IDPep)
INNER JOIN medicos M ON (A.codmed = M.CODIGO)
WHERE A.Status = 'F'
AND A.Especialidade = 323 
GROUP BY B.NomeEquipe, a.dtatende, b.NomeEquipe, m.nome)aa
GROUP BY EQUIPE




-------------------------------------------------------
--TIPO DE ATENDIMENTO MEDICO E DE ENFERMEIRO

SELECT *
FROM
(
    SELECT  [EQUIPE],
           SUM([PUERICULTURA]) [PUERICULTURA],
           SUM([PRE_NATAL]) [PRE_NATAL],
           SUM([PREV_CANCER_UTERO]) [PREV_CANCER_UTERO],
           SUM([DST_AIDS]) [DST/AIDS],
           ISNULL(SUM([DIABETES]), 0) [DIABETES],
           SUM([HANSENÍASE]) [HANSENÍASE],
           SUM([HA]) [HA],
           SUM([TUBERCULOSE]) [TUBERCULOSE],
           SUM([USUARIO_DE_ALCOOL]) [USUARIO_DE_ALCOOL],
           SUM([USUARIO_DE_DROGAS]) [USUARIO_DE_DROGAS],
           SUM([SAUDE_MENTAL]) [SAUDE_MENTAL]
    FROM
(
    SELECT B.NomeEquipe [Equipe],
           a.dtatende [DATA],
           CASE
               WHEN D.id_Exame IN(1041, 1333, 2992, 2994)
               THEN 1
               ELSE 0
           END [PUERICULTURA],
           CASE
               WHEN D.id_Exame IN(5594, 1040, 4172, 4173)
               THEN 1
               ELSE 0
           END [PRE_NATAL],
           0 [PREV_CANCER_UTERO],
           0 [DST_AIDS],
           CASE
               WHEN d.id_exame IN(5158, 1201, 451)
               THEN 1
               ELSE 0
           END [DIABETES],
           CASE
               WHEN d.id_exame IN(4313, 1177, 491, 1363)
               THEN 1
               ELSE 0
           END [HANSENÍASE],
           CASE
               WHEN d.iD_exame IN(1263, 1600, 1262)
               THEN 1
               ELSE 0
           END [HA],
           CASE
               WHEN d.id_exame IN(490, 4312, 1190, 5175, 1031, 1030, 1014)
               THEN 1
               ELSE 0
           END [TUBERCULOSE],
           0 [USUARIO_DE_ALCOOL],
           0 [USUARIO_DE_DROGAS],
           CASE
               WHEN d.id_exame IN(4474, 5103, 5104, 5105, 1114, 1115, 1104, 1106, 1110, 1112)
               THEN 1
               ELSE 0
           END [SAUDE_MENTAL]
    FROM PepMovimentos A
         INNER JOIN Indicadores.vw_pep_siab B ON A.codpac = B.IDPep
         INNER JOIN PepMovimentos_Soli_Procedimento D ON A.Codigo = D.id_PepMovimentos
    WHERE A.Status = 'F'
    UNION ALL
    SELECT B.NomeEquipe,
           a.dtatende [DATA],
           0 [PUERICULTURA],
           0 [PRE_NATAL],
           CASE
               WHEN g.codigo = 'ABP022'
               THEN 1
               ELSE 0
           END [PREV_CANCER_UTERO],
           CASE
               WHEN g.codigo = 'ABP020'
               THEN 1
               ELSE 0
           END [DST_AIDS],
           0 [DIABETES],
           0 [HANSENÍASE],
           0 [HA],
           0 [TUBERCULOSE],
           CASE
               WHEN g.codigo = 'ABP012'
               THEN 1
               ELSE 0
           END [USUARIO_DE_ALCOOL],
           CASE
               WHEN g.codigo = 'ABP013'
               THEN 1
               ELSE 0
           END [USUARIO_DE_DROGAS],
           0 [SAUDE_MENTAL]
    FROM PepMovimentos A
         INNER JOIN Indicadores.vw_pep_siab B ON A.codpac = B.IDPep
         INNER JOIN siabfacil.atendimento_individual E ON A.Codigo = E.codmov
         INNER JOIN SIABFACIL.CIAP_CONDICAO_AVALIADA_PARA_ATENDIMENTO_INDIVIDUAL F ON E.id = F.atendimento_individual_id
         INNER JOIN SIABFACIL.CIAP_CONDICAO_AVALIADA G ON F.CIAP_CONDICAO_AVALIADA_ID = G.CODIGO
    WHERE A.Status = 'F'
) Q1

    GROUP BY Equipe )AA

-------------------------------------------------------
--SOLICITACOES DE EXAMES MEDICOS
SET DATEFORMAT DMY


SELECT * FROM (
SELECT Equipe, sum([EX-RADIODIAG]) [EX-RADIODIAG], sum([EX-PAT CLIN]) [EX-PAT CLIN],
sum([EX-USG OBST]) [EX-USG OBST], sum([EX-CITOPAT]) [EX-CITOPAT], sum([OUTROS EXAMES]) [OUTROS EXAMES] FROM (
SELECT B.NomeEquipe [Equipe],A.dtatende [Data],
case when vw.tipo = 'imagem' then 1 else 0 end [EX-RADIODIAG],
0 [EX-PAT CLIN],
0 [EX-USG OBST],
0 [EX-CITOPAT],
case when vw.tipo = 'OUTROS EXAMES' then 1 else 0 end [OUTROS EXAMES]


  FROM PepMovimentos A
INNER JOIN Indicadores.vw_pep_siab B ON A.codpac = B.IDPep
INNER JOIN vw_rel_sol_exame  VW ON VW.codigo = A.Codigo
WHERE A.Status = 'F' AND A.Especialidade = 323

UNION ALL

SELECT b.NomeEquipe, A.dtatende [Data],
0 [EX-RADIODIAG],
case when c.ID in (4298, 4287, 138, 140, 5151, 375, 517, 4296, 4285, 136, 159, 4286, 4297, 137, 4306, 4307, 4402, 1025, 223, 5147, 220, 563) then 1 else 0 end [EX-PAT CLIN],
case when c.ID = 692 then 1 else 0 end [EX-USG OBST],
case when c.ID in (5219, 4387, 4388, 565) then 1 else 0 end [EX-CITOPAT],
0 [OUTROS EXAMES]
  FROM PepMovimentos A
INNER JOIN Indicadores.vw_pep_siab B ON A.codpac = B.IDPep
INNER JOIN pepmovimentos_soli_exames bs ON a.codigo = bs.id_PepMovimentos
INNER JOIN procedimentos c ON c.ID = bs.id_Exame
)TBB

GROUP BY Equipe)TBB01

SELECT DISTINCT NOMEEQUIPE, NOMEEQUIPE FROM Indicadores.vw_pep_siab

-------------------------------------------------------
--ENCAMINHAMENTOS MEDICOS
USE RECEPCAO
SET DATEFORMAT DMY


SELECT * FROM (
SELECT EQUIPE, SUM([ATEND._ESP.]) [ATEND._ESP.],
 SUM(INTERN_HOSP) [INTERN_HOSP], SUM([URG/EMER]) [URG/EMER], SUM([INTERN DOM]) [INTERN DOM] FROM (
SELECT   D.NOME EQUIPE, B.data [DATA],
	SUM(CASE WHEN A.CONDUTA_ENCAMINHAMENTO_ID = 4 THEN 1 ELSE 0 END) 'ATEND._ESP.',
	SUM(CASE WHEN A.CONDUTA_ENCAMINHAMENTO_ID = 6 THEN 1 ELSE 0 END) 'INTERN_HOSP',
	SUM(CASE WHEN A.CONDUTA_ENCAMINHAMENTO_ID = 7 THEN 1 ELSE 0 END) 'URG/EMER',
	SUM(CASE WHEN A.CONDUTA_ENCAMINHAMENTO_ID = 8 THEN 1 ELSE 0 END) 'INTERN DOM'
FROM SIABFACIL.CONDUTA_ENCAMINHAMENTO_PARA_ATENDIMENTO_INDIVIDUAL A
LEFT JOIN SIABFACIL.ATENDIMENTO_INDIVIDUAL B ON A.ATENDIMENTO_INDIVIDUAL_ID = B.ID
INNER JOIN Indicadores.vw_pep_siab C ON B.pessoa_id=C.IDPep
INNER JOIN DBO.Wv_EquipeSiab D ON C.NomeEquipe=D.NOME
    WHERE  B.DATA_EXCLUSAO IS NULL
GROUP BY  D.NOME, B.data)ENCA

GROUP BY EQUIPE)TAB01

SELECT * FROM SIABFACIL.conduta_encaminhamento_odonto




-------------------------------------------------------
--ATENDIMENTO INDIVIDUAL ENFERMEIRO
SET DATEFORMAT DMY

SELECT EQUIPE ,SUM([ATENDIMENTO INDIVIDUAL ENFERMEIRO]) ATENDIMENTO_INDIVIDUAL_ENFERMEIRO FROM (
SELECT VW.NomeEquipe [EQUIPE], pep.dtatende [DATA], M.nome [PROFISSIONAL],
       COUNT(1) [ATENDIMENTO INDIVIDUAL ENFERMEIRO]
FROM PepMovimentos PEP
     INNER JOIN Indicadores.vw_pep_siab VW ON pep.codpac = VW.IDPep
	INNER JOIN medicos M ON PEP.codmed = M.CODIGO
WHERE PEP.Status = 'F' AND pep.Especialidade = 1360 
GROUP BY VW.NomeEquipe, pep.dtatende,M.nome)ENF
GROUP BY EQUIPE


-------------------------------------------------------
--ATENDIMENTO INDIVIDUAL OUTROS PROF NIVEL SUPERIOR
SET DATEFORMAT DMY

SELECT EQUIPE, SUM(CAMPO)[ATENDIMENTO INDIVIDUAL OUTROS PROF NIVEL SUPERIOR] FROM (
SELECT 
    VW.NomeEquipe [EQUIPE], P.dtatende [DATA], M.nome [PROFISSIONAL], count(1) [CAMPO]
FROM PepMovimentos P
INNER JOIN medicos M ON P.codmed = M.CODIGO AND M.Cbo1 = '322245'
INNER JOIN Indicadores.vw_pep_siab VW ON P.codpac = VW.IDPep
WHERE P.Status = 'F' 
GROUP BY VW.NomeEquipe,P.dtatende,M.nome )ATEND
GROUP BY EQUIPE

select distinct  nomeequipe, nomeequipe from Indicadores.vw_pep_siab
-------------------------------------------------------
-- PROCEDIMENTOS
SET DATEFORMAT DMY

SELECT  EQUIPE,SUM(CURATIVOS) [CURATIVOS],SUM(INALACOES) [INALACOES],SUM(INJECOES) [INJECOES],SUM([RETIRADA DE PONTOS]) [RETIRADA DE PONTOS]
,SUM(SUTURAS) [SUTURAS]  FROM (
SELECT VW.NomeEquipe [EQUIPE], p.dtatende [DATA], m.nome [PROFISSIONAL],
SUM(CASE WHEN SP.id_Exame IN (1698,1627,3066,1697,3068,3067) THEN 1 ELSE 0 END) 'CURATIVOS' ,
SUM(CASE WHEN SP.id_Exame IN (1129) THEN 1 ELSE 0 END) 'INALACOES',
SUM(CASE WHEN SP.id_Exame IN (2029,2006,1985,2860) THEN 1 ELSE 0 END) 'INJECOES',
SUM(CASE WHEN SP.id_Exame IN (1134) THEN 1 ELSE 0 END) 'RETIRADA DE PONTOS',
SUM(CASE WHEN SP.id_Exame IN (1702,1701,1905,2042) THEN 1 ELSE 0 END) 'SUTURAS'

FROM PepMovimentos P
INNER JOIN PepMovimentos_Soli_Procedimento SP ON P.Codigo = SP.id_PepMovimentos
INNER JOIN Indicadores.vw_pep_siab VW ON P.codpac = VW.IDPep
INNER JOIN medicos  M ON p.codmed = m.CODIGO
GROUP BY VW.NomeEquipe, P.dtatende, M.nome)PROCE
GROUP BY PROCE.EQUIPE




-------------------------------------------------------

--ATIVIDADE COLETIVA - EDUCACAO EM SAUDE
USE recepcao
SET DATEFORMAT dmy

SELECT EQUIPE, sum([ATEND. GRUPO - EDUCACAO EM SAUDE]) [ATEND. GRUPO - EDUCACAO EM SAUDE],
SUM(REUNIOES) [REUNIOES] , SUM([PROCEDIMENTOS COLETIVOS I (PC I)]) [PROCEDIMENTOS COLETIVOS I (PC I)] FROM (
SELECT C.nome 'EQUIPE', a.data_atividade [DATA_ATIVIDADE],
 SUM(CASE WHEN e.id_reuniao in (4,5) THEN 1 ELSE 0 END) 'ATEND. GRUPO - EDUCACAO EM SAUDE',
 SUM(CASE WHEN e.id_reuniao IN (1,2,3) THEN 1 ELSE 0 END) 'REUNIOES',
 SUM(CASE WHEN e.id_reuniao = 6 THEN 1 ELSE 0 END) 'PROCEDIMENTOS COLETIVOS I (PC I)'
FROM dbo.atividade_grupo A
INNER JOIN acesso.dbo.usuarios b ON a.id_prof_resp = b.codigo
INNER JOIN Wv_EquipeSiab c on B.EQUIPE = C.CODIGO
INNER join dbo.atividade_reuniao_grupo e on a.id=e.id_atividade
GROUP BY c.nome, A.data_atividade)ATIV
group by EQUIPE



-------------------------------------------------------
-- MARCADORES
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT Equipe,
           SUM([TOTAL VALVULOPATIAS REUMATICAS]) AS 'TOTAL VALVULOPATIAS REUMATICAS',
           SUM([TOTAL INFARTO AGUDO DO MIOCARDIO]) AS 'TOTAL INFARTO AGUDO DO MIOCARDIO',
           SUM([TOTAL ACIDENTE VASCULAR CEREBRAL]) AS 'TOTAL ACIDENTE VASCULAR CEREBRAL',
           SUM([TOTAL DOENÇA HEMOLITICA PERINATAL]) AS 'TOTAL DOENÇA HEMOLITICA PERINATAL',
           SUM([TOTAL FRATURAS DE COLO DE FEMUR EM > 50 ANOS]) AS 'TOTAL FRATURAS DE COLO DE FEMUR EM > 50 ANOS',
           SUM([TOTAL MENINGITE TUBERCULOSA EM MENORES DE 5 ANOS]) AS 'TOTAL MENINGITE TUBERCULOSA EM MENORES DE 5 ANOS',
           SUM([TOTAL HANSENIASE COM GRAU INCAPACIDADE II E III]) AS 'TOTAL HANSENIASE COM GRAU INCAPACIDADE II E III'
    FROM
(
    SELECT wv.NomeEquipe [Equipe],
           p.dtatende [Data],
           CASE
               WHEN CID.id_cid = 3668
               THEN 1
               ELSE 0
           END [TOTAL VALVULOPATIAS REUMATICAS],
           CASE
               WHEN CID.id_cid = 3722
               THEN 1
               ELSE 0
           END [TOTAL INFARTO AGUDO DO MIOCARDIO],
           CASE
               WHEN CID.id_cid = 3940
               THEN 1
               ELSE 0
           END [TOTAL ACIDENTE VASCULAR CEREBRAL],
           CASE
               WHEN CID.id_cid = 7211
               THEN 1
               ELSE 0
           END [TOTAL DOENÇA HEMOLITICA PERINATAL],
           CASE
               WHEN CID.id_cid = 8961
                    AND WV.idade > 50
               THEN 1
               ELSE 0
           END [TOTAL FRATURAS DE COLO DE FEMUR EM > 50 ANOS],
           CASE
               WHEN CID.id_cid = 90
                    AND WV.idade < 5
               THEN 1
               ELSE 0
           END [TOTAL MENINGITE TUBERCULOSA EM MENORES DE 5 ANOS],
           CASE
               WHEN CID.id_cid = 872
               THEN 1
               ELSE 0
           END [TOTAL HANSENIASE COM GRAU INCAPACIDADE II E III]
    FROM PepMovimentos P
         INNER JOIN Indicadores.vw_pep_siab wv ON P.codpac = wv.IDPep
         INNER JOIN PepMovimentos_CID CID ON P.Codigo = CID.id_PepMovimentos
    WHERE P.Status = 'F'
    GROUP BY WV.NomeEquipe, P.dtatende,CID.ID_CID, WV.idade
) TB
    GROUP BY Equipe
) AA

SELECT DISTINCT NOMEEQUIPE, NOMEEQUIPE FROM Indicadores.vw_pep_siab
-------------------------------------------------------
-- VISITAS DOMICILIARES
SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT ATEND.Equipe,
           SUM(ATEND.VD_MEDICO) [VISITAS MEDICO],
           SUM(ATEND.VD_ENFERMEIRO) [VISITAS ENFERMEIRO],
           SUM(ATEND.[VD OUTROS PROFISSIONAIS DE NIVEL SUPERIOR]) [VISITAS OUTROS PROFISSIONAIS DE NIVEL SUPERIOR],
           SUM(ATEND.[VD OUTROS PROFISSIONAIS DE NIVEL MEDIO]) [VISITAS OUTROS PROFISSIONAIS DE NIVEL MEDIO]
    FROM
(
    SELECT v.NomeEquipe [Equipe],
           pp.dtatende [Data],
           CASE
               WHEN pp.id_tipo_atendimento = 11
                    AND pp.ESPECIALIDADE = 323
               THEN 1
               ELSE 0
           END [VD_MEDICO],
           CASE
               WHEN pp.id_tipo_atendimento = 11
                    AND pp.ESPECIALIDADE = 1360
               THEN 1
               ELSE 0
           END [VD_ENFERMEIRO],
           CASE
               WHEN MED.CBO1 IN('223293', '223710', '223810', '223905', '2241E1', '251510', '251605', '515310', '224105')
               THEN 1
               ELSE 0
           END [VD OUTROS PROFISSIONAIS DE NIVEL SUPERIOR],
           CASE
               WHEN MED.CBO1 IN('322425', '322430')
               THEN 1
               ELSE 0
           END [VD OUTROS PROFISSIONAIS DE NIVEL MEDIO]
    FROM dbo.PepMovimentos PP
         INNER JOIN Indicadores.vw_pep_siab V ON(PP.codpac = V.IDPep)
         INNER JOIN dbo.MEDICOS MED ON(PP.CODMED = MED.CODIGO)
    WHERE PP.Status = 'F'
    GROUP BY v.NomeEquipe,
             pp.id_tipo_atendimento,
             pp.Especialidade,
             med.Cbo1,
             pp.dtatende
) ATEND
    GROUP BY ATEND.Equipe
) VDS
-------------------------------------------------------
--PMA2C - TIPOS DE CONSULTAS MEDICAS
set dateformat dmy
SELECT * FROM (
SELECT  Equipe, SUM([DEMANDA AGENDADA]) [DEMANDA AGENDADA], 
    SUM([DEMANDA IMEDIATA]) [DEMANDA IMEDIATA], SUM([CUIDADO CONTINUADO]) [CUIDADO CONTINUADO] , 
    SUM([URGENCIA COM OBS]) [URGENCIA COM OBS] FROM (
SELECT   c.nome Equipe, a.data [Data],
	SUM(CASE WHEN A.TIPO_ATENDIMENTO_ESUS_CODIGO = 2  THEN 1 ELSE 0 END) 'DEMANDA AGENDADA',
	SUM(CASE WHEN A.TIPO_ATENDIMENTO_ESUS_CODIGO = 5  THEN 1 ELSE 0 END) 'DEMANDA IMEDIATA',
	SUM(CASE WHEN A.TIPO_ATENDIMENTO_ESUS_CODIGO = 1  THEN 1 ELSE 0 END) 'CUIDADO CONTINUADO',
	SUM(CASE WHEN A.TIPO_ATENDIMENTO_ESUS_CODIGO = 6  THEN 1 ELSE 0 END) 'URGENCIA COM OBS'
FROM SIABFACIL.ATENDIMENTO_INDIVIDUAL A
inner join Indicadores.vw_pep_siab b on a.pessoa_id=b.IDPep
inner join dbo.Wv_EquipeSiab c on b.NomeEquipe=c.NOME
WHERE  A.COD_CBO = '225142' --MEDICO
AND A.DATA_EXCLUSAO IS NULL
GROUP BY  c.nome,a.data)CONSUL

where Data between '01/01/2018' and '31/01/2018'
GROUP BY Equipe)TAB002



-------------------------------------------------------
--TIPOS DE ATENDIMENTO CIRURGIAO DENTISTA - INSTALACOES DE PROTESES DENTARIAS
SET DATEFORMAT DMY
SELECT * FROM (
SELECT  
	   Equipe, 
	   SUM([PRIMEIRA CONSULTA ODONTOLOGICA PROGRAMATICA]) [PRIMEIRA CONSULTA ODONTOLOGICA PROGRAMATICA],
	   SUM([ESCOVAÇÃO DENTAL SUPERVISIONADA]) [ESCOVAÇÃO DENTAL SUPERVISIONADA], 
	   SUM([TRATAMENTO CONCLUIDO]) [TRATAMENTO CONCLUIDO], 
	   SUM([URGENCIA]) [URGENCIA],
	   SUM([ATENDIMENTO A GESTANTES]) [ATENDIMENTO A GESTANTES], 
	   SUM([INSTALACOES DE PROTESES DENTARIAS]) [INSTALACOES DE PROTESES DENTARIAS]
FROM (
SELECT  
	   V.NomeEquipe [Equipe], 
	   a.data [Data],
	   case when 
	   a.tipo_consulta_odonto_codigo = 1 then 1 else 0 end [PRIMEIRA CONSULTA ODONTOLOGICA PROGRAMATICA],
	   0 [ESCOVAÇÃO DENTAL SUPERVISIONADA],
	   case when co.conduta_encaminhamento_odonto_codigo = 15 then 1 else 0 end [TRATAMENTO CONCLUIDO],
	   case when a.tipo_atendimento_esus_codigo = 6 then 1 else 0 end [URGENCIA],
	   case when pp.grupo_de_pessoas_id = 5 and pp.ativo ='s' then 1 else 0 end [ATENDIMENTO A GESTANTES],
	   case when OO.tipo_procedimento_odonto_id = 13 then 1 else 0 end [INSTALACOES DE PROTESES DENTARIAS]
FROM siabfacil.atendimento_odonto A
INNER JOIN dbo.PepMovimentos M ON A.codmov = m.Codigo
INNER JOIN Indicadores.vw_pep_siab V ON M.codpac = V.IDPep
INNER JOIN siabfacil.conduta_encaminhamento_odonto_para_atendimento_odonto CO ON(A.id = CO.atendimento_odonto_id)
INNER JOIN pessoa_grupo_de_pessoas pp ON a.pessoa_id = pp.COD_PAC
INNER JOIN siabfacil.TIPO_PROCEDIMENTO_ODONTO_PARA_ATENDIMENTO_ODONTO OO ON(A.id = OO.atendimento_odonto_id)
where a.excluido = 0
UNION ALL

SELECT 
	   vw.NOME [Equipe], 
	   b.data_atividade [Data],
	   0 [PRIMEIRA CONSULTA ODONTOLOGICA PROGRAMATICA],
	   case when A.id_procedimentos = '0101020031' then 1 else 0 end [ESCOVAÇÃO DENTAL SUPERVISIONADA],
	   0 [TRATAMENTO CONCLUIDO],
	   0 [URGENCIA],
	   0 [ATENDIMENTO A GESTANTES],
	   0 [INSTALACOES DE PROTESES DENTARIAS]
FROM atividade_procedimentos A
INNER JOIN atividade_grupo B ON(A.id_atividade = B.id)
INNER JOIN ACESSO.DBO.Usuarios C ON(B.id_prof_resp = C.CODIGO)
INNER JOIN Wv_EquipeSiab VW ON(C.equipe = VW.CODIGO)
)ODON
GROUP BY Equipe
)QUERY


-- OUTROSS
SET DATEFORMAT DMY
SELECT "Equipe","RN com peso < 2500g","Hospitalizações em < 5 anos por pneumonia","Hospitalizações em < 5 anos por desidratação",
    "Hospitalizações por abuso de álcool","Hospitalizações por complicações de Diabetes","Hospitalizações por qualquer causa",
    "Internações em Hospital Psiquiátrico"
 FROM OPENQUERY (siab,'
SELECT 
	"Equipe", 
    SUM("RN com peso < 2500g") "RN com peso < 2500g",
	SUM("Gravidez em < 20 anos" ) "Gravidez em < 20 anos",
    SUM("Hospitalizações em < 5 anos por pneumonia") "Hospitalizações em < 5 anos por pneumonia",
    SUM("Hospitalizações em < 5 anos por desidratação") "Hospitalizações em < 5 anos por desidratação",
    SUM("Hospitalizações por abuso de álcool") "Hospitalizações por abuso de álcool",
    SUM("Hospitalizações por complicações de Diabetes") "Hospitalizações por complicações de Diabetes",
    SUM("Hospitalizações por qualquer causa") "Hospitalizações por qualquer causa",
    SUM("Internações em Hospital Psiquiátrico") "Internações em Hospital Psiquiátrico"

FROM(
SELECT c.NM_REFERENCIA "Equipe", AT.DATA "Data",
CASE WHEN MT.TIPO_DE_MONITORAMENTO_ID = 60 then 1 else 0 end "RN com peso < 2500g",
CASE WHEN  MT.TIPO_DE_MONITORAMENTO_ID = 74 THEN 1 ELSE 0 END "Gravidez em < 20 anos" , 
CASE WHEN MT.TIPO_DE_MONITORAMENTO_ID = 87 THEN 1 ELSE 0 END "Hospitalizações em < 5 anos por pneumonia",
CASE WHEN MT.TIPO_DE_MONITORAMENTO_ID = 88 THEN 1 ELSE 0 END "Hospitalizações em < 5 anos por desidratação",
CASE WHEN MT.TIPO_DE_MONITORAMENTO_ID = 89 THEN 1 ELSE 0 END "Hospitalizações por abuso de álcool",
CASE WHEN MT.TIPO_DE_MONITORAMENTO_ID = 90 THEN 1 ELSE 0 END "Hospitalizações por complicações de Diabetes",
CASE WHEN MT.TIPO_DE_MONITORAMENTO_ID = 92 THEN 1 ELSE 0 END "Hospitalizações por qualquer causa",
CASE WHEN MT.TIPO_DE_MONITORAMENTO_ID = 91 THEN 1 ELSE 0 END "Internações em Hospital Psiquiátrico"
FROM SIABFACIL.ATENDIMENTO AT
INNER JOIN SIABFACIL.MONITORAMENTO MT ON AT.ID = MT.ATENDIMENTO_ID
INNER JOIN cnes.lfces037 C ON AT.COD_AREA = C.COD_AREA)siab
group by "Equipe"')


select NM_REFERENCIA,NM_REFERENCIA from openquery(siab,'SELECT NM_REFERENCIA  FROM cnes.lfces037')
-- OBITOS
SET DATEFORMAT DMY
SELECT "Equipe","Obitos em < 1 ano por Diarreia", "Obitos em < 1 ano por IRA",
	   "Obitos em < 1 ano por todas as causas","Obitos de mulheres de 10 a 40 anos",
	   "Obitos de adolescentes (10-19) por violencia"

 FROM OPENQUERY (siab,'SELECT 
	"Equipe", 
    SUM("Obitos em < 1 ano por Diarreia") "Obitos em < 1 ano por Diarreia",
	SUM("Obitos em < 1 ano por IRA") "Obitos em < 1 ano por IRA",
    SUM("Obitos em < 1 ano por todas as causas") "Obitos em < 1 ano por todas as causas",
    SUM("Obitos de mulheres de 10 a 40 anos") "Obitos de mulheres de 10 a 40 anos",
    SUM("Obitos de adolescentes (10-19) por violencia") "Obitos de adolescentes (10-19) por violencia"
  

FROM(
SELECT c.NM_REFERENCIA "Equipe", AT.DATA "Data",
CASE WHEN MT.TIPO_DE_MONITORAMENTO_ID = 96 then 1 else 0 end "Obitos em < 1 ano por Diarreia",
CASE WHEN  MT.TIPO_DE_MONITORAMENTO_ID = 97 THEN 1 ELSE 0 END "Obitos em < 1 ano por IRA" , 
CASE WHEN MT.TIPO_DE_MONITORAMENTO_ID = 98 THEN 1 ELSE 0 END "Obitos em < 1 ano por todas as causas",
CASE WHEN MT.TIPO_DE_MONITORAMENTO_ID IN (100,99) THEN 1 ELSE 0 END "Obitos de mulheres de 10 a 40 anos",
CASE WHEN MT.TIPO_DE_MONITORAMENTO_ID = 101 THEN 1 ELSE 0 END "Obitos de adolescentes (10-19) por violencia"

FROM SIABFACIL.ATENDIMENTO AT
INNER JOIN SIABFACIL.MONITORAMENTO MT ON AT.ID = MT.ATENDIMENTO_ID
INNER JOIN cnes.lfces037 C ON AT.COD_AREA = C.COD_AREA)siab
group by "Equipe"')


-------------------------------------------------------
-- VISITAS DOMICILIARES (ACS)
SET DATEFORMAT DMY
SELECT "Equipe",
       SUM("VISITAS_ACS") "VISITAS_ACS"
FROM
(
    SELECT "Equipe",
           "VISITAS_ACS",
           "Data"
    FROM OPENQUERY(SIAB, 'SELECT "Equipe",CAST(sum ("VISITAS_ACS")AS integer) "VISITAS_ACS","Data" FROM (
SELECT c.nm_referencia  "Equipe", at.data as "Data", count(1) as "VISITAS_ACS" FROM SIABFACIL.ATENDIMENTO  at
INNER JOIN cnes.lfces037 C ON (AT.COD_AREA = C.COD_AREA) where monitorador_id = 3 GROUP BY c.nm_referencia,at.data)a
group by "Equipe","Data"')) AA
GROUP BY "Equipe"


---------------------------------------------------------------
-- encmainhamento odonto
USE RECEPCAO


SET DATEFORMAT DMY
SELECT *
FROM
(
    SELECT EQUIPE,
           SUM([AGENDAMENTO PARA GRUPOS]) [AGENDAMENTO_PARA_GRUPOS],
           SUM([TRATAMENTO CONCLUIDO]) [TRATAMENTO_CONCLUIDO],
           SUM([RETORNO PARA CONSULTA AGENDADA]) [RETORNO_PARA_CONSULTA_AGENDADA],
           SUM([ALTA DO EPISODIO]) [ALTA_DO_EPISODIO]
        
         
		
    FROM
(
    SELECT VW.NomeEquipe [EQUIPE],
           a.data [DATA],
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 1
                   THEN 1
                   ELSE 0
               END) 'PACIENTES A PACIENTES COM NECESSIDADES ESPECIAIS',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 2
                   THEN 1
                   ELSE 0
               END) 'CIRURGIA BMF',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 3
                   THEN 1
                   ELSE 0
               END) 'ENDODONTIA',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 4
                   THEN 1
                   ELSE 0
               END) 'ESTOMATOLOGIA',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 5
                   THEN 1
                   ELSE 0
               END) 'IMPLANTODONTIA',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 6
                   THEN 1
                   ELSE 0
               END) 'ODONTOPEDIATRIA',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 7
                   THEN 1
                   ELSE 0
               END) 'ORTODONTIA ORTOPEDIA',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 8
                   THEN 1
                   ELSE 0
               END) 'PERIODONTIA',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 9
                   THEN 1
                   ELSE 0
               END) 'PROTESE DENTARIA',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 10
                   THEN 1
                   ELSE 0
               END) 'RADIOLOGIA',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 11
                   THEN 1
                   ELSE 0
               END) 'OUTROS',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 12
                   THEN 1
                   ELSE 0
               END) 'AGENDAMENTO PARA OUTROS PROFISSIONAIS AB',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 13
                   THEN 1
                   ELSE 0
               END) 'AGENDAMENTO PARA NASF',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 14
                   THEN 1
                   ELSE 0
               END) 'AGENDAMENTO PARA GRUPOS',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 15
                   THEN 1
                   ELSE 0
               END) 'TRATAMENTO CONCLUIDO',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 16
                   THEN 1
                   ELSE 0
               END) 'RETORNO PARA CONSULTA AGENDADA',
           SUM(CASE
                   WHEN B.conduta_encaminhamento_odonto_codigo = 17
                   THEN 1
                   ELSE 0
               END) 'ALTA DO EPISODIO'
    FROM siabfacil.atendimento_odonto A
         INNER JOIN siabfacil.conduta_encaminhamento_odonto_para_atendimento_odonto B ON A.id = B.atendimento_odonto_id
         INNER JOIN Indicadores.vw_pep_siab VW ON A.pessoa_id = VW.IDPep
    GROUP BY vw.NomeEquipe,
             a.data
) OD

    GROUP BY EQUIPE
) OO




