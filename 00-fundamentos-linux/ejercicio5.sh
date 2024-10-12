#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Se necesitan unicamente dos parametros para ejecutar este script"
	exit 1
fi

SALIDA=$(curl -s $1 | grep -i -o -n "$2")
COUNT=$(grep -c ":" <<< $SALIDA)

if [ $COUNT -eq 0 ]; then
	echo "No se ha encontrado la palabra $2"
	exit 1
fi

PRIMERALINEA=$(grep -E -o "^[0-9]+" <<< $SALIDA | head -1)

if [ $COUNT -eq 1 ]; then
	echo "La palabra \"$2\" aparece $COUNT vez" 
	echo "Aparece unicamente en la linea $PRIMERALINEA"
else
	echo "La palabra \"$2\" aparece $COUNT veces"
        echo "Aparece por primera vez en la linea $PRIMERALINEA"
fi
