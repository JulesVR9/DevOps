#!/bin/bash

# Verifica si se pasó un argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <nombre_del_directorio>"
    exit 1
fi

directorio="$1"
archivo_salida="atributos.txt"

# Verifica si el directorio existe
if [ ! -d "$directorio" ]; then
    echo "Error: El directorio '$directorio' no existe."
    exit 1
fi

# Crear el archivo de salida y escribir el encabezado
echo "Listado de archivos en '$directorio':" > "$archivo_salida"
echo "--------------------------------------------------" >> "$archivo_salida"

# Iterar sobre cada archivo en el directorio
for archivo in "$directorio"/*; do
    if [ -f "$archivo" ]; then
        permisos=$(ls -l "$archivo" | awk '{print $1}')
        usuario=$(ls -l "$archivo" | awk '{print $3}')
        grupo=$(ls -l "$archivo" | awk '{print $4}')
        tamano=$(ls -l "$archivo" | awk '{print $5}')
        fecha=$(ls -l "$archivo" | awk '{print $6, $7, $8}')
        nombre=$(basename "$archivo")

        echo "Archivo: $nombre" >> "$archivo_salida"
        echo "Permisos: $permisos" >> "$archivo_salida"
        echo "Usuario: $usuario" >> "$archivo_salida"
        echo "Grupo: $grupo" >> "$archivo_salida"
        echo "Tamaño: $tamano bytes" >> "$archivo_salida"
        echo "Última modificación: $fecha" >> "$archivo_salida"
        echo "--------------------------------------------------" >> "$archivo_salida"
    fi
done

echo "Se ha generado el archivo '$archivo_salida' con los atributos de los archivos en '$directorio'."
