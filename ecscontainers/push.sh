#!/bin/bash
echo "#####   #####"
echo "#####  Scrip de interacao com ECS AWS #####"
echo "#####   #####"


echo "#####  Checando status  #####"
export REPO="testesagemaker"
export REGION="us-east-1"

export URIREPO="080835854471.dkr.ecr.us-east-1.amazonaws.com/reposagemaker"

echo $URIREPO
echo $REGION

aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $URIREPO
#aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 080835854471.dkr.ecr.us-east-1.amazonaws.com/reposagemaker

docker tag teste:latest $URIREPO:latest

docker images

echo "fazendo push da imagem com tag"
docker push 080835854471.dkr.ecr.us-east-1.amazonaws.com/reposagemaker:latest
#docker push $URIREPO:latest 
