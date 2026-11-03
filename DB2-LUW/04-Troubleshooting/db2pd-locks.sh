#!/bin/bash
# SGBD: IBM Db2 LUW
# CATEGORIA: Troubleshooting / Locks
# OBJETIVO: Exibir informações de locks do banco informado.
# IMPACTO: Somente leitura.
# Uso: ./db2pd-locks.sh NOME_BASE

if [ -z "$1" ]; then
  echo "Uso: $0 NOME_BASE"
  exit 1
fi

db2pd -db "$1" -locks
