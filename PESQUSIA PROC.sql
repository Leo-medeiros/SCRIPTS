

SELECT upper(s.name) as name,upper(ch.name) as name_Schema FROM RECEPCAO.sys.procedures s
inner join  RECEPCAO.sys.schemas ch on (ch.schema_id = s.schema_id)
WHERE s.name LIKE '%CSV%' -- INFORMAR O NOME DA PROCEDURE 

