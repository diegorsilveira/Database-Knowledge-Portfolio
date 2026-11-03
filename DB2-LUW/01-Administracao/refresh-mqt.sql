/*
SGBD: IBM Db2 LUW
CATEGORIA: Administração / MQT
OBJETIVO: Solicitar atualização de uma MQT.
IMPACTO: Operação de manutenção; pode consumir recursos e afetar carga.
ATENÇÃO: Confirme modo de refresh, dependências e janela operacional.
*/

REFRESH TABLE CTA.MQT_ESCOPOUSUARIO;
COMMIT;
