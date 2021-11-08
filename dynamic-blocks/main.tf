provider "aws" {
  region = "us-east-2"
}

locals {
  ingress_rules = [
    {
      port        = 80
      description = "Port 80"
    }, {
      port        = 443
      description = "Port 443"
    }
  ]
}

data "aws_vpc" "main" {
  default = true
}

resource "aws_security_group" "main" {
  name   = "demo-sg"
  vpc_id = data.aws_vpc.main.id

  dynamic "ingress" {
    for_each = local.ingress_rules
    content {
      description = "Port ${ingress.value.port}"
      from_port   = ingress.value.port
      protocol    = "tcp"
      to_port     = ingress.value.port
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  #  ingress {
  #    description = "from port 80"
  #    from_port = 80
  #    protocol  = "tcp"
  #    to_port   = 80
  #    cidr_blocks = ["0.0.0.0/0"]
  #  }
  #
  #  ingress {
  #    description = "from port 443"
  #    from_port = 443
  #    protocol  = "tcp"
  #    to_port   = 443
  #    cidr_blocks = ["0.0.0.0/0"]
  #  }

}

output "aws-vpc_id" {
  value = aws_security_group.main.vpc_id
}