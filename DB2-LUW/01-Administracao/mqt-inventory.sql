/*
SGBD: IBM Db2 LUW
CATEGORIA: Administração / MQT
OBJETIVO: Listar tabelas do catálogo classificadas como MQT.
IMPACTO: Somente leitura.
*/

SELECT
    TABSCHEMA,
    TABNAME,
    TYPE,
    STATUS,
    CARD,
    NPAGES,
    FPAGES,
    STATS_TIME
FROM SYSCAT.TABLES
WHERE TYPE = 'S'
ORDER BY TABSCHEMA, TABNAME;
