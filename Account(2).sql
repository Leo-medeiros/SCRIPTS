lz.
USE recepcao
go

/*Slide 1*/

SELECT nome, (SELECT geradmin 'Diretor / Gerente' FROM param_int) FROM PEP_Parametros
where codigo = 1;

/*Slide 4 - Banco do CNES - SIABFACIL*/

select * from openquery(siab, '
SELECT nome_fanta "Nome" , cnes "CNES", cnpj_mant "CNPJ", r_social "Razão Solcial", pfpj_ind "Personalidade", logradouro "Logradouro", numero "Número", 
telefone "Telefone", tp_unid_id "Tipo Unidade", bairro "Bairro", cod_cep "CEP", b.nome_mun "Municipio", sigestgest "UF", 
(SELECT COUNT (*) FROM cnes.lfces037) "Número de ESF e ESFI",
(SELECT COUNT (*) FROM cnes.lfces018) "Número de Profissionais", e_mail "E-mail da unidade" 
FROM cnes.lfces004 a
INNER JOIN cnes.nfces005 b ON a.codmungest = b.cod_mun;')


/*Slide 6 - Banco do SIAB*/
select * from openquery(siab, '
SELECT  
CASE WHEN sexo = true THEN ''Masculino'' ELSE ''Feminino'' END Sexo,
CASE 
WHEN EXTRACT(YEAR FROM age(data_nascimento)) <= 4 THEN ''0-4''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 5 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 9 THEN ''5-9''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 10 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 14 THEN ''10-14''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 15 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 19 THEN ''15-19''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 20 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 24 THEN ''20-24''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 25 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 29 THEN ''25-29''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 30 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 34 THEN ''30-34''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 35 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 39 THEN ''35-39''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 40 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 44 THEN ''40-44''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 45 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 49 THEN ''45-49''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 50 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 54 THEN ''50-54''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 55 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 59 THEN ''55-59''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 60 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 64 THEN ''60-64''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 65 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 69 THEN ''65-69''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 70 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 74 THEN ''70-74''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 75 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 79 THEN ''75-79''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 80 then ''80 e +''
end Idade, 
CAST((CAST(count(1) AS DECIMAL(15, 2)) / CAST((SELECT COUNT(1) FROM siabfacil.pessoa aa) AS DECIMAL(15, 2))) * 100 AS DECIMAL(15, 2)) "%"
FROM siabfacil.pessoa WHERE sexo IS NOT NULL AND familia_id IS NOT NULL AND data_desativacao IS NULL AND data_nascimento IS NOT NULL 
GROUP BY sexo, 
CASE 
WHEN EXTRACT(YEAR FROM age(data_nascimento)) <= 4 THEN ''0-4''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 5 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 9 THEN ''5-9''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 10 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 14 THEN ''10-14''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 15 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 19 THEN ''15-19''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 20 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 24 THEN ''20-24''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 25 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 29 THEN ''25-29''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 30 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 34 THEN ''30-34''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 35 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 39 THEN ''35-39''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 40 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 44 THEN ''40-44''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 45 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 49 THEN ''45-49''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 50 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 54 THEN ''50-54''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 55 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 59 THEN ''55-59''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 60 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 64 THEN ''60-64''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 65 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 69 THEN ''65-69''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 70 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 74 THEN ''70-74''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 75 AND EXTRACT(YEAR FROM age(data_nascimento)) <= 79 THEN ''75-79''
WHEN EXTRACT(YEAR FROM age(data_nascimento)) >= 80 THEN ''80 e +''
END
');

/*Slide 7*/
-- NESSE CASO O BANCO DO SIAB TEM MAIS REGISTRO. NAO CARREGA DO PEP

/*Total de pessoas, percentual plano de saude  FALTA O TOTAL DA AREA DE ABRANGENCIA E PERCENTUAL FICHA A*/

begin
declare @total_pessoas numeric(12,2)
declare @total_saude numeric(12,2)
declare @perc_saude numeric(12,2)

select @total_pessoas = count(1) from accountability.vw_pessoa
select @total_saude = count(1) from accountability.vw_pessoa where plano_de_saude_id is not null
set @perc_saude = ((@total_saude * 100) / @total_pessoas) 

select @total_pessoas total, @perc_saude saude
end

/*Total de pessoas por equipe, % dnv ou cpf, e % raca */
-- cabecalho 
select 
	count(1) total,
	--(select count(1) from Accountability.vw_pessoa aa where a.equipe = aa.equipe and (cpf is not null or dnv is not null)) total_dnv_c,
	convert(numeric(6,2), ((select count(1) from Accountability.vw_pessoa aa where (cpf is not null or dnv is not null)) * 100) / count(1)) perc_dnv_c,
	convert(numeric(6,2), ((select count(1) from Accountability.vw_pessoa aa where cd_raca is not null) * 100) / count(1)) perc_raca
from 
	Accountability.vw_pessoa a
-- detalhe
select 
	EQUIPE, count(1) total,
	--(select count(1) from Accountability.vw_pessoa aa where a.equipe = aa.equipe and (cpf is not null or dnv is not null)) total_dnv_c,
	convert(numeric(6,2), ((select count(1) from Accountability.vw_pessoa aa where a.equipe = aa.equipe and (cpf is not null or dnv is not null)) * 100) / count(1)) perc_dnv_c,
	convert(numeric(6,2), ((select count(1) from Accountability.vw_pessoa aa where a.equipe = aa.equipe and cd_raca is not null) * 100) / count(1)) perc_raca
from 
	Accountability.vw_pessoa a
group by EQUIPE
order by EQUIPE

/*Slide 8, 9 e 10*/


/*Slide 11 A 14 */
BEGIN
DECLARE @COMP INT = 2015
DECLARE @DENOMINAD NUMERIC(10,2)
DECLARE @DATA_PENULTIMO_COMP DATETIME;
DECLARE @DATA_ULTIMO_COMP DATETIME;

SET @DATA_ULTIMO_COMP = CONVERT(DATETIME, CONVERT(VARCHAR(4),@COMP) + '-12-31 23:59:59')
SET @DATA_PENULTIMO_COMP = CONVERT(DATETIME, CONVERT(VARCHAR(4),@COMP) + '-09-30 23:59:59')
SELECT @DENOMINAD = count(1) from Accountability.vw_pessoa

---A1
DECLARE @NUMERADOR_A1_PENULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_A1_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_A1_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_A1_ULTIMO NUMERIC(10,2)

-- Resultado alcançado no Penúltimo trimestre avaliado
select @NUMERADOR_A1_PENULTIMO = count (1) from recepcao.dbo.pepmovimentos a
inner join RECEPCAO.INDICADORES.vw_pep_siab b on a.codpac=b.idpep
inner join recepcao.dbo.medicos c on a.codmed=c.codigo and SUBSTRING(b.prontuario,1,4) COLLATE SQL_Latin1_General_CP850_CI_AI =c.equipe COLLATE SQL_Latin1_General_CP850_CI_AI 
where  a.Especialidade=323 AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (7, 8, 9)

select @DENOMINAD_A1_PENULTIMO = count (1) from recepcao.dbo.pepmovimentos a
inner join RECEPCAO.INDICADORES.vw_pep_siab b on a.codpac=b.idpep
where  especialidade=323 AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (7, 8, 9)

-- Resultado alcançado no Último trimestre avaliado
select @NUMERADOR_A1_ULTIMO = count (1) from recepcao.dbo.pepmovimentos a
inner join RECEPCAO.INDICADORES.vw_pep_siab b on a.codpac=b.idpep
inner join recepcao.dbo.medicos c on a.codmed=c.codigo and SUBSTRING(b.prontuario,1,4) COLLATE SQL_Latin1_General_CP850_CI_AI =c.equipe COLLATE SQL_Latin1_General_CP850_CI_AI 
where  a.Especialidade=323 AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (10, 11, 12)

select @DENOMINAD_A1_ULTIMO = count (1) from recepcao.dbo.pepmovimentos a
inner join RECEPCAO.INDICADORES.vw_pep_siab b on a.codpac=b.idpep
where  especialidade=323 AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (10, 11, 12)


-- A2
DECLARE @NUMERADOR_A2_PENULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_A2_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_A2_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_A2_ULTIMO NUMERIC(10,2)

-- Resultado alcançado no Penúltimo trimestre avaliado
SELECT @NUMERADOR_A2_PENULTIMO = count(distinct a.ficha) from recepcao.dbo.pepmovimentos a
inner join RECEPCAO.INDICADORES.vw_pep_siab b on a.codpac=b.idpep
where  movimento=2 AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (7, 8, 9)

SELECT @DENOMINAD_A2_PENULTIMO = count(distinct a.ficha) from recepcao.dbo.pepmovimentos a
inner join RECEPCAO.INDICADORES.vw_pep_siab b on a.codpac=b.idpep
where  movimento in (1,2) AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (7, 8, 9)

-- Resultado alcançado no Último trimestre avaliado
SELECT @NUMERADOR_A2_ULTIMO = count(distinct a.ficha) from recepcao.dbo.pepmovimentos a
inner join RECEPCAO.INDICADORES.vw_pep_siab b on a.codpac=b.idpep
where  movimento=2 AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (10, 11, 12)

SELECT @DENOMINAD_A2_ULTIMO = count(distinct a.ficha) from recepcao.dbo.pepmovimentos a
inner join RECEPCAO.INDICADORES.vw_pep_siab b on a.codpac=b.idpep
where  movimento in (1,2) AND YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (10, 11, 12)


-- A4
DECLARE @NUMERADOR_A4_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_A4_ULTIMO NUMERIC(10,2)

-- Resultado alcançado no Penúltimo trimestre avaliado
SELECT @NUMERADOR_A4_PENULTIMO = count(1) 
from recepcao.dbo.atividade_grupo a
inner join acesso.dbo.usuarios b on a.id_prof_resp=b.Codigo
INNER JOIN recepcao.dbo.Wv_EquipeSiab c on c.codigo = b.equipe
where YEAR(data_atividade) = @COMP AND MONTH(data_atividade) IN (7, 8, 9)

-- Resultado alcançado no Último trimestre avaliado
SELECT @NUMERADOR_A4_ULTIMO = count(1) 
from recepcao.dbo.atividade_grupo a
inner join acesso.dbo.usuarios b on a.id_prof_resp=b.Codigo
INNER JOIN recepcao.dbo.Wv_EquipeSiab c on c.codigo = b.equipe
where YEAR(data_atividade) = @COMP AND MONTH(data_atividade) IN (10, 11, 12)


-- D1
DECLARE @NUMERADOR_D1_PENULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D1 NUMERIC(10,2)
DECLARE @NUMERADOR_D1_ULTIMO NUMERIC(10,2)

SELECT @DENOMINAD_D1 = count(1)  
--from RECEPCAO.Accountability.vw_pessoa
from RECEPCAO.INDICADORES.vw_pep_siab 
where recepcao.dbo.CalcularIdade(data_nascimento) between 25 and 64 and sexo = 'F'

-- Resultado alcançado no Penúltimo trimestre avaliado
SELECT @NUMERADOR_D1_PENULTIMO = count(distinct codpac) from (
select distinct NOMEEQUIPE, a.codpac  from recepcao.dbo.pepmovimentos a 
inner join recepcao.dbo.protocolo_saudemulher b on a.codigo = b.mov_id
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codpac = c.idpep and recepcao.dbo.CalcularIdade(data_nascimento) between 25 and 64 and sexo = 'F'
where dtatende >= DATEADD(YEAR, -3, @DATA_PENULTIMO_COMP) AND  dtatende <= @DATA_PENULTIMO_COMP
and   gine_exa_colpocitologico='S'
union all
select distinct NOMEEQUIPE, a.codigo  from recepcao.dbo.pacientes a 
inner join recepcao.exames.Colpocitologia b on a.codigo = b.codpac AND b.data >= DATEADD(YEAR, -3, @DATA_PENULTIMO_COMP) AND  b.data <= @DATA_PENULTIMO_COMP
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codigo = c.idpep and recepcao.dbo.CalcularIdade(data_nascimento) between 25 and 64 and c.sexo = 'F'
) q1

-- Resultado alcançado no Último trimestre avaliado
SELECT @NUMERADOR_D1_ULTIMO = count(distinct codpac) from (
select distinct NOMEEQUIPE, a.codpac  from recepcao.dbo.pepmovimentos a 
inner join recepcao.dbo.protocolo_saudemulher b on a.codigo = b.mov_id
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codpac = c.idpep and recepcao.dbo.CalcularIdade(data_nascimento) between 25 and 64 and sexo = 'F'
where dtatende >= DATEADD(YEAR, -3, @DATA_ULTIMO_COMP)  AND  dtatende <= @DATA_ULTIMO_COMP
and   gine_exa_colpocitologico='S'
union all
select distinct NOMEEQUIPE, a.codigo  from recepcao.dbo.pacientes a 
inner join recepcao.exames.Colpocitologia b on a.codigo = b.codpac AND b.data >= DATEADD(YEAR, -3, @DATA_ULTIMO_COMP) AND  b.data <= @DATA_ULTIMO_COMP
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codigo = c.idpep and recepcao.dbo.CalcularIdade(data_nascimento) between 25 and 64 and c.sexo = 'F'
) q2


-- D2
DECLARE @NUMERADOR_D2_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_D2_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D2 NUMERIC(10,2)

SELECT @DENOMINAD_D2 = count(1) 
FROM OPENQUERY (SIAB,
'SELECT E.NM_REFERENCIA, A.PESSOA_ID, B.DESCRICAO
FROM SIABFACIL.PESSOA_GRUPO_DE_PESSOAS A
INNER JOIN SIABFACIL.GRUPO_DE_PESSOAS B ON A.GRUPO_DE_PESSOAS_ID = B.ID
INNER JOIN SIABFACIL.PESSOA C ON C.ID = A.PESSOA_ID
INNER JOIN SIABFACIL.FAMILIA D ON D.ID = C.FAMILIA_ID
INNER JOIN CNES.LFCES037 E ON E.COD_AREA = D.COD_AREA
WHERE B.ID IN (7)
AND D.COD_AREA IS NOT NULL
AND D.DATA_DESATIVACAO IS NULL
AND C.DATA_DESATIVACAO IS NULL
ORDER BY E.NM_REFERENCIA, B.DESCRICAO
') A 


-- Resultado alcançado no Penúltimo trimestre avaliado
SELECT @NUMERADOR_D2_PENULTIMO = count(1) 
FROM OPENQUERY (SIAB,
'SELECT E.NM_REFERENCIA, A.PESSOA_ID, B.DESCRICAO
FROM SIABFACIL.PESSOA_GRUPO_DE_PESSOAS A
INNER JOIN SIABFACIL.GRUPO_DE_PESSOAS B ON A.GRUPO_DE_PESSOAS_ID = B.ID
INNER JOIN SIABFACIL.PESSOA C ON C.ID = A.PESSOA_ID
INNER JOIN SIABFACIL.FAMILIA D ON D.ID = C.FAMILIA_ID
INNER JOIN CNES.LFCES037 E ON E.COD_AREA = D.COD_AREA
WHERE B.ID IN (7)
AND D.COD_AREA IS NOT NULL
AND D.DATA_DESATIVACAO IS NULL
AND C.DATA_DESATIVACAO IS NULL
ORDER BY E.NM_REFERENCIA, B.DESCRICAO
') A 
WHERE
(
	SELECT COUNT(DISTINCT C.Especialidade) FROM RECEPCAO.DBO.PEPMOVIMENTOS C
	INNER JOIN RECEPCAO.DBO.PACIENTES B ON B.CODIGO = C.CODPAC
	WHERE A.PESSOA_ID = B.ID_PESSOA_SIAB
	AND C.Especialidade IN (323,1360)
	AND C.DTATENDE >= CONVERT(DATETIME, CONVERT(VARCHAR(6), DATEADD(YEAR, -1, @DATA_PENULTIMO_COMP), 112) + '01')
	HAVING COUNT(DISTINCT C.Especialidade) >= 2
) >= 2

-- Resultado alcançado no Último trimestre avaliado
SELECT @NUMERADOR_D2_ULTIMO = count(1) 
FROM OPENQUERY (SIAB,
'SELECT E.NM_REFERENCIA, A.PESSOA_ID, B.DESCRICAO
FROM SIABFACIL.PESSOA_GRUPO_DE_PESSOAS A
INNER JOIN SIABFACIL.GRUPO_DE_PESSOAS B ON A.GRUPO_DE_PESSOAS_ID = B.ID
INNER JOIN SIABFACIL.PESSOA C ON C.ID = A.PESSOA_ID
INNER JOIN SIABFACIL.FAMILIA D ON D.ID = C.FAMILIA_ID
INNER JOIN CNES.LFCES037 E ON E.COD_AREA = D.COD_AREA
WHERE B.ID IN (7)
AND D.COD_AREA IS NOT NULL
AND D.DATA_DESATIVACAO IS NULL
AND C.DATA_DESATIVACAO IS NULL
ORDER BY E.NM_REFERENCIA, B.DESCRICAO
') A 
WHERE
(
	SELECT COUNT(DISTINCT C.Especialidade) FROM RECEPCAO.DBO.PEPMOVIMENTOS C
	INNER JOIN RECEPCAO.DBO.PACIENTES B ON B.CODIGO = C.CODPAC
	WHERE A.PESSOA_ID = B.ID_PESSOA_SIAB
	AND C.Especialidade IN (323,1360)
	AND C.DTATENDE >= CONVERT(DATETIME, CONVERT(VARCHAR(6), DATEADD(YEAR, -1, @DATA_ULTIMO_COMP), 112) + '01')
	HAVING COUNT(DISTINCT C.Especialidade) >= 2
) >= 2


-- D3
DECLARE @NUMERADOR_D3_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_D3_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D3 NUMERIC(10,2)

SELECT @DENOMINAD_D3 = count(DISTINCT PESSOA_ID) 
FROM OPENQUERY (SIAB,
'SELECT E.NM_REFERENCIA, A.PESSOA_ID, B.DESCRICAO
FROM SIABFACIL.PESSOA_GRUPO_DE_PESSOAS A
INNER JOIN SIABFACIL.GRUPO_DE_PESSOAS B ON A.GRUPO_DE_PESSOAS_ID = B.ID
INNER JOIN SIABFACIL.PESSOA C ON C.ID = A.PESSOA_ID
INNER JOIN SIABFACIL.FAMILIA D ON D.ID = C.FAMILIA_ID
INNER JOIN CNES.LFCES037 E ON E.COD_AREA = D.COD_AREA
WHERE B.ID IN (6)
AND D.COD_AREA IS NOT NULL
AND D.DATA_DESATIVACAO IS NULL
AND C.DATA_DESATIVACAO IS NULL
ORDER BY E.NM_REFERENCIA, B.DESCRICAO
') A 
where PESSOA_ID in (SELECT DISTINCT ID_PESSOA_SIAB FROM RECEPCAO.DBO.PACIENTES)

-- Resultado alcançado no Penúltimo trimestre avaliado
SELECT @NUMERADOR_D3_PENULTIMO = count(distinct b.codpac) from recepcao.dbo.protocolo_hiperdia a
INNER join recepcao.dbo.pepmovimentos b on a.mov_id = b.codigo AND b.dtatende >= dateadd(month, -6, @DATA_PENULTIMO_COMP)
INNER join recepcao.indicadores.vw_pep_siab c on b.codpac = c.idpep
INNER join recepcao.dbo.pessoa_grupo_de_pessoas d on d.pessoa_id = c.idsiab and grupo_de_pessoas_id = 6
where pa1 is not null and pa2 is not null 
and
(
	SELECT COUNT(DISTINCT CC.Especialidade) FROM RECEPCAO.DBO.PEPMOVIMENTOS CC
	INNER JOIN RECEPCAO.DBO.PACIENTES BB ON BB.CODIGO = CC.CODPAC
	WHERE CC.CODPAC = b.codpac
	AND CC.Especialidade IN (323,1360)
	AND CC.DTATENDE >= CONVERT(DATETIME, CONVERT(VARCHAR(6), DATEADD(YEAR, -1, @DATA_PENULTIMO_COMP), 112) + '01')
	HAVING COUNT(DISTINCT CC.Especialidade) >= 2
) >= 2

-- Resultado alcançado no Último trimestre avaliado
SELECT @NUMERADOR_D3_ULTIMO = count(distinct b.codpac) from recepcao.dbo.protocolo_hiperdia a
INNER join recepcao.dbo.pepmovimentos b on a.mov_id = b.codigo AND b.dtatende >= dateadd(month, -6, @DATA_ULTIMO_COMP)
INNER join recepcao.indicadores.vw_pep_siab c on b.codpac = c.idpep
INNER join recepcao.dbo.pessoa_grupo_de_pessoas d on d.pessoa_id = c.idsiab and grupo_de_pessoas_id = 6
where pa1 is not null and pa2 is not null 
and
(
	SELECT COUNT(DISTINCT CC.Especialidade) FROM RECEPCAO.DBO.PEPMOVIMENTOS CC
	INNER JOIN RECEPCAO.DBO.PACIENTES BB ON BB.CODIGO = CC.CODPAC
	WHERE CC.CODPAC = b.codpac
	AND CC.Especialidade IN (323,1360)
	AND CC.DTATENDE >= CONVERT(DATETIME, CONVERT(VARCHAR(6), DATEADD(YEAR, -1, @DATA_ULTIMO_COMP), 112) + '01')
	HAVING COUNT(DISTINCT CC.Especialidade) >= 2
) >= 2



-- D4
DECLARE @NUMERADOR_D4_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_D4_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D4_PENULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D4_ULTIMO NUMERIC(10,2)

-- Resultado alcançado no Penúltimo trimestre avaliado
SELECT @NUMERADOR_D4_PENULTIMO = COUNT(1) from RECEPCAO.Accountability.vw_pessoa WHERE id IN 
(
select d.id
from recepcao.dbo.vacinas_pacientes a
inner join recepcao.dbo.vacinas b on b.id = a.id_vacinas
inner join recepcao.dbo.PACIENTES c on c.codigo = a.Cod_pac
inner join recepcao.accountability.vw_pessoa D ON D.id = c.id_pessoa_siab
where datediff(month, c.dtnasc, DATEADD(MONTH,-1,@DATA_PENULTIMO_COMP)) <= 24
GROUP BY  equipe, d.id, id_vacinas, Quant_doses
having Quant_doses >= COUNT(DISTINCT A.ID)
) 

SELECT @DENOMINAD_D4_PENULTIMO = COUNT(DISTINCT id) from  RECEPCAO.Accountability.vw_pessoa c
where datediff(month, c.data_nascimento, dateadd(month, -1, @DATA_PENULTIMO_COMP)) <= 24

-- Resultado alcançado no Último trimestre avaliado
SELECT @NUMERADOR_D4_ULTIMO = COUNT(1) from RECEPCAO.Accountability.vw_pessoa WHERE id IN 
(
select d.id
from recepcao.dbo.vacinas_pacientes a
inner join recepcao.dbo.vacinas b on b.id = a.id_vacinas
inner join recepcao.dbo.PACIENTES c on c.codigo = a.Cod_pac
inner join RECEPCAO.Accountability.vw_pessoa D ON D.id = c.id_pessoa_siab
where datediff(month, c.dtnasc, DATEADD(MONTH,-1,@DATA_ULTIMO_COMP)) <= 24
GROUP BY  equipe, d.id, id_vacinas, Quant_doses
having Quant_doses >= COUNT(DISTINCT A.ID)
) 

SELECT @DENOMINAD_D4_ULTIMO = COUNT(DISTINCT id) from  RECEPCAO.Accountability.vw_pessoa c
where datediff(month, c.data_nascimento, dateadd(month, -1, @DATA_ULTIMO_COMP)) <= 24



-- D5
DECLARE @NUMERADOR_D5_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_D5_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D5_PENULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D5_ULTIMO NUMERIC(10,2)


-- Resultado alcançado no Penúltimo trimestre avaliado
SELECT @NUMERADOR_D5_PENULTIMO = COUNT(1) from RECEPCAO.Accountability.vw_pessoa WHERE id IN 
(
select d.id
from recepcao.dbo.vacinas_pacientes a
inner join recepcao.dbo.vacinas b on b.id = a.id_vacinas
inner join recepcao.dbo.PACIENTES c on c.codigo = a.Cod_pac
inner join recepcao.accountability.vw_pessoa D ON D.id = c.id_pessoa_siab
where datediff(month, c.dtnasc, DATEADD(MONTH,-1,@DATA_PENULTIMO_COMP)) <= 72
GROUP BY  equipe, d.id, id_vacinas, Quant_doses
having Quant_doses >= COUNT(DISTINCT A.ID)
) 

SELECT @DENOMINAD_D5_PENULTIMO = COUNT(DISTINCT id) from  RECEPCAO.Accountability.vw_pessoa c
where datediff(month, c.data_nascimento, dateadd(month, -1, @DATA_PENULTIMO_COMP)) <= 72

-- Resultado alcançado no Último trimestre avaliado
SELECT @NUMERADOR_D5_ULTIMO = COUNT(1) from RECEPCAO.Accountability.vw_pessoa WHERE id IN 
(
select d.id
from recepcao.dbo.vacinas_pacientes a
inner join recepcao.dbo.vacinas b on b.id = a.id_vacinas
inner join recepcao.dbo.PACIENTES c on c.codigo = a.Cod_pac
inner join RECEPCAO.Accountability.vw_pessoa D ON D.id = c.id_pessoa_siab
where datediff(month, c.dtnasc, DATEADD(MONTH,-1,@DATA_ULTIMO_COMP)) <= 72
GROUP BY  equipe, d.id, id_vacinas, Quant_doses
having Quant_doses >= COUNT(DISTINCT A.ID)
) 

SELECT @DENOMINAD_D5_ULTIMO = COUNT(DISTINCT id) from  RECEPCAO.Accountability.vw_pessoa c
where datediff(month, c.data_nascimento, dateadd(month, -1, @DATA_ULTIMO_COMP)) <= 72



-- D6
DECLARE @NUMERADOR_D6_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_D6_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D6_PENULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D6_ULTIMO NUMERIC(10,2)

-- Resultado alcançado no Penúltimo trimestre avaliado
SELECT @NUMERADOR_D6_PENULTIMO = count(distinct c.codpac) 
from recepcao.[dbo].[Prontuario_Gestante_Gest_Gravi_Atual] a
inner join recepcao.dbo.prontuario_gestante b on a.id_pront_gestante_gest_gravi_atual = b.id_pront_gestante_gest_gravi_atual 
inner join recepcao.dbo.pepmovimentos c on b.id_ = c.codigo
inner join recepcao.indicadores.vw_pep_siab d on d.idpep = c.codpac
where datediff(month, a.data_ultima_menstruacao, c.dtatende) <= 3
AND c.dtatende >= CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01')
AND c.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01 23:59:59')))

SELECT @DENOMINAD_D6_PENULTIMO = count(distinct c.codpac) 
from recepcao.[dbo].[Prontuario_Gestante_Gest_Gravi_Atual] a
inner join recepcao.dbo.prontuario_gestante b on a.id_pront_gestante_gest_gravi_atual = b.id_pront_gestante_gest_gravi_atual 
inner join recepcao.dbo.pepmovimentos c on b.id_ = c.codigo
inner join recepcao.indicadores.vw_pep_siab d on d.idpep = c.codpac
where 
c.dtatende >= CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01')
AND c.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_PENULTIMO_COMP, 112)+'01 23:59:59')))


-- Resultado alcançado no Último trimestre avaliado
SELECT @NUMERADOR_D6_ULTIMO = count(distinct c.codpac) 
from recepcao.[dbo].[Prontuario_Gestante_Gest_Gravi_Atual] a
inner join recepcao.dbo.prontuario_gestante b on a.id_pront_gestante_gest_gravi_atual = b.id_pront_gestante_gest_gravi_atual 
inner join recepcao.dbo.pepmovimentos c on b.id_ = c.codigo
inner join recepcao.indicadores.vw_pep_siab d on d.idpep = c.codpac
where datediff(month, a.data_ultima_menstruacao, c.dtatende) <= 3
AND c.dtatende >= CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_ULTIMO_COMP, 112)+'01')
AND c.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_ULTIMO_COMP, 112)+'01 23:59:59')))

