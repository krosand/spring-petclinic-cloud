mykey = "petclinicAdmin"
ami = "ami-026b57f3c383c2eec"
region = "eu-west-3"
instance_type = "t2.micro"  # in order to run petcilinic microservices app, use t3a.medium otherwise you can use t2.micro
devops_server_secgr = "Deployement-server-petclinic"
dev-server-ports = [22, 80, 8000, 8080, 9090, 8081, 8082, 8083, 8888, 9411, 7979, 3000, 9091, 8761]
devservertag = "Development-Server"
