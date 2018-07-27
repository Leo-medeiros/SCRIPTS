/*    ==Par�metros de Script==

    Vers�o do Servidor de Origem : SQL Server 2014 (12.0.5207)
    Edi��o do Mecanismo de Banco de Dados de Origem : Microsoft SQL Server Express Edition
    Tipo do Mecanismo de Banco de Dados de Origem : SQL Server Aut�nomo

    Vers�o do Servidor de Destino : SQL Server 2014
    Edi��o de Mecanismo de Banco de Dados de Destino : Microsoft SQL Server Express Edition
    Tipo de Mecanismo de Banco de Dados de Destino : SQL Server Aut�nomo
*/

USE [LM_VEICULOS]
GO

/****** Object:  StoredProcedure [dbo].[BCK_BANCO]    Script Date: 10/01/2018 08:40:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[BCK_BANCO] 
-- caminho do backup
@PATH VARCHAR(200) = 'C:\Backup DataBase SQL\LM_VEICULOS\'
AS
DECLARE
@DATA VARCHAR(1000),
@FILE VARCHAR(1000)
--@ZIP VARCHAR(1000)

-- nome do arquivo
SET @FILE = ' LM_VEICULOS#' + CAST(DATEPART(DD, GETDATE()) AS VARCHAR(2)) + '-' +
    CAST(DATEPART(MM,GETDATE()) AS varchar(2)) + '-' +
    CAST(DATEPART(YYYY,GETDATE()) AS varchar(4)) + '- ' +
    CAST(DATEPART(HH,GETDATE()) AS varchar(2)) + '-' +
    CAST(DATEPART(MM,GETDATE()) AS varchar(2)) 
  
SELECT @DATA = @PATH + @FILE + '.BAK'

BACKUP DATABASE LM_VEICULOS  TO DISK = @DATA WITH  INIT ,  NOUNLOAD , NOSKIP ,  STATS = 10,  NOFORMAT
SELECT  @DATA [CAMINHO_BCKP]
GO


