/* chamado 8582 - meire (alterado o nome da tabela para de "recepcao.dbo.movimento" para "movimentos" */
USE [recepcao]
GO


ALTER function [dbo].[TrazClassificacao2](@FICHA CHAR(10)) RETURNS INT
BEGIN
	DECLARE @RES INT
	declare @modelo char(1)
    --DECLARE @FICHA INT
	--SET @FICHA = 3364382   

	select @modelo = modeloacolhimento from recepcao.dbo.param_ext

	if @modelo = '2'
	begin
		select @RES = 
		case when c.classificacao is null then c.classificacao else '1' end 
		from recepcao.dbo.movimentos Mov 
		inner join recepcao.dbo.controle_acolhimento_novo c on mov.id_senha = c.id_senha
		where Mov.ficha = @ficha
	end
	else
	begin
		select @RES = 
		case when mov.mov is null then c.classificacao else '1' end 
		from recepcao.dbo.controle_mov Mov 
		inner join recepcao.dbo.controle_acolhimento c on mov.ficha = c.ficha
		where Mov.ficha = @ficha
		if @res is null
		begin
			select @RES = 
			c.classificacao 
			from recepcao.dbo.controle_acolhimento c 
			where c.ficha = @ficha		
		end
	end
    return @RES
 END   

GO


ALTER function [dbo].[TrazClassificacao](@FICHA CHAR(10)) RETURNS INT
BEGIN
	DECLARE @RES INT
	declare @modelo char(1)
    --DECLARE @FICHA INT
	--SET @FICHA = 3364382   

	select @modelo = modeloacolhimento from recepcao.dbo.param_ext

	if @modelo = '2'
	begin
		select @RES = 
		case when c.classificacao is null then c.classificacao else '1' end 
		from recepcao.dbo.movimentos Mov 
		inner join recepcao.dbo.controle_acolhimento_novo c on mov.id_senha = c.id_senha
		where Mov.ficha = @ficha
	end
	else
	begin
		select @RES = 
		case when mov.mov is null then c.classificacao else '1' end 
		from recepcao.dbo.controle_mov Mov 
		inner join recepcao.dbo.controle_acolhimento c on mov.ficha = c.ficha
		where Mov.ficha = @ficha
		if @res is null
		begin
			select @RES = 
			c.classificacao 
			from recepcao.dbo.controle_acolhimento c 
			where c.ficha = @ficha		
		end
	end
    return @RES
 END   

