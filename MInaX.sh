#!/bin/bash

#Autor : Borja Benegas
#Descripción : Script que automatiza el proceso de Configuración de la Máquina para minar SHIBA INU

sudo apt update
sudo git clone https://github.com/Borja-Benegas/MINADO.git

cd MINADO

sudo tar -xvf minado.tar.gz

cd xmrig-6.16.2 

sudo sed 's/"donate.v2.xmrig.com:3333"/"rx.unmineable.com:3333"/' ./config.json
sudo sed 's/"YOUR_WALLET_ADDRESS"/"SHIB:0x6cABE208f0B355eE13F909137Eb5de6F55C9EF98.'$HOSTNAME'#e1q1-c297"/' config.json

sudo ./xmrig
