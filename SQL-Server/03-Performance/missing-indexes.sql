/*
SGBD: Microsoft SQL Server
CATEGORIA: Performance / Índices
OBJETIVO: Consultar recomendações de índices ausentes registradas pelo otimizador.
IMPACTO: Somente leitura.
OBSERVAÇÃO: Recomendações são sugestões; avalie workload, custo de manutenção
e índices existentes antes de criar qualquer índice.
*/

SELECT
    DB_NAME(mid.database_id) AS banco,
    OBJECT_SCHEMA_NAME(mid.object_id, mid.database_id) AS schema_tabela,
    OBJECT_NAME(mid.object_id, mid.database_id) AS tabela,
    migs.user_seeks,
    migs.user_scans,
    migs.avg_user_impact,
    mid.equality_columns,
    mid.inequality_columns,
    mid.included_columns
FROM sys.dm_db_missing_index_details AS mid
INNER JOIN sys.dm_db_missing_index_groups AS mig
    ON mid.index_handle = mig.index_handle
INNER JOIN sys.dm_db_missing_index_group_stats AS migs
    ON mig.index_group_handle = migs.group_handle
WHERE mid.database_id = DB_ID()
ORDER BY migs.avg_user_impact DESC;
