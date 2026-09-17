#!/bin/bash

# Define la carpeta de trabajo (usa la carpeta actual '.' si no le pasas un argumento)
CARPETA="${1:-.}"

echo "Buscando archivos .txt que contienen la palabra 'home' en: $CARPETA"
echo "------------------------------------------------------------------"

# Busca solo archivos .txt y muestra la ruta exacta de los que contienen 'home'
find "$CARPETA" -type f -name "*.txt" -exec grep -il "home" {} + 2>/dev/null
