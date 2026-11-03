/* SQL Server | Troubleshooting | Sessões de usuário. Somente leitura. */
SELECT session_id,login_name,host_name,program_name,status,login_time,
 last_request_start_time,last_request_end_time
FROM sys.dm_exec_sessions WHERE is_user_process=1 ORDER BY login_time DESC;
