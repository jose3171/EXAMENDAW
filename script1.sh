#!/bin/bash

if [[ ($1 == "enable") || ($1 == "disable") ]];
then
	if  [[ ($1 == "enable") && ( $# -eq 2) ]];
	then
		if  grep $2 ~/Escritorio/prueba.txt;
		then
			sed -i "/$2/d" ~/Escritorio/prueba.txt
			echo "127.0.0.1 $2" >> ~/Escritorio/prueba.txt
		else
			echo "127.0.0.1 $2" >> ~/Escritorio/prueba.txt
		fi
	else if [[ ($1 == "disable") && ($# -eq 2) ]];
	then
		sed -i "/$2/d" ~/Escritorio/prueba.txt

	else if [[ ($1 == "enable") &&  ($# -eq 3) ]];
	then
		sed -i "/localhost/d" ~/Escritorio/prueba.txt
		echo "$3 localhost" >> ~/Escritorio/prueba.txt

	else if [[ ($1 == "disable") && ($# -eq 3 ) ]];
	then
		echo "no se hacer esta parte"

	else
                echo "Tiene que pasar un segundo parametro."	
	fi
	fi
	fi
	fi
else if [[ ($# -eq 1) && ($1 == "--help") ]];
then
	echo "Para usar el script es necesario introducir lo siguiente:"
        echo "./script.sh <enable/disable> <dirección_web>"
        echo "O bien de la siguiente manera:"
        echo "./script.sh <enable/disable> <dirección_web> <ip>"
else if [[ ($# -eq 1) && ($1 == "--cat") ]];
then
	cat ~/Escritorio/prueba.txt
else
	echo "No se esta usando correctamente el script"

fi
fi
fi
