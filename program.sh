#!/bin/bash
PALABRA="$1"
CARPETA="${2:-/}"

if [ -z "$PALABRA" ]; then
    echo "Uso: $0 <palabra> [carpeta]"
    exit 1
fi

echo "Buscando archivos .txt que contienen la palabra '$PALABRA' en: $CARPETA"
echo "------------------------------------------------------------------"

RESULTADOS=$(find "$CARPETA" -type f -name "*.txt" -exec grep -il "$PALABRA" {} + 2>/dev/null)
echo "$RESULTADOS"
echo "------------------------------------------------------------------"
echo "Total de archivos encontrados: $(echo "$RESULTADOS" | grep -c .)"