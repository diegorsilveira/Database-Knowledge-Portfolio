/*
SGBD: Microsoft SQL Server
CATEGORIA: Segurança / Auditoria
OBJETIVO: Consultar permissões explícitas no banco atual.
IMPACTO: Somente leitura.
OBSERVAÇÃO: Permissões herdadas por roles precisam ser consideradas na análise.
*/

SELECT
    USER_NAME(dp.grantee_principal_id) AS usuario_ou_role,
    dp.permission_name AS permissao,
    dp.state_desc AS estado,
    OBJECT_SCHEMA_NAME(dp.major_id) AS schema_objeto,
    OBJECT_NAME(dp.major_id) AS objeto
FROM sys.database_permissions AS dp
ORDER BY usuario_ou_role, schema_objeto, objeto, permissao;
