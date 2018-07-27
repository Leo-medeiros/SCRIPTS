SELECT * FROM (
select * from openquery(siab,'SELECT  PE.NOME, FA.COD_AREA || ''.'' || FA.MICROAREA || ''.'' || FA.NUMERO PRONTUARIO,
CASE PGP.grupo_de_pessoas_id
WHEN 3 THEN ''Hansen�ase''
WHEN 5 THEN ''Gestante''
WHEN 6 THEN ''Hipertens�o Arterial''
WHEN 7 THEN ''Diabetes''
WHEN 8 THEN ''Tuberculose''
WHEN 10 THEN ''Deficiente''
WHEN 1000 THEN ''Sa�de Mental''
WHEN 1001 THEN ''Crian�a''
end "LinhasDeCuidado", pe.cns, pe.data_nascimento, pe.nome_da_mae
FROM SIABFACIL.PESSOA PE
INNER JOIN SIABFACIL.FAMILIA FA ON PE.FAMILIA_ID = FA.ID
INNER JOIN SIABFACIL.PESSOA_GRUPO_DE_PESSOAS_LOG PGP ON  PE.ID = PGP.PESSOA_ID
WHERE PGP.GRUPO_DE_PESSOAS_ID IN (3,5,6,7,8)
AND PE.DATA_DESATIVACAO IS NULL
AND FA.DATA_DESATIVACAO IS NULL
ORDER BY FA.COD_AREA, FA.MICROAREA')
except
SELECT DISTINCT (B.Nome), B.PRONTUARIO, 
CASE A.grupo_de_pessoas_id WHEN 3 THEN 'Hansen�ase'
WHEN 5 THEN 'Gestante'
WHEN 6 THEN 'Hipertens�o Arterial'
WHEN 7 THEN 'Diabetes'
WHEN 8 THEN 'Tuberculose'
WHEN 10 THEN 'Deficiente'
WHEN 1000 THEN 'Sa�de Mental'
WHEN 1001 THEN 'Crian�a'
END 'LinhasDeCuidado', b.cns, b.data_nascimento, b.mae
FROM pessoa_grupo_de_pessoas A
INNER JOIN Indicadores.vw_Pep_SIAB B ON A.Cod_pac = B.IDPep
where a.ativo <> 'N'
) QRY
