#!/bin/bash


##### em caso de necessidade use chmod +x file
echo "Seu nome de usuário é:"
whoami
echo "#####   #####"
echo "O script está executando do diretório:"
pwd


echo "#####   #####"

export S3="sagemaker-studio-080835854471-p8wcglpzkz"

aws s3 rm s3://$S3  --recursive
aws s3 rb s3://$S3 

echo "#####  Listando para checar #####"
sleep 1

aws s3 ls