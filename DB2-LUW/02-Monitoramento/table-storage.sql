/*
SGBD: IBM Db2 LUW
CATEGORIA: Monitoramento / Armazenamento
OBJETIVO: Consultar estimativas de ocupação de tabelas.
IMPACTO: Somente leitura.
OBSERVAÇÃO: Os valores retornados dependem da versão e do tipo de tabela.
*/

SELECT
    TABSCHEMA,
    TABNAME,
    DATA_OBJECT_P_SIZE,
    INDEX_OBJECT_P_SIZE,
    LONG_OBJECT_P_SIZE,
    LOB_OBJECT_P_SIZE
FROM TABLE(SYSPROC.ADMIN_GET_TAB_INFO('', '')) AS T
ORDER BY DATA_OBJECT_P_SIZE DESC;
