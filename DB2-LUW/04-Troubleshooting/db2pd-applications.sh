#!/bin/bash
# SGBD: IBM Db2 LUW
# CATEGORIA: Troubleshooting / Aplicações
# OBJETIVO: Exibir aplicações conectadas ao banco informado.
# IMPACTO: Somente leitura.
# Uso: ./db2pd-applications.sh NOME_BASE

if [ -z "$1" ]; then
  echo "Uso: $0 NOME_BASE"
  exit 1
fi

db2pd -db "$1" -applications
