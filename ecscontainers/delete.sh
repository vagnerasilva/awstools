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


echo "#####  removendo repositorio  #####"

aws ecr describe-images --repository-name textsagemaker

echo "#####  listando para deletar  #####"
sleep 3

aws ecr delete-repository --repository-name textsagemaker --force

aws ecr delete-repository --repository-name testesagemaker --force
testesagemaker