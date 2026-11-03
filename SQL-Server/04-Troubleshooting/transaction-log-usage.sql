/*
SGBD: Microsoft SQL Server
CATEGORIA: Troubleshooting / Transaction Log
OBJETIVO: Consultar percentual de utilização do log do banco atual.
IMPACTO: Somente leitura.
*/

SELECT
    total_log_size_in_bytes / 1024.0 / 1024 AS tamanho_total_mb,
    used_log_space_in_bytes / 1024.0 / 1024 AS espaco_utilizado_mb,
    used_log_space_in_percent AS percentual_utilizado
FROM sys.dm_db_log_space_usage;
