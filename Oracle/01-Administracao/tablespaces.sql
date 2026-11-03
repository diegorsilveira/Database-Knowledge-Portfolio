/*
SGBD: Oracle Database
CATEGORIA: Administração / Tablespaces
OBJETIVO: Consultar características das tablespaces.
IMPACTO: Somente leitura.
PRÉ-REQUISITOS: Acesso à view DBA_TABLESPACES.
*/

SELECT
    TABLESPACE_NAME,
    BLOCK_SIZE,
    STATUS,
    CONTENTS,
    LOGGING
FROM DBA_TABLESPACES
ORDER BY TABLESPACE_NAME;
