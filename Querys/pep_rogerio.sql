USE RECEPCAO
GO
-- PRE NATAL INICIADO
SELECT COUNT(*) [PACIENTES COM PRE-NATAL INICIADOS] FROM RECEPCAO.DBO.PEPMOVIMENTOS PM
INNER JOIN RECEPCAO.DBO.PACIENTES P ON (PM.codpac = P.codigo)
WHERE PM.CODIGO IN (SELECT ID_ FROM RECEPCAO.DBO.PRONTUARIO_GESTANTE pg
inner join recepcao.dbo.prontuario_gestante_pre_natal pgpn on pgpn.id_pront_gestante_pre_natal = pg.id_pront_gestante_pre_natal
)

-- HIPERTENSOS DIAGNOSTICADOS
select distinct  cod_pac from pessoa_grupo_de_pessoas
where grupo_de_pessoas_id = 6
group by cod_pac

-- TUBERCULOSOS DIAGNOSTICADO
select distinct  cod_pac from pessoa_grupo_de_pessoas
where grupo_de_pessoas_id = 8
group by cod_pac

-- HANSENIASE DIAGNOSTICADOS
select distinct  cod_pac from pessoa_grupo_de_pessoas
where grupo_de_pessoas_id = 3
group by cod_pac

-- DIABETICOS DIAGNOSTICADOS
select distinct  cod_pac from pessoa_grupo_de_pessoas
where grupo_de_pessoas_id = 7
group by cod_pac

-- HIV DIAGNOSTICADOS E INICIADOS
SELECT DISTINCT
       COUNT(PM.CODPAC) [HIV DIAGNOSTICADOS E INICIADOS]
FROM RECEPCAO.DBO.PEPMOVIMENTOS PM
     INNER JOIN RECEPCAO.DBO.PACIENTES P ON(PM.CODPAC = P.CODIGO)
WHERE PM.CODIGO IN
(
    SELECT ID_PEPMOVIMENTOS
    FROM RECEPCAO.DBO.PEPMOVIMENTOS_CID
    WHERE ID_CID IN
    (
        SELECT ID
        FROM recepcao.dbo.CID
        WHERE DESCR LIKE '%HIV%'
    )
          OR PM.CODIGO IN
    (
        SELECT id_PepMovimentos
        FROM RECEPCAO.DBO.PEPMOVIMENTOS_CIAPS
        WHERE ID_CIAP IN
        (
            SELECT ID
            FROM RECEPCAO.DBO.Ciap
            WHERE codigo = 'B90'
        )
    )
);


-- CRIANÇAS ATE UM ANO

SELECT DISTINCT
       COUNT(P.CODIGO) [CRIANCAS ATE 1 ANO]
FROM RECEPCAO.DBO.PepMovimentos M
     INNER JOIN recepcao.dbo.pessoa_grupo_de_pessoas GP ON(M.CODPAC = GP.COD_PAC)
     INNER JOIN RECEPCAO.DBO.PACIENTES P ON(M.CODPAC = P.CODIGO)
WHERE GP.grupo_de_pessoas_id = 1001
      AND DBO.CALCULARIDADE(P.DTNASC) <= 1;


 -- CRIANCAS DE 0 ATE 6 ANOS
SELECT DISTINCT
       COUNT(P.CODIGO) [CRIANCAS ENTRE 1 E 6 ANOS]
FROM RECEPCAO.DBO.PepMovimentos M
     INNER JOIN recepcao.dbo.pessoa_grupo_de_pessoas GP ON(M.CODPAC = GP.COD_PAC)
     INNER JOIN RECEPCAO.DBO.PACIENTES P ON(M.CODPAC = P.CODIGO)
WHERE GP.grupo_de_pessoas_id = 1001
      AND DBO.CALCULARIDADE(P.DTNASC) BETWEEN 0 AND 6





