/* SQL Server | Troubleshooting | Progresso de backup/restore. Somente leitura. */
SELECT r.session_id,r.command,DB_NAME(r.database_id) AS database_name,r.start_time,
 r.percent_complete,DATEADD(SECOND,CONVERT(int,r.estimated_completion_time/1000),GETDATE()) AS estimated_finish_time,
 t.text AS command_text
FROM sys.dm_exec_requests r
OUTER APPLY sys.dm_exec_sql_text(r.sql_handle) t
WHERE r.command LIKE 'BACKUP%' OR r.command LIKE 'RESTORE%'
ORDER BY r.start_time;