SELECT @DENOMINAD_D6_ULTIMO = count(distinct c.codpac) 
from recepcao.[dbo].[Prontuario_Gestante_Gest_Gravi_Atual] a
inner join recepcao.dbo.prontuario_gestante b on a.id_pront_gestante_gest_gravi_atual = b.id_pront_gestante_gest_gravi_atual 
inner join recepcao.dbo.pepmovimentos c on b.id_ = c.codigo
inner join recepcao.indicadores.vw_pep_siab d on d.idpep = c.codpac
where 
c.dtatende >= CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_ULTIMO_COMP, 112)+'01')
AND c.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), @DATA_ULTIMO_COMP, 112)+'01 23:59:59')))



-- D7
DECLARE @NUMERADOR_D7_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_D7_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D7_PENULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D7_ULTIMO NUMERIC(10,2)

-- Resultado alcançado no Penúltimo trimestre avaliado
SELECT @NUMERADOR_D7_PENULTIMO = COUNT(DISTINCT FF.IDPEP) 
FROM RECEPCAO.DBO.PEPMOVIMENTOS AA
INNER JOIN RECEPCAO.DBO.PEPMOVIMENTOS_SOLI_PROCEDIMENTO BB ON AA.CODIGO=BB.ID_PEPMOVIMENTOS
INNER JOIN RECEPCAO.DBO.PROCEDIMENTOS CC ON BB.ID_EXAME=CC.ID
INNER JOIN RECEPCAO.INDICADORES.VW_PEP_SIAB FF ON AA.CODPAC = FF.IDPEP 
WHERE BB.ID_EXAME=1037
AND DATEDIFF(DAY, FF.DATA_NASCIMENTO, AA.DTATENDE) <= 28
AND DATEDIFF(MONTH, FF.DATA_NASCIMENTO, @DATA_PENULTIMO_COMP) = 3

