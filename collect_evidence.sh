#!/bin/bash

# Solicitar al usuario su código de usuario y su nombre
echo "este script recolecta evidencia  de su trabajo desarrollado"
echo "Por favor, introduce tu código estudiantil:"
read codigo_usuario
echo "Por favor, introduce tu nombre:"
read nombre_usuario


# Mostrar el nombre y código del usuario en cowsay
echo "Se recopila evidencia para:  $nombre_usuario, Código: $codigo_usuario"


# Definir los archivos a verificar
archivos=("$HOME/dataexplorer/backend/controller.ts" "$HOME/dataexplorer/frontend/js/button_manager.js"
"$HOME/dataexplorer/frontend/js/text_interaction.js" "$HOME/dataexplorer/frontend/css/styles1.css"
"$HOME/dataexplorer/frontend/css/styles2.css" "$HOME/dataexplorer/frontend/css/styles3.css"
"$HOME/dataexplorer/frontend/index.html" "$HOME/dataexplorer/frontend/about.html" 
"$HOME/dataexplorer/frontend/contact.html" )

# Crear o vaciar el archivo de evidencias
echo "Evidencias para $nombre_usuario ( $codigo_usuario )" > evidencias.txt

cowsay "Existen los archivos solicitados?"

# Verificar la existencia de cada archivo
for archivo in "${archivos[@]}"
do
    if [ -f "$archivo" ]
    then
        echo "ok - $archivo" | tee -a evidencias.txt
    else
        echo "fail - $archivo"| tee -a evidencias.txt
    fi
done

cowsay "recopilando datos de los comandos usados"

history | tee -a evidencias.txt




