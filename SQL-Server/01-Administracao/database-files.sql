/*
SGBD: Microsoft SQL Server
CATEGORIA: Administração / Armazenamento
OBJETIVO: Listar arquivos de dados e log do banco atual.
IMPACTO: Somente leitura.
*/

SELECT
    name AS nome_logico,
    physical_name AS caminho_fisico,
    type_desc AS tipo_arquivo,
    size * 8.0 / 1024 AS tamanho_mb,
    state_desc AS status
FROM sys.database_files
ORDER BY file_id;
