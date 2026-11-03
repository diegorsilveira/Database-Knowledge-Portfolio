/* SQL Server | Troubleshooting | Alocação de espaço TempDB por sessão. Somente leitura. */
SELECT s.session_id,s.login_name,s.host_name,s.program_name,
 (u.user_objects_alloc_page_count-u.user_objects_dealloc_page_count)*8.0/1024 AS user_objects_mb,
 (u.internal_objects_alloc_page_count-u.internal_objects_dealloc_page_count)*8.0/1024 AS internal_objects_mb
FROM sys.dm_db_session_space_usage u JOIN sys.dm_exec_sessions s ON s.session_id=u.session_id
WHERE s.is_user_process=1 ORDER BY user_objects_mb+internal_objects_mb DESC;
