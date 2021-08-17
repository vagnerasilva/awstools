#!/bin/bash


##### em caso de necessidade use chmod +x file
echo "Seu nome de usuário é:"
whoami
echo "#####   #####"
echo "O script está executando do diretório:"
pwd


echo "#####   #####"



export EC2="i-0da7d149474e31d7f"

echo $EC2

#### Parando instancia
aws ec2 stop-instances --instance-ids $EC2


#### start instancia
##aws ec2 start-instances --instance-ids $EC2