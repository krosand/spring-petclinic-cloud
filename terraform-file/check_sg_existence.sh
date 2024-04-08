#!/bin/bash

GROUP_EXISTS=$(aws ec2 describe-security-groups --filters Name=group-name,Values='Deployment-server-petclinic' --region eu-west-3 --query 'SecurityGroups[*].GroupId' --output text)

if [ -z "$GROUP_EXISTS" ]; then
  echo "create_sg=true" >> $GITHUB_ENV
else
  echo "create_sg=false" >> $GITHUB_ENV
fi

