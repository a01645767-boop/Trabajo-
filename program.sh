#!/bin/bash

PALABRA="$1"
CARPETA="${2:-/}"

if [ -z "$PALABRA" ]; then
    echo "Uso: $0 <palabra> [carpeta]"
    exit 1
fi

echo "Buscando archivos .txt que contienen la palabra 'home' en: $CARPETA"
echo "------------------------------------------------------------------"

# Busca solo archivos .txt y muestra la ruta exacta de los que contienen 'home'
find "$CARPETA" -type f -name "*.txt" -exec grep -il "home" {} + 2>/dev/null