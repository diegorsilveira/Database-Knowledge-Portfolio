/*
SGBD: Microsoft SQL Server
CATEGORIA: Segurança / Permissões
OBJETIVO: Conceder permissão de execução em uma Stored Procedure.
IMPACTO: Altera permissões.
ATENÇÃO: Confirme o objeto e o principal antes da execução.
*/

GRANT EXECUTE
ON OBJECT::dbo.NOME_DA_PROCEDURE
TO [USUARIO];
