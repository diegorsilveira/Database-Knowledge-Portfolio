# Revisão do segundo lote

Foram adicionados **24 scripts novos**, após comparação com os arquivos que já existiam.

- SQL Server: 9 scripts novos.
- IBM Db2 LUW: 6 scripts novos.
- Oracle Database: 9 scripts novos.

## Higienização

Foram excluídos nomes de usuários e logins corporativos, senhas, endereços e nomes de servidores, URLs internas, nomes de bases/ambientes internos e referências a tabelas, schemas e processos de negócio. Foram mantidas consultas genéricas aos catálogos e views de sistema dos SGBDs.

Também revisei itens do lote anterior: removi um exemplo de replicação que dependia de tabela de negócio e generalizei os exemplos Db2 de REFRESH/RUNSTATS para não expor schema ou MQT corporativos.

Foram descartados conteúdos dependentes de parâmetros funcionais, rotas de serviços, relatórios, instituições/cooperativas, cadastros de pessoas, fluxos operacionais e histórico de aplicadores de scripts. Também foram excluídos exemplos com credenciais explícitas.

Comandos potencialmente disruptivos foram removidos ou transformados em modelos comentados/geradores de texto que não executam a ação. Validar versão, privilégios, impacto e ambiente antes de qualquer execução.
