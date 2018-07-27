select * from recepcao.dbo.medicamentos
where descricao like 'Diazepam%'

select * from recepcao.dbo.medicamentos
--update recepcao.dbo.medicamentos set especial = 'N'
where codigo in (141, 142, 194, 195 )