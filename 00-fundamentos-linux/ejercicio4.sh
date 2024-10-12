#!/bin/bash

WEB=https://lemoncode.net

SALIDA=$(curl -s $WEB | grep -i -o -n "$1")
COUNT=$(grep -c ":" <<< $SALIDA)

if [ $COUNT -eq 0 ]; then
	echo "No se ha encontrado la palabra $1"
	exit 1
fi

echo "La palabra \"$1\" aparece $COUNT veces"

PRIMERALINEA=$(grep -E -o "^[0-9]+" <<< $SALIDA | head -1)
echo "Aparece por primera vez en la linea $PRIMERALINEA"

