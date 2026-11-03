/* SQL Server | Administração | Somente leitura: tamanho alocado por banco. */
SELECT d.name AS database_name, SUM(mf.size) * 8.0 / 1024 AS allocated_size_mb
FROM sys.master_files mf JOIN sys.databases d ON d.database_id=mf.database_id
GROUP BY d.name ORDER BY allocated_size_mb DESC;
