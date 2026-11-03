/* SQL Server | Segurança | Revisar permissões explícitas de uma role. Somente leitura. */
DECLARE @RoleName sysname=N'NOME_DA_ROLE';
SELECT USER_NAME(p.grantee_principal_id) AS principal_name,
 p.class_desc,p.permission_name,p.state_desc,
 OBJECT_SCHEMA_NAME(p.major_id) AS schema_name,OBJECT_NAME(p.major_id) AS object_name
FROM sys.database_permissions p
WHERE USER_NAME(p.grantee_principal_id)=@RoleName
ORDER BY p.class_desc,p.permission_name;
