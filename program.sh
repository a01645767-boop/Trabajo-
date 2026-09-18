#!/bin/bash
HEAD
PALABRA="$1"
CARPETA="${2:-/}"

if [ -z "$PALABRA" ]; then
    echo "Uso: $0 <palabra> [carpeta]"
    exit 1
fi
# Asigna la carpeta actual '.' si no se pasa el primer argumento
CARPETA=${1:-.}
Palabra=$2
 71a053b (Ahora puedes cambiar carpeta y la palabra que se busca)

# Verifica que se haya proporcionado una palabra a buscar
if [ -z "$Palabra" ]; then
  echo "Error: Debes indicar la palabra a buscar."
  echo "Uso: $0 [carpeta] <palabra>"
  exit 1
fi

echo "Buscando archivos .txt que contienen la palabra '$Palabra' en: $CARPETA"
echo "------------------------------------------------------------------"

 HEAD
# Busca solo archivos .txt y muestra la ruta exacta de los que contienen 'home'
find "$CARPETA" -type f -name "*.txt" -exec grep -il "home" {} + 2>/dev/null

find "$CARPETA" -type f -name "*.txt" -exec grep -il "$Palabra" {} + 2>/dev/null

