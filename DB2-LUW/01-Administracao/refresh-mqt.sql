/*
SGBD: IBM Db2 LUW
CATEGORIA: Administração / MQT
OBJETIVO: Atualizar uma MQT informada pelo administrador.
IMPACTO: Operação de manutenção; pode consumir recursos e afetar a carga.
ATENÇÃO: Substitua os identificadores genéricos e valide modo de refresh, dependências e janela.
*/
REFRESH TABLE <SCHEMA>.<NOME_MQT>;
COMMIT;
