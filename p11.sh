#!/bin/bash

# 1r: Netejem la pantalla
clear

# 2n: Demana URL
echo Escriu una URL:
read url

# Comprova que la URL es vàlida. Del contrari, surt amb codi 1
regex='[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]'
if [[ $url =~ $regex ]]
then 
    echo ""
    nslookup $url
    exit 0
else
    exit 1
fi
