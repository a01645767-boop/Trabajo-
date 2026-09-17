#!/bin/bash
echo "Buscando carpetas con 'home' en: $carpeta"

find "$carpeta" -type d -iname "*home*" 2>/dev/null
