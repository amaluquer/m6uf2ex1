#!/bin/bash

# 1r: Netejem la pantalla
clear


# 2n) Crear carpeta personalitzada en /var si no existeix
# Demanem el nom de la carpeta
echo Quin nom tindrà la nova carpeta?
read nomCarpeta

# 3r) Creem la carpeta si no existeix i copiem. Si existeix, copiem.
if [[ -d /var/$nomCarpeta ]]
then
   sudo cp /etc/ssh/ssh_config /var/$nomCarpeta
   sudo cp /etc/cups/cupsd.conf /var/$nomCarpeta
else
   sudo mkdir /var/$nomCarpeta
   sudo cp /etc/ssh/ssh_config /var/$nomCarpeta
   sudo cp /etc/cups/cupsd.conf /var/$nomCarpeta
fi

# 4t) Mostrem missatge tot copiats
echo ""
echo Fitxers copiats

# 5è) Vols continuar?
echo ""
echo Vols continuar?
read resposta

# Tornem al inici si la resposta es y
if [ $resposta == "y" ]
then
    ./p02.sh
fi
exit 5