SELECT @DENOMINAD_D7_PENULTIMO = COUNT(DISTINCT FF.ID) 
FROM RECEPCAO.ACCOUNTABILITY.VW_PESSOA FF
WHERE DATEDIFF(MONTH, FF.DATA_NASCIMENTO, @DATA_PENULTIMO_COMP) = 3


-- Resultado alcançado no Último trimestre avaliado
SELECT @NUMERADOR_D7_ULTIMO = COUNT(DISTINCT FF.IDPEP) 
FROM RECEPCAO.DBO.PEPMOVIMENTOS AA
INNER JOIN RECEPCAO.DBO.PEPMOVIMENTOS_SOLI_PROCEDIMENTO BB ON AA.CODIGO=BB.ID_PEPMOVIMENTOS
INNER JOIN RECEPCAO.DBO.PROCEDIMENTOS CC ON BB.ID_EXAME=CC.ID
INNER JOIN RECEPCAO.INDICADORES.VW_PEP_SIAB FF ON AA.CODPAC = FF.IDPEP 
WHERE BB.ID_EXAME=1037
AND DATEDIFF(DAY, FF.DATA_NASCIMENTO, AA.DTATENDE) <= 28
AND DATEDIFF(MONTH, FF.DATA_NASCIMENTO, @DATA_ULTIMO_COMP) = 3

