-- Db2 LUW | Troubleshooting | Modelo de encerramento por application handle.
-- A operação encerra a conexão e pode provocar rollback. Validar o handle antes.
CALL SYSPROC.ADMIN_CMD('FORCE APPLICATION (<APPLICATION_HANDLE>)');
