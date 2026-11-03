/* SQL Server | Segurança | Inventário de logins. Somente leitura. */
SELECT name,type_desc,is_disabled,create_date,modify_date,default_database_name
FROM sys.server_principals
WHERE type IN ('S','U','G') AND name NOT LIKE '##%'
ORDER BY name;
