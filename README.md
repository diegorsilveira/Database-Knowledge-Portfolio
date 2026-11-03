# Database Knowledge Portfolio

Repositório de scripts, consultas e procedimentos para administração, monitoramento,
segurança, performance e troubleshooting de bancos de dados.

## SGBDs contemplados

- [Microsoft SQL Server](./SQL-Server/README.md) — administração, segurança, I/O e troubleshooting
- [IBM Db2 LUW](./DB2-LUW/README.md) — MQT, roles, locks e transações
- [Oracle Database](./Oracle/README.md) — tablespaces, privilégios, sessões e objetos inválidos

## Organização

Os scripts estão separados por SGBD e por assunto. Cada arquivo contém uma descrição,
objetivo, pré-requisitos e observações de segurança quando aplicável.

## Importante

Este repositório reúne exemplos didáticos reconstruídos a partir de temas técnicos
discutidos em atividades de sustentação. Antes de executar qualquer script:

1. Revise os nomes de bancos, schemas, tabelas, colunas, usuários e caminhos.
2. Confirme a compatibilidade com a versão do SGBD.
3. Avalie permissões e impacto operacional.
4. Teste em ambiente não produtivo.
5. Faça backup ou tenha um plano de retorno quando houver alteração.

Scripts de consulta são identificados como somente leitura. Comandos de alteração,
manutenção ou concessão de privilégios devem ser executados somente após validação.

