/*
SGBD: Microsoft SQL Server
CATEGORIA: Administração / Backup
OBJETIVO: Consultar os backups FULL mais recentes de uma base.
IMPACTO: Somente leitura.
PRÉ-REQUISITOS: Acesso de leitura à base msdb.
*/

SELECT TOP (10)
    database_name,
    backup_start_date,
    backup_finish_date,
    type,
    backup_size / 1024.0 / 1024 / 1024 AS tamanho_gb,
    compressed_backup_size / 1024.0 / 1024 / 1024 AS tamanho_compactado_gb
FROM msdb.dbo.backupset
WHERE database_name = N'SUA_BASE'
  AND type = 'D'
ORDER BY backup_finish_date DESC;
