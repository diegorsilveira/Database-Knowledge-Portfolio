/*
SGBD: Microsoft SQL Server
CATEGORIA: Troubleshooting / Replicação
OBJETIVO: Excluir somente a combinação de base e schema de origem informada.
IMPACTO: Somente leitura.
ATENÇÃO: Exemplo baseado em uma estrutura de tabela chamada dbo.REPLICACAO.
*/

SELECT *
FROM dbo.REPLICACAO
WHERE NOT (
    BASE_ORIGEM = 'CNT_TBP'
    AND SCHEMA_ORIGEM = 'CCO'
);
