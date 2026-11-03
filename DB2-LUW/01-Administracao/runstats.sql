/*
SGBD: IBM Db2 LUW
CATEGORIA: Administração / Estatísticas
OBJETIVO: Atualizar estatísticas de uma tabela informada pelo administrador.
IMPACTO: Atualiza estatísticas utilizadas pelo otimizador.
ATENÇÃO: Substitua os identificadores genéricos e avalie janela/política de manutenção.
*/
CALL SYSPROC.ADMIN_CMD(
    'RUNSTATS ON TABLE <SCHEMA>.<NOME_TABELA> WITH DISTRIBUTION AND DETAILED INDEXES ALL'
);
