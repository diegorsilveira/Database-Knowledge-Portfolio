/*
SGBD: IBM Db2 LUW
CATEGORIA: Performance / Estatísticas
OBJETIVO: Consultar cardinalidade, páginas e data das estatísticas.
IMPACTO: Somente leitura.
*/

SELECT
    TABSCHEMA,
    TABNAME,
    CARD,
    NPAGES,
    FPAGES,
    STATS_TIME
FROM SYSCAT.TABLES
WHERE TABSCHEMA NOT LIKE 'SYS%'
ORDER BY NPAGES DESC;
