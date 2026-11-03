/* Oracle | Armazenamento | Tamanho total alocado em datafiles. */
SELECT ROUND(SUM(BYTES)/POWER(1024,3),2) AS TOTAL_DATAFILES_GB FROM DBA_DATA_FILES;
