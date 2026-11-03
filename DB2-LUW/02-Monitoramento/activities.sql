/*
SGBD: IBM Db2 LUW
CATEGORIA: Monitoramento / Atividades
OBJETIVO: Consultar atividades monitoradas e seus tempos de execução.
IMPACTO: Somente leitura.
OBSERVAÇÃO: A disponibilidade de texto SQL e métricas depende da configuração
de monitoramento e da versão.
*/

SELECT
    APPLICATION_HANDLE,
    UOW_ID,
    ACTIVITY_ID,
    ACTIVITY_TYPE,
    STMT_TEXT,
    TOTAL_ACT_TIME,
    ROWS_READ,
    ROWS_RETURNED
FROM TABLE(MON_GET_ACTIVITY(NULL, -2)) AS A
ORDER BY TOTAL_ACT_TIME DESC;
