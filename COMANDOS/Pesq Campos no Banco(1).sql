select table_schema, upper(table_name) as table_name, 
					 upper(column_name) as column_name, 
					 upper(column_default) as column_default, 
							case is_nullable when 'YES' then 'TRUE' ELSE 'FALSE' END AS NULO,
					 upper(data_type) as data_type, character_maximum_length, numeric_precision
from recepcao.information_schema.columns where column_name like '%SIGLA_CONSELHO%'--INFORME O NOME DO CAMPO
--INFORME O NOME DO BANCO

--sp_help requisicaokit
