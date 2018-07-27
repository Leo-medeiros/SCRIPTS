
select t.name,ta.name from bdTeste.sys.triggers t
inner join sys.tables ta on t.parent_id = ta.object_id