/*
SGBD: Microsoft SQL Server
CATEGORIA: Troubleshooting / Transações
OBJETIVO: Consultar transações ativas na instância.
IMPACTO: Somente leitura.
PRÉ-REQUISITOS: Permissão VIEW SERVER STATE (ou VIEW SERVER PERFORMANCE STATE,
conforme versão).
*/

SELECT
    at.transaction_id,
    at.name AS transaction_name,
    at.transaction_begin_time,
    at.transaction_type,
    at.transaction_state,
    st.session_id
FROM sys.dm_tran_active_transactions AS at
LEFT JOIN sys.dm_tran_session_transactions AS st
    ON st.transaction_id = at.transaction_id
ORDER BY at.transaction_begin_time;
