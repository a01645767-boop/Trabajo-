PALABRA="$1"
CARPETA="${2:-/}"

if [ -z "$PALABRA" ]; then
    echo "Uso: $0 <palabra> [carpeta]"
    exit 1
fi

echo "Buscando archivos .txt que contienen la palabra '$PALABRA' en: $CARPETA"
echo "------------------------------------------------------------------"

find "$CARPETA" -type f -name "*.txt" 2>/dev/null | while read -r archivo; do
    OCURRENCIAS=$(grep -io "$PALABRA" "$archivo" 2>/dev/null | wc -l)
    if [ "$OCURRENCIAS" -gt 0 ]; then
        echo "$archivo -> $OCURRENCIAS veces"
    fi
done