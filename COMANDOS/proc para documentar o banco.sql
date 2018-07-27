/*    ==Parâmetros de Script==

    Versão do Servidor de Origem : SQL Server 2014 (12.0.5207)
    Edição do Mecanismo de Banco de Dados de Origem : Microsoft SQL Server Express Edition
    Tipo do Mecanismo de Banco de Dados de Origem : SQL Server Autônomo

    Versão do Servidor de Destino : SQL Server 2014
    Edição de Mecanismo de Banco de Dados de Destino : Microsoft SQL Server Express Edition
    Tipo de Mecanismo de Banco de Dados de Destino : SQL Server Autônomo
*/

USE [bdTeste]
GO

/****** Object:  StoredProcedure [dbo].[sp_set_column_description]    Script Date: 22/12/2017 15:28:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[sp_set_column_description] (
	@schema varchar(256),
    @table varchar(256),
    @column varchar(256),
    @description varchar(256))
    as
begin
    if exists (
        select p.* 
        from
            sys.extended_properties p, 
            sys.columns c, 
            sys.tables t, 
            sys.schemas s
        where
            t.schema_id = s.schema_id and
            c.object_id = t.object_id and
            p.major_id = t.object_id and
            p.minor_id = c.column_id and
            p.name = N'MS_Description' and 
            s.name = @schema and
            t.name = @table and
            c.name = @column
    )
        exec sys.sp_updateextendedproperty 
            @level0type=N'SCHEMA', @level0name=@schema,
            @level1type=N'TABLE', @level1name=@table,
            @level2type=N'COLUMN', @level2name=@column,
            @name=N'MS_Description', @value=@description
    else
        exec sys.sp_addextendedproperty 
            @level0type=N'SCHEMA', @level0name=@schema,
            @level1type=N'TABLE', @level1name=@table,
            @level2type=N'COLUMN', @level2name=@column,
            @name=N'MS_Description', @value=@description
end



GO


