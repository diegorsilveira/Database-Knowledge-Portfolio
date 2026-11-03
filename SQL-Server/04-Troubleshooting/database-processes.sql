/* SQL Server | Troubleshooting | Requisições em execução e bloqueadores. Somente leitura. */
SELECT r.session_id,DB_NAME(r.database_id) AS database_name,s.login_name,s.host_name,
 s.program_name,r.status,r.command,r.wait_type,r.wait_time,r.blocking_session_id,
 r.cpu_time,r.total_elapsed_time
FROM sys.dm_exec_requests r JOIN sys.dm_exec_sessions s ON s.session_id=r.session_id
WHERE s.is_user_process=1 ORDER BY r.total_elapsed_time DESC;