SELECT @DENOMINAD_D7_ULTIMO = COUNT(DISTINCT FF.ID) 
FROM RECEPCAO.ACCOUNTABILITY.VW_PESSOA FF
WHERE DATEDIFF(MONTH, FF.DATA_NASCIMENTO, @DATA_ULTIMO_COMP) = 3



-- D8
DECLARE @NUMERADOR_D8_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_D8_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D8_PENULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_D8_ULTIMO NUMERIC(10,2)

-- Resultado alcançado no Penúltimo trimestre avaliado
SELECT @NUMERADOR_D8_PENULTIMO = COUNT(DISTINCT A.IDPEP) 
FROM RECEPCAO.INDICADORES.VW_PEP_SIAB A
INNER JOIN RECEPCAO.DBO.PEPMOVIMENTOS B ON A.IDPEP=B.CODPAC  AND B.DTATENDE >= DATEADD(MONTH, -12, @DATA_PENULTIMO_COMP)
INNER JOIN RECEPCAO.SIABFACIL.ATENDIMENTO_ODONTO C ON B.CODIGO=C.CODMOV
INNER JOIN RECEPCAO.SIABFACIL.TIPO_CONSULTA_ODONTO D ON C.TIPO_CONSULTA_ODONTO_CODIGO=D.CODIGO
WHERE D.CODIGO=3 

SELECT @DENOMINAD_D8_PENULTIMO = COUNT(DISTINCT A.IDPEP) 
FROM RECEPCAO.INDICADORES.VW_PEP_SIAB A
INNER JOIN RECEPCAO.DBO.PEPMOVIMENTOS B ON A.IDPEP=B.CODPAC  AND B.DTATENDE >= DATEADD(MONTH, -12, @DATA_PENULTIMO_COMP)
WHERE  B.ESPECIALIDADE=1362 AND DATEPART(MONTH, B.DTATENDE) = 3


-- Resultado alcançado no Último trimestre avaliado
SELECT @NUMERADOR_D8_ULTIMO = COUNT(DISTINCT A.IDPEP) 
FROM RECEPCAO.INDICADORES.VW_PEP_SIAB A
INNER JOIN RECEPCAO.DBO.PEPMOVIMENTOS B ON A.IDPEP=B.CODPAC  AND B.DTATENDE >= DATEADD(MONTH, -12, @DATA_ULTIMO_COMP)
INNER JOIN RECEPCAO.SIABFACIL.ATENDIMENTO_ODONTO C ON B.CODIGO=C.CODMOV
INNER JOIN RECEPCAO.SIABFACIL.TIPO_CONSULTA_ODONTO D ON C.TIPO_CONSULTA_ODONTO_CODIGO=D.CODIGO
WHERE D.CODIGO=3 

SELECT @DENOMINAD_D8_ULTIMO = COUNT(DISTINCT A.IDPEP) 
FROM RECEPCAO.INDICADORES.VW_PEP_SIAB A
INNER JOIN RECEPCAO.DBO.PEPMOVIMENTOS B ON A.IDPEP=B.CODPAC  AND B.DTATENDE >= DATEADD(MONTH, -12, @DATA_ULTIMO_COMP)
WHERE  B.ESPECIALIDADE=1362 AND DATEPART(MONTH, B.DTATENDE) = 3

-- D9
DECLARE @NUMERADOR_D9_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_D9_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINADOR NUMERIC(10,2)

-- Resultado alcançado no Penúltimo trimestre avaliado
SELECT @NUMERADOR_D9_PENULTIMO = count(distinct idpep) from (
select distinct d.idpep, d.idsiab from recepcao.siabfacil.atendimento_odonto a
inner join recepcao.siabfacil.fornecimento_odonto_para_atendimento_odonto b on a.id=b.atendimento_odonto_id
inner join recepcao.dbo.pepmovimentos c on a.codmov=c.Codigo
inner join recepcao.indicadores.vw_pep_siab d on c.codpac=d.idpep
where YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (7, 8, 9)
union all
select distinct a.idpep, a.idsiab from recepcao.indicadores.vw_pep_siab a
inner join recepcao.dbo.dados_complementares_lct b on a.idpep=b.id_codpac
where YEAR(data) = @COMP AND MONTH(data) IN (7, 8, 9)
)query1
where idsiab in (
	SELECT * FROM OPENQUERY(SIAB, 
	'SELECT C.ID TOTAL
	FROM SIABFACIL.FAMILIA A
	INNER JOIN CNES.LFCES037 B ON A.COD_AREA = B.COD_AREA
	INNER JOIN SIABFACIL.PESSOA C ON C.FAMILIA_ID = A.ID
	WHERE A.BOLSA_FAMILIA = TRUE
	AND A.COD_AREA IS NOT NULL
	AND A.DATA_DESATIVACAO IS NULL
	')
)


-- Resultado alcançado no último trimestre avaliado
SELECT @NUMERADOR_D9_ULTIMO = count(distinct idpep) from (
select distinct d.idpep, d.idsiab from recepcao.siabfacil.atendimento_odonto a
inner join recepcao.siabfacil.fornecimento_odonto_para_atendimento_odonto b on a.id=b.atendimento_odonto_id
inner join recepcao.dbo.pepmovimentos c on a.codmov=c.Codigo
inner join recepcao.indicadores.vw_pep_siab d on c.codpac=d.idpep
where YEAR(DTATENDE) = @COMP AND MONTH(DTATENDE) IN (10, 11, 12)
union all
select distinct a.idpep, a.idsiab from recepcao.indicadores.vw_pep_siab a
inner join recepcao.dbo.dados_complementares_lct b on a.idpep=b.id_codpac
where YEAR(data) = @COMP AND MONTH(data) IN (10, 11, 12)
)query1
where idsiab in (
	SELECT * FROM OPENQUERY(SIAB, 
	'SELECT C.ID TOTAL
	FROM SIABFACIL.FAMILIA A
	INNER JOIN CNES.LFCES037 B ON A.COD_AREA = B.COD_AREA
	INNER JOIN SIABFACIL.PESSOA C ON C.FAMILIA_ID = A.ID
	WHERE A.BOLSA_FAMILIA = TRUE
	AND A.COD_AREA IS NOT NULL
	AND A.DATA_DESATIVACAO IS NULL
	')
)

SELECT @DENOMINADOR = total FROM OPENQUERY(SIAB, 
'SELECT COUNT(DISTINCT C.ID) TOTAL
FROM SIABFACIL.FAMILIA A
INNER JOIN CNES.LFCES037 B ON A.COD_AREA = B.COD_AREA
INNER JOIN SIABFACIL.PESSOA C ON C.FAMILIA_ID = A.ID
WHERE A.BOLSA_FAMILIA = TRUE
AND A.COD_AREA IS NOT NULL
AND A.DATA_DESATIVACAO IS NULL
')





SELECT 
	CASE WHEN @NUMERADOR_A1_PENULTIMO = 0 OR @DENOMINAD_A1_PENULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_A1_PENULTIMO/@DENOMINAD_A1_PENULTIMO) * 100) END A1_PENULTIMO_TRIMESTRE, 
	CASE WHEN @NUMERADOR_A1_ULTIMO = 0 OR @DENOMINAD_A1_ULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_A1_ULTIMO/@DENOMINAD_A1_ULTIMO) * 100) END A1_ULTIMO_TRIMESTRE,
	CASE WHEN @NUMERADOR_A2_PENULTIMO = 0 OR @DENOMINAD_A2_PENULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_A2_PENULTIMO/@DENOMINAD_A2_PENULTIMO) * 100) END A2_PENULTIMO_TRIMESTRE, 
	CASE WHEN @NUMERADOR_A2_ULTIMO = 0 OR @DENOMINAD_A2_ULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_A2_ULTIMO/@DENOMINAD_A2_ULTIMO) * 100) END A2_ULTIMO_TRIMESTRE,
	CASE WHEN @NUMERADOR_A4_PENULTIMO = 0 OR @DENOMINAD = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_A4_PENULTIMO * 1000)/@DENOMINAD) END A4_PENULTIMO_TRIMESTRE, 
    CASE WHEN @NUMERADOR_A4_ULTIMO = 0 OR @DENOMINAD = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_A4_ULTIMO * 1000)/@DENOMINAD) END A4_ULTIMO_TRIMESTRE,
	CASE WHEN @NUMERADOR_D1_PENULTIMO = 0 OR @DENOMINAD_D1 = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D1_PENULTIMO/@DENOMINAD_D1) * 100) END D1_PENULTIMO_TRIMESTRE, 
	CASE WHEN @NUMERADOR_D1_ULTIMO = 0 OR @DENOMINAD_D1 = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D1_ULTIMO/@DENOMINAD_D1) * 100) END D1_ULTIMO_TRIMESTRE,
	CASE WHEN @NUMERADOR_D2_PENULTIMO = 0 OR @DENOMINAD_D2 = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D2_PENULTIMO/@DENOMINAD_D2) * 100) END D2_PENULTIMO_TRIMESTRE, 
	CASE WHEN @NUMERADOR_D2_ULTIMO = 0 OR  @DENOMINAD_D2 = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D2_ULTIMO/@DENOMINAD_D2) * 100) END D2_ULTIMO_TRIMESTRE,
	CASE WHEN @NUMERADOR_D3_PENULTIMO = 0 OR @DENOMINAD_D3 = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D3_PENULTIMO/@DENOMINAD_D3) * 100) END D3_PENULTIMO_TRIMESTRE, 
    CASE WHEN @NUMERADOR_D3_ULTIMO = 0 OR @DENOMINAD_D3 = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D3_ULTIMO/@DENOMINAD_D3) * 100) END D3_ULTIMO_TRIMESTRE,
	CASE WHEN @NUMERADOR_D4_PENULTIMO = 0 OR @DENOMINAD_D4_PENULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D4_PENULTIMO/@DENOMINAD_D4_PENULTIMO) * 100) END D4_PENULTIMO_TRIMESTRE, 
	CASE WHEN @NUMERADOR_D4_ULTIMO = 0 OR @DENOMINAD_D4_ULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D4_ULTIMO/@DENOMINAD_D4_ULTIMO) * 100) END D4_ULTIMO_TRIMESTRE,
	CASE WHEN @NUMERADOR_D5_PENULTIMO = 0 OR @DENOMINAD_D5_PENULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D5_PENULTIMO/@DENOMINAD_D5_PENULTIMO) * 100) END D5_PENULTIMO_TRIMESTRE, 
	CASE WHEN @NUMERADOR_D5_ULTIMO = 0 OR @DENOMINAD_D5_ULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D5_ULTIMO/@DENOMINAD_D5_ULTIMO) * 100) END D5_ULTIMO_TRIMESTRE,
	CASE WHEN @NUMERADOR_D6_PENULTIMO = 0 OR @DENOMINAD_D6_PENULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D6_PENULTIMO/@DENOMINAD_D6_PENULTIMO) * 100) END D6_PENULTIMO_TRIMESTRE, 
	CASE WHEN @NUMERADOR_D6_ULTIMO = 0 OR @DENOMINAD_D6_ULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D6_ULTIMO/@DENOMINAD_D6_ULTIMO) * 100) END D6_ULTIMO_TRIMESTRE,
	CASE WHEN @NUMERADOR_D7_PENULTIMO = 0 OR @DENOMINAD_D7_PENULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D7_PENULTIMO/@DENOMINAD_D7_PENULTIMO) * 100) END D7_PENULTIMO_TRIMESTRE, 
	CASE WHEN @NUMERADOR_D7_ULTIMO = 0 OR @DENOMINAD_D7_ULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D7_ULTIMO/@DENOMINAD_D7_ULTIMO) * 100) END D7_ULTIMO_TRIMESTRE,
	CASE WHEN @NUMERADOR_D8_PENULTIMO = 0 OR @DENOMINAD_D8_PENULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D8_PENULTIMO/@DENOMINAD_D8_PENULTIMO)) END D8_PENULTIMO_TRIMESTRE, 
	CASE WHEN @NUMERADOR_D8_ULTIMO = 0 OR @DENOMINAD_D8_ULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D8_ULTIMO/@DENOMINAD_D8_ULTIMO)) END D8_ULTIMO_TRIMESTRE,
	CASE WHEN @NUMERADOR_D9_PENULTIMO = 0 OR @DENOMINADOR = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D9_PENULTIMO * 100)/@DENOMINADOR) END D9_PENULTIMO_TRIMESTRE, 
    CASE WHEN @NUMERADOR_D9_ULTIMO = 0 OR @DENOMINADOR = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_D9_ULTIMO * 100)/@DENOMINADOR) END D9_ULTIMO_TRIMESTRE
