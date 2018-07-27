use recepcao
go

select * from atividade_grupo where uuid = '00000000-0000-0000-0000-000000000000' 
select * from siabfacil.atendimento_individual where uuid = '00000000-0000-0000-0000-000000000000'  --convert(varchar(100),uuid) like '%000%'  --uuid is null
select * from siabfacil.consumo_alimentar where uuid_ficha = '00000000-0000-0000-0000-000000000000' --convert(varchar(100),uuid_ficha) like '%000%' --uuid_ficha is null
select * from siabfacil.procedimento_individual where uuid = '00000000-0000-0000-0000-000000000000' --convert(varchar(100),uuid) like '%000%'  --uuid is null
select * from siabfacil.atendimento_odonto where uuid = '00000000-0000-0000-0000-000000000000' --convert(varchar(100),uuid) like '%000%' --uuid is null

--update siabfacil.consumo_alimentar set uuid_ficha = newid() where uuid_ficha = '00000000-0000-0000-0000-000000000000'
--update siabfacil.procedimento_individual set uuid = newid() where uuid = '00000000-0000-0000-0000-000000000000'

