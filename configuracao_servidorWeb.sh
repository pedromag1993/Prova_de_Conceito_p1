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

#Passo 05 - Instalação de pacote (zip e unzip)
apt-get install -y zip unzip
# Descompactando o arquivo zip
unzip 690e1f604dc8ead2583589e1aee6f8a42040a035.zip
# Entrando na pasta descompactada
cd 873219-690e1f604dc8ead2583589e1aee6f8a42040a035 
# Copiando os arquivos para outro diretório
cp * /var/www/html/

#Passo 06 - Acessando a pasta (/var/www/html/)
cd /var/www/html/

#Passo 07 - Removendo arquivo index.html da pasta
rm index.html

#Passo 08 - Renomeando arquivo (cv-resumido.html para index.html)
mv cv-resumido.html index.html

#Passo 09 - Iniciando servidor web Apache
/etc/init.d/apache2 start