END
GO

/*Slide 15* 
falta: 
- % de mulheres com diagnóstico citopatológico de HSIL e/ou câncer do colo do útero com seguimento de acordo com protocolo5
- Nº de mulheres em idade fértil de 10 a 49 anos (MIF) cadastradas
 */

BEGIN
DECLARE @COMP INT = 2015
DECLARE @DATA_PRIMEIRA_COMP DATETIME
DECLARE @DATA_SEGUNDA_COMP DATETIME
DECLARE @DENOMINAD NUMERIC(10,2)

SET @DATA_SEGUNDA_COMP = CONVERT(DATETIME, CONVERT(VARCHAR(4),@COMP) + '-12-31 23:59:59')
SET @DATA_PRIMEIRA_COMP = CONVERT(DATETIME, CONVERT(VARCHAR(4),@COMP) + '-06-30 23:59:59')
SELECT @DENOMINAD = count(1) from Accountability.vw_pessoa WHERE sexo = 'F' 

--Percentual de mulheres entre 50 e 69 anos com mamografia registrada nos últimos dois anos
DECLARE @DENOMINAD_PRIMEIRA_COMP NUMERIC(10,2)
DECLARE @DENOMINAD_SEGUNDA_COMP NUMERIC(10,2)
DECLARE @NUMERADOR_PERC_MAM_PRIMEIRO NUMERIC(10,2)
DECLARE @NUMERADOR_PERC_MAM_SEGUNDO NUMERIC(10,2)

-- Resultado alcançado no 1 semestre avaliado
SELECT @NUMERADOR_PERC_MAM_PRIMEIRO = count(distinct codpac) from (
select distinct NOMEEQUIPE, a.codpac  from recepcao.dbo.pepmovimentos a 
inner join recepcao.dbo.protocolo_saudemulher b on a.codigo = b.mov_id
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codpac = c.idpep and recepcao.dbo.CalcularIdadeAtende(data_nascimento, A.DTATENDE) between 50 and 69 and sexo = 'F'
where dtatende >= DATEADD(YEAR, -2, @DATA_PRIMEIRA_COMP)  AND  dtatende <= @DATA_PRIMEIRA_COMP
and   gine_mamografia='S'
union all
select distinct NOMEEQUIPE, a.codigo  from recepcao.dbo.pacientes a 
inner join recepcao.exames.mamografia b on a.codigo = b.codpac AND b.data >= DATEADD(YEAR, -2, @DATA_PRIMEIRA_COMP) AND  b.data <= @DATA_PRIMEIRA_COMP
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codigo = c.idpep and recepcao.dbo.CalcularIdadeAtende(data_nascimento, B.DATA) between 50 and 69 and c.sexo = 'F'
) q2

SELECT @DENOMINAD_PRIMEIRA_COMP = count(1) from Accountability.vw_pessoa WHERE sexo = 'F' AND recepcao.dbo.CalcularIdadeAtende(data_nascimento, @DATA_PRIMEIRA_COMP) between 50 and 69


-- Resultado alcançado no 2 semestre avaliado
SELECT @NUMERADOR_PERC_MAM_SEGUNDO = count(distinct codpac) from (
select distinct NOMEEQUIPE, a.codpac  from recepcao.dbo.pepmovimentos a 
inner join recepcao.dbo.protocolo_saudemulher b on a.codigo = b.mov_id
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codpac = c.idpep and recepcao.dbo.CalcularIdadeAtende(data_nascimento, A.dtatende) between 50 and 69 and sexo = 'F'
where dtatende >= DATEADD(YEAR, -2, @DATA_SEGUNDA_COMP)  AND  dtatende <= @DATA_SEGUNDA_COMP
and   gine_mamografia='S'
union all
select distinct NOMEEQUIPE, a.codigo  from recepcao.dbo.pacientes a 
inner join recepcao.exames.mamografia b on a.codigo = b.codpac AND b.data >= DATEADD(YEAR, -2, @DATA_SEGUNDA_COMP) AND  b.data <= @DATA_SEGUNDA_COMP
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codigo = c.idpep and recepcao.dbo.CalcularIdadeAtende(data_nascimento, B.data) between 50 and 69 and c.sexo = 'F'
) q2

SELECT @DENOMINAD_SEGUNDA_COMP = count(1) from Accountability.vw_pessoa WHERE sexo = 'F' AND recepcao.dbo.CalcularIdadeAtende(data_nascimento, @DATA_SEGUNDA_COMP) between 50 and 69


--Nº de mulheres em idade fértil de 10 a 49 anos (MIF) cadastradas



--Nº de MIF cadastradas com hipertensão arterial
DECLARE @NUMERADOR_HIPER_PRIMEIRO NUMERIC(10,2)
DECLARE @NUMERADOR_HIPER_SEGUNDO NUMERIC(10,2)

-- Resultado alcançado no 1 semestre avaliado
SELECT @NUMERADOR_HIPER_PRIMEIRO = count(distinct codpac) from recepcao.dbo.pepmovimentos a 
inner join recepcao.dbo.protocolo_saudemulher b on a.codigo = b.mov_id
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codpac = c.idpep and sexo = 'F'
where MONTH(DTATENDE) IN (1,2,3,4,5,6) AND YEAR(DTATENDE) = @COMP--dtatende >= DATEADD(YEAR, -2, @DATA_PRIMEIRA_COMP)  AND  dtatende <= @DATA_PRIMEIRA_COMP
and   pato_hipertensao='S'

-- Resultado alcançado no 2 semestre avaliado
SELECT @NUMERADOR_HIPER_SEGUNDO = count(distinct codpac) from recepcao.dbo.pepmovimentos a 
inner join recepcao.dbo.protocolo_saudemulher b on a.codigo = b.mov_id
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codpac = c.idpep and sexo = 'F'
where MONTH(DTATENDE) IN (7,8,9,10,11,12) AND YEAR(DTATENDE) = @COMP --dtatende >= DATEADD(YEAR, -2, @DATA_SEGUNDA_COMP)  AND  dtatende <= @DATA_SEGUNDA_COMP
and   pato_hipertensao='S'


