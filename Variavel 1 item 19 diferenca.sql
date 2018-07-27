SELECT DISTINCT 'Equipe: ' + NomeEquipe NomeEquipe, 'Diferença' COLUNA, nome [Paciente], cns [CNS], CONVERT(VARCHAR(10), DATA_nascimento, 103) [Data Nascimento], MAE [Mãe], IDSIAB FROM OPENQUERY(SIAB, 
'SELECT B.NM_REFERENCIA nomeequipe, C.NOME, C.CNS, C.DATA_NASCIMENTO, C.NOME_DA_MAE MAE, C.ID IDSIAB
FROM SIABFACIL.FAMILIA A
INNER JOIN CNES.LFCES037 B ON A.COD_AREA = B.COD_AREA
INNER JOIN SIABFACIL.PESSOA C ON C.FAMILIA_ID = A.ID
WHERE A.BOLSA_FAMILIA = TRUE
AND A.COD_AREA IS NOT NULL
AND A.DATA_DESATIVACAO IS NULL
')
except
select * from (
select DISTINCT 'Equipe: ' + NomeEquipe NomeEquipe, 'Diferença' COLUNA, nome [Paciente], cns [CNS], CONVERT(VARCHAR(10), DATA_nascimento, 103) [Data Nascimento], MAE [Mãe], idsiab from recepcao.siabfacil.atendimento_odonto a
inner join recepcao.siabfacil.fornecimento_odonto_para_atendimento_odonto b on a.id=b.atendimento_odonto_id
inner join recepcao.dbo.pepmovimentos c on a.codmov=c.Codigo
inner join recepcao.indicadores.vw_pep_siab d on c.codpac=d.idpep
union all
select DISTINCT 'Equipe: ' + NomeEquipe NomeEquipe, 'Diferença' COLUNA, nome [Paciente], cns [CNS], CONVERT(VARCHAR(10), DATA_nascimento, 103) [Data Nascimento], MAE [Mãe], idsiab from recepcao.indicadores.vw_pep_siab a
inner join recepcao.dbo.dados_complementares_lct b on a.idpep=b.id_codpac
) query1


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