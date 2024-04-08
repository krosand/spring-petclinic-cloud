#!/bin/bash

# Replacez eu-west-3 par votre région AWS si nécessaire
GROUP_EXISTS=$(aws ec2 describe-security-groups --filters Name=group-name,Values='Deployment-server-petclinic' --region eu-west-3 --query 'SecurityGroups[*].GroupId' --output text)

if [ -z "$GROUP_EXISTS" ]; then
  echo "Security group does not exist, setting create_sg to true."
  export TF_VAR_create_sg=true
else
  echo "Security group already exists, setting create_sg to false."
  export TF_VAR_create_sg=false
fi

