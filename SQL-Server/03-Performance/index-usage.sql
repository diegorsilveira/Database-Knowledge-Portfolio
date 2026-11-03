/*
SGBD: Microsoft SQL Server
CATEGORIA: Performance / Índices
OBJETIVO: Consultar contadores de utilização de índices do banco atual.
IMPACTO: Somente leitura.
OBSERVAÇÃO: DMV reinicia contadores em eventos como reinicialização da instância.
*/

SELECT
    OBJECT_SCHEMA_NAME(i.object_id) AS schema_name,
    OBJECT_NAME(i.object_id) AS tabela,
    i.name AS indice,
    i.type_desc,
    COALESCE(s.user_seeks, 0) AS seeks,
    COALESCE(s.user_scans, 0) AS scans,
    COALESCE(s.user_lookups, 0) AS lookups,
    COALESCE(s.user_updates, 0) AS updates
FROM sys.indexes AS i
LEFT JOIN sys.dm_db_index_usage_stats AS s
    ON s.object_id = i.object_id
   AND s.index_id = i.index_id
   AND s.database_id = DB_ID()
WHERE i.object_id > 100
  AND i.index_id > 0
ORDER BY updates DESC;
