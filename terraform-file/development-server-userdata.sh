#! /bin/bash
echo test
sudo yum install java-11-amazon-corretto -y
sudo yum install git -y
cd /home/ec2-user & git clone https://github.com/krosand/spring-petclinic-cloud.git & cd spring-petclinic-cloud & git checkout main

hostnamectl set-hostname Development-Server
sudo amazon-linux-extras install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" \
-o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
