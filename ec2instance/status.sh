
#!/bin/bash
echo "#####   #####"
echo "#####  Scrip de interacao com EC2 AWS #####"
echo "#####   #####"

##### em caso de necessidade use chmod 777
echo "Seu nome de usuário é:"
whoami
echo "#####   #####"
echo "O script está executando do diretório:"
pwd


echo "#####  Checando status das instancias #####"



export EC2="i-0da7d149474e31d7f"

echo $EC2


aws ec2 describe-instance-status --instance-id $EC2


aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId"