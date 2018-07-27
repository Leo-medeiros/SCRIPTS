select top 50 * from recepcao.dbo.synapse
where ficha in(select ficha from recepcao.dbo.sadt where origemmovimento in 
                (select top 50 ficha from recepcao.dbo.movimentos where movimento = 5 order by dtatende desc))
order by data desc
                
                

select top 10 * from recepcao.dbo.movimentos 
where movimento = 5
order by dtatende desc

select * from recepcao.dbo.sadt
where origemmovimento in ( select top 50 ficha from recepcao.dbo.movimentos 
where movimento = 5
order by dtatende desc  )
and setor = 35

select * from recepcao.dbo.param_sadt