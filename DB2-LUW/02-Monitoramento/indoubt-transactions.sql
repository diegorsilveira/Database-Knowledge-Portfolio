/* Db2 LUW | Troubleshooting | Histórico de transações indoubt. Somente leitura. */
SELECT * FROM SYSIBMADM.DB_HISTORY
WHERE OPERATION='INDOUBT TRANSACTION' ORDER BY START_TIME DESC;
