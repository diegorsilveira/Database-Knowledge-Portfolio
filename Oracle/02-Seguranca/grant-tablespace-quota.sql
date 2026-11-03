/*
SGBD: Oracle Database
CATEGORIA: Segurança / Quotas
OBJETIVO: Conceder quota ilimitada ao usuário em uma tablespace.
IMPACTO: Altera configuração de quota do usuário.
ATENÇÃO: Conceda somente após aprovação. Prefira limite explícito quando possível.
*/

ALTER USER NOME_USUARIO
QUOTA UNLIMITED ON TD_BA;
