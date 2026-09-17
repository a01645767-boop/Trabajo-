#!/bin/bash
carpeta="${1:-$HOME}"
echo "Buscando carpetas con 'home' en: $carpeta"

grep -rIil "home" "$carpeta" 2>/dev/null
