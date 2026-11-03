/*
SGBD: Microsoft SQL Server
CATEGORIA: Administração / Backup
OBJETIVO: Executar backup FULL com compressão e checksum.
IMPACTO: Gera arquivo de backup e consome I/O, CPU e espaço em disco.
ATENÇÃO: Ajuste banco e caminho. Verifique espaço e política de retenção.
*/

BACKUP DATABASE [SUA_BASE]
TO DISK = N'E:\Backup\SUA_BASE_FULL.bak'
WITH
    COMPRESSION,
    CHECKSUM,
    STATS = 5;
