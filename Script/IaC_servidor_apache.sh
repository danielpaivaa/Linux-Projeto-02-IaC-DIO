#! /bin/bash

echo "Iniciando o Script..."

echo "Atualizando o Servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando o apache2..."

apt-get install apache2 -y
systemctl start apache2

echo "Instalando o unzip..."

apt-get install unzip -y

echo "Baixando site para hospedar no servidor apache..."

cd /tmp

wget https://github.com/danielpaivaa/Tec-Web-T01/archive/refs/heads/master.zip

echo "Extraindo arquivos..."

unzip master.zip

echo "Copiando arquivos para o diretorio apache..."

cd Tec-Web-T01-master

cp -R * /var/www/html

echo "Script Finalizado!!!"