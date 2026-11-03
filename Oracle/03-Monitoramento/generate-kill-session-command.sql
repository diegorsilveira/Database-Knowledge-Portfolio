/* Oracle | Troubleshooting | Gera comandos para sessões INACTIVE; não os executa.
   Revise cada sessão e valide impacto antes de executar o comando gerado. */
SELECT 'ALTER SYSTEM KILL SESSION '||CHR(39)||SID||','||SERIAL#||',@'||INST_ID||CHR(39)||' IMMEDIATE;' AS KILL_COMMAND,
 INST_ID,SID,SERIAL#,USERNAME,MACHINE,LOGON_TIME
FROM GV$SESSION WHERE TYPE='USER' AND STATUS='INACTIVE' ORDER BY LOGON_TIME;
