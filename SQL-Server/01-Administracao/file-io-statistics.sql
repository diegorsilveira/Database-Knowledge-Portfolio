/* SQL Server | I/O | Somente leitura. Contadores acumulados desde reset/reinício das DMVs. */
SELECT DB_NAME(mf.database_id) AS database_name, mf.name AS logical_file_name,
 mf.type_desc, mf.physical_name, v.num_of_reads,
 v.num_of_bytes_read/1048576.0 AS mb_read, v.io_stall_read_ms,
 v.num_of_writes, v.num_of_bytes_written/1048576.0 AS mb_written, v.io_stall_write_ms
FROM sys.dm_io_virtual_file_stats(NULL,NULL) v
JOIN sys.master_files mf ON mf.database_id=v.database_id AND mf.file_id=v.file_id
ORDER BY v.io_stall DESC;
