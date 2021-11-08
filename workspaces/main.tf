provider "aws" {
  region = var.region
}

locals {
  instance_name = "${terraform.workspace}-instance"
}

resource "aws_instance" "demo-1"{
  ami = var.ami_id
  instance_type = var.instance_type
  provisioner "local-exec" {
    command = "echo ${aws_instance.demo-1.private_ip}"
  }

  tags = {
    Name = local.instance_name
  }
}

output "ip" {
  value = "${aws_instance.demo-1.public_ip}"
}