#!/bin/bash


##### em caso de necessidade use chmod 777
echo "Seu nome de usuário é:"
whoami
echo "#####   #####"
echo "O script está executando do diretório:"
pwd


echo "#####   #####"

wget http://security.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.4_amd64.deb


unzip awscliv2.zip

cd aws

./install

/usr/local/bin/aws --version

aws 