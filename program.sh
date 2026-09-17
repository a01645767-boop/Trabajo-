#!/bin/bash
carpeta="${1:-$HOME}"
echo "Buscando carpetas con 'home' en: $carpeta"

find "$carpeta" -type f -name "*.txt" -exec grep -il "home" {} + 2>/dev/null
