/* Oracle | Administração | Gera comandos de recompilação; não executa os comandos.
   Revise dependências e janela operacional antes de executar em lote. */
SELECT 'ALTER '||OBJECT_TYPE||' '||DBMS_ASSERT.ENQUOTE_NAME(OWNER,FALSE)||'.'||
 DBMS_ASSERT.ENQUOTE_NAME(OBJECT_NAME,FALSE)||' COMPILE;' AS COMPILE_COMMAND
FROM DBA_OBJECTS WHERE STATUS='INVALID'
AND OBJECT_TYPE IN ('VIEW','PROCEDURE','FUNCTION','PACKAGE','TRIGGER')
ORDER BY OWNER,OBJECT_TYPE,OBJECT_NAME;
