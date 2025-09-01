#!/bin/bash



# Solicitar al usuario su código de usuario y su nombre
echo "Por favor, introduce tu código de estudiante:"
read codigo_usuario
echo "Por favor, introduce tu nombre:"
read nombre_usuario

#se ubica en el  directorio home

cd $HOME

# Mostrar el nombre y código del usuario en cowsay
echo "Mucho gusto $nombre_usuario, Código: $codigo_usuario vamos a configurar tu ambiente de data explorer"

echo "creando carpetas  de trabajo"


# Crear la estructura de directorios
mkdir -p ~/dataexplorer/data/bson
mkdir -p ~/dataexplorer/data/csv
mkdir -p ~/dataexplorer/data/sql
mkdir -p ~/dataexplorer/app/frontend/css
mkdir -p ~/dataexplorer/app/frontend/img
mkdir -p ~/dataexplorer/app/frontend/js
mkdir -p ~/dataexplorer/app/backend

# Crear el archivo enviroment.txt
touch ~/dataexplorer/enviroment.txt

echo "Directorios creados exitosamente"

echo "creando archivos de  trabajo"
# En la carpeta "data" se debe almacenar un archivo de texto con el nombre y código introducidos
echo "Nombre: $nombre_usuario, 
Código: $codigo_usuario" > ~/dataexplorer/enviroment.txt

echo "En un mundo de ventanas cerradas, yo elijo libertad, 
Linux es mi camino, mi código, mi verdad.
Sin cadenas ni barreras, en la terminal me expreso,
con cada línea de comando, mi espíritu progreso.

Linux, el rebelde que se niega a ser esclavo, 
código abierto para todos, un sistema nativo.
Rompe las cadenas, libera el software,
Una revolución digital ha florecido

Desde el kernel hasta el shell, todo es personalizable,
en este universo abierto, todo es realizable.
No hay virus que me frene, ni sistema que me atrape,
con Linux en mi máquina, mi mente se destape.

"  >> ~/dataexplorer/enviroment.txt


# Mostrar en cowsay la frase "script terminado" y salir
echo "Script terminado"
# exit 0