/*
SGBD: IBM Db2 LUW
CATEGORIA: Administração / Estatísticas
OBJETIVO: Atualizar estatísticas de distribuição e índices de uma tabela.
IMPACTO: Atualiza estatísticas utilizadas pelo otimizador.
ATENÇÃO: Avalie janela e política de manutenção do ambiente.
*/

CALL SYSPROC.ADMIN_CMD(
    'RUNSTATS ON TABLE CTA.MQT_ESCOPOUSUARIO
     WITH DISTRIBUTION AND DETAILED INDEXES ALL'
);
