#!/bin/bash

# Prova Avaliação 01 - Pedro Magalhaes da Silva
echo "Prova de Conceito 01 - Pedro Magalhaes da Silva"

#Passo 01 - Atualizar pacotes
apt-get update
apt-get upgrade

#Passo 02 - Instalação de pacote (apache2)
apt-get install -y apache2

#Passo 03 - Instalação de pacote (wget)
apt-get install -y wget

#Passo 04 - Download do arquivo .zip
wget https://gist.github.com/nunomazer/873219/archive/690e1f604dc8ead2583589e1aee6f8a42040a035.zip