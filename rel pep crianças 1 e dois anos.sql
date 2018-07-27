USE RECEPCAO

-- RELATORIO CRIANÇAS MENOR DE UM ANO
SET DATEFORMAT DMY
SELECT * FROM (
SELECT DISTINCT
       vw.nome [Nome],
       CONVERT(VARCHAR(10), vw.data_nascimento, 103) [Data_Nascimento],
       vw.sexo [Sexo],
       vw.mae [Nome Mae],
       vw.cns [Cns],
       vw.prontuario [Prontuario],
       vw.NomeEquipe [Equipe],
       SUBSTRING(vw.prontuario, 6, 2) [Micro_Area],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10), PP.dtatende, 103)
    FROM PepMovimentos PP
    WHERE pp.codpac = vw.IDPep
          AND PP.Especialidade = 323
    ORDER BY dtatende DESC
),'') [Ultima_consulta_Medica],

ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10), PP.dtatende, 103)
    FROM PepMovimentos PP
    WHERE pp.codpac = vw.IDPep
          AND PP.Especialidade = 1360
    ORDER BY dtatende DESC
),'') [Ultima_consulta_Enfermagem]

FROM Indicadores.vw_pep_siab vw
     INNER JOIN RECEPCAO.dbo.PepMovimentos p ON vw.IDPep = p.codpac
WHERE idade < 1)TEMP_01

------------------------------------------------------------------
USE RECEPCAO

-- RELATORIO CRIANÇAS ENTRE UM E DOIS ANOS
SET DATEFORMAT DMY
SELECT * FROM (
SELECT DISTINCT
       vw.nome [Nome],
       CONVERT(VARCHAR(10), vw.data_nascimento, 103) [Data_Nascimento],
       vw.sexo [Sexo],
       vw.mae [Nome Mae],
       vw.cns [Cns],
       vw.prontuario [Prontuario],
       vw.NomeEquipe [Equipe],
       SUBSTRING(vw.prontuario, 6, 2) [Micro_Area],
ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10), PP.dtatende, 103)
    FROM PepMovimentos PP
    WHERE pp.codpac = vw.IDPep
          AND PP.Especialidade = 323
    ORDER BY dtatende DESC
),'') [Ultima_consulta_Medica],

ISNULL((
    SELECT TOP 1 CONVERT(VARCHAR(10), PP.dtatende, 103)
    FROM PepMovimentos PP
    WHERE pp.codpac = vw.IDPep
          AND PP.Especialidade = 1360
    ORDER BY dtatende DESC
),'') [Ultima_consulta_Enfermagem]

FROM Indicadores.vw_pep_siab vw
     INNER JOIN RECEPCAO.dbo.PepMovimentos p ON vw.IDPep = p.codpac
WHERE idade between 1 and 2)TEMP_02










