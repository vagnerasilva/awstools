#!/bin/bash
echo "#####   #####"
echo "#####  Scrip de interacao com ECS AWS #####"
echo "#####   #####"

##### em caso de necessidade use chmod +x file
echo "Seu nome de usuário é:"
whoami
echo "#####   #####"
echo "O script está executando do diretório:"
pwd


echo "#####  Checando status  #####"
export REPO="testesagemaker"
export EC2= "us-east-1"

aws ecr list-images \
    --repository-name $REPO