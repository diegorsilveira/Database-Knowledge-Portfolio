/* SQL Server | Monitoramento | Última atividade observada nas DMVs de índices.
   Não é auditoria completa; contadores podem reiniciar e bancos sem atividade podem não aparecer. */
SELECT d.name AS database_name, MAX(v.last_activity) AS last_index_activity
FROM sys.databases d
LEFT JOIN sys.dm_db_index_usage_stats s ON s.database_id=d.database_id
CROSS APPLY (VALUES(s.last_user_seek),(s.last_user_scan),(s.last_user_lookup),(s.last_user_update)) v(last_activity)
WHERE d.database_id>4
GROUP BY d.name ORDER BY last_index_activity DESC;