--Nº de MIF cadastradas com hipertensão arterial com uso de método contraceptivo registrado no PEP
DECLARE @NUMERADOR_CONTRA_HIPER_PRIMEIRO NUMERIC(10,2)
DECLARE @NUMERADOR_CONTRA_HIPER_SEGUNDO NUMERIC(10,2)

-- Resultado alcançado no 1 semestre avaliado
SELECT @NUMERADOR_CONTRA_HIPER_PRIMEIRO = count(distinct codpac) from recepcao.dbo.pepmovimentos a 
inner join recepcao.dbo.protocolo_saudemulher b on a.codigo = b.mov_id
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codpac = c.idpep and sexo = 'F'
where MONTH(DTATENDE) IN (1,2,3,4,5,6) AND YEAR(DTATENDE) = @COMP--dtatende >= DATEADD(YEAR, -2, @DATA_PRIMEIRA_COMP)  AND  dtatende <= @DATA_PRIMEIRA_COMP
and   pato_hipertensao='S' and gine_uso_contraceptivo = 'S'

-- Resultado alcançado no 2 semestre avaliado
SELECT @NUMERADOR_CONTRA_HIPER_SEGUNDO = count(distinct codpac) from recepcao.dbo.pepmovimentos a 
inner join recepcao.dbo.protocolo_saudemulher b on a.codigo = b.mov_id
inner join RECEPCAO.INDICADORES.vw_pep_siab c on a.codpac = c.idpep and sexo = 'F'
where MONTH(DTATENDE) IN (7,8,9,10,11,12) AND YEAR(DTATENDE) = @COMP --dtatende >= DATEADD(YEAR, -2, @DATA_SEGUNDA_COMP)  AND  dtatende <= @DATA_SEGUNDA_COMP
and   pato_hipertensao='S' and gine_uso_contraceptivo = 'S'


--% de mulheres com diagnóstico citopatológico de HSIL e/ou câncer do colo do útero com seguimento de acordo com protocolo5




SELECT	CASE WHEN @NUMERADOR_PERC_MAM_PRIMEIRO = 0 OR @DENOMINAD_PRIMEIRA_COMP = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_PERC_MAM_PRIMEIRO/@DENOMINAD_PRIMEIRA_COMP) * 100) END PERC_MAMOGRAFIA_50_69_PRIM_SEMESTRE, 
		CASE WHEN @NUMERADOR_PERC_MAM_SEGUNDO = 0 OR @DENOMINAD_SEGUNDA_COMP = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_PERC_MAM_SEGUNDO/@DENOMINAD_SEGUNDA_COMP) * 100) END PERC_MAMOGRAFIA_50_69_SEGUN_SEMESTRE,
		@NUMERADOR_HIPER_PRIMEIRO NUMERO_HIPER_PRIM_SEMESTRE,
		@NUMERADOR_HIPER_SEGUNDO NUMERO_HIPER_SEGUN_SEMESTRE,
		@NUMERADOR_CONTRA_HIPER_PRIMEIRO NUMERO_HIPER_CONTRA_PRIM_SEMESTRE,
		@NUMERADOR_CONTRA_HIPER_SEGUNDO  NUMERO_HIPER_CONTRA_SEGUN_SEMESTRE

END
GO


/* slide 16 */


/* slide 17 */
--BEGIN
--DECLARE @COMP INT = 2015
--DECLARE @DATA_PRIMEIRA_COMP DATETIME
--DECLARE @DATA_SEGUNDA_COMP DATETIME


--SET @DATA_SEGUNDA_COMP = CONVERT(DATETIME, CONVERT(VARCHAR(4),@COMP) + '-12-31 23:59:59')
--SET @DATA_PRIMEIRA_COMP = CONVERT(DATETIME, CONVERT(VARCHAR(4),@COMP) + '-06-30 23:59:59')
--END
--GO


/* slide 18 */


/* slide 19 */


/* slide 20 */


/* slide 21 */
BEGIN
DECLARE @COMP INT = 2015
DECLARE @HANS_SIAB INT
DECLARE @HANS_PEP INT

SELECT @HANS_PEP = COUNT(1) FROM DBO.PESSOA_GRUPO_DE_PESSOAS WHERE YEAR(DATA_INICIAL) = @COMP AND GRUPO_DE_PESSOAS_ID = 3
SELECT @HANS_SIAB = COUNT(1) FROM OPENQUERY(SIAB,'SELECT * FROM SIABFACIL.PESSOA_GRUPO_DE_PESSOAS_LOG WHERE GRUPO_DE_PESSOAS_ID = 3') WHERE YEAR(DATA_ENTRADA) = @COMP

SELECT (@HANS_PEP + @HANS_SIAB) NUMERO_CASOS_HANSENIASE
	
END
GO



/* slide 22  -- falta a variavel 2 - E3 */
BEGIN
DECLARE @COMP INT = 2015
DECLARE @NUMERADOR_PENULTIMO NUMERIC(10,2)
DECLARE @NUMERADOR_ULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_PENULTIMO NUMERIC(10,2)
DECLARE @DENOMINAD_ULTIMO NUMERIC(10,2)

-- FARMACEUTICO
select NOME, EMAIL from dbo.MEDICOS WHERE PERFILMONITORADOR = 16 ORDER BY NOME

-- E3
select @NUMERADOR_PENULTIMO = count(1) from [dbo].[PepMovimentos_Prescricao] a inner join [dbo].[PepMovimentos] b on a.id_pepmovimentos = b.codigo where month(b.dtatende) in (7, 8, 9) and year(b.dtatende) = @comp and id_medicamento is not null
select @NUMERADOR_ULTIMO = count(1) from [dbo].[PepMovimentos_Prescricao] a inner join [dbo].[PepMovimentos] b on a.id_pepmovimentos = b.codigo where month(b.dtatende) in (10, 11, 12) and year(b.dtatende) = @comp and id_medicamento is not null

select @DENOMINAD_PENULTIMO = count(1) from [dbo].[PepMovimentos_Prescricao] a inner join [dbo].[PepMovimentos] b on a.id_pepmovimentos = b.codigo where month(b.dtatende) in (7, 8, 9) and year(b.dtatende) = @comp
select @DENOMINAD_ULTIMO = count(1) from [dbo].[PepMovimentos_Prescricao] a inner join [dbo].[PepMovimentos] b on a.id_pepmovimentos = b.codigo where month(b.dtatende) in (10, 11, 12) and year(b.dtatende) = @comp

SELECT CASE WHEN @NUMERADOR_PENULTIMO = 0 OR @DENOMINAD_PENULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_PENULTIMO/@DENOMINAD_PENULTIMO) * 100) END E3_PENULTIMO,
	   CASE WHEN @NUMERADOR_ULTIMO = 0 OR @DENOMINAD_ULTIMO = 0 THEN 0 ELSE CONVERT(NUMERIC(10,2),(@NUMERADOR_ULTIMO/@DENOMINAD_ULTIMO) * 100) END E3_ULTIMO	


END
GO



/* slide 23 */


