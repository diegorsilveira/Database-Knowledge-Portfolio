/*
SGBD: Microsoft SQL Server
CATEGORIA: Segurança / Auditoria
OBJETIVO: Listar usuários do banco, schema padrão e roles associadas.
IMPACTO: Somente leitura.
*/

SELECT
    dp.name AS usuario,
    dp.type_desc AS tipo_usuario,
    dp.default_schema_name AS schema_padrao,
    rp.name AS role
FROM sys.database_principals AS dp
LEFT JOIN sys.database_role_members AS drm
    ON dp.principal_id = drm.member_principal_id
LEFT JOIN sys.database_principals AS rp
    ON drm.role_principal_id = rp.principal_id
WHERE dp.type IN ('S', 'U', 'G')
  AND dp.name NOT IN ('dbo', 'guest', 'sys', 'INFORMATION_SCHEMA')
ORDER BY dp.name, rp.name;
