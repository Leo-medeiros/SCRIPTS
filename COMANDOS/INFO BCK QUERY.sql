--QUERY INFO DE BACKUP



SELECT B.server_name [SERVIDOR],
       b.database_name [BANCO DE DADOS],
       CASE B.type
           WHEN 'D'
           THEN 'Database'
           WHEN 'L'
           THEN 'Log'
           WHEN 'I'
           THEN 'Diferencial'
           WHEN 'F'
           THEN 'File ou Filegroup'
           WHEN 'G'
           THEN 'Diferencial Arquivo'
           WHEN 'P'
           THEN 'Parcial'
           WHEN 'Q'
           THEN 'Diferencial Parcial'
       END AS 'Tipo do Backup',
       CONVERT(VARCHAR(15), B.backup_start_date, 103)+'   '+CONVERT(VARCHAR(8), B.backup_start_date, 108) [INICIO BCK],
       CONVERT(VARCHAR(15), B.backup_finish_date, 103)+'   '+CONVERT(VARCHAR(8), B.backup_finish_date, 108) [FIM BCK],
       b.backup_size / 1024 [Tamanho do  Backup em MBs],
       bb.physical_device_name [CAMINHO DO ARQUIVO],
       CASE b.compatibility_level
           WHEN 100
           THEN 'SQL Server 2008 ou SQL Server 2008 R2'
           WHEN 110
           THEN 'SQL Server 2012'
       END AS 'Nvel de Compatibilidade'
FROM msdb.dbo.backupmediafamily BB
     INNER JOIN msdb.DBO.backupset B ON BB.media_set_id = B.media_set_id
	--WHERE B.database_name = ''


	



