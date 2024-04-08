variable "create_sg" {
  description = "Flag to indicate whether the security group should be created"
  type        = bool
  default     = true
}

resource "aws_security_group" "dev-server-sg" {
  count       = var.create_sg ? 1 : 0
  name        = "Deployment-server-petclinic"
  description = "Security group for deployment server"
  vpc_id      = "vpc-621b580b"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Deployment-server-petclinic"
  }
}

