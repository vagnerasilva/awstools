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



export URIREPO="080835854471.dkr.ecr.us-east-1.amazonaws.com/reposagemaker"


aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $URIREPO