/* slide 24 */
SELECT equipe, count(1) [num_pess_tabag_2015] FROM OPENQUERY(SIAB,'SELECT a.id, C.NM_REFERENCIA equipe, data_entrada, data_saida, grupo_de_pessoas_id FROM SIABFACIL.pessoa_grupo_de_pessoas_log x 
inner join SIABFACIL.PESSOA A on a.id = x.pessoa_id
INNER JOIN SIABFACIL.FAMILIA B ON A.FAMILIA_ID = B.ID
INNER JOIN CNES.LFCES037 C ON B.COD_AREA = C.COD_AREA
WHERE A.FAMILIA_ID IS NOT NULL
AND B.COD_AREA IS NOT NULL') WHERE grupo_de_pessoas_id = 21  and
year(data_entrada) = 2015 and year(data_saida) = 2015
group by equipe
order by equipe

SELECT equipe, count(1) [num_pess_tabag_2016] FROM OPENQUERY(SIAB,'SELECT a.id, C.NM_REFERENCIA equipe, data_entrada, data_saida, grupo_de_pessoas_id FROM SIABFACIL.pessoa_grupo_de_pessoas_log x 
inner join SIABFACIL.PESSOA A on a.id = x.pessoa_id
INNER JOIN SIABFACIL.FAMILIA B ON A.FAMILIA_ID = B.ID
INNER JOIN CNES.LFCES037 C ON B.COD_AREA = C.COD_AREA
WHERE A.FAMILIA_ID IS NOT NULL
AND B.COD_AREA IS NOT NULL') WHERE grupo_de_pessoas_id = 21  and
year(data_entrada) = 2016 and year(data_saida) = 2016 and month(data_entrada) in (1,2,3,4,5,6) and month(data_saida) in (1,2,3,4,5,6)
group by equipe
order by equipe

select nomeequipe, count(1) [desde_qdo_tabag_2015] from [dbo].[PepMovimentos_Soli_Procedimento] a 
inner join dbo.procedimentos b on a.id_exame = b.id
inner join dbo.pepmovimentos c on a.id_pepmovimentos = c.codigo
inner join indicadores.vw_pep_siab d on d.idpep = c.codpac 
where codproc = '0301010099' and year(dtatende) = 2015 and year(dtatende) = 2015
group by nomeequipe
order by nomeequipe

select nomeequipe, count(1) [desde_qdo_tabag_2016] from [dbo].[PepMovimentos_Soli_Procedimento] a 
inner join dbo.procedimentos b on a.id_exame = b.id
inner join dbo.pepmovimentos c on a.id_pepmovimentos = c.codigo
inner join indicadores.vw_pep_siab d on d.idpep = c.codpac 
where codproc = '0301010099' and year(dtatende) = 2016 and year(dtatende) = 2016 and month(dtatende) in (1,2,3,4,5,6)
group by nomeequipe
order by nomeequipe


/* slide 25 */


/* slide 26 */


/* slide 27 */


/* slide 28  -- foto */


/* slide 29 */


/* slide 30 */


/* slide 31 */


/* slide 32 */


/* slide 33 */


/* slide 34 */
begin
	select b.descricao, a.nome, a.email from recepcao.dbo.medicos a inner join RECEPCAO.dbo.cbo b on a.cbo1 = b.codigo where CBO1 IN ('223810', '223710', '223605','223905') order by descricao, nome
end
go

/* slide 35 - foto */


/* slide 36 - os profissionais nao esta vinculado no pep a nenhuma equipe (faim) */
begin
	select b.nome, count(1) from recepcao.dbo.medicos a inner join [dbo].[Wv_EquipeSiab] b on a.equipe = b.codigo where CBO1 IN ('223810', '223710', '223605','223905') group by b.nome order by b.nome
end
go

/* slide 37 */


/* slide 38 */


/* slide 39 */


/* slide 40 */


/* slide 41 APENAS UNIDADES DO TIPO B DEVERÃO PREENCHER ESTE SLIDE - VERIFICAR COM GEAN SE EH*/


/* slide 42 - FOTO */

/* slide 43 - FOTO */


/* slide 44 A ... */
BEGIN
DECLARE @COMP INT = 2016
DECLARE @COD_EQU INT
DECLARE @NOME_EQU VARCHAR(100)
DECLARE @TOTAL_PAC_EQU INT

DECLARE cursor_objects CURSOR FOR SELECT CODIGO, NOME FROM [dbo].[Wv_EquipeSiab] ORDER BY NOME

OPEN cursor_objects

FETCH NEXT FROM cursor_objects INTO @COD_EQU, @NOME_EQU

WHILE @@FETCH_STATUS = 0
BEGIN
	/* slide 44 */

	SELECT @NOME_EQU EQUIPE
	--SELECT * FROM ACESSO.DBO.USUARIOS

	SELECT B.DESCRICAO, NomeCompleto, cpf, email  FROM ACESSO.DBO.USUARIOS A INNER JOIN DBO.CBO B ON A.CBO = B.CODIGO WHERE EQUIPE = @COD_EQU ORDER BY B.DESCRICAO, NomeCompleto
    --SELECT * FROM CBO


	/* slide 45 */
	-- NUMERO DE PESSOAS CADASTRADAS
	SELECT @TOTAL_PAC_EQU = COUNT(1) FROM  Accountability.vw_pessoa WHERE COD_EQUIPE = @COD_EQU
	SELECT @TOTAL_PAC_EQU PESSOAS_CADASTRADAS

	--RACA/COR
	SELECT DS_RACA, COUNT(1) NUMERO, 
	CONVERT(NUMERIC(11,2), CONVERT(NUMERIC(11,2),(COUNT(1)*100))/CONVERT(NUMERIC(11,2),@TOTAL_PAC_EQU)) PERCENTUAL
	FROM Accountability.vw_pessoa WHERE COD_EQUIPE = @COD_EQU GROUP BY CD_RACA, DS_RACA ORDER BY CD_RACA

	--População cadastrada (FICHA A)¹ - População acompanhada (FICHA B) - % de Acompanhados
	--Nº de crianças de 0 a 1 ano
	declare @ficha_a_0_1 int
	declare @ficha_b_0_1 int 
	SELECT @ficha_a_0_1 = count(1) FROM Accountability.vw_pessoa where data_ativacao between '2016-03-01 00:00:00' and '2016-05-31 23:59:59' and dbo.CalcularIdadeAtende(data_nascimento, '2016-05-31 23:59:59') between 0 and 1 and cod_equipe = @COD_EQU
    SELECT @ficha_b_0_1 = count(distinct a.id) FROM Accountability.vw_pessoa a inner join indicadores.vw_pep_siab b on a.id = b.idsiab inner join dbo.pepmovimentos c on b.idpep = c.codpac where data_ativacao between '2016-03-01 00:00:00' and '2016-05-31 23:59:59' and dtatende between '2016-03-01 00:00:00' and '2016-05-31 23:59:59' and dbo.CalcularIdadeAtende(a.data_nascimento, '2016-05-31 23:59:59') between 0 and 1 and cod_equipe = @COD_EQU
	
	--Nº de crianças de 1 a 2 ano
	declare @ficha_a_1_2 int
	declare @ficha_b_1_2 int 
	SELECT @ficha_a_1_2 = count(1) FROM Accountability.vw_pessoa where data_ativacao between '2016-03-01 00:00:00' and '2016-05-31 23:59:59' and dbo.CalcularIdadeAtende(data_nascimento, '2016-05-31 23:59:59') between 1 and 2 and cod_equipe = @COD_EQU
    SELECT @ficha_b_1_2 = count(distinct a.id) FROM Accountability.vw_pessoa a inner join indicadores.vw_pep_siab b on a.id = b.idsiab inner join dbo.pepmovimentos c on b.idpep = c.codpac where data_ativacao between '2016-03-01 00:00:00' and '2016-05-31 23:59:59' and dtatende between '2016-03-01 00:00:00' and '2016-05-31 23:59:59' and dbo.CalcularIdadeAtende(a.data_nascimento, '2016-05-31 23:59:59') between 1 and 2 and cod_equipe = @COD_EQU
	
	--gestante
	 declare @gestante_a int
 declare @gestante_b int
	select @gestante_a = count(distinct PESSOA_ID) from openquery(siab, 'SELECT PGP.*, C.NM_REFERENCIA equipe FROM SIABFACIL.PESSOA PE
INNER JOIN SIABFACIL.FAMILIA B ON PE.FAMILIA_ID = B.ID
INNER JOIN CNES.LFCES037 C ON B.COD_AREA = C.COD_AREA
INNER JOIN SIABFACIL.PESSOA_GRUPO_DE_PESSOAS_LOG PGP ON  PE.ID = PGP.PESSOA_ID
INNER JOIN SIABFACIL.GRUPO_DE_PESSOAS GP ON PGP.GRUPO_DE_PESSOAS_ID = GP.ID
WHERE PGP.GRUPO_DE_PESSOAS_ID = 5') where ((year(data_entrada) = 2016 and month(data_entrada) = 5) or (year(data_saida) = 2016 and month(data_saida) = 5))
and equipe = @NOME_EQU


select @gestante_b = count(distinct PESSOA_ID) from recepcao.dbo.prontuario_gestante b 
inner join recepcao.dbo.pepmovimentos c on b.id_ = c.codigo
inner join recepcao.indicadores.vw_pep_siab d on d.idpep = c.codpac
inner join openquery(siab, 'SELECT PGP.*, C.NM_REFERENCIA equipe FROM SIABFACIL.PESSOA PE
       INNER JOIN SIABFACIL.FAMILIA B ON PE.FAMILIA_ID = B.ID
       INNER JOIN CNES.LFCES037 C ON B.COD_AREA = C.COD_AREA
       INNER JOIN SIABFACIL.PESSOA_GRUPO_DE_PESSOAS_LOG PGP ON  PE.ID = PGP.PESSOA_ID
       INNER JOIN SIABFACIL.GRUPO_DE_PESSOAS GP ON PGP.GRUPO_DE_PESSOAS_ID = GP.ID
       WHERE PGP.GRUPO_DE_PESSOAS_ID = 5') e on d.idsiab = e.PESSOA_ID
where year(dtatende) = 2016 and month(dtatende) = 5 and ((year(data_entrada) = 2016 and month(data_entrada) = 5) or (year(data_saida) = 2016 and month(data_saida) = 5))
and e.equipe = @NOME_EQU
	-- resultado
	select 'Nº de crianças de 0 a 1 ano' titulo,  @ficha_a_0_1 ficha_A, @ficha_b_0_1 ficha_B, (@ficha_b_0_1 * 100)/@ficha_a_0_1 acompanhados, '100' meta
	union all
	select 'Nº de crianças de 1 a 2 anos ' titulo, @ficha_a_1_2 ficha_A, @ficha_b_1_2 ficha_B, (@ficha_b_1_2 * 100)/@ficha_a_1_2 acompanhados, '100' meta
	union all 
	select 'Gestante' titulo, @gestante_a ficha_A, @gestante_b ficha_B, (@gestante_b * 100)/@gestante_a acompanhados, '100' meta

	
	/* slide 46 */
	-- População cadastrada 
	declare @ficha_a_10_19 int
	declare @ficha_a_60 int
	SELECT @ficha_a_10_19 = count(1) FROM Accountability.vw_pessoa where data_ativacao <= '2016-05-31 23:59:59' and dbo.CalcularIdadeAtende(data_nascimento, '2016-05-31 23:59:59') between 10 and 19 and cod_equipe = @COD_EQU
	SELECT @ficha_a_60 = count(1) FROM Accountability.vw_pessoa where data_ativacao <= '2016-05-31 23:59:59' and dbo.CalcularIdadeAtende(data_nascimento, '2016-05-31 23:59:59') > 60 and cod_equipe = @COD_EQU

	select 'Nº de adolescentes  10 a 19 anos' titulo, @ficha_a_10_19 ficha_A
	union all
	select 'Nº de pessoas com 60 anos ou mais' titulo, @ficha_a_60 ficha_A
	union all
	select 'Nº de pessoas com deficiência - nao fiz' titulo, 0 ficha_A


	/* slide 47 -- a equipe nao esta vinculada ao profissional do nasf */
	declare @nasf_0_2_movimento int
	declare @nasf_0_2_ficha_a int
	declare @nasf_gest int
	declare @nasf_12_19_movimento int
	declare @nasf_12_19_ficha_a int

	SELECT @nasf_0_2_movimento = count(1) FROM Accountability.vw_pessoa a inner join Indicadores.vw_pep_siab b on a.id = b.idsiab 
								 inner join dbo.pepmovimentos c on b.idpep = c.codpac
		                         inner join dbo.medicos d on c.codmed = d.codigo
								 inner join [dbo].[Wv_EquipeSiab] e on d.equipe = e.codigo 
								 where dbo.CalcularIdadeAtende(a.data_nascimento, dtatende) between 0 and 2 and cod_equipe = @COD_EQU
								 and month(dtatende) = 12 and year(dtatende) = 2015 and a.bolsa_familia = 1 and  CBO1 IN ('223810', '223710', '223605','223905')


	SELECT @nasf_0_2_ficha_a = count(1) FROM Accountability.vw_pessoa 
	                           where month(data_ativacao) = 12 and year(data_ativacao) = 2015 and bolsa_familia = 1 and
							   dbo.CalcularIdadeAtende(data_nascimento, '2016-12-31 23:59:59') between 0 and 2 and cod_equipe = @COD_EQU

	
	select @nasf_gest =  count(1) from  Accountability.vw_pessoa a inner join Indicadores.vw_pep_siab b on a.id = b.idsiab 
										inner join openquery(siab,'select * from siabfacil.pessoa_grupo_de_pessoas_log where grupo_de_pessoas_id = 5') x on a.id = x.pessoa_id
										inner join dbo.pepmovimentos c on b.idpep = c.codpac
										inner join dbo.medicos d on c.codmed = d.codigo
										inner join [dbo].[Wv_EquipeSiab] e on d.equipe = e.codigo 
										where cod_equipe = @COD_EQU and ((month(x.data_saida) = 12 and year(x.data_saida) = 2015) or (month(x.data_entrada) = 12 and year(x.data_entrada) = 2015))
										and month(dtatende) = 12 and year(dtatende) = 2015 and a.bolsa_familia = 1 and  CBO1 IN ('223810', '223710', '223605','223905')


	SELECT @nasf_12_19_movimento = count(1) FROM recepcao.dicionario.vw_cartao_carioca_siab a 
								 inner join Accountability.vw_pessoa x on x.id = a.pessoa_id
								 inner join Indicadores.vw_pep_siab b on a.pessoa_id = b.idsiab 
								 inner join dbo.pepmovimentos c on b.idpep = c.codpac
		                         inner join dbo.medicos d on c.codmed = d.codigo
								 inner join [dbo].[Wv_EquipeSiab] e on d.equipe = e.codigo 
								 where dbo.CalcularIdadeAtende(a.nascimento, dtatende) between 12 and 19 and cod_equipe = @COD_EQU
								 and month(dtatende) = 12 and year(dtatende) = 2015 and  CBO1 IN ('223810', '223710', '223605','223905')

	select @nasf_12_19_ficha_a = count(1) FROM Accountability.vw_pessoa a inner join dicionario.vw_cartao_carioca_siab b on a.id = b.pessoa_id
	                           where month(data_ativacao) = 12 and year(data_ativacao) = 2015 and bolsa_familia = 1 and
							   dbo.CalcularIdadeAtende(data_nascimento, '2016-12-31 23:59:59') between 0 and 2 and cod_equipe = @COD_EQU

	select 'Do BF cadastrados de 0 a 2 anos, quantos foram matriciados pelo NASF ² (nº absoluto)', @nasf_0_2_movimento + @nasf_0_2_ficha_a
	union all
	select 'Das gestantes BF  acompanhadas, quantas foram matriciados pelo NASF ² (nº absoluto)', @nasf_gest
	union all
	select 'Dos Beneficiários CFC de 12 a 19 anos, quantos foram matriciados pelo NASF² (nº absoluto)', @nasf_12_19_movimento + @nasf_12_19_ficha_a


	/* slide 48 - preciso da informacao da primeira coluna O SELECTS DAS VARIAVEIS ESTA NO ARQUIVO SQLQUERY12.SQL*/

	DECLARE @CADASTRADOS_DIAB INT
 DECLARE @CADASTRADOS_HIPER INT

 SELECT @CADASTRADOS_DIAB = SUM(A) 
    FROM (
   select A.NomeEquipe ,
   CASE WHEN A.TemDiabetes = 'S' THEN 1 ELSE 0 END [A]
   FROM INDICADORES.PacientesUniMonit A
   WHERE  A.TemDiabetes = 'S'
   ) QUERY1 WHERE NomeEquipe = @NOME_EQU

 SELECT @CADASTRADOS_HIPER = SUM(A)
    FROM 
   (
   select A.NomeEquipe ,
   CASE WHEN A.HiperTenso = 'S' THEN 1 ELSE 0 END [A]
   FROM INDICADORES.PacientesUniMonit A
   WHERE A.HiperTenso = 'S' 
   ) QUERY1 WHERE NomeEquipe = @NOME_EQU

 DECLARE @ACOM_DIA INT
 DECLARE @ACOM_HIPER INT

 SELECT @ACOM_DIA = SUM(A) 
    FROM (
   select A.NomeEquipe ,
   CASE WHEN A.TemDiabetes = 'S' AND A.RegistrosPAUltimos12Meses > 1 AND A.TotalAcompanhamentosACSAte11Meses  >= 3 THEN 1 ELSE 0 END [A]
   FROM INDICADORES.PacientesUniMonit A
   WHERE  A.TemDiabetes = 'S'
   ) QUERY1 WHERE NomeEquipe = @NOME_EQU

 SELECT @ACOM_HIPER = SUM(A) 
    FROM 
   (
   select A.NomeEquipe ,
   CASE WHEN A.HiperTenso = 'S' AND A.AtendimentoEnfMedicoUltimos12Meses = 'S' THEN 1 ELSE 0 END [A]
   FROM INDICADORES.PacientesUniMonit A
   WHERE A.HiperTenso = 'S' 
   ) QUERY1 WHERE NomeEquipe = @NOME_EQU

 
 DECLARE @PE_DIA INT
 DECLARE @PE_DIA_NASF INT
 SELECT @PE_DIA = SUM(G)
    FROM (
   select A.NomeEquipe ,
   CASE WHEN A.PeDiabetico = 'S' THEN 1 ELSE 0 END  [G]
   FROM INDICADORES.PacientesUniMonit A
   WHERE  A.TemDiabetes = 'S'
   ) QUERY1 WHERE NomeEquipe = @NOME_EQU
 
 SELECT @PE_DIA_NASF = COUNT(1) FROM (
   select A.NomeEquipe , A.IDPEP, A.IDSIAB
          FROM INDICADORES.PacientesUniMonit A INNER JOIN DBO.PepMovimentos B ON A.IDPep = B.codpac
   INNER JOIN DBO.MEDICOS C ON B.codmed = C.CODIGO
   WHERE  A.TemDiabetes = 'S' AND A.PeDiabetico = 'S' AND CBO1 IN ('223810', '223710', '223605','223905')
   ) QUERY1 WHERE NomeEquipe = @NOME_EQU

 SELECT @CADASTRADOS_DIAB CADASTRADOS_DIABETE, @CADASTRADOS_HIPER CADASTRADOS_HIPERTENSAO, @ACOM_DIA ACOMPANHADOS_DIABETE, @ACOM_HIPER ACOMPANHADOS_HIPERTENSAO

 SELECT 'Nº de pessoas diabéticas com avaliação dos pés realizada' TITULO, @PE_DIA TOTAL, @PE_DIA_NASF TOTAL_NASF

	/* slide 49 */
	declare @variavel_3_03_A int
	declare @variavel_3_03_A_Menor_20 int
	declare @variavel_3_03_D int
	declare @variavel_3_03_C int

	select @variavel_3_03_A = sum(A)
							from (
							select 
							a.nome, a.cns, a.dtnasc, a.mae,idpep, idsiab, a.nomeequipe, idade,
							CASE WHEN A.SEXO = 'F' AND PreNatalEncerradoPeriodo = 'S' THEN 1 ELSE 0 END [A]
							FROM INDICADORES.PACIENTESUNI A 
							WHERE A.SEXO = 'F' AND PreNatalEncerradoPeriodo = 'S'
							) query1 where nomeequipe = @NOME_EQU

	select @variavel_3_03_A_Menor_20 = sum(A)
							from (
							select 
							a.nome, a.cns, a.dtnasc, a.mae,idpep, idsiab, a.nomeequipe, idade,
							CASE WHEN A.SEXO = 'F' AND PreNatalEncerradoPeriodo = 'S' THEN 1 ELSE 0 END [A]
							FROM INDICADORES.PACIENTESUNI A 
							WHERE A.SEXO = 'F' AND PreNatalEncerradoPeriodo = 'S'
							) query1 where idade < 20 and nomeequipe = @NOME_EQU

	select @variavel_3_03_D =	sum(d)
				from (
				select 
				a.nome, a.cns, a.dtnasc, a.mae,idpep, idsiab,
				CASE WHEN A.SEXO = 'F' AND PreNatalEncerradoPeriodo = 'S' AND AoMenos7Consultas_w78_w79_w84 = 'S' AND ResultadosVDRL > 1  AND ResultadosAntiHIV > 1  THEN 1 ELSE 0 END [D] ,
				'Equipe: ' + NomeEquipe NomeEquipe
				FROM INDICADORES.PACIENTESUNI A 
				WHERE A.SEXO = 'F' AND PreNatalEncerradoPeriodo = 'S' and nomeequipe = @NOME_EQU
				) query1


		select @variavel_3_03_C =	sum(c)
				from (
				select 
				a.nome, a.cns, a.dtnasc, a.mae,idpep, idsiab,
				CASE WHEN A.SEXO = 'F' AND PreNatalEncerradoPeriodo = 'S' AND PrimeiraConsultaGestanteAntes12Semanas = 'S' THEN 1 ELSE 0 END [C],
				'Equipe: ' + NomeEquipe NomeEquipe
				FROM INDICADORES.PACIENTESUNI A 
				WHERE A.SEXO = 'F' AND PreNatalEncerradoPeriodo = 'S' and nomeequipe = @NOME_EQU
				) query1

	select 'Nº de Gestantes com pré-natal encerrado¹', isnull(@variavel_3_03_A, 0)
	union all
	select 'Nº de Gestantes com pré-natal encerrado menores de 20 anos²', isnull(@variavel_3_03_A_Menor_20, 0)
	union all
	select 'Proporção de gestantes com 7 ou mais consultas de PN³', isnull(@variavel_3_03_D, 0)
	union all
	select 'Proporção de gestantes com PN iniciado até a 12ª semana de gestação4', isnull(@variavel_3_03_C, 0)



    FETCH NEXT FROM cursor_objects INTO @COD_EQU, @NOME_EQU
END

CLOSE cursor_objects

DEALLOCATE cursor_objects 

END
GO


