#!/bin/bash

# Verifica si se pasó un argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <nombre_del_archivo_destino>"
    exit 1
fi

archivo_destino="$1"
archivo_eventos="eventos.txt"
url_eventos="https://www.ibm.com/docs/en/zos/2.4.0?topic=problems-example-log-file"

# Descargar el archivo eventos.txt
echo "Descargando eventos.txt desde IBM..."
wget -O "$archivo_eventos" "$url_eventos" 2>/dev/null || curl -o "$archivo_eventos" "$url_eventos" 2>/dev/null

# Verificar si la descarga fue exitosa
if [ ! -s "$archivo_eventos" ]; then
    echo "Error: No se pudo descargar el archivo eventos.txt. Copie manualmente el contenido."
    exit 1
fi

# Copiar el contenido de eventos.txt al archivo de destino
cp "$archivo_eventos" "$archivo_destino"
echo "Se ha copiado eventos.txt en $archivo_destino."

# Mostrar el contenido de eventos.txt en la terminal
echo "Mostrando contenido de eventos.txt:"
cat "$archivo_eventos"

# Opcional: Eliminar el archivo eventos.txt después de copiarlo
rm "$archivo_eventos"
